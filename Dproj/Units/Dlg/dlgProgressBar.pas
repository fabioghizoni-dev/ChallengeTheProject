unit dlgProgressBar;

interface

uses
  JvExComCtrls,
  JvProgressBar,

  System.Classes,
  System.SysUtils,

  Vcl.Buttons,
  Vcl.ComCtrls,
  Vcl.Controls,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.StdCtrls,

  Winapi.Windows;

type
  TfrmDlgPrgs = class(TForm)
    timer: TTimer;
    prgsBar: TJvProgressBar;
    procedure timerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDlgPrgs: TfrmDlgPrgs;

implementation

{$R *.dfm}

uses dlgConfirmationDelete;

{ TdlgConfirm }

procedure TfrmDlgPrgs.timerTimer(Sender: TObject);
begin
  timer.Interval := 4000;
  timer.Enabled := True;
  frmDlgPrgs.Close;
end;

end.
