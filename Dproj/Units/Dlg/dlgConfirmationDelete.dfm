object dlgConfirmDB: TdlgConfirmDB
  Left = 227
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Deseja mesmo fazer isso?'
  ClientHeight = 85
  ClientWidth = 304
  Color = clBtnFace
  ParentFont = True
  KeyPreview = True
  Position = poScreenCenter
  TextHeight = 15
  object btnYes: TStyledButton
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 145
    Height = 75
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alLeft
    Caption = 'Sim'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    StyleElements = [seFont, seBorder]
    OnClick = btnYesClick
    StyleClass = 'Charcoal Dark Slate'
    ExplicitLeft = 8
    ExplicitTop = 12
    ExplicitHeight = 65
  end
  object btnNo: TStyledButton
    AlignWithMargins = True
    Left = 154
    Top = 5
    Width = 145
    Height = 75
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alRight
    Caption = 'N'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    StyleElements = [seFont, seBorder]
    StyleClass = 'Charcoal Dark Slate'
    ExplicitLeft = 149
    ExplicitTop = 3
    ExplicitHeight = 79
  end
end