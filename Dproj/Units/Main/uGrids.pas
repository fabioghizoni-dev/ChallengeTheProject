unit uGrids;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels, Data.DB,
  Vcl.Grids, Vcl.DBGrids, uDB;

type
  TgridsFrame = class(TFrame)
    Grid: TDBGrid;
    Grid2: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TgridsFrame }

end.