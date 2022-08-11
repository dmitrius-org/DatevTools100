object Settlementpos_T: TSettlementpos_T
  Left = 0
  Top = 0
  Caption = 'Settlementpos'
  ClientHeight = 597
  ClientWidth = 1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object pcLagerbestand: TcxPageControl
    Left = 0
    Top = 0
    Width = 1103
    Height = 597
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = Settlementpos
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 593
    ClientRectLeft = 4
    ClientRectRight = 1099
    ClientRectTop = 24
    object Settlementpos: TcxTabSheet
      Caption = 'Settlementpos'
      Color = clBtnFace
      ImageIndex = 0
      ParentColor = False
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1095
        Height = 569
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1095
          569)
        object cxLabel6: TcxLabel
          Left = 6
          Top = 544
          Anchors = [akLeft, akBottom]
          Caption = 'Summe'
          Transparent = True
        end
        object SettlementposGrid: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 92
          Width = 1089
          Height = 474
          Align = alClient
          TabOrder = 1
          object SettlementposView: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = SettlementposDS
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                FieldName = 'kMessageId'
                Column = SettlementposViewkMessageId
                DisplayText = 'Anzahl'
                VisibleForCustomization = False
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            object SettlementposViewkMessageId: TcxGridDBColumn
              DataBinding.FieldName = 'kMessageId'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object SettlementposViewSettlementID: TcxGridDBColumn
              DataBinding.FieldName = 'SettlementID'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object SettlementposViewTransactionType: TcxGridDBColumn
              DataBinding.FieldName = 'TransactionType'
              HeaderAlignmentHorz = taCenter
              Width = 93
            end
            object SettlementposViewOrderID: TcxGridDBColumn
              DataBinding.FieldName = 'OrderID'
              HeaderAlignmentHorz = taCenter
              Width = 120
            end
            object SettlementposViewMerchantOrderID: TcxGridDBColumn
              DataBinding.FieldName = 'MerchantOrderID'
              HeaderAlignmentHorz = taCenter
              Width = 120
            end
            object SettlementposViewShipmentID: TcxGridDBColumn
              DataBinding.FieldName = 'ShipmentID'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object SettlementposViewMarketplaceName: TcxGridDBColumn
              DataBinding.FieldName = 'MarketplaceName'
              HeaderAlignmentHorz = taCenter
              Width = 113
            end
            object SettlementposViewAmountType: TcxGridDBColumn
              DataBinding.FieldName = 'AmountType'
              HeaderAlignmentHorz = taCenter
              Width = 107
            end
            object SettlementposViewAmountDescription: TcxGridDBColumn
              DataBinding.FieldName = 'AmountDescription'
              HeaderAlignmentHorz = taCenter
              Width = 144
            end
            object SettlementposViewAmount: TcxGridDBColumn
              DataBinding.FieldName = 'Amount'
              HeaderAlignmentHorz = taCenter
              Width = 65
            end
            object SettlementposViewFulfillmentID: TcxGridDBColumn
              DataBinding.FieldName = 'FulfillmentID'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object SettlementposViewOrderItemCode: TcxGridDBColumn
              DataBinding.FieldName = 'OrderItemCode'
              HeaderAlignmentHorz = taCenter
              Width = 120
            end
            object SettlementposViewMerchantOrderItemID: TcxGridDBColumn
              DataBinding.FieldName = 'MerchantOrderItemID'
              HeaderAlignmentHorz = taCenter
              Width = 120
            end
            object SettlementposViewSKU: TcxGridDBColumn
              DataBinding.FieldName = 'SKU'
              HeaderAlignmentHorz = taCenter
              Width = 120
            end
            object SettlementposViewQuantityPurchased: TcxGridDBColumn
              DataBinding.FieldName = 'QuantityPurchased'
              HeaderAlignmentHorz = taCenter
              Width = 102
            end
            object SettlementposViewPromotionID: TcxGridDBColumn
              DataBinding.FieldName = 'PromotionID'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object SettlementposViewdErstellt: TcxGridDBColumn
              DataBinding.FieldName = 'dErstellt'
              HeaderAlignmentHorz = taCenter
              Width = 70
            end
          end
          object SettlementposLevel: TcxGridLevel
            GridView = SettlementposView
          end
        end
        object ToolPanel: TPanel
          Left = 0
          Top = 0
          Width = 1095
          Height = 89
          Align = alTop
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object btnDatenLaden: TcxButton
            Left = 6
            Top = 8
            Width = 155
            Height = 25
            Caption = 'Daten laden'
            OptionsImage.ImageIndex = 1
            OptionsImage.Images = cxImageList
            TabOrder = 0
            OnClick = btnDatenLadenClick
          end
          object btnFind: TcxButton
            Left = 650
            Top = 54
            Width = 79
            Height = 25
            Caption = 'Finden'
            OptionsImage.ImageIndex = 0
            OptionsImage.Images = cxImageList
            TabOrder = 9
            OnClick = btnFindClick
          end
          object edtkMessageId: TcxButtonEdit
            Left = 6
            Top = 54
            Properties.Buttons = <
              item
                Caption = 'Clear'
                Default = True
                ImageIndex = 2
                Kind = bkGlyph
              end>
            Properties.Images = cxImageList
            Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
            Properties.OnChange = edtkMessageIdPropertiesChange
            TabOrder = 5
            Width = 155
          end
          object lblkMessageId: TcxLabel
            Left = 6
            Top = 39
            Caption = 'kMessageId:'
          end
          object lblSettlementID: TcxLabel
            Left = 167
            Top = 39
            Caption = 'SettlementID:'
          end
          object lblOrderID: TcxLabel
            Left = 326
            Top = 39
            Caption = 'OrderID:'
          end
          object lblSKU: TcxLabel
            Left = 486
            Top = 36
            Caption = 'SKU:'
          end
          object edtSettlementID: TcxButtonEdit
            Left = 167
            Top = 54
            Properties.Buttons = <
              item
                Caption = 'Clear'
                Default = True
                ImageIndex = 2
                Kind = bkGlyph
              end>
            Properties.Images = cxImageList
            Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
            Properties.OnChange = edtkMessageIdPropertiesChange
            TabOrder = 6
            Width = 155
          end
          object edtOrderID: TcxButtonEdit
            Left = 328
            Top = 54
            Properties.Buttons = <
              item
                Caption = 'Clear'
                Default = True
                ImageIndex = 2
                Kind = bkGlyph
              end>
            Properties.Images = cxImageList
            Properties.MaxLength = 30
            Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
            TabOrder = 7
            Width = 155
          end
          object edtSKU: TcxButtonEdit
            Left = 489
            Top = 54
            Properties.Buttons = <
              item
                Caption = 'Clear'
                Default = True
                ImageIndex = 2
                Kind = bkGlyph
              end>
            Properties.Images = cxImageList
            Properties.MaxLength = 50
            Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
            TabOrder = 8
            Width = 155
          end
        end
      end
    end
  end
  object SettlementposDS: TDataSource
    DataSet = SettlementposQuery
    Left = 720
    Top = 332
  end
  object cxImageList: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 3146668
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000026744558745469746C650046696E643B426172733B5269
          62626F6E3B5374616E646172643B536561726368BB659C080000009549444154
          785EA592C10DC3200C459B7598815118A21324ED0E6C81D299B8C01AAE5DFD5C
          ACDA4AE2C3932CFDAF27C03C8828C46FC8390B0B5398C64C017341660B507831
          6420D9E2090A8A83D99824601EC88A2768286DBA201264CD134C94D21F414236
          C382F015EE3E22811DEB3E30D6E8B31A02F7237DB4440B5C507E6BC9158125A9
          6705D649BA21B04F012AD399E72108F1057CFE2C0C2A4306D60000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001D744558745469746C650044617461626173653B44423B536F757263
          653B53746F72ACB1EA720000029849444154785E6591CB6E5B551486BF73B54F
          E2D83881242D0E992006A1158A50C78C90102378843E04521F821740883760C4
          089870197480A0266949012548CD055F523BCEB1CFDEC7FBCA91155509D9D2BF
          B4F6607D5AFA56ECBD27A8DE379F7FD2B9B3B6FC300E8307C0561470CF7B1779
          07CE393B57F64069DB97A5F9FDE9D1CBAF3EFBE2F161356B630020DADE683C5E
          DFF9A8535FDD265D6A506FAD81156004CECC22797E725F89FC7E311A7E580B7E
          FD14780F10AF00DEB8CE1BEF7E4018BF0601E00C04293ECC08A30AD88E486A23
          965A2BFCF3E497B78198AB0210686DF0F204965382A8859507E8FC296A7A48D9
          D35CFCFD82B896D2DE5EC7280B10DE005865F1DE501500F016BCC6BB2A56E34C
          952858F4466980E006E0F27CD21D1D1DEC36DE6C92AE4454F6F06E015D00CAA9
          C0E505CE49F2F1B40BD8EB80306BB576C32463D23FC39E0C91839F5093BF984F
          7B889EA518CCC896EB34D63649927817486F385042D2DEDA265AD9210C5B38B9
          86CA9F2D1CC833C1E88F43C2C8B37AB78DD97F79DB812A15DE4CC1CD21747835
          C2C933F4EC183551949311719A62551DA36F3BB0F968DA3DAF1C34DFDAA0D64C
          883078A7C0AA8540994B3C822052CC2E451750D70169D66CEC46499DCBC129F6
          6C8C38FD8E72FC1C39E9333BB5E4FF0AB29584D67A46142F1C64C0C52B07F342
          B2DAE910B71F10C6AF63DEC9D09327C88B3F295E48FADD23C2D0B37AA789FB6D
          7CFB8C66AE703A07570206AF8698E2189D1F538E75051A93D412ACAA61B503E0
          3AC088520FF6BEFF796373A746EBEE3D966B8BFBE3AA78AD91A541CCA1783EA1
          28F5C9FF1D886FF7FB1F1FF77E78B814FFF87E12F84E3D0CB69C7578E7AB3884
          B63DA1DC69A1DCB3BD73F92590DFD8E0EBBDE13EF0084881E40A1E5C05C00016
          9803F2EACF7FF1BE83483B8CD56F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000029744558745469746C650052656D6F76653B44656C6574653B426172
          733B526962626F6E3B5374616E646172643B635648300000026449444154785E
          A551494C5351146568194A2B583746627F458902118892AAB811369246043462
          8556D032A82D831664486D8C3FB40B8128E3C68998A289625720314469022591
          26566BC484681C22C6012B5A1556C7F73EBF507FDCF193F3DFBBE7DC7BDE7BF7
          86005811B820E80B2310F16B6880E4F7E10462AAF3F1B2014F889E961FBB307D
          AAE2EBC8FEDC137C72280FB1AB546BA0DAE4F11296C491940F36089F2CD5593F
          DFE8C682771453E71B31909D6D207C044D76166B8C339D1789E6C4A76B5D18D7
          15D9A869B04184A744E7FBED72C03FD08EF9B13BF09CADC1F50C55CDE08182DA
          B7ED562CB807E1BFDB06FF701F3C47753E52131D6C20B2EFCA343C31EAF1D3D1
          89B93E167F1EF5E37155255ED92C989F70E0C74D96E3C734F9B89498749A1E2A
          EC41644F4A6AF5B8F6107C7D2D98ED6D847FE80A7EDDBF8A6FBD4D98ED69C088
          3A0BD678A589E44A843D089844DB141B4D0FF3D5F8D251878FAC9EA08C5B87F6
          EC44B37C6D23C991F2530AF99F81E472BAAA7E42AFC307B612EFEA0E2FC1A52D
          446B5A4633C991090D968A5B93D24D4EAD06336DF5982E5363BA9C07D9BF674F
          62B4F020AC9B53976EF1CF145A36249B1EE4E5E28DA5022F8AB23045706B1383
          DB498974CFE1F599620CAB736061B63409A720ED5624CFBD341E81B760379EE5
          65A23F410183487ACE208EB1F42728E1CDCFE4F0BC641FBA9894395213176C10
          655EA3EC706CDF06778E0A76C57A5447C8E87B63298C91B166BB92817BEF0EDC
          4BDB8A0639D34DF8986083309A58278BEFB0C631BEAAC5E255940F6886A8D566
          A27DAF95ADEB22B15CD883808984208E209A8F859A9C6F6078F0145684BF98E8
          BFC080A205F60000000049454E44AE426082}
      end>
  end
  object ActionList: TActionList
    Images = cxImageList
    Left = 868
    Top = 48
    object actClear: TAction
      Caption = 'Clear'
      ImageIndex = 2
    end
  end
  object SettlementposQuery: TFDQuery
    BeforeOpen = SettlementposQuery_BeforeOpen
    AfterOpen = SettlementposQuery_AfterOpen
    Filtered = True
    Connection = DataModule1.FDConnection
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    OnError = SettlementposQueryError
    OnExecuteError = SettlementposQueryExecuteError
    SQL.Strings = (
      'use [eazybusiness];'
      ''
      'declare @kMessageId   as bigint'
      '       ,@SettlementID as bigint'
      '       ,@OrderID      as varchar(30)'
      '       ,@SKU          as varchar(50)'
      ''
      'select  @kMessageId   = isnull(nullif(:kMessageId, '#39#39'), 0)'
      '       ,@SettlementID = isnull(nullif(:SettlementID, '#39#39'), 0)'
      '       ,@OrderID      = isnull(:OrderID, '#39#39')'
      '       ,@SKU          = isnull(:SKU, '#39#39')'
      ''
      'SELECT '
      '       [kMessageId]'#9#9#9#9#9#9#9#9
      '      ,[SettlementID]'#9#9#9#9
      '      ,[TransactionType]'#9#9#9#9
      '      ,[OrderID]'#9#9#9#9
      '      ,[MerchantOrderID]'#9#9#9#9#9#9#9#9
      '      ,[ShipmentID]'#9#9#9#9
      '      ,[MarketplaceName]'#9#9#9#9
      '      ,[AmountType]'#9#9#9#9
      '      ,[AmountDescription]'#9#9#9#9
      '      ,[Amount]'#9#9#9#9
      '      ,[FulfillmentID]'#9#9#9#9#9#9#9#9
      '      ,[OrderItemCode]'#9#9#9#9
      '      ,[MerchantOrderItemID]'#9#9#9#9
      '      ,[SKU]'#9#9#9#9
      '      ,[QuantityPurchased]'#9#9#9#9
      '      ,[PromotionID]'#9#9#9#9
      '      ,[dErstellt]'#9#9#9#9
      '  FROM [eazybusiness].[dbo].[pf_amazon_settlementpos] (nolock)'
      ' where kMessageId   = case when @kMessageId <> 0'
      '                        then @kMessageId else kMessageId '
      '                      end'
      '   and SettlementID = case when @SettlementID <> 0'
      '                        then @SettlementID else SettlementID '
      '                      end'
      '   and OrderID      = case when @OrderID <> '#39#39
      '                        then @OrderID else OrderID '
      '                      end'
      '   and SKU          = case when @SKU <> '#39#39
      '                        then @SKU else SKU '
      '                      end')
    Left = 724
    Top = 275
    ParamData = <
      item
        Name = 'KMESSAGEID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SETTLEMENTID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ORDERID'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end
      item
        Name = 'SKU'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object SettlementposQuerykMessageId: TLargeintField
      FieldName = 'kMessageId'
      Origin = 'kMessageId'
      Required = True
    end
    object SettlementposQuerySettlementID: TLargeintField
      FieldName = 'SettlementID'
      Origin = 'SettlementID'
      Required = True
    end
    object SettlementposQueryTransactionType: TStringField
      FieldName = 'TransactionType'
      Origin = 'TransactionType'
      Required = True
      Size = 30
    end
    object SettlementposQueryOrderID: TStringField
      FieldName = 'OrderID'
      Origin = 'OrderID'
      Size = 30
    end
    object SettlementposQueryMerchantOrderID: TStringField
      FieldName = 'MerchantOrderID'
      Origin = 'MerchantOrderID'
      Size = 50
    end
    object SettlementposQueryShipmentID: TStringField
      FieldName = 'ShipmentID'
      Origin = 'ShipmentID'
    end
    object SettlementposQueryMarketplaceName: TStringField
      FieldName = 'MarketplaceName'
      Origin = 'MarketplaceName'
    end
    object SettlementposQueryAmountType: TStringField
      FieldName = 'AmountType'
      Origin = 'AmountType'
      Size = 30
    end
    object SettlementposQueryAmountDescription: TStringField
      FieldName = 'AmountDescription'
      Origin = 'AmountDescription'
      Size = 50
    end
    object SettlementposQueryAmount: TFMTBCDField
      FieldName = 'Amount'
      Origin = 'Amount'
      Required = True
      Precision = 4
      Size = 14
    end
    object SettlementposQueryFulfillmentID: TStringField
      FieldName = 'FulfillmentID'
      Origin = 'FulfillmentID'
    end
    object SettlementposQueryOrderItemCode: TStringField
      FieldName = 'OrderItemCode'
      Origin = 'OrderItemCode'
      Size = 30
    end
    object SettlementposQueryMerchantOrderItemID: TStringField
      FieldName = 'MerchantOrderItemID'
      Origin = 'MerchantOrderItemID'
      Size = 50
    end
    object SettlementposQuerySKU: TStringField
      FieldName = 'SKU'
      Origin = 'SKU'
      Size = 50
    end
    object SettlementposQueryQuantityPurchased: TIntegerField
      FieldName = 'QuantityPurchased'
      Origin = 'QuantityPurchased'
    end
    object SettlementposQueryPromotionID: TStringField
      FieldName = 'PromotionID'
      Origin = 'PromotionID'
      Size = 30
    end
    object SettlementposQuerydErstellt: TSQLTimeStampField
      FieldName = 'dErstellt'
      Origin = 'dErstellt'
      Required = True
    end
  end
end
