object ExplorerForm: TExplorerForm
  Left = 229
  Top = 120
  Caption = 'FWP Explorer'
  ClientHeight = 817
  ClientWidth = 898
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesigned
  ScreenSnap = True
  OnClose = ExplorerFormClose
  OnCreate = ExplorerFormCreate
  OnPaint = ExplorerFormPaint
  DesignSize = (
    898
    817)
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter: TSplitter
    Left = 209
    Top = 0
    Height = 786
    MinSize = 20
    ExplicitHeight = 350
  end
  object ListView: TListView
    Left = 212
    Top = 0
    Width = 686
    Height = 786
    Align = alClient
    Columns = <
      item
        Caption = 'Filename'
        Width = 200
      end
      item
        Alignment = taRightJustify
        Caption = 'Size'
        Width = 80
      end
      item
        Caption = 'Date'
        Width = 100
      end
      item
        Caption = 'Type'
        Width = 100
      end
      item
        Caption = 'Attr'
        Width = 0
      end
      item
        Caption = 'Last Access Time'
        Width = 0
      end
      item
        Caption = 'Used for Size Compare'
        Width = 0
      end
      item
        Caption = 'Used for Size Compare'
      end
      item
        Caption = 'Used for Size Compare'
      end
      item
        Caption = 'Used for Size Compare'
      end
      item
        Caption = 'Used for Size Compare'
      end>
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FlatScrollBars = True
    HotTrackStyles = [htHandPoint]
    HoverTime = 5000
    MultiSelect = True
    ParentDoubleBuffered = False
    ParentFont = False
    SmallImages = ListViewImageList
    TabOrder = 0
    ViewStyle = vsReport
    OnAdvancedCustomDrawItem = ListViewAdvancedCustomDrawItem
    OnClick = ListViewSingleClick
    OnColumnClick = ListViewColumnClick
    OnDblClick = ListViewDoubleClick
    OnEdited = ListViewEdited
    OnEditing = ListViewEditing
    OnDragOver = ListViewDragOver
    OnKeyDown = ListViewKeyDown
    OnKeyPress = ListViewKeyPress
    OnMouseDown = ListViewMouseDown
    OnMouseLeave = ListViewMouseLeave
    OnMouseMove = ListViewMouseMove
    OnMouseUp = ListViewMouseUp
    OnSelectItem = ListViewSelectItem
  end
  object TreeView: TTreeView
    Left = 0
    Top = 0
    Width = 209
    Height = 786
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = TreeViewImageList
    Indent = 19
    MultiSelectStyle = []
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    SortType = stText
    TabOrder = 1
    OnClick = TreeViewClick
    OnDragDrop = TreeViewDragDrop
    OnDragOver = TreeViewDragOver
    OnEdited = TreeViewEdited
    OnExpanding = TreeViewExpanding
    OnKeyDown = TreeViewKeyDown
    OnKeyUp = TreeViewKeyUp
    OnMouseDown = TreeViewMouseDown
  end
  object ControlBar: TControlBar
    Left = 0
    Top = 786
    Width = 898
    Height = 31
    Align = alBottom
    TabOrder = 2
    Visible = False
    object SingleClickCheckBox: TCheckBox
      Left = 11
      Top = 2
      Width = 37
      Height = 22
      Align = alCustom
      Alignment = taLeftJustify
      Caption = 'Sgl'
      TabOrder = 0
      OnClick = SingleClickCheckBoxClick
    end
    object CompareFileSizeCheckBox: TCheckBox
      Left = 110
      Top = 2
      Width = 37
      Height = 22
      Alignment = taLeftJustify
      Caption = 'CFS'
      TabOrder = 1
      OnClick = CompareFileSizeCheckBoxClick
    end
    object CreateSnapsCheckBox: TCheckBox
      Left = 450
      Top = 2
      Width = 58
      Height = 22
      Alignment = taLeftJustify
      Caption = 'Cte/Upd'
      TabOrder = 2
      OnClick = CreateSnapsCheckBoxClick
    end
    object ClearSnapsCheckBox: TCheckBox
      Left = 521
      Top = 2
      Width = 43
      Height = 22
      Alignment = taLeftJustify
      Caption = 'Clear'
      Enabled = False
      TabOrder = 3
      OnClick = ClearSnapsCheckBoxClick
    end
    object ControlBarSnapsPanel: TPanel
      Left = 393
      Top = 2
      Width = 44
      Height = 22
      Caption = 'Snaps:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 4
    end
    object CompareFileSizeInDifferentDirectoryCheckBox: TCheckBox
      Left = 160
      Top = 2
      Width = 39
      Height = 22
      Alignment = taLeftJustify
      Caption = 'CFD'
      TabOrder = 5
      OnClick = CompareFileSizeInDifferentDirectoryCheckBoxClick
    end
    object CompareSnapImagesCheckBox: TCheckBox
      Left = 212
      Top = 2
      Width = 44
      Height = 22
      Alignment = taLeftJustify
      Caption = 'CSI'
      TabOrder = 6
      OnClick = CompareSnapImagesCheckBoxClick
    end
    object CompareSnapImagesInDifferentDirectoryCheckBox: TCheckBox
      Left = 269
      Top = 2
      Width = 46
      Height = 22
      Alignment = taLeftJustify
      Caption = 'CSID'
      TabOrder = 7
      OnClick = CompareSnapImagesInDifferentDirectoryCheckBoxClick
    end
    object TestCheckBox: TCheckBox
      Left = 337
      Top = 2
      Width = 43
      Height = 22
      Alignment = taLeftJustify
      Caption = 'Test'
      TabOrder = 8
      OnClick = TestCheckBoxClick
    end
    object UserSetIncrement: TMaskEdit
      Left = 61
      Top = 2
      Width = 36
      Height = 22
      Alignment = taCenter
      TabOrder = 9
      Text = '20'
      OnChange = UserSetIncrementChange
    end
  end
  object ListViewEditPanel: TPanel
    Left = 276
    Top = 129
    Width = 169
    Height = 65
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object ListViewFileNameEdit: TEdit
      Left = 8
      Top = 8
      Width = 1000
      Height = 21
      TabOrder = 0
      Visible = False
      OnEnter = ListViewFileNameEditEnter
      OnExit = ListViewFileNameEditExit
      OnKeyDown = ListViewFileNameEditKeyDown
      OnKeyPress = ListViewFileNameEditKeyPress
    end
    object ListViewFileNameNumbersEdit: TEdit
      Left = 8
      Top = 35
      Width = 153
      Height = 21
      TabOrder = 1
      Text = 'New number here'
      Visible = False
      OnEnter = ListViewFileNameNumbersEditEnter
      OnExit = ListViewFileNameNumbersEditExit
      OnKeyDown = ListViewFileNameNumbersEditKeyDown
      OnKeyPress = ListViewFileNameNumbersEditKeyPress
    end
  end
  object ProgressBar: TProgressBar
    Left = 4
    Top = 768
    Width = 894
    Height = 16
    Anchors = [akLeft, akBottom]
    Step = 1
    TabOrder = 4
    Visible = False
  end
  object StopButton: TButton
    Left = 424
    Top = 375
    Width = 177
    Height = 57
    Caption = 'Stop Button'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 22
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnClick = StopButtonClick
  end
  object ExplorerMemo: TMemo
    Left = 368
    Top = 464
    Width = 522
    Height = 193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
  end
  object TreeViewImageList: TImageList
    BlendColor = clWhite
    BkColor = clWhite
    Left = 56
    Top = 88
    Bitmap = {
      494C0101010078031C0410001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0076B2E6003E91
      DB00348CD900348CD900348CD900348CD900348CD900348CD900348CD900348C
      D900348BD900398FDA00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF004799DD00DEF1FA00A8DD
      F4009EDBF40096DAF3008ED8F30086D7F3007FD4F20079D3F20072D2F1006CD0
      F10069CFF100C2EAF8003F95DB00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF003B97DB00EFFAFE00A1E9
      F90091E5F80081E1F70072DEF60063DAF50054D7F40047D3F30039D0F2002ECD
      F10026CBF000CAF2FB003B97DB00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF003C9DDB00F2FAFD00B3ED
      FA00A4E9F90095E6F80085E2F70076DEF60065DBF50057D7F40049D4F3003BD1
      F20030CEF100CCF2FB003B9BDB00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF003BA3DB00F6FCFE00C8F2
      FC00B9EFFB00ACECFA009CE8F9008BE3F7007CE0F6006CDCF6005DD9F5004FD6
      F40044D3F300D0F3FC003BA2DB00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF003BA8DB00FEFFFF00F8FD
      FF00F6FDFF00F5FCFF00F3FCFE00D8F6FC0094E6F80085E3F70076DFF60068DB
      F5005CD8F400D7F4FC003BA7DB00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0039ADDB00E8F6FB0094D4
      EF0088CEEE0073C1E900C9E9F600F2FCFE00F3FCFE00F2FCFE00F0FCFE00EFFB
      FE00EEFBFE00FEFFFF003CAEDB00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0040AEDC00F1FAFD0094DE
      F50093DCF40081D5F2006ACAED006CCBEA0085D3EF0080D2EF007AD0EF0076CF
      EE0072CFEE00E9F7FB003EB2DC00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0041B4DC00F7FCFE008EE4
      F80091DEF5009FE0F500ACE1F600EFFBFE00F4FDFE00F3FCFE00F1FCFE00EFFB
      FE00EEFBFE00FAFDFF0058BCE000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF003CB5DB00FDFEFE00FEFF
      FF00FEFEFF00FDFEFF00FEFFFF00EAF7FB006EC8E5006FC9E4006FC9E4006FC9
      E4007DCFE70084D0E800FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0059C2E00061C3E20063C4
      E30063C4E30063C4E30062C4E30056C0E000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      C003000000000000800100000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      8001000000000000800300000000000080FF000000000000FFFF000000000000
      FFFF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object ListViewImageList: TImageList
    BlendColor = clWhite
    BkColor = clWhite
    Left = 56
    Top = 152
  end
  object ListViewPopupMenu: TPopupMenu
    OnPopup = ListViewPopupMenuPopup
    Left = 528
    Top = 64
    object ListViewRenamePopup: TMenuItem
      Caption = 'Rename'
      OnClick = ListViewRenamePopupClick
    end
    object ListViewRenameOnAllDrivesPopup: TMenuItem
      Caption = 'Rename On All Drives'
      OnClick = ListViewRenameOnAllDrivesPopupClick
    end
    object ListViewArchivePopup: TMenuItem
      Caption = 'Archive'
      Visible = False
      OnClick = ListViewArchivePopupClick
    end
    object ListViewDeleteToRecycleBinPopup: TMenuItem
      Caption = 'Delete to Recycle Bin'
      OnClick = ListViewDeleteToRecycleBinPopupClick
    end
    object ListViewPermanentlyDeletePopup: TMenuItem
      Caption = 'Permanently Delete'
      OnClick = ListViewPermanentlyDeletePopupClick
    end
    object ListViewPropertiesPopup: TMenuItem
      Caption = 'Properties'
      OnClick = ListViewPropertiesPopupClick
    end
    object ListViewNewPopup: TMenuItem
      Caption = 'New'
      object ListViewNewFolderPopup: TMenuItem
        Caption = 'New Folder'
        OnClick = ListViewNewFolderPopupClick
      end
      object ListViewNewFilePopup: TMenuItem
        Caption = 'New File'
        OnClick = ListViewNewFilePopupClick
      end
    end
  end
  object TreeViewPopupMenu: TPopupMenu
    Left = 72
    Top = 272
    object TreeViewBackupToDirectoryOfSameNamePopup: TMenuItem
      Caption = 'Backup To Directory Of Same Name'
      Enabled = False
      OnClick = TreeViewBackupToDirectoryOfSameNamePopupClick
    end
    object TreeViewBackupAToZMenuItemPopup: TMenuItem
      Caption = 'Backup A-Z'
      OnClick = TreeViewBackupAToZMenuItemPopupClick
    end
    object TreeViewBackupAToMMenuItemPopup: TMenuItem
      Caption = 'Backup A-M'
      OnClick = TreeViewBackupAToMMenuItemPopupClick
    end
    object TreeViewBackupNToZMenuItemPopup: TMenuItem
      Caption = 'Backup N-Z'
      OnClick = TreeViewBackupNToZMenuItemPopupClick
    end
    object TreeViewRenamePopup: TMenuItem
      Caption = 'Rename'
      OnClick = TreeViewRenamePopupClick
    end
    object TreeViewDeleteToRecycleBinPopup: TMenuItem
      Caption = 'Delete To Recycle Bin'
      OnClick = TreeViewDeleteToRecycleBinPopupClick
    end
    object TreeViewPermanentlyDeletePopup: TMenuItem
      Caption = 'Permanently Delete'
      OnClick = TreeViewPermanentlyDeletePopupClick
    end
    object TreeViewNewFolderPopup: TMenuItem
      Caption = 'New Folder'
      OnClick = TreeViewNewFolderPopupClick
    end
  end
  object MainMenu: TMainMenu
    Left = 272
    Top = 64
    object MainMenuFile: TMenuItem
      Caption = 'File'
      OnClick = MainMenuFileClick
      object MainMenuFileNew: TMenuItem
        Caption = 'New'
        object MainMenuFileNewFile: TMenuItem
          Caption = 'File'
        end
        object MainMenuFileNewDirectory: TMenuItem
          Caption = 'Directory'
          OnClick = MainMenuFileNewDirectoryClick
        end
      end
      object MainMenuFileSeparator1: TMenuItem
        Caption = '-'
      end
      object MainMenuFileBackupAToZMenuItem: TMenuItem
        Caption = 'Backup A-Z'
        OnClick = MainMenuFileBackupAToZMenuItemClick
      end
      object MainMenuFileBackupAToMMenuItem: TMenuItem
        Caption = 'Backup A-M'
        OnClick = MainMenuFileBackupAToMMenuItemClick
      end
      object MainMenuFileBackupNToZMenuItem: TMenuItem
        Caption = 'Backup N-Z'
        OnClick = MainMenuFileBackupNToZMenuItemClick
      end
      object MainMenuFileSeparator2: TMenuItem
        Caption = '-'
      end
      object MainMenuFileClearBackupAToZDirectoryMenuItem: TMenuItem
        Caption = 'Clear Backup A-Z Directory'
        OnClick = MainMenuFileClearBackupAToZDirectoryMenuItemClick
      end
      object MainMenuFileClearBackupAToMDirectoryMenuItem: TMenuItem
        Caption = 'Clear Backup A-M Directory'
        OnClick = MainMenuFileClearBackupAToMDirectoryMenuItemClick
      end
      object MainMenuFileClearBackupNToZDirectoryMenuItem: TMenuItem
        Caption = 'Clear Backup N-Z Directory'
        OnClick = MainMenuFileClearBackupNToZDirectoryMenuItemClick
      end
      object MainMenuFileSeparator3: TMenuItem
        Caption = '-'
      end
      object MainMenuFileClearMove1DirectoryMenuItem: TMenuItem
        Caption = 'Clear Move 1 Directory'
        OnClick = MainMenuFileClearMove1DirectoryMenuItemClick
      end
      object MainMenuFileClearMove2DirectoryMenuItem: TMenuItem
        Caption = 'Clear Move 2 Directory'
        OnClick = MainMenuFileClearMove2DirectoryMenuItemClick
      end
      object MainMenuFileClearArchiveDirectoryMenuItem: TMenuItem
        Caption = 'Clear Archive Directory'
        OnClick = MainMenuFileClearArchiveDirectoryMenuItemClick
      end
      object MainMenuFileClearCompareFileSizeDirectoryMenuItem: TMenuItem
        Caption = 'Clear Compare File Size Directory'
        OnClick = MainMenuFileClearCompareFileSizeDirectoryMenuItemClick
      end
      object MainMenuFileSeparator4: TMenuItem
        Caption = '-'
      end
      object MainMenuFileClearImageViewDirectoryMenuItem: TMenuItem
        Caption = 'Clear ImageView Directory'
        OnClick = MainMenuFileClearImageViewDirectoryMenuItemClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object MainMenuFileSetUpSuffixes: TMenuItem
        Caption = 'Set Up Suffixes'
        OnClick = MainMenuFileSetUpSuffixesClick
      end
      object MainMenuFileResetCheckedDirectoriesList: TMenuItem
        Caption = 'Reset Checked Directories List'
        OnClick = MainMenuFileResetCheckedDirectoriesListClick
      end
      object MainMenuFileSeparator5: TMenuItem
        Caption = '-'
      end
      object MainMenuFileMarkDeletedFilesOnBackupDrives: TMenuItem
        Caption = 'Mark Deleted Files On Backup Drives '
        OnClick = MainMenuFileMarkDeletedFilesOnBackupDrivesClick
      end
      object MainMenuFileSeparator6: TMenuItem
        Caption = '-'
      end
      object TidyUpSnaps: TMenuItem
        Caption = 'Tidy Up Snaps'
        OnClick = TidyUpSnapsClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MainMenuFileExit: TMenuItem
        Caption = 'Exit'
        OnClick = MainMenuFileExitClick
      end
    end
    object MainMenuEdit: TMenuItem
      Caption = 'Edit'
      object MainMenuEditUndo: TMenuItem
        Caption = 'Undo'
        Enabled = False
        OnClick = MainMenuEditUndoClick
      end
    end
    object MainMenuView: TMenuItem
      Caption = 'View'
      object MainMenuViewRefresh: TMenuItem
        Caption = 'Refresh  F5'
        OnClick = MainMenuViewRefreshClick
      end
      object MainMenuViewShowAttributes: TMenuItem
        Caption = 'Show Attributes'
        OnClick = MainMenuViewShowAttributesClick
      end
      object MainMenuViewShowDirectories: TMenuItem
        Caption = 'Show Directories'
        OnClick = MainMenuViewShowDirectoriesClick
      end
    end
    object MainMenuHelp: TMenuItem
      Caption = 'Help'
      object MainMenuHelpAbout: TMenuItem
        Caption = 'About'
        OnClick = MainMenuHelpAboutClick
      end
    end
  end
  object Explorer5SecondTimer: TTimer
    Interval = 5000
    OnTimer = Explorer5SecondTimerTick
    Left = 400
    Top = 64
  end
  object Explorer500MillisecondTimer: TTimer
    Interval = 500
    Left = 664
    Top = 64
  end
  object HourGlassTimer: TTimer
    Enabled = False
    OnTimer = HourGlassTimerTimer
    Left = 784
    Top = 64
  end
  object FindDialog: TFindDialog
    OnFind = FindDialogFind
    Left = 656
    Top = 192
  end
end
