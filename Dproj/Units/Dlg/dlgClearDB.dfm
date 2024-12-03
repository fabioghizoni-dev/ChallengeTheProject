object dlgLimpaBanco: TdlgLimpaBanco
  Left = 225
  Top = 104
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  BorderStyle = bsDialog
  Caption = 'Deseja limpar o banco?'
  ClientHeight = 85
  ClientWidth = 369
  Color = clBtnShadow
  CustomTitleBar.CaptionAlignment = taCenter
  TransparentColorValue = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  RoundedCorners = rcOn
  StyleElements = [seFont]
  TextHeight = 15
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 369
    Height = 85
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 88
    ExplicitTop = 24
    ExplicitWidth = 185
    ExplicitHeight = 41
    object btnClearDB: TStyledButton
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 172
      Height = 75
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = 'Sim, Limpar Banco!'
      TabOrder = 0
      StyleElements = [seFont, seBorder]
      OnClick = btnClearDBClick
      StyleClass = 'Charcoal Dark Slate'
    end
    object btnClearVisually: TStyledButton
      AlignWithMargins = True
      Left = 182
      Top = 5
      Width = 182
      Height = 75
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'N'#227'o, Apenas Visualmente!'
      TabOrder = 1
      StyleElements = [seFont, seBorder]
      OnClick = btnClearVisuallyClick
      StyleClass = 'Charcoal Dark Slate'
    end
  end
end
