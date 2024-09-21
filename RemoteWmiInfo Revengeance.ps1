# Refer to https://www.behance.net/gallery/125670705/Remote-WMI-Info
# and https://www.behance.net/gallery/125673977/Remote-Mass-Info

function _UpdateLog {
    param (
        [Parameter(
            ValueFromPipeline
        )]
        [string]$message,
        [switch]$status
    )

    $currentText = $form.rtfLog.Text
    $lines = $currentText -split "`r`n"
    $newLineNumber = $lines.Count + 1
    $currentTime = Get-Date -DisplayHint Time -Format "HH:mm:ss"
    
    $logMessage = "{0,-2}: {1}`t{2}" -f $newLineNumber, $currentTime, $message

    if ($currentText) {
        $form.rtfLog.AppendText("`r`n$logMessage")
    } else {
        $form.rtfLog.AppendText($logMessage)
    }
    
    $form.rtfLog.ScrollToCaret()

    if($status) {
        $form.StatusLabel1.Text = $currentTime
        $form.StatusLabel2.Text = $message
    }
}

# assume the device is online
function _GetApps($ComputerName, $Session) {
    $AppSplat = @{
        ScriptBlock = {
            Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*,HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | 
            ? { $_.DisplayName -and $_.DisplayVersion -and !$_.SystemComponent}
        }
    }
    if($Session) {
        $AppSplat.Session = $Session
    } elseif($ComputerName) {
        $AppSplat.ComputerName = $ComputerName
    }

    $InstalledApps = Invoke-Command @AppSplat  | sort DisplayName

    return $InstalledApps
}

$form_Closing = {
    $this.comboHostName.Items.foreach{
        New-ItemProperty -Path "HKCU:\Software\THR\RemoteWmiInfo" -Name $_ -Value 1 -Force
    }
}

$form_Load = {
    $this.comboHostName.Items.Clear()

    $this.comboHostName.Items.AddRange((Get-ItemProperty "HKCU:\Software\THR\RemoteWmiInfo").PSObject.Properties.where{$_.Value -eq 1}.Name)

    $this.comboHostName.Text = $env:COMPUTERNAME
}

$btnAppsRefresh_Click = {
    $this.Enabled = $false

    $form.tabControl1.SelectedTab = $form.tabLog
    $form.tabLog.Select()

    $ComputerName = $form.comboHostName.Text
    if(-not (Test-Connection $ComputerName)) {
        _updateLog -message "Failed to connect to $ComputerName" -status
        $this.Enabled = $true
        Return
    }

    $form.tabControl1.SelectedTab = $form.tabSoftware
    $form.tabSoftware.Select()

    _updateLog -message "Refreshing installed applications" -status

    $InstalledApps = _GetApps -ComputerName $ComputerName

    $form.listApps.Items.Clear()

    foreach($app in $InstalledApps) {
        $item = New-Object Windows.Forms.ListViewItem($app.DisplayName)
        $item.SubItems.Add($app.DisplayVersion)
        $item.SubItems.Add($app.Publisher)
        $item.SubItems.Add($app.InstallDate)
        $form.listApps.Items.Add($item)
    }

    $this.Enabled = $true
}

$linkOS_LinkClicked = {
    scb $form.txtOS
}

$linkBIOSRam_LinkClicked = {
    "{0}, {1}" -f $form.txtCompBIOS.Text, $form.txtCompRAM.Text | scb
}

$linkCPUSpeed_LinkClicked = {
    "{0}, {1}" -f $form.txtCompCPU.Text, $form.txtCompCPUSp.Text | scb
}

$linkSerialAsset_LinkClicked = {
    "{0}, {1}" -f $form.txtCompSerial.Text, $form.txtCompAsset.Text | scb
}

$linkMakeModel_LinkClicked = {
    "{0}, {1}" -f $form.txtCompMake.Text, $form.txtCompModel.Text | scb
}

