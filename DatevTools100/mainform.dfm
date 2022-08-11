object mainfrm: Tmainfrm
  Left = 0
  Top = 0
  Caption = 'DatevTools'
  ClientHeight = 729
  ClientWidth = 1924
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
  object Label19: TLabel
    Left = 117
    Top = 24
    Width = 41
    Height = 15
    Caption = 'lblorder'
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 709
    Width = 1924
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
        Width = 124
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 20
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.AutoHint = True
        PanelStyle.Color = clGreen
        PanelStyle.EllipsisType = dxetTruncate
        Width = 250
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    PaintStyle = stpsUseLookAndFeel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object pcBase: TPageControl
    Left = 0
    Top = 0
    Width = 1924
    Height = 709
    ActivePage = VERKAUF
    Align = alClient
    TabOrder = 0
    object VERKAUF: TTabSheet
      Caption = 'DatevE+'
      object Splitter1: TSplitter
        Left = 441
        Top = 107
        Height = 572
        ExplicitLeft = 434
        ExplicitTop = 119
        ExplicitHeight = 566
      end
      object CommonTopPanel: TPanel
        Left = 0
        Top = 0
        Width = 1916
        Height = 107
        Align = alTop
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object Label5: TLabel
          Left = 24
          Top = 9
          Width = 62
          Height = 15
          Caption = 'Datum von:'
        end
        object Label6: TLabel
          Left = 68
          Top = 34
          Width = 18
          Height = 15
          Caption = 'bis:'
        end
        object SpeedButton1: TSpeedButton
          Left = 230
          Top = 6
          Width = 188
          Height = 45
          Caption = 'Belege als CSV exportieren'
          Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000005000000140000
            001F000000210000002100000021000000220000002200000022000000230000
            0023000000230000002300000021000000160000000500000000000000000000
            0000000000000000000100000002000000040000000600000007000000070000
            000700000007000000070000000700000007000000070000001946332CCC6045
            3BFF644A41FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D3DFFAD68
            39FFAB6535FF553A34FF593D35FF392621CE0000001500000000000000000000
            00000000000000000002000000070000000F00000016000000190000001A0000
            001A0000001B0000001B0000001B0000001B0000001B00000032664A40FF8165
            5AFF6A4F46FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B579FFE2B2
            76FFE2B273FF5A3F37FF664940FF523730FF0000001E00000000000000000000
            000000000001000000040000000F78554AC1A57666FFA57565FFA57465FFA574
            64FFA37463FFA47363FFA37362FFA37262FFA27162FFBDA79FFF6A4E42FF8369
            5FFF70564BFFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A66DFFD4A5
            6AFFD4A268FF5E433CFF6F5147FF543931FF0000001D00000000000000000000
            0000000000010000000500000014A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7
            F4FFFBF7F4FFFAF7F4FFFAF6F3FFFAF6F2FFFAF5F2FFE4E0DCFF6E5246FF866C
            63FF765C50FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EFEAFFF6EF
            EAFFF6EFE9FF644940FF715349FF563B33FF0000001B00000000000000000000
            0000000000010000000600000016AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6EC
            E6FFF6ECE5FFF4EBE5FFF4EBE5FFF4EBE4FFF4EBE4FFE1D9D2FF725648FF8A70
            65FF7B6154FFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1EBFFF7F0
            EBFFF7F0ECFF6A4F46FF72554BFF5A3E36FF0000001900000000000000000000
            0000000000010000000500000015AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF6EC
            E6FFF4EDE6FFF4ECE6FFF4ECE6FFF6ECE5FFF4ECE4FFE3DAD4FF755A4CFF8E75
            6AFF7F6458FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF70564BFF75584EFF5C4138FF0000001700000000000000000000
            0000000000010000000500000015AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF7ED
            E9FFF6EDE8FFF6EDE6FFF6EDE6FFF6ECE6FFF6ECE5FFE7DDD7FF7A5E50FF9078
            6EFF82685BFF82675AFF806659FF7F6558FF7E6357FF7D6356FF7A6055FF795F
            53FF775D52FF765B50FF765A50FF5F443BFF0000001500000000000000000000
            0000000000000000000500000014AD7F70FFFEFDFCFFF7F0EAFFF7EFE9FFF7EF
            E9FFF7EFE9FFF7EFE8FFF6EDE8FFF6EDE8FFF6EDE6FFE8E0D9FF7E6253FF947C
            71FF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B433AFF5941
            39FF584038FF573F37FF775C52FF63473DFF0000001300000000000000000000
            0000000000000000000500000013AE8172FFFEFDFCFFF7F0EAFFF7F0EAFFF7F0
            E9FFF6EFE9FFF7EFE9FFF7EFE8FFF7EFE9FFF6EDE8FFEAE1DCFF816656FF9680
            75FF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7CAFFF3EA
            E2FFF3E9E2FF5A4139FF795E54FF664B40FF0000001100000000000000000000
            0000000000000000000400000012AF8475FFFEFDFDFFF8F1EBFFF8F1EBFFF8F0
            EBFFF7F0EBFFF7F0EAFFF7F0EAFFF7F0E9FFF7EFE9FFEBE5DFFF856A59FF9983
            79FF70564DFFF4ECE6FFEBDACFFFEADACFFFE9D9CDFFE9D9CCFF513730FF6549
            3EFFF3EAE3FF5D453CFF7B6156FF6A4F43FF0000000F00000000000000000000
            0000000000000000000400000011B18676FFFEFDFDFFF8F1EDFFF8F2ECFFF8F1
            EBFFF7F1EBFFF7F1EBFFF7F0EBFFF8F0EAFFF7F0EAFFEEE7E2FF896E5CFF9C87
            7DFF755A50FFF5EDE8FFEBDCD2FFEADCD0FFEADACFFFEAD9CEFF49312BFF5D40
            39FFF4EBE4FF60483FFF7D6358FF6E5346FF0000000D00000000000000000000
            0000000000000000000400000010B48878FFFEFDFDFFF9F2EDFFF8F2ECFFF8F2
            ECFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF8F1EAFFF1E9E4FF8D7260FF9F8A
            81FF795E54FFF5EEE9FFECDED4FFEBDCD2FFEADCD1FFEADBD0FF452D27FF472E
            29FFE9D9CDFF644C43FF7F655AFF72574AFF0000000B00000000000000000000
            000000000000000000040000000FB58979FFFEFEFDFFF9F3F0FFF8F2EDFFF8F2
            EDFFF8F2EDFFF8F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF2EBE5FF917663FFA28D
            83FF7C6157FFF5EFEAFFF5EEE9FFF5EEE9FFF5EDE8FFF5EDE7FFF5ECE6FFF4EC
            E6FFF4ECE6FF695046FF998278FF765B4DFF0000000900000000000000000000
            000000000000000000030000000EB78C7DFFFEFEFEFFF9F4F0FFF9F3F0FFF9F3
            EFFFF8F2EFFFF8F2EDFFF8F2EDFFF8F2EDFFF8F1ECFFF5EEEAFFAC9686FF9377
            64FF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E64FF8269
            5FFF7D645BFF6E544AFF7C6052FF5B463BC20000000500000000000000000000
            000000000000000000030000000DDBC7BFFFFEFEFEFFF9F4F1FFF9F4F0FFF9F3
            F1FFF9F3F0FFF8F3EFFFF8F2EFFFF9F2EFFFF8F3EFFFF8F2EFFFF6EFEBFFF5EE
            E9FFF4EDE8FFF4EDE8FFF4EDE7FFF4EDE7FFF2EBE6FFF2EBE6FFF2EAE5FFF7F3
            F1FFD2BCB4FF000000190000000B00000004000000010000000000000000886F
            2CB7BD983CFFBA9639FFB89438FFB79237FFB49034FFB28E33FFAF8D31FFAE8B
            30FFAC8A2FFFAC872DFFA9852CFFA7842BFFA6832AFFBDA361FFF8F2EFFFF9F2
            EFFFF8F2EFFFF8F2EDFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF7F0EBFFFAF6
            F3FFAE8373FF000000120000000400000000000000000000000000000000C09C
            3FFFD5B860FFD0B053FFCEAE51FFCBAC4FFFCAAB4DFFC9A94BFFC7A749FFC5A5
            47FFC3A345FFC2A243FFC1A042FFBF9E40FFBD9D3FFFA6832AFFF9F3EFFFF9F3
            EFFFF9F2EFFFF9F3EDFFF9F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF6EFE9FFF8F4
            F2FFB08374FF000000110000000400000000000000000000000000000000C09D
            40FFD7BB63FFE6D4A6FFFAF5F4FFF9F5F3FFCBAC4FFFF8F2F1FFF7F2EFFFDFCC
            9CFFC5A446FFD6C084FFF5EEEAFFD4BD82FFBE9F40FFA7842AFFF9F3F1FFF9F4
            F0FFF9F3F0FFF9F3F0FFF9F3EFFFF9F3EFFFF8F2EFFFF6F0EAFFF5EDE7FFF6F1
            EEFFB38576FF000000100000000400000000000000000000000000000000C29E
            42FFD8BC65FFFBF7F6FFD1B154FFCFB052FFCDAE50FFCBAB4FFFC9A94CFFF7F2
            EFFFC6A648FFEADEC4FFDCC998FFE9DCC2FFC0A041FFA8852CFFFAF6F1FFF9F4
            F1FFF8F3F0FFF9F4F1FFF8F3EFFFF8F2EEFFF6F0EBFFF4EDE8FFF2E9E5FFF3EC
            E9FFB38978FF0000000F0000000400000000000000000000000000000000C3A0
            42FFDABE67FFFBF8F7FFD2B355FFD0B053FFCEAF52FFE3D1A1FFF9F4F1FFE1CE
            9EFFC7A749FFF6F1EEFFC4A445FFF6EEEAFFC0A143FFA9852CFFF9F6F3FFFAF6
            F2FFF8F2EFFFF6EFEBFFF5EDE9FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1
            DDFFB5897AFF0000000E0000000400000000000000000000000000000000C5A1
            43FFDBBF6AFFFCF8F8FFD4B457FFD1B256FFD0B054FFFAF5F3FFCCAC50FFCAAB
            4DFFC9A94BFFF7F1EFFFC5A547FFF6F0ECFFC2A244FFAA872DFFF9F5F2FFF9F5
            F1FFF5EEE9FFEEE2DCFFE6D8D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8
            C2FFB78C7DFF0000000D0000000300000000000000000000000000000000C5A1
            45FFDDC16CFFE9D9AAFFFCF8F8FFFAF8F7FFD1B255FFE5D4A4FFFAF5F4FFF8F3
            F0FFCAAB4DFFF8F2F0FFC6A749FFF6F0EDFFC3A345FFAC892FFFFBF7F4FFF8F2
            EFFFEFE6DFFFB38B7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5
            ACFFB78C7DFF0000000A0000000300000000000000000000000000000000C7A4
            45FFDDC36EFFDCC16BFFDBBE69FFD9BD67FFD6BA64FFD5B860FFD3B65EFFD1B4
            5AFFCFB157FFCDAF55FFCBAD51FFC9AA4EFFC7A94DFFAC8A2FFFFAF8F4FFF7F2
            EFFFECDFDAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAF
            A6FF4C352D86000000060000000200000000000000000000000000000000947A
            35BDC8A446FFC5A244FFC4A042FFC29F41FFC09D40FFBF9B3EFFBD993CFFBB98
            3AFFB99539FFB79237FFB49135FFB28E33FFAF8D32FFC2A864FFFBF8F6FFF6F1
            EDFFEBDFDBFFB08574FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FF4F38
            3086000000080000000300000001000000000000000000000000000000000000
            0000000000000000000100000005E1CEC7FFFFFFFFFFFEFAF9FFFDFAFAFFFDFB
            F9FFFDFAF9FFFDFAF8FFFDFAF9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0
            ECFFECE1DBFFB68C7DFFFFFEFEFFFDF9F6FFFBF6F3FFD1B5ACFF533B33860000
            0008000000030000000100000000000000000000000000000000000000000000
            0000000000000000000100000004C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFB
            F9FFFDFBF9FFFEFAF9FFFDFAF9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5ED
            EBFFEBE1DDFFBC9584FFFFFEFEFFFBF6F3FFD4BAAFFF563F3685000000070000
            0003000000010000000000000000000000000000000000000000000000000000
            0000000000000000000100000004C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFD
            FBFFFEFBFAFFFEFBFAFFFDFBF9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EB
            E7FFEDE1DCFFC19B8BFFFFFEFEFFD6BCB2FF59423A8400000006000000020000
            0001000000000000000000000000000000000000000000000000000000000000
            0000000000000000000100000003C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2EC
            E9FFEEE3E0FFE4D2CBFFDBC5BDFF5A453E830000000500000002000000010000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000293776CBEC6A291FFC6A192FFC6A191FFC59F
            91FFC69F92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E
            8EFFC39D8EFFC39D8EFF5D484182000000040000000200000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000001000000010000000200000002000000030000
            0003000000030000000300000003000000030000000300000004000000040000
            0004000000040000000400000003000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = False
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 230
          Top = 57
          Width = 188
          Height = 45
          Caption = 'Belege in Excel exportieren'
          Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000005000000140000
            001F000000210000002100000021000000220000002200000022000000230000
            0023000000230000002300000021000000160000000500000000000000000000
            0000000000000000000100000002000000040000000600000007000000070000
            000700000007000000070000000700000007000000070000001946332CCC6045
            3BFF644A41FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D3DFFAD68
            39FFAB6535FF553A34FF593D35FF392621CE0000001500000000000000000000
            00000000000000000002000000070000000F00000016000000190000001A0000
            001A0000001B0000001B0000001B0000001B0000001B00000032664A40FF8165
            5AFF6A4F46FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B579FFE2B2
            76FFE2B273FF5A3F37FF664940FF523730FF0000001E00000000000000000000
            000000000001000000040000000F78554AC1A57666FFA57565FFA57465FFA574
            64FFA37463FFA47363FFA37362FFA37262FFA27162FFBDA79FFF6A4E42FF8369
            5FFF70564BFFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A66DFFD4A5
            6AFFD4A268FF5E433CFF6F5147FF543931FF0000001D00000000000000000000
            0000000000010000000500000014A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7
            F4FFFBF7F4FFFAF7F4FFFAF6F3FFFAF6F2FFFAF5F2FFE4E0DCFF6E5246FF866C
            63FF765C50FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EFEAFFF6EF
            EAFFF6EFE9FF644940FF715349FF563B33FF0000001B00000000000000000000
            0000000000010000000600000016AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6EC
            E6FFF6ECE5FFF4EBE5FFF4EBE5FFF4EBE4FFF4EBE4FFE1D9D2FF725648FF8A70
            65FF7B6154FFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1EBFFF7F0
            EBFFF7F0ECFF6A4F46FF72554BFF5A3E36FF0000001900000000000000000000
            0000000000010000000500000015AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF6EC
            E6FFF4EDE6FFF4ECE6FFF4ECE6FFF6ECE5FFF4ECE4FFE3DAD4FF755A4CFF8E75
            6AFF7F6458FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF70564BFF75584EFF5C4138FF0000001700000000000000000000
            0000000000010000000500000015AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF7ED
            E9FFF6EDE8FFF6EDE6FFF6EDE6FFF6ECE6FFF6ECE5FFE7DDD7FF7A5E50FF9078
            6EFF82685BFF82675AFF806659FF7F6558FF7E6357FF7D6356FF7A6055FF795F
            53FF775D52FF765B50FF765A50FF5F443BFF0000001500000000000000000000
            0000000000000000000500000014AD7F70FFFEFDFCFFF7F0EAFFF7EFE9FFF7EF
            E9FFF7EFE9FFF7EFE8FFF6EDE8FFF6EDE8FFF6EDE6FFE8E0D9FF7E6253FF947C
            71FF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B433AFF5941
            39FF584038FF573F37FF775C52FF63473DFF0000001300000000000000000000
            0000000000000000000500000013AE8172FFFEFDFCFFF7F0EAFFF7F0EAFFF7F0
            E9FFF6EFE9FFF7EFE9FFF7EFE8FFF7EFE9FFF6EDE8FFEAE1DCFF816656FF9680
            75FF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7CAFFF3EA
            E2FFF3E9E2FF5A4139FF795E54FF664B40FF0000001100000000000000000000
            0000000000000000000400000012AF8475FFFEFDFDFFF8F1EBFFF8F1EBFFF8F0
            EBFFF7F0EBFFF7F0EAFFF7F0EAFFF7F0E9FFF7EFE9FFEBE5DFFF856A59FF9983
            79FF70564DFFF4ECE6FFEBDACFFFEADACFFFE9D9CDFFE9D9CCFF513730FF6549
            3EFFF3EAE3FF5D453CFF7B6156FF6A4F43FF0000000F00000000000000000000
            0000000000000000000400000011B18676FFFEFDFDFFF8F1EDFFF8F2ECFFF8F1
            EBFFF7F1EBFFF7F1EBFFF7F0EBFFF8F0EAFFF7F0EAFFEEE7E2FF896E5CFF9C87
            7DFF755A50FFF5EDE8FFEBDCD2FFEADCD0FFEADACFFFEAD9CEFF49312BFF5D40
            39FFF4EBE4FF60483FFF7D6358FF6E5346FF0000000D00000000000000000000
            0000000000000000000400000010B48878FFFEFDFDFFF9F2EDFFF8F2ECFFF8F2
            ECFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF8F1EAFFF1E9E4FF8D7260FF9F8A
            81FF795E54FFF5EEE9FFECDED4FFEBDCD2FFEADCD1FFEADBD0FF452D27FF472E
            29FFE9D9CDFF644C43FF7F655AFF72574AFF0000000B00000000000000000000
            000000000000000000040000000FB58979FFFEFEFDFFF9F3F0FFF8F2EDFFF8F2
            EDFFF8F2EDFFF8F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF2EBE5FF917663FFA28D
            83FF7C6157FFF5EFEAFFF5EEE9FFF5EEE9FFF5EDE8FFF5EDE7FFF5ECE6FFF4EC
            E6FFF4ECE6FF695046FF998278FF765B4DFF0000000900000000000000000000
            000000000000000000030000000EB78C7DFFFEFEFEFFF9F4F0FFF9F3F0FFF9F3
            EFFFF8F2EFFFF8F2EDFFF8F2EDFFF8F2EDFFF8F1ECFFF5EEEAFFAC9686FF9377
            64FF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E64FF8269
            5FFF7D645BFF6E544AFF7C6052FF5B463BC20000000500000000000000000000
            000000000000000000030000000DDBC7BFFFFEFEFEFFF9F4F1FFF9F4F0FFF9F3
            F1FFF9F3F0FFF8F3EFFFF8F2EFFFF9F2EFFFF8F3EFFFF8F2EFFFF6EFEBFFF5EE
            E9FFF4EDE8FFF4EDE8FFF4EDE7FFF4EDE7FFF2EBE6FFF2EBE6FFF2EAE5FFF7F3
            F1FFD2BCB4FF000000190000000B00000004000000010000000000000000035C
            22B7047F2FFF047E2FFF047D2EFF037C2EFF037B2DFF027A2CFF02792CFF0279
            2BFF01782BFF01772BFF01772AFF00762AFF469961FFF9F3EFFFF8F2EFFFF9F2
            EFFFF8F2EFFFF8F2EDFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF7F0EBFFFAF6
            F3FFAE8373FF0000001200000004000000000000000000000000000000000581
            30FF0A9A46FF079139FF069038FF068F38FF058D37FF058C36FF038B34FF038A
            34FF028933FF028632FF028532FF018531FF01762AFFF9F3F0FFF9F3EFFFF9F3
            EFFFF9F2EFFFF9F3EDFFF9F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF6EFE9FFF8F4
            F2FFB08374FF0000001100000004000000000000000000000000000000000581
            31FF0C9C48FFFAF6F6FF079139FFF9F5F3FF068E38FFF8F2F1FFF7F2EFFF7EBE
            91FFF7EFEDFFF6EEEBFF7CBB8EFF028631FF01762AFFF9F4F0FFF9F3F1FFF9F4
            F0FFF9F3F0FFF9F3F0FFF9F3EFFFF9F3EFFFF8F2EFFFF6F0EAFFF5EDE7FFF6F1
            EEFFB38576FF0000001000000004000000000000000000000000000000000682
            32FF0E9E49FFFBF7F6FF08923AFFF9F5F4FF079038FFF8F4F2FF058D37FF038C
            36FF038B34FF7DBD90FFF6EEEBFF028632FF01772AFFFAF6F2FFFAF6F1FFF9F4
            F1FFF8F3F0FFF9F4F1FFF8F3EFFFF8F2EEFFF6F0EBFFF4EDE8FFF2E9E5FFF3EC
            E9FFB38978FF0000000F00000004000000000000000000000000000000000683
            32FF0E9F4BFF82C799FFFBF7F6FF81C498FF079139FFF9F5F2FF068E37FF058D
            36FF7FBF93FFF6F1EEFF038A33FF028833FF01782BFFFAF6F2FFF9F6F3FFFAF6
            F2FFF8F2EFFFF6EFEBFFF5EDE9FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1
            DDFFB5897AFF0000000E00000004000000000000000000000000000000000785
            33FF0FA24CFFFCF8F8FF08943BFFFBF7F6FF08923AFFFAF5F3FF068F39FF068E
            37FFF8F3F0FF058C34FF038B34FF038A34FF01792BFFFAF7F4FFF9F5F2FFF9F5
            F1FFF5EEE9FFEEE2DCFFE6D8D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8
            C2FFB78C7DFF0000000D00000003000000000000000000000000000000000785
            33FF11A34EFFFBFAF9FF09953CFFFAF8F7FF08933AFFFAF7F5FF079139FF078F
            39FF7FC194FFF8F2F0FFF7F2EFFF038B34FF02792CFFFAF7F4FFFBF7F4FFF8F2
            EFFFEFE6DFFFB38B7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5
            ACFFB78C7DFF0000000A00000003000000000000000000000000000000000786
            34FF11A551FF0FA350FF0FA24CFF0E9F4BFF0E9E48FF0C9C46FF0A9A44FF0A99
            43FF089741FF089540FF07933EFF06913DFF027A2CFFFBF8F6FFFAF8F4FFF7F2
            EFFFECDFDAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAF
            A6FF4C352D860000000600000002000000000000000000000000000000000564
            27BD088634FF078534FF078433FF068332FF068332FF068231FF058031FF0480
            30FF057E2FFF037E2EFF047C2EFF037C2DFF429C61FFFBF9F6FFFBF8F6FFF6F1
            EDFFEBDFDBFFB08574FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FF4F38
            3086000000080000000300000001000000000000000000000000000000000000
            0000000000000000000100000005E1CEC7FFFFFFFFFFFEFAF9FFFDFAFAFFFDFB
            F9FFFDFAF9FFFDFAF8FFFDFAF9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0
            ECFFECE1DBFFB68C7DFFFFFEFEFFFDF9F6FFFBF6F3FFD1B5ACFF533B33860000
            0008000000030000000100000000000000000000000000000000000000000000
            0000000000000000000100000004C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFB
            F9FFFDFBF9FFFEFAF9FFFDFAF9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5ED
            EBFFEBE1DDFFBC9584FFFFFEFEFFFBF6F3FFD4BAAFFF563F3685000000070000
            0003000000010000000000000000000000000000000000000000000000000000
            0000000000000000000100000004C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFD
            FBFFFEFBFAFFFEFBFAFFFDFBF9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EB
            E7FFEDE1DCFFC19B8BFFFFFEFEFFD6BCB2FF59423A8400000006000000020000
            0001000000000000000000000000000000000000000000000000000000000000
            0000000000000000000100000003C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2EC
            E9FFEEE3E0FFE4D2CBFFDBC5BDFF5A453E830000000500000002000000010000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000293776CBEC6A291FFC6A192FFC6A191FFC59F
            91FFC69F92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E
            8EFFC39D8EFFC39D8EFF5D484182000000040000000200000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000001000000010000000200000002000000030000
            0003000000030000000300000003000000030000000300000004000000040000
            0004000000040000000400000003000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OnClick = SpeedButton2Click
        end
        object btnBestelldetails: TSpeedButton
          Left = 848
          Top = 6
          Width = 131
          Height = 45
          Caption = 'Bestelldetails'
          ParentShowHint = False
          ShowHint = False
        end
        object btnTransaktionsansicht: TSpeedButton
          Left = 848
          Top = 57
          Width = 131
          Height = 45
          Caption = 'Transaktionsansicht'
        end
        object dtpBegin: TDateTimePicker
          Left = 92
          Top = 9
          Width = 105
          Height = 23
          Date = 44197.000000000000000000
          Time = 0.933144710645137800
          TabOrder = 0
        end
        object dtpEnd: TDateTimePicker
          Left = 92
          Top = 37
          Width = 105
          Height = 23
          Date = 44636.000000000000000000
          Time = 0.933144710645137800
          TabOrder = 3
        end
        object btnOk: TButton
          Left = 92
          Top = 77
          Width = 105
          Height = 25
          Caption = 'Belege auslesen'
          TabOrder = 4
          OnClick = btnOkClick
        end
        object ExportPfad: TcxButtonEdit
          Left = 451
          Top = 31
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = ExportPfadPropertiesButtonClick
          TabOrder = 2
          Width = 361
        end
        object cxLabel5: TcxLabel
          Left = 451
          Top = 9
          Caption = 'Speicherort eingeben'
        end
      end
      object InvoiceDetailPanelCommon: TPanel
        Left = 444
        Top = 107
        Width = 1472
        Height = 572
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object InvoiceDetailPanel: TPanel
          Left = 0
          Top = 0
          Width = 1472
          Height = 572
          Align = alClient
          TabOrder = 0
          object SplitInvoicePanel: TPanel
            Left = 809
            Top = 1
            Width = 456
            Height = 483
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            DesignSize = (
              456
              483)
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 456
              Height = 250
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              DesignSize = (
                456
                250)
              object SplitInvoiceGrid: TcxGrid
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 450
                Height = 244
                Align = alClient
                TabOrder = 0
                object SplitInvoiceView: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  ScrollbarAnnotations.CustomAnnotations = <>
                  DataController.DataSource = DataSourceSplitInvoice
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skSum
                      OnGetText = SplitInvoiceViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
                      FieldName = 'BruttoBetrag'
                      Column = SplitInvoiceViewBruttoBetrag
                      DisplayText = 'Summe'
                      VisibleForCustomization = False
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  OptionsView.GroupFooterMultiSummaries = True
                  Styles.Footer = cxStyle1
                  object SplitInvoiceViewRechnungsnummer: TcxGridDBColumn
                    DataBinding.FieldName = 'Rechnungsnummer'
                    HeaderAlignmentHorz = taCenter
                    Width = 131
                  end
                  object SplitInvoiceViewDatum: TcxGridDBColumn
                    DataBinding.FieldName = 'Datum'
                    HeaderAlignmentHorz = taCenter
                    Width = 82
                  end
                  object SplitInvoiceViewBestellnummer: TcxGridDBColumn
                    DataBinding.FieldName = 'Bestellnummer'
                    HeaderAlignmentHorz = taCenter
                    Width = 146
                  end
                  object SplitInvoiceViewBruttoBetrag: TcxGridDBColumn
                    DataBinding.FieldName = 'BruttoBetrag'
                    HeaderAlignmentHorz = taCenter
                    Width = 86
                  end
                end
                object SplitInvoiceGridLevel: TcxGridLevel
                  GridView = SplitInvoiceView
                end
              end
              object cxLabel3: TcxLabel
                Left = 6
                Top = 225
                Anchors = [akLeft, akBottom]
                Caption = 'Summe'
                Transparent = True
              end
            end
            object GridAllInvoicekorrection: TcxGrid
              AlignWithMargins = True
              Left = 3
              Top = 253
              Width = 450
              Height = 227
              Align = alClient
              TabOrder = 1
              object ViewAllInvoicekorrection: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                DataController.DataSource = DataSourceAllInvoicekorrection
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skSum
                    OnGetText = ViewAllInvoicekorrectionTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
                    FieldName = 'Brutto'
                    Column = ViewAllInvoicekorrectionBrutto
                    DisplayText = 'Summe'
                    VisibleForCustomization = False
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.GroupFooterMultiSummaries = True
                Styles.Footer = cxStyle1
                object ViewAllInvoicekorrectionRechnungskorrektur: TcxGridDBColumn
                  DataBinding.FieldName = 'Rechnungskorrektur'
                  HeaderAlignmentHorz = taCenter
                  Width = 107
                end
                object ViewAllInvoicekorrectionRechnungsnummer: TcxGridDBColumn
                  DataBinding.FieldName = 'Rechnungsnummer'
                  HeaderAlignmentHorz = taCenter
                  Width = 104
                end
                object ViewAllInvoicekorrectionDatum: TcxGridDBColumn
                  DataBinding.FieldName = 'Datum'
                  HeaderAlignmentHorz = taCenter
                  Width = 68
                end
                object ViewAllInvoicekorrectionBestellnummer: TcxGridDBColumn
                  DataBinding.FieldName = 'Bestellnummer'
                  HeaderAlignmentHorz = taCenter
                  Width = 100
                end
                object ViewAllInvoicekorrectionBrutto: TcxGridDBColumn
                  DataBinding.FieldName = 'Brutto'
                  HeaderAlignmentHorz = taCenter
                  Width = 66
                end
              end
              object GridLevelAllInvoicekorrection: TcxGridLevel
                GridView = ViewAllInvoicekorrection
              end
            end
            object cxlbl3: TcxLabel
              Left = 6
              Top = 459
              Anchors = [akLeft, akBottom]
              Caption = 'Summe'
              Transparent = True
            end
          end
          object СorrectionPanel: TPanel
            Left = 401
            Top = 1
            Width = 408
            Height = 483
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object СorrectionPanelTop: TPanel
              Left = 0
              Top = 0
              Width = 408
              Height = 250
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              DesignSize = (
                408
                250)
              object GridJLTRechnungbetrag: TcxGrid
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 402
                Height = 244
                Align = alClient
                TabOrder = 0
                object ViewJLTRechnungbetrag: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  ScrollbarAnnotations.CustomAnnotations = <>
                  DataController.DataSource = DataSourceJLTRechnungbetrag
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skSum
                      OnGetText = ViewJLTRechnungbetragTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
                      FieldName = 'TotalGrossPrice'
                      Column = ViewJLTRechnungbetragTotalGrossPrice
                      DisplayText = 'Summe'
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  Styles.Footer = cxStyle1
                  object ViewJLTRechnungbetragInvoiceNumber: TcxGridDBColumn
                    Caption = 'Artikel nummmer'
                    DataBinding.FieldName = 'InvoiceNumber'
                    HeaderAlignmentHorz = taCenter
                    Width = 118
                  end
                  object ViewJLTRechnungbetragName: TcxGridDBColumn
                    DataBinding.FieldName = 'Name'
                    HeaderAlignmentHorz = taCenter
                    Width = 161
                  end
                  object ViewJLTRechnungbetragTotalGrossPrice: TcxGridDBColumn
                    Caption = 'JLT Rechnungbetrag'
                    DataBinding.FieldName = 'TotalGrossPrice'
                    HeaderAlignmentHorz = taCenter
                    Width = 119
                  end
                end
                object cxGridLevel1: TcxGridLevel
                  GridView = ViewJLTRechnungbetrag
                end
              end
              object cxlbl1: TcxLabel
                Left = 6
                Top = 225
                Anchors = [akLeft, akBottom]
                Caption = 'Summe'
                Transparent = True
              end
            end
            object СorrectionPanelBottom: TPanel
              Left = 0
              Top = 250
              Width = 408
              Height = 233
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                408
                233)
              object GridJTLRechnungsKorrektur: TcxGrid
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 402
                Height = 227
                Align = alClient
                TabOrder = 0
                object ViewJTLRechnungsKorrektur: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  ScrollbarAnnotations.CustomAnnotations = <>
                  DataController.DataSource = DataSourceJTLRechnungsKorrektur
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skSum
                      OnGetText = ViewJTLRechnungsKorrekturTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
                      FieldName = 'TotalGrossPrice'
                      Column = ViewJTLRechnungsKorrekturTotalGrossPrice
                      DisplayText = 'Summe'
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  Styles.FindPanel = cxStyle2
                  Styles.Footer = cxStyle1
                  object ViewJTLRechnungsKorrekturInvoiceNumber: TcxGridDBColumn
                    DataBinding.FieldName = 'InvoiceNumber'
                    HeaderAlignmentHorz = taCenter
                    Width = 117
                  end
                  object ViewJTLRechnungsKorrekturName: TcxGridDBColumn
                    DataBinding.FieldName = 'Name'
                    HeaderAlignmentHorz = taCenter
                    Width = 161
                  end
                  object ViewJTLRechnungsKorrekturTotalGrossPrice: TcxGridDBColumn
                    Caption = 'JTL Rechnungs Korrektur'
                    DataBinding.FieldName = 'TotalGrossPrice'
                    HeaderAlignmentHorz = taCenter
                    Width = 119
                  end
                end
                object cxGridLevel3: TcxGridLevel
                  GridView = ViewJTLRechnungsKorrektur
                end
              end
              object cxLabel2: TcxLabel
                Left = 6
                Top = 209
                Anchors = [akLeft, akBottom]
                Caption = 'Summe'
                Transparent = True
              end
            end
          end
          object OrderPanel: TPanel
            Left = 1
            Top = 1
            Width = 400
            Height = 483
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object OrderPanelTop: TPanel
              Left = 0
              Top = 0
              Width = 400
              Height = 250
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              DesignSize = (
                400
                250)
              object GridOrderAmazonReport: TcxGrid
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 394
                Height = 244
                Align = alClient
                TabOrder = 0
                object GridOrderAmazonReportDBTableView1: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  ScrollbarAnnotations.CustomAnnotations = <>
                  DataController.DataSource = DataSourceOrderAmazonReport
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skSum
                      FieldName = 'Amount'
                      Column = GridOrderAmazonReportDBTableView1Amount
                      DisplayText = 'Summe'
                      VisibleForCustomization = False
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  OptionsView.GroupFooterMultiSummaries = True
                  Styles.UseOddEvenStyles = bFalse
                  Styles.Footer = cxStyle1
                  object GridOrderAmazonReportDBTableView1OrderID: TcxGridDBColumn
                    Caption = 'Order Amazon Report'
                    DataBinding.FieldName = 'OrderID'
                    HeaderAlignmentHorz = taCenter
                    Width = 130
                  end
                  object GridOrderAmazonReportDBTableView1Bezeichnung: TcxGridDBColumn
                    DataBinding.FieldName = 'Bezeichnung'
                    HeaderAlignmentHorz = taCenter
                    Width = 190
                  end
                  object GridOrderAmazonReportDBTableView1Amount: TcxGridDBColumn
                    Caption = 'Betrag'
                    DataBinding.FieldName = 'Amount'
                    HeaderAlignmentHorz = taCenter
                    Width = 70
                  end
                end
                object GridOrderAmazonReportLevel1: TcxGridLevel
                  GridView = GridOrderAmazonReportDBTableView1
                end
              end
              object cxLabel1: TcxLabel
                Left = 6
                Top = 225
                Anchors = [akLeft, akBottom]
                Caption = 'Summe'
                Transparent = True
              end
            end
            object OrderPanelBottom: TPanel
              Left = 0
              Top = 250
              Width = 400
              Height = 233
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                400
                233)
              object GridRefundAmazonReport: TcxGrid
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 394
                Height = 227
                Align = alClient
                TabOrder = 0
                object ViewRefundAmazonReport: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  ScrollbarAnnotations.CustomAnnotations = <>
                  DataController.DataSource = vRefundAmazonReportDS
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Kind = skSum
                      FieldName = 'Amount'
                      Column = ViewRefundAmazonReportAmount
                      DisplayText = 'Summe'
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  Styles.Footer = cxStyle1
                  object ViewRefundAmazonReportOrderID: TcxGridDBColumn
                    Caption = 'Refund Amazon Report'
                    DataBinding.FieldName = 'OrderID'
                    HeaderAlignmentHorz = taCenter
                    Width = 134
                  end
                  object ViewRefundAmazonReportBezeichnung: TcxGridDBColumn
                    DataBinding.FieldName = 'Bezeichnung'
                    HeaderAlignmentHorz = taCenter
                    Width = 190
                  end
                  object ViewRefundAmazonReportAmount: TcxGridDBColumn
                    DataBinding.FieldName = 'Amount'
                    HeaderAlignmentHorz = taCenter
                    Width = 70
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  GridView = ViewRefundAmazonReport
                end
              end
              object cxlbl2: TcxLabel
                Left = 6
                Top = 209
                Anchors = [akLeft, akBottom]
                Caption = 'Summe'
                Transparent = True
              end
            end
          end
          object InvoiceDetailPanelBottom: TPanel
            Left = 1
            Top = 484
            Width = 1470
            Height = 87
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 4
            object Label9: TLabel
              Left = 581
              Top = 13
              Width = 96
              Height = 15
              Caption = 'Rechnungsbetrag:'
            end
            object Label10: TLabel
              Left = 567
              Top = 38
              Width = 110
              Height = 15
              Caption = 'Rechnungskorrektur:'
            end
            object Label11: TLabel
              Left = 633
              Top = 63
              Width = 44
              Height = 15
              Caption = 'Summe:'
            end
            object Label12: TLabel
              Left = 1037
              Top = 13
              Width = 96
              Height = 15
              Caption = 'Rechnungsbetrag:'
            end
            object Label13: TLabel
              Left = 1030
              Top = 42
              Width = 110
              Height = 15
              Caption = 'Rechnungskorrektur:'
            end
            object Label14: TLabel
              Left = 1089
              Top = 63
              Width = 44
              Height = 15
              Caption = 'Summe:'
            end
            object edtRechnungsbetrag: TcxCalcEdit
              Left = 690
              Top = 10
              EditValue = 0.000000000000000000
              Properties.ReadOnly = True
              Properties.OnEditValueChanged = edtRechnungsbetragPropertiesEditValueChanged
              TabOrder = 1
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              Width = 115
            end
            object edtRechnungskorrektur: TcxCalcEdit
              Left = 690
              Top = 35
              EditValue = 0.000000000000000000
              Properties.ReadOnly = True
              Properties.OnEditValueChanged = edtRechnungskorrekturPropertiesEditValueChanged
              TabOrder = 3
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              Width = 115
            end
            object edtSumme: TcxCalcEdit
              Left = 690
              Top = 60
              EditValue = 0.000000000000000000
              Properties.ReadOnly = True
              TabOrder = 5
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              Width = 115
            end
            object edtRechnungsbetrag2: TcxCalcEdit
              Left = 1146
              Top = 10
              EditValue = 0.000000000000000000
              Properties.ReadOnly = True
              Properties.OnEditValueChanged = edtRechnungsbetrag2PropertiesEditValueChanged
              TabOrder = 2
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              Width = 115
            end
            object edtRechnungskorrektur2: TcxCalcEdit
              Left = 1146
              Top = 35
              EditValue = 0.000000000000000000
              Properties.ReadOnly = True
              Properties.OnEditValueChanged = edtRechnungsbetrag2PropertiesEditValueChanged
              TabOrder = 4
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              Width = 115
            end
            object edtSumme2: TcxCalcEdit
              Left = 1146
              Top = 60
              EditValue = 0.000000000000000000
              Properties.ReadOnly = True
              TabOrder = 6
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              Width = 115
            end
            object comment: TcxMemo
              AlignWithMargins = True
              Left = 3
              Top = 3
              Align = alLeft
              Anchors = []
              ParentColor = True
              Properties.ReadOnly = True
              Style.BorderColor = clBtnFace
              Style.Shadow = False
              Style.TransparentBorder = False
              StyleDisabled.BorderColor = clBtnFace
              StyleDisabled.BorderStyle = ebsFlat
              StyleDisabled.TextColor = clBtnFace
              StyleFocused.BorderColor = clBtnFace
              StyleHot.BorderColor = clBtnFace
              TabOrder = 0
              Height = 81
              Width = 542
            end
          end
          object InvoiceDetailPanelRight: TPanel
            Left = 1265
            Top = 1
            Width = 206
            Height = 483
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            DesignSize = (
              206
              483)
            object edtInvCorrText: TcxMemo
              AlignWithMargins = True
              Left = 0
              Top = 253
              Anchors = [akLeft, akTop, akRight, akBottom]
              ParentColor = True
              Properties.ReadOnly = True
              Style.BorderColor = clBtnFace
              Style.Shadow = False
              Style.TransparentBorder = False
              StyleDisabled.BorderColor = clBtnFace
              StyleDisabled.BorderStyle = ebsFlat
              StyleDisabled.TextColor = clBtnFace
              StyleFocused.BorderColor = clBtnFace
              StyleHot.BorderColor = clBtnFace
              TabOrder = 1
              Height = 227
              Width = 209
            end
            object edtAmazonReportRechnungCheck: TcxMemo
              AlignWithMargins = True
              Left = 0
              Top = 223
              Anchors = [akLeft, akTop, akRight]
              ParentColor = True
              Properties.ReadOnly = True
              Style.BorderColor = clBtnFace
              Style.Shadow = False
              Style.TransparentBorder = False
              StyleDisabled.BorderColor = clBtnFace
              StyleDisabled.BorderStyle = ebsFlat
              StyleDisabled.TextColor = clBtnFace
              StyleFocused.BorderColor = clBtnFace
              StyleHot.BorderColor = clBtnFace
              TabOrder = 0
              Height = 24
              Width = 212
            end
          end
        end
      end
      object InvoicePanel: TPanel
        Left = 0
        Top = 107
        Width = 441
        Height = 572
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object GridInvoice: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 435
          Height = 479
          Align = alClient
          PopupMenu = PopupMenuInvoice
          TabOrder = 0
          object GridInvoiceView: TcxGridDBTableView
            OnKeyUp = GridInvoiceViewKeyUp
            Navigator.Buttons.CustomButtons = <>
            FindPanel.DisplayMode = fpdmAlways
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellClick = GridInvoiceViewCellClick
            DataController.DataSource = InvoiceDS
            DataController.DetailKeyFieldNames = 'None selected'
            DataController.KeyFieldNames = 'Belegnummer'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                OnGetText = GridInvoiceViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
                FieldName = 'sign_type'
                Column = GridInvoiceViewsign_type
                DisplayText = 'Anzahl'
                VisibleForCustomization = False
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.ColumnFilteredItemsList = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            Styles.FindPanel = cxStyle2
            Styles.Footer = cxStyle1
            Styles.Header = cxStyle3
            object GridInvoiceViewDatum: TcxGridDBColumn
              DataBinding.FieldName = 'Datum'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
            end
            object GridInvoiceViewBelegnummer: TcxGridDBColumn
              DataBinding.FieldName = 'Belegnummer'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 117
            end
            object GridInvoiceViewBestellnummer: TcxGridDBColumn
              DataBinding.FieldName = 'Bestellnummer'
              HeaderAlignmentHorz = taCenter
              Styles.Header = cxStyle1
              Width = 121
            end
            object GridInvoiceViewBelegname: TcxGridDBColumn
              Caption = 'Type'
              DataBinding.FieldName = 'Belegname'
              HeaderAlignmentHorz = taCenter
              Width = 57
            end
            object GridInvoiceViewsign_type: TcxGridDBColumn
              Caption = '*'
              DataBinding.FieldName = 'sign_type'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = cxImageList1
              Properties.Items = <
                item
                  Description = 'OK'
                  ImageIndex = 0
                  Tag = 1
                  Value = 1
                end
                item
                  Description = 'ERR'
                  ImageIndex = 1
                  Tag = 2
                  Value = 2
                end>
              Properties.ShowDescriptions = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Header = cxStyle1
              Width = 47
            end
            object GridInvoiceViewMarketplace: TcxGridDBColumn
              DataBinding.FieldName = 'Marketplace'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 100
            end
            object GridInvoiceViewReNr: TcxGridDBColumn
              DataBinding.FieldName = 'ReNr'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 150
            end
            object GridInvoiceViewSignValid: TcxGridDBColumn
              DataBinding.FieldName = 'sign_type'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object sign_tech: TcxGridDBColumn
              DataBinding.FieldName = 'sign_tech'
              Visible = False
              FooterAlignmentHorz = taCenter
            end
          end
          object GridInvoiceLevel1: TcxGridLevel
            GridView = GridInvoiceView
          end
        end
        object InvoicePanelButtom: TPanel
          Left = 0
          Top = 485
          Width = 441
          Height = 87
          Align = alBottom
          TabOrder = 1
          object lblorder: TLabel
            Left = 109
            Top = 16
            Width = 6
            Height = 15
            Caption = '0'
          end
          object lblrefund: TLabel
            Left = 109
            Top = 39
            Width = 6
            Height = 15
            Caption = '0'
          end
          object Label8: TLabel
            Left = 0
            Top = 39
            Width = 103
            Height = 15
            Caption = 'Fehlerhafte Belege: '
          end
          object Label7: TLabel
            Left = 0
            Top = 14
            Width = 80
            Height = 15
            Caption = 'Anzahl Belege: '
          end
          object Label17: TLabel
            Left = 240
            Top = 14
            Width = 75
            Height = 15
            Caption = 'Anzahl Order: '
          end
          object Label18: TLabel
            Left = 240
            Top = 36
            Width = 83
            Height = 15
            Caption = 'Anzahl Refund: '
          end
          object lblCountRefund: TLabel
            Left = 329
            Top = 36
            Width = 6
            Height = 15
            Caption = '0'
          end
          object lblCountOrder: TLabel
            Left = 329
            Top = 14
            Width = 6
            Height = 15
            Caption = '0'
          end
        end
      end
    end
    object AMAZON: TTabSheet
      Caption = 'Amazon'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 113
        Width = 1916
        Height = 328
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          1916
          328)
        object GridNotInvoice: TcxGrid
          AlignWithMargins = True
          Left = 1047
          Top = 3
          Width = 866
          Height = 322
          Align = alClient
          TabOrder = 1
          object ViewNotInvoice: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DSNotInvoice
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            Styles.Footer = cxStyle1
            object ViewNotInvoiceInternalId: TcxGridDBColumn
              DataBinding.FieldName = 'InternalId'
              HeaderAlignmentHorz = taCenter
              Width = 185
            end
          end
          object GridLeveNotInvoice: TcxGridLevel
            GridView = ViewNotInvoice
          end
        end
        object cxLabel4: TcxLabel
          Left = 6
          Top = 303
          Anchors = [akLeft, akBottom]
          Caption = 'Summe'
          Transparent = True
        end
        object cxGrid2: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1038
          Height = 322
          Align = alLeft
          TabOrder = 0
          object ViewvNoInvoice: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCellClick = ViewvNoInvoiceCellClick
            DataController.DataSource = vNoInvoiceDS
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'Amount'
                DisplayText = 'Summe'
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
            Styles.Footer = cxStyle1
            object ViewvNoInvoiceDatum: TcxGridDBColumn
              DataBinding.FieldName = 'Datum'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object ViewvNoInvoiceOrderID: TcxGridDBColumn
              DataBinding.FieldName = 'OrderID'
              HeaderAlignmentHorz = taCenter
            end
            object ViewvNoInvoiceBezeichnung: TcxGridDBColumn
              DataBinding.FieldName = 'Bezeichnung'
              HeaderAlignmentHorz = taCenter
              Width = 200
            end
            object ViewvNoInvoiceSKU: TcxGridDBColumn
              DataBinding.FieldName = 'SKU'
              HeaderAlignmentHorz = taCenter
              Width = 150
            end
            object ViewvNoInvoiceAmount: TcxGridDBColumn
              DataBinding.FieldName = 'Amount'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object ViewvNoInvoiceRechnungsnummer: TcxGridDBColumn
              DataBinding.FieldName = 'Rechnungsnummer'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = ViewvNoInvoice
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1916
        Height = 113
        Align = alTop
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object Label15: TLabel
          Left = 24
          Top = 9
          Width = 62
          Height = 15
          Caption = 'Datum von:'
        end
        object Label16: TLabel
          Left = 68
          Top = 34
          Width = 18
          Height = 15
          Caption = 'bis:'
        end
        object SpeedButton3: TSpeedButton
          Left = 232
          Top = 9
          Width = 131
          Height = 45
          Caption = 'Bestelldetails'
          ParentShowHint = False
          ShowHint = False
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 232
          Top = 55
          Width = 131
          Height = 45
          Caption = 'Transaktionsansicht'
          OnClick = SpeedButton4Click
        end
        object beginDate: TDateTimePicker
          Left = 92
          Top = 9
          Width = 105
          Height = 23
          Date = 44197.000000000000000000
          Time = 0.933144710645137800
          TabOrder = 0
        end
        object endDate: TDateTimePicker
          Left = 92
          Top = 37
          Width = 105
          Height = 23
          Date = 44636.000000000000000000
          Time = 0.933144710645137800
          TabOrder = 1
        end
        object Button1: TButton
          Left = 92
          Top = 75
          Width = 105
          Height = 25
          Caption = 'Rechnung fehlt'
          TabOrder = 2
          OnClick = Button1Click
        end
      end
      object GridInvoiceCorrectionNone: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 444
        Width = 1910
        Height = 232
        Align = alClient
        TabOrder = 2
        object ViewInvoiceCorrectionNone: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellClick = ViewInvoiceCorrectionNoneCellClick
          DataController.DataSource = vInvoiceCorrectionNoneDS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'Amount'
              DisplayText = 'Summe'
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
          Styles.Footer = cxStyle1
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Datum'
            HeaderAlignmentHorz = taCenter
            Width = 73
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Bestellnummer'
            HeaderAlignmentHorz = taCenter
            Width = 150
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Betrag'
            HeaderAlignmentHorz = taCenter
            Width = 57
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'KindBestellnummer'
            HeaderAlignmentHorz = taCenter
            Width = 150
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'VaterBestellnummer'
            HeaderAlignmentHorz = taCenter
            Width = 150
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'InternalId'
            HeaderAlignmentHorz = taCenter
            Width = 76
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'Rechnungsnummer'
            HeaderAlignmentHorz = taCenter
            Width = 132
          end
          object cxGridDBColumn8: TcxGridDBColumn
            DataBinding.FieldName = 'Rechnungskorrektur'
            HeaderAlignmentHorz = taCenter
            Width = 160
          end
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'Anzahl VA'
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
        end
        object GridLevelInvoiceCorrectionNone: TcxGridLevel
          GridView = ViewInvoiceCorrectionNone
        end
      end
    end
    object TabDatenbank: TTabSheet
      Caption = 'Datenbank'
      ImageIndex = 3
      OnShow = TabDatenbankShow
    end
    object TabLagerbestands: TTabSheet
      Caption = 'Lagerbestand'
      ImageIndex = 4
      OnShow = TabLagerbestandsShow
      object PageWareneingang: TPageControl
        Left = 0
        Top = 0
        Width = 1916
        Height = 679
        ActivePage = TabLagerbestand
        Align = alClient
        TabOrder = 0
        object TabLagerbestand: TTabSheet
          Caption = 'Lagerbestand'
        end
        object TabSuchen: TTabSheet
          Caption = 'Suchen'
          ImageIndex = 1
        end
        object TabAddArtikel: TTabSheet
          Caption = 'AddArtikel'
          ImageIndex = 2
        end
        object TabWareneingang: TTabSheet
          Caption = 'Wareneingang'
          ImageIndex = 3
        end
      end
    end
    object Settings: TTabSheet
      Caption = 'Settings'
      ImageIndex = 2
      OnShow = SettingsShow
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1916
        Height = 199
        Align = alTop
        Caption = 'Datenbank:'
        TabOrder = 0
        object Label1: TLabel
          Left = 72
          Top = 35
          Width = 35
          Height = 15
          Caption = 'Server:'
        end
        object Label2: TLabel
          Left = 72
          Top = 64
          Width = 60
          Height = 15
          Caption = 'Datenbank:'
        end
        object Label3: TLabel
          Left = 72
          Top = 94
          Width = 49
          Height = 15
          Caption = 'Benutzer:'
        end
        object Label4: TLabel
          Left = 72
          Top = 123
          Width = 53
          Height = 15
          Caption = 'Password:'
        end
        object edtServer: TEdit
          Left = 152
          Top = 32
          Width = 169
          Height = 23
          TabOrder = 0
        end
        object edtBase: TEdit
          Left = 152
          Top = 61
          Width = 169
          Height = 23
          TabOrder = 1
        end
        object edtUser: TEdit
          Left = 152
          Top = 91
          Width = 169
          Height = 23
          TabOrder = 2
        end
        object edtPassword: TEdit
          Left = 152
          Top = 120
          Width = 169
          Height = 23
          TabOrder = 3
        end
        object btnConnect: TBitBtn
          Left = 152
          Top = 160
          Width = 169
          Height = 25
          Caption = 'Verbindung herstellen'
          Default = True
          NumGlyphs = 2
          TabOrder = 4
          OnClick = btnConnectClick
        end
      end
    end
  end
  object ai: TdxActivityIndicator
    Left = 28
    Top = 459
    Width = 400
    Height = 100
    BorderStyle = cxcbsDefault
    PropertiesClassName = 'TdxActivityIndicatorHorizontalDotsProperties'
    Properties.OverlayColor = -2628366
    Properties.DotSize = 7
    Visible = False
  end
  object InvoiceDS: TDataSource
    DataSet = InvoiceQuery
    Left = 332
    Top = 355
  end
  object PopupMenuInvoice: TPopupMenu
    Left = 220
    Top = 235
    object Aktualisierung1: TMenuItem
      Action = ActRefresh
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Bestelldetails: TMenuItem
      Caption = 'Bestelldetails'
    end
    object Transaktionsansicht: TMenuItem
      Caption = 'Transaktionsansicht'
    end
  end
  object ActionList1: TActionList
    Left = 337
    Top = 235
    object ActRefresh: TAction
      Caption = 'Aktualisierung'
      OnExecute = ActRefreshExecute
    end
  end
  object FDQueryOrderAmazonReport: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'use eazybusiness; '
      ''
      'SELECT AmaSettlement.OrderID'
      
        '      ,AmaSettlement.TransactionType+'#39'/'#39'+AmaSettlement.AmountTyp' +
        'e+'#39'/'#39'+AmaSettlement.AmountDescription as Bezeichnung            ' +
        '            '
      '      ,AmaSettlement.SKU'
      '      ,round(AmaSettlement.Amount, 2) Amount'
      '      --,DatevBestellpos.InvoiceNumber as ReNr'
      
        '  FROM [eazybusiness].[dbo].[pf_amazon_settlementpos]  (nolock) ' +
        'as AmaSettlement'
      '  left JOIN (SELECT'
      '                   [cInetBestellNr]'
      '                  ,[InvoiceNumber]'
      '                  ,[cOrderId]'
      '              FROM [DatevTools100].[dbo].[vBestellpos]'
      '             group by'
      '                   [cInetBestellNr]'
      '                  ,[InvoiceNumber]'
      '                  ,[cOrderId]'
      '            having cOrderId is not null) as DatevBestellpos'
      '         ON AmaSettlement.OrderID = DatevBestellpos.cOrderId'
      '  where TransactionType = '#39'Order'#39
      '    and AmountType in ('#39'ItemPrice'#39', '#39'Promotion'#39')'
      
        '    and AmountDescription in ('#39'Principal'#39', '#39'Tax'#39', '#39'Shipping'#39', '#39'S' +
        'hippingTax'#39', '#39'TaxDiscount'#39', '#39'GiftWrap'#39')'
      '    and DatevBestellpos.InvoiceNumber = :ReNr'
      '  order by Amount desc'
      ''
      '/* old v3 19.13.2022'
      'SELECT'#9#9#9#9#9
      '       AmaSettlement.OrderID'#9#9#9#9#9#9#9#9#9
      
        '      ,AmaSettlement.TransactionType+'#39'/'#39'+AmaSettlement.AmountTyp' +
        'e+'#39'/'#39'+AmaSettlement.AmountDescription as Bezeichnung'#9#9#9#9
      '      ,AmaSettlement.SKU'#9#9#9#9
      '      ,AmaSettlement.Amount'#9#9#9#9
      '      --,DatevBestellpos.InvoiceNumber as ReNr'#9#9#9#9
      #9#9#9#9#9
      
        '  FROM [eazybusiness].[dbo].[pf_amazon_settlementpos] as AmaSett' +
        'lement'#9#9#9#9#9
      
        '  left JOIN [DatevTools100].[dbo].[vBestellpos] as DatevBestellp' +
        'os'#9#9#9#9#9#9#9
      
        #9'     ON AmaSettlement.OrderID = DatevBestellpos.cInetBestellNr'#9 +
        #9#9#9
      '  where DatevBestellpos.InvoiceNumber  = :ReNr'
      '    and TransactionType = '#39'Order'#39#9#9#9#9#9
      #9'and AmountType in ('#39'ItemPrice'#39', '#39'Promotion'#39')'#9#9#9#9
      
        #9'and AmountDescription in ('#39'Principal'#39', '#39'Tax'#39', '#39'Shipping'#39', '#39'Ship' +
        'pingTax'#39', '#39'TaxDiscount'#39', '#39'GiftWrap'#39')'#9#9#9#9#9#9#9#9#9#9
      '  group by'#9#9#9#9#9#9#9#9#9
      '        AmaSettlement.OrderID'#9#9#9#9#9#9#9#9
      '       ,AmaSettlement.Amount'#9#9#9#9#9#9#9#9#9
      '       ,AmaSettlement.SKU'#9#9#9#9#9
      
        '       ,AmaSettlement.TransactionType+'#39'/'#39'+AmaSettlement.AmountTy' +
        'pe+'#39'/'#39'+AmaSettlement.AmountDescription'#9#9#9#9
      '       ,DatevBestellpos.InvoiceNumber'#9#9#9#9
      '  order by Amount desc'#9#9
      '*/')
    Left = 721
    Top = 171
    ParamData = <
      item
        Name = 'RENR'
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryOrderAmazonReportOrderID: TStringField
      FieldName = 'OrderID'
      Origin = 'OrderID'
      Size = 30
    end
    object FDQueryOrderAmazonReportBezeichnung: TStringField
      FieldName = 'Bezeichnung'
      Origin = 'Bezeichnung'
      ReadOnly = True
      Size = 112
    end
    object FDQueryOrderAmazonReportSKU: TStringField
      FieldName = 'SKU'
      Origin = 'SKU'
      Size = 50
    end
    object FDQueryOrderAmazonReportAmount: TFMTBCDField
      FieldName = 'Amount'
      Origin = 'Amount'
      Required = True
      Precision = 28
      Size = 14
    end
  end
  object DataSourceOrderAmazonReport: TDataSource
    DataSet = FDQueryOrderAmazonReport
    Left = 721
    Top = 219
  end
  object FDQueryJLTRechnungbetrag: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'use eazybusiness; '
      ''
      ''
      'SELECT '#9#9#9#9#9#9
      '      Invoice.InvoiceNumber'#9#9#9#9#9#9#9#9#9#9
      '     --,invoicepos.SKU'#9#9#9#9#9
      '     ,invoicepos.Name'#9#9#9#9#9' '
      '     ,invoicepos.TotalGrossPrice'#9#9#9#9#9
      '     --,invoicepos.Sorting'#9#9#9#9#9
      '     '#9#9#9#9#9#9
      '  FROM [eazybusiness].[Report].[Invoice] as Invoice'#9#9#9#9#9#9
      
        '  LEFT JOIN [eazybusiness].[Report].[InvoicePosition] as invoice' +
        'pos'#9#9#9#9#9#9
      #9' on Invoice.InternalId = invoicepos.InvoiceInternalId'#9#9#9#9
      'where Invoice.InvoiceNumber  = :ReNr'#9#9#9#9#9#9
      'order by invoicepos.Sorting asc'#9#9)
    Left = 1041
    Top = 179
    ParamData = <
      item
        Name = 'RENR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryJLTRechnungbetragInvoiceNumber: TStringField
      DisplayWidth = 23
      FieldName = 'InvoiceNumber'
      Size = 50
    end
    object FDQueryJLTRechnungbetragName: TStringField
      DisplayWidth = 100
      FieldName = 'Name'
      Size = 100
    end
    object FDQueryJLTRechnungbetragTotalGrossPrice: TFMTBCDField
      DisplayWidth = 26
      FieldName = 'TotalGrossPrice'
      Precision = 25
      Size = 13
    end
  end
  object DataSourceJLTRechnungbetrag: TDataSource
    DataSet = FDQueryJLTRechnungbetrag
    Left = 1049
    Top = 227
  end
  object vRefundAmazonReport: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'use eazybusiness; '
      ''
      ''
      'SELECT Refund.cInetBestellNr As ReNr'
      '      ,Refund.OrderId -- Refund Amazon Report'
      '      ,Refund.Bezeichnung'
      '      ,Refund.Amount'
      '  FROM [DatevTools100].[dbo].[vRefundAmazonReport] as Refund'
      ' where 1=1'
      '   and Refund.OrderId = :InetBestellNr'
      ' order by Refund.Amount '
      ''
      ''
      '')
    Left = 697
    Top = 435
    ParamData = <
      item
        Name = 'INETBESTELLNR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object StringField4: TStringField
      FieldName = 'OrderID'
      Origin = 'OrderID'
      Size = 30
    end
    object StringField5: TStringField
      FieldName = 'Bezeichnung'
      Origin = 'Bezeichnung'
      ReadOnly = True
      Size = 112
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'Amount'
      Origin = 'Amount'
      Required = True
      Precision = 28
      Size = 14
    end
  end
  object vRefundAmazonReportDS: TDataSource
    DataSet = vRefundAmazonReport
    Left = 697
    Top = 483
  end
  object FDQueryJTLRechnungsKorrektur: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'use eazybusiness; '
      ''
      ''
      'SELECT invoice.InvoiceNumber'#9
      '      ,correction.InvoiceCorrectionNumber'
      '      -- ,correctionpos.SKU'#9
      '       ,correctionpos.Name'#9
      
        '       ,round(correctionpos.TotalGrossPrice * -1, 2) as TotalGro' +
        'ssPrice'
      '      -- ,correctionpos.Sorting'#9
      '      '#9#9
      
        '  FROM [eazybusiness].[Report].[InvoiceCorrection] as correction' +
        #9#9
      
        '  LEFT JOIN [eazybusiness].[Report].[InvoiceCorrectionPosition] ' +
        'as correctionpos'#9#9
      
        '         on correction.InternalId = correctionpos.InvoiceCorrect' +
        'ionInternalId'#9#9
      #9#9
      '  LEFT JOIN [eazybusiness].[Report].[Invoice] as invoice'#9#9
      
        '         on correction.InvoiceInternalId = invoice.InternalId'#9#9' ' +
        #9#9#9#9
      ' where Invoice.InvoiceNumber  = :ReNr'#9#9
      ' order by Sorting asc'#9#9
      #9)
    Left = 945
    Top = 435
    ParamData = <
      item
        Name = 'RENR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryJTLRechnungsKorrekturInvoiceCorrectionNumber: TStringField
      FieldName = 'InvoiceCorrectionNumber'
      Size = 50
    end
    object FDQueryJTLRechnungsKorrekturName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object FDQueryJTLRechnungsKorrekturTotalGrossPrice: TFMTBCDField
      FieldName = 'TotalGrossPrice'
      Precision = 25
      Size = 13
    end
    object FDQueryJTLRechnungsKorrekturInvoiceNumber: TStringField
      FieldName = 'InvoiceNumber'
      Origin = 'InvoiceNumber'
      Size = 50
    end
  end
  object DataSourceJTLRechnungsKorrektur: TDataSource
    DataSet = FDQueryJTLRechnungsKorrektur
    Left = 945
    Top = 491
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 24
    Top = 80
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clDefault
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clHighlightText
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyleTypeGreen: TcxStyle
      AssignedValues = [svColor]
      Color = 9240460
    end
    object cxStyleTypeDef: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnHighlight
    end
    object cxStyleTypeRed: TcxStyle
      AssignedValues = [svColor]
      Color = 8421631
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 24314028
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000021744558745469746C65004170706C793B4F4B3B436865636B3B4261
          72733B526962626F6E3B6463C8680000037D49444154785E4D8E7F4C94051CC6
          3FEF7B77E02073EA92742577579B684891E62AB6C4526B6013696BC9DC5A0B33
          D0322DA716D3CA94A21A8E96E976AEB654688E409B46B859CC249500E3F81588
          234EE0F875DC1DF7A3BB7BDFF7DBC16AEBD9F3D9BEFF3CCFF7C13555CB58A801
          40014CC5E5696BF638D24FBEF7EDF2D683550F7B0E5666B4969C5A5EBBEBCB65
          2F0209803A116E6438F82377A66A60385007A0E4EFB2A5BC51B1B4AEF4EC5AB9
          D476583A87AA642C7055BA47CE4A43F72752713157F67D93DE54B0DFBE04308D
          867E9E290050725F4BBDB7F8E8B29EAA86B7C4E5BF203DDEE3D23E71585AC6F6
          48E7E4C7D2E777C870A05E7E68DE277B4F668C6EDE6BCF00D4017F350A607EF5
          48DAB99CECBC9CF4343BC3E1264CAA60C282AAA8288A028A30313E852DE509EE
          0C4D72EEF26967CD17FD4F0EDE0A064DF9BBEDEB6CD6C51F3C9DF5382EFF1540
          104014216E500C2ED6DDA4F67C3BEDB79BC9C95EC3E8F8784AD28288BBADC1D3
          6C4E98652A7C2C7D2543816674430304C4885B0755E1CC99EBCC51D750F14E35
          DBCB32E91DF98DCCA5ABE8FCB36733E0500D3132EF9EAB108C7AE9ED1BA6B4AC
          969F2E39896A11CE5F68212529975D5B4A395A59C40B79CF6049D0489AAD81AA
          3C0A9854436741140FE148809AEA16CA8AAEA34C65F1E9E7F524EBEBD99A7F80
          53751FB2707118EB836642311F31C63174497C286BEE6C55D3F48971DF2088C1
          A60D6BF9BAB6849D0547D8FD520D2F3F5F822FD8C7AFCEEF58B16A11FEC82831
          3DC6A87F8868C488745C9D0C9AF5A8D2E51EF15BE72FD248B127E2F5FE8DE3FB
          FDEC28280755E1FDCFB691BF310B6FC48566C4C030F08D458984B40E4057837E
          ADAAA7CB87A0E2090EB2E491594C1A4DD45C2EC779AB0E53B287C4399384A353
          718288A8F4767B09F8F4F380069094BBDD7AB3E474869CB8B1428E5DCB90AAB6
          0DB2E59055B2B621C72EAF93134D99723C8EE3F79572A83A5336EEB439EF9A67
          990FA82A1071F7855EF9E35AC0D3EB0C010A9EF000799B56F1EEDBAFC7BF87D0
          0D411185BEEE30AD8DFE88AB2B501CF0C4FC5706DE34CC0D7F15E9AB53BF6A17
          784ED78C4AB72BF6803DDD82B6B013D5A420064CB875FABB628CB8A21DEEDBA1
          A2D6FAB11B8066480C7EE92F045000737CD6BCA736DFB77F7D616A63EE769BCC
          B0C326CF6E4D6D5B5D70FF47C9732CF700164099CE4D3373FCA76CAB43052CFF
          62065440001D884E130F19FC4FFF00FE20CB5D5DF1FFF30000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000023744558745469746C650043616E63656C3B53746F703B457869743B
          426172733B526962626F6E3B4C9696B20000038849444154785E1D906B4C5367
          18C7FF3DBD40CB1A2E32B55C9D598B4CA675D8D13836652E9B0359B67D589665
          3259E644A52571644474CB4CB6ECC23770C4449DD38D2885005E4683AB69C616
          8DA12384264EC8AAAC0C9149A1175ACEE9E939CFDE9EE7E477F2CBFFB924E720
          E6E943CC3B8895D12B00A0FEE3D08167A75A5BBAEEB71D9D081E6B4DA549FBDD
          A3CEEFDD1F3658016818AA98A71FD1915E202DE980A19D741E3EF6E0F8A7FC7F
          673B6979E002C5BC43B4C2581EB8480BE7BA68E6441BEF3B72F03300990C8E1D
          5016554E7B55D6C1ED9543C6C2B5BB739FDF025988838424E4240F10A0D2EAA0
          D26540AD37203CFE17C2C187A3EDBFDE7CF3DAD4748403A06EA8A8E830AC5FB3
          3B7BAB1901B717AE23DFE1CEC5EBEC90A0E0EB71A3CFD981C0B017C6F252180B
          D6BD74BCFA856E003A0CBDFD966DF250532AD4FF038DB734D18557DF21CFB08F
          2E37B5D370ED5E72D7D52BEEF9654CE9F91C1FD392EB0C4D3A0E4BE7F6ECD909
          CFDEFAD381AF4ED0A3D35FD399E272BA3F3D478F971234FD2044BDCE930AF798
          CF2FAED0DF5373CACCFCA92F2970B29DDCAFD7F56B48945E918201C41738945A
          2D581C7461ADA3192AB50AD64F9A010272730CC8D4AA313BE44289D58CF85D3F
          2411504BB28D93845489145E041F9CC1863C09A11BD7E1EFEA86240339463DB2
          B3F59025C0DFD98DD0C83594E6886C360831F408523265D208BC0021B20A35A7
          82B8BC0429C2239A10D812417988007088B14C8A8421EA75A094044A8A48F200
          17E78587629220B370E69F2884EA3750F07E23245946868E43A64EA3B8695F23
          F8EA7A046763EC780AC9640AF155FEB1269AE0BD91AC8CFDF910108E26F15A5B
          33788D1E860CF6CDE7CF225D45FB3F02A0C7CE36076E5CBD84825C3562A20E4B
          097E0CAD051B5FFCA97C9BE4ABAEA05B2FDBE9E6BE0F880F8568FCDB0E1AA9AA
          646C579C654AEF564D15FDB96333FDBCC94A8E751B6A0140DF5168B9E42A7B86
          266AB6D2ED1A1BF559CAC853B58DFCB576F2D7D9D3AE64B777D96862D716EA2F
          2BA76F4CE62B008C1A00C2F9C57F9D8DA2C99212C5E72C85323699F320A77FD2
          72040021DF9885F56BF2204457706F9EC74C4CF2F744169A012430DBF21E00A8
          2B754F98BEC82EEEED7AF2291A306FA451EBD3346633938FF13BF341969D62BD
          CF738AAF6ED6EA4B006882CE77A14ABFD255D2799903606830E4EF28E274070C
          1C67D74255041044C25C9CE43B4149F8B16735F41B8038DB9300E07F6924ECFB
          01D589CC0000000049454E44AE426082}
      end>
  end
  object SplitInvoiceQuery: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'use eazybusiness; '
      ''
      ''
      'SELECT '#9#9#9
      #9' invoice.InternalId '#9#9
      #9',invoice.InvoiceNumber as Rechnungsnummer'#9#9
      #9',FORMAT( invoice.CreationDate, '#39'd'#39', '#39'de-de'#39' ) '#39'Datum'#39' '#9#9
      #9',round(invoice.TotalGrossPrice, 2) as BruttoBetrag'#9#9
      #9',invoice.ExternalSalesOrderNumbers as Bestellnummer'#9#9
      #9'--,invoice.Comment'#9#9
      '  FROM [eazybusiness].[Report].[Invoice] as invoice'#9#9#9
      ' where Comment like '#39'%'#39' + :Bestellnummer + '#39'%'#39#9#9
      ''
      '/*'
      'SELECT '#9#9#9#9
      #9' invoice.InternalId '#9#9#9
      #9',invoice.InvoiceNumber as Rechnungsnummer'#9#9#9
      #9',FORMAT( invoice.CreationDate, '#39'd'#39', '#39'de-de'#39' ) '#39'Datum'#39' '#9#9#9
      #9',round(invoice.TotalGrossPrice, 2) as BruttoBetrag'#9#9#9
      #9', case '
      
        '           when charindex('#39'_'#39', invoice.ExternalSalesOrderNumbers' +
        ') > 0'
      
        '           then SUBSTRING(invoice.ExternalSalesOrderNumbers, 1, ' +
        'charindex('#39'_'#39', invoice.ExternalSalesOrderNumbers)-1) '
      '           else Invoice.ExternalSalesOrderNumbers'
      '        end  as Bestellnummer'#9#9#9
      '  FROM [eazybusiness].[Report].[Invoice] as invoice (nolock)'#9#9#9#9
      ' where  case '
      
        '           when charindex('#39'_'#39', invoice.ExternalSalesOrderNumbers' +
        ') > 0'
      
        '            then SUBSTRING(invoice.ExternalSalesOrderNumbers, 1,' +
        ' charindex('#39'_'#39', invoice.ExternalSalesOrderNumbers)-1) '
      '            else Invoice.ExternalSalesOrderNumbers'
      '        end  = :Bestellnummer'#9#9
      '*/'#9#9
      '')
    Left = 1329
    Top = 195
    ParamData = <
      item
        Name = 'BESTELLNUMMER'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object SplitInvoiceQueryInternalId: TIntegerField
      FieldName = 'InternalId'
      Origin = 'InternalId'
      Required = True
    end
    object SplitInvoiceQueryRechnungsnummer: TStringField
      FieldName = 'Rechnungsnummer'
      Origin = 'Rechnungsnummer'
      Size = 50
    end
    object SplitInvoiceQueryDatum: TWideStringField
      FieldName = 'Datum'
      Origin = 'Datum'
      ReadOnly = True
      Size = 4000
    end
    object SplitInvoiceQueryBruttoBetrag: TFMTBCDField
      FieldName = 'BruttoBetrag'
      Origin = 'BruttoBetrag'
      ReadOnly = True
      Precision = 28
      Size = 14
    end
    object SplitInvoiceQueryBestellnummer: TStringField
      FieldName = 'Bestellnummer'
      Origin = 'Bestellnummer'
      ReadOnly = True
      Size = 50
    end
  end
  object DataSourceSplitInvoice: TDataSource
    DataSet = SplitInvoiceQuery
    Left = 1329
    Top = 243
  end
  object FDQuery_common: TFDQuery
    Connection = DataModule1.FDConnection
    ResourceOptions.AssignedValues = [rvSilentMode]
    Left = 716
    Top = 66
  end
  object vNoInvoiceQuery: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'SELECT '#9#9#9#9#9
      
        '       FORMAT( AmaSettlement.dErstellt'#9', '#39'd'#39', '#39'de-de'#39' ) '#39'Datum'#39' ' +
        #9#9#9#9
      #9#9#9#9
      '      ,AmaSettlement.OrderID'#9#9#9#9#9#9#9#9#9
      
        '      ,AmaSettlement.TransactionType+'#39'/'#39'+AmaSettlement.AmountTyp' +
        'e+'#39'/'#39'+AmaSettlement.AmountDescription as Bezeichnung'#9#9#9#9
      '      ,AmaSettlement.SKU'#9#9#9#9
      '      ,AmaSettlement.Amount'#9#9#9#9
      '      ,Case'#9#9#9#9
      
        '         when DatevBestellpos.InvoiceNumber is null then '#39'Rechnu' +
        'ng nicht vorhanden'#39#9#9#9
      '         Else DatevBestellpos.InvoiceNumber'#9#9#9
      '       End as Rechnungsnummer'#9#9#9
      #9#9#9#9#9
      
        '  FROM [eazybusiness].[dbo].[pf_amazon_settlementpos] as AmaSett' +
        'lement'#9#9#9#9#9
      '  left JOIN (SELECT '#9#9#9#9#9
      #9#9'[cInetBestellNr]'#9#9
      #9'       ,[InvoiceNumber]'#9#9
      #9'       ,[cOrderId]'#9#9
      '              FROM [DatevTools100].[dbo].[vBestellpos]'#9#9
      '             group by '#9#9
      #9'          [cInetBestellNr]'#9#9
      #9'         ,[InvoiceNumber]'#9#9
      #9'         ,[cOrderId]'#9#9
      '           having cOrderId is not null) as DatevBestellpos'#9#9#9#9#9#9
      #9'ON AmaSettlement.OrderID = DatevBestellpos.cOrderId'#9#9
      #9#9
      '  where TransactionType = '#39'Order'#39#9#9#9#9#9
      #9'and AmountType in ('#39'ItemPrice'#39', '#39'Promotion'#39')'#9#9#9#9
      
        #9'and AmountDescription in ('#39'Principal'#39', '#39'Tax'#39', '#39'Shipping'#39', '#39'Ship' +
        'pingTax'#39', '#39'TaxDiscount'#39', '#39'GiftWrap'#39')'#9#9#9#9
      #9'and AmaSettlement.dErstellt between :DATEBEGIN and :DATEEND'#9#9#9#9
      #9'and DatevBestellpos.InvoiceNumber is null'#9#9
      #9#9#9#9#9)
    Left = 545
    Top = 131
    ParamData = <
      item
        Name = 'DATEBEGIN'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATEEND'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end>
    object vNoInvoiceQueryDatum: TWideStringField
      FieldName = 'Datum'
      ReadOnly = True
      Size = 4000
    end
    object vNoInvoiceQueryOrderID: TStringField
      FieldName = 'OrderID'
      Size = 30
    end
    object vNoInvoiceQueryBezeichnung: TStringField
      FieldName = 'Bezeichnung'
      ReadOnly = True
      Size = 112
    end
    object vNoInvoiceQuerySKU: TStringField
      FieldName = 'SKU'
      Size = 50
    end
    object vNoInvoiceQueryAmount: TFMTBCDField
      FieldName = 'Amount'
      Required = True
      Precision = 28
      Size = 14
    end
    object vNoInvoiceQueryRechnungsnummer: TStringField
      FieldName = 'Rechnungsnummer'
      ReadOnly = True
      Size = 50
    end
  end
  object vNoInvoiceDS: TDataSource
    DataSet = vNoInvoiceQuery
    Left = 545
    Top = 179
  end
  object vBelegeExport: TFDQuery
    Connection = DataModule1.FDConnection
    FormatOptions.AssignedValues = [fvMaxBcdScale, fvRound2Scale, fvDataSnapCompatibility, fvFmtDisplayNumeric, fvCheckPrecision, fvADOCompatibility]
    FormatOptions.MaxBcdScale = 2
    ResourceOptions.AssignedValues = [rvSilentMode]
    SQL.Strings = (
      'declare @dateBegin date,'
      '        @dateEnd date'
      ''
      ' select @dateBegin = :dateBegin'
      '       ,@dateEnd   = :dateEnd'
      ''
      'SELECT InvoiceCsv.InternalId'
      '      ,InvoiceCsv.InvoiceNumber as '#39'ReAus-ReKor'#39
      
        '      ,InvoiceCsv.ExternalSalesOrderNumbers as '#39'Externe Bestelln' +
        'ummer'#39
      '                    '
      
        '      ,convert(decimal(10,2), InvoiceCsv.TotalGrossPrice) as Bru' +
        'tto'
      '      ,cast(InvoiceCsv.TotalNetPrice as decimal(10,2)) as Netto'
      
        '      ,cast(round(InvoiceCsv.TotalGrossPrice, 2) - round(Invoice' +
        'Csv.TotalNetPrice,2) as decimal(10,2)) as '#39'Betrag USt'#39
      '                    '
      '      ,case                '
      
        '        when bestellpos.CountryISO = '#39'DE'#39' and bestellpos.fMwSt= ' +
        '0 then  cast(Round((InvoiceCsv.TotalGrossPrice - InvoiceCsv.Tota' +
        'lNetPrice)*100/InvoiceCsv.TotalNetPrice, 0) as decimal(10,2))   ' +
        '         '
      '        Else cast(bestellpos.fMwSt as decimal(10,2))'
      '       End as     fMwSt'
      ''
      '      ,bestellpos.CountryISO'
      '      ,bestellpos.Country'
      '                      '
      
        '      ,tax.nSchluesselnummer as '#39'Steuerschl'#252'sselnummer'#39'         ' +
        '   '
      '      ,tax.cSteuerkonto as '#39'Buchungskonto'#39'                '
      
        '      ,cast('#39'H'#39' as char) as '#39'Soll/Haben-Kennzeichen'#39'            ' +
        '    '
      
        '      ,cast('#39'10000'#39' as char) as '#39'Gegenkonto (ohne BU-Schl'#252'ssel)'#39 +
        '                '
      
        '      ,FORMAT( InvoiceCsv.CreationDate, '#39'd'#39', '#39'de-de'#39' ) '#39'Erstelld' +
        'atum'#39'                 '
      '      ,bestellpos.cWaehrung                '
      
        '      ,bestellpos.fFaktor                                       ' +
        '                       '
      
        '  FROM [eazybusiness].[Report].[Invoice] as InvoiceCsv          ' +
        '          '
      
        '  LEFT JOIN (    SELECT InvoiceNumber ,cWaehrung ,fFaktor ,max(f' +
        'MwSt) as fMwst ,CountryISO ,Country ,kSteuerklasse ,cName       ' +
        '         '
      '                  FROM DatevTools100.dbo.vBestellpos    '
      
        '                 Group by  cWaehrung ,fFaktor,InvoiceNumber,Coun' +
        'tryISO,Country,kSteuerklasse,cName    '
      
        '                having kSteuerklasse is not null) As bestellpos ' +
        '   '
      
        '         on InvoiceCsv.InvoiceNumber = bestellpos.InvoiceNumber ' +
        '               '
      '                    '
      '  LEFT JOIN DatevTools100.[dbo].[vTax] as tax'
      '         on bestellpos.kSteuerklasse = tax.kSteuerklasse'
      '        and bestellpos.CountryISO = tax.cISO'
      '                    '
      
        ' where cast(InvoiceCsv.CreationDate as date) between @dateBegin ' +
        'and @dateEnd'
      '                    '
      'union                    '
      '                    '
      'SELECT InvCorrection.InternalId'
      '      ,InvCorrection.InvoiceCorrectionNumber as '#39'ReAus-ReKor'#39
      
        '      ,InvCorrection.ExternalSalesOrderNumbers as '#39'Externe Beste' +
        'llnummer'#39
      
        '      ,cast(InvCorrection.TotalGrossPrice*-1 as decimal(10,2)) a' +
        's Brutto'
      
        '      ,cast(InvCorrection.TotalNetPrice*-1 as decimal(10,2)) As ' +
        'Netto'
      
        '      ,cast((round(InvCorrection.TotalGrossPrice, 2) - round(Inv' +
        'Correction.TotalNetPrice,2))*-1 as decimal(10,2)) as '#39'Betrag USt' +
        #39
      ''
      '      ,case'
      '       when bestellpos.CountryISO = '#39'DE'#39
      
        '       and bestellpos.fMwSt    = 0 then  cast(Round((InvCorrecti' +
        'on.TotalGrossPrice - InvCorrection.TotalNetPrice)*100/InvCorrect' +
        'ion.TotalNetPrice, 0) as decimal(10,2))            '
      '                    '
      '       when bestellpos.fMwSt > 0                '
      
        '       and InvCorrection.TotalGrossPrice = InvCorrection.TotalNe' +
        'tPrice then cast('#39'0.00'#39' as decimal(10,2))                '
      
        '       Else cast(bestellpos.fMwSt as decimal(10,2))             ' +
        '   '
      '       End as     fMwSt                               '
      '      ,bestellpos.CountryISO'
      '      ,bestellpos.Country'
      '      ,case'
      
        '         when InvCorrection.TotalGrossPrice = InvCorrection.Tota' +
        'lNetPrice then 1'
      '         Else tax.nSchluesselnummer'
      '       End as '#39'Steuerschl'#252'sselnummer'#39'                      '
      '      ,case                '
      
        '         when InvCorrection.TotalGrossPrice = InvCorrection.Tota' +
        'lNetPrice then '#39'8200'#39
      '         else tax.cSteuerkonto'
      '       End as '#39'Buchungskonto'#39
      '      ,cast('#39'S'#39' as char) as '#39'Soll/Haben-Kennzeichen'#39
      '      ,cast('#39'10000'#39' as char) as '#39'Gegenkonto (ohne BU-Schl'#252'ssel)'#39
      
        '      ,FORMAT( InvCorrection.CreationDate, '#39'd'#39', '#39'de-de'#39' ) '#39'Erste' +
        'lldatum'#39
      '      ,bestellpos.cWaehrung'
      
        '      ,bestellpos.fFaktor                                       ' +
        '     '
      '  FROM eazybusiness.Report.InvoiceCorrection as InvCorrection'
      
        '  LEFT JOIN (    SELECT InvoiceNumber ,cWaehrung ,fFaktor ,max(f' +
        'MwSt) as fMwst ,CountryISO ,Country ,kSteuerklasse ,cName'
      '                  FROM DatevTools100.dbo.vBestellpos    '
      
        '                 Group by  cWaehrung ,fFaktor,InvoiceNumber,Coun' +
        'tryISO,Country,kSteuerklasse,cName    '
      
        '                having kSteuerklasse is not null) As bestellpos ' +
        '   '
      
        '         on InvCorrection.InvoiceNumber = bestellpos.InvoiceNumb' +
        'er                '
      '                    '
      '  LEFT JOIN DatevTools100.[dbo].[vTax] as tax                '
      
        '         on bestellpos.kSteuerklasse = tax.kSteuerklasse        ' +
        '        '
      '        and bestellpos.CountryISO = tax.cISO                '
      
        ' where cast(InvCorrection.CreationDate as date)  between @dateBe' +
        'gin and @dateEnd')
    Left = 540
    Top = 66
    ParamData = <
      item
        Name = 'DATEBEGIN'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATEEND'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end>
    object vBelegeExportInternalId: TIntegerField
      FieldName = 'InternalId'
      Origin = 'InternalId'
      ReadOnly = True
      Required = True
    end
    object vBelegeExportReAusReKor: TStringField
      FieldName = 'ReAus-ReKor'
      Origin = '[ReAus-ReKor]'
      ReadOnly = True
      Size = 50
    end
    object vBelegeExportExterneBestellnummer: TStringField
      FieldName = 'Externe Bestellnummer'
      Origin = '[Externe Bestellnummer]'
      ReadOnly = True
      Size = 50
    end
    object vBelegeExportBrutto: TBCDField
      FieldName = 'Brutto'
      Origin = 'Brutto'
      ReadOnly = True
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      currency = True
      Precision = 10
      Size = 2
    end
    object vBelegeExportNetto: TBCDField
      FieldName = 'Netto'
      Origin = 'Netto'
      ReadOnly = True
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      currency = True
      Precision = 10
      Size = 2
    end
    object vBelegeExportBetragUSt: TBCDField
      FieldName = 'Betrag USt'
      Origin = '[Betrag USt]'
      ReadOnly = True
      DisplayFormat = '0.00'
      currency = True
      Precision = 10
      Size = 2
    end
    object vBelegeExportfMwSt: TBCDField
      FieldName = 'fMwSt'
      Origin = 'fMwSt'
      ReadOnly = True
      DisplayFormat = '0.00'
      currency = True
      Precision = 10
      Size = 2
    end
    object vBelegeExportCountryISO: TStringField
      FieldName = 'CountryISO'
      Origin = 'CountryISO'
      ReadOnly = True
      Size = 5
    end
    object vBelegeExportCountry: TStringField
      FieldName = 'Country'
      Origin = 'Country'
      ReadOnly = True
      Size = 255
    end
    object vBelegeExportSteuerschlüsselnummer: TIntegerField
      FieldName = 'Steuerschl'#252'sselnummer'
      Origin = '[Steuerschl'#252'sselnummer]'
      ReadOnly = True
    end
    object vBelegeExportBuchungskonto: TStringField
      FieldName = 'Buchungskonto'
      Origin = 'Buchungskonto'
      ReadOnly = True
      Size = 10
    end
    object vBelegeExportSollHabenKennzeichen: TStringField
      FieldName = 'Soll/Haben-Kennzeichen'
      Origin = '[Soll/Haben-Kennzeichen]'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object vBelegeExportGegenkontoohneBUSchlüssel: TStringField
      FieldName = 'Gegenkonto (ohne BU-Schl'#252'ssel)'
      Origin = '[Gegenkonto (ohne BU-Schl'#252'ssel)]'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
    object vBelegeExportErstelldatum: TWideStringField
      FieldName = 'Erstelldatum'
      Origin = 'Erstelldatum'
      ReadOnly = True
      Size = 4000
    end
    object vBelegeExportcWaehrung: TStringField
      FieldName = 'cWaehrung'
      Origin = 'cWaehrung'
      ReadOnly = True
    end
    object vBelegeExportfFaktor: TFMTBCDField
      FieldName = 'fFaktor'
      Origin = 'fFaktor'
      ReadOnly = True
      Precision = 28
      Size = 14
    end
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    Left = 180
    Top = 283
  end
  object InvoiceQuery: TFDQuery
    BeforeOpen = FDInvoiceSelectBeforeOpen
    AfterOpen = FDInvoiceSelectAfterOpen
    Filtered = True
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'use eazybusiness; '
      ''
      'declare @dateBegin date,'
      '        @dateEnd date'
      ''
      ' select @dateBegin = :dateBegin ,'
      '        @dateEnd   = :dateEnd'
      ''
      ' if OBJECT_ID('#39'tempdb..#invoice'#39') is not null'
      '  drop table #invoice;'
      ''
      ''
      '--'
      'create table #invoice'
      '('
      ' Belegnummer   varchar(50)  COLLATE Latin1_General_CI_AS'
      ',Datum         date'
      ',Bestellnummer varchar(50)  COLLATE Latin1_General_CI_AS'
      ',Belegname     varchar(50)'
      ',Marketplace   varchar(50)'
      ',ReNr          varchar(50)  COLLATE Latin1_General_CI_AS'
      ',sign_type     int'
      ',OrderAmazonReportAmount money default 0'
      ',JLTRechnungbetragAmount money default 0'
      ',SplitInvoiceAmount      money default 0'
      ',SplitInvoiceCount       int  default 0'
      ''
      ',RefundAmazonReportAmount money  default 0-- 4'
      ',RechnungsKorrekturAmount money  default 0-- 5'
      ''
      ',AllInvoicekorrectionAmount money  default 0 -- 6'
      ',InvoiceText             varchar(4000)'
      ''
      ');'
      'create index ao1 on #invoice(Belegnummer);'
      ''
      'create index ao2 on #invoice(Bestellnummer);'
      ''
      ''
      '--'
      'if OBJECT_ID('#39'tempdb..#ReportInvoice'#39') is not null'
      '  drop table #ReportInvoice;'
      ''
      'create table #ReportInvoice'
      '('
      
        ' ExternalSalesOrderNumbers'#9'varchar(50)  COLLATE Latin1_General_C' +
        'I_AS'
      ',TotalGrossPrice money'
      ');'
      'create index ao1 on #ReportInvoice(ExternalSalesOrderNumbers);'
      ''
      ''
      '--'
      'if OBJECT_ID('#39'tempdb..#ReportInvoiceCorrection'#39') is not null'
      '  drop table #ReportInvoiceCorrection;'
      ''
      'create table #ReportInvoiceCorrection'
      '('
      
        ' ExternalSalesOrderNumbers'#9'varchar(50)  COLLATE Latin1_General_C' +
        'I_AS'
      ',TotalGrossPrice            money'
      ');'
      
        'create index ao1 on #ReportInvoiceCorrection(ExternalSalesOrderN' +
        'umbers);'
      ''
      '--'
      'insert #invoice'
      '      (Belegnummer  '
      '      ,Datum        '
      '      ,Bestellnummer'
      '      ,Belegname    '
      '      ,Marketplace  '
      '      ,ReNr         '
      '      ,sign_type'
      '      ,InvoiceText    '
      '      )'
      
        'SELECT Invoice.InvoiceNumber                         as Belegnum' +
        'mer'
      '       ,FORMAT( Invoice.CreationDate, '#39'd'#39', '#39'de-de'#39' ) as Datum'
      '       ,case '
      
        '          when charindex('#39'_'#39', Invoice.ExternalSalesOrderNumbers)' +
        ' > 0'
      
        '            then SUBSTRING(Invoice.ExternalSalesOrderNumbers, 1,' +
        ' charindex('#39'_'#39', Invoice.ExternalSalesOrderNumbers)-1) '
      '            else Invoice.ExternalSalesOrderNumbers'
      '        end as Bestellnummer '
      '       ,cast('#39'Order'#39' as char)             as Belegname'
      '       ,Plattform.cName                   as Marketplace'
      '       ,invoice.InvoiceNumber             as ReNr'
      '       ,case '
      '          when CHARINDEX('#39'amazon'#39', Plattform.cName)=0 then 1'
      ''
      '          else 0'
      '        end as sign_type'
      '       ,'#39#39' InvoiceText'
      
        '   FROM [eazybusiness].[Report].[Invoice] (nolock)  as Invoice  ' +
        '  '
      
        '   LEFT JOIN [eazybusiness].[dbo].[tBestellung] (nolock) as best' +
        'ellung'
      '          ON Invoice.InternalId = bestellung.tRechnung_kRechnung'
      '   LEFT JOIN [eazybusiness].dbo.tPlattform (nolock) AS Plattform'
      '          ON Bestellung.nPlatform = Plattform.nPlattform'
      
        '  where cast(CreationDate as date) between @dateBegin and @dateE' +
        'nd'
      '  UNION                         '
      ' SELECT correction.InvoiceCorrectionNumber as Belegnummer'
      '       ,FORMAT( correction.CreationDate, '#39'd'#39', '#39'de-de'#39' ) Datum'
      '       ,case '
      
        '           when charindex('#39'_'#39', correction.ExternalSalesOrderNumb' +
        'ers) > 0'
      
        '            then SUBSTRING(correction.ExternalSalesOrderNumbers,' +
        ' 1, charindex('#39'_'#39', correction.ExternalSalesOrderNumbers)-1) '
      '            else Invoice.ExternalSalesOrderNumbers'
      '        end  as Bestellnummer                 '
      '      ,cast('#39'Refund'#39' as char) as Belegname                    '
      '      ,Plattform.cName        as Marketplace    '
      '      ,invoice.InvoiceNumber  as ReNr '
      '      ,case '
      '         when CHARINDEX('#39'amazon'#39', Plattform.cName)=0 then 1'
      '         else 0'
      '       end as sign_type'
      '      ,isnull(correction.text, '#39#39') as InvoiceText'
      
        '  FROM [eazybusiness].[Report].[InvoiceCorrection] (nolock) as c' +
        'orrection'
      
        '  LEFT JOIN [eazybusiness].[Report].[Invoice] (nolock) as invoic' +
        'e'
      
        '         on correction.InvoiceInternalId = invoice.InternalId   ' +
        ' '
      
        '  LEFT JOIN [eazybusiness].[dbo].[tBestellung] (nolock) as beste' +
        'llung'
      '         ON Invoice.InternalId = bestellung.tRechnung_kRechnung'
      '  LEFT JOIN [eazybusiness].dbo.tPlattform (nolock) AS Plattform'
      '         ON Bestellung.nPlatform = Plattform.nPlattform'
      
        ' where cast(correction.CreationDate as date) between @dateBegin ' +
        'and @dateEnd ;   '
      ''
      '-- Order Amazon Report'
      'update #invoice '
      
        '   set OrderAmazonReportAmount = isnull ((SELECT sum(AmaSettleme' +
        'nt.Amount)'
      
        '                                                   FROM [eazybus' +
        'iness].[dbo].[pf_amazon_settlementpos] (nolock)  as AmaSettlemen' +
        't'
      
        '                                                   left JOIN (SE' +
        'LECT'
      
        '                                                                ' +
        '    [cInetBestellNr]'
      
        '                                                                ' +
        '   ,[InvoiceNumber]'
      
        '                                                                ' +
        '   ,[cOrderId]'
      
        '                                                               F' +
        'ROM [DatevTools100].[dbo].[vBestellpos]'
      
        '                                                              gr' +
        'oup by                 '
      
        '                                                                ' +
        '    [cInetBestellNr]                '
      
        '                                                                ' +
        '   ,[InvoiceNumber]                '
      
        '                                                                ' +
        '   ,[cOrderId]                '
      
        '                                                             hav' +
        'ing cOrderId is not null) as DatevBestellpos'
      
        '                                                          ON Ama' +
        'Settlement.OrderID = DatevBestellpos.cOrderId'
      
        '                                                   where Transac' +
        'tionType    = '#39'Order'#39
      
        '                                                     and AmountT' +
        'ype        in ('#39'ItemPrice'#39', '#39'Promotion'#39')'
      
        '                                                     and AmountD' +
        'escription in ('#39'Principal'#39', '#39'Tax'#39', '#39'Shipping'#39', '#39'ShippingTax'#39', '#39'T' +
        'axDiscount'#39', '#39'GiftWrap'#39')'
      
        '                                                     and DatevBe' +
        'stellpos.InvoiceNumber = #invoice.ReNr'
      '                                                ), 0)'
      ' from #invoice '
      ''
      '-- JLT Rechnungbetrag Amount '
      'update #invoice '
      '   set JLTRechnungbetragAmount'
      
        '                         = isnull ((SELECT sum(round(invoicepos.' +
        'TotalGrossPrice,2))'
      
        '                                      FROM [eazybusiness].[Repor' +
        't].[Invoice] (nolock) as Invoice'
      
        '                                     inner JOIN [eazybusiness].[' +
        'Report].[InvoicePosition] (nolock) as invoicepos'
      
        '                                             on Invoice.Internal' +
        'Id = invoicepos.InvoiceInternalId'
      
        '                                     where Invoice.InvoiceNumber' +
        '   = #invoice.ReNr'
      '                                    ), 0)'
      ' from #invoice '
      ''
      '--'
      'declare @mask varchar(255)'
      
        'select @mask = '#39'%[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][' +
        '0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9]%'#39
      ''
      'insert #ReportInvoice'
      
        'SELECT  SUBSTRING(invoice.Comment, patindex(@mask, invoice.Comme' +
        'nt), 19)'
      '      ,invoice.TotalGrossPrice'
      '  FROM [eazybusiness].[Report].[Invoice] as invoice'#9#9#9
      ' where patindex(@mask, invoice.Comment)'#9'> 0'
      '/*'
      'insert #ReportInvoice'
      'SELECT case '
      
        '          when charindex('#39'_'#39', Invoice.ExternalSalesOrderNumbers)' +
        ' > 0'
      
        '            then SUBSTRING(Invoice.ExternalSalesOrderNumbers, 1,' +
        ' charindex('#39'_'#39', Invoice.ExternalSalesOrderNumbers)-1) '
      '            else Invoice.ExternalSalesOrderNumbers'
      '        end '
      '      ,invoice.TotalGrossPrice'
      '  from [eazybusiness].[Report].[Invoice] '
      '*/'
      ''
      'insert #ReportInvoiceCorrection '
      '      ( ExternalSalesOrderNumbers'#9
      '       ,TotalGrossPrice)'
      'SELECT case '
      '         when charindex('#39'_'#39', ExternalSalesOrderNumbers) > 0'
      
        '          then SUBSTRING(ExternalSalesOrderNumbers, 1, charindex' +
        '('#39'_'#39', ExternalSalesOrderNumbers)-1) '
      '          else ExternalSalesOrderNumbers'
      '       end'
      '      ,round(TotalGrossPrice, 2)'
      '  FROM eazybusiness.Report.InvoiceCorrection'#9
      ''
      '-- 3 '#1090#1072#1073#1083#1080#1094#1072' SplitInvoiceQuery'
      'update #invoice '
      '   set SplitInvoiceAmount'
      
        '                    = isnull ((SELECT sum(round(invoice.TotalGro' +
        'ssPrice,2))'
      
        '                                 FROM #ReportInvoice (nolock) as' +
        ' invoice'
      
        '                                where #invoice.Bestellnummer = i' +
        'nvoice.ExternalSalesOrderNumbers'
      '                               ), 0)'
      ' from #invoice '
      ''
      'update #invoice '
      '   set SplitInvoiceCount '
      
        '                    = isnull ((SELECT count(invoice.TotalGrossPr' +
        'ice)'
      
        '                                 FROM #ReportInvoice (nolock) as' +
        ' invoice'
      
        '                                where #invoice.Bestellnummer = i' +
        'nvoice.ExternalSalesOrderNumbers'
      '                               ), 0)'
      ' from #invoice '
      'where Belegname='#39'Order'#39' and SplitInvoiceAmount>0;'
      '/*'
      'SELECT '#9#9#9
      #9' invoice.InternalId '#9#9
      #9',invoice.InvoiceNumber as Rechnungsnummer'#9#9
      #9',FORMAT( invoice.CreationDate, '#39'd'#39', '#39'de-de'#39' ) '#39'Datum'#39' '#9#9
      #9',round(invoice.TotalGrossPrice, 2) as BruttoBetrag'#9#9
      #9',invoice.ExternalSalesOrderNumbers -- Bestellnummer'#9#9
      #9',invoice.Comment'#9#9
      '  FROM [eazybusiness].[Report].[Invoice] as invoice'#9#9#9
      ' where Comment like '#39'%:Bestellnummer%'#39#9
      '*/'
      '--'
      ''
      '-- 4 '#1090#1072#1073#1083#1080#1094#1072' Refund Amazon Report'
      '-- '#1080#1079#1084#1077#1085#1077#1085#1086' '#1087#1086' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1102' 15'
      'update #invoice '
      '   set RefundAmazonReportAmount '
      '                     = isnull ((Select sum(Refund.Amount) '
      
        '                                  from [DatevTools100].[dbo].[vR' +
        'efundAmazonReport] Refund'
      
        '                                  where Refund.cInetBestellNr  =' +
        ' #invoice.Bestellnummer                           '
      '                               ), 0)'#9
      ' from #invoice;'
      '/*'
      'update #invoice '
      '   set RefundAmazonReportAmount '
      '                     = isnull ((Select sum(Amount) '
      '                                  from ('
      
        '                                 SELECT round(AmaSettlement.Amou' +
        'nt, 2) as Amount'
      
        '                                   FROM [DatevTools100].[dbo].[v' +
        'Bestellpos] as bestellpos'
      
        '                                   left Join [eazybusiness].[dbo' +
        '].[pf_amazon_settlementpos] as AmaSettlement'
      
        '                                          on bestellpos.corderId' +
        ' = AmaSettlement.OrderID'
      
        '                                  where bestellpos.InvoiceNumber' +
        ' = #invoice.ReNr '
      
        '                                    and TransactionType = '#39'Refun' +
        'd'#39'    '
      
        '                                    and AmountType in ('#39'ItemPric' +
        'e'#39', '#39'Promotion'#39')'
      
        '                                    and AmountDescription in ('#39'P' +
        'rincipal'#39', '#39'Tax'#39', '#39'Shipping'#39', '#39'ShippingTax'#39', '#39'TaxDiscount'#39', '#39'Gif' +
        'tWrap'#39', '#39'Goodwill'#39', '#39'ReturnShipping'#39')'
      '                                          '
      '                                  group by     '
      
        '                                        bestellpos.cInetBestellN' +
        'r'
      '                                       ,bestellpos.cOrderId'
      
        '                                       ,AmaSettlement.Transactio' +
        'nType+'#39'/'#39'+AmaSettlement.AmountType+'#39'/'#39'+AmaSettlement.AmountDescr' +
        'iption'
      '                                       ,AmaSettlement.Amount'
      
        '                                       ,AmaSettlement.OrderItemC' +
        'ode'
      
        '                                 having bestellpos.cOrderId is n' +
        'ot null'
      '                               ) as tmp'
      '                               ), 0)'#9
      ' from #invoice;'
      '--*/'
      ''
      '-- 5 '#1090#1072#1073#1083#1080#1094#1072
      'update #invoice '
      '   set RechnungsKorrekturAmount '
      
        '                    = isnull ((SELECT sum(correctionpos.TotalGro' +
        'ssPrice)*-1'
      
        '                                 FROM [eazybusiness].[Report].[I' +
        'nvoiceCorrection] as correction'#9#9
      
        '                                 LEFT JOIN [eazybusiness].[Repor' +
        't].[InvoiceCorrectionPosition] as correctionpos'#9#9
      
        '                                        on correction.InternalId' +
        ' = correctionpos.InvoiceCorrectionInternalId'#9#9'                  ' +
        '             '#9#9
      
        '                                 LEFT JOIN [eazybusiness].[Repor' +
        't].[Invoice] as invoice'#9#9
      
        '                                        on correction.InvoiceInt' +
        'ernalId = invoice.InternalId'#9#9' '#9#9#9#9
      
        '                                where Invoice.InvoiceNumber = #i' +
        'nvoice.ReNr '#9#9#9#9
      '                               ), 0)'
      ' from #invoice;'
      ''
      ''
      '-- 6 '#1090#1072#1073#1083#1080#1094#1072' #invoice.ReNr '
      'update i '
      '   set i.AllInvoicekorrectionAmount'
      
        '                    = isnull ((SELECT sum(invoice.TotalGrossPric' +
        'e * -1)'
      
        '                                 FROM #ReportInvoiceCorrection (' +
        'nolock) as invoice'
      
        '                                where Invoice.ExternalSalesOrder' +
        'Numbers = i.Bestellnummer       '
      '                               ), 0)'
      ' from #invoice i;'
      ''
      ''
      '-- '#1080#1090#1086#1075#1086#1074#1099#1081' '#1079#1072#1087#1088#1086#1089
      'select '
      '       Belegnummer  '
      '      ,Datum        '
      '      ,Bestellnummer'
      '      ,Belegname    '
      '      ,Marketplace  '
      '      ,ReNr         '
      '      --,sign_type  '
      '      ,case when CHARINDEX('#39'amazon'#39', Marketplace)=0 then 1'
      
        '            when Belegname='#39'Order'#39' and OrderAmazonReportAmount =' +
        ' JLTRechnungbetragAmount then 1'
      
        '            when SplitInvoiceCount > 1 and  OrderAmazonReportAmo' +
        'unt = SplitInvoiceAmount then 1'
      
        '            when Belegname='#39'Order'#39' and (OrderAmazonReportAmount ' +
        '= JLTRechnungbetragAmount + RechnungsKorrekturAmount) then 1 --4' +
        '. a = b + c'
      
        '            when Belegname='#39'Refund'#39' and RefundAmazonReportAmount' +
        ' <> 0 and abs(RefundAmazonReportAmount) = abs(RechnungsKorrektur' +
        'Amount) then 1            '
      
        '            when Belegname='#39'Refund'#39' and RefundAmazonReportAmount' +
        ' = AllInvoicekorrectionAmount then 1'
      
        '            when Belegname='#39'Refund'#39' and OrderAmazonReportAmount ' +
        '<> SplitInvoiceAmount and RefundAmazonReportAmount = 0 and Rechn' +
        'ungsKorrekturAmount <> 0 then 1'
      
        '            when Belegname='#39'Order'#39' and (OrderAmazonReportAmount ' +
        '= SplitInvoiceAmount + AllInvoicekorrectionAmount) then 1 '
      '         else 2'
      '       end sign_type'
      '      ,case when CHARINDEX('#39'amazon'#39', Marketplace)=0 then 1'
      
        '            when Belegname='#39'Order'#39' and OrderAmazonReportAmount =' +
        ' JLTRechnungbetragAmount then 2'
      
        '            when SplitInvoiceCount > 1 and  OrderAmazonReportAmo' +
        'unt = SplitInvoiceAmount then 3'
      
        '            when Belegname='#39'Order'#39' and (OrderAmazonReportAmount ' +
        '= JLTRechnungbetragAmount + RechnungsKorrekturAmount) then 4 --4' +
        '. a = b + c'
      
        '            when Belegname='#39'Refund'#39' and RefundAmazonReportAmount' +
        ' <> 0 and abs(RefundAmazonReportAmount) = abs(RechnungsKorrektur' +
        'Amount) then 5'
      
        '            when Belegname='#39'Refund'#39' and RefundAmazonReportAmount' +
        ' = AllInvoicekorrectionAmount then 6'
      
        '            when Belegname='#39'Refund'#39' and OrderAmazonReportAmount ' +
        '<> SplitInvoiceAmount and RefundAmazonReportAmount = 0 and Rechn' +
        'ungsKorrekturAmount <> 0  and (SplitInvoiceAmount-OrderAmazonRep' +
        'ortAmount-RechnungsKorrekturAmount = 0) then 7'
      
        '            when Belegname='#39'Order'#39' and (OrderAmazonReportAmount ' +
        '= SplitInvoiceAmount + AllInvoicekorrectionAmount) then 8    '
      '         else 0'
      '        end sign_tech'
      
        '       ,case when Belegname='#39'Refund'#39' and RefundAmazonReportAmoun' +
        't <> 0 and abs(RefundAmazonReportAmount) <> abs(RechnungsKorrekt' +
        'urAmount)'
      
        '           then '#39'Hinweis: Es wurde keine Gutsschift '#252'ber Amazon ' +
        'in H'#246'he von '#39' + convert(varchar(255), abs(abs(RechnungsKorrektur' +
        'Amount) - abs(RefundAmazonReportAmount))) + '#39' gefunden. '#39
      '           else '#39#39
      '         end +'
      
        '        case when Belegname='#39'Refund'#39' and RefundAmazonReportAmoun' +
        't <> 0 and abs(RechnungsKorrekturAmount)/abs(RefundAmazonReportA' +
        'mount) = 2'
      
        '           then '#39'Hinweis: es gibt eventuell doppelte Gutschrifte' +
        'n '#39
      '           else '#39#39
      '        end +'
      
        '        case when Belegname='#39'Refund'#39' and OrderAmazonReportAmount' +
        ' = SplitInvoiceAmount and RefundAmazonReportAmount = 0 and Rechn' +
        'ungsKorrekturAmount <> 0'
      
        '           then '#39'Hinweis: Der Artikel wude '#252'ber Amazon nicht ers' +
        'tattet '#39
      '           else '#39#39
      '        end +'
      
        '        case when Belegname='#39'Refund'#39' and OrderAmazonReportAmount' +
        ' <> SplitInvoiceAmount and RefundAmazonReportAmount = 0 and Rech' +
        'nungsKorrekturAmount <> 0'
      
        '           then '#39'Rechnung wurde falsch erstellt. Rechnungskorrek' +
        'tur wurde richtig erstellt '#39
      '           else '#39#39
      '        end sign_comment, '
      
        '        isnull((select count(0) from #invoice where Belegname='#39'O' +
        'rder'#39'), 0) countOrder,'
      
        '        isnull((select count(0) from #invoice where Belegname='#39'R' +
        'efund'#39'), 0) countRefund,'
      '        InvoiceText    '
      '   from #invoice (nolock)'
      '  order by Datum, Belegname;'
      '')
    Left = 332
    Top = 307
    ParamData = <
      item
        Name = 'DATEBEGIN'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATEEND'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end>
    object InvoiceQueryBelegnummer: TStringField
      FieldName = 'Belegnummer'
      Origin = 'Belegnummer'
      Size = 50
    end
    object InvoiceQueryDatum: TDateField
      FieldName = 'Datum'
      Origin = 'Datum'
    end
    object InvoiceQueryBestellnummer: TStringField
      FieldName = 'Bestellnummer'
      Origin = 'Bestellnummer'
      Size = 50
    end
    object InvoiceQueryBelegname: TStringField
      FieldName = 'Belegname'
      Origin = 'Belegname'
      Size = 50
    end
    object InvoiceQueryMarketplace: TStringField
      FieldName = 'Marketplace'
      Origin = 'Marketplace'
      Size = 50
    end
    object InvoiceQueryReNr: TStringField
      FieldName = 'ReNr'
      Origin = 'ReNr'
      Size = 50
    end
    object InvoiceQuerysign_type: TIntegerField
      FieldName = 'sign_type'
      Origin = 'sign_type'
      ReadOnly = True
      Required = True
    end
    object InvoiceQuerysign_tech: TIntegerField
      FieldName = 'sign_tech'
      Origin = 'sign_tech'
      ReadOnly = True
      Required = True
    end
    object InvoiceQuerysign_comment: TStringField
      FieldName = 'sign_comment'
      Origin = 'sign_comment'
      ReadOnly = True
      Size = 502
    end
    object InvoiceQuerycountOrder: TIntegerField
      FieldName = 'countOrder'
      Origin = 'countOrder'
      ReadOnly = True
      Required = True
    end
    object InvoiceQuerycountRefund: TIntegerField
      FieldName = 'countRefund'
      Origin = 'countRefund'
      ReadOnly = True
      Required = True
    end
    object InvoiceQueryInvoiceText: TStringField
      FieldName = 'InvoiceText'
      Size = 4000
    end
  end
  object FDQueryAllInvoicekorrection: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'use eazybusiness; '
      #9
      'SELECT InvoiceCorrectionNumber As Rechnungskorrektur'#9#9#9#9#9
      '      ,CAST(TotalGrossPrice * -1 AS DECIMAL(10,2)) as Brutto'#9#9#9#9
      '      ,InvoiceNumber AS Rechnungsnummer'#9#9#9#9#9
      '      ,FORMAT( CreationDate, '#39'd'#39', '#39'de-de'#39' ) '#39'Datum'#39' '#9#9#9#9#9
      '      ,ExternalSalesOrderNumbers AS Bestellnummer'#9#9#9#9#9
      '  FROM eazybusiness.Report.InvoiceCorrection'#9#9#9#9#9
      ' where case '
      '           when charindex('#39'_'#39', ExternalSalesOrderNumbers) > 0'
      
        '            then SUBSTRING(ExternalSalesOrderNumbers, 1, charind' +
        'ex('#39'_'#39', ExternalSalesOrderNumbers)-1) '
      '            else ExternalSalesOrderNumbers'
      '        end  = :ReNr'#9#9#9' -- '#39'302-1615739-8562731'#39#9
      ' order by CreationDate asc'#9)
    Left = 1329
    Top = 427
    ParamData = <
      item
        Name = 'RENR'
        ParamType = ptInput
      end>
    object FDQueryAllInvoicekorrectionRechnungskorrektur: TStringField
      FieldName = 'Rechnungskorrektur'
      Origin = 'Rechnungskorrektur'
      Size = 50
    end
    object FDQueryAllInvoicekorrectionBrutto: TBCDField
      FieldName = 'Brutto'
      Origin = 'Brutto'
      ReadOnly = True
      Precision = 10
      Size = 2
    end
    object FDQueryAllInvoicekorrectionRechnungsnummer: TStringField
      FieldName = 'Rechnungsnummer'
      Origin = 'Rechnungsnummer'
      Required = True
      Size = 50
    end
    object FDQueryAllInvoicekorrectionDatum: TWideStringField
      FieldName = 'Datum'
      Origin = 'Datum'
      ReadOnly = True
      Size = 4000
    end
    object FDQueryAllInvoicekorrectionBestellnummer: TStringField
      FieldName = 'Bestellnummer'
      Origin = 'Bestellnummer'
      Size = 50
    end
  end
  object DataSourceAllInvoicekorrection: TDataSource
    DataSet = FDQueryAllInvoicekorrection
    Left = 1329
    Top = 475
  end
  object vNotInvoice: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'use eazybusiness; '
      ''
      'declare @dateBegin  datetime,'
      '        @dateEnd    datetime,'
      '        @MaxId      int,'
      '        @MinId      int,'
      '        @i          int'
      ''
      'declare @Invoice as table (InternalId int)'
      ''
      ' select @dateBegin = :dateBegin,'
      '        @dateEnd   = :dateEnd'
      ''
      'SELECT @MinId = min([InternalId]),'
      '       @MaxId = max([InternalId])'
      '  FROM [eazybusiness].[Report].[Invoice]'
      '  where CreationDate between :DATEBEGIN and :DATEEND'
      ''
      'set @i = @MinId'
      ''
      'while @i < @MaxId'
      'begin'
      '  insert @Invoice(InternalId) select @i'
      ''
      '  set @i = @i + 1'
      'end'
      ''
      'SELECT i.InternalId'
      '  FROM @Invoice i'
      '  left join [eazybusiness].[Report].[Invoice] ii '
      '         on ii.InternalId = i.InternalId'
      ' where ii.InternalId is null'
      ' order by InternalId desc'
      ''
      '      ')
    Left = 1201
    Top = 163
    ParamData = <
      item
        Name = 'DATEBEGIN'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATEEND'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end>
    object vNotInvoiceInternalId: TIntegerField
      FieldName = 'InternalId'
      Origin = 'InternalId'
    end
  end
  object DSNotInvoice: TDataSource
    DataSet = vNotInvoice
    Left = 1201
    Top = 219
  end
  object vInvoiceCorrectionNone: TFDQuery
    Connection = DataModule1.FDConnection
    SQL.Strings = (
      'use eazybusiness; '
      ''
      '-- vInvoiceCorrectionNone'
      
        'SELECT FORMAT( AmaSettlement.dErstellt    , '#39'd'#39', '#39'de-de'#39' ) '#39'Datu' +
        'm'#39
      '      ,AmaSettlement.OrderID As Bestellnummer'
      
        '      ,sum(CAST(AmaSettlement.Amount AS DECIMAL(10,2))) as Betra' +
        'g'
      '      ,DatevBestellpos.KindBestellnummer'
      '      ,DatevBestellpos.VaterBestellnummer'
      '      ,invoice.InternalId'
      '      ,invoice.InvoiceNumber as Rechnungsnummer'
      '      ,Case'
      
        '         When Refund.InvoiceCorrectionNumber is Null then '#39'Rechn' +
        'ungskorrektur fehlt'#39
      '         Else Refund.InvoiceCorrectionNumber'
      '       End as Rechnungskorrektur'
      
        '      ,ROW_NUMBER() OVER(PARTITION BY DatevBestellpos.VaterBeste' +
        'llnummer ORDER BY DatevBestellpos.VaterBestellnummer ASC)  as '#39'A' +
        'nzahl VA'#39
      
        ' FROM [eazybusiness].[dbo].[pf_amazon_settlementpos] as AmaSettl' +
        'ement'
      'LEFT JOIN (SELECT cInetBestellNr as VaterBestellnummer'
      '                 ,cOrderId as KindBestellnummer'
      
        '             FROM DatevTools100.dbo.vBestellpos                 ' +
        '       '
      '            group by'
      '                  cInetBestellNr'
      '                 ,cOrderId'
      '           having cOrderId is not null) as DatevBestellpos'
      
        '       ON AmaSettlement.OrderID = DatevBestellpos.KindBestellnum' +
        'mer'
      '                        '
      ' LEFT JOIN eazybusiness.Report.Invoice as invoice'
      
        '        ON DatevBestellpos.VaterBestellnummer = invoice.External' +
        'SalesOrderNumbers                         '
      ' LEFT JOIN [eazybusiness].[Report].[InvoiceCorrection] as Refund'
      '        ON invoice.InternalId = Refund.InvoiceInternalId'
      ' where TransactionType = '#39'Refund'#39
      '            and AmountType in ('#39'ItemPrice'#39', '#39'Promotion'#39')'
      
        '            and AmountDescription in ('#39'Principal'#39', '#39'Tax'#39', '#39'Shipp' +
        'ing'#39', '#39'ShippingTax'#39', '#39'TaxDiscount'#39', '#39'GiftWrap'#39', '#39'Goodwill'#39')'
      '            and Refund.InvoiceCorrectionNumber     is Null'
      
        '            and AmaSettlement.dErstellt between :DATEBEGIN and :' +
        'DATEEND'
      ' Group by                    '
      '       AmaSettlement.dErstellt'
      '      ,AmaSettlement.OrderID'
      '      ,DatevBestellpos.KindBestellnummer'
      '      ,invoice.InvoiceNumber'
      '      ,Refund.InvoiceCorrectionNumber'
      '      ,DatevBestellpos.VaterBestellnummer'
      '      ,invoice.InternalId'
      ' Order by AmaSettlement.dErstellt desc')
    Left = 529
    Top = 251
    ParamData = <
      item
        Name = 'DATEBEGIN'
        ParamType = ptInput
      end
      item
        Name = 'DATEEND'
        ParamType = ptInput
      end>
    object WideStringField1: TWideStringField
      FieldName = 'Datum'
      Origin = 'Datum'
      ReadOnly = True
      Size = 4000
    end
    object StringField1: TStringField
      FieldName = 'Bestellnummer'
      Origin = 'Bestellnummer'
      Size = 30
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'Betrag'
      Origin = 'Betrag'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object StringField2: TStringField
      FieldName = 'KindBestellnummer'
      Origin = 'KindBestellnummer'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'VaterBestellnummer'
      Origin = 'VaterBestellnummer'
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'InternalId'
      Origin = 'InternalId'
    end
    object StringField6: TStringField
      FieldName = 'Rechnungsnummer'
      Origin = 'Rechnungsnummer'
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'Rechnungskorrektur'
      Origin = 'Rechnungskorrektur'
      ReadOnly = True
      Size = 50
    end
    object LargeintField1: TLargeintField
      FieldName = 'Anzahl VA'
      Origin = '[Anzahl VA]'
      ReadOnly = True
    end
  end
  object vInvoiceCorrectionNoneDS: TDataSource
    DataSet = vInvoiceCorrectionNone
    Left = 529
    Top = 299
  end
  object TrayIcon: TTrayIcon
    OnDblClick = TrayIconDblClick
    Left = 41
    Top = 294
  end
  object ApplicationEvents: TApplicationEvents
    OnMinimize = ApplicationEventsMinimize
    Left = 44
    Top = 362
  end
  object FDCommand: TFDCommand
    Connection = DataModule1.FDConnection
    Left = 772
    Top = 74
  end
end
