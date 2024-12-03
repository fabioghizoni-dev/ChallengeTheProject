unit dlgDeleteDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dlgClearDB, Vcl.ButtonStylesAttributes, Vcl.StyledButton,
  Vcl.CustomizeDlg, Vcl.ExtCtrls;

type
  TdlgDeleteBanco = class(TdlgLimpaBanco)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgDeleteBanco: TdlgDeleteBanco;

implementation

{$R *.dfm}

end.