$btnRemote_Click = {
    if(Test-Path "$env:SMS_ADMIN_UI_PATH\CmRcViewer.exe") {
        $RemotePath = "$env:SMS_ADMIN_UI_PATH\CmRcViewer.exe"
    }

    if($RemotePath) {
        Start-Process $RemotePath -Args @($form.comboHostName.Text)
    } else {
        _updateLog -message "Failed to find Remote Control Viewer" -status
    }
}

$tabNetwork_Click = {
    # TODO: Update fields on-demand?
}


$btnReset_Click = {
	$form.comboHostName.Text = $env:COMPUTERNAME
}

$btnConnect_Click = {
	if(!$form.comboHostName.Text) {
		$form.StatusLabel1.Text = [datetime]::Now.TimeOfDay
		$form.StatusLabel2.Text = "Please enter a hostname"
		Return
	}

    $ComputerName = $form.comboHostname.Text

    _updateLog -message "Connecting to $ComputerName" -status
    $form.btnConnect.Enabled = $false

    if(-not (test-connection -ComputerName $ComputerName -Count 1 -Quiet)) {
        _updateLog -message "Failed to connect to $ComputerName" -status
        $form.btnConnect.Enabled = $true
        $form.btnRemote.Enabled = $false
        $form.btnRefreshApps.Enabled = $false
        Return
    }

    _updateLog -message "Connected to $ComputerName" -status

    $form.btnRemote.Enabled = $true
    $form.btnRefreshApps.Enabled = $true
    
    # add device to connection history
    New-ItemProperty -Path "HKCU:\Software\THR\RemoteWmiInfo" -Name $ComputerName -Value 1 -Force

    $CIMSession = New-CimSession -ComputerName $ComputerName -Name RemoteWmiInfo -ea SilentlyContinue
    $PSSession = New-PSSession -ComputerName $ComputerName -Name RemoteWmiInfo -ea SilentlyContinue

	#region update General tab
	$CSProperties = Get-CimInstance Win32_ComputerSystem -CimSession $CIMSession
    $BIOSProperties = Get-CimInstance Win32_BIOS -CimSession $CIMSession
    $CSPProperties = Get-CimInstance win32_computerSystemProduct -CimSession $CIMSession
    $CSProcessor = Get-CimInstance Win32_ComputerSystemProcessor -CimSession $CIMSession
    $W32Processor = Get-CimInstance Win32_Processor -CimSession $CIMSession

    _updateLog -message "Getting hardware info"
    $form.tabControl1.SelectedTab = $form.tabLog
    $form.tabLog.Select()

    $form.txtCompMake.Text = $CSProperties.Manufacturer
	$form.txtCompModel.Text = $CSProperties.Model

    $form.txtCompSerial.Text = $BIOSProperties.SerialNumber
    $form.txtCompAsset.Text = $CSPProperties.IdentifyingNumber

    $form.txtCompCPU.Text = $W32Processor.Name
    $form.txtCompCPUSp.Text = $W32Processor.MaxClockSpeed[0]
    #endregion update General tab

    #region get software
    _updateLog -message "Getting installed applications"
    $InstalledApps = _GetApps -Session $PSSession

    $form.listApps.Items.Clear()

    foreach($app in $InstalledApps) {
        $item = New-Object Windows.Forms.ListViewItem($app.DisplayName)
        $item.SubItems.Add($app.DisplayVersion)
        $item.SubItems.Add($app.Publisher)
        $item.SubItems.Add($app.InstallDate)
        $form.listApps.Items.Add($item)
    }
    #endregion get software

    $CIMSession | Remove-CimSession
    
    $form.tabControl1.SelectedTab = $form.tabGeneral
    $form.tabGeneral.Select()

    $form.btnConnect.Enabled = $true
}

. (Join-Path $PSScriptRoot 'RemoteWmiInfo Revengeance.designer.ps1')


$form.ShowDialog()