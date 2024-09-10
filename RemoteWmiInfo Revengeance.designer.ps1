[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
[SYstem.Windows.Forms.Application]::EnableVisualStyles()
$RemoteWmiInfo Revengeance = New-Object -TypeName System.Windows.Forms.Form
function InitializeComponent
{
$RemoteWmiInfo Revengeance.SuspendLayout()
#
#RemoteWmiInfo Revengeance
#
$RemoteWmiInfo Revengeance.Name = 'RemoteWmiInfo Revengeance'
$RemoteWmiInfo Revengeance.ResumeLayout($false)
}

InitializeComponent