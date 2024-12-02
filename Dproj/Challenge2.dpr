program Challenge2;

uses
  Vcl.Forms,
  uBase in 'Units\Base\uBase.pas' {frmBase},
  uDB in 'Units\DataModule\uDB.pas' {dtModule: TDataModule},
  uMainVCL in 'Units\Main\uMainVCL.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmBase, frmBase);
  Application.CreateForm(TdtModule, dtModule);
  Application.Run;
end.
