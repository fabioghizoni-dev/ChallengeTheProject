object dtModule: TdtModule
  OnCreate = DataModuleCreate
  Height = 692
  Width = 998
  object DriverPG: TFDPhysPgDriverLink
    Left = 40
    Top = 48
  end
  object Conn: TFDConnection
    Params.Strings = (
      'ConnectionDef=desafio')
    Connected = True
    LoginPrompt = False
    Left = 112
    Top = 48
  end
  object t117_direitos_acesso: TFDTable
    Active = True
    IndexFieldNames = 't117_ca_codigo'
    Connection = Conn
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 't117_direitos_acesso'
    Left = 296
    Top = 280
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
    Left = 456
    Top = 280
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
    Left = 296
    Top = 336
  end
  object srcT118: TDataSource
    DataSet = t118_direitos_acesso_usuarios
    Left = 456
    Top = 336
  end
  object QuerySave: TFDQuery
    Connection = Conn
    Left = 400
    Top = 464
  end
  object QueryClearTable: TFDQuery
    Connection = Conn
    Left = 560
    Top = 464
  end
  object QueryDelete: TFDQuery
    Connection = Conn
    Left = 472
    Top = 464
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
    Left = 30
    Top = 560
  end
  object dtCreate: TDataSource
    DataSet = QueryCreate
    Left = 32
    Top = 616
  end
  object QueryInsert: TFDQuery
    Connection = Conn
    Left = 104
    Top = 560
  end
  object dtInsert: TDataSource
    DataSet = QueryInsert
    Left = 104
    Top = 616
  end
end
