[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$form = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TabControl]$tabControl1 = $null
[System.Windows.Forms.GroupBox]$groupBox2 = $null
[System.Windows.Forms.GroupBox]$groupBox1 = $null
[System.Windows.Forms.StatusStrip]$statusStrip1 = $null
[System.Windows.Forms.ToolStripStatusLabel]$StatusLabel1 = $null
[System.Windows.Forms.ToolStripStatusLabel]$StatusLabel2 = $null
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
[System.Windows.Forms.TextBox]$txtMisc = $null
[System.Windows.Forms.LinkLabel]$linkBIOSRam = $null
[System.Windows.Forms.LinkLabel]$linkCPUSpeed = $null
[System.Windows.Forms.LinkLabel]$linkExtra = $null
[System.Windows.Forms.LinkLabel]$linkOS = $null
[System.Windows.Forms.LinkLabel]$linkSerialAsset = $null
[System.Windows.Forms.LinkLabel]$linkMakeModel = $null
[System.Windows.Forms.Button]$button1 = $null
[System.Windows.Forms.TextBox]$textBox1 = $null
[System.Windows.Forms.ColumnHeader]$colName = $null
[System.Windows.Forms.ColumnHeader]$colVersion = $null
[System.Windows.Forms.ImageList]$imageList16 = $null
[System.ComponentModel.IContainer]$components = $null
[System.Windows.Forms.ImageList]$imageList32 = $null
[System.Windows.Forms.CheckedListBox]$checkedListBox1 = $null
[System.Windows.Forms.Button]$btnRefreshApps = $null
[System.Windows.Forms.ListView]$listApps = $null
[System.Windows.Forms.ColumnHeader]$colPublisher = $null
[System.Windows.Forms.ColumnHeader]$colInstallDate = $null
[System.Windows.Forms.RichTextBox]$rtfLog = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
$resources = . (Join-Path $PSScriptRoot 'RemoteWmiInfo Revengeance.resources.ps1')
[System.Windows.Forms.ListViewItem]$listViewItem1 = (New-Object -TypeName System.Windows.Forms.ListViewItem -ArgumentList @([System.String]''))
$comboHostname = (New-Object -TypeName System.Windows.Forms.ComboBox)
$btnSave = (New-Object -TypeName System.Windows.Forms.Button)
$imageList32 = (New-Object -TypeName System.Windows.Forms.ImageList -ArgumentList @($components))
$btnRemote = (New-Object -TypeName System.Windows.Forms.Button)
$btnShutdown = (New-Object -TypeName System.Windows.Forms.Button)
$tabControl1 = (New-Object -TypeName System.Windows.Forms.TabControl)
$tabGeneral = (New-Object -TypeName System.Windows.Forms.TabPage)
$groupBox2 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$button1 = (New-Object -TypeName System.Windows.Forms.Button)
$textBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$groupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
$txtMisc = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtOS = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompBIOS = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompCPU = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompRAM = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompSerial = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompCPUSp = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompModel = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompAsset = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtCompMake = (New-Object -TypeName System.Windows.Forms.TextBox)
$linkBIOSRam = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkCPUSpeed = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkExtra = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkOS = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkSerialAsset = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$linkMakeModel = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$tabNetwork = (New-Object -TypeName System.Windows.Forms.TabPage)
$checkedListBox1 = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$tabSoftware = (New-Object -TypeName System.Windows.Forms.TabPage)
$btnRefreshApps = (New-Object -TypeName System.Windows.Forms.Button)
$imageList16 = (New-Object -TypeName System.Windows.Forms.ImageList -ArgumentList @($components))
$listApps = (New-Object -TypeName System.Windows.Forms.ListView)
$colName = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$colVersion = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$colPublisher = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$colInstallDate = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
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
$tabNetwork.SuspendLayout()
$tabSoftware.SuspendLayout()
$tabLog.SuspendLayout()
$statusStrip1.SuspendLayout()
$form.SuspendLayout()
#
#comboHostname
#
$comboHostname.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$comboHostname.FormattingEnabled = $true
$comboHostname.Items.AddRange([System.Object[]]@([System.String]'hello|1.0'))
$comboHostname.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]60))
$comboHostname.Name = [System.String]'comboHostname'
$comboHostname.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]410,[System.Int32]23))
$comboHostname.TabIndex = [System.Int32]4
$comboHostname.Text = [System.String]'COMP012345'
#
#btnSave
#
$btnSave.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btnSave.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI Semilight',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$btnSave.ImageAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$btnSave.ImageKey = [System.String]'Save32'
$btnSave.ImageList = $imageList32
$btnSave.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]116,[System.Int32]12))
$btnSave.Name = [System.String]'btnSave'
$btnSave.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]98,[System.Int32]42))
$btnSave.TabIndex = [System.Int32]1
$btnSave.Text = [System.String]'Save'
$btnSave.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$btnSave.UseVisualStyleBackColor = $true
#
#imageList32
#
$imageList32.ImageStream = ([System.Windows.Forms.ImageListStreamer]$resources.'imageList32.ImageStream')
$imageList32.TransparentColor = [System.Drawing.Color]::Transparent
$imageList32.Images.SetKeyName([System.Int32]0,[System.String]'Apply32')
$imageList32.Images.SetKeyName([System.Int32]1,[System.String]'Save32')
$imageList32.Images.SetKeyName([System.Int32]2,[System.String]'RDC32')
$imageList32.Images.SetKeyName([System.Int32]3,[System.String]'Power32')
$imageList32.Images.SetKeyName([System.Int32]4,[System.String]'Refresh32')
#
#btnRemote
#
$btnRemote.Enabled = $false
$btnRemote.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btnRemote.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI Semilight',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$btnRemote.ImageAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$btnRemote.ImageKey = [System.String]'RDC32'
$btnRemote.ImageList = $imageList32
$btnRemote.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]220,[System.Int32]12))
$btnRemote.Name = [System.String]'btnRemote'
$btnRemote.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]98,[System.Int32]42))
$btnRemote.TabIndex = [System.Int32]2
$btnRemote.Text = [System.String]'Remote'
$btnRemote.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$btnRemote.UseVisualStyleBackColor = $true
$btnRemote.add_Click($btnRemote_Click)
#
#btnShutdown
#
$btnShutdown.Enabled = $false
$btnShutdown.FlatAppearance.BorderColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]255)),([System.Int32]([System.Byte][System.Byte]128)),([System.Int32]([System.Byte][System.Byte]128)))

