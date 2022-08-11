object Wareneingang_T: TWareneingang_T
  Left = 0
  Top = 0
  Caption = 'Wareneingang'
  ClientHeight = 478
  ClientWidth = 1792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 1792
    Height = 478
    Align = alClient
    TabOrder = 0
    object LEftPanel: TPanel
      Left = 1
      Top = 1
      Width = 864
      Height = 476
      Align = alLeft
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 862
        Height = 80
        Align = alTop
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object btnAdd: TcxButton
          Left = 279
          Top = 48
          Width = 79
          Height = 25
          Caption = 'Add'
          OptionsImage.ImageIndex = 0
          TabOrder = 4
          OnClick = btnAddClick
        end
        object edtEanasin: TcxButtonEdit
          Left = 6
          Top = 49
          Properties.Buttons = <
            item
              Caption = 'Clear'
              Default = True
              ImageIndex = 2
              Kind = bkGlyph
            end>
          Properties.Images = cxImageList16
          Properties.OnButtonClick = edtEanasinPropertiesButtonClick
          TabOrder = 6
          OnKeyUp = edtEanasinKeyUp
          Width = 267
        end
        object lblArtikelname: TcxLabel
          Left = 6
          Top = 32
          Caption = 'EAN/ASIN:'
        end
        object lblLagerplatz: TcxLabel
          Left = 599
          Top = 32
          Caption = 'Lagerplatz:'
        end
        object btnCSVExport: TcxButton
          Left = 6
          Top = 2
          Width = 116
          Height = 25
          Action = actWareneingangExport
          OptionsImage.ImageIndex = 1
          OptionsImage.Images = cxImageList16
          TabOrder = 0
        end
        object cxButton1: TcxButton
          Left = 128
          Top = 2
          Width = 145
          Height = 25
          Caption = 'Wareneingang delete'
          OptionsImage.ImageIndex = 0
          OptionsImage.Images = cxImageList16
          TabOrder = 1
          OnClick = cxButton1Click
        end
        object btnLagerplatzclear: TcxButton
          Left = 715
          Top = 48
          Width = 25
          Height = 25
          OptionsImage.ImageIndex = 2
          OptionsImage.Images = cxImageList16
          TabOrder = 5
          OnClick = btnLagerplatzclearClick
        end
        object edtLagerplatz: TcxMaskEdit
          Left = 599
          Top = 50
          Properties.EditMask = '000\-99;1;_'
          Properties.OnChange = edtLagerplatzPropertiesChange
          TabOrder = 8
          Text = '   -  '
          Width = 98
        end
        object edtLagerplatzVal: TcxSpinButton
          Left = 697
          Top = 49
          AutoSize = False
          Properties.AssignedValues.MinValue = True
          Properties.LargeIncrement = 1.000000000000000000
          Properties.MaxValue = 99.000000000000000000
          Properties.OnChange = edtLagerplatzValPropertiesChange
          TabOrder = 7
          Height = 24
          Width = 19
        end
      end
      object wareneingangGrid: TcxGrid
        AlignWithMargins = True
        Left = 4
        Top = 84
        Width = 856
        Height = 388
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 1
        object wareneingangView: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnEditDblClick = wareneingangViewEditDblClick
          DataController.DataSource = wareneingangDS
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
          object wareneingangViewSpid: TcxGridDBColumn
            DataBinding.FieldName = 'Spid'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object wareneingangViewEAN: TcxGridDBColumn
            DataBinding.FieldName = 'EAN'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object wareneingangViewName: TcxGridDBColumn
            DataBinding.FieldName = 'Name'
            HeaderAlignmentHorz = taCenter
            Width = 200
          end
          object wareneingangViewArtikelnummer: TcxGridDBColumn
            DataBinding.FieldName = 'Artikelnummer'
            HeaderAlignmentHorz = taCenter
            Width = 200
          end
          object wareneingangViewASIN: TcxGridDBColumn
            DataBinding.FieldName = 'ASIN'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object wareneingangViewparentASIN: TcxGridDBColumn
            DataBinding.FieldName = 'parentASIN'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object wareneingangViewMenge: TcxGridDBColumn
            DataBinding.FieldName = 'Menge'
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object wareneingangViewPreis: TcxGridDBColumn
            DataBinding.FieldName = 'Preis'
            HeaderAlignmentHorz = taCenter
          end
          object ColumnAdd: TcxGridDBColumn
            Caption = '22'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Action = actMengeAdd
                Default = True
                ImageIndex = 0
                Kind = bkGlyph
              end>
            Properties.Images = cxImageList12
            Properties.ViewStyle = vsButtonsOnly
            VisibleForExpressionEditor = bFalse
            Options.Filtering = False
            Options.IncSearch = False
            Options.FilteringAddValueItems = False
            Options.ShowEditButtons = isebAlways
            Options.AutoWidthSizable = False
            Options.ExpressionEditing = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
            Options.ShowCaption = False
            Options.Sorting = False
            VisibleForEditForm = bFalse
            VisibleForRowLayout = bFalse
            Width = 20
          end
          object ColumnDel: TcxGridDBColumn
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Action = actMengeDel
                Default = True
                ImageIndex = 1
                Kind = bkGlyph
              end>
            Properties.Images = cxImageList12
            Properties.ViewStyle = vsButtonsOnly
            VisibleForExpressionEditor = bFalse
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.ShowEditButtons = isebAlways
            Options.ExpressionEditing = False
            Options.Moving = False
            Options.ShowCaption = False
            VisibleForEditForm = bFalse
            VisibleForRowLayout = bFalse
            Width = 20
          end
        end
        object wareneingangLevel: TcxGridLevel
          GridView = wareneingangView
        end
      end
    end
    object RPanel: TPanel
      Left = 871
      Top = 1
      Width = 920
      Height = 476
      Align = alClient
      TabOrder = 2
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 918
        Height = 80
        Align = alTop
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          918
          80)
        object btnSuchen: TcxButton
          Left = 865
          Top = 48
          Width = 50
          Height = 25
          Caption = 'Suchen'
          OptionsImage.ImageIndex = 0
          TabOrder = 9
          OnClick = btnSuchenClick
        end
        object btnparentAsin: TcxButtonEdit
          Left = 6
          Top = 49
          Properties.Buttons = <
            item
              Action = actClear
              Default = True
              Kind = bkGlyph
            end>
          Properties.Images = cxImageList16
          Properties.OnButtonClick = edtEanasinPropertiesButtonClick
          TabOrder = 10
          Width = 105
        end
        object cxLabel1: TcxLabel
          Left = 6
          Top = 32
          Caption = 'parentAsin:'
        end
        object lblName: TcxLabel
          Left = 119
          Top = 32
          Caption = 'AmaArtName:'
        end
        object btnamaArtName: TcxButtonEdit
          Left = 114
          Top = 49
          Properties.Buttons = <
            item
              Action = actClear
              Default = True
              Kind = bkGlyph
            end>
          Properties.Images = cxImageList16
          Properties.OnButtonClick = edtEanasinPropertiesButtonClick
          TabOrder = 11
          OnKeyUp = edtEanasinKeyUp
          Width = 212
        end
        object cxLabel3: TcxLabel
          Left = 329
          Top = 30
          Caption = 'Artname:'
        end
        object btnartname: TcxButtonEdit
          Left = 329
          Top = 49
          Properties.Buttons = <
            item
              Action = actClear
              Default = True
              Kind = bkGlyph
            end>
          Properties.Images = cxImageList16
          Properties.OnButtonClick = edtEanasinPropertiesButtonClick
          TabOrder = 12
          OnKeyUp = edtEanasinKeyUp
          Width = 182
        end
        object cxLabel4: TcxLabel
          Left = 514
          Top = 32
          Caption = 'ColorName:'
        end
        object btnColorName: TcxButtonEdit
          Left = 514
          Top = 49
          Properties.Buttons = <
            item
              Action = actClear
              Default = True
              Kind = bkGlyph
            end>
          Properties.Images = cxImageList16
          Properties.OnButtonClick = edtEanasinPropertiesButtonClick
          TabOrder = 13
          OnKeyUp = edtEanasinKeyUp
          Width = 104
        end
        object cxLabel5: TcxLabel
          Left = 621
          Top = 30
          Caption = 'Colorlang:'
        end
        object btncolorlang: TcxButtonEdit
          Left = 621
          Top = 49
          Properties.Buttons = <
            item
              Action = actClear
              Default = True
              Kind = bkGlyph
            end>
          Properties.Images = cxImageList16
          TabOrder = 14
          OnKeyUp = edtEanasinKeyUp
          Width = 76
        end
        object cxLabel6: TcxLabel
          Left = 700
          Top = 30
          Caption = 'ColorKurz:'
        end
        object btncolorKurz: TcxButtonEdit
          Left = 700
          Top = 49
          Properties.Buttons = <
            item
              Action = actClear
              Default = True
              Kind = bkGlyph
            end>
          Properties.Images = cxImageList16
          TabOrder = 15
          OnKeyUp = edtEanasinKeyUp
          Width = 77
        end
        object btnsize: TcxButtonEdit
          Left = 780
          Top = 49
          Properties.Buttons = <
            item
              Action = actClear
              Default = True
              Kind = bkGlyph
            end>
          Properties.Images = cxImageList16
          TabOrder = 16
          OnKeyUp = edtEanasinKeyUp
          Width = 82
        end
        object cxLabel2: TcxLabel
          Left = 780
          Top = 30
          Caption = 'Size:'
        end
        object btnSpeichern: TcxButton
          Left = 800
          Top = 2
          Width = 110
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Speichern'
          OptionsImage.ImageIndex = 5
          OptionsImage.Images = cxImageList16
          TabOrder = 1
          OnClick = btnSpeichernClick
        end
        object btnBearbeiten: TcxButton
          Left = 696
          Top = 2
          Width = 98
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Bearbeiten'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = True
          OptionsImage.ImageIndex = 3
          OptionsImage.Images = cxImageList16
          TabOrder = 0
          OnClick = btnBearbeitenClick
        end
      end
      object ArtikelGrid: TcxGrid
        AlignWithMargins = True
        Left = 4
        Top = 84
        Width = 912
        Height = 249
        Align = alClient
        PopupMenu = ArtikelPM
        TabOrder = 1
        object ArtikelView: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = ArtikelDS
          DataController.KeyFieldNames = 'ArtikelID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'ProduktColorID'
              Column = ArtikelViewArtikelID
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CopyCaptionsToClipboard = False
          OptionsBehavior.CopyRecordsToClipboard = False
          OptionsBehavior.CopyPreviewToClipboard = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CellMultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          Preview.AutoHeight = False
          object ArtikelViewArtikelID: TcxGridDBColumn
            DataBinding.FieldName = 'ArtikelID'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object ArtikelViewparentAsin: TcxGridDBColumn
            DataBinding.FieldName = 'parentAsin'
            HeaderAlignmentHorz = taCenter
            Width = 109
          end
          object ArtikelViewAmaName: TcxGridDBColumn
            DataBinding.FieldName = 'AmaName'
            HeaderAlignmentHorz = taCenter
            Width = 217
          end
          object ArtikelViewArtName: TcxGridDBColumn
            DataBinding.FieldName = 'ArtName'
            HeaderAlignmentHorz = taCenter
            Width = 187
          end
          object ArtikelViewColorName: TcxGridDBColumn
            Caption = 'ColorName'
            DataBinding.FieldName = 'ProduktColorID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ProduktColorID'
            Properties.ListColumns = <
              item
                HeaderAlignment = taCenter
                FieldName = 'ColorName'
              end>
            Properties.ListSource = DSColor
            HeaderAlignmentHorz = taCenter
            Width = 105
          end
          object ArtikelViewColorLang: TcxGridDBColumn
            Caption = 'ColorLang'
            DataBinding.FieldName = 'ProduktColorID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ProduktColorID'
            Properties.ListColumns = <
              item
                HeaderAlignment = taCenter
                FieldName = 'ColorLang'
              end>
            Properties.ListSource = DSColor
            HeaderAlignmentHorz = taCenter
            Width = 81
          end
          object ArtikelViewColorKurz: TcxGridDBColumn
            Caption = 'ColorKurz'
            DataBinding.FieldName = 'ProduktColorID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ProduktColorID'
            Properties.ListColumns = <
              item
                FieldName = 'ColorKurz'
              end>
            Properties.ListSource = DSColor
            HeaderAlignmentHorz = taCenter
            Width = 76
          end
          object ArtikelViewSize: TcxGridDBColumn
            DataBinding.FieldName = 'Size'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object ArtikelViewColumnAdd: TcxGridDBColumn
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Action = actMengeAdd2
                Default = True
                ImageIndex = 0
                Kind = bkGlyph
              end>
            Properties.Images = cxImageList12
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringFilteredItemsListShowFilteredItemsOnly = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.ShowEditButtons = isebAlways
            Options.ExpressionEditing = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.ShowCaption = False
            Width = 20
          end
          object AVProduktColorID: TcxGridDBColumn
            DataBinding.FieldName = 'ProduktColorID'
            Visible = False
            VisibleForExpressionEditor = bFalse
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
            VisibleForRowLayout = bFalse
          end
        end
        object ArtikelLevel: TcxGridLevel
          GridView = ArtikelView
        end
      end
      object M: TMemo
        Left = 1
        Top = 336
        Width = 918
        Height = 139
        Align = alBottom
        Lines.Strings = (
          'M')
        TabOrder = 2
        Visible = False
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 865
      Top = 1
      Width = 6
      Height = 476
    end
  end
  object wareneingangDS: TDataSource
    DataSet = wareneingangQ
    Left = 288
    Top = 292
  end
  object wareneingangQ: TFDQuery
    Connection = DataModule1.FDConnection
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select'
      '      Spid          '
      '     ,EAN'#9'       '
      '     ,Name'#9'       '
      '     ,Artikelnummer'
      '     ,ASIN'#9'       '
      '     ,parentASIN'#9'   '
      '     ,Menge'#9#9'   '
      '     ,Preis'
      ' from DatevTools100.dbo.pWareneingang (nolock)'
      'where Spid = @@spid')
    Left = 292
    Top = 243
    object wareneingangQSpid: TFMTBCDField
      FieldName = 'Spid'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object wareneingangQEAN: TStringField
      FieldName = 'EAN'
      ReadOnly = True
      Size = 255
    end
    object wareneingangQName: TStringField
      FieldName = 'Name'
      ReadOnly = True
      Size = 255
    end
    object wareneingangQArtikelnummer: TStringField
      FieldName = 'Artikelnummer'
      ReadOnly = True
      Size = 255
    end
    object wareneingangQASIN: TStringField
      FieldName = 'ASIN'
      ReadOnly = True
      Size = 255
    end
    object wareneingangQparentASIN: TStringField
      FieldName = 'parentASIN'
      ReadOnly = True
      Size = 255
    end
    object wareneingangQMenge: TIntegerField
      FieldName = 'Menge'
    end
    object wareneingangQPreis: TFloatField
      FieldName = 'Preis'
      ReadOnly = True
    end
  end
  object Query: TFDQuery
    Connection = DataModule1.FDConnection
    FetchOptions.AssignedValues = [evRowsetSize]
    SQL.Strings = (
      'select 1')
    Left = 292
    Top = 194
  end
  object cxImageList12: TcxImageList
    SourceDPI = 96
    Height = 12
    Width = 12
    FormatVersion = 1
    Left = 292
    Top = 136
    Bitmap = {
      494C01010200080004000C000C00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000300000000C00000001002000000000000009
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000412005704120058000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000135701BF135701BF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000135701BF135701BF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000135701BF135701BF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004120057135701BF1357
      01BF135701BF1E8902EF1E8902EF135701BF135701BF135701BF041200590000
      000000000000030318580F0F75BF0F0F75BF0F0F75BF0F0F75BF0F0F75BF0F0F
      75BF0F0F75BF0F0F75BF03031959000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004110056135701BF1357
      01BF135701BF1E8902EF1E8902EF135701BF135701BF135701BF041200570000
      000000000000030318570F0F75BF0F0F75BF0F0F75BF0F0F75BF0F0F75BF0F0F
      75BF0F0F75BF0F0F75BF03031858000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000135701BF135701BF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000135701BF135701BF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000135701BF135701BF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000311005504120057000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000300000000C0000000100010000000000600000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 8913188
    ImageInfo = <
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
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2252
          656D6F7665223E0D0A09093C7061746820636C6173733D225265642220643D22
          4D32372C31384835632D302E362C302D312D302E352D312D31762D3263302D30
          2E362C302E342D312C312D3168323263302E352C302C312C302E342C312C3176
          324332382C31372E352C32372E352C31382C32372C31387A222F3E0D0A093C2F
          673E0D0A3C2F7376673E0D0A}
      end>
  end
  object ActionList: TActionList
    Images = cxImageList12
    Left = 748
    Top = 296
    object actClear: TAction
      Caption = 'Clear'
      ImageIndex = 2
      OnExecute = actClearExecute
    end
    object actMengeAdd: TAction
      Caption = 'actMengeAdd'
      ImageIndex = 3
      OnExecute = actMengeAddExecute
    end
    object actMengeDel: TAction
      Caption = 'actMengeDel'
      ImageIndex = 4
      OnExecute = actMengeDelExecute
    end
    object actWareneingangExport: TAction
      Caption = 'CSV Export'
      ImageIndex = 6
      OnExecute = actWareneingangExportExecute
    end
    object actMengeAdd2: TAction
      Caption = 'actMengeAdd2'
      ImageIndex = 3
      OnExecute = actMengeAdd2Execute
    end
  end
  object ArtikelQ: TFDQuery
    CachedUpdates = True
    Connection = DataModule1.FDConnection
    FetchOptions.AssignedValues = [evMode, evAutoFetchAll]
    FetchOptions.Mode = fmAll
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvUpdateMode, uvCheckUpdatable]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.UpdateTableName = 'DatevTools100.dbo.tArtikel'
    UpdateOptions.KeyFields = 'ArtikelID'
    SQL.Strings = (
      'select t.ArtikelID'
      '      ,t.parentAsin'
      '      ,t.Asin'
      '      ,t.AmaName'
      '      ,t.ArtName'
      '      ,t.ProduktColorID'
      '      --,pc.ColorName'
      '      --,pc.ColorLang'
      '      --,pc.ColorKurz'
      '      ,t.Size'
      '  from DatevTools100.dbo.tArtikel t (nolock)'
      '  left join DatevTools100.dbo.tProduktColor pc (nolock)'
      '         on t.ProduktColorID = pc.ProduktColorID'
      
        '        and isnull(pc.ColorName, '#39#39') like '#39'%'#39' +  isnull(nullif(:' +
        'ColorName, '#39#39'), isnull(pc.ColorName, '#39#39')) + '#39'%'#39
      
        '        and isnull(pc.ColorLang, '#39#39') like '#39'%'#39' +  isnull(nullif(:' +
        'ColorLang, '#39#39'), isnull(pc.ColorLang, '#39#39')) + '#39'%'#39
      
        '        and isnull(pc.ColorKurz, '#39#39') like '#39'%'#39' +  isnull(nullif(:' +
        'ColorKurz, '#39#39'), isnull(pc.ColorKurz, '#39#39')) + '#39'%'#39
      ' where 1=1'
      
        '   and isnull(t.parentAsin, '#39#39') = isnull(nullif(:ParentAsin, '#39#39')' +
        ', isnull(t.parentAsin, '#39#39'))'
      
        '   and isnull(t.AmaName   , '#39#39') like '#39'%'#39' +  isnull(nullif(:AmaNa' +
        'me, '#39#39'),    isnull(t.AmaName   , '#39#39')) + '#39'%'#39
      
        '   and isnull(t.ArtName   , '#39#39') like '#39'%'#39' +  isnull(nullif(:ArtNa' +
        'me, '#39#39'),    isnull(t.ArtName   , '#39#39')) + '#39'%'#39
      
        '   and isnull(t.Size      , '#39#39') like '#39'%'#39' +  isnull(nullif(:Size,' +
        ' '#39#39'),       isnull(t.Size      , '#39#39')) + '#39'%'#39
      '')
    Left = 972
    Top = 147
    ParamData = <
      item
        Name = 'COLORNAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COLORLANG'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COLORKURZ'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PARENTASIN'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'AMANAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ARTNAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SIZE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object ArtikelQArtikelID: TFMTBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'ArtikelID'
      KeyFields = 'ArtikelID'
      Origin = 'ArtikelID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object ArtikelQparentAsin: TStringField
      FieldName = 'parentAsin'
      Origin = 'parentAsin'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Size = 255
    end
    object ArtikelQAmaName: TStringField
      FieldName = 'AmaName'
      Origin = 'AmaName'
      ReadOnly = True
      Size = 255
    end
    object ArtikelQArtName: TStringField
      FieldName = 'ArtName'
      Origin = 'ArtName'
      ReadOnly = True
      Size = 255
    end
    object ArtikelQSize: TStringField
      FieldName = 'Size'
      Origin = 'Size'
      ReadOnly = True
      Size = 255
    end
    object ArtikelQAsin: TStringField
      FieldName = 'Asin'
      Origin = 'Asin'
      ReadOnly = True
      Size = 255
    end
    object ArtikelQProduktColorID: TFMTBCDField
      FieldName = 'ProduktColorID'
      Origin = 'ProduktColorID'
      Precision = 18
      Size = 0
    end
  end
  object ArtikelDS: TDataSource
    DataSet = ArtikelQ
    Left = 968
    Top = 212
  end
  object cxImageList16: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 412
    Top = 136
    Bitmap = {
      494C010109001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A2B0187030F0051186E02D6229A
      02FE197102D90414005C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF1E8A02F00108003D0000
      000301070038197202DA04130059000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF092800820000
      00000000000001070038186C02D5000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000009031F
      2C6B0A5E87BA1192D3E814AEFBFD000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C6B99C614B1
      FFFF14B1FFFF14B1FFFF14B1FFFF0002031F166501CE02090040000000000000
      00000825007D229C02FF229C02FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000013A5EDF6063A
      5694010C1245000102170000000200000000030F00511B7702DF0209003F0000
      0008020900401E8802EE229C02FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010B1041031F
      2C6B0A5E87BA1192D3E814AEFBFD13A3EBF501080C3903100053176901D22094
      02F8176B01D30310005307220078000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C6B99C614B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF13A3EBF504293D7D000204210000
      0007000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000013A5EDF6063A
      5694010C124500010217000000020000000200010116010C11430639529113A3
      EBF5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010B1041031F
      2C6B0A5E87BA1192D3E814AEFBFD14AEFBFD1194D4E90B608ABC03202E6D010A
      0E3D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C6B99C614B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF0D71
      A3CC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C6795C314B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF0C6D
      9DC8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000007031C
      28660A5980B5108CCAE313A7F1F813A7F1F8108DCBE40A5982B6031D2A680000
      0008000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F3F3FBF2E2E2EA32121
      2164050505240000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FFD77610FFD77610FF000000000000000000000000000000000F84
      BDDC14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0F89C4E00000000000000000000000000000000000000000000000000000
      0000000000000F84BDDC14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0F89C4E000000000000000002929299BBABABAFFFFFF
      FFFFFFFFFFFF052D428200000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000717171FFD77610FFD77610FF000000000000000000000000000000000742
      609D14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF084665A10000000000000000000000000000000000000000000000000000
      0000000000000742609D14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF084665A100000000000000001C1C1C5CFFFFFFFFFFFF
      FFFF14B1FFFF14B1FFFF052D4282000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000717171FFD77610FFD77610FF000000000000000000000000000000000217
      215D14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF031924610000000000000000000000000000000000000000000000000000
      0000000000000217215D14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0319246100000000000000000303031CFFFFFFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF052D42820000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000717171FFD77610FFD77610FF000000000000000000000000000000000002
      031D14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000204210000000000000000000000000000000000000000000000000000
      0000000000000002031D14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF00020421000000000000000000000000042A3D7D14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052D428200000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000042A
      3D7D14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052D4282000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      00005B5B5BE5717171FF717171FF717171FF717171FF717171FF717171FF5F5F
      5FEA000000000000000000000000000000000000000000000000000000000000
      000000000000000000005B5B5BE5717171FF717171FF717171FF717171FF7171
      71FF717171FF5F5F5FEA00000000000000000000000000000000000000000000
      0000042A3D7D14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052D42820000
      00000000000000000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      00000A0A0A4C5B5B5BE5717171FF717171FF717171FF717171FF5C5C5CE60A0A
      0A4F000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A0A0A4C5B5B5BE5717171FF717171FF717171FF7171
      71FF5C5C5CE60A0A0A4F00000000000000000000000000000000000000000000
      000000000000042A3D7D14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052D
      42820000000000000000000000000000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000000000
      00000000000000000000000000000000000000000000717171FF717171FF7171
      71FF0000000000000000000000000000000000000000717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000042A3D7D14B1FFFF14B1FFFF14B1FFFF14B1FFFF155C
      CDEF0909439100000001000000000000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000042A3D7D14B1FFFF14B1FFFF155CCDEF1B1B
      D1FF1B1BD1FF09094391000000010000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000000000
      00000000000000000000000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF0000000000000000717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000042A3D7D155CCDEF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF090943910000000100000000D77610FFD77610FFFFFF
      FFFFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFFFFFFFFFFFFF
      FFFFFFFFFFFFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000505266E1B1BCFFE1B1B
      D1FF1B1BD1FF1B1BD1FF08083E8C0000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000000000
      00000000000000000000000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF0000000000000000717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000505266E1B1B
      CFFE1B1BD1FF08083E8C000000000000000000000000D77610FFD77610FFFFFF
      FFFFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
      B9FFFFFFFFFFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      266E08083E8C00000000000000000000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000414141C2454545C700000000000000000000
      00000000000000000000000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF0000000000000000414141C2454545C70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000002000000090000001100000014000000120000000A0000
      00020000000000000000000000000000000000000002000000090000000E0000
      000F000000100000001000000011000000110000001100000012000000120000
      00110000000C0000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000020000000D2511089397522AFF914C25FF8C4420FF2A13099B0000
      001000000002000000000000000000000000000000085C3C32C0AB6F5BFFAB6E
      59FFAB6F5BFFAA6E5AFFAA6D58FFA96E59FFAA6C58FFAA6B58FFAA6B58FFA96B
      57FF5C3A2FC30000000B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000725130990B17C52FFE1BA86FFE4CA9FFFA76031FF995329FF1209
      129B0000000F0000000200000000000000000000000CAD725EFFFDFBF9FFFBF5
      F2FFFAF5F1FFFAF4F0FFFAF4EFFFFAF2EEFFFAF1EDFFF8F1ECFFF8F0EBFFF8F0
      EAFFD5B6ADFF0000001100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FF331C037D0201001B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000009AE7146FFE5C18FFFE4BF8DFFE4BF8DFFE7D0A5FF9D6D6DFF2C24
      9FFF040422990000000D00000002000000000000000CB07661FFFDFBFAFFCEAF
      68FFBA8D2BFFB68B29FFB38929FFB18727FFAF8525FFAD8224FFAA7E23FFA77C
      21FFA67B20FFA5791FFFA2751EFF48350DAD0000000000000000000000000707
      348012128FD30000011700000000000000000000000000000000000001151212
      8BD0070738850000000000000000000000000000000000000000D77610FF331C
      037D09050037BE690FF0331C037D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000B00000011000000120000
      0012000000203C291C9DD0A477FFE7C69AFFE7C495FFB0A6BFFFB0B9EEFF453C
      C7FF2F2AA6FF060524960000000C000000020000000BB07865FFFDFBFBFFBD93
      2EFFDBC292FFFAF5F4FFF9F5F3FFB38929FFF8F2F1FFF7F2EFFFD2B98AFFAA7D
      22FFC4A86DFFF5EEEAFFC2A66BFFA1781EFF0000000000000000000000001111
      84CB1B1BD1FF131392D50000011700000000000000000000011512128DD21B1B
      D1FF12128BD00000000000000000000000000000000000000000331C037D0905
      0037BE690FF0D77610FFD77610FF331C037D0000000000000000000000000000
      000000000000000000000000000000000000553B33C29E6C5CFF9E6B5CFF9D6B
      5BFFB59084FFCEB5ADFFBD977DFFD4AC82FFBAB2C7FF8493E9FF8494EAFFB6C2
      F0FF4641C9FF3431ADFF080828930000000B0000000AB37B68FFFEFCFBFFC094
      2FFFFBF7F6FFBB8E2CFFB88D2AFFB58B29FFB38729FFAF8526FFF7F2EFFFAC81
      23FFE4D5BCFFCEB686FFE2D3BAFFA3791FFF0000000000000000000000000000
      0113121289CF1B1BD1FF131392D5000001170000011512128DD21B1BD1FF1212
      8DD20000011500000000000000000000000000000000000000000000000DB664
      0EEBD77610FFD77610FFD77610FFD77610FF331C037D00000000000000000000
      000000000000000000000000000000000000A17061FFF9F2EFFFF7EEE9FFF7EE
      EAFFC29F93FFF9F2EEFFF7F5F4FFB6ABBEFF727CD7FF95A5EDFF8E9FEDFF8D9E
      EDFFBCC8F2FF4745CBFF3A39B5FF0A0A2A8E00000009B67E6BFFFEFDFCFFC195
      30FFFBF8F7FFBC922DFFBA8D2BFFB68C2AFFD7C08EFFF9F4F1FFD4BC8CFFAD82
      24FFF6F1EEFFA97D21FFF6EEEAFFA37A20FF0000000000000000000000000000
      000000000113121289CF1B1BD1FF131392D512128DD21B1BD1FF12128DD20000
      011500000000000000000000000000000000000000000000000000000000160C
      0152CF7210FAD77610FFD77610FFD77610FFD77610FF331C037D000000000000
      000000000000000000000000000000000000A47466FFF9F2F0FFF7EEEBFFF7EE
      EAFFC3A095FFF7EEEAFFFAF2EFFFBFA69BFF8F8DC3FF7A87DBFF9FB0F1FF97AA
      F1FF97AAF0FFC1CEF5FF5252D1FF383AADFF00000009B98370FFFEFDFCFFC297
      31FFFCF8F8FFC0932EFFBB912EFFBA8D2CFFFAF5F3FFB48929FFB18727FFAF85
      25FFF7F1EFFFAA7E23FFF6F0ECFFA67B20FF0000000000000000000000000000
      00000000000000000113121289CF1B1BD1FF1B1BD1FF12128DD2000001150000
      0000000000000000000000000000000000000000000000000000000000000000
      0000160C0152CF7210FAD77610FFD77610FFD77610FFD77610FF331C037D0000
      0000000000000000000000000000000000003036BBFF2E35BAFF2C33B8FF2B32
      B7FF2A30B6FFC3A196FFC4A196FFD2B8AFFFC3ABA0FFA2A5DBFF8290E0FFA9B9
      F4FFA0B4F3FFA7B9F5FF7C85CDFF0B0C298800000008BC8876FFFEFEFDFFC699
      32FFDFC996FFFCF8F8FFFAF8F7FFBB912DFFDAC291FFFAF5F4FFF8F3F0FFB187
      27FFF8F2F0FFAC8224FFF6F0EDFFA77C21FF0000000000000000000000000000
      0000000000000000011512128DD21B1BD1FF1B1BD1FF131392D5000001170000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000160C0152CF7210FAD77610FFD77610FFD77610FFD77610FF311B
      037A000000000000000000000000000000003D48C5FF768CFBFF647AF9FF6379
      FAFF363EC1FFF8EFEBFFF7F0EBFFF8F0EBFFD3BAB1FFF9F6F4FF9793C6FF8896
      E4FFB7C8F7FF7683D5FF0D0F2E860000000500000007BF8C79FFFEFEFDFFD7B8
      70FFC39931FFC29531FFC09430FFBC922EFFBB8E2CFFB88D2BFFB58B29FFB387
      28FFB18627FFAE8324FFAC8123FF4D3A10AD0000000000000000000000000000
      00000000011512128DD21B1BD1FF12128DD2121289CF1B1BD1FF131392D50000
      0117000000000000000000000000000000000000000000000000000000000000
      00000000000000000000160C0152CF7210FAD77610FFD77610FFCD7010F9140A
      014E03020022000000000000000000000000424DCAFF788EFBFF768CFAFF748A
      FBFF3D47C6FFF8F0EDFFF8F0ECFFF8F0ECFFC5A499FFF9F4F1FFDBC7C0FFAAAD
      E2FF5F6AD6FF10133289000000040000000100000006C18F7EFFFEFEFEFFFAF6
      F3FFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4EFFFFAF4EEFFFDF9
      F8FFDEC3BAFF0000000B00000000000000000000000000000000000000000000
      011512128DD21B1BD1FF12128DD20000011500000113121289CF1B1BD1FF1313
      92D5000001170000000000000000000000000000000000000000000000000000
      0000000000000000000000000000160C0152CF7210FACD7010F9140A014E1109
      014ACB7010F82E1903770000000000000000434FCBFF4D58CEFF4D58CEFF4C58
      CDFF2F5CC3FF2365BEFF2262BCFF2260BBFF205EBAFFC7A69BFFD4BCB3FFEADC
      D8FFD6C0B8FF0000000A000000000000000000000006C49382FFFFFEFEFFFBF7
      F4FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5F1FFFBF5F0FFFDFB
      F9FFBF8C7AFF0000000B00000000000000000000000000000000000000001111
      88CE1B1BD1FF12128DD200000115000000000000000000000113121289CF1B1B
      D1FF12128FD30000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000160C0152140A014E1109014ACB70
      10F8D77610FFBB670EEE0000000000000000B78E81FFFAF5F2FFF8F0EEFFF7F1
      EEFF2872C4FFB7E6FAFF73CFF6FF72CFF6FF2367BFFFF7F0EEFFF8F0EDFFFAF4
      F2FFB08576FF00000009000000000000000000000005C79985FFFFFEFEFFFCF8
      F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F2FFFDFC
      FAFFC28F7EFF0000000A00000000000000000000000000000000000000000606
      2D77121288CE0000011500000000000000000000000000000000000001131111
      84CB0606317C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001000016C46C0FF4D776
      10FFC36C0FF30C07003E0000000000000000BA9285FFFAF5F2FFFAF5F2FFFAF5
      F2FF2C7BCAFFBBE9FBFFBBE9FBFFBBE9FAFF2971C4FFFAF4F2FFFAF5F2FFFAF5
      F2FFB48A7BFF00000008000000000000000000000004C99A89FFFFFFFEFFFFFF
      FEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFEFDFFFEFDFDFFFEFD
      FDFFC49382FF0000000800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000180D0256B061
      0DE70C07003E0000000000000000000000006A544CC1BE9789FFBC9688FFBC95
      88FF2F84CDFF2F82CDFF2D7ECBFF2C7DCAFF2B7BCAFFBA9183FFB89083FFB88F
      82FF664F47C10000000500000000000000000000000272574DC0CA9C8BFFCA9C
      8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC99987FFC79887FFC898
      86FF6F554BC20000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000300000005000000050000
      0005000000050000000500000005000000050000000600000006000000060000
      0005000000040000000100000000000000000000000100000002000000030000
      0004000000040000000500000005000000050000000600000006000000060000
      0006000000050000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 8913308
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000020744558745469746C6500436C65617252756C65733B43
          6F6E646974696F6E3B52756C653B40186E53000002D749444154785E75936D48
          956718C77FF7739EE79899329CF9F225A6D3A6A7F526BD2CDA0E8DCD6A817E19
          B2F56150ED436D504A98042316B116C6346C9A45C5FCD05EA01A1411B3C435B1
          B6993563D40A0ED3899D33DD384731B5CEFD3CF7B5D3E110E743FBC11F2E6E2E
          AEEBFFE7E652800FB0F87F545A2D29799200C0FEBCADABC7E77382220604AA62
          0D60C07886648F11BAE6B7801844C0F574EF8186EAB7010D608B51C18FB6BE4E
          0AEE1FF258BEB3E5D9BAFEA63AEA3E5CF7CCC7E1F62BC1946B0D60B9AE0780AB
          0D899AF8AC8B782E3ADC851BFE013D134FBE6B6D40406B373D16F6A6DE664237
          3B001004B133E8DBBF13E309C954C670FEF22085F9D994BD94CF9B6B17D2943E
          408CB078E5A264A34AE866CF2481EF7E4148C2F94BB778BFA692DF7E1F61EE9D
          6B2CE8B9CC85B7D67CAA94FA04F02CAD351883C4A2C8440C3DFB0423293790D8
          9C83CF02FF4037D6D89F147FF01EA5EB828DDFAEA93C00D8EAEAEAE5226230C6
          2022881186EB8F038AA2821C26A726591B1FC2F96798BC8A57103D8BE564707F
          E01E37BE39DBA4B6EF39234DFB6AD1AE4180B31707A8AD598163FB3877E93AE5
          9144FEF8BFE4579442FC310238A50142078F12FA3B8CAD5D0F010CA00023826D
          5B383E8F979D59F22646C92D2FC18DC5400427B0947B7B0F31FE688AD0D8F811
          B579477BAFED64BE412A77796921156545DC198961CF2FA0CA1FA6E4AF7E9402
          FF924A1EEC6F657422CAEDC8C3B68391F05E056401FEB4BFCDD954D7B96FC9CA
          65DB4A4A0AD0060223BFB2F44578F0D93186A2E35C0F8F74B4C7A28DC00C2292
          2E80CC0DBBBF97233F3D94E61F4793FA7A3022BB769D96AFCA16CB96AC792780
          6CC0DAEC643CF788CC1FFD3FB7F6750FF0447BE4664173EB35BAC32E6DD3CEA9
          CEE9478DC074DF6BEBCD94EBF23C0716905DB4AAFECB45EF76C8C2EA5629AEFA
          420A57359C045E00AC7794C5061455289488904EEEAB1F13BBDB610119C01CC0
          0718E0F1536DC4321E420AFE03621972809F810A240000000049454E44AE4260
          82}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001D744558745469746C65004578706F72743B4353563B4578706F7274
          546F4353563B61685AF00000020C49444154785E8D933D6B544114869FB9C68F
          C2CA5A89105289A8681209C88AC108011BFD07C982010329446C244534454A21
          88B0F90B2E22229242C807BB91A028961A4940BBC5147EC4ECCE9C57380C97C5
          3472997BDEB99CF3CC7B997302F0EFA28CFB3580802849003D4098AFADBF2E42
          510110427202267F230590210231FE599D99BA3C027432800285CA9DEA40C92F
          C5FE2D738F1B978003DD80106520D86B270428439485080838722890A2011400
          2520B513004902511641C0D941191C88C97343378014132094010AC1B5726AD6
          0EAB0CF53207D0EDA0930C01332B9B2C6FB7200AC9308B98EB845942D1FC7BFF
          83FACFFED9A760A95E00C11D002BDB3B54CF1EA731314CA33A8C24AA177A599F
          BC4263720461AC4F5D03196FA6C730B31BEEA0DD4948208B8C9F39C1506D0DAC
          83A2183F7F92C185257760660E953BC67501D0C90E64C21F455214A6486D6393
          E6EDAB5407FA72A130093340C90121A5EC40C263F434DF2F363F33F8E8251383
          7DBE7FF7F53BD58BFDBCFFD642829E0C002F4E2C6E6CD1BC554188A185253FDD
          10B5E62777F0FCE316F747CF31FBEA2D921180A3E3F79EFD78F2F03AD32F3EB0
          FAA5855904FF67F3E5D653BE090999504C48A95EF68180F9D1D3E52CE47BCFDA
          7284D5C62637C74E1D93B493FB80D8DEFDBD3C71B75E3141911BC704210859E8
          EA4ED1DEFBB506B4BB47B5000E0307FF63A4958768575202F80BB14381F3D6DB
          90F20000000049454E44AE426082}
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
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2244
          656C657465223E0D0A09093C673E0D0A0909093C7061746820636C6173733D22
          5265642220643D224D31382E382C31366C362E392D362E3963302E342D302E34
          2C302E342D312C302D312E346C2D312E342D312E34632D302E342D302E342D31
          2D302E342D312E342C304C31362C31332E324C392E312C362E33632D302E342D
          302E342D312D302E342D312E342C3020202623393B2623393B2623393B4C362E
          332C372E37632D302E342C302E342D302E342C312C302C312E346C362E392C36
          2E396C2D362E392C362E39632D302E342C302E342D302E342C312C302C312E34
          6C312E342C312E3463302E342C302E342C312C302E342C312E342C306C362E39
          2D362E396C362E392C362E3920202623393B2623393B2623393B63302E342C30
          2E342C312C302E342C312E342C306C312E342D312E3463302E342D302E342C30
          2E342D312C302D312E344C31382E382C31367A222F3E0D0A09093C2F673E0D0A
          09093C673E0D0A0909093C7061746820636C6173733D225265642220643D224D
          31382E382C31366C362E392D362E3963302E342D302E342C302E342D312C302D
          312E346C2D312E342D312E34632D302E342D302E342D312D302E342D312E342C
          304C31362C31332E324C392E312C362E33632D302E342D302E342D312D302E34
          2D312E342C3020202623393B2623393B2623393B4C362E332C372E37632D302E
          342C302E342D302E342C312C302C312E346C362E392C362E396C2D362E392C36
          2E39632D302E342C302E342D302E342C312C302C312E346C312E342C312E3463
          302E342C302E342C312C302E342C312E342C306C362E392D362E396C362E392C
          362E3920202623393B2623393B2623393B63302E342C302E342C312C302E342C
          312E342C306C312E342D312E3463302E342D302E342C302E342D312C302D312E
          344C31382E382C31367A222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F
          7376673E0D0A}
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
          303B3C7374796C6520747970653D22746578742F637373223E2E426C75657B66
          696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C61
          73733D22426C75652220643D224D32372E362C382E326C2D332E382D332E3863
          2D302E352D302E352D312E342D302E352D312E392C306C2D322E352C322E356C
          352E382C352E386C322E352D322E354332382E312C392E362C32382E312C382E
          382C32372E362C382E327A222F3E0D0A3C706F6C79676F6E20636C6173733D22
          426C75652220706F696E74733D22342C32382031302C323820342C323220222F
          3E0D0A3C7265637420783D22352E382220793D2231332E3422207472616E7366
          6F726D3D226D617472697828302E373037202D302E3730373220302E37303732
          20302E373037202D382E3035372031352E343537292220636C6173733D22426C
          7565222077696474683D2231372E3622206865696768743D22382E32222F3E0D
          0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346
          46423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23
          4431314331433B7D262331333B262331303B2623393B2E426C61636B7B66696C
          6C3A233732373237323B7D262331333B262331303B2623393B2E57686974657B
          66696C6C3A234646464646463B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D2259656C6C6F772220643D224D342C32324C31382C386C362C364C31
          302C32384C342C32327A222F3E0D0A3C7061746820636C6173733D2252656422
          20643D224D31382E312C386C362D366C362C366C2D362C364C31382E312C387A
          222F3E0D0A3C706F6C79676F6E20636C6173733D2257686974652220706F696E
          74733D2231302C323620382C323620382C323420362C323420362C323220342C
          323220332E322C32352E3220362E382C32382E382031302C323820222F3E0D0A
          3C706F6C79676F6E20636C6173733D22426C61636B2220706F696E74733D2232
          2C333020362E382C32382E3820332E322C32352E3220222F3E0D0A3C2F737667
          3E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E57686974657B66696C6C3A234646
          464646463B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E426C75657B66696C
          6C3A233131373744373B7D262331333B262331303B2623393B2E7374307B6F70
          61636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BB
          D0BED0B95F32223E0D0A09093C672069643D2253617665223E0D0A0909093C70
          6F6C79676F6E20636C6173733D22426C75652220706F696E74733D2233302C32
          20322C3220322C333020322C333020362C333020362C32302032362C32302032
          362C33302033302C3330202623393B2623393B222F3E0D0A0909093C72656374
          20783D22362220793D22322220636C6173733D22576869746522207769647468
          3D22323022206865696768743D223134222F3E0D0A0909093C7061746820636C
          6173733D22426C61636B2220643D224D362C323076313068323056323048367A
          204D32342C3238682D34762D3668345632387A222F3E0D0A0909093C6720636C
          6173733D22737430223E0D0A090909093C7265637420783D22382220793D2234
          2220636C6173733D22426C61636B222077696474683D22313622206865696768
          743D2232222F3E0D0A090909093C7265637420783D22382220793D2238222063
          6C6173733D22426C61636B222077696474683D22313222206865696768743D22
          32222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F
          7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F322220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E426C61636B7B66696C6C3A233732
          373237323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C
          3A234646423131353B7D3C2F7374796C653E0D0A3C706F6C79676F6E20636C61
          73733D2259656C6C6F772220706F696E74733D22382C323220362C3330203236
          2C33302032342C323220222F3E0D0A3C7061746820636C6173733D22426C6163
          6B2220643D224D32302C3136682D32563463302D312E312D302E392D322D322D
          32732D322C302E392D322C32763132682D32632D322E322C302D342C312E382D
          342C346831364332342C31372E382C32322E322C31362C32302C31367A222F3E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F322220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E426C61636B7B66696C6C3A233732
          373237323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C
          3A234646423131353B7D3C2F7374796C653E0D0A3C706F6C79676F6E20636C61
          73733D2259656C6C6F772220706F696E74733D2231322C32322031302C333020
          33302C33302032382C323220222F3E0D0A3C7061746820636C6173733D22426C
          61636B2220643D224D32342C3136682D32563463302D312E312D302E392D322D
          322D32732D322C302E392D322C32763132682D32632D322E322C302D342C312E
          382D342C346831364332382C31372E382C32362E322C31362C32342C31367A22
          2F3E0D0A3C7265637420783D22322220793D22322220636C6173733D22426C61
          636B222077696474683D22313222206865696768743D2232222F3E0D0A3C7265
          637420783D22322220793D22362220636C6173733D22426C61636B2220776964
          74683D22313222206865696768743D2232222F3E0D0A3C7265637420783D2232
          2220793D2231302220636C6173733D22426C61636B222077696474683D223132
          22206865696768743D2232222F3E0D0A3C7265637420783D22322220793D2231
          342220636C6173733D22426C61636B222077696474683D223622206865696768
          743D2232222F3E0D0A3C2F7376673E0D0A}
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
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D
          225570646174654461746145787472616374223E0D0A09093C7061746820636C
          6173733D2259656C6C6F772220643D224D342C3130563663302D322E322C342E
          352D342C31302D347331302C312E382C31302C34763463302C322E322D342E35
          2C342D31302C3453342C31322E322C342C31307A204D31342C323063302E352C
          302C312E312C302C312E362D302E3120202623393B2623393B63312E362D322E
          342C342E332D332E392C372E342D332E3963302E332C302C302E372C302C312C
          302E3163302C302C302C302C302D302E31762D3463302C322E322D342E352C34
          2D31302C3453342C31342E322C342C3132763443342C31382E322C382E352C32
          302C31342C32307A204D31342C32344C31342C323420202623393B2623393B63
          302E312D302E372C302E332D312E342C302E352D32632D302E322C302D302E34
          2C302D302E352C30632D352E352C302D31302D312E382D31302D34763463302C
          322E322C342E352C342C31302C345632347A222F3E0D0A09093C706174682063
          6C6173733D22477265656E2220643D224D33302C31387636682D302E31483234
          6C322E352D322E354332352E362C32302E362C32342E342C32302C32332C3230
          632D322E342C302D342E342C312E372D342E392C34682D3263302E352D332E34
          2C332E342D362C362E392D3620202623393B2623393B63312E392C302C332E37
          2C302E382C342E392C322E314C33302C31387A204D32332C3330632D312E342C
          302D322E362D302E362D332E352D312E354C32322C3236682D352E3948313676
          366C322E312D322E3163312E332C312E332C332C322E312C342E392C322E3163
          332E352C302C362E342D322E362C362E392D3620202623393B2623393B682D32
          4332372E342C32382E332C32352E342C33302C32332C33307A222F3E0D0A093C
          2F673E0D0A3C2F7376673E0D0A}
      end>
  end
  object TableColor: TFDTable
    IndexFieldNames = 'ProduktColorID'
    Connection = DataModule1.FDConnection
    TableName = 'DatevTools100.dbo.tProduktColor'
    Left = 1051
    Top = 146
    object TableColorProduktColorID: TFMTBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'ProduktColorID'
      Origin = 'ProduktColorID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Precision = 18
      Size = 0
    end
    object TableColorColorName: TStringField
      FieldName = 'ColorName'
      Origin = 'ColorName'
      Size = 255
    end
    object TableColorColorLang: TStringField
      FieldName = 'ColorLang'
      Origin = 'ColorLang'
      Size = 255
    end
    object TableColorColorKurz: TStringField
      FieldName = 'ColorKurz'
      Origin = 'ColorKurz'
      Size = 255
    end
  end
  object DSColor: TDataSource
    DataSet = TableColor
    Left = 1131
    Top = 145
  end
  object PopupMenu1: TPopupMenu
    Images = cxImageList16
    Left = 736
    Top = 184
    object Wrefresh: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 8
      OnClick = WrefreshClick
    end
  end
  object ArtikelPM: TPopupMenu
    Images = cxImageList16
    Left = 976
    Top = 312
    object pmClone: TMenuItem
      Action = actClone
    end
    object pmCloneSet: TMenuItem
      Action = actCloneSet
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PPArtikelRefresh: TMenuItem
      Caption = 'Refresh'
      ImageIndex = 8
      OnClick = PPArtikelRefreshClick
    end
  end
  object ArtikelAL: TActionList
    Images = cxImageList16
    Left = 903
    Top = 137
    object actClone: TAction
      Caption = 'Clone'
      ImageIndex = 6
      OnExecute = actCloneExecute
      OnUpdate = actCloneUpdate
    end
    object actCloneSet: TAction
      Caption = 'Clone set'
      ImageIndex = 7
      OnExecute = actCloneSetExecute
      OnUpdate = actCloneSetUpdate
    end
  end
end
