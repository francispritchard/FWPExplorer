UNIT SnapsCompare;

INTERFACE

USES
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, FWPExplorerUnit, AXCtrls, GraphUtil, StrUtils, ComCtrls,
  DateUtils, ShellAPI, TLHelp32, ZoomPlayerUnit;

TYPE
  TSnapsCompareForm = CLASS(TForm)
    SnapsCompareFormImage1 : TImage;
    SnapsCompareFormImage2 : TImage;
    PROCEDURE SnapsCompareFormClose(Sender : TObject; VAR Action : TCloseAction);
    PROCEDURE SnapsCompareFormCreate(Sender : TObject);
  PRIVATE
    { Private declarations }
  PUBLIC
    { Public declarations }
  END;

PROCEDURE ProcessMouseMove(ListView : TListView; X, Y : Integer);

VAR
  SnapsCompareForm : TSnapsCompareForm;

IMPLEMENTATION

{$R *.dfm}

USES Registry;

CONST
  FormAlignmentSectionStr = 'Form Alignment';

  SnapsCompareFormTopStr = 'Snaps Compare Form Top';
  SnapsCompareFormLeftStr = 'Snaps Compare Form Left';
  SnapsCompareFormWidthStr = 'Snaps Compare Form Width';
  SnapsCompareFormHeightStr = 'Snaps Compare Form Height';

VAR
  DefaultSnapsCompareFormTop : Integer = 0;
  DefaultSnapsCompareFormLeft : Integer = 0;
  DefaultSnapsCompareFormWidth : Integer = 508;
  DefaultSnapsCompareFormHeight : Integer = 900;

  SnapsCompareFormTop : Integer = 0;
  SnapsCompareFormLeft : Integer = 0;
  SnapsCompareFormWidth : Integer = 508;
  SnapsCompareFormHeight : Integer = 900;

PROCEDURE LoadCompareImage(PathAndFileName : String; SnapNumber : Integer);
VAR
  Bitmap, NewBitmap : TBitmap;
  FileStream : TFileStream;
  OleGraphic : TOleGraphic;
  Source : TImage;
  TempDouble : Double;
  UseOriginalImage : Boolean;

