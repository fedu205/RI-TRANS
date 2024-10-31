object fmECPPassport: TfmECPPassport
  Left = 0
  Top = 0
  Caption = #1055#1072#1089#1087#1086#1088#1090' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  ClientHeight = 577
  ClientWidth = 923
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 923
    Height = 67
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 234
      Height = 13
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'..........................................'
    end
    object Label2: TLabel
      Left = 8
      Top = 39
      Width = 194
      Height = 13
      Caption = #1054#1050#1055#1054'.........................................'
    end
    object cxTextEdit1: TcxTextEdit
      Left = 88
      Top = 7
      Style.Shadow = False
      TabOrder = 0
      OnKeyPress = cxTextEdit1KeyPress
      Width = 369
    end
    object cxButton1: TcxButton
      Left = 463
      Top = 19
      Width = 75
      Height = 25
      Caption = #1055#1086#1080#1089#1082
      LookAndFeel.Kind = lfStandard
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        0000000000007412000074120000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        01020000000004030305040302070806040D00000000866651D6A4775AFF955F
        3FFF8F5839FF8E5739FF73391CE80603020C00000000040302069E745AEB855A
        41E19E6C4EFF925B3CFF8A5131FF692D0CEE00000000B6917BFFFCFAFAFFE3C8
        B8FFCDA38CFFB9805FFF7E4020FF000000000000000006040309AB7E62FFEFE6
        E2FFE0C6BAFFD0A993FFAF7553FF874927FF00000000B6917BFFFCFAFAFFE3C8
        B8FFCDA38CFFB9805FFF7E4020FF000000000000000000000000AB7E62FFF1E8
        E5FFEBE2DFFFDDBFAFFFBC896CFF864A29FF00000000B6917BFFFCFAFAFFE3C8
        B8FFCDA38CFFB9805FFF7E4020FF000000000000000000000000AB7E62FFF1E8
        E5FFEBE2DFFFDDBFAFFFBC896CFF864A29FF00000000BD9A86FFFEFDFDFFF5E8
        E1FFE4C8B8FFCD9E84FF7E4020FF000000000000000000000000AB7E62FFF1E8
        E5FFEBE2DFFFDDBFAFFFBC896CFF864A29FF00000000B19482EFB0856CFF9F6B
        4EFF915331FF874929FF844626FF7C3917FF6C2E0EDFAE8770FF9F6B4EFF9154
        31FF8A4B29FF7C3D1CFF773714FF8D5536F9000000005D4D437BB08972FFFFFF
        FFFFE7D2C7FFCBA28BFFA66C4DFF7E3C17FF54423878B28D76FFE6D9D2FFECD8
        CDFFCAA089FFAC7655FF7C3B18FF5945397E0000000004030305B9927CFFF7F0
        EAFFFDF6F0FFF0D5C4FFB57F5FFF874826FF612A0DCAB28D76FFFFFFFFFFFBF6
        F3FFEED2C1FFAD7656FF874724FF0000000000000000000000000D0A0812B995
        7FFFAC7E63FF9B6649FF8C4F2DFF945A3BFF804B2EDAA87B63FFB28970FFA372
        57FF874A28FF844421FF0C09071200000000000000000000000000000000BA96
        7FFFFBF9F8FFDEC3B1FFC39175FF854421FF00000001BA967FFFFBF9F8FFDFC4
        B2FFD0A287FF864624FF00000000000000000000000000000000000000009177
        67BFB7917AFF9D6B4FFF8B4F30FF7B4427EB00000000C4A591FFB7917AFF9D6B
        4FFF8B4F30FF7B4427EB00000000000000000000000000000000000000000000
        0000633C28ABF9F4F1FF682B0BE2010000020000000001000002633C28ABF9F4
        F1FF682B0BE20000000000000000000000000000000000000000000000000000
        0000A98B79DFA37E68EA7B4A2FDD000000000000000000000000917767BFA37E
        68EA7B4A2FDD0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxTextEdit2: TcxTextEdit
      Left = 88
      Top = 32
      Style.Shadow = False
      TabOrder = 2
      OnKeyPress = cxTextEdit1KeyPress
      Width = 369
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 67
    Width = 923
    Height = 469
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 2
      Top = 2
      Width = 919
      Height = 465
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.ScrollbarMode = sbmClassic
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        OnDblClick = cxGrid1DBBandedTableView1DblClick
        OnKeyPress = cxGrid1DBBandedTableView1KeyPress
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
        OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
        DataController.DataSource = DS_Passport
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.HeaderHeight = 35
        OptionsView.BandHeaders = False
        OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
        OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
        Bands = <
          item
          end>
        object cxGrid1DBBandedTableView1orgID: TcxGridDBBandedColumn
          Caption = #1048#1044' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
          DataBinding.FieldName = 'orgID'
          HeaderAlignmentVert = vaTop
          Width = 69
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1orgOKPO: TcxGridDBBandedColumn
          Caption = #1054#1050#1055#1054
          DataBinding.FieldName = 'orgOKPO'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1orgINN: TcxGridDBBandedColumn
          Caption = #1048#1053#1053
          DataBinding.FieldName = 'orgINN'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1orgKpp: TcxGridDBBandedColumn
          Caption = #1050#1055#1055
          DataBinding.FieldName = 'orgKpp'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1orgName: TcxGridDBBandedColumn
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          DataBinding.FieldName = 'orgName'
          HeaderAlignmentVert = vaTop
          Width = 227
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1orgShortName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'orgShortName'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1orgType: TcxGridDBBandedColumn
          Caption = #1058#1080#1087' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
          DataBinding.FieldName = 'orgType'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1addressID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'addressID'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1addressType: TcxGridDBBandedColumn
          DataBinding.FieldName = 'addressType'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1addressText: TcxGridDBBandedColumn
          Caption = #1040#1076#1088#1077#1089
          DataBinding.FieldName = 'addressText'
          HeaderAlignmentVert = vaTop
          Width = 409
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1addressTGNL: TcxGridDBBandedColumn
          Caption = #1058#1043#1053#1051
          DataBinding.FieldName = 'addressTGNL'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1addressPostInd: TcxGridDBBandedColumn
          Caption = #1048#1085#1076#1077#1082#1089
          DataBinding.FieldName = 'addressPostInd'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1ADR_COUNTRY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ADR_COUNTRY'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1ADR_REGION: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ADR_REGION'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1ADR_CITYTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ADR_CITYTYPE'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1ADR_CITY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ADR_CITY'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1ADR_STREET: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ADR_STREET'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1ADR_BUILDING: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ADR_BUILDING'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1ADR_FLAT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ADR_FLAT'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1ADR_NOTES: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ADR_NOTES'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1source_name: TcxGridDBBandedColumn
          Caption = #1048#1089#1090#1086#1095#1085#1080#1082
          DataBinding.FieldName = 'source_name'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBBandedTableView1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 536
    Width = 923
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      923
      41)
    object BitBtn2: TBitBtn
      Left = 749
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000610B0000610B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E5005A1E1E00783C3C0096646400C8969600FFC8C800465F
        82005591B9006EB9D7008CD2E600B4E6F000D8E9EC0099A8AC00646F7100E2EF
        F100C56A31000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE180C
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEE2DFEEEEEEEEEEEEEEEEEEEEEEEEEE181212
        0CEEEEEEEEEEEEEEEEEEEEEEEEE28181DFEEEEEEEEEEEEEEEEEEEEEE18121212
        120CEEEEEEEEEEEEEEEEEEEEE281818181DFEEEEEEEEEEEEEEEEEE1812121212
        12120CEEEEEEEEEEEEEEEEE2818181818181DFEEEEEEEEEEEEEEEE1812120C18
        1212120CEEEEEEEEEEEEEEE28181DFE2818181DFEEEEEEEEEEEEEE18120CEEEE
        181212120CEEEEEEEEEEEEE281DFEEEEE2818181DFEEEEEEEEEEEE180CEEEEEE
        EE181212120CEEEEEEEEEEE2DFEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEEEE
        EEEE181212120CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEE
        EEEEEE181212120CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEE
        EEEEEEEE1812120CEEEEEEEEEEEEEEEEEEEEEEEEE28181DFEEEEEEEEEEEEEEEE
        EEEEEEEEEE18120CEEEEEEEEEEEEEEEEEEEEEEEEEEE281DFEEEEEEEEEEEEEEEE
        EEEEEEEEEEEE180CEEEEEEEEEEEEEEEEEEEEEEEEEEEEE2DFEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 830
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000610B0000610B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E5005A1E1E00783C3C0096646400C8969600FFC8C800465F
        82005591B9006EB9D7008CD2E600B4E6F000D8E9EC0099A8AC00646F7100E2EF
        F100C56A31000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEB46C6C6CEE
        EEEEEEEEB46C6C6CEEEEEEE2DFDFDFEEEEEEEEEEE2DFDFDFEEEEEEB49090906C
        EEEEEEB49090906CEEEEEEE2818181DFEEEEEEE2818181DFEEEEEEEEB4909090
        6CEEB49090906CEEEEEEEEEEE2818181DFEEE2818181DFEEEEEEEEEEEEB49090
        906C9090906CEEEEEEEEEEEEEEE2818181DF818181DFEEEEEEEEEEEEEEEEB490
        909090906CEEEEEEEEEEEEEEEEEEE28181818181DFEEEEEEEEEEEEEEEEEEEEB4
        9090906CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEEEEB490
        909090906CEEEEEEEEEEEEEEEEEEE28181818181DFEEEEEEEEEEEEEEEEB49090
        906C9090906CEEEEEEEEEEEEEEE2818181DF818181DFEEEEEEEEEEEEB4909090
        6CEEB49090906CEEEEEEEEEEE2818181DFEEE2818181DFEEEEEEEEB49090906C
        EEEEEEB49090906CEEEEEEE2818181DFEEEEEEE2818181DFEEEEEEB4B4B4B4EE
        EEEEEEEEB4B4B4B4EEEEEEE2E2E2E2EEEEEEEEEEE2E2E2E2EEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object DS_Passport: TDataSource
    DataSet = ClientDS_Passport
    Left = 299
    Top = 179
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width'
          'WindowState')
      end>
    StorageName = '\Software\Lis1\ECPPassport'
    StorageType = stRegistry
    Left = 240
    Top = 104
  end
  object ClientDS_Passport: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 179
    object ClientDS_Passportid: TAutoIncField
      FieldName = 'id'
    end
    object ClientDS_PassportorgName: TStringField
      FieldName = 'orgName'
      Size = 250
    end
    object ClientDS_PassportorgID: TIntegerField
      FieldName = 'orgID'
    end
    object ClientDS_PassportorgINN: TStringField
      FieldName = 'orgINN'
      Size = 250
    end
    object ClientDS_PassportorgKpp: TStringField
      FieldName = 'orgKpp'
      Size = 250
    end
    object ClientDS_PassportorgShortName: TStringField
      FieldName = 'orgShortName'
      Size = 250
    end
    object ClientDS_PassportorgType: TStringField
      FieldName = 'orgType'
      Size = 250
    end
    object ClientDS_PassportaddressID: TStringField
      FieldName = 'addressID'
      Size = 250
    end
    object ClientDS_PassportaddressType: TStringField
      FieldName = 'addressType'
      Size = 250
    end
    object ClientDS_PassportaddressText: TStringField
      FieldName = 'addressText'
      Size = 250
    end
    object ClientDS_PassportaddressTGNL: TStringField
      FieldName = 'addressTGNL'
      Size = 250
    end
    object ClientDS_PassportaddressPostInd: TStringField
      FieldName = 'addressPostInd'
      Size = 250
    end
    object ClientDS_PassportADR_COUNTRY: TStringField
      FieldName = 'ADR_COUNTRY'
      Size = 250
    end
    object ClientDS_PassportADR_REGION: TStringField
      FieldName = 'ADR_REGION'
      Size = 250
    end
    object ClientDS_PassportADR_CITYTYPE: TStringField
      FieldName = 'ADR_CITYTYPE'
      Size = 250
    end
    object ClientDS_PassportADR_CITY: TStringField
      FieldName = 'ADR_CITY'
      Size = 250
    end
    object ClientDS_PassportADR_STREET: TStringField
      FieldName = 'ADR_STREET'
      Size = 250
    end
    object ClientDS_PassportADR_BUILDING: TStringField
      FieldName = 'ADR_BUILDING'
      Size = 250
    end
    object ClientDS_PassportADR_FLAT: TStringField
      FieldName = 'ADR_FLAT'
      Size = 250
    end
    object ClientDS_PassportADR_NOTES: TStringField
      FieldName = 'ADR_NOTES'
      Size = 250
    end
    object ClientDS_PassportorgOKPO: TStringField
      FieldName = 'orgOKPO'
      Size = 250
    end
    object ClientDS_Passportsource_name: TStringField
      FieldName = 'source_name'
    end
    object ClientDS_PassportADR_PHONE: TStringField
      FieldName = 'ADR_PHONE'
      Size = 100
    end
  end
end
