function _UpdateLog {
    param (
        [Parameter(
            ValueFromPipeline
        )]
        [string]$message
    )

    $currentText = $form.rtfLog.Text
    $lines = $currentText -split "`r`n"
    $newLineNumber = $lines.Count + 1
    
    $formattedMessage = "{0,-5} | {1}" -f $newLineNumber, $message
    
    if ($currentText) {
        $form.rtfLog.AppendText("`r`n$formattedMessage")
    } else {
        $form.rtfLog.AppendText($formattedMessage)
    }
    
    $form.rtfLog.ScrollToCaret()
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

	$CSProperties = Get-CimInstance Win32_ComputerSystem | select Manufacturer,Model

	$form.txtCompMake.Text = $CSProperties.Manufacturer
	$form.txtCompModel.Text = $CSProperties.Model
}

. (Join-Path $PSScriptRoot 'RemoteWmiInfo Revengeance.designer.ps1')


$form.ShowDialog()
