unit dlgConfirmationDelete;

interface

uses
  System.Classes,
  System.SysUtils,

  Vcl.ButtonStylesAttributes,
  Vcl.Buttons,
  Vcl.Controls,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.StdCtrls,
  Vcl.StyledButton,

  Winapi.Windows;

type
  TdlgConfirmDB = class(TForm)
    btnYes: TStyledButton;
    btnNo: TStyledButton;
    procedure btnYesClick(Sender: TObject);
    procedure btnNoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgConfirmDB: TdlgConfirmDB;

implementation

{$R *.dfm}

uses
  dlgProgressBar;

procedure TdlgConfirmDB.btnYesClick(Sender: TObject);
begin
  dlgProgressBar.frmDlgPrgs.Show;
  dlgConfirmDB.Close;
end;

procedure TdlgConfirmDB.btnNoClick(Sender: TObject);
begin
  dlgConfirmDB.Close;
end;

end.