$btnShutdown.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btnShutdown.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI Semilight',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$btnShutdown.ImageAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$btnShutdown.ImageKey = [System.String]'Power32'
$btnShutdown.ImageList = $imageList32
$btnShutdown.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]324,[System.Int32]12))
$btnShutdown.Name = [System.String]'btnShutdown'
$btnShutdown.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]98,[System.Int32]42))
$btnShutdown.TabIndex = [System.Int32]3
$btnShutdown.Text = [System.String]'Power'
$btnShutdown.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$btnShutdown.UseVisualStyleBackColor = $true
#
#tabControl1
#
$tabControl1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$tabControl1.Controls.Add($tabGeneral)
$tabControl1.Controls.Add($tabNetwork)
$tabControl1.Controls.Add($tabSoftware)
$tabControl1.Controls.Add($tabLog)
$tabControl1.ImageList = $imageList16
$tabControl1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]98))
$tabControl1.Name = [System.String]'tabControl1'
$tabControl1.SelectedIndex = [System.Int32]0
$tabControl1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]535,[System.Int32]438))
$tabControl1.TabIndex = [System.Int32]6
#
#tabGeneral
#
$tabGeneral.Controls.Add($groupBox2)
$tabGeneral.Controls.Add($groupBox1)
$tabGeneral.ImageKey = [System.String]'computer16.ico'
$tabGeneral.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]24))
$tabGeneral.Name = [System.String]'tabGeneral'
$tabGeneral.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$tabGeneral.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]512,[System.Int32]410))
$tabGeneral.TabIndex = [System.Int32]0
$tabGeneral.Text = [System.String]'General'
$tabGeneral.UseVisualStyleBackColor = $true
#
#groupBox2
#
$groupBox2.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$groupBox2.Controls.Add($button1)
$groupBox2.Controls.Add($textBox1)
$groupBox2.Controls.Add($label1)
$groupBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]282))
$groupBox2.Name = [System.String]'groupBox2'
$groupBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]502,[System.Int32]109))
$groupBox2.TabIndex = [System.Int32]0
$groupBox2.TabStop = $false
$groupBox2.Text = [System.String]'Monitor'
#
#button1
#
$button1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]465,[System.Int32]29))
$button1.Name = [System.String]'button1'
$button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]31,[System.Int32]23))
$button1.TabIndex = [System.Int32]2
$button1.Text = [System.String]'button1'
$button1.UseVisualStyleBackColor = $true
#
#textBox1
#
$textBox1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$textBox1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$textBox1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$textBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]157,[System.Int32]29))
$textBox1.Name = [System.String]'textBox1'
$textBox1.ReadOnly = $true
$textBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]302,[System.Int32]23))
$textBox1.TabIndex = [System.Int32]1
$textBox1.WordWrap = $false
#
#label1
#
$label1.AutoSize = $true
$label1.LiveSetting = [System.Windows.Forms.Automation.AutomationLiveSetting]::Assertive
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]29))
$label1.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]0))
$label1.Name = [System.String]'label1'
$label1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]21))
$label1.TabIndex = [System.Int32]0
$label1.Text = [System.String]'Model'
$label1.add_Click($label1_Click)
#
#groupBox1
#
$groupBox1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$groupBox1.Controls.Add($txtMisc)
$groupBox1.Controls.Add($txtOS)
$groupBox1.Controls.Add($txtCompBIOS)
$groupBox1.Controls.Add($txtCompCPU)
$groupBox1.Controls.Add($txtCompRAM)
$groupBox1.Controls.Add($txtCompSerial)
$groupBox1.Controls.Add($txtCompCPUSp)
$groupBox1.Controls.Add($txtCompModel)
$groupBox1.Controls.Add($txtCompAsset)
$groupBox1.Controls.Add($txtCompMake)
$groupBox1.Controls.Add($linkBIOSRam)
$groupBox1.Controls.Add($linkCPUSpeed)
$groupBox1.Controls.Add($linkExtra)
$groupBox1.Controls.Add($linkOS)
$groupBox1.Controls.Add($linkSerialAsset)
$groupBox1.Controls.Add($linkMakeModel)
$groupBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]3))
$groupBox1.Name = [System.String]'groupBox1'
$groupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]502,[System.Int32]273))
$groupBox1.TabIndex = [System.Int32]0
$groupBox1.TabStop = $false
$groupBox1.Text = [System.String]'Computer'
#
#txtMisc
#
$txtMisc.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtMisc.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtMisc.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtMisc.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]157,[System.Int32]220))
$txtMisc.Name = [System.String]'txtMisc'
$txtMisc.ReadOnly = $true
$txtMisc.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]339,[System.Int32]23))
$txtMisc.TabIndex = [System.Int32]1
$txtMisc.WordWrap = $false
#
#txtOS
#
$txtOS.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtOS.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtOS.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtOS.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]157,[System.Int32]186))
$txtOS.Name = [System.String]'txtOS'
$txtOS.ReadOnly = $true
$txtOS.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]339,[System.Int32]23))
$txtOS.TabIndex = [System.Int32]1
$txtOS.WordWrap = $false
#
#txtCompBIOS
#
$txtCompBIOS.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
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
$txtCompCPU.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
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
$txtCompRAM.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtCompRAM.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtCompRAM.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtCompRAM.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]373,[System.Int32]147))
$txtCompRAM.Name = [System.String]'txtCompRAM'
$txtCompRAM.ReadOnly = $true
$txtCompRAM.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]123,[System.Int32]23))
$txtCompRAM.TabIndex = [System.Int32]1
$txtCompRAM.WordWrap = $false
#
#txtCompSerial
#
$txtCompSerial.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
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
$txtCompCPUSp.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtCompCPUSp.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtCompCPUSp.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtCompCPUSp.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]373,[System.Int32]108))
$txtCompCPUSp.Name = [System.String]'txtCompCPUSp'
$txtCompCPUSp.ReadOnly = $true
$txtCompCPUSp.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]123,[System.Int32]23))
$txtCompCPUSp.TabIndex = [System.Int32]1
$txtCompCPUSp.WordWrap = $false
#
#txtCompModel
#
$txtCompModel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtCompModel.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtCompModel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtCompModel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]296,[System.Int32]30))
$txtCompModel.Name = [System.String]'txtCompModel'
$txtCompModel.ReadOnly = $true
$txtCompModel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]23))
$txtCompModel.TabIndex = [System.Int32]1
$txtCompModel.WordWrap = $false
#
#txtCompAsset
#
$txtCompAsset.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtCompAsset.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtCompAsset.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtCompAsset.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]373,[System.Int32]69))
$txtCompAsset.Name = [System.String]'txtCompAsset'
$txtCompAsset.ReadOnly = $true
$txtCompAsset.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]123,[System.Int32]23))
$txtCompAsset.TabIndex = [System.Int32]1
$txtCompAsset.WordWrap = $false
#
#txtCompMake
#
$txtCompMake.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$txtCompMake.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$txtCompMake.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]157,[System.Int32]30))
$txtCompMake.Name = [System.String]'txtCompMake'
$txtCompMake.ReadOnly = $true
$txtCompMake.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]133,[System.Int32]23))
$txtCompMake.TabIndex = [System.Int32]1
$txtCompMake.WordWrap = $false
#
#linkBIOSRam
#
$linkBIOSRam.AutoSize = $true
$linkBIOSRam.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkBIOSRam.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]150))
$linkBIOSRam.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$linkBIOSRam.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]0))
$linkBIOSRam.Name = [System.String]'linkBIOSRam'
$linkBIOSRam.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$linkBIOSRam.TabIndex = [System.Int32]3
$linkBIOSRam.TabStop = $true
$linkBIOSRam.Text = [System.String]'BIOS, RAM'
$linkBIOSRam.add_LinkClicked($linkLabel2_LinkClicked)
#
#linkCPUSpeed
#
$linkCPUSpeed.AutoSize = $true
$linkCPUSpeed.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkCPUSpeed.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]111))
$linkCPUSpeed.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$linkCPUSpeed.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]0))
$linkCPUSpeed.Name = [System.String]'linkCPUSpeed'
$linkCPUSpeed.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$linkCPUSpeed.TabIndex = [System.Int32]2
$linkCPUSpeed.TabStop = $true
$linkCPUSpeed.Text = [System.String]'CPU, Speed'
$linkCPUSpeed.add_LinkClicked($linkLabel2_LinkClicked)
#
#linkExtra
#
$linkExtra.AutoSize = $true
$linkExtra.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkExtra.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]223))
$linkExtra.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$linkExtra.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]0))
$linkExtra.Name = [System.String]'linkExtra'
$linkExtra.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$linkExtra.TabIndex = [System.Int32]4
$linkExtra.TabStop = $true
$linkExtra.Text = [System.String]'Misc'
$linkExtra.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$linkExtra.add_LinkClicked($linkLabel2_LinkClicked)
#
#linkOS
#
$linkOS.AutoSize = $true
$linkOS.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkOS.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]189))
$linkOS.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$linkOS.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]0))
$linkOS.Name = [System.String]'linkOS'
$linkOS.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$linkOS.TabIndex = [System.Int32]4
$linkOS.TabStop = $true
$linkOS.Text = [System.String]'OS'
$linkOS.add_LinkClicked($linkLabel2_LinkClicked)
#
#linkSerialAsset
#
$linkSerialAsset.AutoSize = $true
$linkSerialAsset.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkSerialAsset.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]72))
$linkSerialAsset.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$linkSerialAsset.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]0))
$linkSerialAsset.Name = [System.String]'linkSerialAsset'
$linkSerialAsset.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$linkSerialAsset.TabIndex = [System.Int32]1
$linkSerialAsset.TabStop = $true
$linkSerialAsset.Text = [System.String]'Serial, Asset'
$linkSerialAsset.add_LinkClicked($linkLabel2_LinkClicked)
#
#linkMakeModel
#
$linkMakeModel.AutoSize = $true
$linkMakeModel.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$linkMakeModel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8,[System.Int32]33))
$linkMakeModel.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
$linkMakeModel.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]120,[System.Int32]0))
$linkMakeModel.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]0))
$linkMakeModel.Name = [System.String]'linkMakeModel'
$linkMakeModel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]15))
$linkMakeModel.TabIndex = [System.Int32]0
$linkMakeModel.TabStop = $true
$linkMakeModel.Text = [System.String]'Make, Model'
#
#tabNetwork
#
$tabNetwork.Controls.Add($checkedListBox1)
$tabNetwork.ImageKey = [System.String]'network-wired16.ico'
$tabNetwork.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]23))
$tabNetwork.Name = [System.String]'tabNetwork'
$tabNetwork.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]522,[System.Int32]410))
$tabNetwork.TabIndex = [System.Int32]2
$tabNetwork.Text = [System.String]'Network'
$tabNetwork.UseVisualStyleBackColor = $true
$tabNetwork.add_Click($tabNetwork_Click)
#
#checkedListBox1
#
$checkedListBox1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$checkedListBox1.FormattingEnabled = $true
$checkedListBox1.Items.AddRange([System.Object[]]@([System.String]'THR - Common',[System.String]'THR - Clinical',[System.String]'THPG - Common',[System.String]'THPG - Clinical'))
$checkedListBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$checkedListBox1.Name = [System.String]'checkedListBox1'
$checkedListBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]131,[System.Int32]92))
$checkedListBox1.TabIndex = [System.Int32]0
#
#tabSoftware
#
$tabSoftware.Controls.Add($btnRefreshApps)
$tabSoftware.Controls.Add($listApps)
$tabSoftware.ImageKey = [System.String]'software16.ico'
$tabSoftware.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]24))
$tabSoftware.Name = [System.String]'tabSoftware'
$tabSoftware.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]527,[System.Int32]410))
$tabSoftware.TabIndex = [System.Int32]3
$tabSoftware.Text = [System.String]'Software'
$tabSoftware.UseVisualStyleBackColor = $true
#
#btnRefreshApps
#
$btnRefreshApps.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$btnRefreshApps.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btnRefreshApps.ImageAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$btnRefreshApps.ImageKey = [System.String]'software16.ico'
$btnRefreshApps.ImageList = $imageList16
$btnRefreshApps.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]449,[System.Int32]371))
$btnRefreshApps.Name = [System.String]'btnRefreshApps'
$btnRefreshApps.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]32))
$btnRefreshApps.TabIndex = [System.Int32]1
$btnRefreshApps.Text = [System.String]'Refresh'
$btnRefreshApps.TextAlign = [System.Drawing.ContentAlignment]::MiddleRight
$btnRefreshApps.UseVisualStyleBackColor = $true
$btnRefreshApps.add_Click($btnRefreshApps_Click)
#
#imageList16
#
$imageList16.ImageStream = ([System.Windows.Forms.ImageListStreamer]$resources.'imageList16.ImageStream')
$imageList16.TransparentColor = [System.Drawing.Color]::Transparent
$imageList16.Images.SetKeyName([System.Int32]0,[System.String]'computer16.ico')
$imageList16.Images.SetKeyName([System.Int32]1,[System.String]'network-wired16.ico')
$imageList16.Images.SetKeyName([System.Int32]2,[System.String]'software16.ico')
$imageList16.Images.SetKeyName([System.Int32]3,[System.String]'logviewer16.ico')
#
#listApps
#
$listApps.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$listApps.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$listApps.Columns.AddRange([System.Windows.Forms.ColumnHeader[]]@($colName,$colVersion,$colPublisher,$colInstallDate))
$listApps.FullRowSelect = $true
$listApps.GridLines = $true
$listApps.HideSelection = $false
$listApps.Items.AddRange([System.Windows.Forms.ListViewItem[]]@($listViewItem1))
$listApps.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]3))
$listApps.Name = [System.String]'listApps'
$listApps.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]521,[System.Int32]362))
$listApps.TabIndex = [System.Int32]0
$listApps.UseCompatibleStateImageBehavior = $false
$listApps.View = [System.Windows.Forms.View]::Details
#
#colName
#
$colName.Text = [System.String]'Name'
$colName.Width = [System.Int32]100
#
#colVersion
#
$colVersion.Text = [System.String]'Version'
$colVersion.Width = [System.Int32]100
#
#colPublisher
#
$colPublisher.Text = [System.String]'Publisher'
$colPublisher.Width = [System.Int32]100
#
#colInstallDate
#
$colInstallDate.Text = [System.String]'Install Date'
$colInstallDate.Width = [System.Int32]100
#
#tabLog
#
$tabLog.Controls.Add($rtfLog)
$tabLog.ImageKey = [System.String]'logviewer16.ico'
$tabLog.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]24))
$tabLog.Name = [System.String]'tabLog'
$tabLog.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$tabLog.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]522,[System.Int32]409))
$tabLog.TabIndex = [System.Int32]1
$tabLog.Text = [System.String]'Log'
$tabLog.UseVisualStyleBackColor = $true
#
#rtfLog
#
$rtfLog.AcceptsTab = $true
$rtfLog.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$rtfLog.AutoWordSelection = $true
$rtfLog.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]1)),([System.Int32]([System.Byte][System.Byte]36)),([System.Int32]([System.Byte][System.Byte]86)))

