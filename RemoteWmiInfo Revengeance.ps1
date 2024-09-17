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
    
    $logMessage = "{0,-2}: {1}`t\b1{2}\b0" -f $newLineNumber, $currentTime, $message

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

$btnReset_Click = {
	$form.comboHostName.Text = $env:COMPUTERNAME
}

$btnConnect_Click = {
	if(!$form.comboHostName.Text) {
		$form.StatusLabel1.Text = [datetime]::Now.TimeOfDay
		$form.StatusLabel2.Text = "Please enter a hostname"
		Return
	}

    _updateLog -message "Connecting to $($form.comboHostName.Text)" -status
    $form.btnConnect.Enabled = $false

	$CSProperties = Get-CimInstance Win32_ComputerSystem
    $BIOSProperties = Get-CimInstance Win32_BIOS
    $CSPProperties = Get-CimInstance win32_computerSystemProduct
    $CSProcessor = Get-CimInstance Win32_ComputerSystemProcessor
    $W32Processor = Get-CimInstance Win32_Processor

	$form.txtCompMake.Text = $CSProperties.Manufacturer
	$form.txtCompModel.Text = $CSProperties.Model

    $form.txtCompSerial.Text = $BIOSProperties.SerialNumber
    $form.txtCompAsset.Text = $CSPProperties.IdentifyingNumber

    $form.txtCompCPU.Text = $W32Processor.Description
    $form.txtCompCPUSp.Text = $W32Processor.MaxClockSpeed
}

. (Join-Path $PSScriptRoot 'RemoteWmiInfo Revengeance.designer.ps1')


$form.ShowDialog()
