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
  try
    dlgConfirmDB.Close;
    frmDlgPrgs.Show;
  finally
    //dlgConfirmDB.Free;
  end;
end;

end.
