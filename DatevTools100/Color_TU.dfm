object Color_T: TColor_T
  Left = 0
  Top = 0
  Caption = 'Color'
  ClientHeight = 454
  ClientWidth = 816
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object colorGrid: TcxGrid
    Left = 0
    Top = 0
    Width = 816
    Height = 454
    Align = alClient
    TabOrder = 0
    object ColorView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Visible = True
      FindPanel.DisplayMode = fpdmAlways
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DSColor
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object ColorViewProduktColorID: TcxGridDBColumn
        DataBinding.FieldName = 'ProduktColorID'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object ColorViewColorName: TcxGridDBColumn
        DataBinding.FieldName = 'ColorName'
        HeaderAlignmentHorz = taCenter
        Width = 255
      end
      object ColorViewColorLang: TcxGridDBColumn
        DataBinding.FieldName = 'ColorLang'
        HeaderAlignmentHorz = taCenter
        Width = 157
      end
      object ColorViewColorKurz: TcxGridDBColumn
        DataBinding.FieldName = 'ColorKurz'
        HeaderAlignmentHorz = taCenter
        Width = 153
      end
    end
    object ColorLevel: TcxGridLevel
      GridView = ColorView
    end
  end
  object TableColor: TFDTable
    Connection = DataModule1.FDConnection
    TableName = 'DatevTools100.dbo.tProduktColor'
    Left = 331
    Top = 66
    object TableColorProduktColorID: TFMTBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'ProduktColorID'
      Origin = 'ProduktColorID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object TableColorColorName: TWideStringField
      FieldName = 'ColorName'
      Origin = 'ColorName'
      Size = 255
    end
    object TableColorColorLang: TWideStringField
      FieldName = 'ColorLang'
      Origin = 'ColorLang'
      Size = 255
    end
    object TableColorColorKurz: TWideStringField
      FieldName = 'ColorKurz'
      Origin = 'ColorKurz'
      Size = 255
    end
  end
  object DSColor: TDataSource
    DataSet = TableColor
    Left = 403
    Top = 73
  end
end
