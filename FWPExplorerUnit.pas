UNIT FWPExplorerUnit;

{ to do -
}

INTERFACE

USES
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, StrUtils, Dialogs, ImgList, ComCtrls, CommCtrl, ShellApi, Registry, DateUtils, StdCtrls,
  Menus, ExtCtrls, { DragDrop, DropSource, DragDropFile, DropTarget,} System.UITypes, Vcl.Mask;

TYPE
  TExplorerForm = CLASS(TForm)
    ClearSnapsCheckBox: TCheckBox;
    CompareFileSizeCheckBox: TCheckBox;
    CompareFileSizeInDifferentDirectoryCheckBox: TCheckBox;
    CompareSnapImagesCheckBox: TCheckBox;
    CompareSnapImagesInDifferentDirectoryCheckBox: TCheckBox;
    ControlBar: TControlBar;
    ControlBarSnapsPanel: TPanel;
    CreateSnapsCheckBox: TCheckBox;
    Explorer500MillisecondTimer: TTimer;
    Explorer5SecondTimer: TTimer;
    ExplorerMemo: TMemo;
    FindDialog: TFindDialog;
    HourGlassTimer: TTimer;
    ListView: TListView;
    ListViewArchivePopup: TMenuItem;
    ListViewDeleteToRecycleBinPopup: TMenuItem;
    ListViewEditPanel: TPanel;
    ListViewFileNameEdit: TEdit;
    ListViewFileNameNumbersEdit: TEdit;
    ListViewImageList: TImageList;
    ListViewNewFilePopup: TMenuItem;
    ListViewNewFolderPopup: TMenuItem;
    ListViewNewPopup: TMenuItem;
    ListViewPermanentlyDeletePopup: TMenuItem;
    ListViewPopupMenu: TPopupMenu;
    ListViewPropertiesPopup: TMenuItem;
    ListViewRenameOnAllDrivesPopup: TMenuItem;
    ListViewRenamePopup: TMenuItem;
    MainMenu: TMainMenu;
    MainMenuEdit: TMenuItem;
    MainMenuEditUndo: TMenuItem;
    MainMenuFile: TMenuItem;
    MainMenuFileBackupAToMMenuItem: TMenuItem;
    MainMenuFileBackupAToZMenuItem: TMenuItem;
    MainMenuFileBackupNToZMenuItem: TMenuItem;
    MainMenuFileClearArchiveDirectoryMenuItem: TMenuItem;
    MainMenuFileClearBackupAToMDirectoryMenuItem: TMenuItem;
    MainMenuFileClearBackupAToZDirectoryMenuItem: TMenuItem;
    MainMenuFileClearBackupNToZDirectoryMenuItem: TMenuItem;
    MainMenuFileClearCompareFileSizeDirectoryMenuItem: TMenuItem;
    MainMenuFileClearMove1DirectoryMenuItem: TMenuItem;
    MainMenuFileClearMove2DirectoryMenuItem: TMenuItem;
    MainMenuFileDeleteOnAllDrives: TMenuItem;
    MainMenuFileExit: TMenuItem;
    MainMenuFileMarkDeletedFilesOnBackupDrives: TMenuItem;
    MainMenuFileNew: TMenuItem;
    MainMenuFileNewDirectory: TMenuItem;
    MainMenuFileNewFile: TMenuItem;
    MainMenuFileSeparator1: TMenuItem;
    MainMenuFileSeparator2: TMenuItem;
    MainMenuFileSeparator3: TMenuItem;
    MainMenuFileSeparator4: TMenuItem;
    MainMenuFileSeparator5: TMenuItem;
    MainMenuFileSeparator6: TMenuItem;
    MainMenuFileSetUpSuffixes: TMenuItem;
    MainMenuHelp: TMenuItem;
    MainMenuHelpAbout: TMenuItem;
    MainMenuView: TMenuItem;
    MainMenuViewRefresh: TMenuItem;
    MainMenuViewShowAttributes: TMenuItem;
    MainMenuViewShowDirectories: TMenuItem;
    N1: TMenuItem;
    ProgressBar: TProgressBar;
    SingleClickCheckBox: TCheckBox;
    Splitter: TSplitter;
    StopButton: TButton;
    TestCheckBox: TCheckBox;
    TidyUpSnaps: TMenuItem;
    TreeView: TTreeView;
    TreeViewBackupAToMMenuItemPopup: TMenuItem;
    TreeViewBackupAToZMenuItemPopup: TMenuItem;
    TreeViewBackupNToZMenuItemPopup: TMenuItem;
    TreeViewBackupToDirectoryOfSameNamePopup: TMenuItem;
    TreeViewDeleteToRecycleBinPopup: TMenuItem;
    TreeViewImageList: TImageList;
    TreeViewNewFolderPopup: TMenuItem;
    TreeViewPermanentlyDeletePopup: TMenuItem;
    TreeViewPopupMenu: TPopupMenu;
    TreeViewRenamePopup: TMenuItem;
    UserSetIncrement: TMaskEdit;
    PROCEDURE ClearSnapsCheckBoxClick(Sender: TObject);
    PROCEDURE CompareFileSizeCheckBoxClick(Sender : TObject);
    PROCEDURE CompareFileSizeInDifferentDirectoryCheckBoxClick(Sender: TObject);
    PROCEDURE CompareSnapImagesCheckBoxClick(Sender: TObject);
    PROCEDURE CompareSnapImagesInDifferentDirectoryCheckBoxClick(Sender: TObject);
    PROCEDURE CreateSnapsCheckBoxClick(Sender : TObject);
    PROCEDURE Explorer5SecondTimerTick(Sender : TObject);
    PROCEDURE ExplorerFormClose(Sender : TObject; VAR Action: TCloseAction);
    PROCEDURE ExplorerFormCreate(Sender : TObject);
    PROCEDURE ExplorerFormPaint(Sender: TObject);
    PROCEDURE FindDialogFind(Sender: TObject);
    PROCEDURE HourGlassTimerTimer(Sender: TObject);
    PROCEDURE ListViewAdvancedCustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage; VAR DefaultDraw: Boolean);
    PROCEDURE ListViewArchivePopupClick(Sender: TObject);
    PROCEDURE ListViewColumnClick(Sender : TObject; Column : TListColumn);
    PROCEDURE ListViewDeleteToRecycleBinPopupClick(Sender : TObject);
    PROCEDURE ListViewDoubleClick(Sender : TObject);
    PROCEDURE ListViewDragOver(Sender, Source : TObject; X, Y : Integer; State : TDragState; VAR Accept : Boolean);
    PROCEDURE ListViewEdited(Sender : TObject; Item : TListItem; VAR NewString : String);
    PROCEDURE ListViewEditing(Sender: TObject; Item: TListItem; VAR AllowEdit: Boolean);
    PROCEDURE ListViewFileNameEditEnter(Sender : TObject);
    PROCEDURE ListViewFileNameEditExit(Sender : TObject);
    PROCEDURE ListViewFileNameEditKeyDown(Sender : TObject; VAR Key : Word; ShiftState : TShiftState);
    PROCEDURE ListViewFileNameEditKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE ListViewFileNameNumbersEditEnter(Sender : TObject);
    PROCEDURE ListViewFileNameNumbersEditExit(Sender : TObject);
    PROCEDURE ListViewFileNameNumbersEditKeyDown(Sender : TObject; VAR Key : Word; ShiftState : TShiftState);
    PROCEDURE ListViewFileNameNumbersEditKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE ListViewKeyDown(Sender: TObject; VAR Key: Word; ShiftState: TShiftState);
    PROCEDURE ListViewKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE ListViewMouseDown(Sender : TObject; Button : TMouseButton; ShiftState : TShiftState; X, Y : Integer);
    PROCEDURE ListViewMouseLeave(Sender: TObject);
    PROCEDURE ListViewMouseMove(Sender : TObject; ShiftState : TShiftState; X, Y : Integer);
    PROCEDURE ListViewMouseUp(Sender: TObject; Button: TMouseButton; ShiftState: TShiftState; X, Y: Integer);
    PROCEDURE ListViewNewFilePopupClick(Sender : TObject);
    PROCEDURE ListViewNewFolderPopupClick(Sender : TObject);
    PROCEDURE ListViewPermanentlyDeletePopupClick(Sender : TObject);
    PROCEDURE ListViewPopupMenuPopup(Sender : TObject);
    PROCEDURE ListViewPropertiesPopupClick(Sender : TObject);
    PROCEDURE ListViewRenameOnAllDrivesPopupClick(Sender: TObject);
    PROCEDURE ListViewRenamePopupClick(Sender : TObject);
    PROCEDURE ListViewSelectItem(Sender : TObject; Item : TListItem; Selected : Boolean);
    PROCEDURE ListViewSingleClick(Sender : TObject);
    PROCEDURE MainMenuEditUndoClick(Sender : TObject);
    PROCEDURE MainMenuFileBackupAToMMenuItemClick(Sender: TObject);
    PROCEDURE MainMenuFileBackupAToZMenuItemClick(Sender: TObject);
    PROCEDURE MainMenuFileBackupNToZMenuItemClick(Sender: TObject);
    PROCEDURE MainMenuFileClearArchiveDirectoryMenuItemClick(Sender: TObject);
    PROCEDURE MainMenuFileClearBackupAToMDirectoryMenuItemClick(Sender: TObject);
    PROCEDURE MainMenuFileClearBackupAToZDirectoryMenuItemClick(Sender: TObject);
    PROCEDURE MainMenuFileClearBackupDriveAndPathPopupMenuItemClick(Sender: TObject);
    PROCEDURE MainMenuFileClearBackupNToZDirectoryMenuItemClick(Sender: TObject);
    PROCEDURE MainMenuFileClearCompareFileSizeDirectoryMenuItemClick(Sender: TObject);
    PROCEDURE MainMenuFileClearMove1DirectoryMenuItemClick(Sender: TObject);
    PROCEDURE MainMenuFileClearMove2DirectoryMenuItemClick(Sender: TObject);
    PROCEDURE MainMenuFileClick(Sender: TObject);
    PROCEDURE MainMenuFileDeleteOnAllDrivesClick(Sender: TObject);
    PROCEDURE MainMenuFileDrawItem(Sender: TObject; ACanvas: TCanvas; ARect: TRect; Selected: Boolean);
    PROCEDURE MainMenuFileExitClick(Sender: TObject);
    PROCEDURE MainMenuFileMarkDeletedFilesOnBackupDrivesClick(Sender: TObject);
    PROCEDURE MainMenuFileNewDirectoryClick(Sender: TObject);
    PROCEDURE MainMenuFileSetUpSuffixesClick(Sender: TObject);
    PROCEDURE MainMenuHelpAboutClick(Sender : TObject);
    PROCEDURE MainMenuViewRefreshClick(Sender : TObject);
    PROCEDURE MainMenuViewShowAttributesClick(Sender: TObject);
    PROCEDURE MainMenuViewShowDirectoriesClick(Sender: TObject);
    PROCEDURE SingleClickCheckBoxClick(Sender : TObject);
    PROCEDURE StopButtonClick(Sender: TObject);
    PROCEDURE TestCheckBoxClick(Sender: TObject);
    PROCEDURE TidyUpSnapsClick(Sender: TObject);
    PROCEDURE TreeViewBackupAToMMenuItemPopupClick(Sender: TObject);
    PROCEDURE TreeViewBackupAToZMenuItemPopupClick(Sender: TObject);
    PROCEDURE TreeViewBackupNToZMenuItemPopupClick(Sender: TObject);
    PROCEDURE TreeViewBackupToDirectoryOfSameNamePopupClick(Sender: TObject);
    PROCEDURE TreeViewClick(Sender : TObject);
    PROCEDURE TreeViewDeleteToRecycleBinPopupClick(Sender : TObject);
    PROCEDURE TreeViewDragDrop(Sender, Source : TObject; X, Y : Integer);
    PROCEDURE TreeViewDragOver(Sender, Source : TObject; X, Y : Integer; State : TDragState; VAR Accept: Boolean);
    PROCEDURE TreeViewEdited(Sender : TObject; Node : TTreeNode; VAR NewString : String);
    PROCEDURE TreeViewExpanding(Sender : TObject; Node: TTreeNode; VAR AllowExpansion: Boolean);
    PROCEDURE TreeViewKeyDown(Sender : TObject; VAR Key: Word; ShiftState: TShiftState);
    PROCEDURE TreeViewKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    PROCEDURE TreeViewMouseDown(Sender : TObject; Button : TMouseButton; ShiftState : TShiftState; X, Y : Integer);
    PROCEDURE TreeViewNewFolderPopupClick(Sender : TObject);
    PROCEDURE TreeViewPermanentlyDeletePopupClick(Sender : TObject);
    PROCEDURE TreeViewRenamePopupClick(Sender : TObject);
    PROCEDURE UserSetIncrementChange(Sender: TObject);

//    PROCEDURE DropFileSourceGetDragImage(Sender: TObject; CONST DragSourceHelper: IDragSourceHelper; VAR Handled: Boolean);
//    PROCEDURE DropFileTargetDrop(Sender: TObject; ShiftState: TShiftState; Point: TPoint; VAR Effect: Integer);

  PRIVATE
    { Private declarations }
    PROCEDURE RefreshView(Sender : TOBJECT);
    PROCEDURE WMEnterSizeMove(VAR Message : TMessage); MESSAGE WM_ENTERSIZEMOVE;
    PROCEDURE WMExitSizeMove(VAR Message : TMessage); MESSAGE WM_EXITSIZEMOVE;
  PUBLIC
    { Public declarations }
  END;

  FileType = (Text_File, VideoFile, ImageFile, DatabaseFile, UnspecifiedFileType);

PROCEDURE ArchiveFile(OUT OK : Boolean);
{ Archive a file to a given directory }

PROCEDURE CloseOutputFile(VAR OutputFile : Text; Filename : String);
{ Close an output file, capturing the error message if any }

PROCEDURE Debug(DebugStr : String);
{ Write an error message to a given file }

FUNCTION DeleteFilePermanently(TempFileName : String) : Boolean;
{ Delete a file without sending it to the Recycle Bin }

PROCEDURE ExecuteClick(FileName : String);
{ Deals with a mouse click }

PROCEDURE FileNameNumbersEditKeyPress(VAR Key: Char);
{ Only permits numeric key presses in the lower edit box }

FUNCTION FileRenameProc{2}(NewFileName : String) : Boolean; Overload;
{ Main routine for file renaming }

//FUNCTION FileTypeSuffixFound{1}(TempFileName : String) : Boolean; Overload;
//FUNCTION FileTypeSuffixFound{2}(TempFileName : String; OUT SuffixFoundStr : String) : Boolean; Overload;
//FUNCTION FileTypeSuffixFound{3}(TempFileName : String; OUT SuffixPos, SuffixLength : Integer) : Boolean; Overload;
FUNCTION FileTypeSuffixFound{4}(TempFileName : String; SuffixToFind : String; OUT SuffixPos, SuffixLength : Integer) : Boolean; Overload;
FUNCTION FileTypeSuffixFound{5}(TempFileName : String; OUT TypeOfFile : FileType) : Boolean; Overload;
//FUNCTION FileTypeSuffixFound{6}(TempFileName : String; OUT FileNameWithoutSuffix : String; OUT TypeOfFile : FileType) : Boolean; Overload;

FUNCTION GetFileNumberSuffixFromSnapFile(FileName : String; OUT NumberStr : String) : Boolean;
{ Return the number suffix (if any) found in an associated snap file }

PROCEDURE InitialiseSelectedFileVariables;
{ Initalisation }

FUNCTION IsDirectory(Attr : Integer) : Boolean;
{ Return whether a given attribute indicates a directory }

FUNCTION IsDirectoryEmpty(CONST Directory : String) : Boolean;
{ Returns whether a given directory is empty }

FUNCTION IsProgramRunning(ProgramName : String) : Boolean; External 'ListFilesDLLProject.dll'
{ Checks to see if a given program is running }

PROCEDURE ListFiles{1}; Overload;
{ List all the files in the ListView }

PROCEDURE ListFiles{2}(ForceListingFlag : Boolean);  Overload;
{ List all the files in the ListView  - force the listing to be done from scratch if ForceListing is true }

PROCEDURE ListViewColumnSort(Column : Integer; OUT CaptionStr : String);
{ Sort the list view by the given column }

PROCEDURE MakeSound;
{ Just goes beep, but enables a breakpoint to be set to catch beeps! }

PROCEDURE MoveFile(DirectoryNum : Integer; OUT OK : Boolean);
{ Move a file to one of two directories }

PROCEDURE OpenListViewEditPanel;
{ Opens an edit panel for file renaming }

FUNCTION OpenOutputFileOK(VAR OutputFilename : Text; Filename : String; OUT ErrorMsg : String; AppendToFile : Boolean) : Boolean;
{ Open (and create if necessary) a file }

PROCEDURE RemoveNumbersAndDeletes(SuppliedFileName : String; OUT FileNameWithOutNumbers, NumberStr : String);
{ Returns the filename minus any trailing numbers, and the numbers themselves. Also removes the letter "d" which indicates the file is to be deleted in due course. }

FUNCTION SnapsFileNumberRename(FileName, NewNumberStr : String) : Boolean;
{ Main routine for snaps file renaming }

PROCEDURE StartDebug;
{ Erase the debug file ready for more data  }

TYPE
  SelectedFile_Type = RECORD
                        SelectedFile_Name : String;
                        SelectedFile_NameWithoutNumbers : String;

                        SelectedFile_IsImageFile : Boolean;
                        SelectedFile_IsTextFile : Boolean;
                        SelectedFile_IsVideoFile : Boolean;

                        SelectedFile_HHSTR : String;
                        SelectedFile_MMSTR : String;
                        SelectedFile_SSSTR : String;

                        SelectedFile_LastMoveFrom : String;
                        SelectedFile_LastMoveTo : String;
                        SelectedFile_LastRenameFrom : String;
                        SelectedFile_LastRenameTo : String;
                        SelectedFile_NumberStr : String;
                        SelectedFile_SnapFileName : String;
                      END;

  DirectoryOrFileType = (DirectoryType, NotDirectoryType);
  SortOrder = (Ascending, Descending);

CONST
  DateColumn = 2;
  FileNameColumn = 0;
  SizeColumn = 1;
  TypeColumn = 3;
  LastAccessColumn = 4;

  DoBackupNow = True;
  ForceListing = True;

VAR
  ExplorerForm : TExplorerForm;

  Abort : Boolean = False;
  ArchiveDirectory : String = '';
  AttrColumnPos : Integer;
  BackupAToZDirectory : String = '';
  BackupAToMDirectory : String = '';
  BackupDriveAndPath : String = '';
  BackupNToZDirectory : String = '';
  CanRestoreCursorPos : Boolean = True;
  ClearKeyInKeyPress : Boolean = False;
  ColumnIndex : Integer = 0;
  ColumnSortOrder : ARRAY [0..4] OF SortOrder = (Ascending, Ascending, Ascending, Ascending, Ascending);
  CompareAsterisksColumnPos : Integer;
  CompareFileNameColumnPos : Integer;
  CompareFileSize : Boolean = False;
  CompareFileSizeInDifferentDirectory : Boolean = False;
  ComparePathAndFileNameColumnPos : Integer;
  ComparePathNameColumnPos : Integer;
  CompareSnapImages : Boolean = False;
  CompareSnapImagesInDifferentDirectory : Boolean = False;
  ControlBarHidden : Boolean = False;
  DateColumnPos : Integer;
  DirectoryNameForCompareFileSizeInDifferentDirectory : String = '';
  DisplayAttributes : Boolean = False;
  DeleteKeyTrappedByListView : Boolean = True;
  DirectoriesChecked : String = '';
  Editing : Boolean = False;
  F2Editing : Boolean = False;
  FileDeleted : Boolean = False;
  FileDeleteOnAllDrivesMode : Boolean = False;
  FileMoved : Boolean = False;
  FileRenamed : Boolean = False;
  FileTypeColumnPos : Integer;
  FirstTimeListFilesCalled : Boolean = True;
  FSortColumn: Integer;
  FSortForward: Boolean;
  FullFileSizeColumnPos : Integer;
  FullScreen : Boolean = False;
  FWPMode : Boolean = False;
  HourGlassTimerTicks : Integer = 0;
  IconList : TStringList;
  IdleState : Boolean = True;
  LastAccessTimeColumnPos : Integer;
  LastSelectedFilename : String;
  LastSelectedItemIndex : Integer;
  ListViewPathName : String = '';
  MaxMode : Boolean = True;
  MoveDirectory1 : String = '';
  MoveDirectory2 : String = '';
  NextFileName : String;
  OldAlphaNumericMode : Boolean = False;
  PreviousSortColumn : Integer = 0;
  SaveDrivesList : String = '';
  SaveListViewPathName : String = '';
  SaveListViewX : Integer;
  SaveListViewY : Integer;
  SaveCaption : String = '';
  SaveColumn2Width : Integer;
  SaveColumn3Width : Integer;
  SaveMousePos : TPoint = (X: 0; Y: 0);
  SaveFilesList : String = '';
  SaveFoldersList : String = '';
  SaveListViewColumnSortNumber : Integer = -1;
  SecondTimeListFilesCalled : Boolean = False;
  SelectedFileRec : SelectedFile_Type;
  ShowAttributesMode : Boolean = False;
  ShowDirectoriesMode : Boolean = False;
  ShowExplorerCaption : Boolean = false; //True;
  SingleClickDetected : Boolean = False;
  SingleClickMode : Boolean = False;
  SetUpSuffixesMode : Boolean = False;
  ShortFileSizeColumnPos :     Integer;
  TestMode : Boolean = False;
  TextFilesOnlyMode : Boolean = False;
  TotalFileCount : Integer = 0;
  TreeViewDirectory : String = '';
  TreeViewPathAndDirectory : String = '';
  UndoFromArray : ARRAY OF String;
  UndoToArray : ARRAY OF String;
  UpdateTreeView : Boolean = False;
  UserIncrement : integer = 20;
  VideoFileCount : Integer = 0;
  VideoFilesOnlyMode : Boolean = False;
  VLC : Boolean = False;
  ZoomPlayer : Boolean = False;

IMPLEMENTATION

{$R *.dfm}
{$WARN UNIT_PLATFORM OFF}
{$WARN SYMBOL_PLATFORM OFF}

USES
  TypInfo, Math, IOUtils, Types, ShellCtrls, TLHelp32, ActiveX, ZoomPlayerUnit, Character, SnapsCompare;

TYPE
  TCustomSortStyle = (cssAlphaNum, cssNumeric, cssDateTime, cssRealNumericAlphaNum);

CONST
  DirectoriesSectionStr = 'Directories';
  FormAlignmentSectionstr = 'Form Alignment';
  OptionsSectionStr = 'Options';
  ListViewsectionStr = 'ListView';

  ShowAttributesModeStr = 'Show Attributes in ListView';
  ShowDirectoriesModeStr = 'Show Directories in ListView';
  SingleClickModeStr = 'Single Click';
  SetUpSuffixesModeStr = 'Suffix Setup';
  TestModeStr = 'TestMode';
  TextFilesModeStr = 'Text Files';
  UserIncrementStr = 'User Increment';
  VideoFilesModeStr = 'Video Files';

  ArchiveDirectoryStr = 'Archive Directory';
  BackupDriveAndPathStr = 'Backup Drive';
  BackupAToMDirectoryStr = 'Backup A-M Directory';
  BackupAToZDirectoryStr = 'Backup Directory';
  BackupNToZDirectoryStr = 'Backup N-Z Directory';
  DirectoryNameForCompareFileSizeInDifferentDirectoryStr = 'Directory For Check File Size In Different Directory';
  MoveDirectory1Str = 'Move Directory 1';
  MoveDirectory2Str = 'Move Directory 2';

  ExplorerFormTopStr = 'Explorer Form Top';
  ExplorerFormLeftStr = 'Explorer Form Left';
  ExplorerFormWidthStr = 'Explorer Form Width';
  ExplorerFormHeightStr = 'Explorer Form Height';

  ListViewColumn0WidthStr = 'Column 0 Width';
  ListViewColumn1WidthStr = 'Column 1 Width';
  ListViewColumn2WidthStr = 'Column 2 Width';
  ListViewColumn3WidthStr = 'Column 3 Width';
  ListViewColumn4WidthStr = 'Column 4 Width';
  ListViewColumn5WidthStr = 'Column 5 Width';
  ListViewColumn6WidthStr = 'Column 6 Width';
  ListViewColumn7WidthStr = 'Column 7 Width';
  ListViewColumn8WidthStr = 'Column 8 Width';
  ListViewColumn9WidthStr = 'Column 9 Width';
  ListViewColumn10WidthStr = 'Column 10 Width';

  Column0 = 0;
  Column1 = 1;
  Column2 = 2;
  Column3 = 3;
  Column4 = 4;
  Column5 = 5;
  Column6 = 6;
  Column7 = 7;
  Column8 = 8;
  Column9 = 9;
  Column10 = 10;

VAR
  TestCounter : Integer = 0;

  DefaultExplorerFormHeight : Integer = 1145;
  DefaultExplorerFormLeft : Integer = 817;
  DefaultExplorerFormTop : Integer = 3;
  DefaultExplorerFormWidth : Integer = 772;

  DefaultListViewColumn0Width : Integer = 500;
  DefaultListViewColumn1Width : Integer = 64;
  DefaultListViewColumn2Width : Integer = 160;
  DefaultListViewColumn3Width : Integer = 130;
  DefaultListViewColumn4Width : Integer = 64;
  DefaultListViewColumn5Width : Integer = 50;
  DefaultListViewColumn6Width : Integer = 50;
  DefaultListViewColumn7Width : Integer = 50;
  DefaultListViewColumn8Width : Integer = 50;
  DefaultListViewColumn9Width : Integer = 50;
  DefaultListViewColumn10Width : Integer = 50;

  DefaultButtonsFormTop : Integer = 0;
  DefaultButtonsFormLeft : Integer = 0;
  DefaultButtonsFormWidth : Integer = 0;
  DefaultButtonsFormHeight : Integer = 0;

  DefaultShowAttributesMode : Boolean = False;
  DefaultShowDirectoriesMode : Boolean = False;
  DefaultSingleClickMode: Boolean = False;
  DefaultSetUpSuffixesMode : Boolean = False;
  DefaultTestMode : Boolean = False;
  DefaultTextFilesMode : Boolean = False;
  DefaultUserIncrement : Integer = 20;
  DefaultVideoFilesMode : Boolean = False;

  ListViewColumn0Width : Integer;
  ListViewColumn1Width : Integer;
  ListViewColumn2Width : Integer;
  ListViewColumn3Width : Integer;
  ListViewColumn4Width : Integer;
  ListViewColumn5Width : Integer;
  ListViewColumn6Width : Integer;

  SaveItemFoundNum : Integer = 0;

  { Variable to hold the sort style }
  ListViewSortStyle : TCustomSortStyle;
  { Array to hold the sort order }
  ListViewSortOrder : ARRAY[0..5] OF Boolean; // High[ListViewSortOrder] = Number of ListView Columns

  CurrentNode : TTreeNode;
  SaveNode : TTreeNode;

FUNCTION ImageList_ReplaceIcon(ImageList: THandle; Index: Integer; Icon: hIcon): Integer; STDCALL; EXTERNAL 'comctl32.dll' Name 'ImageList_ReplaceIcon';

PROCEDURE StartDebug;
{ Erase the debug file ready for more data  }
BEGIN
  DeleteFile('c:\test\testoutput.txt');
END; { StartDebug }

PROCEDURE Debug(DebugStr : String);
{ Write an error message to a given file }
CONST
  Append = True;

//VAR
//  TestOutputFile : Text;
//  TestoutputfileName : String;

BEGIN
//  TestOutputFileName := 'c:\temp\testoutput.txt';
//  OpenOutputFileOK(TestOutputFile, TestOutputFileName, ErrorMsg, Append);
//  WriteLn(TestOutPutFile, DebugStr);
//  CloseOutputFile(TestOutputFile, TestOutputFileName);
END; { Debug }

FUNCTION IOError(Filename : String; SaveIOResult : Integer; OUT ErrorMsg : String) : Boolean;
{ Returns the IO error message }
BEGIN
  IF SaveIOResult = 0 THEN BEGIN
    Result := False;
    ErrorMsg := '';
  END ELSE BEGIN
    Result := True;
    CASE SaveIOResult OF
      2:
        ErrorMsg := 'File: ' + Filename + ' not found';
      3:
        ErrorMsg := 'Path not found';
      5:
        ErrorMsg := 'File access denied - file ' + Filename + ' is a directory, or is read-only';
      13:
        ErrorMsg := 'Permission denied';
      20:
        ErrorMsg := 'is not a directory';
      21:
        ErrorMsg := 'is a directory';
      32:
        ErrorMsg := 'Sharing violation';
      100:
        ErrorMsg := 'Disk read error';
      101:
        ErrorMsg := 'Disk write error - is disk full?';
      102:
        ErrorMsg := 'File not assigned';
      103:
        ErrorMsg := 'File not open';
      104:
        ErrorMsg := 'File not open for input';
      105:
        ErrorMsg := 'File not open for output';
    ELSE
      ErrorMsg := 'I/O Error no.' + IntToStr(SaveIOResult);
    END; { CASE}
  END;
END; { IOError }

PROCEDURE MakeSound;
{ Just goes beep, but enables a breakpoint to be set to catch beeps! }
BEGIN
  Beep;
END; { MakeSound }

