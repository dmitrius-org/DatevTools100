object Suchen_T: TSuchen_T
  Left = 0
  Top = 0
  Caption = 'Suchen'
  ClientHeight = 490
  ClientWidth = 1068
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1068
    Height = 490
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1068
      490)
    object cxLabel1: TcxLabel
      Left = 6
      Top = 380
      Anchors = [akLeft, akBottom]
      Caption = 'Summe'
      Transparent = True
    end
    object SuchenGrid: TcxGrid
      AlignWithMargins = True
      Left = 3
      Top = 68
      Width = 1062
      Height = 419
      Align = alClient
      TabOrder = 1
      object SuchenView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnEditDblClick = SuchenViewEditDblClick
        DataController.DataSource = SuchenDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.CopyRecordsToClipboard = False
        OptionsBehavior.DragDropText = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        object SuchenViewIntArtNummer: TcxGridDBColumn
          DataBinding.FieldName = 'IntArtNummer'
          HeaderAlignmentHorz = taCenter
          Width = 126
        end
        object SuchenViewArtikelname: TcxGridDBColumn
          DataBinding.FieldName = 'Artikelname'
          HeaderAlignmentHorz = taCenter
          Width = 449
        end
        object SuchenViewArtikelnummer: TcxGridDBColumn
          DataBinding.FieldName = 'Artikelnummer'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object SuchenViewEAN: TcxGridDBColumn
          DataBinding.FieldName = 'EAN'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object SuchenViewASIN: TcxGridDBColumn
          DataBinding.FieldName = 'ASIN'
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object SuchenViewLagerbetand: TcxGridDBColumn
          DataBinding.FieldName = 'Lagerbetand'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
      end
      object SuchenLevel: TcxGridLevel
        GridView = SuchenView
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1068
      Height = 65
      Align = alTop
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      object btnFind: TcxButton
        Left = 499
        Top = 32
        Width = 79
        Height = 25
        Caption = 'Suchen'
        OptionsImage.ImageIndex = 0
        TabOrder = 0
        OnClick = btnFindClick
      end
      object edtArtNum: TcxButtonEdit
        Left = 6
        Top = 33
        Properties.Buttons = <
          item
            Caption = 'Clear'
            Default = True
            ImageIndex = 2
            Kind = bkGlyph
          end>
        Properties.Images = cxImageList
        Properties.OnButtonClick = edtArtNumPropertiesButtonClick
        TabOrder = 3
        OnKeyUp = edtArtNumKeyUp
        Width = 326
      end
      object lblArtikelname: TcxLabel
        Left = 6
        Top = 17
        Caption = 'Artikelname:'
      end
      object lblEAN: TcxLabel
        Left = 338
        Top = 17
        Caption = 'EAN:'
      end
      object edtEAN: TcxButtonEdit
        Left = 338
        Top = 33
        Properties.Buttons = <
          item
            Caption = 'Clear'
            Default = True
            ImageIndex = 2
            Kind = bkGlyph
          end>
        Properties.Images = cxImageList
        Properties.OnButtonClick = edtArtNumPropertiesButtonClick
        TabOrder = 4
        OnKeyUp = edtArtNumKeyUp
        Width = 155
      end
    end
  end
  object SuchenQ: TFDQuery
    Connection = DataModule1.FDConnection
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'SELECT ArtikelNum.kArtikel   as IntArtNummer'
      '      ,Artikelname.cName     as Artikelname'
      '      ,ArtikelNum.[cArtNr]   as Artikelnummer'
      '      ,ArtikelNum.[cBarcode] as EAN'
      '      ,ArtikelNum.[cASIN]    as ASIN'
      '      ,tlagerbestand.fVerfuegbar as Lagerbetand'
      '  FROM [eazybusiness].[dbo].[tArtikel] as ArtikelNum'
      '  LEFT JOIN ('
      '  SELECT [kArtikel]'
      '      ,[cName]'
      '  FROM [eazybusiness].[dbo].[tArtikelBeschreibung]'
      '  where kSprache = 1'
      '  and kPlattform = 1'
      '  ) as Artikelname'
      '  ON ArtikelNum.kArtikel = Artikelname.kArtikel'
      'LEFT JOIN ('
      'SELECT [kArtikel]'
      '      ,[fVerfuegbar]'
      'FROM [eazybusiness].[dbo].[tlagerbestand]'
      ') as tlagerbestand'
      'ON ArtikelNum.kArtikel = tlagerbestand.kArtikel'
      ''
      
        'where (:ArtNum = '#39#39' or (Artikelname.cName like '#39'%'#39' + replace(:Ar' +
        'tNum, '#39' '#39', '#39'%'#39') + '#39'%'#39'))'
      '  and (:ean = '#39#39' or ArtikelNum.[cBarcode] = :ean) ')
    Left = 284
    Top = 267
    ParamData = <
      item
        Name = 'ARTNUM'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'EAN'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object SuchenQIntArtNummer: TFDAutoIncField
      FieldName = 'IntArtNummer'
      Origin = 'IntArtNummer'
      ReadOnly = True
    end
    object SuchenQArtikelname: TStringField
      FieldName = 'Artikelname'
      Origin = 'Artikelname'
      Size = 255
    end
    object SuchenQArtikelnummer: TStringField
      FieldName = 'Artikelnummer'
      Origin = 'Artikelnummer'
      Required = True
      Size = 100
    end
    object SuchenQEAN: TStringField
      FieldName = 'EAN'
      Origin = 'EAN'
      Size = 255
    end
    object SuchenQASIN: TStringField
      FieldName = 'ASIN'
      Origin = 'ASIN'
      Size = 255
    end
    object SuchenQLagerbetand: TFMTBCDField
      FieldName = 'Lagerbetand'
      Origin = 'Lagerbetand'
      Precision = 28
      Size = 14
    end
  end
  object SuchenDS: TDataSource
    DataSet = SuchenQ
    Left = 288
    Top = 324
  end
  object cxImageList: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 2098092
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
      end>
  end
  object Query: TFDQuery
    Connection = DataModule1.FDConnection
    FetchOptions.AssignedValues = [evRowsetSize]
    SQL.Strings = (
      'select 1')
    Left = 708
    Top = 154
  end
end
