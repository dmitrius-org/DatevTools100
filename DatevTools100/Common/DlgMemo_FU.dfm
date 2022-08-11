object DlgMemo_F: TDlgMemo_F
  Left = 0
  Top = 0
  ClientHeight = 357
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 316
    Width = 784
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      784
      41)
    object btnOk: TcxButton
      Left = 696
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
      OnClick = btnOkClick
    end
  end
  object Editor: TcxMemo
    Left = 0
    Top = 0
    Align = alClient
    ParentFont = False
    Style.Font.Charset = EASTEUROPE_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Consolas'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 316
    Width = 784
  end
end
