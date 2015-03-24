PROGRAM FWPExplorer;

uses
  ShareMem,
  Forms,
  FWPExplorerUnit in 'FWPExplorerUnit.pas' {ExplorerForm},
  ZoomPlayerUnit in 'ZoomPlayerUnit.pas' {ZoomPlayerUnitForm},
  ZoomPlayerCodes in 'ZoomPlayerCodes.pas',
  SnapsCompare in 'SnapsCompare.pas' {SnapsCompareForm};

{$R *.res}

BEGIN
  Application.Initialize;
  Application.Title := 'FWP Explorer';
  Application.CreateForm(TExplorerForm, ExplorerForm);
  Application.CreateForm(TZoomPlayerUnitForm, ZoomPlayerUnitForm);
  Application.CreateForm(TSnapsCompareForm, SnapsCompareForm);
  Application.Run;
END { FWPExplorer }.
