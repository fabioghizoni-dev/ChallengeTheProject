program Challenge2;

uses
  Vcl.Forms,
  uBase in 'Units\Base\uBase.pas' {frmBase},
  uDB in 'Units\DataModule\uDB.pas' {dtModule: TDataModule},
  uMainVCL in 'Units\Main\uMainVCL.pas' {frmMain},
  dlgProgressBar in 'Units\Dlg\dlgProgressBar.pas' {frmDlgPrgs},
  dlgConfirmationDelete in 'Units\Dlg\dlgConfirmationDelete.pas' {dlgConfirmDB};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmBase, frmBase);
  Application.CreateForm(TdtModule, dtModule);
  Application.CreateForm(TfrmDlgPrgs, frmDlgPrgs);
  Application.CreateForm(TdlgConfirmDB, dlgConfirmDB);
  Application.Run;
end.
