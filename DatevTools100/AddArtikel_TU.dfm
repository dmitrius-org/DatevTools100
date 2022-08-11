object AddArtikel_T: TAddArtikel_T
  Left = 0
  Top = 0
  Caption = 'Add Artikel'
  ClientHeight = 575
  ClientWidth = 1746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1746
    Height = 575
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1746
      575)
    object cxLabel1: TcxLabel
      Left = 6
      Top = 465
      Anchors = [akLeft, akBottom]
      Caption = 'Summe'
      Transparent = True
    end
    object AmaExportGrid: TcxGrid
      AlignWithMargins = True
      Left = 3
      Top = 84
      Width = 1740
      Height = 399
      Align = alClient
      Anchors = [akRight, akBottom]
      PopupMenu = PopupMenu1
      TabOrder = 1
      object AmaExportView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = SuchenDS
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.CopyRecordsToClipboard = False
        OptionsBehavior.DragDropText = True
        OptionsData.Appending = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.HeaderAutoHeight = True
        object ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          VisibleForCustomization = False
        end
        object AmaExportViewSpid: TcxGridDBColumn
          DataBinding.FieldName = 'Spid'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object AmaExportViewProduktverwandtschaft: TcxGridDBColumn
          Caption = 'Produkt verwandtschaft'
          DataBinding.FieldName = 'Produktverwandtschaft'
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object AmaExportViewASIN: TcxGridDBColumn
          DataBinding.FieldName = 'ASIN'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object AmaExportViewSKU: TcxGridDBColumn
          DataBinding.FieldName = 'SKU'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object AmaExportViewAmaName: TcxGridDBColumn
          DataBinding.FieldName = 'AmaName'
          HeaderAlignmentHorz = taCenter
          Width = 258
        end
        object AmaExportViewEAN: TcxGridDBColumn
          DataBinding.FieldName = 'EAN'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object AmaExportViewSize: TcxGridDBColumn
          DataBinding.FieldName = 'Size'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object AmaExportViewAmaColor: TcxGridDBColumn
          DataBinding.FieldName = 'AmaColor'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object AmaExportViewBrand: TcxGridDBColumn
          DataBinding.FieldName = 'Brand'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object AmaExportViewparentAsin: TcxGridDBColumn
          DataBinding.FieldName = 'parentAsin'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object AmaExportViewArtName: TcxGridDBColumn
          DataBinding.FieldName = 'ArtName'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object AmaExportViewColorName: TcxGridDBColumn
          Caption = 'ColorName'
          DataBinding.FieldName = 'ProduktColorID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ProduktColorID'
          Properties.ListColumns = <
            item
              FieldName = 'ColorName'
            end>
          Properties.ListSource = DCColor
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 124
        end
        object AmaExportViewColorLang: TcxGridDBColumn
          Caption = 'ColorLang'
          DataBinding.FieldName = 'ProduktColorID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ProduktColorID'
          Properties.ListColumns = <
            item
              FieldName = 'ColorLang'
            end>
          Properties.ListSource = DCColor
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 127
        end
        object AmaExportViewColorKurz: TcxGridDBColumn
          Caption = 'ColorKurz'
          DataBinding.FieldName = 'ProduktColorID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ProduktColorID'
          Properties.ListColumns = <
            item
              FieldName = 'ColorKurz'
            end>
          Properties.ListSource = DCColor
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 128
        end
        object ProduktColorID: TcxGridDBColumn
          DataBinding.FieldName = 'ProduktColorID'
          Visible = False
          VisibleForCustomization = False
          Width = 36
        end
      end
      object ColorView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.MRUItemsListDropDownCount = 15
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DCColor
        DataController.KeyFieldNames = 'ProduktColorID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object ColorViewColorName: TcxGridDBColumn
          DataBinding.FieldName = 'ColorName'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object ColorViewColorLang: TcxGridDBColumn
          DataBinding.FieldName = 'ColorLang'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object ColorViewColorKurz: TcxGridDBColumn
          DataBinding.FieldName = 'ColorKurz'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
      end
      object AmaExportLevel: TcxGridLevel
        GridView = AmaExportView
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1746
      Height = 81
      Align = alTop
      Anchors = [akRight, akBottom]
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      object btnAdd: TcxButton
        Left = 1686
        Top = 53
        Width = 57
        Height = 25
        Caption = 'Add'
        OptionsImage.ImageIndex = 0
        TabOrder = 5
        OnClick = btnAddClick
      end
      object btnAddBrand: TcxButton
        Left = 167
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Brand'
        TabOrder = 2
        OnClick = btnAddBrandClick
      end
      object btnAddtoDB: TcxButton
        Left = 86
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Add to DB'
        TabOrder = 1
        OnClick = btnAddtoDBClick
      end
      object btnAddArtikel: TcxButton
        Left = 5
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Add Artikel'
        Colors.Default = clMoneyGreen
        TabOrder = 0
        OnClick = btnAddArtikelClick
      end
      object edtArtName: TcxButtonEdit
        Left = 1102
        Top = 54
        Properties.Buttons = <
          item
            Caption = 'Clear'
            Default = True
            ImageIndex = 2
            Kind = bkGlyph
          end>
        Properties.Images = cxImageList
        Properties.OnButtonClick = edtArtNamePropertiesButtonClick
        TabOrder = 7
        TextHint = 'ArtName'
        Width = 196
      end
      object edtBrand: TcxComboBox
        Left = 896
        Top = 55
        Properties.DropDownListStyle = lsFixedList
        TabOrder = 11
        Width = 105
      end
      object btnColor: TcxButton
        Left = 248
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Color'
        TabOrder = 3
        OnClick = btnColorClick
      end
      object cxButton1: TcxButton
        Left = 1001
        Top = 54
        Width = 25
        Height = 25
        OptionsImage.ImageIndex = 2
        OptionsImage.Images = cxImageList
        TabOrder = 6
        OnClick = cxButton1Click
      end
      object edtColorName: TcxLookupComboBox
        Left = 1300
        Top = 55
        Properties.DropDownRows = 15
        Properties.KeyFieldNames = 'ProduktColorID'
        Properties.ListColumns = <
          item
            FieldName = 'ColorName'
          end>
        Properties.ListSource = DCColor
        Properties.OnChange = edtColorNamePropertiesChange
        TabOrder = 12
        Width = 95
      end
      object edtColorLang: TcxLookupComboBox
        Left = 1423
        Top = 55
        Properties.DropDownRows = 15
        Properties.KeyFieldNames = 'ProduktColorID'
        Properties.ListColumns = <
          item
            FieldName = 'ColorLang'
          end>
        Properties.ListSource = DCColor
        Properties.OnChange = edtColorLangPropertiesChange
        TabOrder = 13
        Width = 101
      end
      object edtColorKurz: TcxLookupComboBox
        Left = 1551
        Top = 55
        Properties.DropDownSizeable = True
        Properties.KeyFieldNames = 'ProduktColorID'
        Properties.ListColumns = <
          item
            FieldName = 'ColorKurz'
          end>
        Properties.ListSource = DCColor
        Properties.OnChange = edtColorKurzPropertiesChange
        TabOrder = 14
        Width = 92
      end
      object cxButton2: TcxButton
        Left = 1395
        Top = 54
        Width = 25
        Height = 25
        OptionsImage.ImageIndex = 2
        OptionsImage.Images = cxImageList
        TabOrder = 8
        OnClick = cxButton2Click
      end
      object cxButton3: TcxButton
        Left = 1524
        Top = 54
        Width = 25
        Height = 25
        OptionsImage.ImageIndex = 2
        OptionsImage.Images = cxImageList
        TabOrder = 9
        OnClick = cxButton3Click
      end
      object cxButton4: TcxButton
        Left = 1644
        Top = 54
        Width = 25
        Height = 25
        OptionsImage.ImageIndex = 2
        OptionsImage.Images = cxImageList
        TabOrder = 10
        OnClick = cxButton4Click
      end
      object cxButton5: TcxButton
        Left = 329
        Top = 15
        Width = 145
        Height = 25
        Caption = 'Data delete'
        OptionsImage.ImageIndex = 4
        OptionsImage.Images = cxImageList
        TabOrder = 4
        OnClick = cxButton5Click
      end
    end
    object M: TMemo
      Left = 0
      Top = 486
      Width = 1746
      Height = 89
      Align = alBottom
      Lines.Strings = (
        'M')
      TabOrder = 3
      Visible = False
    end
  end
  object SuchenQ: TFDQuery
    Connection = DataModule1.FDConnection
    FetchOptions.AssignedValues = [evMode, evRowsetSize, evAutoFetchAll]
    FetchOptions.Mode = fmAll
    FetchOptions.RowsetSize = 100
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvRefreshDelete]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.UpdateMode = upWhereChanged
    UpdateOptions.RefreshDelete = False
    UpdateOptions.UpdateTableName = 'DatevTools100.dbo.pAmaExport'
    UpdateOptions.KeyFields = 'ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'select p.ID'
      '      ,p.Spid'
      '      ,p.Produktverwandtschaft'
      '      ,p.ASIN'
      '      ,p.SKU'
      '      ,p.AmaName'
      '      ,p.EAN'
      '      ,p.Size'
      '      ,p.AmaColor'
      '      ,p.Brand'
      '      ,p.parentAsin'
      '      ,p.ArtName'
      '      ,p.ProduktColorID'
      '      ,pc.ColorName'
      '      ,pc.ColorLang'
      '      ,pc.ColorKurz'
      '  from DatevTools100.dbo.pAmaExport p (nolock)'
      '  left join DatevTools100.dbo.tProduktColor pc (nolock)'
      '         on p.ProduktColorID = pc.ProduktColorID'
      ' where p.Spid = @@SPID'
      ' order by p.Produktverwandtschaft desc')
    Left = 276
    Top = 267
    object SuchenQSpid: TFMTBCDField
      FieldName = 'Spid'
      ProviderFlags = [pfInWhere]
      Precision = 18
      Size = 2
    end
    object SuchenQProduktverwandtschaft: TWideStringField
      FieldName = 'Produktverwandtschaft'
      ProviderFlags = [pfInWhere]
      Size = 255
    end
    object SuchenQASIN: TWideStringField
      FieldName = 'ASIN'
      ProviderFlags = [pfInWhere]
      Size = 255
    end
    object SuchenQSKU: TWideStringField
      FieldName = 'SKU'
      ProviderFlags = [pfInWhere]
      Size = 255
    end
    object SuchenQAmaName: TWideStringField
      FieldName = 'AmaName'
      ProviderFlags = [pfInWhere]
      Size = 255
    end
    object SuchenQEAN: TWideStringField
      FieldName = 'EAN'
      ProviderFlags = [pfInWhere]
      Size = 255
    end
    object SuchenQSize: TWideStringField
      FieldName = 'Size'
      ProviderFlags = [pfInWhere]
      Size = 255
    end
    object SuchenQAmaColor: TWideStringField
      FieldName = 'AmaColor'
      ProviderFlags = [pfInWhere]
      Size = 255
    end
    object SuchenQBrand: TWideStringField
      FieldName = 'Brand'
      Size = 255
    end
    object SuchenQparentAsin: TWideStringField
      FieldName = 'parentAsin'
      ProviderFlags = [pfInWhere]
      Size = 255
    end
    object SuchenQArtName: TWideStringField
      FieldName = 'ArtName'
      Size = 255
    end
    object SuchenQColorName: TWideStringField
      FieldName = 'ColorName'
      Origin = 'ColorName'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Size = 255
    end
    object SuchenQColorLang: TWideStringField
      FieldName = 'ColorLang'
      Origin = 'ColorLang'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Size = 255
    end
    object SuchenQColorKurz: TWideStringField
      FieldName = 'ColorKurz'
      Origin = 'ColorKurz'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Size = 255
    end
    object SuchenQProduktColorID: TFMTBCDField
      FieldName = 'ProduktColorID'
      Origin = 'ProduktColorID'
      Precision = 18
      Size = 0
    end
    object SuchenQID: TFMTBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Precision = 18
      Size = 0
    end
  end
  object SuchenDS: TDataSource
    DataSet = SuchenQ
    Left = 280
    Top = 324
  end
  object Query: TFDQuery
    Connection = DataModule1.FDConnection
    FetchOptions.AssignedValues = [evAutoFetchAll]
    SQL.Strings = (
      'select 1')
    Left = 288
    Top = 184
  end
  object cxImageList: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 524908
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
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2241
          6464223E0D0A09093C7061746820636C6173733D22477265656E2220643D224D
          32372C3134682D39563563302D302E352D302E352D312D312D31682D32632D30
          2E352C302D312C302E352D312C3176394835632D302E352C302D312C302E352D
          312C31763263302C302E352C302E352C312C312C316839763920202623393B26
          23393B63302C302E352C302E352C312C312C31683263302E352C302C312D302E
          352C312D31762D39683963302E352C302C312D302E352C312D31762D32433238
          2C31342E352C32372E352C31342C32372C31347A222F3E0D0A093C2F673E0D0A
          3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000019744558745469746C65005461626C653B466F726D6174
          3B436C6561723B1A97D51A000002CA49444154785E75935D685C4518869F397B
          CEC698A695986E76A14AB3EEA6D96852891A134A4345633590DC48945E0822A5
          8A1755420D815294629188A5469B86D28ABD68F5A25650A4172524B5244D1316
          4D5057A3C1354BB2DBFC904D9BC4A47B7E3EE95CB804EA030FCC5CBC2FF3CD30
          0AF00106FF8F228F68C1151101300F7C32D0AF0C5F2302A215B49E20E83D61BF
          03E221028E6B5F3B7AA8E539C0D6059EA71ADB9AAB110480893F17D8112D0514
          2024FE9867FF9E7250683EEAB9D208F8FE2BB073AE0ECFAFD82042F2E66D4A42
          9B41D04C656EE3382E82C2320D6CDBD9309699B31D7E49CC919A5D469480C0C8
          E814E8A5864B97C708068A896E0FF0CCAE0ABA3614E41CAA6201B63EB4054471
          6324497DFD76942804616838C9CBAD4FF0D3CF29EE1FBFCAC3FD97F9F6D986F7
          94528701D7B83B02FAE2D038AE8080A7E3100916E333C01FEFC398FD8BF2575F
          21B2A7B1E3AB86DAA380A99ADB2FC9D375513D6B1E5D48C5B62D84D42D76E592
          58F37F531ADB81D86B185601BFC7135CFFF262977AE3DDF3D275A40DDBF110E0
          E27771DA5A9FC4327D7CFDFD1095993182B90502B108E4D611C08A543179EC53
          266FA6316D7DC3E0010AF044304D03CBE7F288B546E9D2342595619C6C1644B0
          AA7692E8FC90B995652667E74EA87D6FF65C33ADC2DD0808426524482C1A623C
          95C5DC5A46933F4D786A14A5C05F53CBC4FBDD4C2F2DF26366E6E4B14CBA5301
          45803FFFB66C6E7EFBDC919AA71E7F3D1C2EC3F6A02A35C2CE0761E283532417
          E7184AA77A7BB28B1DC03F88C80681C2BDEDDFC8891F66E4F8C0B4F6C258460E
          1EFC5CBE8856CB6B459B4E03C580B1CF2AB8E727F27E1B1DEE1EEC8B73C77629
          2982E3DD57E94B3B9C5CB5CE9E5B5DE9005607EB9FF7961D877B9DC0008A4375
          EF7CF6E84BBD52D1D22DE54D1F4BB0EED019E001C0785119EC45D18442E9501E
          4A1E7B8BECAFBD065000DC07F8000F58BFEB0B189E4B3EF32FA0B35AC6D4781A
          190000000049454E44AE426082}
      end>
  end
  object FDBatchMove: TFDBatchMove
    Reader = FDBatchMoveTextReader
    Writer = FDBatchMoveDataSetWriter
    Mappings = <>
    LogFileName = 'Data.log'
    LogFileEncoding = ecANSI
    Left = 616
    Top = 136
  end
  object FDBatchMoveTextReader: TFDBatchMoveTextReader
    DataDef.Fields = <>
    DataDef.Delimiter = '"'
    DataDef.Separator = #9
    DataDef.RecordFormat = rfCustom
    DataDef.WithFieldNames = True
    Encoding = ecUTF8
    Left = 776
    Top = 136
  end
  object FDBatchMoveDataSetWriter: TFDBatchMoveDataSetWriter
    Direct = True
    DataSet = FDTable
    Left = 928
    Top = 136
  end
  object FDTable: TFDTable
    Connection = DataModule1.FDConnection
    FetchOptions.AssignedValues = [evMode, evAutoFetchAll]
    FetchOptions.Mode = fmAll
    TableName = 'DatevTools100.dbo.pArtikelImport'
    Left = 776
    Top = 200
    object FDTableProduktverwandtschaft: TWideStringField
      FieldName = 'Produktverwandtschaft'
      Origin = 'Produktverwandtschaft'
      Size = 255
    end
    object FDTableASIN: TWideStringField
      FieldName = 'ASIN'
      Origin = 'ASIN'
      Size = 255
    end
    object FDTableSKU: TWideStringField
      FieldName = 'SKU'
      Origin = 'SKU'
      Size = 255
    end
    object FDTableProductName: TWideStringField
      FieldName = 'Product Name'
      Origin = '[Product Name]'
      Size = 255
    end
    object FDTableArtderexternenProduktkennzeichnung: TWideStringField
      FieldName = 'Art der externen Produktkennzeichnung'
      Origin = '[Art der externen Produktkennzeichnung]'
      Size = 255
    end
    object FDTableExterneProduktkennzeichnung: TWideStringField
      FieldName = 'Externe Produktkennzeichnung'
      Origin = '[Externe Produktkennzeichnung]'
      Size = 255
    end
    object FDTableVariantendesign: TWideStringField
      FieldName = 'Variantendesign'
      Origin = 'Variantendesign'
      Size = 255
    end
    object FDTableSize: TWideStringField
      FieldName = 'Size'
      Origin = 'Size'
      Size = 255
    end
    object FDTableColorMap: TWideStringField
      FieldName = 'Color Map'
      Origin = '[Color Map]'
      Size = 255
    end
    object FDTableColor: TWideStringField
      FieldName = 'Color'
      Origin = 'Color'
      Size = 255
    end
    object FDTableSizeMap: TWideStringField
      FieldName = 'Size Map'
      Origin = '[Size Map]'
      Size = 255
    end
    object FDTableZustand: TWideStringField
      FieldName = 'Zustand'
      Origin = 'Zustand'
      Size = 255
    end
    object FDTableMenge: TWideStringField
      FieldName = 'Menge'
      Origin = 'Menge'
      Size = 255
    end
    object FDTablePreis: TWideStringField
      FieldName = 'Preis'
      Origin = 'Preis'
      Size = 255
    end
    object FDTableAktionen: TWideStringField
      FieldName = 'Aktionen'
      Origin = 'Aktionen'
      Size = 255
    end
    object FDTablerelationship_type: TWideStringField
      FieldName = 'relationship_type'
      Origin = 'relationship_type'
      Size = 255
    end
    object FDTableparent_sku: TWideStringField
      FieldName = 'parent_sku'
      Origin = 'parent_sku'
      Size = 255
    end
    object FDTablefeed_product_type: TWideStringField
      FieldName = 'feed_product_type'
      Origin = 'feed_product_type'
      Size = 255
    end
    object FDTablev3_product_type: TWideStringField
      FieldName = 'v3_product_type'
      Origin = 'v3_product_type'
      Size = 255
    end
    object FDTableProduktnameBeschreibung: TWideStringField
      FieldName = 'Produktname/Beschreibung'
      Origin = '[Produktname/Beschreibung]'
      Size = 255
    end
    object FDTableitem_type: TWideStringField
      FieldName = 'item_type'
      Origin = 'item_type'
      Size = 255
    end
    object FDTablerecommended_browse_nodes: TWideStringField
      FieldName = 'recommended_browse_nodes'
      Origin = 'recommended_browse_nodes'
      Size = 255
    end
    object FDTablemanufacturer: TWideStringField
      FieldName = 'manufacturer'
      Origin = 'manufacturer'
      Size = 255
    end
    object FDTablebrand_name: TWideStringField
      FieldName = 'brand_name'
      Origin = 'brand_name'
      Size = 255
    end
    object FDTabledepartment_name: TWideStringField
      FieldName = 'department_name'
      Origin = 'department_name'
      Size = 255
    end
  end
  object QueryBrand: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'select distinct name from DatevTools100.dbo.tBrand (nolock)')
    Left = 608
    Top = 264
    object QueryBrandname: TWideStringField
      FieldName = 'name'
      Origin = 'name'
      Size = 255
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 488
    Top = 192
    object RefreshGrid: TMenuItem
      Caption = 'Refresh'
      OnClick = RefreshGridClick
    end
  end
  object QueryColor: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'select * from [DatevTools100].[dbo].[tProduktColor](nolock)')
    Left = 904
    Top = 264
    object QueryColorProduktColorID: TFMTBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'ProduktColorID'
      Origin = 'ProduktColorID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object QueryColorColorName: TWideStringField
      FieldName = 'ColorName'
      Origin = 'ColorName'
      Size = 255
    end
    object QueryColorColorLang: TWideStringField
      FieldName = 'ColorLang'
      Origin = 'ColorLang'
      Size = 255
    end
    object QueryColorColorKurz: TWideStringField
      FieldName = 'ColorKurz'
      Origin = 'ColorKurz'
      Size = 255
    end
  end
  object DCColor: TDataSource
    DataSet = QueryColor
    Left = 904
    Top = 324
  end
end