$rtfLog.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$rtfLog.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Consolas',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$rtfLog.ForeColor = [System.Drawing.Color]::White
$rtfLog.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]6))
$rtfLog.Name = [System.String]'rtfLog'
$rtfLog.ReadOnly = $true
$rtfLog.ScrollBars = [System.Windows.Forms.RichTextBoxScrollBars]::Vertical
$rtfLog.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]510,[System.Int32]397))
$rtfLog.TabIndex = [System.Int32]0
$rtfLog.Text = [System.String]''
#
#btnConnect
#
$btnConnect.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$btnConnect.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btnConnect.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI Semilight',[System.Single]10,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$btnConnect.ImageAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$btnConnect.ImageKey = [System.String]'Apply32'
$btnConnect.ImageList = $imageList32
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
$statusStrip1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]539))
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
$btnReset.ImageAlign = [System.Drawing.ContentAlignment]::MiddleLeft
$btnReset.ImageKey = [System.String]'Refresh32'
$btnReset.ImageList = $imageList32
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
$form.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]559,[System.Int32]561))
$form.Controls.Add($statusStrip1)
$form.Controls.Add($btnConnect)
$form.Controls.Add($tabControl1)
$form.Controls.Add($btnShutdown)
$form.Controls.Add($btnRemote)
$form.Controls.Add($btnReset)
$form.Controls.Add($btnSave)
$form.Controls.Add($comboHostname)
$form.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe UI',[System.Single]9,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$form.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]500,[System.Int32]600))
$form.Name = [System.String]'form'
$form.Text = [System.String]'Remote WMI Info REVENGEANCE'
$form.add_FormClosing($form_Closing)
$form.add_Load($form_Load)
$tabControl1.ResumeLayout($false)
$tabGeneral.ResumeLayout($false)
$groupBox2.ResumeLayout($false)
$groupBox2.PerformLayout()
$groupBox1.ResumeLayout($false)
$groupBox1.PerformLayout()
$tabNetwork.ResumeLayout($false)
$tabSoftware.ResumeLayout($false)
$tabLog.ResumeLayout($false)
$statusStrip1.ResumeLayout($false)
$statusStrip1.PerformLayout()
$form.ResumeLayout($false)
$form.PerformLayout()
Add-Member -InputObject $form -Name tabControl1 -Value $tabControl1 -MemberType NoteProperty
Add-Member -InputObject $form -Name groupBox2 -Value $groupBox2 -MemberType NoteProperty
Add-Member -InputObject $form -Name groupBox1 -Value $groupBox1 -MemberType NoteProperty
Add-Member -InputObject $form -Name statusStrip1 -Value $statusStrip1 -MemberType NoteProperty
Add-Member -InputObject $form -Name StatusLabel1 -Value $StatusLabel1 -MemberType NoteProperty
Add-Member -InputObject $form -Name StatusLabel2 -Value $StatusLabel2 -MemberType NoteProperty
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
Add-Member -InputObject $form -Name txtMisc -Value $txtMisc -MemberType NoteProperty
Add-Member -InputObject $form -Name linkBIOSRam -Value $linkBIOSRam -MemberType NoteProperty
Add-Member -InputObject $form -Name linkCPUSpeed -Value $linkCPUSpeed -MemberType NoteProperty
Add-Member -InputObject $form -Name linkExtra -Value $linkExtra -MemberType NoteProperty
Add-Member -InputObject $form -Name linkOS -Value $linkOS -MemberType NoteProperty
Add-Member -InputObject $form -Name linkSerialAsset -Value $linkSerialAsset -MemberType NoteProperty
Add-Member -InputObject $form -Name linkMakeModel -Value $linkMakeModel -MemberType NoteProperty
Add-Member -InputObject $form -Name button1 -Value $button1 -MemberType NoteProperty
Add-Member -InputObject $form -Name textBox1 -Value $textBox1 -MemberType NoteProperty
Add-Member -InputObject $form -Name colName -Value $colName -MemberType NoteProperty
Add-Member -InputObject $form -Name colVersion -Value $colVersion -MemberType NoteProperty
Add-Member -InputObject $form -Name imageList16 -Value $imageList16 -MemberType NoteProperty
Add-Member -InputObject $form -Name components -Value $components -MemberType NoteProperty
Add-Member -InputObject $form -Name imageList32 -Value $imageList32 -MemberType NoteProperty
Add-Member -InputObject $form -Name checkedListBox1 -Value $checkedListBox1 -MemberType NoteProperty
Add-Member -InputObject $form -Name btnRefreshApps -Value $btnRefreshApps -MemberType NoteProperty
Add-Member -InputObject $form -Name listApps -Value $listApps -MemberType NoteProperty
Add-Member -InputObject $form -Name colPublisher -Value $colPublisher -MemberType NoteProperty
Add-Member -InputObject $form -Name colInstallDate -Value $colInstallDate -MemberType NoteProperty
Add-Member -InputObject $form -Name rtfLog -Value $rtfLog -MemberType NoteProperty
}
. InitializeComponent