BEGIN
  TRY
    FileStream := TFileStream.Create(PathAndFileName, fmOpenRead Or fmSharedenyNone);

    IF FileStream <> NIL THEN BEGIN
      OleGraphic := TOleGraphic.Create;

      TRY
        OleGraphic.LoadFromStream(FileStream);
      EXCEPT
        ON E : Exception DO
          { do nothing }; //ShowMessage('OleGraphic.LoadFromStream: ' + E.ClassName +' error raised with message: ' + E.Message);
      END;

      Source := TImage.Create(NIL);
      Source.Picture.Assign(OleGraphic);

      Bitmap := TBitmap.Create; { Converting to bitmap }
      Bitmap.Width := Source.Picture.Width;
      Bitmap.Height := Source.Picture.Height;
      Bitmap.Canvas.Draw(0, 0, Source.Picture.Graphic);

      NewBitMap := TBitmap.Create; { Converting to bitmap }

      UseOriginalImage := False;

      IF SnapNumber = 1 THEN BEGIN
        IF BitMap.Width = 0 THEN
          SnapsCompareForm.SnapsCompareFormImage1.Picture.Bitmap := Bitmap
        ELSE BEGIN
          TempDouble := SnapsCompareForm.SnapsCompareFormImage1.Width / Bitmap.Width;
          TRY
            ScaleImage(Bitmap, NewBitMap, TempDouble);
          EXCEPT
            ON E : Exception DO BEGIN
              { do nothing } ; // ShowMessage('ScaleImage: ' + E.ClassName +' error raised with message: ' + E.Message);
              UseOriginalImage := True;
            END;
          END;

          IF UseOriginalImage THEN
            SnapsCompareForm.SnapsCompareFormImage1.Picture.Bitmap := Bitmap
          ELSE
            SnapsCompareForm.SnapsCompareFormImage1.Picture.Bitmap := NewBitmap;
        END;
      END ELSE BEGIN
        IF BitMap.Width = 0 THEN
          SnapsCompareForm.SnapsCompareFormImage2.Picture.Bitmap := Bitmap
        ELSE BEGIN
          TempDouble := SnapsCompareForm.SnapsCompareFormImage2.Width / Bitmap.Width;
          TRY
            ScaleImage(Bitmap, NewBitMap, TempDouble);
          EXCEPT
            ON E : Exception DO BEGIN
              { do nothing } ; // ShowMessage('ScaleImage: ' + E.ClassName +' error raised with message: ' + E.Message);
              UseOriginalImage := True;
            END;
          END;

          IF UseOriginalImage THEN
            SnapsCompareForm.SnapsCompareFormImage2.Picture.Bitmap := Bitmap
          ELSE
            SnapsCompareForm.SnapsCompareFormImage2.Picture.Bitmap := NewBitmap;
        END;
      END;
      FileStream.Free;
      OleGraphic.Free;
      Source.Free;
      Bitmap.Free;
      NewBitmap.Free;
    END;
  EXCEPT
    ON E : Exception DO
      ShowMessage('LoadImage: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { LoadCompareImage }

PROCEDURE ProcessMouseMove(ListView : TListView; X, Y : Integer);

CONST
  SnapOne = 1;
  SnapTwo = 2;

VAR
  SaveListItemSelected : TListItem;
  TempFileName1, TempFileName2 : String;
  TempListItem : TListItem;
  TempFileNameWithoutNumbers : String;
  TempNumberStr : String;
  TypeOfFile : FileType;

BEGIN
  TRY
    SaveListItemSelected := ListView.Selected;

    IF SnapsCompareForm.Visible THEN BEGIN
      TempListItem := ListView.GetItemAt(X, Y);
      IF (TempListItem = NIL) OR (TempListItem.SubItems[7] = '') THEN BEGIN
        SnapsCompareForm.SnapsCompareFormImage1.Picture.Bitmap := NIL;
        SnapsCompareForm.SnapsCompareFormImage2.Picture.Bitmap := NIL;
      END ELSE BEGIN
        TempListItem.Selected := True;
        TempFilename2 := ExtractFileName(TempListItem.SubItems[ComparePathAndFileNameColumnPos]);

        IF TempFileName2 <> '' THEN BEGIN
          IF ShowExplorerCaption THEN
            ExplorerForm.Caption := TempListItem.Caption + ' - ' + TempFileName2;

          TempFilename1 := ExtractFileName(TempListItem.Caption);

          IF NOT FileTypeSuffixFound(TempFilename1, TypeOfFile)
          OR (TypeOfFile <> VideoFile)
          THEN BEGIN
            SnapsCompareForm.SnapsCompareFormImage1.Picture.Bitmap := NIL;
            SnapsCompareForm.SnapsCompareFormImage2.Picture.Bitmap := NIL;
          END ELSE BEGIN
            { remove any numbers as snaps files do not have any }
            RemoveNumbersAndDeletes(TempListItem.Caption, TempFileNameWithoutNumbers, TempNumberStr);

            IF FileExists(ListViewPathName + 'Snaps\' + TempFileNameWithoutNumbers + '.jpg') THEN BEGIN
              TRY
                LoadCompareImage(ListViewPathName + 'Snaps\' + TempFileNameWithoutNumbers + '.jpg', SnapOne);
              EXCEPT
                ON E : Exception DO
                  ShowMessage('ProcessMouseMove: ' + E.ClassName +' error raised with message: ' + E.Message);
              END;
            END;

            { Now get the second image - remove any numbers and also drive letter and path }
            RemoveNumbersAndDeletes(TempListItem.SubItems[CompareFileNameColumnPos], TempFileNameWithoutNumbers, TempNumberStr);
            IF Pos('.jpg', TempFileNameWithoutNumbers) = 0 THEN
              TempFileNameWithoutNumbers := TempFileNameWithoutNumbers + '.jpg';

            IF FileExists(TempListItem.SubItems[ComparePathNameColumnPos] + 'Snaps\' + TempFileNameWithoutNumbers) THEN BEGIN
              TRY
                LoadCompareImage(TempListItem.SubItems[ComparePathNameColumnPos] + 'Snaps\' + TempFileNameWithoutNumbers, SnapTwo);
              EXCEPT
                ON E : Exception DO
                  ShowMessage('ProcessMouseMove: ' + E.ClassName +' error raised with message: ' + E.Message);
              END;
            END;
          END;
          TempListItem.Selected := False;
          ListView.Selected := SaveListItemSelected;
        END;
      END;
    END;
  EXCEPT
    ON E : Exception DO
      ShowMessage('ProcessMouseMove: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { ProcessMouseMove }

PROCEDURE TSnapsCompareForm.SnapsCompareFormCreate(Sender : TObject);
VAR
  IniFile : TRegistryIniFile;

BEGIN
  TRY
    IniFile := TRegistryIniFile.Create('FWPExplorer');

    WITH IniFile DO BEGIN
      SnapsCompareFormTop := ReadInteger(FormAlignmentSectionStr, SnapsCompareFormTopStr, DefaultSnapsCompareFormTop);
      SnapsCompareFormLeft := ReadInteger(FormAlignmentSectionStr, SnapsCompareFormLeftStr, DefaultSnapsCompareFormLeft);
      SnapsCompareFormWidth := ReadInteger(FormAlignmentSectionStr, SnapsCompareFormWidthStr, DefaultSnapsCompareFormWidth);
      SnapsCompareFormHeight := ReadInteger(FormAlignmentSectionStr, SnapsCompareFormHeightStr, DefaultSnapsCompareFormHeight);
    END; {WITH}

    IniFile.Free;

  EXCEPT
    ON E : Exception DO
      ShowMessage('EG SnapsCompareFormCreate: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { SnapsCompareFormCreate }

PROCEDURE TSnapsCompareForm.SnapsCompareFormClose(Sender : TObject; VAR Action : TCloseAction);
VAR
  IniFile : TRegistryIniFile;

BEGIN
  TRY
    IniFile := TRegistryIniFile.Create('FWPExplorer');

    WITH IniFile DO BEGIN
      WriteInteger(FormAlignmentSectionStr, SnapsCompareFormWidthStr, SnapsCompareForm.Width);
      WriteInteger(FormAlignmentSectionStr, SnapsCompareFormHeightStr, SnapsCompareForm.Height);
      WriteInteger(FormAlignmentSectionStr, SnapsCompareFormTopStr, SnapsCompareForm.Top);
      WriteInteger(FormAlignmentSectionStr, SnapsCompareFormLeftStr, SnapsCompareForm.Left);
    END; {WITH}

    IniFile.Free;

  EXCEPT
    ON E : Exception DO
      ShowMessage('EG SnapsCompareFormClose: ' + E.ClassName +' error raised, with message: ' + E.Message);
  END; {TRY}
END; { SnapsCompareFormClose }

END { SnapsCompare }.
