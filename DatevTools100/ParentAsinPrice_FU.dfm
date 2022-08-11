object ParentAsinPrice_F: TParentAsinPrice_F
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Preis'
  ClientHeight = 142
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 64
    Top = 16
    Width = 60
    Height = 15
    Caption = 'ParentAsin:'
  end
  object Label2: TLabel
    Left = 64
    Top = 59
    Width = 28
    Height = 15
    Caption = 'Preis:'
  end
  object cxTextEdit1: TcxTextEdit
    Left = 152
    Top = 16
    Properties.ReadOnly = True
    TabOrder = 0
    Text = 'cxTextEdit1'
    Width = 121
  end
  object cxCurrencyEdit1: TcxCurrencyEdit
    Left = 152
    Top = 56
    TabOrder = 1
    Width = 121
  end
  object cxButton1: TcxButton
    Left = 296
    Top = 109
    Width = 75
    Height = 25
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 2
  end
end
