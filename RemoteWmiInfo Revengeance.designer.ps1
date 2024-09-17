[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$form = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TabControl]$tabControl1 = $null
[System.Windows.Forms.GroupBox]$groupBox2 = $null
[System.Windows.Forms.GroupBox]$groupBox1 = $null
[System.Windows.Forms.StatusStrip]$statusStrip1 = $null
[System.Windows.Forms.LinkLabel]$linkLabel2 = $null
[System.Windows.Forms.LinkLabel]$linkLabel1 = $null
[System.Windows.Forms.ToolStripStatusLabel]$StatusLabel1 = $null
[System.Windows.Forms.ToolStripStatusLabel]$StatusLabel2 = $null
[System.Windows.Forms.LinkLabel]$linkLabel3 = $null
[System.Windows.Forms.LinkLabel]$linkLabel4 = $null
[System.Windows.Forms.LinkLabel]$linkLabel6 = $null
[System.Windows.Forms.ComboBox]$comboHostname = $null
[System.Windows.Forms.Button]$btnSave = $null
[System.Windows.Forms.Button]$btnRemote = $null
[System.Windows.Forms.Button]$btnShutdown = $null
[System.Windows.Forms.TextBox]$txtCompMake = $null
[System.Windows.Forms.Button]$btnConnect = $null
[System.Windows.Forms.Button]$btnReset = $null
[System.Windows.Forms.TextBox]$txtOS = $null
[System.Windows.Forms.TextBox]$txtCompBIOS = $null
[System.Windows.Forms.TextBox]$txtCompCPU = $null
[System.Windows.Forms.TextBox]$txtCompRAM = $null
[System.Windows.Forms.TextBox]$txtCompSerial = $null
[System.Windows.Forms.TextBox]$txtCompCPUSp = $null
[System.Windows.Forms.TextBox]$txtCompModel = $null
[System.Windows.Forms.TextBox]$txtCompAsset = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.TabPage]$tabGeneral = $null
[System.Windows.Forms.TabPage]$tabNetwork = $null
[System.Windows.Forms.TabPage]$tabSoftware = $null
[System.Windows.Forms.TabPage]$tabLog = $null
[System.Windows.Forms.RichTextBox]$rtfLog = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'RemoteWmiInfo Revengeance.resources.ps1')
$comboHostname = (New-Object -TypeName System.Windows.Forms.ComboBox)
$btnSave = (New-Object -TypeName System.Windows.Forms.Button)
$btnRemote = (New-Object -TypeName System.Windows.Forms.Button)
$btnShutdown = (New-Object -TypeName System.Windows.Forms.Button)
$tabControl1 = (New-Object -TypeName System.Windows.Forms.TabControl)
$tabGeneral = (New-Object -TypeName System.Windows.Forms.TabPage)
$groupBox2 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$groupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$txtOS = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompBIOS = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompCPU = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompRAM = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompSerial = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompCPUSp = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompModel = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompAsset = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompMake = (New-Object -TypeName System.Windows.Forms.TextBox)
$linkLabel4 = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkLabel3 = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkLabel6 = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkLabel2 = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkLabel1 = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$tabNetwork = (New-Object -TypeName System.Windows.Forms.TabPage)
$tabSoftware = (New-Object -TypeName System.Windows.Forms.TabPage)
$tabLog = (New-Object -TypeName System.Windows.Forms.TabPage)
$rtfLog = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$btnConnect = (New-Object -TypeName System.Windows.Forms.Button)
$statusStrip1 = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$StatusLabel1 = (New-Object -TypeName System.Windows.Forms.ToolStripStatusLabel)
$StatusLabel2 = (New-Object -TypeName System.Windows.Forms.ToolStripStatusLabel)
$btnReset = (New-Object -TypeName System.Windows.Forms.Button)
$tabControl1.SuspendLayout()
$tabGeneral.SuspendLayout()
$groupBox2.SuspendLayout()
$groupBox1.SuspendLayout()
$tabLog.SuspendLayout()
$statusStrip1.SuspendLayout()
$form.SuspendLayout()
#
#comboHostname
#
$comboHostname.FormattingEnabled = $true
$comboHostname.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]60))
$comboHostname.Name = [System.String]'comboHostname'
$comboHostname.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]410,[System.Int32]23))
$comboHostname.TabIndex = [System.Int32]4
#
#btnSave
#
$btnSave.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI Semilight',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$btnSave.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]116,[System.Int32]12))
$btnSave.Name = [System.String]'btnSave'
$btnSave.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]98,[System.Int32]42))
$btnSave.TabIndex = [System.Int32]1
$btnSave.Text = [System.String]'Save'
$btnSave.UseVisualStyleBackColor = $true
#
#btnRemote
#
$btnRemote.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$btnRemote.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI Semilight',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$btnRemote.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]220,[System.Int32]12))
$btnRemote.Name = [System.String]'btnRemote'
$btnRemote.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]98,[System.Int32]42))
$btnRemote.TabIndex = [System.Int32]2
$btnRemote.Text = [System.String]'Remote'
$btnRemote.UseVisualStyleBackColor = $true
#
#btnShutdown
#
$btnShutdown.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$btnShutdown.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI Semilight',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$btnShutdown.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]324,[System.Int32]12))
$btnShutdown.Name = [System.String]'btnShutdown'
$btnShutdown.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]98,[System.Int32]42))
$btnShutdown.TabIndex = [System.Int32]3
$btnShutdown.Text = [System.String]'Shutdown'
$btnShutdown.UseVisualStyleBackColor = $true
#
#tabControl1
#
$tabControl1.Controls.Add($tabGeneral)
$tabControl1.Controls.Add($tabNetwork)
$tabControl1.Controls.Add($tabSoftware)
$tabControl1.Controls.Add($tabLog)
$tabControl1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]98))
$tabControl1.Name = [System.String]'tabControl1'
$tabControl1.SelectedIndex = [System.Int32]0
$tabControl1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]535,[System.Int32]455))
$tabControl1.TabIndex = [System.Int32]6
#
#tabGeneral
#
$tabGeneral.Controls.Add($groupBox2)
$tabGeneral.Controls.Add($groupBox1)
$tabGeneral.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]24))
$tabGeneral.Name = [System.String]'tabGeneral'
$tabGeneral.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$tabGeneral.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]527,[System.Int32]427))
$tabGeneral.TabIndex = [System.Int32]0
$tabGeneral.Text = [System.String]'General'
$tabGeneral.UseVisualStyleBackColor = $true
#
#groupBox2
#
$groupBox2.Controls.Add($label1)
$groupBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]282))
$groupBox2.Name = [System.String]'groupBox2'
$groupBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]512,[System.Int32]139))
$groupBox2.TabIndex = [System.Int32]0
$groupBox2.TabStop = $false
$groupBox2.Text = [System.String]'Monitor'
#
#label1
#
$label1.AutoSize = $true
$label1.LiveSetting = [System.Windows.Forms.Automation.AutomationLiveSetting]::Assertive
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]29))
$label1.Name = [System.String]'label1'
$label1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]44,[System.Int32]21))
$label1.TabIndex = [System.Int32]0
$label1.Text = [System.String]'label1'
$label1.add_Click($label1_Click)
#
#groupBox1
#
$groupBox1.Controls.Add($txtOS)
$groupBox1.Controls.Add($txtCompBIOS)
$groupBox1.Controls.Add($txtCompCPU)
$groupBox1.Controls.Add($txtCompRAM)
$groupBox1.Controls.Add($txtCompSerial)
$groupBox1.Controls.Add($txtCompCPUSp)
$groupBox1.Controls.Add($txtCompModel)
$groupBox1.Controls.Add($txtCompAsset)
$groupBox1.Controls.Add($txtCompMake)
$groupBox1.Controls.Add($linkLabel4)
$groupBox1.Controls.Add($linkLabel3)
$groupBox1.Controls.Add($linkLabel6)
$groupBox1.Controls.Add($linkLabel2)
$groupBox1.Controls.Add($linkLabel1)
$groupBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]3))
$groupBox1.Name = [System.String]'groupBox1'
$groupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]512,[System.Int32]273))
$groupBox1.TabIndex = [System.Int32]0
$groupBox1.TabStop = $false
$groupBox1.Text = [System.String]'Computer'
#
#txtOS
#
$txtOS.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtOS.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]157,[System.Int32]186))
$txtOS.Name = [System.String]'txtOS'
$txtOS.ReadOnly = $true
$txtOS.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]349,[System.Int32]23))
$txtOS.TabIndex = [System.Int32]1
$txtOS.WordWrap = $false
#
#txtCompBIOS
#
$txtCompBIOS.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtCompBIOS.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]157,[System.Int32]147))
$txtCompBIOS.Name = [System.String]'txtCompBIOS'
$txtCompBIOS.ReadOnly = $true
$txtCompBIOS.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]210,[System.Int32]23))
$txtCompBIOS.TabIndex = [System.Int32]1
$txtCompBIOS.WordWrap = $false
#
#txtCompCPU
#
$txtCompCPU.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtCompCPU.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]157,[System.Int32]108))
$txtCompCPU.Name = [System.String]'txtCompCPU'
$txtCompCPU.ReadOnly = $true
$txtCompCPU.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]210,[System.Int32]23))
$txtCompCPU.TabIndex = [System.Int32]1
$txtCompCPU.WordWrap = $false
#
#txtCompRAM
#
$txtCompRAM.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtCompRAM.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]373,[System.Int32]147))
$txtCompRAM.Name = [System.String]'txtCompRAM'
$txtCompRAM.ReadOnly = $true
$txtCompRAM.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]133,[System.Int32]23))
$txtCompRAM.TabIndex = [System.Int32]1
$txtCompRAM.WordWrap = $false
#
#txtCompSerial
#
$txtCompSerial.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtCompSerial.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]157,[System.Int32]69))
$txtCompSerial.Name = [System.String]'txtCompSerial'
$txtCompSerial.ReadOnly = $true
$txtCompSerial.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]210,[System.Int32]23))
$txtCompSerial.TabIndex = [System.Int32]1
$txtCompSerial.WordWrap = $false
#
#txtCompCPUSp
#
$txtCompCPUSp.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtCompCPUSp.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]373,[System.Int32]108))
$txtCompCPUSp.Name = [System.String]'txtCompCPUSp'
$txtCompCPUSp.ReadOnly = $true
$txtCompCPUSp.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]133,[System.Int32]23))
$txtCompCPUSp.TabIndex = [System.Int32]1
$txtCompCPUSp.WordWrap = $false
#
#txtCompModel
#
$txtCompModel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtCompModel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]296,[System.Int32]30))
$txtCompModel.Name = [System.String]'txtCompModel'
$txtCompModel.ReadOnly = $true
$txtCompModel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]210,[System.Int32]23))
$txtCompModel.TabIndex = [System.Int32]1
$txtCompModel.WordWrap = $false
#
#txtCompAsset
#
$txtCompAsset.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtCompAsset.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]373,[System.Int32]69))
$txtCompAsset.Name = [System.String]'txtCompAsset'
$txtCompAsset.ReadOnly = $true
$txtCompAsset.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]133,[System.Int32]23))
$txtCompAsset.TabIndex = [System.Int32]1
$txtCompAsset.WordWrap = $false
#
#txtCompMake
#
$txtCompMake.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtCompMake.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]157,[System.Int32]30))
$txtCompMake.Name = [System.String]'txtCompMake'
$txtCompMake.ReadOnly = $true
$txtCompMake.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]133,[System.Int32]23))
$txtCompMake.TabIndex = [System.Int32]1
$txtCompMake.WordWrap = $false
#
#linkLabel4
#
$linkLabel4.AutoSize = $true
$linkLabel4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkLabel4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]150))
$linkLabel4.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$linkLabel4.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]0))
$linkLabel4.Name = [System.String]'linkLabel4'
$linkLabel4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$linkLabel4.TabIndex = [System.Int32]3
$linkLabel4.TabStop = $true
$linkLabel4.Text = [System.String]'BIOS, RAM'
$linkLabel4.add_LinkClicked($linkLabel2_LinkClicked)
#
#linkLabel3
#
$linkLabel3.AutoSize = $true
$linkLabel3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkLabel3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]111))
$linkLabel3.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$linkLabel3.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]0))
$linkLabel3.Name = [System.String]'linkLabel3'
$linkLabel3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$linkLabel3.TabIndex = [System.Int32]2
$linkLabel3.TabStop = $true
$linkLabel3.Text = [System.String]'CPU, Speed'
$linkLabel3.add_LinkClicked($linkLabel2_LinkClicked)
#
#linkLabel6
#
$linkLabel6.AutoSize = $true
$linkLabel6.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkLabel6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]189))
$linkLabel6.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$linkLabel6.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]0))
$linkLabel6.Name = [System.String]'linkLabel6'
$linkLabel6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$linkLabel6.TabIndex = [System.Int32]4
$linkLabel6.TabStop = $true
$linkLabel6.Text = [System.String]'OS'
$linkLabel6.add_LinkClicked($linkLabel2_LinkClicked)
#
#linkLabel2
#
$linkLabel2.AutoSize = $true
$linkLabel2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkLabel2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]72))
$linkLabel2.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$linkLabel2.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]0))
$linkLabel2.Name = [System.String]'linkLabel2'
$linkLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$linkLabel2.TabIndex = [System.Int32]1
$linkLabel2.TabStop = $true
$linkLabel2.Text = [System.String]'Serial, Asset'
$linkLabel2.add_LinkClicked($linkLabel2_LinkClicked)
#
#linkLabel1
#
$linkLabel1.AutoSize = $true
$linkLabel1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]33))
$linkLabel1.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$linkLabel1.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]120,[System.Int32]0))
$linkLabel1.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]0))
$linkLabel1.Name = [System.String]'linkLabel1'
$linkLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$linkLabel1.TabIndex = [System.Int32]0
$linkLabel1.TabStop = $true
$linkLabel1.Text = [System.String]'Make, Model'
#
#tabNetwork
#
$tabNetwork.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$tabNetwork.Name = [System.String]'tabNetwork'
$tabNetwork.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]527,[System.Int32]429))
$tabNetwork.TabIndex = [System.Int32]2
$tabNetwork.Text = [System.String]'Network'
$tabNetwork.UseVisualStyleBackColor = $true
#
#tabSoftware
#
$tabSoftware.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$tabSoftware.Name = [System.String]'tabSoftware'
$tabSoftware.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]527,[System.Int32]429))
$tabSoftware.TabIndex = [System.Int32]3
$tabSoftware.Text = [System.String]'Software'
$tabSoftware.UseVisualStyleBackColor = $true
#
#tabLog
#
$tabLog.Controls.Add($rtfLog)
$tabLog.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$tabLog.Name = [System.String]'tabLog'
$tabLog.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$tabLog.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]527,[System.Int32]429))
$tabLog.TabIndex = [System.Int32]1
$tabLog.Text = [System.String]'Log'
$tabLog.UseVisualStyleBackColor = $true
#
#rtfLog
#
$rtfLog.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]1)),([System.Int32]([System.Byte][System.Byte]36)),([System.Int32]([System.Byte][System.Byte]86)))

