unit uDB;

interface

uses
  Data.DB,

  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys,
  FireDAC.Phys.Intf,
  FireDAC.Phys.PG,
  FireDAC.Phys.PGDef,
  FireDAC.Stan.Async,
  FireDAC.Stan.Def,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Pool,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,

  System.Classes,
  System.SysUtils,

  Vcl.ComCtrls,
  Vcl.CustomizeDlg;

type
  TdtModule = class(TDataModule)
    DriverPG: TFDPhysPgDriverLink;
    Conn: TFDConnection;
    t117_direitos_acesso: TFDTable;
    t118_direitos_acesso_usuarios: TFDTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    QuerySave: TFDQuery;
    QueryClearTable: TFDQuery;
    QueryDelete: TFDQuery;
    QueryRefresh: TFDQuery;
    t117_direitos_acessot117_ca_codigo: TWideStringField;
    t117_direitos_acessot117_ca_descricao: TWideStringField;
    t117_direitos_acessot117_ca_nome_menu: TWideStringField;
    t118_direitos_acesso_usuariost003_nr_codigo: TIntegerField;
    t118_direitos_acesso_usuariost117_ca_codigo: TWideStringField;
    t118_direitos_acesso_usuariost118_ca_direito: TWideStringField;
    t118_direitos_acesso_usuariost118_dt_ultima_alteracao: TSQLTimeStampField;
    QueryCreate: TFDQuery;
    dtCreate: TDataSource;
    QueryInsert: TFDQuery;
    dtInsert: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateTable;
    procedure allChecks(UnCheck, Check: TStringList);
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
  Vcl.Dialogs,
  Vcl.Forms;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtModule.DataModuleCreate(Sender: TObject);
begin
  try
  DriverPG.VendorLib := ExtractFilePath(Application.ExeName  + 'libpq.dll');
  if Conn.Connected = False then
  begin
  Conn.Connected := True
  //t117_direitos_acesso.Active := True;
  //t118_direitos_acesso_usuarios.Active := True;

  end
  else
  Conn.Connected := True;
  //t117_direitos_acesso.Active := True;
  //t118_direitos_acesso_usuarios.Active := True;
  finally
    //dtModule.Free;
  end;

end;

procedure TdtModule.Save;
begin
  QuerySave.SQL.Text := '';
  ShowMessage('Salvo');
end;

procedure TdtModule.Refresh;
begin
  QueryRefresh.SQL.Text := '';
  ShowMessage('Refresh');
end;

procedure TdtModule.allChecks(UnCheck, Check: TStringList);
var
  i: Integer;
begin
  // Exibe os itens marcados e desmarcados
  for i := 0 to Check.Count - 1 do
    ShowMessage(Check[i]);

  for i := 0 to UnCheck.Count - 1 do
    ShowMessage(UnCheck[i]);
end;

procedure TdtModule.ClearTable;
begin
  QueryClearTable.SQL.Text := '';
  ShowMessage('Limpo');
end;

procedure TdtModule.CreateTable;
begin
  QueryCreate.SQL.Text := '';
end;

procedure TdtModule.Delete;
begin
  QueryDelete.SQL.Text := '';
  ShowMessage('Deletado');
end;

end.
