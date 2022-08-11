object EingabeErr_T: TEingabeErr_T
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Eingabe'
  ClientHeight = 442
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 957
    Height = 153
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 23
      Top = 16
      Width = 67
      Height = 15
      Caption = 'Artikelname:'
    end
    object Label2: TLabel
      Left = 23
      Top = 41
      Width = 26
      Height = 15
      Caption = 'EAN:'
    end
    object Label3: TLabel
      Left = 23
      Top = 66
      Width = 29
      Height = 15
      Caption = 'ASIN:'
    end
    object Label4: TLabel
      Left = 23
      Top = 91
      Width = 83
      Height = 15
      Caption = 'Artikelnummer:'
    end
    object Label5: TLabel
      Left = 23
      Top = 116
      Width = 88
      Height = 15
      Caption = 'Bestand Gesamt:'
    end
    object btnLinkLagerbestand: TcxButton
      Left = 816
      Top = 12
      Width = 138
      Height = 25
      Caption = 'LinkLagerbestand'
      OptionsImage.ImageIndex = 0
      TabOrder = 0
      OnClick = btnLinkLagerbestandClick
    end
    object edtArtikelname: TDBEdit
      Left = 152
      Top = 13
      Width = 658
      Height = 23
      DataField = 'cName'
      DataSource = DSArtikeldaten
      ReadOnly = True
      TabOrder = 1
    end
    object edtEAN: TDBEdit
      Left = 152
      Top = 38
      Width = 289
      Height = 23
      DataField = 'cBarcode'
      DataSource = DSArtikeldaten
      ReadOnly = True
      TabOrder = 2
    end
    object edtASIN: TDBEdit
      Left = 152
      Top = 63
      Width = 289
      Height = 23
      DataField = 'cASIN'
      DataSource = DSArtikeldaten
      ReadOnly = True
      TabOrder = 3
    end
    object edtArtikelnummer: TDBEdit
      Left = 152
      Top = 88
      Width = 289
      Height = 23
      DataField = 'cArtNr'
      DataSource = DSArtikeldaten
      ReadOnly = True
      TabOrder = 4
    end
    object edtBestTotal: TDBEdit
      Left = 152
      Top = 113
      Width = 289
      Height = 23
      DataField = 'fVerfuegbar'
      DataSource = DSArtikeldaten
      ReadOnly = True
      TabOrder = 5
    end
  end
  object LagerplatzGrid: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 156
    Width = 951
    Height = 283
    Align = alClient
    TabOrder = 1
    object LagerplatzView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <
        item
          Hint = 'Delete all row'
          ImageIndex = 1
        end>
      Navigator.Buttons.Insert.Enabled = False
      Navigator.Buttons.Insert.Visible = False
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = LagerplatzDS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.CancelOnExit = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      object LagerplatzViewLagerplatz: TcxGridDBColumn
        DataBinding.FieldName = 'Lagerplatz'
        HeaderAlignmentHorz = taCenter
        Width = 179
      end
      object LagerplatzViewBestand: TcxGridDBColumn
        DataBinding.FieldName = 'Bestand'
        HeaderAlignmentHorz = taCenter
        Width = 86
      end
      object LagerplatzViewNameLager: TcxGridDBColumn
        DataBinding.FieldName = 'NameLager'
        HeaderAlignmentHorz = taCenter
        Width = 257
      end
      object LagerplatzViewKommentar1: TcxGridDBColumn
        DataBinding.FieldName = 'Kommentar1'
        HeaderAlignmentHorz = taCenter
        Width = 200
      end
      object LagerplatzViewKommentar2: TcxGridDBColumn
        DataBinding.FieldName = 'Kommentar2'
        HeaderAlignmentHorz = taCenter
        Width = 200
      end
    end
    object LagerplatzLevel: TcxGridLevel
      GridView = LagerplatzView
    end
  end
  object DSArtikeldaten: TDataSource
    DataSet = QueryArtikeldaten
    Left = 728
    Top = 68
  end
  object QueryArtikeldaten: TFDQuery
    Connection = DataModule1.FDConnection
    FetchOptions.AssignedValues = [evRowsetSize]
    SQL.Strings = (
      'SELECT ArtikelNum.kArtikel'
      '      ,Artikelname.cName --txt.Artikelname '
      '      ,ArtikelNum.[cArtNr] --txt.ArtNum '
      '      ,ArtikelNum.[cBarcode] --txt.EAN '
      '      ,ArtikelNum.[cASIN] --txt.ASIN '
      '      ,tlagerbestand.fVerfuegbar --txt.BestTotal '
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
      'where ArtikelNum.[cBarcode] = :EAN')
    Left = 836
    Top = 66
    ParamData = <
      item
        Name = 'EAN'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object QueryArtikeldatenkArtikel: TFDAutoIncField
      FieldName = 'kArtikel'
      Origin = 'kArtikel'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QueryArtikeldatencName: TStringField
      FieldName = 'cName'
      Origin = 'cName'
      Size = 255
    end
    object QueryArtikeldatencArtNr: TStringField
      FieldName = 'cArtNr'
      Origin = 'cArtNr'
      Required = True
      Size = 100
    end
    object QueryArtikeldatencBarcode: TStringField
      FieldName = 'cBarcode'
      Origin = 'cBarcode'
      Size = 255
    end
    object QueryArtikeldatencASIN: TStringField
      FieldName = 'cASIN'
      Origin = 'cASIN'
      Size = 255
    end
    object QueryArtikeldatenfVerfuegbar: TFMTBCDField
      FieldName = 'fVerfuegbar'
      Origin = 'fVerfuegbar'
      Precision = 28
      Size = 14
    end
  end
  object LagerplatzDS: TDataSource
    DataSet = LagerplatzQ
    Left = 736
    Top = 188
  end
  object LagerplatzQ: TFDQuery
    Connection = DataModule1.FDConnection
    FetchOptions.AssignedValues = [evRowsetSize]
    SQL.Strings = (
      'SELECT '
      '      tWarenLagerPlatz.cName AS Lagerplatz, '
      
        '      SUM(ISNULL(tWarenLagerPlatzArtikel.fAnzahl, 0.0)) AS Besta' +
        'nd, '
      '      twarenlager.cName AS NameLager,  '
      
        '      ISNULL(tWarenLagerPlatzArtikel.cKommentar_1, '#39#39') AS Kommen' +
        'tar1, '
      
        '      ISNULL(tWarenLagerPlatzArtikel.cKommentar_2, '#39#39') AS Kommen' +
        'tar2'
      '                                                    '
      
        'FROM [eazybusiness].[dbo].vWarenLagerPlatzArtikel AS tWarenLager' +
        'PlatzArtikel'
      'LEFT JOIN [eazybusiness].[dbo].tWarenLagerPlatz'
      
        '       ON tWarenLagerPlatz.kWarenLagerPlatz = tWarenLagerPlatzAr' +
        'tikel.kWarenLagerPlatz'
      ''
      'LEFT JOIN [eazybusiness].[dbo].tWarenLager '
      '       ON tWarenLager.kWarenLager = tWarenLagerPlatz.kWarenLager'
      ''
      'JOIN [eazybusiness].[dbo].tartikel '
      '  ON tArtikel.kArtikel = tWarenLagerPlatzArtikel.kArtikel'
      ''
      'WHERE tWarenLagerPlatzArtikel.kArtikel = :kArtikel '
      '  AND tWarenLager.nAktiv = 1'
      ''
      'GROUP BY '
      '      tWarenLagerPlatz.cName, '
      '      tWarenLager.cName, '
      '      ISNULL(tWarenLagerPlatzArtikel.cKommentar_1, '#39#39'), '
      '      ISNULL(tWarenLagerPlatzArtikel.cKommentar_2, '#39#39')'
      ''
      ''
      'HAVING (SUM(ISNULL(tWarenLagerPlatzArtikel.fAnzahl, 0.0)) > 0 '
      'OR LEN( ISNULL(tWarenLagerPlatzArtikel.cKommentar_1, '#39#39')) > 0 '
      'OR LEN( ISNULL(tWarenLagerPlatzArtikel.cKommentar_2, '#39#39')) > 0)  ')
    Left = 844
    Top = 186
    ParamData = <
      item
        Name = 'KARTIKEL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object LagerplatzQLagerplatz: TStringField
      FieldName = 'Lagerplatz'
      Size = 50
    end
    object LagerplatzQBestand: TFMTBCDField
      FieldName = 'Bestand'
      ReadOnly = True
      Precision = 38
      Size = 14
    end
    object LagerplatzQNameLager: TStringField
      FieldName = 'NameLager'
      Size = 255
    end
    object LagerplatzQKommentar1: TStringField
      FieldName = 'Kommentar1'
      ReadOnly = True
      Required = True
      Size = 255
    end
    object LagerplatzQKommentar2: TStringField
      FieldName = 'Kommentar2'
      ReadOnly = True
      Required = True
      Size = 255
    end
  end
end