{$O-}
FUNCTION OpenOutputFileOK(VAR OutputFilename : Text; Filename : String; OUT ErrorMsg : String; AppendToFile : Boolean) : Boolean;
{ Open (and create if necessary) a file }
BEGIN
  Result := False;

  TRY
    { If file exists, append to it, else create it }
    {$I-}
    AssignFile(OutputFilename, Filename);
    IF AppendToFile THEN BEGIN
      Append(OutputFilename);
      {$I+}
      IF NOT IOError(Filename, IOResult, ErrorMsg) THEN
        Result := True;
    END;

    IF NOT AppendToFile OR (Result = False) THEN BEGIN
      {$I-}
      Rewrite(OutputFileName);
      {$I+}
      Result := NOT IOError(Filename, IOResult, ErrorMsg);
    END;

    IF Result = False THEN
     ShowMessage('Warning! Unable to open file "' + Filename + '" for writing: ' + ErrorMsg);
  EXCEPT
    ON E : Exception DO
      ShowMessage('OpenOutputFileOK: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { OpenOutputFileOK }

PROCEDURE CloseOutputFile(VAR OutputFile : Text; Filename : String);
{ Close an output file, capturing the error message if any }
VAR
  ErrorMsg : String;

BEGIN
  TRY
    {$I-}
    CloseFile(OutputFile);
    {$I+}
    IF IOError(Filename, IOResult, ErrorMsg) THEN
      ShowMessage('Error in closing file ' + Filename + ': ' + ErrorMsg);
  EXCEPT
    ON E : Exception DO
      ShowMessage('CloseOutputFile: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { CloseOutputFile }

PROCEDURE TakeSnapWithVLC(PathName, FileName, FileNameWithoutNumbers, StartTimeInSecondsStr, StopTimeInSecondsStr : String; OUT TimedOut : Boolean);
{ Press the camera shutter }
VAR
  ShellStr : WideString;
  ShellStrPtr : PWideChar;
  StartTimer : Cardinal;
  TickCount : Cardinal;

BEGIN
  TRY
    StartTimer := GetTickCount();
    TimedOut := False;

    ShellStr := '"' + PathName + FileName + '"'
                + ' --qt-start-minimized'
                + ' --rate=1 --video-filter=scene'
                + ' --vout=dummy'
                + ' --aout=dummy'
                + ' --start-time=' + StartTimeInSecondsStr
                + ' --stop-time=' + StopTimeInSecondsStr
                + ' --scene-format=jpg'
                + ' --scene-ratio=25'
                + ' --scene-prefix="' + FileNameWithoutNumbers + '"'
                + ' --scene-replace'
                + ' --scene-path="' + PathName + 'Snaps" vlc://quit';
    ShellStrPtr := Addr(ShellStr[1]);

    REPEAT
      { This stops many multiple instances of vlc.exe running simultaneously }
      Application.ProcessMessages;
    UNTIL IsProgramRunning('VLC') = False;

    ShellExecute(Application.Handle,
                 'open',
                 '"C:\Program Files (x86)\VideoLAN\VLC\vlc.exe"',
                 ShellStrPtr,
                 nil,
                 SW_SHOWNORMAL);

    REPEAT
      { This provides a time out }
      TickCount := (GetTickCount - StartTimer);
      IF TickCount > (60000) THEN
        TimedOut := True;
      Application.ProcessMessages;
    UNTIL (IsProgramRunning('VLC') = False) OR TimedOut;
  EXCEPT
    ON E : Exception DO
      ShowMessage('TakeSnapWithVLC: ' + E.ClassName +' error raised, with message: ' + E.Message + ' for snap of "' + FileName + '"');
  END; {TRY}
END; { TakeSnapWithVLC }

PROCEDURE SetUpSuffixes;
{ Change .mp4s to .mpgs and add a dot between suffix and trailing number if necessary }
CONST
  Digits = ['0'..'9'];

VAR
  Done : Boolean;
  I : Integer;
  SearchRec :TSearchRec;
  SuffixLength : Integer;
  SuffixPos : Integer;

BEGIN
  TRY
    SetCurrentDir(ListViewPathname);

    IF FindFirst(ListViewPathName + '*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
      REPEAT
        { If SearchRec = . OR .. then skip to next iteration }
//        IF (SearchRec.Name =  '.') OR (SearchRec.Name =  '..') OR DirectoryExists(SearchRec.Name) THEN
        IF (SearchRec.Name =  '.') OR (SearchRec.Name =  '..') OR IsDirectory(SearchRec.Attr) THEN
          Continue;

        IF FileTypeSuffixFound(SearchRec.Name, '.mp4', SuffixPos, SuffixLength) THEN BEGIN
          { Change any mp4s to mpgs }
          IF RenameFile(SearchRec.Name, Copy(SearchRec.Name, 1, SuffixPos) + 'mpg' + Copy(SearchRec.Name, SuffixPos + 4)) THEN
            { also change SearchRec.Name as it's being looked at in the second test below }
            SearchRec.Name := Copy(SearchRec.Name, 1, SuffixPos) + 'mpg' + Copy(SearchRec.Name, SuffixPos + 4)
          ELSE
            ShowMessage('Rename of ' + SearchRec.Name + ' failed - ' + SysErrorMessage(GetLastError));
        END;

        { Add a dot between suffix and number }
        I := Length(SearchRec.Name);
        Done := False;
        { check to see if the file name ends in a number }
        IF CharInSet(SearchRec.Name[Length(SearchRec.Name)], Digits) THEN BEGIN
          WHILE (I > 0) AND NOT Done DO BEGIN
            IF NOT CharInSet(SearchRec.Name[I], Digits) THEN BEGIN
              Done := True;
              IF SearchRec.Name[I] <> '.' THEN BEGIN
                { there's a missing dot }
                IF NOT RenameFile(SearchRec.Name, Copy(SearchRec.Name, 1, I) + '.' + Copy(SearchRec.Name, I + 1)) THEN
                  ShowMessage('Rename of ' + SearchRec.Name + ' failed - ' + SysErrorMessage(GetLastError));
              END;
            END;
            Dec(I);
          END; {WHILE}
        END;

      { Loop until no more files are found }
      UNTIL FindNext(SearchRec) <> 0;
    END;
  EXCEPT
    ON E : Exception DO
      ShowMessage('SetUpSuffixes: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { SetUpSuffixes }

FUNCTION FileTypeSuffixFoundMainProc(TempFileName : String; OUT FileNameWithoutSuffix : String; SuffixToFind : String; OUT SuffixFoundStr : String;
                                     OUT SuffixPos, SuffixLength : Integer; OUT TypeOfFile : FileType) : Boolean;

  FUNCTION GetPos(Str : String; TempTypeOfFile : FileType) : Boolean;
  BEGIN
    SuffixLength := Length(Str);
    SuffixPos := Pos(UpperCase(Str), UpperCase(TempFileName));
    IF SuffixPos = 0 THEN BEGIN
      Result := False;
      SuffixFoundStr := '';
      FileNameWithoutSuffix := TempFileName;
    END ELSE
//      IF Pos('.DB', UpperCase(TempFileName)) > 0 THEN BEGIN
//        { exclude files with .db wherever it appears in a filename }
//        Result := True;
//        FileNameWithoutSuffix := Copy(TempFileName, 1, SuffixPos - 1);
//        TypeOfFile := TempTypeOfFile;
//        SuffixFoundStr := '';
//        SuffixPos := 0;
//      END ELSE
      BEGIN
        Result := True;
        SuffixFoundStr := Str;
        TypeOfFile := TempTypeOfFile;
        FileNameWithoutSuffix := Copy(TempFileName, 1, SuffixPos - 1);
      END;
  END; { GetPos }

BEGIN
  IF SuffixToFind <> '' THEN
    GetPos(SuffixToFind, UnspecifiedFileType)
  ELSE BEGIN
    { the image files are deliberately first in this list, as snaps are in the format .avi.jpg and otherwise are not identified as image files }
    IF NOT GetPos('.jpg', ImageFile) THEN
      IF NOT GetPos('.jpeg', ImageFile) THEN
        IF NOT GetPos('.gif', ImageFile) THEN
          IF NOT GetPos('.pcx', ImageFile) THEN
            IF NOT GetPos('.gif', ImageFile) THEN
              IF NOT GetPos('.png', ImageFile) THEN
                IF NOT GetPos('.bmp', ImageFile) THEN
                  IF NOT GetPos('.tif', ImageFile) THEN
                    IF NOT GetPos('.txt', Text_File) THEN
                      IF NOT GetPos('.3gp', VideoFile) THEN
                        IF NOT GetPos('.asf', VideoFile) THEN
                          IF NOT GetPos('.avi', VideoFile)  THEN
                            IF NOT GetPos('.divx', VideoFile) THEN
                              IF NOT GetPos('.flv', VideoFile) THEN
                                IF NOT GetPos('.mlv', VideoFile) THEN
                                  IF NOT GetPos('.mp4', VideoFile) THEN
                                    IF NOT GetPos('.mpeg', VideoFile) THEN
                                      IF NOT GetPos('.mpg', VideoFile) THEN
                                        IF NOT GetPos('.ram', VideoFile) THEN
                                          IF NOT GetPos('.rm', VideoFile) THEN
                                            IF NOT GetPos('.m1v', VideoFile) THEN
                                              IF NOT GetPos('.m4v', VideoFile) THEN
                                                IF NOT GetPos('.vlc', VideoFile) THEN
                                                    IF NOT GetPos('.wmv', VideoFile) THEN
                                                        GetPos('.db', DatabaseFile);
  END;

  IF SuffixPos = 0 THEN
    Result := False
  ELSE
    Result := True;
END; { FileTypeSuffixFound }

FUNCTION FileTypeSuffixFound{1}(TempFileName : String) : Boolean; Overload;
VAR
  FileNameWithoutSuffix : String;
  SuffixPos : Integer;
  SuffixLength : Integer;
  SuffixFoundStr : String;
  TypeOfFile : FileType;

BEGIN
  SuffixFoundStr := '';
  IF FileTypeSuffixFoundMainProc(TempFileName, FileNameWithoutSuffix, '', SuffixFoundStr, SuffixPos, SuffixLength, TypeOfFile) THEN
    Result := True
  ELSE
    Result := False;
END; { FileTypeSuffixFound-1 }

FUNCTION FileTypeSuffixFound{2}(TempFileName : String; OUT SuffixFoundStr : String) : Boolean; Overload;
VAR
  FileNameWithoutSuffix : String;
  SuffixPos : Integer;
  SuffixLength : Integer;
  TypeOfFile : FileType;

BEGIN
  SuffixFoundStr := '';
  IF FileTypeSuffixFoundMainProc(TempFileName, FileNameWithoutSuffix, '', SuffixFoundStr, SuffixPos, SuffixLength, TypeOfFile) THEN
    Result := True
  ELSE
    Result := False;
END; { FileTypeSuffixFound-2 }

FUNCTION FileTypeSuffixFound{3}(TempFileName : String; OUT SuffixPos, SuffixLength : Integer) : Boolean; Overload;
VAR
  FileNameWithoutSuffix : String;
  SuffixFoundStr : String;
  TypeOfFile : FileType;

BEGIN
  IF FileTypeSuffixFoundMainProc(TempFileName, FileNameWithoutSuffix, '', SuffixFoundStr, SuffixPos, SuffixLength, TypeOfFile) THEN
    Result := True
  ELSE
    Result := False;
END; { FileTypeSuffixFound-3 }

FUNCTION FileTypeSuffixFound{4}(TempFileName : String; SuffixToFind : String; OUT SuffixPos, SuffixLength : Integer) : Boolean; Overload;
VAR
  FileNameWithoutSuffix : String;
  SuffixFoundStr : String;
  TypeOfFile : FileType;

BEGIN
  IF FileTypeSuffixFoundMainProc(TempFileName, FileNameWithoutSuffix, SuffixToFind, SuffixFoundStr, SuffixPos, SuffixLength, TypeOfFile) THEN
    Result := True
  ELSE
    Result := False;
END; { FileTypeSuffixFound-4 }

FUNCTION FileTypeSuffixFound{5}(TempFileName : String; OUT TypeOfFile : FileType) : Boolean; Overload;
VAR
  FileNameWithoutSuffix : String;
  SuffixPos : Integer;
  SuffixLength : Integer;
  SuffixFoundStr : String;

BEGIN
  IF FileTypeSuffixFoundMainProc(TempFileName, FileNameWithoutSuffix, '', SuffixFoundStr, SuffixPos, SuffixLength, TypeOfFile) THEN
    Result := True
  ELSE
    Result := False;
END; { FileTypeSuffixFound-5 }

FUNCTION FileTypeSuffixFound{6}(TempFileName : String; OUT FileNameWithoutSuffix : String; OUT TypeOfFile : FileType) : Boolean; Overload;
VAR
  SuffixPos : Integer;
  SuffixLength : Integer;
  SuffixFoundStr : String;

BEGIN
  IF FileTypeSuffixFoundMainProc(TempFileName, FileNameWithoutSuffix, '', SuffixFoundStr, SuffixPos, SuffixLength, TypeOfFile) THEN
    Result := True
  ELSE
    Result := False;
END; { FileTypeSuffixFound-6 }

PROCEDURE GetHHMMSS(TempFileName, NumberStr : String; OUT HHStr, MMStr, SSStr : String; OUT IsTextFile, IsImageFile, IsVideoFile : Boolean; OUT OK : Boolean);
VAR
  TypeOfFile : FileType;

BEGIN
  TRY
    WITH SelectedFileRec DO BEGIN
      HHStr := '00';
      MMStr := '00';
      SSStr := '00';
      IsImageFile := False;
      IsTextFile := False;
      IsVideoFile := False;

      IF NOT FileTypeSuffixFound(TempFileName, TypeOfFile) THEN
        OK := False
      ELSE
        IF TypeOfFile = Text_File THEN
          IsTextFile := True
        ELSE
          IF TypeOfFile = ImageFile THEN
            IsImageFile := True
          ELSE
            IF TypeOfFile = VideoFile THEN BEGIN
              IsVideoFile := True;

              IF Pos('vlc', LowerCase(TempFileName)) > 0 THEN BEGIN
                VLC := True;
                ZoomPlayer := False;
              END ELSE BEGIN
                ZoomPlayer := True;
                VLC := False;
              END;

              OK := True;

              IF Pos('.mp4', LowerCase(TempFileName)) <> 0 THEN
                NumberStr := ''
              ELSE BEGIN
                IF Length(NumberStr) = 6 THEN BEGIN
                  { must be HH MM SS }
                  HHStr := Copy(NumberStr, 1, 2);
                  MMStr := Copy(NumberStr, 3, 2);
                  SSStr := Copy(NumberStr, 5, 2);
                END ELSE
                  IF Length(NumberStr) = 5 THEN BEGIN
                    { must be H MM SS }
                    HHStr := '0' + Copy(NumberStr, 1, 1);
                    MMStr := Copy(NumberStr, 2, 2);
                    SSStr := Copy(NumberStr, 4, 2);
                  END ELSE
                    IF Length(NumberStr) = 4 THEN BEGIN
                      { must be MM SS }
                      HHStr := '00';
                      MMStr := Copy(NumberStr, 1, 2);
                      SSStr := Copy(NumberStr, 3, 2);
                    END ELSE
                      IF Length(NumberStr) = 3 THEN BEGIN
                        { could be MM SS but if it starts with a "1" it is more likely to be HH MM }
                        IF Copy(NumberStr, 1, 1) = '1' THEN BEGIN
                          HHStr := '0' + Copy(NumberStr, 1, 1);
                          MMStr := Copy(NumberStr, 2, 2);
                          SSStr := '00';
                        END ELSE BEGIN
                          HHStr := '00';
                          MMStr := '0' + Copy(NumberStr, 1, 1);
                          SSStr := Copy(NumberStr, 2, 2);
                        END;
                      END ELSE
                        IF Length(NumberStr) = 2 THEN BEGIN
                          { can only be MM }
                          HHStr := '00';
                          MMStr := NumberStr;
                          SSStr := '00';
                        END ELSE
                          IF Length(NumberStr) = 1 THEN BEGIN
                            { can only be M }
                            HHStr := '00';
                            MMStr := '0' + NumberStr;
                            SSStr := '00';
                          END;
            END;

            IF (HHStr > '12') OR (MMStr > '59') THEN BEGIN
              ShowMessage('Invalid time - ' + HHStr + ' :' + MMStr);
              HHStr := '00';
              MMStr := '00'
            END;
          END;

    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('GetHHMMSS: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { GetHHMMSS }

PROCEDURE PrepareFiles(TempFileName : String);
VAR
  HH : Word;
  Minutes : Word;
  MM : Word;
  MSS : Word;
  OK : Boolean;
  ShellStr : WideString;
  ShellStrPtr : PWideChar;
  SS : Word;
  StartTime : TDateTime;

BEGIN
  TRY
    WITH SelectedFileRec DO BEGIN
      IF SelectedFile_IsTextFile THEN BEGIN
        IF NOT IsProgramRunning('epsilon') THEN
          ShellStr := '"' + ListViewPathName + TempFileName + '" '
        ELSE
          ShellStr := ' -add -rkill-current-buffer' + ' "' + ListViewPathName + TempFileName + '" ';

        ShellStrPtr := Addr(ShellStr[1]);

        ShellExecute(ExplorerForm.ListView.Handle,
                     'open',
                     '"C :\Program Files (x86)\Eps13\bin\epsilon.exe"',
                     ShellStrPtr,
                     nil,
                     SW_SHOWNORMAL);
      END ELSE
        IF SelectedFile_IsImageFile THEN BEGIN
          ShellStr := '"' + ListViewPathName + TempFileName + '" '
                      + ' /one /bf /resample';

          ShellStrPtr := Addr(ShellStr[1]);

          ShellExecute(ExplorerForm.ListView.Handle,
                       'open',
                       '"C :\Program Files (x86)\IrfanView\i_view32.exe"',
                       ShellStrPtr,
                       nil,
                       SW_SHOWNORMAL);
        END ELSE BEGIN
          StartTime := EncodeTime(StrToInt(SelectedFile_HHStr), StrToInt(SelectedFile_MMStr), StrToInt(SelectedFile_SSStr), 0);
          DecodeTime(StartTime, HH, MM, SS, MSS);
          IF ZoomPlayer THEN BEGIN
            ShellStr := '/seek:' + SelectedFile_HHStr + ':' + SelectedFile_MMStr + ':' + SelectedFile_SSStr + ' "' + ListViewPathName + TempFileName + '" '
                        + IfThen(MaxMode, '/Max') + ' /MouseOff';

            ShellStrPtr := Addr(ShellStr[1]);

            ShellExecute(ExplorerForm.ListView.Handle,
                         'open',
                         '"C:\Program Files (x86)\Zoom Player\zplayer.exe"',
                         ShellStrPtr,
                         nil,
                         SW_SHOWNORMAL);
            OK := True;

            REPEAT
              { This needs a timeout, as do the other ProcessMessages **** }
              Application.ProcessMessages;
            UNTIL IsProgramRunning('zplayer.exe');

            ZoomPlayerUnitForm.CreateZoomPlayerTCPClient(OK);
          END ELSE
            IF VLC THEN BEGIN
              Minutes := (HH * 60) + (MM * 60);
              ShellStr := '"' + ListViewPathName + TempFileName + '"'
                          + ' --start-time=' + IntToStr(Minutes)
                          + ' --no-video-title-show'
                          + IfThen(MaxMode, ' -f -vvv');

              ShellStrPtr := Addr(ShellStr[1]);

              ShellExecute(ExplorerForm.ListView.Handle,
                           'open',
                           '"C:\Program Files (x86)\VideoLAN\VLC\vlc.exe"',
                           ShellStrPtr,
                           nil,
                           SW_SHOWNORMAL);

              { Open the edit panel when VLC stops }
              REPEAT
                Application.ProcessMessages;
              UNTIL IsProgramRunning('VLC') = False;
            END;
        END;
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('PrepareFiles: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { PrepareFiles }

PROCEDURE RemoveNumbersAndDeletes(SuppliedFileName : String; OUT FileNameWithOutNumbers, NumberStr : String);
{ Returns the filename minus any trailing numbers, and the numbers themselves. Also removes the letter "d" which indicates the file is to be deleted in due course. }

  PROCEDURE FindNumberSuffix(TempSuppliedFileName : String; OUT TempFileNameWithOutNumbers : String; OUT TempNumberStr : String);
  VAR
    Done : Boolean;
    I : Integer;

  BEGIN
    { Step back through the file name }
    I := Length(TempSuppliedFileName);
    Done := False;
    TempNumberStr := '';
    WHILE (I > 0) AND NOT Done DO BEGIN
      IF TempSuppliedFileName[I].IsLetter
      OR TempSuppliedFileName[I].IsPunctuation
      OR TempSuppliedFileName[I].IsWhiteSpace
      OR TempSuppliedFileName[I].IsSymbol
      THEN
        Done := True
      ELSE BEGIN
        TempNumberStr := TempSuppliedFileName[I] + TempNumberStr;
        Dec(I);
      END;
    END; {WHILE}

    IF TempSuppliedFileName[I] = '.' THEN
      TempFileNameWithOutNumbers := Copy(TempSuppliedFileName, 1, I - 1)
    ELSE
      TempFileNameWithOutNumbers := Copy(TempSuppliedFileName, 1, I);
  END; { FindNumberSuffix }

BEGIN
  TRY
    { First see if there's a trailing ".d" }
    IF (Length(SuppliedFileName) > 2)
    AND ((Copy(SuppliedFileName, Length(SuppliedFileName) - 1, 2) = '.d')
         OR (Copy(SuppliedFileName, Length(SuppliedFileName) - 1, 2) = ' d'))
    THEN
      SuppliedFileName := Copy(SuppliedFileName, 1, Length(SuppliedFileName) - 2);

    FindNumberSuffix(SuppliedFileName, FileNameWithOutNumbers, NumberStr);
  EXCEPT
    ON E : Exception DO
      ShowMessage('RemoveNumbersAndDeletes: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { RemoveNumbersAndDeletes }

PROCEDURE CreateSnaps(ListViewPathName : String; ListView : TListView; OUT OK : Boolean);
VAR
  CreationUndertaken : Boolean;
  EligibleFiles : Integer;
  FileNameWithoutNumbers : String;
  HH : Integer;
  HHStr : String;
  IsTextFile : Boolean;
  IsImageFile : Boolean;
  IsVideoFile : Boolean;
  MM : Integer;
  MMStr : String;
  NumberStr :String;
  SaveSnapsDirectory : String;
  SnapsProcessedCount : Integer;
  SearchRec : TSearchRec;
  SS : Integer;
  SSStr : String;
  StartTimeInSecondsStr : String;
  StopTimeInSecondsStr : String;
  TimedOut : Boolean;
  TimedOutStr : String;
  TotalTimeInSecondsStr : String;
  TypeOfFile : FileType;

BEGIN
  TRY
    CreationUndertaken := False;
    TimedOutStr := '';

    WITH SelectedFileRec DO BEGIN
      EligibleFiles := 0;
      SnapsProcessedCount := 0;
      OK := False;

      { Count the number of eligible files to show in the debug output }
      IF FindFirst(ListViewPathName + '*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
        REPEAT
          IF (SearchRec.Name =  '.') OR (SearchRec.Name =  '..') OR IsDirectory(SearchRec.Attr) THEN
            Continue
          ELSE BEGIN
            IF FileTypeSuffixFound(SearchRec.Name) THEN BEGIN
              IF FileTypeSuffixFound(SearchRec.Name, TypeOfFile)
              AND (TypeOfFile = VideoFile)
              AND (FileSearch(SearchRec.Name + '.jpg', ListViewPathName + 'Snaps') = '')
              AND (Pos('.lnk', SearchRec.Name) = 0)
              THEN
                Inc(EligibleFiles);
            END;
          END;
        UNTIL FindNext(SearchRec) <> 0;
      END;

      { Save the directory we're working on, as a change of directory here causes us to start looking for snaps in the new directory while still in the repeat loop }
      SaveSnapsDirectory := ListViewPathName;

      { Now create the snaps }
      IF FindFirst(SaveSnapsDirectory + '*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
        REPEAT
          IF (SearchRec.Name =  '.') OR (SearchRec.Name =  '..') OR IsDirectory(SearchRec.Attr) THEN
            Continue
          ELSE BEGIN
            IF (FileTypeSuffixFound(SearchRec.Name, TypeOfFile) AND (TypeOfFile = VideoFile))
            AND (Pos('.lnk', SearchRec.Name) = 0)
            AND (Pos('.db', SearchRec.Name) = 0)
            THEN BEGIN
              OK := True;
              RemoveNumbersAndDeletes(SearchRec.Name, FileNameWithoutNumbers, NumberStr);
              GetHHMMSS(SearchRec.Name, NumberStr, HHStr, MMStr, SSStr, IsTextFile, IsImageFile, IsVideoFile, OK);

              HH := StrToInt(HHStr);
              MM := StrToInt(MMStr);
              SS := StrToInt(SSStr);

              TotalTimeInSecondsStr := IntToStr((HH * 60 * 60) + (MM * 60) + SS);

              StartTimeInSecondsStr := '2';
              StopTimeInSecondsStr := '2.2';

              { Only create directory if there's anything to put in it }
              IF NOT DirectoryExists(SaveSnapsDirectory + 'Snaps') THEN BEGIN
                IF NOT CreateDir(SaveSnapsDirectory + 'Snaps') THEN BEGIN
                  ShowMessage('Cannot create a Snaps directory');
                  Exit;
                END;
              END;

              { See if the file already exists, in which case no point in creating it again }
              IF FileSearch(FileNameWithoutNumbers + '.jpg', SaveSnapsDirectory + 'Snaps') = '' THEN BEGIN
                Inc(SnapsProcessedCount);

                ExplorerForm.Caption := 'Creating ' + IntToStr(SnapsProcessedCount) + '/' + IntToStr(EligibleFiles) + ': ' + SaveSnapsDirectory + FileNameWithoutNumbers;

                TakeSnapWithVLC(SaveSnapsDirectory, SearchRec.Name, FileNameWithoutNumbers, StartTimeInSecondsStr, StopTimeInSecondsStr, TimedOut);
                IF TimedOut THEN
                  TimedOutStr := TimedOutStr + SearchRec.Name + ' ';

                CreationUndertaken := True;
              END;
            END;
          END;
        UNTIL FindNext(SearchRec) <> 0;
      END;

      IF CreationUndertaken THEN BEGIN
        ExplorerForm.Caption := SaveSnapsDirectory + ' : snaps creation completed';
        IF TimedOutStr <> '' THEN
          ExplorerForm.Caption := ExplorerForm.Caption + ' : failures: ' + TimedOutStr;

        ListView.SetFocus;
      END ELSE
        IF DirectoryExists(SaveSnapsDirectory + 'Snaps') AND NOT IsDirectoryEmpty(SaveSnapsDirectory + 'Snaps') THEN
          ExplorerForm.Caption := SaveSnapsDirectory + ' No snaps files updated'
        ELSE
          ExplorerForm.Caption := SaveSnapsDirectory + ' No snaps files created';
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('CreateSnaps: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { CreateSnaps }

FUNCTION GetBuildInfo(VAR V1, V2, V3, V4: Word; AFileName: String = ''): Boolean;
{ This procedure returns the individual Major/Minor/Release/Build values of the version information }
VAR
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;

BEGIN
  Result := True;

  TRY
    IF AFileName = '' THEN
      AFileName := ParamStr(0);
    VerInfoSize := GetFileVersionInfoSize(PChar(AFileName), Dummy);
    IF VerInfoSize = 0 THEN BEGIN
      Result := False;
      Exit;
    END;
    GetMem(VerInfo, VerInfoSize);
    TRY
      GetFileVersionInfo(PChar(AFileName), 0, VerInfoSize, VerInfo);
      VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);

      WITH VerValue^ DO BEGIN
        V1 := dwFileVersionMS SHR 16;
        V2 := dwFileVersionMS AND $FFFF;
        V3 := dwFileVersionLS SHR 16;
        V4 := dwFileVersionLS AND $FFFF;
      END; {WITH}
    FINALLY
      FreeMem(VerInfo, VerInfoSize);
    END; {TRY}
  EXCEPT
    ON E : Exception DO
      ShowMessage('GetBuildInfo: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { GetBuildInfo }

FUNCTION GetVersionInfoAsString : String;
{ Return the program's version number }
VAR
  V1: Word;
  V2: Word;
  V3: Word;
  V4: Word;

BEGIN
  IF GetBuildInfo(V1, V2, V3, V4) THEN
    Result := Format('%d.%d.%d', [V1, V2, V3])
  ELSE
    Result := '';
END; { GetVersionInfoAsString }

FUNCTION GetBuildInfoAsString : String;
{ Return the program's build number - this is auto incremented on each build }
VAR
  V1: Word;
  V2: Word;
  V3: Word;
  V4: Word;

BEGIN
  IF GetBuildInfo(V1, V2, V3, V4) THEN
    Result := Format('%d', [V4])
  ELSE
    Result := '';
END; { GetBuildInfoAsString }

FUNCTION GetDirectory(VAR TempDirectory : String) : Boolean;
{ Return whether a directory exists or if one's been created on the hoof }
BEGIN
  Result := False;

  IF TempDirectory <> '' THEN BEGIN
    IF DirectoryExists(TempDirectory) THEN
      Result := True;
  END ELSE BEGIN
    IF InputQuery('Directory', 'Enter Directory Name', TempDirectory) THEN
      IF TempDirectory = '' THEN
        ShowMessage('No directory specified');
  END;

  IF Result = False THEN BEGIN
    IF DirectoryExists(TempDirectory) THEN
      Result := True
    ELSE BEGIN
      IF TempDirectory <> '' THEN BEGIN
        CASE MessageDlg('Directory "' + TempDirectory + '" does not exist: create it?', mtConfirmation, [mbYes, mbNo], 0, mbNo) OF
          mrYes:
            BEGIN
              IF CreateDir(TempDirectory) THEN BEGIN
                ListFiles;
                Result := True;
              END ELSE BEGIN
                ShowMessage('Directory cannot be created');
                TempDirectory := '';
              END;
            END;
          mrNo:
            BEGIN
              ShowMessage('Directory not created');
              TempDirectory := '';
            END;
        END; {CASE}
      END;
    END;
  END;
END; { GetDirectory }

PROCEDURE SetUpBackupAToZMenuItems(CreatingBackup : Boolean); Forward

PROCEDURE SetUpBackupAToMMenuItems(CreatingBackup : Boolean); Forward;

PROCEDURE SetUpBackupNToZMenuItems(CreatingBackup : Boolean); Forward;

PROCEDURE DrawExplorerFormCaption;
BEGIN
  ExplorerForm.Caption := TreeViewPathAndDirectory + ' [' + IntToStr(TotalFileCount) + ' files, ' + IntToStr(VideoFileCount) + ' video files]';
END; { DrawExplorerFormCaption }

PROCEDURE AddDrives;
{ Add drives to the tree }
VAR
  CDrives : ARRAY[0..128] OF Char;
  Icon : TIcon;
  PDrive : PChar;
  shInfo : TSHFileInfo;
  TreeNode : TTreeNode;

BEGIN
  TRY
    SaveDrivesList := '';

    { If we can't get any drives exit the procedure }
    IF GetLogicalDriveStrings(SizeOf(CDrives), CDrives) = 0 THEN
      Exit;

    { Start treeview update }
    ExplorerForm.TreeView.Items.BeginUpdate;
    { Set pointer to char array }
    PDrive := CDrives;
    { Create icon / allocate memory }
    Icon := TIcon.Create;
    { Loop until end of string / char array }
    WHILE PDrive^ <> #0 DO BEGIN
      { Add item to treeview }
      TreeNode := ExplorerForm.TreeView.Items.Add(NIL, PDrive);
      SaveDrivesList := SaveDrivesList + PDrive;

      { Get icon for drive }
      SHGetFileInfo(pChar(pDrive), 0, shInfo, SizeOf(shInfo), SHGFI_ICON OR SHGFI_SMALLICON OR SHGFI_SYSICONINDEX);
      { Set icon handle to SHGetFileInfo icon handle }
      Icon.Handle := shInfo.hIcon;
      { Let tree node image index to icon and add to image list }
      TreeNode.ImageIndex := ExplorerForm.TreeViewImageList.AddIcon(Icon);
      { Set same image index to the selected image }
      TreeNode.SelectedIndex := TreeNode.ImageIndex;
      { Increment pointer to character array by 4 }
      Inc(PDrive, 4);
    END;
    { Free icon memory }
    Icon.Free;
    { End update to treeview }
    ExplorerForm.TreeView.Items.EndUpdate;

    { and tell the system to redraw the treeview }
    UpdateTreeView := True;
  EXCEPT
    ON E : Exception DO
      ShowMessage('AddDrives: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { AddDrives }

FUNCTION GetNodeByText(AValue : String; AVisible : Boolean): TTreeNode;
VAR
  Node: TTreeNode;

BEGIN
  Result := NIL;

  TRY
    WITH ExplorerForm DO BEGIN
      IF TreeView.Items.Count = 0 THEN
        Exit;

      Node := TreeView.Items[0];
      WHILE Node <> NIL DO BEGIN
        IF UpperCase(Node.Text) = UpperCase(AValue) THEN BEGIN
          Result := Node;
          IF AVisible THEN
            Result.MakeVisible;
          Break;
        END;
        Node := Node.GetNext;
      END;
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('GetNodeByText: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { GetNodeByText }

PROCEDURE ExpandPath(Path : String);
{ This is never called }
VAR
  I : Integer;
  Node : TTreeNode;
  NodeStr : String;
  PreviousNode : TTreeNode;

BEGIN
  TRY
    ExplorerForm.TreeView.Items.BeginUpdate;

    I := 1;
    PreviousNode := NIL;

    WHILE I <= Length(Path) DO BEGIN
      IF (Pos('\', Path[I]) > 0) OR (I = Length(Path)) THEN BEGIN
        NodeStr := Copy(Path, 1, I);

        { remove any "\"s, except for the root }
        IF Pos(':\', NodeStr) = 0 THEN
          NodeStr := ReplaceStr(NodeStr, '\', '');

        Node := GetNodeByText(NodeStr, True);
        IF Assigned(Node) THEN BEGIN
          IF Assigned(PreviousNode) THEN BEGIN
            IF Node.Parent = PreviousNode THEN BEGIN
              ExplorerForm.Caption := ExplorerForm.Caption + ' - ' + Node.Text;
              Node.Expand(False);
            END;
          END;
        END;

        IF I < Length(Path) THEN BEGIN
          Path := Copy(Path, I + 1);
          I := 0;
        END;

        IF Assigned(Node) THEN
          PreviousNode := Node;
      END;

      Inc(I);
    END; {WHILE}
    ExplorerForm.TreeView.Items.EndUpdate;
  EXCEPT
    ON E : Exception DO
      ShowMessage('ExpandPath: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ExpandPath }

FUNCTION TraceNodePath(Node : TTreeNode; DirName : String): String;
BEGIN
  TRY
    { If selected node has parent and is valid continue }
    WHILE Node.Parent <> NIL DO BEGIN
      { Loop through node's parent until no more nodes are left }
      Result := ExcludeTrailingPathDelimiter(Node.Parent.Text) + '\' + Result;
      Node := Node.Parent;
    END;
    Result := Result + ExcludeTrailingPathDelimiter(Dirname) +'\';
    { Update status bar with directory path }
  //   ExplorerForm.StatusBar.SimpleText := Result;
  EXCEPT
    ON E : Exception DO
      ShowMessage('TraceNodePath: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { TraceNodePath }

FUNCTION GetPathFromNode(Node : TTreeNode) : String;
{ Get a path string based on where we are in the tree }
BEGIN
  TRY
    IF Node = NIL THEN
      Result := ''
    ELSE
      Result := Node.Text;

    IF Node <> NIL THEN BEGIN
      WHILE Node.Level > 0 DO BEGIN
        Node := Node.Parent;
        IF Node <> NIL THEN BEGIN
          IF Node.Level = 0 THEN
            Result := Node.Text + Result
          ELSE
            Result := Node.Text + '\' + Result;
        END;
      END;
    END;
  EXCEPT
    ON E : Exception DO
      ShowMessage('GetPathFromNode: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { GetPathFromNode }

FUNCTION IsDirectory(Attr : Integer) : Boolean;
{ Return whether a given attribute indicates a directory }
TYPE
  TFileAttr = RECORD
    szAttrName : String;
    iAttr : Integer;
  END; {RECORD}

CONST
  AttrFileAttr: ARRAY[0..9] OF TFileAttr = (
      (szAttrName: 'r'; iAttr: FILE_ATTRIBUTE_READONLY),
      (szAttrName: 'h'; iAttr: FILE_ATTRIBUTE_HIDDEN),
      (szAttrName: 's'; iAttr: FILE_ATTRIBUTE_SYSTEM),
      (szAttrName: 'd'; iAttr: FILE_ATTRIBUTE_DIRECTORY),
      (szAttrName: 'a'; iAttr: FILE_ATTRIBUTE_ARCHIVE),
      (szAttrName: 't'; iAttr: FILE_ATTRIBUTE_TEMPORARY),
      (szAttrName: 'p'; iAttr: FILE_ATTRIBUTE_SPARSE_FILE),
      (szAttrName: 'l'; iAttr: FILE_ATTRIBUTE_REPARSE_POINT),
      (szAttrName: 'c'; iAttr: FILE_ATTRIBUTE_COMPRESSED),
      (szAttrName: 'e'; iAttr: FILE_ATTRIBUTE_ENCRYPTED)
      );
VAR
  I :Integer;

BEGIN
  { Set Result to an empty String }
  Result := False;

  TRY
    I := 3; { FILE_ATTRIBUTE_DIRECTORY }
    { Check Attribute of file in question by using 'and' bit operation with our file attribute structure }
    IF Attr AND AttrFileAttr[I].iAttr = AttrFileAttr[I].iAttr THEN
      Result := True;
  EXCEPT
    ON E : Exception DO
      ShowMessage('IsDirectory: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { IsDirectory }

FUNCTION FormatFileSize(CONST eBytes: Int64): String;
{ Format file size from bytes to a more user friendly version similar to windows explorer #.## refers to 1 place and 2 decimal places
  after the whole number
}
CONST
  Kb  = 1024;

BEGIN
  Result := FormatFloat('###,### KB', ebytes / KB);
  IF Result = ' KB' THEN
    Result := '1 KB';
END; { FormatFileSize }

FUNCTION FormatAttr(Attr :Integer) : String;
{ Preset our file attributes and char refering to them }
TYPE
  TFileAttr = RECORD
    szAttrName : String;
    iAttr : Integer;
  END; {RECORD}

CONST
  ArrTFileAttr: ARRAY[0..9] OF TFileAttr = (
      (szAttrName: 'R'; iAttr: FILE_ATTRIBUTE_READONLY),
      (szAttrName: 'H'; iAttr: FILE_ATTRIBUTE_HIDDEN),
      (szAttrName: 'S'; iAttr: FILE_ATTRIBUTE_SYSTEM),
      (szAttrName: 'D'; iAttr: FILE_ATTRIBUTE_DIRECTORY),
      (szAttrName: 'A'; iAttr: FILE_ATTRIBUTE_ARCHIVE),
      (szAttrName: 'T'; iAttr: FILE_ATTRIBUTE_TEMPORARY),
      (szAttrName: 'P'; iAttr: FILE_ATTRIBUTE_SPARSE_FILE),
      (szAttrName: 'L'; iAttr: FILE_ATTRIBUTE_REPARSE_POINT),
      (szAttrName: 'C'; iAttr: FILE_ATTRIBUTE_COMPRESSED),
      (szAttrName: 'E'; iAttr: FILE_ATTRIBUTE_ENCRYPTED)
      );
VAR
  I : Integer;

BEGIN
  { Set Result to an empty String }
  Result := '';
  { From lowest value[0] to highest value[9] of ArrTFileAttr }
  FOR I := Low(ArrTFileAttr) TO High(ArrTFileAttr) DO BEGIN
    { This is to allow changes to attribute list with minimal code editing }

    {Check Attribute of file in question by using 'and' bit operation with our file attribute structure}
    IF Attr AND ArrTFileAttr[I].iAttr = ArrTFileAttr[I].iAttr THEN
      Result :=  Result + ' ' + ArrTFileAttr[I].szAttrName;
  END;
END; { FormatFileSize }

FUNCTION CustomSortProc(Item1, Item2: TListItem; SortColumn: Integer): Integer; STDCALL;
{ FWP added }
VAR
  Bool1, Bool2: Boolean;
  DateTime1, DateTime2: TDateTime;
  Int1, Int2: Integer;
  Str1, Str2: String;

  FUNCTION IsValidNumber(AString : String; VAR AInteger : Integer): Boolean;
  VAR
    Code: Integer;

  BEGIN
    Val(AString, AInteger, Code);
    Result := (Code = 0);
  END; { IsValidNumber }

  FUNCTION IsValidDate(AString : String; VAR ADateTime : TDateTime): Boolean;
  BEGIN
    Result := True;
    TRY
      ADateTime := StrToDateTime(AString);
    EXCEPT
      ADateTime := 0;
      Result := False;
    END;
  END; { IsValidDate }

  FUNCTION CompareDates(dt1, dt2: TDateTime): Integer;
  BEGIN
    IF (dt1 > dt2) THEN
      Result := 1
    ELSE
      IF (dt1 = dt2) THEN
        Result := 0
      ELSE
        Result := -1;
  END; { CompareDates }

  FUNCTION CompareNumeric(AInt1, AInt2: Integer): Integer;
  BEGIN
    IF AInt1 > AInt2 THEN
      Result := 1
    ELSE
      IF AInt1 = AInt2 THEN
        Result := 0
      ELSE
        Result := -1;
  END; { CompareNumeric }

  FUNCTION CompareNewAlphaNumericStr(S1, S2: String): Integer;
  VAR
    Part1, Part2: String;
    Pos1, Pos2: Integer;

  CONST
    Digits = ['0'..'9'];

    PROCEDURE FillPart(Source: String; VAR Pos: Integer; VAR Dest: String);
    VAR
      IsNum: Boolean;
      DP: Integer;

    BEGIN
      TRY
        IF Pos > Length(Source) THEN
          Dest := ''
        ELSE BEGIN
          IsNum := CharInSet(Source[Pos], Digits);
          DP := 0;
          WHILE (Pos+DP <= Length(Source)) AND (CharInSet(Source[Pos+DP], Digits) = IsNum) DO
            Inc(DP);
          Dest := Copy(Source, Pos, DP);
          Pos := Pos + DP;
        END;
      EXCEPT
        ON E : Exception DO
          ShowMessage('FillPart: ' + E.ClassName +' error raised, with message: ' + E.Message);
      END;
    END; { FillPart }

    FUNCTION NumComp(N1, N2: Int64): Integer;
    BEGIN
      TRY
        IF N1 < N2 THEN
          Result := -1
        ELSE
          IF N1 > N2 THEN
            Result := 1
          ELSE
            Result := 0;
      EXCEPT
        ON E : Exception DO BEGIN
          ShowMessage('NumComp: ' + E.ClassName +' error raised, with message: ' + E.Message);
          Result := 0;
        END;
      END;
    END; { NumComp }

  BEGIN
    TRY
      IF (S1 = '') OR (S2 = '') OR (CharInSet(S1[1], Digits) XOR (CharInSet(S2[1], Digits))) THEN
        Result := CompareText(S1, S2)
      ELSE BEGIN
        Pos1 := 1;
        Pos2 := 1;
        Result := 0;
        REPEAT
          FillPart(S1, Pos1, Part1);
          FillPart(S2, Pos2, Part2);
          IF Part1 = '' THEN BEGIN
            IF Part2 <> '' THEN
              Result := -1;
          END ELSE
            IF Part2 = '' THEN
              Result := 1
            ELSE
              IF CharInSet(Part1[1], Digits) AND (Length(Part1) < 20) AND (Length(Part2) < 20) THEN
                { the second and third tests are to avoid filenames consisting of more than twenty digits causing an Int64 exception }
                Result := NumComp(StrToInt64(Part1), StrToInt64(Part2))
              ELSE
                Result := CompareText(Part1, Part2);
        UNTIL (Result <> 0) OR ((Part1 = '') AND (Part2 = ''));
      END;
    EXCEPT
      ON E : Exception DO BEGIN
        ShowMessage('CompareNewAlphaNumericStr: ' + E.ClassName +' error raised, with message: ' + E.Message);
        Result := 0;
      END;
    END; {TRY}
  END; { CompareNewAlphaNumericStr }

BEGIN
  Result := 0;

  TRY
    IF (Item1 = NIL) OR (Item2 = NIL) THEN
      Exit;

    CASE SortColumn of
      -1 :
        { Compare Captions }
        BEGIN
          Str1 := Item1.Caption;
          Str2 := Item2.Caption;
        END;
      ELSE
        { Compare Subitems }
        BEGIN
          Str1 := '';
          Str2 := '';
          { Check Range }
          IF (SortColumn < Item1.SubItems.Count) THEN
            Str1 := Item1.SubItems[SortColumn];
          IF (SortColumn < Item2.SubItems.Count) THEN
            Str2 := Item2.SubItems[SortColumn]
        END;
    END; {CASE}

    { Sort styles }
    CASE ListViewSortStyle OF
      cssAlphaNum:
        Result := lstrcmp(PChar(Str1), PChar(Str2));

      cssRealNumericAlphaNum:
        Result := CompareNewAlphaNumericStr(Str1, Str2);

      cssNumeric:
        BEGIN
          { remove commas and 'KB' first then trim blank spaces - FWP }
          Str1 := ReplaceText(Str1, 'KB', '');
          Str1 := ReplaceText(Str1, ',', '');
          Str1 := Trim(Str1);
          Bool1 := IsValidNumber(Str1, Int1);

          Str2 := ReplaceText(Str2, 'KB', '');
          Str2 := ReplaceText(Str2, ',', '');
          Bool2 := IsValidNumber(Str2, Int2);
          Str2 := Trim(Str2);
          Result := Ord(Bool1 OR Bool2);
          IF Result <> 0 THEN
            Result := CompareNumeric(Int2, Int1);
        END;

      cssDateTime:
        BEGIN
          Bool1 := IsValidDate(Str1, DateTime1);
          Bool2 := IsValidDate(Str2, DateTime2);
          Result := ord(Bool1 OR Bool2);
          IF Result <> 0 THEN
            Result := -CompareDates(DateTime1, DateTime2);
        END;
    END; {CASE}

    { Sort direction }
    CASE ColumnIndex OF
      FileNameColumn:
        IF ColumnSortOrder[FileNameColumn] = Descending THEN
          Result := -Result;
      SizeColumn:
        IF ColumnSortOrder[SizeColumn] = Descending THEN
          Result := -Result;
      DateColumn:
        IF ColumnSortOrder[DateColumn] = Descending THEN
          Result := -Result;
      TypeColumn:
        IF ColumnSortOrder[TypeColumn] = Descending THEN
          Result := -Result;
      LastAccessColumn:
        IF ColumnSortOrder[LastAccessColumn] = Descending THEN
          Result := -Result;
    END; {CASE}
  EXCEPT
    ON E : Exception DO
      ShowMessage('CustomSortProc: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { CustomSortProc }

FUNCTION IsDirectoryEmpty(CONST Directory : String) : Boolean;
{ Returns whether a given directory is empty }
VAR
  SearchRec :TSearchRec;

BEGIN
  TRY
    Result := (FindFirst(Directory + '\*.*', faAnyFile, SearchRec) = 0) AND (FindNext(SearchRec) = 0) AND (FindNext(SearchRec) <> 0);
  FINALLY
    FindClose(SearchRec) ;
  END;
END; { IsDirectoryEmpty }

FUNCTION GetFileNumberSuffixFromSnapFile(FileName : String; OUT NumberStr : String) : Boolean;
{ Return the suffix (if any) found in an associated snap file }
VAR
  LastDotPos : Integer;
  SearchRec : TSearchRec;
  TempInt : Integer;

BEGIN
  Result := False;

  IF FindFirst(ListViewPathName + 'Snaps\' + FileName + '*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
    { Find the last dot - if there are numbers after it, then we want to copy them }
    LastDotPos := LastDelimiter('.', SearchRec.Name);
    NumberStr := Copy(SearchRec.Name, LastDotPos + 1);
    IF NOT TryStrToInt(NumberStr, TempInt) THEN
      NumberStr := '';

    Result := True;
  END;
END; { GetFileNumberSuffixFromSnapFile }

PROCEDURE ListFilesMainProc(ForceListingFlag : Boolean);
{ List all the files in the ListView }
CONST
  Digits = ['0'..'9'];
  FirstColumn = 0;

VAR
  AddedNode : TTreeNode;
  ListFilesIcon : TIcon;
  I : Integer;
  IFileSize : Int64;
  ListItem : TListItem;
  NumberStr : String;
  SaveCursor : TCursor;
  SearchRec, SearchRec1, SearchRec2 : TSearchRec;
  SHFileInfo : TSHFileInfo;
  SuffixStr : String;
  TempFilesList : String;
  TypeOfFile : FileType;

  function FileTime2DateTime(FileTime: TFileTime) : TDateTime;
  var
     LocalFileTime: TFileTime;
     SystemTime: TSystemTime;
  begin
     FileTimeToLocalFileTime(FileTime, LocalFileTime) ;
     FileTimeToSystemTime(LocalFileTime, SystemTime) ;
     Result := SystemTimeToDateTime(SystemTime) ;
  end;

BEGIN { ListFiles }
  TRY
    TRY
      WITH ExplorerForm DO BEGIN
        IF NOT ForceListingFlag THEN BEGIN
          { see if any files have changed }
          IF TreeView.Selected <> NIL THEN BEGIN
            ListViewPathName := TraceNodePath(TreeView.Selected, TreeView.Selected.Text);

            IF FindFirst(ListViewPathName + '*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
              REPEAT
                IF (SearchRec.Name = '.') OR (SearchRec.Name = '..') THEN
                  Continue
                ELSE
                  IF NOT IsDirectory(SearchRec.Attr) THEN
                    TempFilesList := TempFilesList + SearchRec.Name;

              { loop until no more files are found }
              UNTIL FindNext(SearchRec) <> 0;
            END;
            IF TempFilesList = SaveFilesList THEN
              Exit;
          END;
        END;

        TotalFileCount := 0;
        VideoFileCount := 0;

        SaveCursor := Screen.Cursor;
        Screen.Cursor := crHourGlass;
        HourGlassTimer.Enabled := False;
        Application.ProcessMessages;

        SaveItemFoundNum := 0;

        IF UpdateTreeView THEN
          TreeView.Items.BeginUpdate;
        ListView.Items.BeginUpdate;

        { Create icon / allocate memory }
        ListFilesIcon := TIcon.Create;
        { Clear image list }
        ListViewImageList.Clear;
        { Clear ListView }
        ListView.Items.Clear;

        { Start update on tree view }
        IF UpdateTreeView THEN
          TreeView.Items.BeginUpdate;
        { Start update on list view }
        ListView.Items.BeginUpdate;
        { Stops errors From removable storage }
        SetErrorMode($8007);

        IF TreeView.Selected <> NIL THEN BEGIN
          { Remove all children }
          IF UpdateTreeView THEN
            TreeView.Selected.DeleteChildren;

          ListViewPathName := TraceNodePath(TreeView.Selected, TreeView.Selected.Text);

          IF Pos(ListViewPathName, DirectoriesChecked) = 0 THEN BEGIN
            IF SetUpSuffixesMode THEN
              SetUpSuffixes;

            DirectoriesChecked := DirectoriesChecked + ' ' + ListViewPathName;
          END;

          IF Pos('Snaps', ListViewPathName) > 0 THEN BEGIN
            ClearSnapsCheckBox.Enabled := False;

            CreateSnapsCheckBox.Enabled := False;
            CreateSnapsCheckBox.Caption := 'Create';
          END ELSE BEGIN
            CreateSnapsCheckBox.Enabled := True;

            IF NOT DirectoryExists(ListViewPathName + 'Snaps') OR IsDirectoryEmpty(ListViewPathName + 'Snaps') THEN BEGIN
              CreateSnapsCheckBox.Caption := 'Create';
              CreateSnapsCheckBox.Enabled := True;
            END ELSE BEGIN
              CreateSnapsCheckBox.Caption := 'Update';
              ClearSnapsCheckBox.Enabled := True;
            END;
          END;

          SaveFilesList := '';

          IF UpdateTreeView THEN
            SaveFoldersList := '';

          { Start a file search using a wildcare *.* }
          IF FindFirst(ListViewPathName + '*.*', FaAnyFile, SearchRec1) = 0 THEN BEGIN
            REPEAT
              { If SearchRec1 = . OR .. then skip to next iteration }
              IF (SearchRec1.Name = '.') OR (SearchRec1.Name = '..') THEN
                Continue;

              IF NOT IsDirectory(SearchRec1.Attr) THEN
                SaveFilesList := SaveFilesList + SearchRec1.Name
              ELSE
                IF UpdateTreeView THEN
                  SaveFoldersList := SaveFoldersList + SearchRec1.Name;

              IF VideoFilesOnlyMode THEN
                IF NOT IsDirectory(SearchRec1.Attr)
                AND (NOT FileTypeSuffixFound(SearchRec1.Name, TypeOfFile)
                     OR (FileTypeSuffixFound(SearchRec1.Name, TypeOfFile) AND (TypeOfFile <> VideoFile)))
                THEN
                  Continue;

              IF TextFilesOnlyMode THEN
                IF NOT IsDirectory(SearchRec1.Attr)
                AND (Pos('.txt', LowerCase(SearchRec1.Name)) = 0)
                THEN
                  Continue;

              { Get file type and icon for selected file/directory }
              ShGetFileInfo(PChar(ListViewPathName + SearchRec1.Name),
                            0,
                            SHFileInfo,
                            SizeOf(SHFileInfo),
                            SHGFI_TYPENAME OR SHGFI_ICON OR SHGFI_SMALLICON);

              { If attribute = directory then add it to our treeview as a child of parent path }
              IF UpdateTreeView THEN BEGIN
                IF IsDirectory(SearchRec1.Attr) THEN BEGIN
                  AddedNode := TreeView.Items.AddChild(TreeView.Selected, SearchRec1.Name);
                  { The followng code adds tree children so that plus signs are visible when a tree is opened }
                  IF AddedNode <> NIL THEN BEGIN
                    IF FindFirst(ListViewPathname + SearchRec1.Name + '\*.*', FaDirectory, SearchRec2) = 0 THEN BEGIN
                      REPEAT
                        IF IsDirectory(SearchRec2.Attr)
                        AND NOT (SearchRec2.Name = '.')
                        AND NOT (SearchRec2.Name = '..')
                        THEN
                          TreeView.Items.AddChild(AddedNode, SearchRec2.Name);
                      UNTIL (FindNext(SearchRec2) <> 0);
                    END;
                    FindClose(SearchRec2);
                  END;
                END;
              END;

              { Display directories in the ListView if not in FWP mode }
              IF NOT IsDirectory(SearchRec1.Attr)
              OR (NOT FWPMode AND ((SearchRec1.Attr AND faDirectory) = faDirectory))
              OR ShowDirectoriesMode
              THEN BEGIN
                Inc(TotalFileCount);

                { If attribute = file then add it }
                ListItem := ListView.Items.Add;

                { Column 0: set caption of item added to ListView }
                ListItem.Caption := SearchRec1.Name;

                { and add any duration data from the equivalent snaps file to the caption }
                GetFileNumberSuffixFromSnapFile(SearchRec1.Name, NumberStr);
                ListItem.Caption := SearchRec1.Name;
                IF NumberStr <> '' THEN
                  ListItem.Caption := ListItem.Caption + '.' + NumberStr;

                { The subitems have to be added in the correct order or size becomes date, etc. }

                { Column 1: format file size from bytes to explore style readable format }
                iFileSize := Int64(SearchRec1.FindData.nFileSizeHigh) SHL Int64(32) + Int64(SearchRec1.FindData.nFileSizeLow);
                ListItem.SubItems.Add(FormatFileSize(iFileSize));
                ShortFileSizeColumnPos := 0;

                { Column 2: add date }
                FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
                FormatSettings.LongTimeFormat := 'hh:mm';
                ListItem.SubItems.Add(DateTimeToStr(SearchRec1.TimeStamp));
                DateColumnPos := 1;

                { Column 3: create file type }
                FileTypeColumnPos := 2;
                SuffixStr := '';
                IF FileTypeSuffixFound(SearchRec1.Name, TypeOfFile) AND (TypeOfFile = VideoFile) THEN BEGIN
                  IF NumberStr = '' THEN
                    SuffixStr := 'Video'
                  ELSE
                    SuffixStr := 'Video.' + NumberStr;
                  ListItem.SubItems.Add(SuffixStr);
                  Inc(VideoFileCount);
                END ELSE
                  IF FileTypeSuffixFound(SearchRec1.Name, TypeOfFile) AND (TypeOfFile = DatabaseFile) THEN BEGIN
                    SuffixStr := 'Database';
                    ListItem.SubItems.Add(SuffixStr);
                  END ELSE
                    Listitem.SubItems.Add(shFileInfo.szTypeName);

                { Column 4: add last access time }
                LastAccessTimeColumnPos := 3;
                ListItem.SubItems.Add(DateTimeTostr(FileTime2DateTime(SearchRec1.FindData.ftLastAccessTime)));

                { Column 5: add file attributes formatting it to readable char }
                AttrColumnPos := 4;
                ListItem.SubItems.Add(FormatAttr(SearchRec1.Attr));

                { Column 6: add blank sub item to cater for optional compares }
                ComparePathAndFileNameColumnPos := 5;
                ListItem.SubItems.Add('');

                { Column 7: add the real file size here, though don't normally display it }
                FullFileSizeColumnPos := 6;
                ListItem.SubItems.Add(IntToStr(iFileSize));

                { Columns 8-10: add blank sub items to cater for optional compares }
                CompareAsterisksColumnPos := 7;
                ListItem.SubItems.Add('');

                ComparePathNameColumnPos := 8;
                ListItem.SubItems.Add('');

                CompareFileNameColumnPos := 9;
                ListItem.SubItems.Add('');

                { Get handle for icon accuired from ShGetFileInfo }
                ListFilesIcon.Handle := shFileInfo.hIcon;
                { and list item image index and add icon to image list }
                ListItem.ImageIndex := ListViewImageList.AddIcon(ListFilesIcon);
              END;
            { Loop until no more files are found }
            UNTIL FindNext(SearchRec1) <> 0;
          END;
        END;

        IF FirstTimeListFilesCalled THEN BEGIN
          { Sort column 0 alphabetically }
          IF OldAlphaNumericMode THEN
            ListViewSortStyle := cssAlphaNum
          ELSE
            ListViewSortStyle := cssRealNumericAlphaNum;
          ListViewSortOrder[FirstColumn] := True;
          ListView.CustomSort(@CustomSortProc, FirstColumn - 1);

          FirstTimeListFilesCalled := False;
          SecondTimeListFilesCalled := True;
          ExplorerForm.Caption := 'FWP Explorer v.' + GetVersionInfoAsString + ' b.' + GetBuildInfoAsString;
        END ELSE BEGIN
          IF SecondTimeListFilesCalled THEN
            SecondTimeListFilesCalled := False
          ELSE
            IF ShowExplorerCaption THEN
              Caption := ListViewPathName;

          CASE ColumnIndex OF
            FileNameColumn:
              IF OldAlphaNumericMode THEN
                ListViewSortStyle := cssAlphaNum
              ELSE
                ListViewSortStyle := cssRealNumericAlphaNum;
            SizeColumn:
              ListViewSortStyle := cssNumeric;
            DateColumn:
              ListViewSortStyle := cssDateTime;
            TypeColumn:
              ListViewSortStyle := cssAlphaNum;
            LastAccessColumn:
              ListViewSortStyle := cssDateTime;
          END; {CASE}

          { Call the CustomSort method }
          ListView.CustomSort(@CustomSortProc, ColumnIndex - 1);
        END;

        { Make sure the file we're on remains in view }
        IF FileDeleted OR FileMoved THEN BEGIN
          I := -1;
          REPEAT
            Inc(I);
          UNTIL (ListView.Items.Count = 0) OR ((I + 1) = ListView.Items.Count) OR (ListView.Items[I].Caption = NextFileName);

          IF (ListView.Items.Count > 0) AND (ListView.Items[I].Caption = NextFileName) THEN
            ListView.Items[I].MakeVisible(False);

          FileDeleted := False;
          FileMoved := False;
        END ELSE
          IF FileRenamed THEN BEGIN
            IF (LastSelectedFileName <> '') AND (ListView.Items.Count > 0) THEN BEGIN
              I := -1;
              REPEAT
                Inc(I);
              UNTIL ((I + 1) = ListView.Items.Count) OR (ListView.Items[I].Caption = LastSelectedFileName);

              ListView.Items[I].MakeVisible(False);
              ListView.ItemFocused := ListView.Items[I];
              FileRenamed := False;
            END;
          END ELSE
            IF (LastSelectedFileName <> '') AND (ListView.Items.Count > 0) THEN BEGIN
              I := -1;
              REPEAT
                Inc(I);
              UNTIL ((I + 1) = ListView.Items.Count) OR (ListView.Items[I].Caption = LastSelectedFileName);

              IF ListView.Items[I].Caption = LastSelectedFileName THEN BEGIN
                ListView.Items[I].MakeVisible(False);
                ListView.ItemIndex := I;
                ListView.SetFocus;
              END;
            END;

        FirstTimeListFilesCalled := False;

        IF UpdateTreeView THEN
          TreeView.Items.EndUpdate;

        ListView.Items.EndUpdate;

        IF Assigned(ListFilesIcon) THEN
          ListFilesIcon.Free;

        DrawExplorerFormCaption;
      END; {WITH}
    FINALLY
      IF SearchRec1.Name <> '' THEN
        FindClose(SearchRec1) ;

      WITH ExplorerForm DO BEGIN
      IF UpdateTreeView THEN BEGIN
        TreeView.Items.EndUpdate;
        UpdateTreeView := False;
      END;
        ListView.Items.EndUpdate;
      END; {WITH}
    END;

    Screen.Cursor := SaveCursor;
    Application.ProcessMessages;
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListFiles: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END;
END; { ListFilesMainProc }

PROCEDURE ListFiles{1}; Overload;
{ List all the files in the ListView }
VAR
  ForceListingFlag : Boolean;

BEGIN
  ForceListingFlag := False;
  ListFilesMainProc(ForceListingFlag);
END; { ListFiles-1 }

PROCEDURE ListFiles{2}(ForceListingFlag : Boolean);  Overload;
{ List all the files in the ListView  - force the listing to be done from scratch if ForceListing is true }
BEGIN
  ListFilesMainProc(ForceListingFlag);
END; { ListFiles-2 }

PROCEDURE RedrawTreeView;
BEGIN
  TRY
    WITH ExplorerForm DO BEGIN
      TreeView.Items.Clear;
      AddDrives;
      IF ExplorerForm.TreeView.Selected = NIL THEN BEGIN
        IF ExplorerForm.TreeView.Items.Count > 0 THEN
          { choose C:\ }
          ExplorerForm.TreeView.TopItem.Selected := True;
      END;
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('RedrawTreeView: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { RedrawTreeView }

PROCEDURE TExplorerForm.ExplorerFormCreate(Sender : TObject);
CONST
  FirstColumn = 0;

VAR
  Ctrl : TControl;
  I : Integer;
  IniFile : TRegistryIniFile;
  SaveEvent1, SaveEvent2 : TNotifyEvent;

BEGIN
  TRY
    { Read in any parameters }
    IF ParamCount > 0 THEN BEGIN
      FOR I := 1 TO ParamCount DO BEGIN
        IF ParamStr(I) = '/fwp' THEN BEGIN
          FWPMode := True;
          ControlBar.Visible := True;
          ListView.Readonly := True;
          ListViewArchivePopup.Visible := True;

          { and hide the drop-down menus }
//          MainMenuEdit.Visible := False;
//          MainMenuFile.Visible := False;
//          MainMenuHelp.Visible := False;
        END;
        IF ParamStr(I) = '/oldalphanumericmode' THEN
          OldAlphaNumericMode := True;

        IF ParamStr(I) = '/max:off' THEN
          MaxMode := False;
      END; {FOR}
    END;

    SaveEvent1 := SingleClickCheckBox.OnClick;
    SaveEvent2 := TestCheckBox.OnClick;

    SingleClickCheckBox.OnClick := NIL;
    TestCheckBox.OnClick := NIL;

    IniFile := TRegistryIniFile.Create('FWPExplorer');

    WITH IniFile DO BEGIN
      { Options }
      ShowAttributesMode := ReadBool(OptionsSectionStr, ShowAttributesModeStr, DefaultShowAttributesMode);
      MainMenuViewShowAttributes.Checked := ShowAttributesMode;

      ShowDirectoriesMode := ReadBool(OptionsSectionStr, ShowDirectoriesModeStr, DefaultShowDirectoriesMode);
      MainMenuViewShowDirectories.Checked := ShowDirectoriesMode;

      SingleClickMode := ReadBool(OptionsSectionStr, SingleClickModeStr, DefaultSingleClickMode);
      SingleClickCheckBox.Checked := SingleClickMode;

      SetUpSuffixesMode := ReadBool(OptionsSectionStr, SetUpSuffixesModeStr, DefaultSetUpSuffixesMode);
      MainMenuFileSetUpSuffixes.Checked := SetUpSuffixesMode;

      TestMode := ReadBool(OptionsSectionStr, TestModeStr, DefaultTestMode);
      TestCheckBox.Checked := TestMode;

      TextFilesOnlyMode := ReadBool(OptionsSectionStr, TextFilesModeStr, DefaultTextFilesMode);
      VideoFilesOnlyMode := ReadBool(OptionsSectionStr, VideoFilesModeStr, DefaultVideoFilesMode);

      UserIncrement := ReadInteger(OptionsSectionStr, UserIncrementStr, DefaultUserIncrement);
      UserSetIncrement.Text := IntToStr(UserIncrement);

      { Directories }
      ArchiveDirectory := ReadString(DirectoriesSectionStr, ArchiveDirectoryStr, '');
      IF ArchiveDirectory = '' THEN
        MainMenuFileClearArchiveDirectoryMenuItem.Enabled := False
      ELSE
        MainMenuFileClearArchiveDirectoryMenuItem.Enabled := True;

      BackupAToZDirectory := ReadString(DirectoriesSectionStr, BackupAToZDirectoryStr, '');
      IF BackupAToZDirectory = '' THEN
        MainMenuFileClearBackupAToZDirectoryMenuItem.Enabled := False
      ELSE
        MainMenuFileClearBackupAToZDirectoryMenuItem.Enabled := True;
      SetUpBackupAToZMenuItems(NOT DoBackupNow);

      BackupAToMDirectory := ReadString(DirectoriesSectionStr, BackupAToMDirectoryStr, '');
      IF BackupAToMDirectory = '' THEN
        MainMenuFileClearBackupAToMDirectoryMenuItem.Enabled := False
      ELSE
        MainMenuFileClearBackupAToMDirectoryMenuItem.Enabled := True;
      SetUpBackupAToMMenuItems(NOT DoBackupNow);

      BackupNToZDirectory := ReadString(DirectoriesSectionStr, BackupNToZDirectoryStr, '');
      IF BackupNToZDirectory = '' THEN
        MainMenuFileClearBackupNToZDirectoryMenuItem.Enabled := False
      ELSE
        MainMenuFileClearBackupNToZDirectoryMenuItem.Enabled := True;
      SetUpBackupNToZMenuItems(NOT DoBackupNow);

//      BackupDriveAndPath := ReadString(DirectoriesSectionStr, BackupDriveAndPathStr, '');
//      IF BackupDriveAndPath = '' THEN
//        MainMenuFileClearBackupAToZDirectoryMenuItem.Enabled := False
//      ELSE
//        MainMenuFileClearBackupAToZDirectoryMenuItem.Enabled := True;

      DirectoryNameForCompareFileSizeInDifferentDirectory := ReadString(DirectoriesSectionStr, DirectoryNameForCompareFileSizeInDifferentDirectoryStr, '');
      IF DirectoryNameForCompareFileSizeInDifferentDirectory = '' THEN
        MainMenuFileClearCompareFileSizeDirectoryMenuItem.Enabled := False
      ELSE
        MainMenuFileClearCompareFileSizeDirectoryMenuItem.Enabled := True;

      MoveDirectory1 := ReadString(DirectoriesSectionStr, MoveDirectory1Str, '');
      IF MoveDirectory1 = '' THEN
        MainMenuFileClearMove1DirectoryMenuItem.Enabled := False
      ELSE
        MainMenuFileClearMove1DirectoryMenuItem.Enabled := True;

      MoveDirectory2 := ReadString(DirectoriesSectionStr, MoveDirectory2Str, '');
      IF MoveDirectory2 = '' THEN
        MainMenuFileClearMove2DirectoryMenuItem.Enabled := False
      ELSE
        MainMenuFileClearMove2DirectoryMenuItem.Enabled := True;

      { Form data }
      ExplorerForm.Top := ReadInteger(FormAlignmentSectionStr, ExplorerFormTopStr, DefaultExplorerFormTop);
      ExplorerForm.Left := ReadInteger(FormAlignmentSectionStr, ExplorerFormLeftStr, DefaultExplorerFormLeft);
      ExplorerForm.Width := ReadInteger(FormAlignmentSectionStr, ExplorerFormWidthStr, DefaultExplorerFormWidth);
      ExplorerForm.Height := ReadInteger(FormAlignmentSectionStr, ExplorerFormHeightStr, DefaultExplorerFormHeight);

      { Column 0 - file name }
      ListView.Columns[Column0].Width := ReadInteger(ListViewSectionStr, ListViewColumn0WidthStr, DefaultListViewColumn0Width);
      ListView.Columns[Column0].Caption := 'Filename ˄';
      ListViewColumn0Width := ListView.Columns[Column0].Width;

      { Column 1 - file size }
      ListView.Columns[Column1].Width := ReadInteger(ListViewSectionStr, ListViewColumn1WidthStr, DefaultListViewColumn1Width);
      ListView.Columns[Column1].Caption := 'Size';
      ListViewColumn1Width := ListView.Columns[Column1].Width;

      { Column 2 - date }
      ListView.Columns[Column2].Width := ReadInteger(ListViewSectionStr, ListViewColumn2WidthStr, DefaultListViewColumn2Width);
      ListView.Columns[Column2].Caption := 'Date';
      ListViewColumn2Width := ListView.Columns[Column2].Width;

      { Column 3 - file type }
      ListView.Columns[Column3].Width := ReadInteger(ListViewSectionStr, ListViewColumn3WidthStr, DefaultListViewColumn3Width);
      ListView.Columns[Column3].Caption := 'Type';
      ListViewColumn3Width := ListView.Columns[Column3].Width;

      { Column 4 - last access time }
      ListView.Columns[Column4].Width := ReadInteger(ListViewSectionStr, ListViewColumn4WidthStr, DefaultListViewColumn4Width);
      ListView.Columns[Column4].Caption := 'Last Access';
      ListViewColumn4Width := ListView.Columns[Column4].Width;

      { Column 5 - attributes}
      IF ShowAttributesMode THEN
        ListView.Columns[Column5].Width := ReadInteger(ListViewSectionStr, ListViewColumn5WidthStr, DefaultListViewColumn5Width)
      ELSE
        ListView.Columns[Column5].Width := 0;
      ListView.Columns[Column5].Caption := 'Attr';
      ListViewColumn5Width := ListView.Columns[Column5].Width;

      { Column 6-10 are used for finding duplicate files - 7-10 are never shown }
      ListViewColumn6Width := ReadInteger(ListViewSectionStr, ListViewColumn6WidthStr, DefaultListViewColumn6Width);
      ListView.Columns[Column6].Caption := 'Other Filename';

      ListView.Columns[Column7].Width := 0;
      ListView.Columns[Column7].Caption := 'Column 7';
      ListView.Columns[Column8].Width := 0;
      ListView.Columns[Column8].Caption := 'Column 8';
      ListView.Columns[Column9].Width := 0;
      ListView.Columns[Column9].Caption := 'Column 9';
      ListView.Columns[Column10].Width := 0;
      ListView.Columns[Column10].Caption := 'Column 10';

      FOR I := 0 to -1 + Self.ComponentCount DO BEGIN
        IF Components[I] IS TControl THEN BEGIN
          Ctrl := TControl(Components[I]);
          IF (Ctrl.Name = 'TreeView')
          OR (Ctrl.Name = 'Splitter')
          OR (Ctrl.Name = 'ListView')
          THEN BEGIN
            Ctrl.Top := ReadInteger(Ctrl.Name, 'Top', Ctrl.Top);
            Ctrl.Left := ReadInteger(Ctrl.Name, 'Left', Ctrl.Left);
            Ctrl.Width := ReadInteger(Ctrl.Name, 'Width', Ctrl.Width);
            Ctrl.Height := ReadInteger(Ctrl.Name, 'Height', Ctrl.Height);
          END;
        END;
      END;
    END; {WITH}

    AddDrives;

    { FWP added the following to display the root directory }
    IF ExplorerForm.TreeView.Selected = NIL THEN BEGIN
      IF ExplorerForm.TreeView.Items.Count > 0 THEN BEGIN
        { choose C:\ }
        ExplorerForm.TreeView.TopItem.Selected := True;

        ListFiles;

        ExplorerForm.TreeView.TopItem.Expand(False);
      END;
    END;

    SingleClickCheckBox.OnClick := SaveEvent1;
    TestCheckBox.OnClick := SaveEvent2;

    IniFile.Free;
    ListView.DragMode := dmAutomatic;
    ListView.RowSelect := True;
    ListView.MultiSelect := True;
    ListView.ViewStyle := vsReport;
  EXCEPT
    ON E : Exception DO
      ShowMessage('TExplorerFormCreate: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ExplorerFormCreate }

PROCEDURE TExplorerForm.ExplorerFormClose(Sender : TObject; VAR Action: TCloseAction);
CONST
  StopTimer = True;

VAR
  Ctrl : TControl;
  I : Integer;
  IniFile : TRegistryIniFile;

BEGIN
  TRY
    SnapsCompareForm.Close;

    IniFile := TRegistryIniFile.Create('FWPExplorer');

    WITH IniFile DO BEGIN
      { Directories }
      WriteString(DirectoriesSectionStr, ArchiveDirectoryStr, ArchiveDirectory);
      WriteString(DirectoriesSectionStr, BackupAToMDirectoryStr, BackupAToMDirectory);
      WriteString(DirectoriesSectionStr, BackupAToZDirectoryStr, BackupAToZDirectory);
      WriteString(DirectoriesSectionStr, BackupDriveAndPathStr, BackupDriveAndPath);
      WriteString(DirectoriesSectionStr, BackupNToZDirectoryStr, BackupNToZDirectory);
      WriteString(DirectoriesSectionStr, DirectoryNameForCompareFileSizeInDifferentDirectoryStr, DirectoryNameForCompareFileSizeInDifferentDirectory);
      WriteString(DirectoriesSectionStr, MoveDirectory1Str, MoveDirectory1);
      WriteString(DirectoriesSectionStr, MoveDirectory2Str, MoveDirectory2);

      { Options }
      WriteBool(OptionsSectionStr, ShowAttributesModeStr, ShowAttributesMode);
      WriteBool(OptionsSectionStr, ShowDirectoriesModeStr, ShowDirectoriesMode);
      WriteBool(OptionsSectionStr, SingleClickModeStr, SingleClickMode);
      WriteBool(OptionsSectionStr, SetUpSuffixesModeStr, SetUpSuffixesMode);
      WriteBool(OptionsSectionStr, TestModeStr, TestMode);
      WriteBool(OptionsSectionStr, TextFilesModeStr, TextFilesOnlyMode);
      WriteBool(OptionsSectionStr, VideoFilesModeStr, VideoFilesOnlyMode);
      WriteInteger(OptionsSectionStr, UserIncrementStr, UserIncrement);

      { Form data - but onbly save it if the window isn't maximised }
      IF ExplorerForm.WindowState = wsNormal THEN BEGIN
        WriteInteger(FormAlignmentSectionStr, ExplorerFormWidthStr, ExplorerForm.Width);
        WriteInteger(FormAlignmentSectionStr, ExplorerFormHeightStr, ExplorerForm.Height);
        WriteInteger(FormAlignmentSectionStr, ExplorerFormTopStr, ExplorerForm.Top);
        WriteInteger(FormAlignmentSectionStr, ExplorerFormLeftStr, ExplorerForm.Left);

        IF ListView.Columns[Column0].Width > 0 THEN
          WriteInteger(ListViewSectionStr, ListViewColumn0WidthStr, ListView.Columns[Column0].Width);
        IF ListView.Columns[Column1].Width > 0 THEN
          WriteInteger(ListViewSectionStr, ListViewColumn1WidthStr, ListView.Columns[Column1].Width);
        IF ListView.Columns[Column2].Width > 0 THEN
          WriteInteger(ListViewSectionStr, ListViewColumn2WidthStr, ListView.Columns[Column2].Width);
        IF ListView.Columns[Column3].Width > 0 THEN
          WriteInteger(ListViewSectionStr, ListViewColumn3WidthStr, ListView.Columns[Column3].Width);
        IF ListView.Columns[Column4].Width > 0 THEN
          WriteInteger(ListViewSectionStr, ListViewColumn4WidthStr, ListView.Columns[Column4].Width);
        IF ListView.Columns[Column5].Width > 0 THEN
          WriteInteger(ListViewSectionStr, ListViewColumn5WidthStr, ListView.Columns[Column5].Width);
        IF ListView.Columns[Column6].Width > 0 THEN
          WriteInteger(ListViewSectionStr, ListViewColumn6WidthStr, ListView.Columns[Column6].Width);
      END;

      FOR I := 0 to -1 + Self.ComponentCount DO BEGIN
        IF Components[I] IS TControl THEN BEGIN
          Ctrl := TControl(Components[I]) ;
          IF (Ctrl.Name = 'TreeView')
          OR (Ctrl.Name = 'Splitter')
          OR (Ctrl.Name = 'ListView')
          THEN BEGIN
            WriteInteger(Ctrl.Name, 'Top', Ctrl.Top);
            WriteInteger(Ctrl.Name, 'Left', Ctrl.Left);
            WriteInteger(Ctrl.Name, 'Width', Ctrl.Width);
            WriteInteger(Ctrl.Name, 'Height', Ctrl.Height);
          END;
        END;
      END;
    END; {WITH}
    IniFile.Free;

    Action := caFree;
  EXCEPT
    ON E : Exception DO
      ShowMessage('ExplorerFormClose: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ExplorerFormClose }

PROCEDURE TExplorerForm.RefreshView(Sender : TObject);
BEGIN
  { Make sure the list view is redrawn }
  ListFiles(ForceListing);
END; { RefreshView }

PROCEDURE ListViewColumnSort(Column : Integer; OUT CaptionStr : String);
{ Sort the list view by the given column }
BEGIN
  TRY
    WITH ExplorerForm DO BEGIN
      CASE Column OF
        FileNameColumn:
          BEGIN
            IF OldAlphaNumericMode THEN
              ListViewSortStyle := cssAlphaNum
            ELSE
              ListViewSortStyle := cssRealNumericAlphaNum;
            IF ColumnSortOrder[FileNameColumn] = Descending THEN
              CaptionStr := 'Sorted by file name'
            ELSE
              CaptionStr := 'Reverse sorted by file name';
          END;
        SizeColumn:
          BEGIN
            ListViewSortStyle := cssNumeric;
            IF ColumnSortOrder[SizeColumn] = Descending THEN
              CaptionStr := 'Sorted by size'
            ELSE
              CaptionStr := 'Reverse sorted by size';
          END;
        DateColumn:
          BEGIN
            ListViewSortStyle := cssDateTime;
            IF ColumnSortOrder[DateColumn] = Descending THEN
              CaptionStr := 'Sorted by date'
            ELSE
              CaptionStr := 'Reverse sorted by date';
          END;
        TypeColumn:
          BEGIN
            ListViewSortStyle := cssAlphaNum;
            IF ColumnSortOrder[TypeColumn] = Descending THEN
              CaptionStr := 'Sorted by type'
            ELSE
              CaptionStr := 'Reverse sorted by type';
          END;
        LastAccessColumn:
          BEGIN
            ListViewSortStyle := cssDateTime;
            IF ColumnSortOrder[LastAccessColumn] = Descending THEN
              CaptionStr := 'Sorted by last access time'
            ELSE
              CaptionStr := 'Reverse sorted by last access time';
          END;
      END; {CASE}

      ListView.Columns[FileNameColumn].Caption := 'FileName';
      ListView.Columns[SizeColumn].Caption := 'Size';
      ListView.Columns[DateColumn].Caption := 'Date';
      ListView.Columns[TypeColumn].Caption := 'Type';
      ListView.Columns[LastAccessColumn].Caption := 'Last Access';

      IF Column <> PreviousSortColumn THEN BEGIN
        ColumnSortOrder[Column] := Ascending;
        ListView.Columns[Column].Caption := ListView.Columns[Column].Caption + '˄';
      END ELSE
        IF ColumnSortOrder[Column] = Ascending THEN BEGIN
          ColumnSortOrder[Column] := Descending;
          ListView.Columns[Column].Caption := ListView.Columns[Column].Caption + '˅';
        END ELSE BEGIN
          ColumnSortOrder[Column] := Ascending;
          ListView.Columns[Column].Caption := ListView.Columns[Column].Caption + '˄';
        END;

      SaveListViewColumnSortNumber := Column - 1;
      ListView.CustomSort(@CustomSortProc, Column - 1);
      PreviousSortColumn := Column;

      ColumnIndex := Column;
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewColumnSort: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ListViewColumnSort }

PROCEDURE TExplorerForm.ListViewColumnClick(Sender : TObject; Column: TListColumn);
VAR
  CaptionStr : String;
  SaveIdleState : Boolean;

BEGIN
  TRY
    SaveIdleState := IdleState;
    IdleState := False;

    ColumnIndex := Column.Index;

    { Determine the sort style, so that if you switch to a new column, it starts sorting it the right way }
    CASE Column.Index OF
      FileNameColumn:
        ListViewColumnSort(FileNameColumn, CaptionStr);
      SizeColumn:
        ListViewColumnSort(SizeColumn, CaptionStr);
      DateColumn:
        ListViewColumnSort(DateColumn, CaptionStr);
      TypeColumn:
        ListViewColumnSort(TypeColumn, CaptionStr);
      LastAccessColumn:
        ListViewColumnSort(LastAccessColumn, CaptionStr);
    END; {CASE}

    IdleState := SaveIdleState;
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewColumnClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ListViewColumnClick }

PROCEDURE ListFirstDirectory; { FWP test }
VAR
  Node : TTreeNode;

BEGIN
  IF ExplorerForm.TreeView.Items.Count = 0 THEN
    Exit;

  Node := ExplorerForm.TreeView.Items[0];
  IF Node <> NIL THEN
    { List directories by tracing the current node path }
    ListFiles;
END; { ListFirstDirectory }

PROCEDURE ExecuteClick(FileName : String);
{ Deals with a mouse click }
BEGIN
  TRY
    IF FWPMode THEN
      PrepareFiles(FileName)
    ELSE
      ShellExecute(ExplorerForm.ListView.Handle,
                   'open',
                   PChar(ListViewPathName + FileName),
                   NIL,
                   NIL,
                   SW_SHOWNORMAL);
  EXCEPT
    ON E : Exception DO
      ShowMessage('ExecuteClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ExecuteClick }

PROCEDURE TExplorerForm.SingleClickCheckBoxClick(Sender : TObject);
BEGIN
  IF SingleClickMode THEN BEGIN
    SingleClickCheckBox.Checked := False;
    SingleClickMode := False;
  END ELSE BEGIN
    SingleClickCheckBox.Checked := True;
    SingleClickMode := True;
  END;
END; { SingleClickCheckBoxClick }

PROCEDURE TExplorerForm.MainMenuFileClearBackupAToZDirectoryMenuItemClick(Sender: TObject);
BEGIN
  BackupAToZDirectory := '';
  BackupDriveAndPath := '';
  MainMenuFileClearBackupAToZDirectoryMenuItem.Enabled := False;
  SetUpBackupAToZMenuItems(NOT DoBackupNow);
END; { MainMenuFileClearBackupDriveandDirectoryClick }

PROCEDURE TExplorerForm.MainMenuFileClearBackupAToMDirectoryMenuItemClick(Sender: TObject);
BEGIN
  BackupAToMDirectory := '';
  MainMenuFileClearBackupAToMDirectoryMenuItem.Enabled := False;
  SetUpBackupAToMMenuItems(NOT DoBackupNow);
END; { MainMenuFileClearBackupAToMDriveandDirectoryMenuItemClick }

PROCEDURE TExplorerForm.MainMenuFileClearBackupNToZDirectoryMenuItemClick(Sender: TObject);
BEGIN
  BackupNToZDirectory := '';
  MainMenuFileClearBackupNToZDirectoryMenuItem.Enabled := False;
  SetUpBackupNToZMenuItems(NOT DoBackupNow);
END; { MainMenuFileClearBackupNToZDriveandDirectoryMenuItemClick }

PROCEDURE TExplorerForm.StopButtonClick(Sender: TObject);
BEGIN
  Abort := True;
END; { StopButtonClick }

PROCEDURE TExplorerForm.CompareFileSizeCheckBoxClick(Sender : TObject);
VAR
  I, J : Integer;
  SaveEvent1, SaveEvent2, SaveEvent3, SaveEvent4 : TNotifyEvent;
  SaveCursor : TCursor;

BEGIN
  TRY
    SaveCursor := Screen.Cursor;

    { First save the state of other checkboxes }
    SaveEvent1 := CompareFileSizeCheckBox.OnClick;
    SaveEvent2 := CompareFileSizeInDifferentDirectoryCheckBox.OnClick;
    SaveEvent3 := CompareSnapImagesCheckBox.OnClick;
    SaveEvent4 := CompareSnapImagesInDifferentDirectoryCheckBox.OnClick;
    CompareFileSizeCheckBox.OnClick := NIL;
    CompareFileSizeInDifferentDirectoryCheckBox.OnClick := NIL;
    CompareSnapImagesCheckBox.OnClick := NIL;
    CompareSnapImagesInDifferentDirectoryCheckBox.OnClick := NIL;

    RefreshView(Sender);

    IF CompareFileSize THEN BEGIN
      CompareFileSizeCheckBox.Checked := False;
      CompareFileSize := False;

      ListView.Columns[Column2].Width := SaveColumn2Width;
      ListView.Columns[Column3].Width := SaveColumn3Width;
      ListView.Columns[Column6].Width := 0;
      SnapsCompareForm.Visible := False;
    END ELSE BEGIN
      CompareFileSizeCheckBox.Checked := True;
      CompareFileSize := True;

      SaveColumn2Width := ListView.Columns[Column2].Width;
      ListView.Columns[Column2].Width := 0;

      SaveColumn3Width := ListView.Columns[Column3].Width;
      ListView.Columns[Column3].Width := 0;

      ListView.Columns[Column6].Width := ListViewColumn6Width;

      SnapsCompareForm.Visible := True;
      Screen.Cursor := crHourGlass;

      { Now do the compare }
      I := 0;
      WHILE I < ListView.Items.Count DO BEGIN
        J := 0;
        WHILE J < ListView.Items.Count DO BEGIN
          IF I <> J THEN BEGIN
            { If the filesize is the same then... }
            IF ListView.Items[I].SubItems[FullFileSizeColumnPos] = ListView.Items[J].SubItems[FullFileSizeColumnPos] THEN BEGIN
              { ...add the other file name }
              ListView.Items[J].SubItems[ComparePathAndFileNameColumnPos] := ListView.Items[I].Caption;

              { add one asterisk, which subsequently is used the colour the line for the original item }
              IF ListView.Items[I].SubItems[CompareAsterisksColumnPos] = '' THEN
                ListView.Items[I].SubItems[CompareAsterisksColumnPos] := '*';
              { and two for the duplicated item }
              IF ListView.Items[J].SubItems[CompareAsterisksColumnPos] = '' THEN
                ListView.Items[J].SubItems[CompareAsterisksColumnPos] := '**';
              { and store the path and filename for possible viewing }

              IF ListView.Items[J].SubItems[CompareFileNameColumnPos] = '' THEN
                ListView.Items[J].SubItems[CompareFileNameColumnPos] := ListView.Items[I].Caption;
              IF ListView.Items[J].SubItems[ComparePathNameColumnPos] = '' THEN
                ListView.Items[J].SubItems[ComparePathNameColumnPos] := ListViewPathName;
            END;
          END;
          Inc(J);
        END; {WHILE}
        Inc(I);
      END; {WHILE}
    END;

    { Redraw ListView without refilling it - if that happens, we lose the stars }
    Screen.Cursor := SaveCursor;
    ListView.Refresh;

    { Finally restore the state of other checkboxes }
    CompareFileSizeInDifferentDirectoryCheckBox.Checked := False;
    CompareFileSizeInDifferentDirectory := False;
    CompareSnapImagesCheckBox.Checked := False;
    CompareSnapImages := False;
    CompareSnapImagesInDifferentDirectoryCheckBox.Checked := False;
    CompareSnapImagesInDifferentDirectory := False;

    CompareFileSizeCheckBox.OnClick := SaveEvent1;
    CompareFileSizeInDifferentDirectoryCheckBox.OnClick := SaveEvent2;
    CompareSnapImagesCheckBox.OnClick := SaveEvent3;
    CompareSnapImagesInDifferentDirectoryCheckBox.OnClick := SaveEvent4;
  EXCEPT
    ON E : Exception DO
      ShowMessage('CompareFileSizeCheckBoxClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { CompareFileSizeCheckBoxClick }

PROCEDURE TExplorerForm.CompareFileSizeInDifferentDirectoryCheckBoxClick(Sender: TObject);
VAR
  CompareSearchRec : TSearchRec;
  I : Integer;
  SaveEvent1, SaveEvent2, SaveEvent3, SaveEvent4 : TNotifyEvent;
  SaveCursor : TCursor;
  TempFileSize : Int64;

BEGIN
  TRY
    SaveCursor := Screen.Cursor;

    { First save the state of other checkboxes }
    SaveEvent1 := CompareFileSizeCheckBox.OnClick;
    SaveEvent2 := CompareFileSizeInDifferentDirectoryCheckBox.OnClick;
    SaveEvent3 := CompareSnapImagesCheckBox.OnClick;
    SaveEvent4 := CompareSnapImagesInDifferentDirectoryCheckBox.OnClick;
    CompareFileSizeCheckBox.OnClick := NIL;
    CompareFileSizeInDifferentDirectoryCheckBox.OnClick := NIL;
    CompareSnapImagesCheckBox.OnClick := NIL;
    CompareSnapImagesInDifferentDirectoryCheckBox.OnClick := NIL;

    RefreshView(Sender);

    IF CompareFileSizeInDifferentDirectory THEN BEGIN
      CompareFileSizeInDifferentDirectoryCheckBox.Checked := False;
      CompareFileSizeInDifferentDirectory := False;
      ListView.Columns[Column2].Width := SaveColumn2Width;
      ListView.Columns[Column3].Width := SaveColumn3Width;
      ListView.Columns[Column6].Width := 0;
      SnapsCompareForm.Visible := False;
    END ELSE BEGIN
      SaveColumn2Width := ListView.Columns[Column2].Width;
      ListView.Columns[Column2].Width := 0;

      SaveColumn3Width := ListView.Columns[Column3].Width;
      ListView.Columns[Column3].Width := 0;

      ListView.Columns[Column6].Width := ListViewColumn6Width;

      SnapsCompareForm.Visible := True;

      { Set up the 'different' directory if necessary }
      IF DirectoryNameForCompareFileSizeInDifferentDirectory = '' THEN BEGIN
        IF InputQuery('Directory For Check File Size In Different Directory',
                      'Enter Directory For Check File Size In Different Directory',
                      DirectoryNameForCompareFileSizeInDifferentDirectory)
        THEN
          IF DirectoryNameForCompareFileSizeInDifferentDirectory = '' THEN
            ShowMessage('No directory specified')
          ELSE
            IF Copy(DirectoryNameForCompareFileSizeInDifferentDirectory, Length(DirectoryNameForCompareFileSizeInDifferentDirectory), 1) = '\' THEN
              DirectoryNameForCompareFileSizeInDifferentDirectory :=
                                              Copy(DirectoryNameForCompareFileSizeInDifferentDirectory, 1, Length(DirectoryNameForCompareFileSizeInDifferentDirectory) - 1);
      END;

      IF DirectoryNameForCompareFileSizeInDifferentDirectory <> '' THEN BEGIN
        IF NOT DirectoryExists(DirectoryNameForCompareFileSizeInDifferentDirectory) THEN BEGIN
          ShowMessage('Directory "' + DirectoryNameForCompareFileSizeInDifferentDirectory + '" cannot be found');
          DirectoryNameForCompareFileSizeInDifferentDirectory := '';
          CompareFileSizeInDifferentDirectoryCheckBox.Checked := False;
            END ELSE BEGIN
          CompareFileSizeInDifferentDirectoryCheckBox.Checked := True;
          CompareFileSizeInDifferentDirectory := True;

          Screen.Cursor := crHourGlass;
          Application.ProcessMessages;

          MainMenuFileClearCompareFileSizeDirectoryMenuItem.Enabled := True;

          { Now do the compare }
          I := 0;
          WHILE I < ListView.Items.Count DO BEGIN
            IF FindFirst(DirectoryNameForCompareFileSizeInDifferentDirectory + '\*.*', FaAnyFile, CompareSearchRec) = 0 THEN BEGIN
              REPEAT
                IF (CompareSearchRec.Name = '.') OR (CompareSearchRec.Name = '..') OR IsDirectory(CompareSearchRec.Attr) THEN
                  Continue;

                TempFileSize := Int64(CompareSearchRec.FindData.nFileSizeHigh) SHL Int64(32) + Int64(CompareSearchRec.FindData.nFileSizeLow);
                IF StrToInt64(ListView.Items[I].SubItems[FullFileSizeColumnPos]) = TempFileSize THEN BEGIN
                  { add three asterisks, which subsequently is used the colour the line for the original item }
                  { store the path and filename for possible viewing }
                  ListView.Items[I].SubItems[ComparePathAndFileNameColumnPos] := DirectoryNameForCompareFileSizeInDifferentDirectory + '\' + CompareSearchRec.Name;
                  ListView.Items[I].SubItems[CompareAsterisksColumnPos] := '***';
                  { display the other file name }
                  ListView.Items[I].SubItems[ComparePathNameColumnPos] := DirectoryNameForCompareFileSizeInDifferentDirectory + '\';
                  ListView.Items[I].SubItems[CompareFileNameColumnPos] := CompareSearchRec.Name;
                END;
              UNTIL (FindNext(CompareSearchRec) <> 0);
            END;
            Inc(I);
          END; {WHILE}
        END;
      END;
    END;

    { Redraw ListView without refilling it - if that happens, we lose the stars }
    Screen.Cursor := SaveCursor;
    ListView.Refresh;

    { Finally restore the state of other checkboxes }
    CompareFileSizeCheckBox.Checked := False;
    CompareFileSize := False;
    CompareSnapImagesCheckBox.Checked := False;
    CompareSnapImages := False;
    CompareSnapImagesInDifferentDirectoryCheckBox.Checked := False;
    CompareSnapImagesInDifferentDirectory := False;

    CompareFileSizeCheckBox.OnClick := SaveEvent1;
    CompareFileSizeInDifferentDirectoryCheckBox.OnClick := SaveEvent2;
    CompareSnapImagesCheckBox.OnClick := SaveEvent3;
    CompareSnapImagesInDifferentDirectoryCheckBox.OnClick := SaveEvent4;
  EXCEPT
    ON E : Exception DO
      ShowMessage('CompareFileSizeInDifferentDirectoryCheckBoxClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { CompareFileSizeInDifferentDirectoryCheckBoxClick }

PROCEDURE CompareSnapsMainProc(ListView : TListView; PathName : String; SameDirectory : Boolean);
VAR
  BlockFile1, BlockFile2: File;
  BytesCompareOK : Boolean;
  Ch1, Ch2: Char;
  CompareSearchRec : TSearchRec;
  I : Integer;
  NumRead : Integer;

BEGIN
  TRY
    { Now do the compare: first see if there is a Snaps directory }
    IF DirectoryExists(PathName + 'Snaps') AND NOT IsDirectoryEmpty(PathName + 'Snaps') THEN BEGIN
      I := 0;
      WHILE I < ListView.Items.Count DO BEGIN
        { see if there is a snap for this file - remove any numbers as snaps files do not have any }
        IF FileExists(ListViewPathName + 'Snaps\' + ListView.Items[I].Caption + '.jpg') THEN BEGIN
          IF FindFirst(PathName + 'Snaps\*.*', FaAnyFile, CompareSearchRec) = 0 THEN BEGIN
            { and compare this snap with all the other snaps - but a proper compare, not just a file size compare }
            REPEAT
              IF (CompareSearchRec.Name = '.') OR (CompareSearchRec.Name = '..') OR IsDirectory(CompareSearchRec.Attr) THEN
                Continue;

              BytesCompareOk := True;
              IF (SameDirectory AND (ListView.Items[I].Caption + '.jpg' <> CompareSearchRec.Name))
              OR NOT SameDirectory
              THEN BEGIN
                ExplorerForm.Caption := 'Comparing ' + ListView.Items[I].Caption + '.jpg' + ' with ' + CompareSearchRec.Name;

                ExplorerForm.StopButton.Caption := 'Stop Compare';
                ExplorerForm.StopButton.Visible := True;

                AssignFile(BlockFile1, ListViewPathName + 'Snaps\' + ListView.Items[I].Caption + '.jpg');
                Reset(BlockFile1, 1);
                AssignFile(BlockFile2, PathName + 'Snaps\' + CompareSearchRec.Name);
                Reset(BlockFile2, 1);

                IF FileSize(BlockFile1) = FileSize(BlockFile2) THEN BEGIN
                  { While the size & contents are the same keep on reading }
                  REPEAT
                    BlockRead(BlockFile1, Ch1, SizeOf(Ch1), NumRead);
                    BlockRead(BlockFile2, Ch2, SizeOf(Ch2), NumRead);

                    { compare a single byte }
                    IF Ch1 <> Ch2 THEN
                      BytesCompareOK := False;

                    Application.ProcessMessages;

                  UNTIL EOF(BlockFile1) OR NOT BytesCompareOK OR (NumRead = 0) OR Abort;
                  CloseFile(BlockFile1);
                  CloseFile(BlockFile2);

                  IF NOT Abort AND BytesCompareOK THEN BEGIN
                    { display the other file name }
                    ListView.Items[I].SubItems[ComparePathAndFileNameColumnPos] := PathName + CompareSearchRec.Name;
                    { add asterisks, which subsequently is used the colour the line }
                    ListView.Items[I].SubItems[CompareAsterisksColumnPos] := '****';
                    { and store the path and filename for possible viewing }
                    ListView.Items[I].SubItems[ComparePathNameColumnPos] := PathName;
                    ListView.Items[I].SubItems[CompareFileNameColumnPos] := CompareSearchRec.Name;
                  END;
                END;
              END;
            UNTIL (FindNext(CompareSearchRec) <> 0) OR Abort;
          END;
        END;
        Inc(I);
      END;

      IF NOT Abort THEN
        ExplorerForm.Caption := 'Compare completed'
      ELSE BEGIN
        ExplorerForm.Caption := 'Compare aborted';
        Abort := False;

        ExplorerForm.CompareSnapImagesCheckBox.Checked := False;
        CompareSnapImages := False;

        ExplorerForm.CompareSnapImagesInDifferentDirectoryCheckBox.Checked := False;
        CompareSnapImagesInDifferentDirectory := False;

        ListView.Columns[Column2].Width := ListViewColumn2Width;
        ListView.Columns[Column3].Width := ListViewColumn3Width;
        ListView.Columns[Column6].Width := 0;
      END;
      ExplorerForm.StopButton.Visible := False;
    END;
  EXCEPT
    ON E : Exception DO
      ShowMessage('CompareSnapsMainProc: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { CompareSnapsMainProc }

PROCEDURE TExplorerForm.CompareSnapImagesCheckBoxClick(Sender: TObject);
CONST
  SameDirectory = True;

VAR
  SaveEvent1, SaveEvent2, SaveEvent3, SaveEvent4 : TNotifyEvent;
  SaveCursor : TCursor;

BEGIN
  TRY
    SaveCursor := Screen.Cursor;

    { First save the state of other checkboxes }
    SaveEvent1 := CompareFileSizeCheckBox.OnClick;
    SaveEvent2 := CompareFileSizeInDifferentDirectoryCheckBox.OnClick;
    SaveEvent3 := CompareSnapImagesCheckBox.OnClick;
    SaveEvent4 := CompareSnapImagesInDifferentDirectoryCheckBox.OnClick;
    CompareFileSizeCheckBox.OnClick := NIL;
    CompareFileSizeInDifferentDirectoryCheckBox.OnClick := NIL;
    CompareSnapImagesCheckBox.OnClick := NIL;
    CompareSnapImagesInDifferentDirectoryCheckBox.OnClick := NIL;

    RefreshView(Sender);

    IF CompareSnapImages THEN BEGIN
      CompareSnapImagesCheckBox.Checked := False;
      CompareSnapImages := False;
      ListView.Columns[Column2].Width := SaveColumn2Width;
      ListView.Columns[Column3].Width := SaveColumn3Width;
      ListView.Columns[Column6].Width := 0;
      SnapsCompareForm.Visible := False;
    END ELSE BEGIN
      CompareSnapImagesCheckBox.Checked := True;
      CompareSnapImages := True;
      SaveColumn2Width := ListView.Columns[Column2].Width;
      ListView.Columns[Column2].Width := 0;

      SaveColumn3Width := ListView.Columns[Column3].Width;
      ListView.Columns[Column3].Width := 0;

      ListView.Columns[Column6].Width := ListViewColumn6Width;

      SnapsCompareForm.Visible := True;

      Screen.Cursor := crHourGlass;
      Application.ProcessMessages;

      { Now do the compare }
      CompareSnapsMainProc(ListView, ListViewPathName, SameDirectory);
    END;

    { Redraw ListView without refilling it - if that happens, we lose the stars }
    Screen.Cursor := SaveCursor;
    ListView.Refresh;

    { Finally restore the state of other checkboxes }
    CompareFileSizeCheckBox.Checked := False;
    CompareFileSize := False;
    CompareFileSizeInDifferentDirectoryCheckBox.Checked := False;
    CompareFileSizeInDifferentDirectory := False;
    CompareSnapImagesInDifferentDirectoryCheckBox.Checked := False;
    CompareSnapImagesInDifferentDirectory := False;

    CompareFileSizeCheckBox.OnClick := SaveEvent1;
    CompareFileSizeInDifferentDirectoryCheckBox.OnClick := SaveEvent2;
    CompareSnapImagesCheckBox.OnClick := SaveEvent3;
    CompareSnapImagesInDifferentDirectoryCheckBox.OnClick := SaveEvent4;
  EXCEPT
    ON E : Exception DO
      ShowMessage('CompareSnapImagesCheckBoxClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { CompareSnapImagesCheckBoxClick }

PROCEDURE TExplorerForm.CompareSnapImagesInDifferentDirectoryCheckBoxClick(Sender: TObject);
CONST
  SameDirectory = True;

VAR
  SaveEvent1, SaveEvent2, SaveEvent3, SaveEvent4 : TNotifyEvent;
  SaveCursor : TCursor;

BEGIN
  TRY
    SaveCursor := Screen.Cursor;

    { First save the state of other checkboxes }
    SaveEvent1 := CompareFileSizeCheckBox.OnClick;
    SaveEvent2 := CompareFileSizeInDifferentDirectoryCheckBox.OnClick;
    SaveEvent3 := CompareSnapImagesCheckBox.OnClick;
    SaveEvent4 := CompareSnapImagesInDifferentDirectoryCheckBox.OnClick;
    CompareFileSizeCheckBox.OnClick := NIL;
    CompareFileSizeInDifferentDirectoryCheckBox.OnClick := NIL;
    CompareSnapImagesCheckBox.OnClick := NIL;
    CompareSnapImagesInDifferentDirectoryCheckBox.OnClick := NIL;

    RefreshView(Sender);

    IF CompareSnapImagesInDifferentDirectory THEN BEGIN
      CompareSnapImagesInDifferentDirectoryCheckBox.Checked := False;
      CompareSnapImagesInDifferentDirectory := False;
      ListView.Columns[Column2].Width := SaveColumn2Width;
      ListView.Columns[Column3].Width := SaveColumn3Width;
      ListView.Columns[Column6].Width := 0;
      SnapsCompareForm.Visible := False;
    END ELSE BEGIN
      { Set up the 'different' directory if necessary }
      IF DirectoryNameForCompareFileSizeInDifferentDirectory = '' THEN BEGIN
        IF InputQuery('Directory For Check File Size In Different Directory',
                      'Enter Directory For Check File Size In Different Directory',
                      DirectoryNameForCompareFileSizeInDifferentDirectory)
        THEN
          IF DirectoryNameForCompareFileSizeInDifferentDirectory = '' THEN
            ShowMessage('No directory specified')
          ELSE
            IF Copy(DirectoryNameForCompareFileSizeInDifferentDirectory, Length(DirectoryNameForCompareFileSizeInDifferentDirectory), 1) = '\' THEN
              DirectoryNameForCompareFileSizeInDifferentDirectory :=
                                              Copy(DirectoryNameForCompareFileSizeInDifferentDirectory, 1, Length(DirectoryNameForCompareFileSizeInDifferentDirectory) - 1);
      END;

      IF DirectoryNameForCompareFileSizeInDifferentDirectory <> '' THEN BEGIN
        IF NOT DirectoryExists(DirectoryNameForCompareFileSizeInDifferentDirectory) THEN BEGIN
          ShowMessage('Directory "' + DirectoryNameForCompareFileSizeInDifferentDirectory + '" cannot be found');
          DirectoryNameForCompareFileSizeInDifferentDirectory := '';
          CompareFileSizeInDifferentDirectoryCheckBox.Checked := False;
        END ELSE BEGIN
          CompareSnapImagesInDifferentDirectoryCheckBox.Checked := True;
          CompareSnapImagesInDifferentDirectory := True;
          SaveColumn2Width := ListView.Columns[Column2].Width;
          ListView.Columns[Column2].Width := 0;

          SaveColumn3Width := ListView.Columns[Column3].Width;
          ListView.Columns[Column3].Width := 0;

          ListView.Columns[Column6].Width := ListViewColumn6Width;
          SnapsCompareForm.Visible := True;

          Screen.Cursor := crHourGlass;
          Application.ProcessMessages;

          { Now do the compare }
          CompareSnapsMainProc(ListView, DirectoryNameForCompareFileSizeInDifferentDirectory + '\', NOT SameDirectory);
        END;
      END;
    END;

    { Redraw ListView without refilling it - if that happens, we lose the stars }
    Screen.Cursor := SaveCursor;
    ListView.Refresh;

    { Finally restore the state of other checkboxes }
    CompareFileSizeCheckBox.Checked := False;
    CompareFileSize := False;
    CompareFileSizeInDifferentDirectoryCheckBox.Checked := False;
    CompareFileSizeInDifferentDirectory := False;
    CompareSnapImagesCheckBox.Checked := False;
    CompareSnapImages := False;

    CompareFileSizeCheckBox.OnClick := SaveEvent1;
    CompareFileSizeInDifferentDirectoryCheckBox.OnClick := SaveEvent2;
    CompareSnapImagesCheckBox.OnClick := SaveEvent3;
    CompareSnapImagesInDifferentDirectoryCheckBox.OnClick := SaveEvent4;
  EXCEPT
    ON E : Exception DO
      ShowMessage('CompareSnapImagesCheckBoxClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { CompareSnapImagesInDifferentDirectoryCheckBoxClick }

PROCEDURE TExplorerForm.TidyUpSnapsClick(Sender: TObject);
{ Delete snaps if there's no corresponding video file. This has to cycle through the video files because they may have number suffixes that need to be stripped and
  can't therefore be found using FileSearch.
}
VAR
  DeleteCount : Integer;
  SearchRec : TSearchRec;
  TempFileName : String;
  TempNumberStr : String;

BEGIN
  IF DirectoryExists(ListViewPathName + 'Snaps') THEN BEGIN
    { First mark all the snap files as to be deleted }
    IF FindFirst(ListViewPathName + 'Snaps\*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
      REPEAT
        IF (SearchRec.Name = '.') OR (SearchRec.Name = '..') OR IsDirectory(SearchRec.Attr) THEN
          Continue;

        IF NOT RenameFile(ListViewPathName + 'Snaps\' + SearchRec.Name, ListViewPathName + 'Snaps\' + SearchRec.Name + '.d.') THEN
          ShowMessage('Cannot rename ' + ListViewPathName + 'Snaps\' + SearchRec.Name);
      UNTIL (FindNext(SearchRec) <> 0) OR Abort;
    END;

    { Now mark those snaps where there are matching video files as not to be deleted }
    IF FindFirst(ListViewPathName + '*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
      REPEAT
        IF (SearchRec.Name = '.') OR (SearchRec.Name = '..') OR IsDirectory(SearchRec.Attr) THEN
          Continue;

        RemoveNumbersAndDeletes(SearchRec.Name, TempFileName, TempNumberStr);
        TempFileName := TempFileName + '.jpg.d';
        IF FileSearch(TempFileName, ListViewPathName + 'Snaps\') <> '' THEN
          IF NOT RenameFile(ListViewPathName + 'Snaps\' + TempFileName, ListViewPathName + 'Snaps\' + Copy(TempFileName, 1, Length(TempFileName) - 2)) THEN
            ShowMessage('Cannot rename ' + ListViewPathName + 'Snaps\' + TempFileName);

      UNTIL (FindNext(SearchRec) <> 0) OR Abort;
    END;

    { And now delete those snaps marked as to be deleted }
    DeleteCount := 0;
    IF FindFirst(ListViewPathName + 'Snaps\*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
      REPEAT
        IF (SearchRec.Name = '.') OR (SearchRec.Name = '..') OR IsDirectory(SearchRec.Attr) THEN
          Continue;

        IF Pos('.d', SearchRec.Name) > 0 THEN
          IF DeleteFile(ListViewPathName + 'Snaps\' + SearchRec.Name) THEN
            Inc(DeleteCount)
          ELSE
            ShowMessage('Cannot delete ' + ListViewPathName + 'Snaps\' + SearchRec.Name);
      UNTIL (FindNext(SearchRec) <> 0) OR Abort;
    END;

    IF DeleteCount = 1 THEN
      ShowMessage('1 snap file deleted')
    ELSE
      ShowMessage(IntToStr(DeleteCount) + ' snap files deleted');
  END;
END; { TidyUpSnapsClick }

PROCEDURE TExplorerForm.MainMenuHelpAboutClick(Sender : TObject);
CONST
  CRLF : ARRAY [1..2] OF Char = #13#10;

BEGIN
  MessageDlg('FWP Explorer'
             + CRLF
             + 'Version ' + GetVersionInfoAsString + ' Build ' + GetBuildInfoAsString
             + CRLF
             + CRLF
             + 'Copyright © F.W. Pritchard 2012-13'
             + CRLF
             + 'All Rights Reserved',
             mtCustom,
             [mbOK],
             0);
END; { MainMenuHelpAboutClick }

PROCEDURE TExplorerForm.MainMenuEditUndoClick(Sender : TObject);
VAR
  Error : Boolean;
  I : Integer;

BEGIN
  TRY
    WITH SelectedFileRec DO BEGIN
      IF SelectedFile_LastRenameTo <> '' THEN BEGIN
        IF NOT RenameFile(SelectedFile_LastRenameTo, SelectedFile_LastRenameFrom) THEN
          ShowMessage('Error in undo renaming "' + SelectedFile_LastRenameTo + '" as "' + SelectedFile_LastRenameFrom + '" - ' + SysErrorMessage(GetLastError))
        ELSE BEGIN
          MainMenuEditUndo.Enabled := False;
          MainMenuEditUndo.Caption := 'Undo';
          SelectedFile_LastRenameFrom := '';
          SelectedFile_LastRenameTo := '';

          ListFiles;
        END;
      END ELSE
        IF Length(UndoFromArray) > 0 THEN BEGIN
          I := High(UndoFromArray);
          Error := False;
          WHILE (I >= 0) AND NOT Error DO BEGIN
            IF NOT RenameFile(UndoToArray[I], UndoFromArray[I]) THEN BEGIN
              ShowMessage('Could not undo move "' + UndoToArray[I] + '" to "' + UndoFromArray[I] + '" - ' + SysErrorMessage(GetLastError));
              Error := True;
            END;

            Dec(I);
          END; {WHILE}

          MainMenuEditUndo.Enabled := False;
          MainMenuEditUndo.Caption := 'Undo';
          SetLength(UndoFromArray, 0);
          SetLength(UndoToArray, 0);
          SelectedFile_LastMoveTo := '';
          ListFiles;
        END;
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('MainMenuEditUndoClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { MainMenuEditUndoClick }

PROCEDURE TExplorerForm.MainMenuFileClearArchiveDirectoryMenuItemClick(Sender: TObject);
BEGIN
  ArchiveDirectory := '';
  MainMenuFileClearArchiveDirectoryMenuItem.Enabled := False;
END; { MainMenuFileClearArchiveDirectoryClick }

PROCEDURE TExplorerForm.MainMenuFileClearCompareFileSizeDirectoryMenuItemClick(Sender: TObject);
VAR
  SaveEvent : TNotifyEvent;

BEGIN
  SaveEvent := CompareFileSizeInDifferentDirectoryCheckBox.OnClick;
  CompareFileSizeInDifferentDirectoryCheckBox.OnClick := NIL;

  DirectoryNameForCompareFileSizeInDifferentDirectory := '';
  MainMenuFileClearCompareFileSizeDirectoryMenuItem.Enabled := False;

  CompareFileSizeInDifferentDirectory := False;
  CompareFileSizeInDifferentDirectoryCheckBox.Checked := False;

  ListView.Columns[Column6].Width := 0;

  ListFiles;

  CompareFileSizeInDifferentDirectoryCheckBox.OnClick := SaveEvent;
END; { MainMenuFileClearCompareFileDirectoryClick }

PROCEDURE TExplorerForm.MainMenuFileClearMove1DirectoryMenuItemClick(Sender: TObject);
BEGIN
  MoveDirectory1 := '';
  MainMenuFileClearMove1DirectoryMenuItem.Enabled := False;
END; { MainMenuFileClearMove1DirectoryClick }

PROCEDURE TExplorerForm.MainMenuFileClearMove2DirectoryMenuItemClick(Sender: TObject);
BEGIN
  MoveDirectory2 := '';
  MainMenuFileClearMove2DirectoryMenuItem.Enabled := False;
END; { MainMenuFileClearMove2DirectoryClick }

PROCEDURE TExplorerForm.MainMenuFileClick(Sender: TObject);
BEGIN
  IF DirectoryExists(ListViewPathName + '\Snaps') THEN
    TidyUpSnaps.Enabled := True
  ELSE
    TidyUpSnaps.Enabled := False;
END; { MainMenuFileClick }

PROCEDURE DoBackup(EnableClearBackupDriveAndDirectoryMenuItem, BackupDriveAndDirectoryMenuItem : TMenuItem; MessageStr : String; VAR BackupDirectory : String;
                   AZString : String);
CONST
  AToZ = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

VAR
  BackupFileName : String;
  BackupIncrement : Integer;
  BackupIncrementStr : String;
  CopyCount : Integer;
  DirectoryFound : Boolean;
  FileToBackup : Boolean;
  FileToBeRenamed : Boolean;
  OriginalFileName : String;
  SearchRec, BackupSearchRec, BackupSearchRec2 : TSearchRec;
  SuffixDelimiter : Integer;
  TempBackupFileName : String;
  TempNumberStr : String;
  TotalFileCount : Integer;
  UniqueFileNameFound : Boolean;

BEGIN
  TRY
    WITH ExplorerForm DO BEGIN
      IF BackupDirectory = '' THEN BEGIN
        IF MessageDlg(MessageStr + '?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrNo THEN
          Exit;
      END ELSE BEGIN
        IF MessageDlg(MessageStr + BackupDirectory + '?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrNo THEN
          Exit;
      END;

      IF GetDirectory(BackupDirectory) THEN BEGIN
        { store the drive and path name as this might be used elsewhere }
        BackupDriveAndPath := ExtractFilePath(BackupDirectory);

        CopyCount := 0;
        ProgressBar.Visible := True;
        EnableClearBackupDriveAndDirectoryMenuItem.Enabled := True;

        TotalFileCount := 0;
        IF FindFirst(ListViewPathName + '*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
          REPEAT
            IF AZString = 'A-M' THEN
              IF CharInSet(SearchRec.Name[1], ['N'..'Z', 'n'..'z']) THEN
                Continue;

            IF AZString = 'N-Z' THEN
              IF NOT CharInSet(SearchRec.Name[1], ['N'..'Z', 'n'..'z']) THEN
                Continue;

            { Omit files that are marked as to be deleted }
            IF (Copy(SearchRec.Name, Length(SearchRec.Name) - 1, 2) <> '.d') AND (Copy(SearchRec.Name, Length(SearchRec.Name) - 1, 2) <> ' d') THEN
              Inc(TotalFileCount);

          { loop until no more files are found }
          UNTIL (FindNext(SearchRec) <> 0);
        END;

        IF FindFirst(ListViewPathName + '*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
          ProgressBar.Min := 0;
          ProgressBar.Max := TotalFileCount;
          ProgressBar.Position := 1;
          REPEAT
            ProgressBar.StepIt;

            IF (SearchRec.Name = '.') OR (SearchRec.Name = '..') OR DirectoryExists(ListViewPathname + SearchRec.Name) THEN
              Continue;

            { Omit files that are marked as to be deleted }
            IF (Copy(SearchRec.Name, Length(SearchRec.Name) - 1, 2) = '.d') OR (Copy(SearchRec.Name, Length(SearchRec.Name) - 1, 2) = ' d') THEN
              Continue;

            IF AZString = 'A-M' THEN
              IF CharInSet(SearchRec.Name[1], ['N'..'Z', 'n'..'z']) THEN
                Continue;

            IF AZString = 'N-Z' THEN
              IF NOT CharInSet(SearchRec.Name[1], ['N'..'Z', 'n'..'z']) THEN
                Continue;

            { Remove numbers or we may copy the same file multiple times }
            RemoveNumbersAndDeletes(SearchRec.Name, OriginalFileName, TempNumberStr);

            { See if the same file exists in the backup location }
            FileToBackup := False;
            IF FindFirst(BackupDirectory + '\*' + OriginalFileName + '.???', FaAnyFile, BackupSearchRec) = 0 THEN BEGIN
              FileToBackup := True;
              REPEAT
                IF (BackupSearchRec.Name = '.') OR (BackupSearchRec.Name = '..') OR IsDirectory(BackupSearchRec.Attr) THEN
                  Continue;

                BackupFileName := BackupSearchRec.Name;

                IF SearchRec.Size = BackupSearchRec.Size THEN BEGIN
                  { no point in copying an identical file }
                  Caption := 'Not copying ' + OriginalFileName + ' - duplicate filename';
                  ExplorerMemo.Lines.Add(Caption);
                  FileToBackup := False;
                END;

              { loop until no more files are found }
              UNTIL (FindNext(BackupSearchRec) <> 0) OR (FileToBackup = False);
            END;

            IF FileToBackup THEN BEGIN
              { First remove any A-Z suffix }
              BackupIncrement := 1;
              UniqueFileNameFound := False;
              WHILE (BackupIncrement <= 26) AND NOT UniqueFileNameFound DO BEGIN
                IF Copy(BackupFileName, Length(BackupFileName) - 1, 2) = '.' + AToZ[BackupIncrement] THEN BEGIN
                  BackupFileName := Copy(BackupFileName, 1, Length(BackupFileName) - 2);
                  UniqueFileNameFound := True;
                END ELSE
                  Inc(BackupIncrement);
              END; {WHILE}

              { See if we need to add a suffix to distinguish this file from another of the same name }
              BackupIncrement := 1;
              UniqueFileNameFound := False;
              TempBackupFileName := BackupFileName;
              WHILE (BackupIncrement <= 26) AND NOT UniqueFileNameFound DO BEGIN
                TempBackupFileName := BackupFileName + '.' + AToZ[BackupIncrement];
                IF FileExists(BackupDirectory + '\' + TempBackupFileName) THEN
                  ExplorerMemo.Lines.Add(BackupDirectory + '\' + TempBackupFileName + ' already exists')
                ELSE BEGIN
                  ExplorerMemo.Lines.Add(BackupDirectory + '\' + TempBackupFileName + ' is unique');
                  UniqueFileNameFound := True;
                  BackupFileName := TempBackupFileName;
                END;
                Inc(BackupIncrement);
              END; {WHILE}

              StopButton.Caption := 'Stop Copying';
              StopButton.Visible := True;
              TRY
                Caption := 'Copying ' + ListViewPathName + OriginalFileName + 'to ' + BackupDirectory + '\' + BackupFileName;
                TFile.Copy(ListViewPathName + SearchRec.Name, BackupDirectory + '\' + BackupFileName);
                Inc(CopyCount);

                Application.ProcessMessages;
              EXCEPT
                ON E : Exception DO BEGIN
                  ExplorerMemo.Lines.Add(ListViewPathName + SearchRec.Name + ': filecopy error to ' + BackupDirectory + '\' + BackupFileName + ' :');
                  MessageDlg(ListViewPathName + SearchRec.Name + ': filecopy error to ' + BackupDirectory + '\' + BackupFileName + ': ' + E.Message, mtError, [mbOK], 0);
                END;
              END;
              Caption := ExplorerForm.Caption + ' ' + BackupFileName;
            END;

          { Loop until no more files are found }
          UNTIL (FindNext(SearchRec) <> 0) OR Abort;

          Caption := IntToStr(CopyCount) + ' files copied';
          ProgressBar.Visible := False;
          Abort := False;
          StopButton.Visible := False;
          MakeSound;
        END;
      END;
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('DoBackup: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { DoBackup }

PROCEDURE SetUpBackupAToZMenuItems(CreatingBackup : Boolean);
BEGIN
  WITH ExplorerForm DO BEGIN
    IF BackupAToZDirectory <> '' THEN BEGIN
      IF CreatingBackup THEN
        DoBackup(MainMenuFileClearBackupAToZDirectoryMenuItem, MainMenuFileBackupAToZMenuItem, 'Backup A-Z To ', BackupAToZDirectory, 'A-Z');
      MainMenuFileBackupAToZMenuItem.Caption := 'Backup A-Z To ' + BackupAToZDirectory;
      TreeViewBackupAToZMenuItemPopup.Caption := 'Backup A-Z To ' + BackupAToZDirectory;
    END ELSE BEGIN
      IF CreatingBackup THEN
        DoBackup(MainMenuFileClearBackupAToZDirectoryMenuItem, MainMenuFileBackupAToZMenuItem, 'Backup A-Z', BackupAToZDirectory, 'A-Z');
      MainMenuFileBackupAToZMenuItem.Caption := 'Backup A-Z';
      TreeViewBackupAToZMenuItemPopup.Caption := 'Backup A-Z';
    END;
  END; {WITH}
END; { SetUpBackupAToZMenuItems }

PROCEDURE SetUpBackupAToMMenuItems(CreatingBackup : Boolean);
BEGIN
  WITH ExplorerForm DO BEGIN
    IF BackupAToMDirectory <> '' THEN BEGIN
      IF CreatingBackup THEN
        DoBackup(MainMenuFileClearBackupAToMDirectoryMenuItem, MainMenuFileBackupAToMMenuItem, 'Backup A-M To ', BackupAToMDirectory, 'A-M');
      MainMenuFileBackupAToMMenuItem.Caption := 'Backup A-M To ' + BackupAToMDirectory;
      TreeViewBackupAToMMenuItemPopup.Caption := 'Backup A-M To ' + BackupAToMDirectory;
    END ELSE BEGIN
      IF CreatingBackup THEN
        DoBackup(MainMenuFileClearBackupAToMDirectoryMenuItem, MainMenuFileBackupAToMMenuItem, 'Backup A-M', BackupAToMDirectory, 'A-M');
      MainMenuFileBackupAToMMenuItem.Caption := 'Backup A-M';
      TreeViewBackupAToMMenuItemPopup.Caption := 'Backup A-M';
    END;
  END; {WITH}
END; { SetUpBackupAToMMenuItems }

PROCEDURE SetUpBackupNToZMenuItems(CreatingBackup : Boolean);
BEGIN
  WITH ExplorerForm DO BEGIN
    IF BackupNToZDirectory <> '' THEN BEGIN
      IF CreatingBackup THEN
        DoBackup(MainMenuFileClearBackupNToZDirectoryMenuItem, MainMenuFileBackupNToZMenuItem, 'Backup N-Z To ', BackupNToZDirectory, 'N-Z');
      MainMenuFileBackupNToZMenuItem.Caption := 'Backup N-Z To ' + BackupNToZDirectory;
      TreeViewBackupNToZMenuItemPopup.Caption := 'Backup N-Z To ' + BackupNToZDirectory;
    END ELSE BEGIN
      IF CreatingBackup THEN
        DoBackup(MainMenuFileClearBackupNToZDirectoryMenuItem, MainMenuFileBackupNToZMenuItem, 'Backup N-Z', BackupNToZDirectory, 'N-Z');
      MainMenuFileBackupNToZMenuItem.Caption := 'Backup N-Z';
      TreeViewBackupNToZMenuItemPopup.Caption := 'Backup N-Z';
    END;
  END; {WITH}
END; { SetUpBackupNToZMenuItems }

PROCEDURE TExplorerForm.MainMenuFileBackupAToZMenuItemClick(Sender: TObject);
BEGIN
  SetUpBackupAToZMenuItems(DoBackupNow);
END; { MainMenuFileBackupAToZMenuItemClick }

PROCEDURE TExplorerForm.MainMenuFileBackupAToMMenuItemClick(Sender: TObject);
BEGIN
  SetUpBackupAToMMenuItems(DoBackupNow);
END; { MainMenuFileBackupAToMMenuItemClick }

PROCEDURE TExplorerForm.MainMenuFileBackupNToZMenuItemClick(Sender: TObject);
BEGIN
  SetUpBackupNToZMenuItems(DoBackupNow);
END; { MainMenuFileBackupNtoZMenuItemClick }

PROCEDURE TExplorerForm.MainMenuFileExitClick(Sender: TObject);
BEGIN
//   Application.terminate;
//   ExplorerForm.Close;
END; { MainMenuFileExitClick }

PROCEDURE TExplorerForm.MainMenuFileNewDirectoryClick(Sender: TObject);
VAR
  DirectoryName : String;

BEGIN
  IF NOT InputQuery('New Directory', 'Enter directory name', DirectoryName) THEN
    ShowMessage('Directory creation cancelled')
  ELSE BEGIN
    IF DirectoryExists(ListViewPathName + DirectoryName) THEN
      ShowMessage('Directory "' + ListViewPathName + DirectoryName + '" already exists')
    ELSE
      IF CreateDir(ListViewPathName + DirectoryName) THEN
        ListFiles
      ELSE
        ShowMessage('Directory "' + ListViewPathName + DirectoryName + '" creation failed');
  END;
END; { MainMenuFileNewDirectoryClick }

PROCEDURE TExplorerForm.MainMenuFileSetUpSuffixesClick(Sender: TObject);
BEGIN
  IF SetUpSuffixesMode THEN BEGIN
    MainMenuFileSetUpSuffixes.Checked := False;
    SetUpSuffixesMode := False;
  END ELSE BEGIN
    MainMenuFileSetUpSuffixes.Checked := True;
    SetUpSuffixesMode := True;
  END;
END; { MainMenuFileSetUpSuffixesClick }

PROCEDURE TExplorerForm.MainMenuFileDeleteOnAllDrivesClick(Sender: TObject);
BEGIN
  IF FileDeleteOnAllDrivesMode THEN BEGIN
    MainmenuFileDeleteOnAllDrives.Checked := False;
    FileDeleteOnAllDrivesMode := False;
  END ELSE BEGIN
    MainmenuFileDeleteOnAllDrives.Checked := True;
    FileDeleteOnAllDrivesMode := True;
  END;
END; procedure TExplorerForm.MainMenuFileDrawItem(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; Selected: Boolean);
begin

end;

{ MainMenuFileDeleteOnAllDrivesClick }

PROCEDURE MarkDeletedFilesOnBackupDrives(TempBackupDirectory : String);
{ See if the selfsame file exists on a backup drive and mark it to be deleted too - compare name and size to find a match }
VAR
  SearchRec, BackupSearchRec : TSearchRec;
  TempFileName : String;
  TempNumberStr : String;

BEGIN
  WITH ExplorerForm DO BEGIN
    IF FindFirst(ListViewPathName + '*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
      ProgressBar.Min := 0;
      ProgressBar.Max := TotalFileCount;
      ProgressBar.Position := 1;
      REPEAT
        ProgressBar.StepIt;

        IF (SearchRec.Name = '.') OR (SearchRec.Name = '..') OR DirectoryExists(ListViewPathname + SearchRec.Name) THEN
          Continue;

        { Only look at files that are marked as to be deleted }
        IF (Copy(SearchRec.Name, Length(SearchRec.Name) - 1, 2) <> '.d') AND (Copy(SearchRec.Name, Length(SearchRec.Name) - 1, 2) <> ' d') THEN
          Continue;

        { Remove numbers or we may copy the same file multiple times }
        RemoveNumbersAndDeletes(SearchRec.Name, TempFileName, TempNumberStr);

        { See if the same file exists in the backup location }
        IF FindFirst(TempBackupDirectory + '\*' + TempFileName + '.???', FaAnyFile, BackupSearchRec) = 0 THEN BEGIN
          REPEAT
            IF (BackupSearchRec.Name = '.') OR (BackupSearchRec.Name = '..') OR DirectoryExists(BackupSearchRec.Name) THEN
              Continue;

            IF BackupSearchRec.Name = TempFileName THEN
              IF (Int64(SearchRec.FindData.nFileSizeHigh) SHL Int64(32) + Int64(SearchRec.FindData.nFileSizeLow)) =
                                                                (Int64(BackupSearchRec.FindData.nFileSizeHigh) SHL Int64(32) + Int64(BackupSearchRec.FindData.nFileSizeLow))
              THEN
                { we've got a match - add the 'd' to it }
                IF NOT RenameFile(TempBackupDirectory + '\' + BackupSearchRec.Name, TempBackupDirectory + '\' + BackupSearchRec.Name + '.d') THEN
                  ShowMessage('Error ' + IntToStr(GetLastError) + ' : could not rename file "' + BackupSearchRec.Name + '" - ' + SysErrorMessage(GetLastError));


          { loop until no more files are found }
          UNTIL (FindNext(BackupSearchRec) <> 0);
        END;

      { Loop until no more files are found }
      UNTIL (FindNext(SearchRec) <> 0) OR Abort;

      ProgressBar.Visible := False;
      Abort := False;
      StopButton.Visible := False;
      MakeSound;
    END;
  END; {WITH}
END; { MarkDeletedFilesOnBackupDrives }

PROCEDURE RemoveUnwantedSnapsFiles
;
VAR
  SearchRec : TSearchRec;
  TempDirectory : String;

BEGIN
  WITH ExplorerForm DO BEGIN
    IF GetDirectory(TempDirectory) THEN BEGIN
      IF FindFirst(TempDirectory + '\*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
        ProgressBar.Min := 0;
        ProgressBar.Max := TotalFileCount;
        ProgressBar.Position := 1;
        REPEAT
          ProgressBar.StepIt;

          IF (SearchRec.Name = '.') OR (SearchRec.Name = '..') OR DirectoryExists(ListViewPathname + SearchRec.Name) THEN
            Continue;

          { Only look at files that are marked as to be deleted }
          IF (Copy(SearchRec.Name, Length(SearchRec.Name) - 4, 5) = '0.jpg')
          OR (Copy(SearchRec.Name, Length(SearchRec.Name) - 4, 5) = '1.jpg')
          OR (Copy(SearchRec.Name, Length(SearchRec.Name) - 4, 5) = '2.jpg')
          OR (Copy(SearchRec.Name, Length(SearchRec.Name) - 4, 5) = '3.jpg')
          OR (Copy(SearchRec.Name, Length(SearchRec.Name) - 4, 5) = '4.jpg')
          OR (Copy(SearchRec.Name, Length(SearchRec.Name) - 4, 5) = '5.jpg')
          OR (Copy(SearchRec.Name, Length(SearchRec.Name) - 4, 5) = '6.jpg')
          OR (Copy(SearchRec.Name, Length(SearchRec.Name) - 4, 5) = '7.jpg')
          OR (Copy(SearchRec.Name, Length(SearchRec.Name) - 4, 5) = '8.jpg')
          OR (Copy(SearchRec.Name, Length(SearchRec.Name) - 4, 5) = '9.jpg')
          THEN
            RenameFile(TempDirectory + '\' + SearchRec.Name, TempDirectory + '\' + SearchRec.Name + '.xxx');

        { Loop until no more files are found }
        UNTIL (FindNext(SearchRec) <> 0) OR Abort;

        ProgressBar.Visible := False;
        Abort := False;
        StopButton.Visible := False;
        MakeSound;
      END;
    END; {WITH}
  END;
END; { RemoveUnwantedSnapsFiles }

PROCEDURE TExplorerForm.MainMenuFileMarkDeletedFilesOnBackupDrivesClick(Sender: TObject);
{ See if the selfsame file exists on a backup drive and mark it to be deleted too *** }
BEGIN
  IF BackupAToZDirectory <> '' THEN
    MarkDeletedFilesOnBackupDrives(BackupAToZDirectory);
  IF BackupAToMDirectory <> '' THEN
    MarkDeletedFilesOnBackupDrives(BackupAToMDirectory);
  IF BackupNToZDirectory <> '' THEN
    MarkDeletedFilesOnBackupDrives(BackupNToZDirectory);
END; { MainMenuFileMarkDeletedFilesOnBackupDrivesClick }

PROCEDURE TExplorerForm.MainMenuViewShowAttributesClick(Sender: TObject);
BEGIN
  IF ShowAttributesMode THEN BEGIN
    MainMenuViewShowAttributes.Checked := False;
    ShowAttributesMode := False;

    ListView.Columns[Column5].Width := 0
  END ELSE BEGIN
    MainMenuViewShowAttributes.Checked := True;
    ShowAttributesMode := True;

    ListView.Columns[Column5].Width := ListViewColumn5Width;
  END;
END; { MainMenuViewShowAttributesClick }

PROCEDURE TExplorerForm.MainMenuViewRefreshClick(Sender : TObject);
BEGIN
  RefreshView(Sender);
END; { MainMenuViewRefreshClick }

PROCEDURE TExplorerForm.MainMenuViewShowDirectoriesClick(Sender: TObject);
BEGIN
  IF ShowDirectoriesMode THEN BEGIN
    ShowDirectoriesMode := False;
    MainMenuViewShowDirectories.Checked := False;
  END ELSE BEGIN
    ShowDirectoriesMode := True;
    MainMenuViewShowDirectories.Checked := True;
  END;

  ListFiles;
END; { MainMenuViewShowDirectoriesClick }

PROCEDURE TExplorerForm.UserSetIncrementChange(Sender: TObject);
BEGIN
  IF UserIncrement <> StrToInt(UserSetIncrement.Text) THEN
    UserIncrement := StrToInt(UserSetIncrement.Text);
END; { UserSetIncrementChange }

PROCEDURE TExplorerForm.TestCheckBoxClick(Sender: TObject);
BEGIN
  IF TestMode THEN BEGIN
    TestCheckBox.Checked := False;
    TestMode := False;
  END ELSE BEGIN
    TestCheckBox.Checked := True;
    TestMode := True;
  END;
//
//  ListFiles;
END; { TestCheckBoxClick }

//PROCEDURE TExplorerForm.ClearDirectoryNameForCompareFileSizeInDifferentDirectoryCheckBoxClick(Sender: TObject);
//VAR
//  SaveEvent : TNotifyEvent;
//
//BEGIN
//  SaveEvent := CompareFileSizeInDifferentDirectoryCheckBox.OnClick;
//  CompareFileSizeInDifferentDirectoryCheckBox.OnClick := NIL;
//
//  IF MainMenuFileClearCompareFileSizeDirectoryMenuItem.Checked THEN BEGIN
//    CompareFileSizeInDifferentDirectoryCheckBox.Checked := False;
//    CompareFileSizeInDifferentDirectory := False;
//    ListFiles;
//
//    DirectoryNameForCompareFileSizeInDifferentDirectory := '';
//    MainMenuFileClearCompareFileSizeDirectoryMenuItem.Checked := False;
//    MainMenuFileClearCompareFileSizeDirectoryMenuItem.Enabled := False;
//  END;
//
//  CompareFileSizeInDifferentDirectoryCheckBox.OnClick := SaveEvent;
//END; { ClearDirectoryNameForCompareFileSizeInDifferentDirectoryCheckBoxClick }

PROCEDURE RepopulateSaveFilesList;
VAR
  SearchRec : TSearchRec;

BEGIN
  SaveFilesList := '';
  IF FindFirst(ListViewPathName + '*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
    REPEAT
      IF (SearchRec.Name = '.') OR (SearchRec.Name = '..') THEN
        Continue
      ELSE
        IF NOT IsDirectory(SearchRec.Attr) THEN
          SaveFilesList := SaveFilesList + SearchRec.Name;

    { loop until no more files are found }
    UNTIL FindNext(SearchRec) <> 0;
  END;
END; { RepopulateSaveFilesList }

FUNCTION DeleteFileToRecycleBin(FileOrDirectory : DirectoryOrFileType; TempFileName : String) : Boolean;
VAR
  Fos : TSHFileOpStruct;
  TypeOfFile : FileType;

BEGIN
  Result := False;

  TRY
    FillChar(Fos, SizeOf(Fos), 0);
    WITH Fos DO BEGIN
      Wnd := 0;
      wFunc  := FO_DELETE;
      pFrom  := PChar(TempFileName + #0 + #0);
      fFlags := FOF_ALLOWUNDO OR FOF_NOCONFIRMATION OR FOF_SILENT;
    END; {WITH}

    Result := (0 = ShFileOperation(Fos));
    IF Result = True THEN BEGIN
      FileDeleted := True;
      { Remove the appropriate ListItem and repopulate SaveFilesList }
      IF FileOrDirectory <> DirectoryType THEN
        ExplorerForm.ListView.Items[LastSelectedItemIndex].Delete;
      RepopulateSaveFilesList;

      Dec(TotalFileCount);
      IF FileTypeSuffixFound(TempFileName, TypeOfFile) AND (TypeOfFile = VideoFile) THEN BEGIN
        Dec(VideoFileCount);
        DrawExplorerFormCaption;
      END;
    END;
  EXCEPT
    ON E : Exception DO
      ShowMessage('DeleteFileToRecycleBin: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { DeleteFileToRecycleBin }

FUNCTION DeleteFilePermanently(TempFileName : String) : Boolean;
{ Delete a file without sending it to the Recycle Bin }
VAR
  TypeOfFile : FileType;

BEGIN
  Result := False;

  TRY
    IF NOT DeleteFile(TempFilename) THEN
      ShowMessage('Error ' + IntToStr(GetLastError) + ' in deleting file ''' + TempFileName + ''' - ' + SysErrorMessage(GetLastError))
    ELSE BEGIN
      { set a flag to indicate we should reposition the list view }
      FileDeleted := True;
      Result := True;

      { Remove the appropriate ListItem and repopulate SaveFilesList }
      ExplorerForm.ListView.Items[LastSelectedItemIndex].Delete;
      RepopulateSaveFilesList;

      Dec(TotalFileCount);
      IF FileTypeSuffixFound(TempFileName, TypeOfFile) AND (TypeOfFile = VideoFile) THEN BEGIN
        Dec(VideoFileCount);
        DrawExplorerFormCaption;
      END;
    END;
  EXCEPT
    ON E : Exception DO
      ShowMessage('DeleteFilePermanently: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { DeleteFilePermanently }

FUNCTION SnapsFileNumberRename(FileName, NewNumberStr : String) : Boolean;
{ Routine for snaps file renaming }
VAR
  OldNumberStr : String;
  TypeOfFile : FileType;

BEGIN
  Result := False;

  TRY
    WITH ExplorerForm DO BEGIN
      IF NOT GetFileNumberSuffixFromSnapFile(FileName, OldNumberStr) THEN
        ShowMessage('No snaps file found to match "' + FileName + '"')
      ELSE BEGIN
        IF NewNumberStr = '0' THEN
          NewNumberStr := '';

        IF NOT RenameFile(ListViewPathName + 'Snaps\' + FileName + '.jpg.' + OldNumberStr, ListViewPathName + 'Snaps\' + FileName + '.jpg.' + NewNumberStr) THEN
          ShowMessage('Error ' + IntToStr(GetLastError) + ' in renaming file ''' + ListViewPathName + 'Snaps\' + FileName + '.jpg.' + OldNumberStr
                      + ''' to ''' + ListViewPathName + 'Snaps\' + FileName + '.jpg.' + NewNumberStr)
        ELSE BEGIN
          IF ListView.Items.Count > 0 THEN BEGIN
            { also rename the appropriate ListItem and then repopulate the SaveFilesList }
            IF NewNumberStr = '' THEN
              ListView.Items[LastSelectedItemIndex].Caption := FileName
            ELSE
              ListView.Items[LastSelectedItemIndex].Caption := FileName + '.' + NewNumberStr;

            IF NOT FileTypeSuffixFound(FileName, TypeOfFile) THEN
              ListView.Items[LastSelectedItemIndex].SubItems[2] := '-------'
            ELSE BEGIN
              CASE TypeOfFile OF
                VideoFile:
                  ListView.Items[LastSelectedItemIndex].SubItems[2] := 'Video.' + NewNumberStr;
                DatabaseFile:
                  ListView.Items[LastSelectedItemIndex].SubItems[2] := 'Database.' + NewNumberStr;
              ELSE {CASE}
                ListView.Items[LastSelectedItemIndex].SubItems[2] := '-------';
              END; {CASE}
            END;
          END;

          Result := True;
          RepopulateSaveFilesList;
          ListFiles;
        END;
      END;
    END;
  EXCEPT
    ON E : Exception DO
      ShowMessage('FileNameRename: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END;
END; { SnapsFileNumberRename }

FUNCTION FileRenameProcMain(NewPathName, NewFileName : String) : Boolean;
{ Main routine for file renaming }
VAR
  NumberStr : String;
  OldSnapFileName : String;

BEGIN
  Result := False;

  TRY
    WITH SelectedFileRec DO BEGIN
      WITH ExplorerForm DO BEGIN
        IF NOT RenameFile(ListViewPathName + SelectedFile_Name, NewPathName + NewFileName) THEN
          ShowMessage('Error ' + IntToStr(GetLastError) + ' in renaming file ''' + ListViewPathName + SelectedFile_Name
                      + ''' to ''' + NewPathName + NewFileName + ''' - ' + SysErrorMessage(GetLastError))
        ELSE BEGIN
          MainMenuEditUndo.Enabled := True;
          MainMenuEditUndo.Caption := 'Undo last rename';

          SelectedFile_LastRenameTo := NewPathName + NewFileName;
          SelectedFile_LastRenameFrom := ListViewPathname + SelectedFile_Name;

          OldSnapFileName := SelectedFile_Name;
          SelectedFile_Name := NewFileName;
          LastSelectedFileName := SelectedFile_Name;
          FileRenamed := True;

          IF ListView.Items.Count > 0 THEN BEGIN
            { Rename the appropriate ListItem and then repopulate the SaveFilesList }
            IF NewPathName <> ListViewPathname THEN
              { the file has been moved, not just renamed }
              ListView.Items[LastSelectedItemIndex].Delete
            ELSE BEGIN
              ListView.Items[LastSelectedItemIndex].Caption := NewFileName;
              ListView.Items[LastSelectedItemIndex].SubItems[2] := '------';

              IF ExplorerForm.Visible THEN
                ListView.SetFocus;
            END;
          END;

          { The snap file needs to be renamed too }
          GetFileNumberSuffixFromSnapFile(SelectedFile_Name, NumberStr);
          IF NOT RenameFile(ListViewPathName + 'Snaps\' + OldSnapFileName + '.jpg.' + NumberStr, ListViewPathName + 'Snaps\' + NewFileName + '.jpg.' + NumberStr) THEN
            ShowMessage('Error ' + IntToStr(GetLastError) + ' in renaming file ''' + ListViewPathName + 'Snaps\' + OldSnapFileName + '.jpg.' + NumberStr
                        + ''' to ''' + ListViewPathName + 'Snaps\' + NewFileName + '.jpg.' + NumberStr);

          Result := True;
          RepopulateSaveFilesList;
          ListFiles;
        END;
      END; {WITH}
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('FileRenameProcMain: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END;
END; { FileRenameProcMain }

FUNCTION FileRenameProc{1}(NewFileName : String) : Boolean; Overload;
{ Calls the main routine for file renaming }
BEGIN
  Result := FileRenameProcMain(ListViewPathName, NewFileName);
END; { FileRenameProc-1 }

FUNCTION FileRenameProc{2}(NewPathName, NewFileName : String; FileMove : Boolean) : Boolean; Overload;
{ Calls the main routine for file renaming - this version is only used for archiving or moving. FileMove is only there to add a third parameter to distinguish the different
  possible parameter strings
}
BEGIN
  Result := FileRenameProcMain(NewPathName, NewFileName);
END; { FileRenameProc-2 }

PROCEDURE TExplorerForm.ListViewFileNameEditEnter(Sender : TObject);
VAR
  SaveIdleState : Boolean;

BEGIN
  SaveIdleState := IdleState;
  IdleState := False;

  { this is added to get rid of the annoying beep }
  IF FWPMode THEN
    ListViewFileNameEdit.ReadOnly := False;

  IdleState := SaveIdleState;
END; { FileNameEditEnter }

PROCEDURE TExplorerForm.ListViewFileNameEditExit(Sender : TObject);
VAR
  SaveIdleState : Boolean;

BEGIN
  SaveIdleState := IdleState;

  { this is added to get rid of the annoying beep }
  IF FWPMode THEN
    ListViewFileNameEdit.ReadOnly := True;

  IdleState := SaveIdleState;
END; { FileNameEditExit }

PROCEDURE TExplorerForm.ListViewFileNameEditKeyDown(Sender : TObject; VAR Key: Word; ShiftState: TShiftState);
BEGIN
  WITH SelectedFileRec DO BEGIN
    IF Key = vk_Return THEN BEGIN
      IF ListViewFileNameEdit.Text = SelectedFile_Name THEN
        ShowMessage('File name is the same')
      ELSE
        FileRenameProc(ListViewFileNameEdit.Text);
    END;

    { Store the filename, changed or not, to make sure it's kept focused }
    LastSelectedFileName := SelectedFile_Name;

    IF (Key = vk_Escape) OR (Key = vk_Return) THEN BEGIN
      ListViewEditPanel.Visible := False;

      ListViewFileNameEdit.Visible := False;
      ListViewFileNameEdit.Text := '';

      ListViewFileNameNumbersEdit.Text := '';
      ListViewFileNameNumbersEdit.Visible := False;

      Editing := False;

      ListFiles;
    END;
  END; {WITH}
END; { FileNameEditKeyDown }

PROCEDURE TExplorerForm.ListViewFileNameEditKeyPress(Sender: TObject; VAR Key: Char);
BEGIN
END; { FileNameEditKeyPress }

PROCEDURE TExplorerForm.ListViewFileNameNumbersEditEnter(Sender : TObject);
BEGIN
  { this is added to get rid of the annoying beep }
  IF FWPMode THEN
    ListViewFileNameNumbersEdit.ReadOnly := False;
  ListViewFileNameNumbersEdit.SetFocus;
END; { FileNameNumbersEditEnter }

PROCEDURE TExplorerForm.ListViewFileNameNumbersEditExit(Sender : TObject);
BEGIN
  { this is added to get rid of the annoying beep }
  IF FWPMode THEN
    ListViewFileNameNumbersEdit.ReadOnly := True;
END; { FileNameNumbersEditExit }

PROCEDURE TExplorerForm.ListViewFileNameNumbersEditKeyDown(Sender : TObject; VAR Key: Word; ShiftState: TShiftState);
VAR
  SaveIdleState : Boolean;

BEGIN
  WITH SelectedFileRec DO BEGIN
    SaveIdleState := IdleState;
    IdleState := False;

    IF Key = vk_Return THEN BEGIN
      IF ListViewFileNameNumbersEdit.Text = '' THEN
        { do nothing }
      ELSE BEGIN
        IF ListViewFileNameNumbersEdit.Text = '0' THEN
          { remove the numbers }
          FileRenameProc(SelectedFile_NameWithoutNumbers)
        ELSE BEGIN
          IF SelectedFile_NameWithoutNumbers + '.' + ListViewFileNameNumbersEdit.Text = SelectedFile_Name THEN
            ShowMessage('File name is the same')
          ELSE
            FileRenameProc(SelectedFile_NameWithoutNumbers + '.' + ListViewFileNameNumbersEdit.Text);
        END;
      END;
    END;

    { Store the filename, changed or not, to make sure it's kept focused }
    LastSelectedFileName := SelectedFile_Name;

    IF (Key = vk_Escape) OR (Key = vk_Return) THEN BEGIN
      ListViewEditPanel.Visible := False;

      ListViewFileNameNumbersEdit.Visible := False;
      ListViewFileNameNumbersEdit.Text := '';

      ListViewFileNameEdit.Visible := False;
      ListViewFileNameEdit.Text := '';

      Editing := False;

//      ListViewEditPanel.SetFocus;
      ListFiles;
    END;

    IdleState := SaveIdleState;
  END; {WITH}
END;{ FileNameNumbersEditKeyDown }

PROCEDURE FileNameNumbersEditKeyPress(VAR Key: Char);
{ Only permits numeric key presses in the lower edit box }
BEGIN
  CASE Key OF
    '0'..'9', Chr(vk_Back):
  ELSE
    Key := #0;
  END; {CASE}
END; { FileNameNumbersEditKeyPress }

PROCEDURE TExplorerForm.ListViewFileNameNumbersEditKeyPress(Sender: TObject; VAR Key: Char);
{ Only permits numeric key presses in the lower edit box }
BEGIN
  FileNameNumbersEditKeyPress(Key);
END; { FileNameNumbersEditKeyPress }

PROCEDURE TExplorerForm.HourGlassTimerTimer(Sender: TObject);
BEGIN
  Inc(HourGlassTimerTicks);
  IF HourGlassTimerTicks = 2 THEN BEGIN
    HourGlassTimerTicks := 0;
    HourGlassTimer.Enabled := False;
    ListFiles;
  END;
END; { HourGlassTimerTimer }

function GetFileCreationTime(CONST TempFilename: String): TDateTime;
// Based on IDGlobal.pas GetFileCreationTime
var
   Data: TWin32FindData;
   H: THandle;
   FT: TFileTime;
   I: Integer;
begin
   H := FindFirstFile(PCHAR(TempFilename), Data);
   if H <> INVALID_HANDLE_VALUE then begin
     try
       FileTimeToLocalFileTime(Data.ftCreationTime, FT);
       FileTimeToDosDateTime(FT, LongRec(I).Hi, LongRec(I).Lo);
       Result := FileDateToDateTime(I);
     finally
       Windows.FindClose(H);
     end
   end else begin
     Result := 0;
   end;
end;// GetFileCreationTime -----------------

function FileSetCreationDate(Handle: Integer; Age: Integer): Integer;
// Based on SysUtiles.FileSetDate
var
   LocalFileTime, FileTime: TFileTime;

begin
   Result := 0;
   IF DosDateTimeToFileTime(LongRec(Age).Hi, LongRec(Age).Lo, LocalFileTime)
   AND LocalFileTimeToFileTime(LocalFileTime, FileTime)
   AND SetFileTime(Handle, @FileTime, nil, nil)
   THEN
     Exit;
   Result := GetLastError;
end;// FileSetCreationDate

function SetFileCreationTime(CONST TempFileName: String; Age: Integer): Integer;
var
   f: THandle;
begin
   F := FileOpen(TempFileName, fmOpenWrite);
   if F = THandle(-1) then BEGIN
     Result := GetLastError;
     ShowMessage(SysErrorMessage(Result));
   END else
   begin
     Result := FileSetCreationDate(f, Age);
     ShowMessage(SysErrorMessage(Result));
     FileClose(f);
   end;
end;// SetFileCreationTime

procedure SetFileDateTime(FName: string; FTime: TDateTime; CreationNum : Integer);
VAR
  NewModDT: TDateTime;
  SysTime: TSystemTime;
  FNewModTime: TFileTime;
  h: Integer;

BEGIN
  IF CreationNum = 1 THEN BEGIN
    NewModDT := FTime;
    //**********************************************
    DateTimeToSystemTime(NewModDT, SysTime);
    SystemTimeToFileTime(SysTime, FNewModTime);
    LocalFileTimeToFileTime(FNewModTime, FNewModTime);
    //**********************************************
    h:=FileOpen(FName,fmOpenReadWrite or fmShareCompat);
    SetFileTime(h, @FNewModTime, nil, nil);
//    SetFileTime(h, nil, @FNewModTime, @FNewModTime);
    FileClose(h);
  END ELSE
    IF CreationNum = 2 THEN BEGIN
      NewModDT := FTime;
      //**********************************************
      DateTimeToSystemTime(NewModDT, SysTime);
      SystemTimeToFileTime(SysTime, FNewModTime);
      LocalFileTimeToFileTime(FNewModTime, FNewModTime);
      //**********************************************
      h:=FileOpen(FName,fmOpenReadWrite or fmShareCompat);
  //    SetFileTime(h, @FNewModTime, nil, nil);
      SetFileTime(h, nil, @FNewModTime, nil);
      FileClose(h);
    END;
      IF CreationNum = 3 THEN BEGIN
        NewModDT := FTime;
        //**********************************************
        DateTimeToSystemTime(NewModDT, SysTime);
        SystemTimeToFileTime(SysTime, FNewModTime);
        LocalFileTimeToFileTime(FNewModTime, FNewModTime);
        //**********************************************
        h:=FileOpen(FName,fmOpenReadWrite or fmShareCompat);
    //    SetFileTime(h, @FNewModTime, nil, nil);
        SetFileTime(h, nil, nil, @FNewModTime);
        FileClose(h);
      END;
end;

PROCEDURE OpenListViewEditPanel;
{ Opens an edit panel for file renaming }
BEGIN
  TRY
    WITH SelectedFileRec DO BEGIN
      WITH ExplorerForm DO BEGIN
        ListViewEditPanel.Visible := True;
        ListViewEditPanel.Left := SaveListViewX;
        ListViewEditPanel.Top := SaveListViewY;
        ListViewEditPanel.Width := Canvas.TextWidth(SelectedFile_Name + '12345');

        ListViewFileNameEdit.Width := Canvas.TextWidth(SelectedFile_Name + '123') ;
        ListViewFileNameNumbersEdit.Width := ListViewFileNameEdit.Width;

        ListViewFileNameEdit.Visible := True;
        ListViewFileNameEdit.Text := SelectedFile_Name;
        ListViewFileNameEdit.SelStart := Length(ListViewFileNameEdit.Text);

        ListViewFileNameNumbersEdit.Text := '';
        ListViewFileNameNumbersEdit.Visible := True;

        Editing := True;

        IF ListViewFileNameNumbersEdit.Visible THEN
          ListViewFileNameNumbersEdit.SetFocus;
      END; {WITH}
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('OpenListViewEditPanel: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { OpenListViewEditPanel }

PROCEDURE ArchiveOrMoveMainProc(ArchiveOrMove : String; VAR TempDirectory : String; OUT OK : Boolean);
{ Archive or move a file to a given directory }
VAR
  TypeOfFile : FileType;

BEGIN
  TRY
    OK := False;

    WITH SelectedFileRec DO BEGIN
      IF SelectedFile_Name ='' THEN
        ShowMessage('No file to ' + LowerCase(ArchiveOrMove))
      ELSE BEGIN
        IF GetDirectory(TempDirectory) THEN BEGIN
          IF ArchiveOrMove = 'Archive' THEN
            ExplorerForm.MainMenuFileClearArchiveDirectoryMenuItem.Enabled := True
          ELSE
            IF ArchiveOrMove = 'Move1' THEN
              ExplorerForm.MainMenuFileClearMove1DirectoryMenuItem.Enabled := True
            ELSE
              ExplorerForm.MainMenuFileClearMove2DirectoryMenuItem.Enabled := True;

          IF NOT FileRenameProc(TempDirectory + '\', SelectedFile_Name, True) THEN
            ShowMessage('Could not move "' + ListViewPathName + SelectedFile_Name + '"'
                        + ' to "' + TempDirectory + '\' + SelectedFile_Name + '" - ' + SysErrorMessage(GetLastError))
          ELSE BEGIN
            { and move the snap file, if any, too }
            IF FileExists(ListViewPathName + 'Snaps\' + SelectedFile_Name + '.jpg') THEN
              IF NOT DirectoryExists(TempDirectory + '\Snaps') THEN
                { just delete it - there's no point asking for confirmation as it's an ancillary file }
                DeleteFile(ListViewPathName + 'Snaps\' + SelectedFile_Name + '.jpg')
              ELSE
                IF NOT RenameFile(ListViewPathName + 'Snaps\' + SelectedFile_Name + '.jpg', TempDirectory + '\Snaps\' + SelectedFile_Name + '.jpg') THEN
                  ShowMessage('Error ' + IntToStr(GetLastError) + ': could not rename snap file "' + ListViewPathName + 'Snaps\' + SelectedFile_Name + '.jpg"'
                              + '" - ' + SysErrorMessage(GetLastError));

            Dec(TotalFileCount);
            IF FileTypeSuffixFound(SelectedFile_Name, TypeOfFile) AND (TypeOfFile = VideoFile) THEN BEGIN
              Dec(VideoFileCount);
              DrawExplorerFormCaption;
            END;

            SelectedFile_Name := '';
            FileMoved := True;
            OK := True;

            ListFiles;
          END;
        END;
      END;
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('ArchiveOrMoveMainProc: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ArchiveOrMoveMainProc }

PROCEDURE ArchiveFile(OUT OK : Boolean);
{ Archive a file to a given directory }
BEGIN
  ArchiveOrMoveMainProc('Archive', ArchiveDirectory, OK);
END; { ArchiveFile }

PROCEDURE MoveFile(DirectoryNum : Integer; OUT OK : Boolean);
{ Move a file to one of two directories }
BEGIN
  IF DirectoryNum = 1 THEN
    ArchiveOrMoveMainProc('Move1', MoveDirectory1, OK)
  ELSE
    ArchiveOrMoveMainProc('Move2', MoveDirectory2, OK);
END; { MoveFile }

PROCEDURE TExplorerForm.ListViewArchivePopupClick(Sender: TObject);
VAR
  OK : Boolean;

BEGIN
  ArchiveFile(OK);

  MainMenuFileClearArchiveDirectoryMenuItem.Enabled := True;
  MainMenuFileClearArchiveDirectoryMenuItem.Checked := False;
END;{ ListViewArchivePopupClick }

PROCEDURE TExplorerForm.ListViewKeyPress(Sender: TObject; VAR Key: Char);
{ This is used to stop the ListView moving the cursor after doing the archive or move }

  PROCEDURE RenameSpecificFileType(FileName, FileTypeStr : String);
  BEGIN
    IF NOT F2Editing THEN BEGIN
      IF Copy(FileName, 1, Length(FileTypeStr)) = FileTypeStr THEN
        FileRenameProc(Copy(FileName, Length(FileTypeStr) + 1))
      ELSE
        FileRenameProc(FileTypeStr + FileName);
    END;
  END; { RenameSpecificFileType }

VAR
  OK : Boolean;

BEGIN
  IF ClearKeyInKeyPress THEN BEGIN
    Key := #0;
    ClearKeyInKeyPress := False;
  END;

  IF (Key = 'A') OR (Key ='a')  THEN BEGIN
    IF NOT F2Editing THEN BEGIN
      ArchiveFile(OK);
      Key := ' ';
    END;
  END;

  IF Key = 'm' THEN BEGIN
    IF NOT F2Editing THEN BEGIN
      MoveFile(1, OK);
      Key := ' ';
    END;
  END;
  IF Key = 'M' THEN BEGIN
    IF NOT F2Editing THEN BEGIN
      MoveFile(2, OK);
      Key := ' ';
    END;
  END;

  IF (Key = 'S') OR (Key ='s')  THEN BEGIN
    RenameSpecificFileType(SelectedFileRec.SelectedFile_Name, 'st-');
    Key := ' ';
  END;

  IF (Key = 'O') OR (Key ='o')  THEN BEGIN
    RenameSpecificFileType(SelectedFileRec.SelectedFile_Name, 'so-');
    Key := ' ';
  END;

  IF (Key = 'P') OR (Key ='p')  THEN BEGIN
    RenameSpecificFileType(SelectedFileRec.SelectedFile_Name, 'sp-');
    Key := ' ';
  END;

  IF (Key = 'V') OR (Key ='v')  THEN BEGIN
    RenameSpecificFileType(SelectedFileRec.SelectedFile_Name, 'v-');
    Key := ' ';
  END;
END;

PROCEDURE StartImageView;
VAR
  ShellStr : WideString;
  ShellStrPtr : PWideChar;

BEGIN
  { start up ImageView with the current directory }
  ShellStr := '/dir=' + ListViewPathName + ' /archive=' + ArchiveDirectory + ' /move1=' + MoveDirectory1 + ' /move2=' + MoveDirectory2;
  ShellStrPtr := Addr(ShellStr[1]);

  ShellExecute(Application.Handle, 'open', '"C:\Doc\Dropbox\RAD Studio\Projects\ImageView\ImageView.exe"', ShellStrPtr, nil, SW_SHOWNORMAL);
END; { StartImageView }

PROCEDURE TExplorerForm.ListViewKeyDown(Sender: TObject; VAR Key: Word; ShiftState: TShiftState);
TYPE
  ShiftKeysType = (NoShiftKeys, Alt, Shift, Ctrl, ShiftAlt, CtrlShift, CtrlAlt, CtrlAltShift);

VAR
  I : Integer;
  SaveIdleState : Boolean;
  TempFileName : String;

BEGIN
  TRY
    WITH SelectedFileRec DO BEGIN
      SaveIdleState := IdleState;
      IdleState := False;

      { note: some keypresses are dealt with in ExplorerForm.ListViewKeyPress }
      CASE Key OF
        Ord('0'):
          IF FWPMode THEN
            FileRenameProc(SelectedFile_NameWithoutNumbers);

        Ord('A'):
          IF ssCtrl IN ShiftState THEN BEGIN
            { select all }
            ListView.Items.BeginUpdate;
            FOR I := 0 TO ListView.Items.Count - 1 DO
              ListView.Items.Item[I].Selected := True;
            ListView.Items.EndUpdate;

            ClearKeyInKeyPress := True;
            // inherited KeyDown(Key, ShiftState);
          END;

        Ord('F'):
          IF ssCtrl IN ShiftState THEN
            FindDialog.Execute;

        Ord('V'):
          IF FWPMode THEN BEGIN
            IF Copy(SelectedFile_Name, 1, 2) = 'v-' THEN
              FileRenameProc(Copy(SelectedFile_Name, 3))
            ELSE
              FileRenameProc('v-' + SelectedFile_Name);
          END;

        Ord('Z'):
          IF ZoomPlayerUnitForm.Visible THEN
            ZoomPlayerUnitForm.Visible := False
          ELSE BEGIN
            ZoomPlayerUnitForm.Visible := True;

            { but return focus to the Explorer window }
            ExplorerForm.SetFocus;
          END;

        vk_Delete:
          BEGIN
            IF DeleteKeyTrappedByListView THEN BEGIN
              { Only come here if F2 renaming isn't happening - otherwise the Delete key brings us here then which is mad }
              IF SelectedFile_Name = '' THEN
                Showmessage('No file to delete')
              ELSE BEGIN
                IF (ssAlt IN ShiftState) THEN BEGIN
                  IF FWPMode THEN BEGIN
                    { Unrename a file that's marked for deletion }
                    IF (Copy(SelectedFile_Name, Length(SelectedFile_Name) - 1, 2) = '.d')
                    OR (Copy(SelectedFile_Name, Length(SelectedFile_Name) - 1, 2) = ' d')
                    THEN
                      FileRenameProc(Copy(SelectedFile_Name, 1, Length(SelectedFile_Name) - 2));
                  END;
                END ELSE
                  IF NOT (ssShift IN ShiftState) THEN BEGIN
                    IF FWPMode THEN BEGIN
                      { Rename the files adding a "d" for future deletion by hand }
                      FileRenameProc(SelectedFile_NameWithoutNumbers + '.d')
                    END ELSE BEGIN
                      CASE MessageDlg('Move "' + SelectedFile_Name + '" to Recycle Bin?', mtConfirmation, [mbYes, mbNo], 0, mbNo) OF
                        mrYes:
                          IF NOT DeleteFileToRecycleBin(NotDirectoryType, ListViewPathName + SelectedFile_Name) THEN
                            Showmessage('Could not delete ' + ListViewPathName + SelectedFile_Name);
                        mrNo:
                          ;
                      END; {CASE}
                    END;
                  END ELSE BEGIN
                    IF DirectoryExists(ListViewPathName + SelectedFile_Name) THEN BEGIN
                      IF NOT TDirectory.IsEmpty(ListViewPathName + SelectedFile_Name) THEN
                        ShowMessage('Cannot delete directory - it is not empty')
                      ELSE
                        CASE MessageDlg('Permanently delete directory "' + SelectedFile_Name + '"?', mtConfirmation, [mbYes, mbNo], 0, mbNo) OF
                          mrYes:
                            IF NOT RemoveDir(ListViewPathName + SelectedFile_Name) THEN
                              Showmessage('Could not delete directory ' + ListViewPathName + SelectedFile_Name);
                          mrNo:
                            ;
                        END; {CASE}
                    END ELSE BEGIN
                      IF ListView.SelCount > 0 THEN BEGIN
                        I := 0;
                        WHILE I <= ListView.Items.Count - 1 DO BEGIN
                          IF ListView.Items.Item[I].Selected THEN BEGIN
                            TempFileName := ListView.Items.Item[I].Caption;
                            CASE MessageDlg('Permanently delete file "' + TempFileName + '"?', mtConfirmation, [mbYes, mbNo], 0, mbNo) OF
                              mrYes:
                                IF NOT DeleteFilePermanently(ListViewPathName + TempFileName) THEN
                                  ShowMessage('Could not delete file ' + ListViewPathName + TempFileName + '" - ' + SysErrorMessage(GetLastError))
                                ELSE
                                  IF FileExists(ListViewPathName + 'Snaps\' + TempFileName + '.jpg') THEN
                                      IF NOT DeleteFilePermanently(ListViewPathName + 'Snaps\' + TempFileName + '.jpg') THEN
                                      ShowMessage('Error ' + IntToStr(GetLastError)
                                                  + ': could not delete snap file "' + ListViewPathName + 'Snaps\' + TempFileName + '.jpg'
                                                  + '" - ' + SysErrorMessage(GetLastError));
                              mrNo:
                                ;
                            END; {CASE}
                          END;
                          Inc(I);
                        END; {WHILE}
                      END;

                      { See if any backup files need deleting too **** }


                    END;
                  END;

                ListFiles;
              END;
            END;
          END;

        vk_F2:
          IF Assigned(ListView.Selected) THEN BEGIN
            ListView.ReadOnly := False;
            DeleteKeyTrappedByListView := False;
            ListView.Selected.EditCaption;
          END;

        Vk_F5:
          RefreshView(Sender);

        vk_F7:
          BEGIN
  //          YearStr := '2007';
  //          MonthStr := '7';
  //          DayStr := '7';
  //          TempHHStr := '7';
  //          TempMMStr := '7';
  //          TempSSStr := '7';
  //          StartTime := EncodeDateTime(StrToInt(YearStr), StrToInt(MonthStr), StrToInt(DayStr), StrToInt(TempHHStr), StrToInt(TempMMStr), StrToInt(TempSSStr), 0);
  //          SetFileDateTime(ListViewPathName + FileName, StartTime, 1);
  //
  //          YearStr := '1979';
  //          MonthStr := '12';
  //          DayStr := '31';
  //          TempHHStr := '23';
  //          TempMMStr := '59';
  //          TempSSStr := '59';
  //          StartTime := EncodeDateTime(StrToInt(YearStr), StrToInt(MonthStr), StrToInt(DayStr), StrToInt(TempHHStr), StrToInt(TempMMStr), StrToInt(TempSSStr), 0);
  //          SetFileDateTime(ListViewPathName + FileName, StartTime, 2);
  //
  //          YearStr := '1980';
  //          MonthStr := '1';
  //          DayStr := '1';
  //          TempHHStr := '2';
  //          TempMMStr := '0';
  //          TempSSStr := '0';
  //          StartTime := EncodeDateTime(StrToInt(YearStr), StrToInt(MonthStr), StrToInt(DayStr), StrToInt(TempHHStr), StrToInt(TempMMStr), StrToInt(TempSSStr), 0);
  //          SetFileDateTime(ListViewPathName + FileName, StartTime, 3);
  //
  //          ListFiles;
          END;

        vk_F9, vk_F12:
          StartImageView;

        vk_Space:
          IF FWPMode THEN
            OpenListViewEditPanel;

        vk_Return:
          ExecuteClick(SelectedFile_NameWithoutNumbers);
       END; {CASE}

      IdleState := SaveIdleState;
    END; { WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewKeyDown: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ListViewKeyDown }

PROCEDURE TExplorerForm.ListViewEdited(Sender : TObject; Item: TListItem; VAR NewString: String);
{ This is called when the pop-up editing in ListViewRenamePopupClick has finished }
VAR
  SaveIdleState : Boolean;

BEGIN
  TRY
    F2Editing := False;

    WITH SelectedFileRec DO BEGIN
      SaveIdleState := IdleState;
      IdleState := False;

      TRY
        IF NOT FileRenameProc(NewString) THEN
          { Restore the original caption. Note: this only works if one alters NewString }
          NewString := ListView.Selected.Caption
        ELSE BEGIN
          IF ListView.Selected <> NIL THEN BEGIN
            MainMenuEditUndo.Enabled := True;
            MainMenuEditUndo.Caption := 'Undo last rename';
            SelectedFile_LastRenameFrom := ListViewPathName + ListView.Selected.Caption;
            SelectedFile_LastRenameTo := ListViewPathName + NewString;
          END;
        END;

        ListView.ReadOnly := True;
        DeleteKeyTrappedByListView := True;
      EXCEPT
        ON E : Exception DO
          ShowMessage('ListViewEdited: ' + E.ClassName +' error raised, with message: ' + E.Message);
      END;

      IdleState := SaveIdleState;
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewEdited: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ListViewEdited }

PROCEDURE TExplorerForm.ListViewEditing(Sender: TObject; Item: TListItem; VAR AllowEdit: Boolean);
BEGIN
  { This is needed to stop the pressing of 'a' or 'm' starting an archive or a move }
  F2Editing := True;
END; { ListViewEditing }

PROCEDURE TExplorerForm.ListViewPopupMenuPopup(Sender : TObject);
BEGIN
  IF ListView.Selected = NIL THEN BEGIN
    ListViewRenamePopup.Enabled := False;
    ListViewArchivePopup.Enabled := False;
    ListViewPropertiesPopup.Enabled := False;
    ListViewPermanentlyDeletePopup.Enabled := False;
    ListViewDeleteToRecycleBinPopup.Enabled := False;
  END ELSE BEGIN
    ListViewRenamePopup.Enabled := True;
    ListViewArchivePopup.Enabled := True;
    ListViewPropertiesPopup.Enabled := True;
    ListViewPermanentlyDeletePopup.Enabled := True;
    ListViewDeleteToRecycleBinPopup.Enabled := True;
  END;
END;

PROCEDURE TExplorerForm.ListViewRenamePopupClick(Sender : TObject);
VAR
  SaveSingleClick : Boolean;

BEGIN
  TRY
    ListView.ReadOnly := False;
    SaveSingleClick := SingleClickMode;
    ListView.Selected.EditCaption;
    SingleClickMode := SaveSingleClick;
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewRenamePopupClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END;
END; { ListViewRenamePopupClick }

PROCEDURE TExplorerForm.ListViewRenameOnAllDrivesPopupClick(Sender: TObject);
VAR
  SaveSingleClick : Boolean;

BEGIN
  TRY
    ListView.ReadOnly := False;
    SaveSingleClick := SingleClickMode;
    ListView.Selected.EditCaption;
    SingleClickMode := SaveSingleClick;

    { See if the same file name exists on the backup drive }
    IF BackupAToZDirectory <> '' THEN BEGIN

    END;
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewRenamePopupClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END;
END; { ListViewRenameOnAllDrivesPopupClick }

PROCEDURE TExplorerForm.ListViewPropertiesPopupClick(Sender : TObject);

  FUNCTION ShowFilePropertiesDialog(TempFileName: STRING) : Boolean;
  VAR
    Info: TShellExecuteInfo;

  BEGIN
    { Fill in the ShellExecuteInfo structure }
    WITH Info DO BEGIN
      cbSize := SizeOf(Info);
      fMask := SEE_MASK_NOCLOSEPROCESS OR SEE_MASK_INVOKEIDLIST OR SEE_MASK_FLAG_NO_UI;
      lpVerb := 'properties';
      lpFile := pChar(TempFileName);
      lpParameters := NIL;
      lpDirectory := NIL;
      nShow := 0;
      hInstApp := 0;
      lpIDList := NIL;
    END; {WITH}

    { Call Windows to display the properties dialog }
    Result := ShellExecuteEx(@Info);
 END; { ShowFilePropertiesDialog }

BEGIN
  TRY
    WITH SelectedFileRec DO
      ShowFilePropertiesDialog(ListViewPathName + SelectedFile_Name);
  EXCEPT
    ON E : Exception DO
      ShowMessage('PropertiesPopupClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { PropertiesPopupClick }

PROCEDURE TExplorerForm.ListViewDeleteToRecycleBinPopupClick(Sender : TObject);
BEGIN
  TRY
    WITH SelectedFileRec DO BEGIN
      IF SelectedFile_Name = '' THEN
        Showmessage('No file to delete')
      ELSE BEGIN
        CASE MessageDlg('Move "' + SelectedFile_Name + '" to Recycle Bin?', mtConfirmation, [mbYes, mbNo], 0, mbNo) OF
          mrYes:
            IF NOT DeleteFileToRecycleBin(NotDirectoryType, ListViewPathName + SelectedFile_Name) THEN
              Showmessage('Could not delete ' + ListViewPathName + SelectedFile_Name);
          mrNo:
            ;
        END; {CASE}
        ListFiles;
      END;
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewDeleteToRecycleBinPopupClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ListViewDeleteToRecycleBinPopupClick }

PROCEDURE TExplorerForm.ListViewPermanentlyDeletePopupClick(Sender : TObject);
BEGIN
  TRY
    WITH SelectedFileRec DO BEGIN
      IF SelectedFile_Name = '' THEN
        Showmessage('No file to delete')
      ELSE BEGIN
        IF DirectoryExists(ListViewPathName + SelectedFile_Name) THEN BEGIN
          IF NOT TDirectory.IsEmpty(ListViewPathName + SelectedFile_Name) THEN
            ShowMessage('Cannot delete directory - it is not empty')
          ELSE
            CASE MessageDlg('Permanently delete directory "' + SelectedFile_Name + '"?', mtConfirmation, [mbYes, mbNo], 0, mbNo) OF
              mrYes:
                IF NOT RemoveDir(ListViewPathName + SelectedFile_Name) THEN
                  Showmessage('Could not delete directory ' + ListViewPathName + SelectedFile_Name);
              mrNo:
                ;
            END; {CASE}
        END ELSE BEGIN
          CASE MessageDlg('Permanently delete file "' + SelectedFile_Name + '"?', mtConfirmation, [mbYes, mbNo], 0, mbNo) OF
            mrYes:
              IF NOT DeleteFilePermanently(ListViewPathName + SelectedFile_Name) THEN
                Showmessage('Could not delete file ' + ListViewPathName + SelectedFile_Name);
            mrNo:
              ;
          END; {CASE}
        END;
        ListFiles;
      END;
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewPermanentlyDeletePopupClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ListViewPermanentlyDeletePopupClick }

PROCEDURE TExplorerForm.ListViewNewFilePopupClick(Sender : TObject);
BEGIN
;
END; { ListViewNewFilePopupClick }

PROCEDURE TExplorerForm.ListViewNewFolderPopupClick(Sender : TObject);
VAR
  Node : TTreeNode;

BEGIN
  TRY
    IF NOT CreateDir(TreeViewPathAndDirectory + 'New Folder') THEN
      ShowMessage('Directory creation failed: "' + TreeViewPathAndDirectory + 'New Folder"')
    ELSE BEGIN
      TreeView.Items.AddChild(TreeView.Selected, 'New Folder');
      Node := GetNodeByText('New Folder', True);
      IF Node <> NIL THEN BEGIN
        TreeViewPathAndDirectory := GetPathFromNode(Node);

        TreeView.Selected := Node;
        TreeView.ReadOnly := False;
        TreeViewDirectory := Node.Text;
        TreeView.Selected.EditText;

        ListFiles;
      END;
    END;
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewNewFolderPopupClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ListViewNewFolderPopupClick }

PROCEDURE TExplorerForm.ListViewSelectItem(Sender : TObject; Item: TListItem; Selected: Boolean);
VAR
  SaveIdleState : Boolean;

BEGIN
  TRY
    SaveIdleState := IdleState;
    IdleState := False;

    IF Selected THEN BEGIN
      { store the filename to make sure it's kept focused }
      LastSelectedFileName := Item.Caption;
      LastSelectedItemIndex := Item.Index;
    END ELSE
      ListView.Items.Item[Item.Index].Selected := False;

    IF ListViewEditPanel.Visible THEN BEGIN
      ListViewEditPanel.Visible := False;

      ListViewFileNameEdit.Visible := False;
      ListViewFileNameEdit.Text := '';

      ListViewFileNameNumbersEdit.Text := '';
      ListViewFileNameNumbersEdit.Visible := False;

      Editing := False;
    END;

    IdleState := SaveIdleState;
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewSelectItem: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ListViewSelectItem }

PROCEDURE TExplorerForm.ListViewSingleClick(Sender : TObject);
{ This now redirects to MouseUp to allow files to be dragged before they are run }
BEGIN
  SingleClickDetected := True;
END; { ListViewSingleClick }

PROCEDURE TExplorerForm.ListViewDoubleClick(Sender : TObject);
VAR
  SaveIdleState : Boolean;

BEGIN
  TRY
    WITH SelectedFileRec DO BEGIN
      SaveIdleState := IdleState;
      IdleState := False;
      WITH ListView DO BEGIN
        IF ListView.Selected <> NIL THEN BEGIN
          IF DirectoryExists(ListViewPathName + SelectedFile_Name) THEN
            beep
          ELSE
            IF NOT FWPMode OR NOT SingleClickMode THEN
              ExecuteClick(SelectedFile_NameWithoutNumbers);
        END ELSE
          IF SnapsCompareForm.Visible AND (SaveCaption <> '') THEN BEGIN
            { this is a hack to get around the problem that if the image form is open, double clicking doesn't work - somehow the program loses the ListView selection in
              those circumstances
            }
            IF NOT SingleClickMode THEN
              ExecuteClick(SelectedFile_NameWithoutNumbers);
            SaveCaption := '';
          END;
      END; {WITH}

      IdleState := SaveIdleState;
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewDoubleClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ListViewDoubleClick }

PROCEDURE TExplorerForm.ListViewMouseUp(Sender: TObject; Button: TMouseButton; ShiftState: TShiftState; X, Y: Integer);
{ This code used to respond directly to the OnSingleClick event but now comes here to allow dragging rather than the single click or mouse down executing a run command }
VAR
  SaveIdleState : Boolean;

  FUNCTION LeftButtonUp : Boolean;
  { Sees if the physical mouse button is up (as Delphi gets it wrong when dragging starts) }
  BEGIN
    IF GetSystemMetrics(SM_SWAPBUTTON) = 0 THEN
      Result:= GetAsyncKeyState(VK_LBUTTON) >= 0
    ELSE
      Result:= GetAsyncKeyState(VK_RBUTTON) >= 0;
  END; { LeftButtonUp }

BEGIN
  TRY
    WITH SelectedFileRec DO BEGIN
      IF SingleClickDetected AND LeftButtonUp THEN BEGIN
        SaveIdleState := IdleState;
        IdleState := False;
        WITH ListView DO BEGIN
          IF ListView.Selected <> NIL THEN BEGIN
            IF FWPMode AND (SelectedFile_IsTextFile OR SelectedFile_IsImageFile OR SelectedFile_IsVideoFile) THEN BEGIN
              IF SingleClickMode THEN
                ExecuteClick(SelectedFile_NameWithoutNumbers)
              ELSE
                SaveCaption := ListView.Selected.Caption;
            END;
          END;
        END; {WITH}
        IdleState := SaveIdleState;
        SingleClickDetected := False;
      END;
    END; {WITH}
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewMouseUp: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ListViewMouseUp }

PROCEDURE InitialiseSelectedFileVariables;
{ Initalisation }
BEGIN
  WITH SelectedFileRec DO BEGIN
    SelectedFile_Name := '';
    SelectedFile_NameWithoutNumbers := '';
    SelectedFile_NumberStr := '';
    SelectedFile_IsTextFile := False;
    SelectedFile_IsVideoFile := False;
    SelectedFile_HHSTR := '';
    SelectedFile_MMSTR := '';
    SelectedFile_SSSTR := '';
    SelectedFile_LastMoveFrom := '';
    SelectedFile_LastMoveTo := '';
    SelectedFile_LastRenameFrom := '';
    SelectedFile_LastRenameTo := '';
    SelectedFile_SnapFileName := '';
  END; { WITH}
END; { InitialiseSelectedFileVariables }

PROCEDURE TExplorerForm.ListViewMouseDown(Sender : TObject; Button: TMouseButton; ShiftState: TShiftState; X, Y: Integer);
VAR
  I : Integer;
  ItemFound : Boolean;
  ListItem : TListItem;
  OK : Boolean;
  SaveIdleState : Boolean;
  SaveTempListItem : TListItem;
  TempListItem : TListItem;

BEGIN
  TRY
    SaveIdleState := IdleState;
    IdleState := False;

    WITH SelectedFileRec DO BEGIN
      InitialiseSelectedFileVariables;

      GetCursorPos(SaveMousePos);
      SaveListViewX := ListView.Left + X;
      SaveListViewY := ListView.Top + Y;

      ListItem := ListView.GetItemAt(X, Y);

      ListView.Selected := ListItem;

      { *** }
//      IF (ssCtrl IN ShiftState) AND ListItem.Selected THEN BEGIN
//        ListItem.Selected := False;
//        ListItem := NIL;
//      END;

      IF ListItem <> NIL THEN BEGIN
        SelectedFile_Name := ExtractFileName(ListItem.Caption);

        { Store the following filename too, as we can use it later if the item is deleted, for putting the items near it back into view }
        I := 0;
        SaveTempListItem := NIL;
        TempListItem := ListItem;

        ItemFound := False;
        { Store its location in case we wish to do a find from it }
        WHILE (I <= ListView.Items.Count) AND NOT ItemFound DO BEGIN
          IF ListView.Items[I].Caption = SelectedFile_Name THEN BEGIN
            SaveItemFoundNum := I;
            ItemFound := True;
          END;
          Inc(I);
        END; {WHILE}

        REPEAT
          TempListItem := ListView.GetNextItem(TempListItem, sdAll, [isNone]);
          IF TempListItem <> NIL THEN
            SaveTempListItem := TempListItem;
          Inc(I);
        UNTIL (I = 5) OR (TempListItem = NIL);

        IF TempListItem <> NIL THEN
          NextFileName := ExtractFileName(TempListItem.Caption)
        ELSE
          IF SaveTempListItem <> NIL THEN
            NextFileName := ExtractFileName(SaveTempListItem.Caption);

        RemoveNumbersAndDeletes(SelectedFile_Name, SelectedFile_NameWithoutNumbers, SelectedFile_NumberStr);
        GetHHMMSS(SelectedFile_Name, SelectedFile_NumberStr, SelectedFile_HHStr, SelectedFile_MMStr, SelectedFile_SSStr, SelectedFile_IsTextFile, SelectedFile_IsImageFile,
                  SelectedFile_IsVideoFile, OK);
      END;

      IF FWPMode AND (Button = mbRight) AND NOT (ssShift IN ShiftState) AND NOT (ssCtrl IN ShiftState) THEN BEGIN
        IF ListItem <> NIL THEN BEGIN
          LastSelectedItemIndex := ListItem.Index;
          OpenListViewEditPanel;
        END;
      END ELSE
        IF (NOT FWPMode AND (Button = mbRight))
        OR (FWPMode AND (Button = mbRight) AND ((ssShift IN ShiftState) OR (ssCtrl IN ShiftState)))
        THEN BEGIN
          ListViewFileNameEdit.Text := '';
          ListViewFileNameNumbersEdit.Text := '';
          ListViewFileNameEdit.Visible := False;
          ListViewFileNameNumbersEdit.Visible := False;
          Editing := False;

          ExplorerForm.ListViewPopupMenu.Popup(ExplorerForm.Left + ListView.Left + X, 40 + Y);
        END;

      IF ssShift IN ShiftState THEN BEGIN
        { Dragging and dropping into another application }

//        IF (ListView.SelCount > 0) AND (DragDetectPlus(TWinControl(Sender))) THEN BEGIN
//          // Delete anything from a previous drag.
//          DropFileSource.Files.Clear;
//
//          // Fill DropSource.Files with selected files from ListView.
//          FOR I := 0 TO ListView.Items.Count - 1 DO
//            IF (ListView.Items.Item[I].Selected) THEN
//              DropFileSource.Files.Add(ListViewPathName + ListView.Items.Item[I].Caption);
//
//          // Start the drag operation.
//          DropFileSource.Execute;
//
//          ListFiles;
//        END;
      END;
    END; {WITH}

    IdleState := SaveIdleState;
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewMouseDown: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END;
END; { ListViewMouseDown }

PROCEDURE TExplorerForm.ListViewMouseLeave(Sender: TObject);
BEGIN
  IF Assigned(SnapsCompareForm) THEN BEGIN
    WITH SnapsCompareForm DO BEGIN
      IF SnapsCompareFormImage1.Picture.Bitmap <> NIL THEN
        SnapsCompareFormImage1.Picture.Bitmap := NIL;
      IF SnapsCompareFormImage2.Picture.Bitmap <> NIL THEN
        SnapsCompareFormImage2.Picture.Bitmap := NIL;
    END; {WITH}
  END;
END; { ListViewMouseLeave }

//procedure TExplorerForm.DropFileTargetDrop(Sender: TObject; ShiftState: TShiftState; Point: TPoint; var Effect: Integer);
//var
//  i: integer;
//  Item: TListItem;
//begin
//  (*
//  ** The OnDrop event handler is called when the user drag and drop files
//  ** onto your application.
//  *)
//
////  ListView.Items.Clear;
//
//  // Display mapped names if present.
//  // Mapped names are usually only present when dragging from the recycle bin
//  // (try it).
////  if (DropFileTarget.MappedNames.Count > 0) then
////    ListView.Columns[Column1].Width := 100
////  else
////    ListView.Columns[Column1].Width := 0;
//
//  // Copy the file names from the DropTarget component into the list view.
//  for i := 0 to DropFileTarget.Files.Count-1 do
//  begin
//    Item := ListView.Items.Add;
//    Item.Caption := DropFileTarget.Files[i];
//
//    // Display mapped names if present.
//    if (DropFileTarget.MappedNames.Count > i) then
//      Item.SubItems.Add(DropFileTarget.MappedNames[i]);
//  end;
//
//  // For this demo we reject the drop if a move operation was performed. This is
//  // done so the drop source doesn't think we actually did something usefull
//  // with the data.
//  // This is important when moving data or when dropping from the recycle bin;
//  // If we do not reject a move, the source will assume that it is safe to
//  // delete the source data. See also "Optimized move".
//  if (Effect = DROPEFFECT_MOVE) then
//    Effect := DROPEFFECT_NONE;
//end;

PROCEDURE TExplorerForm.ListViewMouseMove(Sender : TObject; ShiftState: TShiftState; X, Y: Integer);
VAR
  SaveIdleState : Boolean;

BEGIN
  TRY
    SaveIdleState := IdleState;
    IdleState := False;

    ProcessMouseMove(ListView, X, Y);

    IdleState := SaveIdleState;
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewMouseMove: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ListViewMouseMove }

PROCEDURE TExplorerForm.ListViewDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; VAR Accept: Boolean);
VAR
  SaveIdleState : Boolean;

BEGIN
  TRY
    SaveIdleState := IdleState;
    IdleState := False;

    Accept := False;

    IdleState := SaveIdleState;
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewDragOver: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ListViewDragOver }

PROCEDURE TExplorerForm.MainMenuFileClearBackupDriveAndPathPopupMenuItemClick(Sender: TObject);
{ Clears backup drives stored as a result of backing up by right-clicking on directory in TreeView and selecting backup }
BEGIN
  BackupDriveAndPath := '';
  MainMenuFileClearBackupAToZDirectoryMenuItem.Enabled := False;
END; { MainMenuFileClearBackupDriveAndPathPopupMenuItemClick }

PROCEDURE TExplorerForm.TreeViewBackupToDirectoryOfSameNamePopupClick(Sender: TObject);
//VAR
//  TempDriveAndPath : String;

BEGIN
  IF BackupDriveAndPath = '' THEN BEGIN
    IF InputQuery('Backup Directory', 'Enter Backup Drive and Path', BackupDriveAndPath) THEN
      IF BackupDriveAndPath = '' THEN
        ShowMessage('No backup drive and path specified');
  END;

//  IF BackupDriveAndPath <> '' THEN BEGIN
//    TempDriveAndPath := BackupDriveAndPath + TreeViewDirectory;
//    DoBackup(MainMenuFileClearBackupAToZMenuItem, 'Backup Drive and Directory?', TempDriveAndPath, 'A-Z');
//  END;
END; { TreeViewBackupToDirectoryOfSameNamePopupClick }

PROCEDURE TExplorerForm.TreeViewBackupAToZMenuItemPopupClick(Sender: TObject);
BEGIN
  SetUpBackupAToZMenuItems(DoBackupNow);
END; { TreeViewBackupAToZMenuItemPopupClick }

PROCEDURE TExplorerForm.TreeViewBackupAToMMenuItemPopupClick(Sender: TObject);
BEGIN
  SetUpBackupAToMMenuItems(DoBackupNow);
END; { TreeViewBackupAToMMenuItemPopupClick }

PROCEDURE TExplorerForm.TreeViewBackupNToZMenuItemPopupClick(Sender: TObject);
BEGIN
  SetUpBackupNToZMenuItems(DoBackupNow);
END; { TreeViewBackupNToZMenuItemPopupClick}

PROCEDURE TExplorerForm.TreeViewClick(Sender : TObject);
CONST
  OnNode  = TVHT_ONITEMICON OR TVHT_ONITEMLABEL;

VAR
  HTInfo : TTVHitTestInfo;
  SaveIdleState : Boolean;

BEGIN
  TRY
    SaveIdleState := IdleState;
    IdleState := False;

    HourGlassTimer.Enabled := True;

    { Set node to nil }
    CurrentNode := NIL;

    { Get cursor position }
    GetCursorPos(HTInfo.pt);

    { Translate screen cursor position to treeview }
    HTInfo.pt := ScreenToClient(HTInfo.pt);

    { Perform a hit test on treeview at cursor position }
    IF TreeView_HitTest(TreeView.Handle, HTInfo) <> NIL THEN BEGIN
      { If cursor on caption or icon of a tree item set node(var) to node under mouse cursor }
      IF Bool(HTInfo.Flags AND OnNode) THEN
        CurrentNode := TreeView.Items.GetNode(HTInfo.hItem);

      IF CurrentNode <> NIL THEN BEGIN
        { If any of the following checks are running, stop them and restore the wndow size }
        IF CompareFileSize THEN
          CompareFileSizeCheckBoxClick(Sender);
        IF CompareSnapImages THEN
          CompareSnapImagesCheckBoxClick(Sender);
        IF CompareSnapImagesInDifferentDirectory THEN
          CompareSnapImagesInDifferentDirectoryCheckBoxClick(Sender);
        IF CompareFileSizeInDifferentDirectory THEN
          CompareFileSizeInDifferentDirectoryCheckBoxClick(Sender);

        ListFiles;
      END;
    END;

    IdleState := SaveIdleState;
  EXCEPT
    ON E : Exception DO
      ShowMessage('TreeViewClick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { TreeViewClick }

PROCEDURE TExplorerForm.TreeViewDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; VAR Accept: Boolean);
{ When mouse drags a file over target treeview }
VAR
  SaveIdleState : Boolean;
  TargetNode : TTreenode;

BEGIN
  SaveIdleState := IdleState;
  IdleState := False;

  Accept := False;
  TargetNode := TreeView.GetNodeAt(X, Y);
  IF TargetNode <> NIL THEN BEGIN
    IF Source = ListView THEN
      Accept := True;
  END;

  IdleState := SaveIdleState;
END; { TreeViewDragOver }

PROCEDURE TExplorerForm.TreeViewDragDrop(Sender, Source : TObject; X, Y : Integer);
{ Dropping file on target treeview }
VAR
  OldFileAndDirectory, NewFileAndDirectory : String;
  SaveIdleState : Boolean;
  SelectedItem : TListItem;
  TargetNode : TTreeNode;

BEGIN
  WITH SelectedFileRec DO BEGIN
    SaveIdleState := IdleState;
    IdleState := False;

    TRY
      SetLength(UndoFromArray, 0);
      SetLength(UndoToArray, 0);

      TargetNode := TreeView.GetNodeAt(X, Y);
      IF Source = ListView THEN BEGIN
        SelectedItem := ListView.Selected;

        WHILE Assigned(SelectedItem) DO BEGIN
          OldFileAndDirectory := ListViewPathName + SelectedItem.Caption;
          NewFileAndDirectory := GetPathFromNode(TargetNode) + '\' + SelectedItem.Caption;

          IF NOT RenameFile(OldFileAndDirectory, NewFileAndDirectory) THEN
            ShowMessage('Could not move "' + OldFileAndDirectory + '" to "' + NewFileAndDirectory + '" - ' + SysErrorMessage(GetLastError))
          ELSE BEGIN
            MainMenuEditUndo.Enabled := True;
            MainMenuEditUndo.Caption := 'Undo last file move';

            FileMoved := True;
            SetLength(UndoFromArray, Length(UndoFromArray) + 1);
            UndoFromArray[High(UndoFromArray)] := OldFileAndDirectory;
            SetLength(UndoToArray, Length(UndoToArray) + 1);
            UndoToArray[High(UndoToArray)] := NewFileAndDirectory;
          END;

          SelectedItem := ListView.GetNextItem(SelectedItem, sdAll, [isSelected]);
        END; {WHILE}
      END;

      ListFiles;
    EXCEPT
      ON E : Exception DO
        ShowMessage('TreeViewDragDrop: ' + E.ClassName +' error raised, with message: ' + E.Message);
    END; {TRY}

    IdleState := SaveIdleState;
  END; {WITH}
END; { TreeViewDragDrop }

PROCEDURE TExplorerForm.TreeViewMouseDown(Sender : TObject; Button: TMouseButton; ShiftState: TShiftState; X, Y: Integer);
VAR
  Node: TTreeNode;
  SaveIdleState : Boolean;

BEGIN
  SaveIdleState := IdleState;
  IdleState := False;

  Node := TreeView.GetNodeAt(X, Y);
  Treeview.Selected := Node;

  IF Node <> NIL THEN BEGIN
    TreeViewDirectory := Node.Text;
    TreeViewPathAndDirectory := GetPathFromNode(Node);

    IF ShowExplorerCaption THEN
      ExplorerForm.Caption := TreeViewPathAndDirectory;

    IF Button = mbRight THEN BEGIN
      IF TreeView.Selected.Parent = NIL THEN BEGIN
        { can't delete or rename the top-most nodes (i.e. the drive letters) }
        TreeViewRenamePopup.Enabled := False;
        TreeViewDeleteToRecycleBinPopup.Enabled := False;
        TreeViewPermanentlyDeletePopup.Enabled := False;
      END ELSE BEGIN
        TreeViewRenamePopup.Enabled := True;
        TreeViewDeleteToRecycleBinPopup.Enabled := True;
        TreeViewPermanentlyDeletePopup.Enabled := True;
      END;
      ExplorerForm.TreeViewPopupMenu.Popup(ExplorerForm.Left + TreeView.Left + X, 40 + Y);
    END;

//    ListFiles;  causes pressing plus sign to do nothing 11/5/12
  END;

  IdleState := SaveIdleState;
END; { TreeViewMouseDown }

PROCEDURE GetTreeViewNodeInfo(Node : TTreeNode; OUT RootDirectory, PathName : String);
VAR
  TempNode : TTreeNode;

BEGIN
  RootDirectory := '';
  PathName := '';

  IF Node <> NIL THEN BEGIN
    TempNode := Node;
    IF TempNode.Parent = NIL THEN
      RootDirectory := TempNode.Text
    ELSE BEGIN
      WHILE TempNode.Parent <> NIL DO
        TempNode := TempNode.Parent;
      RootDirectory := TempNode.Text;
    END;

    TempNode := Node;
    WHILE TempNode.Parent <> NIL DO BEGIN
      IF Pos('\', TempNode.Parent.Text) > 0 THEN
        PathName := TempNode.Parent.Text + PathName
      ELSE
        PathName := TempNode.Parent.Text + '\' + PathName;
      TempNode := TempNode.Parent;
    END;

    // Node.Expand(False);
  END;
END; { GetTreeViewNodeInfo }

PROCEDURE TExplorerForm.TreeViewEdited(Sender : TObject; Node : TTreeNode; VAR NewString : String);
VAR
  PathName : String;
  RootDir : String;
  SaveIdleState : Boolean;

BEGIN
  SaveIdleState := IdleState;
  IdleState := False;
  IdleState := False;

  GetTreeViewNodeInfo(TreeView.Selected, RootDir, PathName);

  { This is called when the pop-up editing in TreeViewRenamePopupClick has finished }
  TreeView.ReadOnly := false;
  IF NOT RenameFile(PathName + TreeView.Selected.Text, PathName + NewString) THEN
    ShowMessage('Error in renaming "' + PathName + TreeView.Selected.Text + '" as "' + PathName + NewString + '" - ' + SysErrorMessage(GetLastError));

  IdleState := SaveIdleState;
END; { TreeViewEdited }

PROCEDURE TExplorerForm.TreeViewExpanding(Sender: TObject; Node: TTreeNode; VAR AllowExpansion: Boolean);
VAR
  SaveIdleState : Boolean;

BEGIN
  UpdateTreeView := True;

  SaveIdleState := IdleState;
  IdleState := False;

  TreeView.Selected := Node;
  ListFiles;

  IdleState := SaveIdleState;
END; { TreeViewExpanding }

PROCEDURE TExplorerForm.TreeViewKeyDown(Sender : TObject; VAR Key : Word; ShiftState : TShiftState);
VAR
//  Flags: DWORD;
  I : Integer;
  PathName : String;
  RootDir : String;
  SaveIdleState : Boolean;

function ShiftDown : Boolean;
var
   State : TKeyboardState;
begin
   GetKeyboardState(State) ;
   Result := ((State[vk_Control] and 128) <> 0) ;
end;

BEGIN
  TRY
    SaveIdleState := IdleState;
    IdleState := False;

    GetTreeViewNodeInfo(TreeView.Selected, RootDir, PathName);

    CASE Key OF
      Ord('A'):
        BEGIN
          ListView.SetFocus;
          IF ssCtrl IN ShiftState THEN BEGIN
            { select all }
            ListView.Items.BeginUpdate;
            FOR I := 0 TO ListView.Items.Count - 1 DO
              ListView.Items.Item[I].Selected := True;
            ListView.Items.EndUpdate;
          END;
        END;

      Ord('M'):
        IF ssCtrl IN ShiftState THEN BEGIN
          IF NOT ExplorerMemo.Visible THEN
            ExplorerMemo.Visible := True
          ELSE
            ExplorerMemo.Visible := False;
        END;

      Ord('T'):
        IF ssShift IN ShiftState THEN BEGIN
          IF TextFilesOnlyMode THEN
            TextFilesOnlyMode := False
          ELSE BEGIN
            TextFilesOnlyMode := True;
            VideoFilesOnlyMode := False;
          END;

          ListFiles(ForceListing);
        END;

      Ord('V'):
        IF ssShift IN ShiftState THEN BEGIN
          IF VideoFilesOnlyMode THEN
            VideoFilesOnlyMode := False
          ELSE BEGIN
            VideoFilesOnlyMode := True;
            TextFilesOnlyMode := False;
          END;

          ListFiles(ForceListing);
        END;

      vk_F9, vk_F12:
        StartImageView;

      vk_Delete:
        BEGIN
//          IF ssShift In ShiftState THEN BEGIN
//            CASE MessageDlg('Permenently delete "' + TreeView.Selected.Text + '"?', mtConfirmation, [mbYes, mbNo], 0, mbNo) OF
//              mrYes:
//                IF NOT DeleteFilePermanently(TreeView.Selected.Text) THEN
//                  Showmessage('Could not delete ' + TreeView.Selected.Text);
//              mrNo:
//                ;
//            END; {CASE}
//          END ELSE BEGIN
//            CASE MessageDlg('Move "' + TreeView.Selected.Text + '" to Recycle Bin?', mtConfirmation, [mbYes, mbNo], 0, mbNo) OF
//              mrYes:
//                IF NOT DeleteFileToRecycleBin(DirectoryType, TreeView.Selected.Text) THEN
//                  Showmessage('Could not delete ' + TreeView.Selected.Text);
//              mrNo:
//                ;
//            END; {CASE}
//          END;
//          RedrawTreeView;
//          ListFiles;
//
//          ExpandPath(PathName);
//
////          IF TempNode <> NIL THEN
////            TempNode.Expand(False);
        END;
      VK_F2:
        BEGIN
          TreeView.ReadOnly := False;
          IF TreeView.Selected <> NIL THEN
            TreeView.Selected.EditText;
        END;
      Vk_F5:
        BEGIN
          UpdateTreeView := True;
          ListFiles(True);
        END;
  //      RefreshView(Sender);

  //    vk_F7:
  //      IF ControlBarHidden THEN BEGIN
  //        Flags := AW_CENTER OR AW_ACTIVATE;
  //        AnimateWindow(ControlBar.Handle, 200, Flags);
  //        ControlBarHidden := False;
  //      END ELSE BEGIN
  //        Flags := AW_CENTER OR AW_HIDE;
  //        AnimateWindow(ControlBar.Handle, 200, Flags);
  //        ControlBarHidden := True;
  //      END;
  //    vk_F8:
  //      IF ControlBarHidden THEN BEGIN
  //        Flags := AW_SLIDE OR AW_HOR_POSITIVE OR AW_ACTIVATE;
  //        AnimateWindow(ControlBar.Handle, 200, Flags);
  //        ControlBarHidden := False;
  //      END ELSE BEGIN
  //        Flags := AW_SLIDE OR AW_HOR_NEGATIVE OR AW_HIDE;
  //        AnimateWindow(ControlBar.Handle, 200, Flags);
  //        ControlBarHidden := True;
  //      END;
  //    vk_F9:
  //      IF ControlBarHidden THEN BEGIN
  //        Flags := AW_SLIDE OR AW_VER_POSITIVE OR AW_ACTIVATE;
  //        AnimateWindow(ControlBar.Handle, 200, Flags);
  //        ControlBarHidden := False;
  //      END ELSE BEGIN
  //        Flags := AW_SLIDE OR AW_VER_NEGATIVE OR AW_HIDE;
  //        AnimateWindow(ControlBar.Handle, 200, Flags);
  //        ControlBarHidden := True;
  //      END;
    END; {CASE}

    IdleState := SaveIdleState;
      EXCEPT
        ON E : Exception DO
          ShowMessage('TreeViewKeyDown: ' + E.ClassName +' error raised, with message: ' + E.Message);
      END;
END; { TreeViewKeyDown }

procedure TExplorerForm.TreeViewKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  TreeView.Selected := SaveNode;
end;

PROCEDURE TExplorerForm.TreeViewRenamePopupClick(Sender : TObject);
BEGIN
  TreeView.ReadOnly := False;
  TreeView.Selected.EditText;
END; { TreeViewRenamePopupClick }

PROCEDURE TExplorerForm.TreeViewDeleteToRecycleBinPopupClick(Sender : TObject);
BEGIN
  CASE MessageDlg('Move "' + TreeViewDirectory + '" to Recycle Bin?', mtConfirmation, [mbYes, mbNo], 0, mbNo) OF
    mrYes:
      IF NOT DeleteFileToRecycleBin(DirectoryType, TreeViewPathAndDirectory) THEN
        Showmessage('Could not delete ' + TreeViewPathAndDirectory);
    mrNo:
      ;
  END; {CASE}

  RedrawTreeView;
  ListFiles;
END; { TreeViewDeleteToRecycleBinPopupClick }

PROCEDURE TExplorerForm.TreeViewPermanentlyDeletePopupClick(Sender : TObject);
BEGIN
//  CASE MessageDlg('Permanently delete "' + TreeViewDirectory + '"?', mtConfirmation, [mbYes, mbNo], 0, mbNo) OF
//    mrYes:
//      IF NOT DeleteFilePermanently(TreeViewPathAndDirectory) THEN
//        Showmessage('Could not delete ' + TreeViewPathAndDirectory);
//    mrNo:
//      ;
//  END; {CASE}
//
//  RedrawTreeView;
//  ListFiles;
END; { TreeViewPermanentlyDeletePopupClick }

PROCEDURE TExplorerForm.TreeviewNewFolderPopupClick(Sender : TObject);
VAR
  Node : TTreeNode;
  PathName : String;
  RootDir : String;

BEGIN
  GetTreeViewNodeInfo(TreeView.Selected, RootDir, PathName);

  IF NOT CreateDir(PathName + TreeView.Selected.Text + '\New Folder') THEN
    ShowMessage('Directory creation failed: "' + PathName + TreeView.Selected.Text + '\New Folder"')
  ELSE BEGIN
    TreeView.Items.AddChild(TreeView.Selected, 'New Folder');
    Node := GetNodeByText('New Folder', True);
    IF Node <> NIL THEN BEGIN
      TreeView.Selected := Node;
      TreeView.ReadOnly := False;
      TreeViewDirectory := 'New Folder';
      TreeView.Selected.EditText;

      ListFiles;
    END;
  END;
END; { TreeviewNewFolderPopupClick }

//PROCEDURE TExplorerForm.DropFileSourceGetDragImage(Sender: TObject; CONST DragSourceHelper: IDragSourceHelper; VAR Handled: Boolean);
////VAR
////  Pt: TPoint;
//
//BEGIN
////  GetCursorPos(Pt);
////  Handled := Succeeded(DragSourceHelper.InitializeFromWindow(ListView.Handle, Pt, TCustomDropSource(Sender) as IDataObject));
//END; { DropFileSourceGetDragImage }

PROCEDURE TExplorerForm.ClearSnapsCheckBoxClick(Sender: TObject);
VAR
  OK : Boolean;
  SaveEvent1, SaveEvent2 : TNotifyEvent;

BEGIN
  WITH SelectedFileRec DO BEGIN
    SaveEvent1 := ClearSnapsCheckBox.OnClick;
    SaveEvent2 := CreateSnapsCheckBox.OnClick;

    ClearSnapsCheckBox.OnClick := NIL;
    CreateSnapsCheckBox.OnClick := NIL;
    OK := False;

    CASE MessageDlg('Clear snap file: "' + ListViewPathName + 'Snaps"?', mtConfirmation, [mbYes, mbNo], 0, mbNo) OF
      mrYes:
        IF NOT DeleteFileToRecycleBin(DirectoryType, ListViewPathName + 'Snaps') THEN
          Showmessage('Could not delete ' + ListViewPathName + 'Snaps')
        ELSE BEGIN
          OK := True;
          ListFiles;
        END;
      mrNo:
        ;
    END; {CASE}

    IF OK THEN BEGIN
      CreateSnapsCheckBox.Checked := False;
      CreateSnapsCheckBox.Enabled := True;
      CreateSnapsCheckBox.Caption := 'Create';

      ClearSnapsCheckBox.Enabled := False;
    END;

    ClearSnapsCheckBox.Checked := False;
    ClearSnapsCheckBox.OnClick := SaveEvent1;
    CreateSnapsCheckBox.OnClick := SaveEvent2;
  END; {WITH}
END; { ClearSnapsCheckBoxClick }

PROCEDURE TExplorerForm.CreateSnapsCheckBoxClick(Sender : TObject);
VAR
  OK : Boolean;
  SaveEvent: TNotifyEvent;

BEGIN
  SaveEvent := CreateSnapsCheckBox.OnClick;
  CreateSnapsCheckBox.OnClick := NIL;
  CreateSnapsCheckBox.Enabled := False;

  ClearSnapsCheckBox.Enabled := False;

  CreateSnaps(ListViewPathName, ListView, OK);

  CreateSnapsCheckBox.Checked := False;
  ClearSnapsCheckBox.Enabled := True;

  CreateSnapsCheckBox.OnClick := SaveEvent;
END; { CreateSnapsCheckBoxClick }

PROCEDURE TExplorerForm.Explorer5SecondTimerTick(Sender: TObject);
{ See if any on-screen data has changed }
VAR
  CDrives : ARRAY[0..128] OF Char;
  PDrive : PChar;
  SearchRec : TSearchRec;
  TempDrivesList : String;
  TempFilesList : String;
  TempFoldersList : String;

BEGIN
  TRY
    IF IdleState AND NOT ListViewFileNameNumbersEdit.Visible AND NOT ListViewFileNameEdit.Visible THEN BEGIN
      TempFilesList := '';
      TempDrivesList := '';

      { Save the current list of drives, and compare it with what's displayed }
      IF GetLogicalDriveStrings(SizeOf(CDrives), CDrives) = 0 THEN
        Exit;

      { Set pointer to char array }
      PDrive := CDrives;
      { Loop until end of string / char array }
      WHILE PDrive^ <> #0 DO BEGIN
        TempDrivesList := TempDrivesList + PDrive;

        { Increment pointer to character array by 4 }
        Inc(PDrive, 4);
      END;

      IF TempDrivesList <> SaveDrivesList THEN
        RedrawTreeView;

      { list all folders }
      IF FindFirst('\*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
        REPEAT
          IF (SearchRec.Name = '.') OR (SearchRec.Name = '..') THEN
            Continue
          ELSE
            IF IsDirectory(SearchRec.Attr) THEN
              TempFoldersList := TempFoldersList + SearchRec.Name;

        { loop until no more files are found }
        UNTIL FindNext(SearchRec) <> 0;
      END;

      { and do the same for the files }
      IF FindFirst(ListViewPathName + '*.*', FaAnyFile, SearchRec) = 0 THEN BEGIN
        REPEAT
          IF (SearchRec.Name = '.') OR (SearchRec.Name = '..') THEN
            Continue
          ELSE
            IF NOT IsDirectory(SearchRec.Attr) THEN
              TempFilesList := TempFilesList + SearchRec.Name;

        { loop until no more files are found }
        UNTIL FindNext(SearchRec) <> 0;
      END;

      IF TempFilesList <> SaveFilesList THEN
        ListFiles;

      IF TempFoldersList <> SaveFoldersList THEN BEGIN
        UpdateTreeView := True;
        ListFiles;
      END;
    END;
  EXCEPT
    ON E : Exception DO
      ShowMessage('Explorer5SecondTimerTick: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { Explorer5SecondTimerTick }

PROCEDURE TExplorerForm.WMEnterSizeMove(VAR Message : TMessage);
BEGIN
  CanRestoreCursorPos := False;
END; { WMEnterSizeMove }

PROCEDURE TExplorerForm.WMExitSizeMove(VAR Message : TMessage);
BEGIN
  CanRestoreCursorPos := True;
END; { WMExitSizeMove }

PROCEDURE TExplorerForm.ExplorerFormPaint(Sender : TObject);
BEGIN
  IF CanRestoreCursorPos THEN
    IF ExplorerForm.Focused THEN
      IF (SaveMousePos.X > 0) OR (SaveMousePos.Y > 0) THEN
        SetCursorPos(SaveMousePos.X, SaveMousePos.Y);
END; { ExplorerFormPaint }

PROCEDURE TExplorerForm.FindDialogFind(Sender: TObject);
VAR
  FoundFileName : String;
  I : Integer;
  ItemFoundNum : Integer;

BEGIN
  TRY
    FoundFileName := '';
    ItemFoundNum := -1;

    I := SaveItemFoundNum + 1;
    WHILE (I < ListView.Items.Count) AND (ItemFoundNum = -1) DO BEGIN
      IF frWholeWord IN FindDialog.Options THEN BEGIN
        IF frMatchCase IN FindDialog.Options THEN BEGIN
          IF FindDialog.FindText = ListView.Items[I].Caption THEN BEGIN
            { whole word and match case }
            ListView.Items[I].SubItems[CompareAsterisksColumnPos] := 'F';
            ItemFoundNum := I;
          END;
        END ELSE BEGIN
          IF UpperCase(FindDialog.FindText) = UpperCase(ListView.Items[I].Caption) THEN BEGIN
            { whole word and not match case }
            ListView.Items[I].SubItems[CompareAsterisksColumnPos] := 'F';
            ItemFoundNum := I;
          END;
        END;
      END ELSE BEGIN
        IF frMatchCase IN FindDialog.Options THEN BEGIN
          IF Pos(FindDialog.FindText, ListView.Items[I].Caption) > 0 THEN BEGIN
            { not whole word and match case }
            ListView.Items[I].SubItems[CompareAsterisksColumnPos] := 'F';
            ItemFoundNum := I;
          END;
        END ELSE BEGIN
          IF Pos(UpperCase(FindDialog.FindText), UpperCase(ListView.Items[I].Caption)) > 0 THEN BEGIN
            { not whole word and not match case }
            ListView.Items[I].SubItems[CompareAsterisksColumnPos] := 'F';
            ItemFoundNum := I;
          END;
        END;
      END;
      Inc(I);
    END; {WHILE}

    IF ItemFoundNum <> -1 THEN BEGIN
      ListView.Items[ItemFoundNum].MakeVisible(False);
      ListView.ItemFocused := ListView.Items[ItemFoundNum];
      SaveItemFoundNum := ItemFoundNum;
      ListView.SetFocus;
    END;

    FindDialog.CloseDialog;
  EXCEPT
    ON E : Exception DO
      ShowMessage('FindDialogFind: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { FindDialogFind }

PROCEDURE TExplorerForm.ListViewAdvancedCustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage; VAR DefaultDraw: Boolean);
VAR
  TypeOfFile : FileType;

BEGIN
  TRY
    IF Item.SubItems[CompareAsterisksColumnPos] = 'F' THEN BEGIN
      Sender.Canvas.Font.Color := clWhite;
      Sender.Canvas.Brush.Color := clMaroon;
      Item.SubItems[CompareAsterisksColumnPos] := '';
    END ELSE
      IF (CompareFileSize AND (Item.SubItems[CompareAsterisksColumnPos] = '**')) THEN BEGIN
        Sender.Canvas.Font.Color := clWhite;
        Sender.Canvas.Brush.Color := clBlue;
      END ELSE
        IF (CompareFileSize AND (Item.SubItems[CompareAsterisksColumnPos] = '*'))
        OR (CompareFileSizeInDifferentDirectory AND (Item.SubItems[CompareAsterisksColumnPos] = '***'))
        OR (CompareSnapImages AND (Item.SubItems[CompareAsterisksColumnPos] = '***'))
        THEN BEGIN
          Sender.Canvas.Font.Color := clWhite;
          Sender.Canvas.Brush.Color := clMaroon;
        END ELSE
          IF (CompareSnapImages AND (Item.SubItems[CompareAsterisksColumnPos] = '****'))
          OR (CompareSnapImagesInDifferentDirectory AND (Item.SubItems[CompareAsterisksColumnPos] = '****'))
          THEN BEGIN
            Sender.Canvas.Font.Color := clWhite;
            Sender.Canvas.Brush.Color := clGreen;
          END ELSE
            IF FWPMode THEN
              IF FileTypeSuffixFound(Item.Caption, TypeOfFile) THEN
                IF (TypeOfFile = VideoFile) AND NOT VideoFilesOnlyMode THEN
                  Sender.Canvas.Font.Style := [fsBold]
                ELSE
                  IF (TypeOfFile = Text_File) AND NOT TextFilesOnlyMode THEN
                    Sender.Canvas.Font.Style := [fsBold];
  EXCEPT
    ON E : Exception DO
      ShowMessage('ListViewAdvancedCustomDrawItem: ' + E.ClassName +' error raised, with message: ' + E.Message
                  + ' - Item = ' + Item.Caption);
  END; {TRY}
END; { ListViewAdvancedCustomDrawItem }

PROCEDURE TempMoveElapsedTimes;
BEGIN

END; { TempMoveElapsedTimes }

INITIALIZATION
  { turn off when debugging (can then use the caption for debugging output) }
//  ShowExplorerCaption := False;
  ShowExplorerCaption := True;
END { FWPExplorerUnit }.
