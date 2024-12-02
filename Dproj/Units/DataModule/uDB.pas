unit uDB;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.PGDef, FireDAC.Stan.Intf, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdtModule = class(TDataModule)
    DriverPG: TFDPhysPgDriverLink;
    Conn: TFDConnection;
    t117_direitos_acesso: TFDTable;
    t118_direitos_acesso_usuarios: TFDTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    t117_direitos_acessot117_ca_codigo: TWideStringField;
    t117_direitos_acessot117_ca_descricao: TWideStringField;
    t117_direitos_acessot117_ca_nome_menu: TWideStringField;
    t118_direitos_acesso_usuariost003_nr_codigo: TIntegerField;
    t118_direitos_acesso_usuariost117_ca_codigo: TWideStringField;
    t118_direitos_acesso_usuariost118_ca_direito: TWideStringField;
    t118_direitos_acesso_usuariost118_dt_ultima_alteracao: TSQLTimeStampField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ClearTable;
    procedure Save;
    procedure Delete;
    procedure Refresh;
    { Public declarations }
  end;

var
  dtModule: TdtModule;

implementation

uses
  Vcl.Forms, Vcl.Dialogs;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



procedure TdtModule.DataModuleCreate(Sender: TObject);
begin
  try
  DriverPG.VendorLib := ExtractFilePath(Application.ExeName  + 'libpq.dll');
  if Conn.Connected = False then
  Conn.Connected := True
  else
  Conn.Connected := True;
  if Conn.Connected = True then
    begin
    t117_direitos_acesso.Active := True;
    t118_direitos_acesso_usuarios.Active := True;
    end;
  finally
    dtModule.Free;
  end;

end;

procedure TdtModule.Save;
begin
  ShowMessage('Salvo');
end;

procedure TdtModule.Refresh;
begin
  ShowMessage('Refresh');
end;

procedure TdtModule.ClearTable;
begin
  ShowMessage('Limpo');
end;

procedure TdtModule.Delete;
begin
  ShowMessage('Deletado');
end;

end.
