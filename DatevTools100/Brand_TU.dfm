object Brand_T: TBrand_T
  Left = 0
  Top = 0
  Caption = 'Brand'
  ClientHeight = 208
  ClientWidth = 542
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
  object BrandGrid: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 536
    Height = 202
    Align = alClient
    TabOrder = 0
    object BrandView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Insert.Visible = True
      Navigator.Visible = True
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DSBrand
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      object BrandViewBrandID: TcxGridDBColumn
        DataBinding.FieldName = 'BrandID'
        Visible = False
      end
      object BrandViewName: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
        HeaderAlignmentHorz = taCenter
        Width = 370
      end
    end
    object BrandLevel: TcxGridLevel
      GridView = BrandView
    end
  end
  object DSBrand: TDataSource
    DataSet = TableBrand
    Left = 403
    Top = 65
  end
  object TableBrand: TFDTable
    IndexFieldNames = 'BrandID'
    Connection = DataModule1.FDConnection
    TableName = 'DatevTools100.dbo.tBrand'
    Left = 323
    Top = 58
    object TableBrandBrandID: TFMTBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'BrandID'
      Origin = 'BrandID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object TableBrandName: TWideStringField
      FieldName = 'Name'
      Origin = 'Name'
      Size = 255
    end
  end
end
