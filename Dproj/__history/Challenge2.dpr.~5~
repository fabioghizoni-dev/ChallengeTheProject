program Challenge2;

uses
  Vcl.Forms,
  uBase in 'Units\Base\uBase.pas' {frmBase},
  uDB in 'Units\DataModule\uDB.pas' {dtModule: TDataModule},
  uMainVCL in 'Units\Main\uMainVCL.pas' {frmMain},
  dlgClearDB in 'Units\Dlg\dlgClearDB.pas' {dlgLimpaBanco},
  dlgDeleteDB in 'Units\Dlg\dlgDeleteDB.pas' {dlgDeleteBanco};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmBase, frmBase);
  Application.CreateForm(TdtModule, dtModule);
  Application.CreateForm(TdlgLimpaBanco, dlgLimpaBanco);
  Application.CreateForm(TdlgDeleteBanco, dlgDeleteBanco);
  Application.Run;
end.
