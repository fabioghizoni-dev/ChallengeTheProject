object gridsFrame: TgridsFrame
  AlignWithMargins = True
  Left = 0
  Top = 0
  Width = 846
  Height = 738
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  Align = alClient
  TabOrder = 0
  object Grid: TDBGrid
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 846
    Height = 329
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtModule.srcT117
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 't117_ca_codigo'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 't117_ca_descricao'
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 't117_ca_nome_menu'
        Width = 310
        Visible = True
      end>
  end
  object Grid2: TDBGrid
    AlignWithMargins = True
    Left = 0
    Top = 329
    Width = 846
    Height = 515
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtModule.srcT118
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 't003_nr_codigo'
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 't117_ca_codigo'
        Width = 186
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 't118_ca_direito'
        Width = 186
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 't118_dt_ultima_alteracao'
        Width = 250
        Visible = True
      end>
  end
end
