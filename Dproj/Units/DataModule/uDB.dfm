object dtModule: TdtModule
  OnCreate = DataModuleCreate
  Height = 418
  Width = 639
  object DriverPG: TFDPhysPgDriverLink
    Left = 32
    Top = 32
  end
  object Conn: TFDConnection
    Params.Strings = (
      'ConnectionDef=desafio')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 32
  end
  object t117_direitos_acesso: TFDTable
    Active = True
    IndexFieldNames = 't117_ca_codigo'
    Connection = Conn
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 't117_direitos_acesso'
    Left = 368
    Top = 32
    object t117_direitos_acessot117_ca_codigo: TWideStringField
      FieldName = 't117_ca_codigo'
      Origin = 't117_ca_codigo'
      Size = 12
    end
    object t117_direitos_acessot117_ca_descricao: TWideStringField
      FieldName = 't117_ca_descricao'
      Origin = 't117_ca_descricao'
      Size = 250
    end
    object t117_direitos_acessot117_ca_nome_menu: TWideStringField
      FieldName = 't117_ca_nome_menu'
      Origin = 't117_ca_nome_menu'
      Size = 50
    end
  end
  object t118_direitos_acesso_usuarios: TFDTable
    Active = True
    IndexFieldNames = 't003_nr_codigo;t117_ca_codigo'
    Connection = Conn
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 't118_direitos_acesso_usuarios'
    Left = 528
    Top = 32
    object t118_direitos_acesso_usuariost003_nr_codigo: TIntegerField
      FieldName = 't003_nr_codigo'
      Origin = 't003_nr_codigo'
    end
    object t118_direitos_acesso_usuariost117_ca_codigo: TWideStringField
      FieldName = 't117_ca_codigo'
      Origin = 't117_ca_codigo'
      Size = 12
    end
    object t118_direitos_acesso_usuariost118_ca_direito: TWideStringField
      FieldName = 't118_ca_direito'
      Origin = 't118_ca_direito'
      Size = 1
    end
    object t118_direitos_acesso_usuariost118_dt_ultima_alteracao: TSQLTimeStampField
      FieldName = 't118_dt_ultima_alteracao'
      Origin = 't118_dt_ultima_alteracao'
      ProviderFlags = [pfInUpdate]
    end
  end
  object srcT117: TDataSource
    DataSet = t117_direitos_acesso
    Left = 368
    Top = 88
  end
  object srcT118: TDataSource
    DataSet = t118_direitos_acesso_usuarios
    Left = 528
    Top = 88
  end
  object QuerySave: TFDQuery
    Connection = Conn
    Left = 400
    Top = 352
  end
  object QueryClearTable: TFDQuery
    Connection = Conn
    Left = 568
    Top = 352
  end
  object QueryDelete: TFDQuery
    Connection = Conn
    Left = 477
    Top = 352
  end
  object QueryCreate: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS public.t117_direitos_acesso ('
      '    t117_ca_codigo varchar(12) NOT NULL,'
      '    t117_ca_descricao varchar(250),'
      '    t117_ca_nome_menu varchar(50),'
      
        '    CONSTRAINT t117_direitos_acesso_pkey PRIMARY KEY (t117_ca_co' +
        'digo)'
      ');'
      '')
    Left = 54
    Top = 272
  end
  object dtCreate: TDataSource
    DataSet = QueryCreate
    Left = 56
    Top = 328
  end
  object QueryInsert: TFDQuery
    Connection = Conn
    Left = 128
    Top = 272
  end
  object dtInsert: TDataSource
    DataSet = QueryInsert
    Left = 128
    Top = 328
  end
end