$rtfLog.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$rtfLog.ForeColor = [System.Drawing.Color]::White
$rtfLog.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]6))
$rtfLog.Name = [System.String]'rtfLog'
$rtfLog.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]518,[System.Int32]377))
$rtfLog.TabIndex = [System.Int32]0
$rtfLog.Text = [System.String]'15:54:35	Log line 1
15:54:40	Log line 2'
#
#btnConnect
#
$btnConnect.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btnConnect.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI Semilight',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$btnConnect.Image = ([System.Drawing.Image]$resources.'btnConnect.Image')
$btnConnect.ImageAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$btnConnect.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]428,[System.Int32]60))
$btnConnect.Name = [System.String]'btnConnect'
$btnConnect.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]119,[System.Int32]33))
$btnConnect.TabIndex = [System.Int32]5
$btnConnect.Text = [System.String]'Connect'
$btnConnect.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$btnConnect.UseVisualStyleBackColor = $true
$btnConnect.add_Click($btnConnect_Click)
#
#statusStrip1
#
$statusStrip1.ImageScalingSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]28,[System.Int32]28))
$statusStrip1.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($StatusLabel1,$StatusLabel2))
$statusStrip1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]556))
$statusStrip1.Name = [System.String]'statusStrip1'
$statusStrip1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]559,[System.Int32]22))
$statusStrip1.TabIndex = [System.Int32]4
$statusStrip1.Text = [System.String]'statusStrip1'
#
#StatusLabel1
#
$StatusLabel1.Name = [System.String]'StatusLabel1'
$StatusLabel1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2,[System.Int32]0,[System.Int32]2,[System.Int32]0))
$StatusLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]53,[System.Int32]17))
$StatusLabel1.Text = [System.String]'00:00:00'
$StatusLabel1.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$StatusLabel1.add_Click($toolStripStatusLabel1_Click)
#
#StatusLabel2
#
$StatusLabel2.Name = [System.String]'StatusLabel2'
$StatusLabel2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]2,[System.Int32]0,[System.Int32]2,[System.Int32]0))
$StatusLabel2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]43,[System.Int32]17))
$StatusLabel2.Text = [System.String]'Status'
$StatusLabel2.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#
#btnReset
#
$btnReset.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btnReset.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI Semilight',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$btnReset.Image = ([System.Drawing.Image]$resources.'btnReset.Image')
$btnReset.ImageAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$btnReset.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$btnReset.Name = [System.String]'btnReset'
$btnReset.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]98,[System.Int32]42))
$btnReset.TabIndex = [System.Int32]0
$btnReset.Text = [System.String]'Reset'
$btnReset.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$btnReset.UseVisualStyleBackColor = $true
$btnReset.add_Click($btnReset_Click)
#
#form
#
$form.AccessibleRole = [System.Windows.Forms.AccessibleRole]::Application
$form.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]559,[System.Int32]578))
$form.Controls.Add($statusStrip1)
$form.Controls.Add($btnConnect)
$form.Controls.Add($tabControl1)
$form.Controls.Add($btnShutdown)
$form.Controls.Add($btnRemote)
$form.Controls.Add($btnReset)
$form.Controls.Add($btnSave)
$form.Controls.Add($comboHostname)
$form.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$form.Name = [System.String]'form'
$tabControl1.ResumeLayout($false)
$tabGeneral.ResumeLayout($false)
$groupBox2.ResumeLayout($false)
$groupBox2.PerformLayout()
$groupBox1.ResumeLayout($false)
$groupBox1.PerformLayout()
$tabLog.ResumeLayout($false)
$statusStrip1.ResumeLayout($false)
$statusStrip1.PerformLayout()
$form.ResumeLayout($false)
$form.PerformLayout()
Add-Member -InputObject $form -Name tabControl1 -Value $tabControl1 -MemberType NoteProperty
Add-Member -InputObject $form -Name groupBox2 -Value $groupBox2 -MemberType NoteProperty
Add-Member -InputObject $form -Name groupBox1 -Value $groupBox1 -MemberType NoteProperty
Add-Member -InputObject $form -Name statusStrip1 -Value $statusStrip1 -MemberType NoteProperty
Add-Member -InputObject $form -Name linkLabel2 -Value $linkLabel2 -MemberType NoteProperty
Add-Member -InputObject $form -Name linkLabel1 -Value $linkLabel1 -MemberType NoteProperty
Add-Member -InputObject $form -Name StatusLabel1 -Value $StatusLabel1 -MemberType NoteProperty
Add-Member -InputObject $form -Name StatusLabel2 -Value $StatusLabel2 -MemberType NoteProperty
Add-Member -InputObject $form -Name linkLabel3 -Value $linkLabel3 -MemberType NoteProperty
Add-Member -InputObject $form -Name linkLabel4 -Value $linkLabel4 -MemberType NoteProperty
Add-Member -InputObject $form -Name linkLabel6 -Value $linkLabel6 -MemberType NoteProperty
Add-Member -InputObject $form -Name comboHostname -Value $comboHostname -MemberType NoteProperty
Add-Member -InputObject $form -Name btnSave -Value $btnSave -MemberType NoteProperty
Add-Member -InputObject $form -Name btnRemote -Value $btnRemote -MemberType NoteProperty
Add-Member -InputObject $form -Name btnShutdown -Value $btnShutdown -MemberType NoteProperty
Add-Member -InputObject $form -Name txtCompMake -Value $txtCompMake -MemberType NoteProperty
Add-Member -InputObject $form -Name btnConnect -Value $btnConnect -MemberType NoteProperty
Add-Member -InputObject $form -Name btnReset -Value $btnReset -MemberType NoteProperty
Add-Member -InputObject $form -Name txtOS -Value $txtOS -MemberType NoteProperty
Add-Member -InputObject $form -Name txtCompBIOS -Value $txtCompBIOS -MemberType NoteProperty
Add-Member -InputObject $form -Name txtCompCPU -Value $txtCompCPU -MemberType NoteProperty
Add-Member -InputObject $form -Name txtCompRAM -Value $txtCompRAM -MemberType NoteProperty
Add-Member -InputObject $form -Name txtCompSerial -Value $txtCompSerial -MemberType NoteProperty
Add-Member -InputObject $form -Name txtCompCPUSp -Value $txtCompCPUSp -MemberType NoteProperty
Add-Member -InputObject $form -Name txtCompModel -Value $txtCompModel -MemberType NoteProperty
Add-Member -InputObject $form -Name txtCompAsset -Value $txtCompAsset -MemberType NoteProperty
Add-Member -InputObject $form -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $form -Name tabGeneral -Value $tabGeneral -MemberType NoteProperty
Add-Member -InputObject $form -Name tabNetwork -Value $tabNetwork -MemberType NoteProperty
Add-Member -InputObject $form -Name tabSoftware -Value $tabSoftware -MemberType NoteProperty
Add-Member -InputObject $form -Name tabLog -Value $tabLog -MemberType NoteProperty
Add-Member -InputObject $form -Name rtfLog -Value $rtfLog -MemberType NoteProperty
}
. InitializeComponent
