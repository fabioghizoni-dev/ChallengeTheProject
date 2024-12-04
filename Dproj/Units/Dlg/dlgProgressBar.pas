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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDlgPrgs: TfrmDlgPrgs;

implementation

{$R *.dfm}

{ TdlgConfirm }

procedure TfrmDlgPrgs.FormCreate(Sender: TObject);
begin
  try
    prgsBar.Min := 0;
  finally
    prgsBar.Max := timer.Interval;
  end;
end;

procedure TfrmDlgPrgs.timerTimer(Sender: TObject);
begin
  try
    if frmDlgPrgs.Active then
    timer.Enabled := True;
    timer.Interval := 4000;
  finally
    frmDlgPrgs.Close;
  end;
end;

procedure TfrmDlgPrgs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(frmDlgPrgs);
end;

end.