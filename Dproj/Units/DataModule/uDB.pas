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
  FireDAC.Phys.SQLiteVDataSet,
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
    srcT117: TDataSource;
    srcT118: TDataSource;
    QuerySave: TFDQuery;
    QueryClearTable: TFDQuery;
    QueryDelete: TFDQuery;
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
    procedure Update(const NumeroID, CheckedID: String);
    procedure CreateTable;
    procedure allChecks;
    procedure ClearTable;
    procedure Save(t117_ca_codigo, t118_ca_direito: String);
    procedure Delete;
    procedure Refresh;
    { Public declarations }
  end;

var
  dtModule: TdtModule;

implementation

uses
  dlgConfirmationDelete,

  Vcl.Dialogs,
  Vcl.Forms;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtModule.DataModuleCreate(Sender: TObject);
begin
  try
  {$IFDEF WIN32}
  DriverPG.VendorHome := ExtractFilePath(Application.ExeName);
  {$ELSE}
  DriverPG.VendorLib := ExtractFilePath(Application.ExeName+'libpq.dll');
  {$ENDIF}
    if Conn.Connected = False then
    begin
    Conn.Connected := True;
    end
    else
    begin
      Conn.Connected := True;
    end;

    // Tabelas n�o ativas s�o ativadas
    t117_direitos_acesso.Active := True;
    t118_direitos_acesso_usuarios.Active := True;

  finally

  end;
end;

procedure TdtModule.Update(const NumeroID, CheckedID: String);
begin
//  try
    //QueryInsert.SQL.Text :=
    //  '';
    //QueryInsert.ParamByName('NumeroID').AsString := NumeroID;
    //QueryInsert.ParamByName('CheckedID').AsString := CheckedID;
    //QueryInsert.ExecSQL;
//  except
//    on E: Exception do
//      ShowMessage('Erro ao atualizar direitos: ' + E.Message);
//  end;
end;

procedure TdtModule.Save(t117_ca_codigo, t118_ca_direito: String);
begin
  try
    QuerySave.Close;
    QuerySave.SQL.Text :=

     'UPDATE t118_direitos_acesso_usuarios ' +
     'SET t118_ca_direito = ' + QuotedStr(t118_ca_direito) +
     'WHERE t003_nr_codigo = 1 AND t117_ca_codigo = ' + QuotedStr(t117_ca_codigo);


    QuerySave.ExecSQL;

  except

    on E: Exception do
    ShowMessage('Erro ao atualizar direitos: ' + E.Message);

  end;
end;

procedure TdtModule.Refresh;
begin
  t117_direitos_acesso.RefreshMetadata;
  t118_direitos_acesso_usuarios.RefreshMetadata;
  ShowMessage('Refresh');
end;

procedure TdtModule.allChecks;
begin
  //
end;

procedure TdtModule.ClearTable;
begin
  //
end;

procedure TdtModule.CreateTable;
begin
  QueryCreate.SQL.Text := '';
  ShowMessage('Criado');
end;

procedure TdtModule.Delete;
begin
  QueryDelete.SQL.Text := '';
  ShowMessage('Deletado');
end;

end.
