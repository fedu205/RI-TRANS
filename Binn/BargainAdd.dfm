object fmBargainAdd: TfmBargainAdd
  Left = 0
  Top = 0
  Caption = #1055#1077#1088#1077#1074#1086#1079#1082#1072
  ClientHeight = 708
  ClientWidth = 892
  Color = clBtnFace
  Constraints.MinHeight = 700
  Constraints.MinWidth = 900
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 375
    Width = 892
    Height = 296
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 0
      Width = 892
      Height = 296
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      Properties.Images = fmMain.cxImageList1
      ClientRectBottom = 296
      ClientRectRight = 892
      ClientRectTop = 25
      object cxTabSheet1: TcxTabSheet
        Caption = #1059#1089#1083#1091#1075#1080
        object cxSplitter1: TcxSplitter
          Left = 0
          Top = 137
          Width = 892
          Height = 3
          AlignSplitter = salTop
          Control = Panel3
          Color = 8421631
          ParentColor = False
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 892
          Height = 137
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object cxLabel1: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            Caption = #1059#1089#1083#1091#1075#1080' '#1050#1083#1080#1077#1085#1090
            ParentColor = False
            ParentFont = False
            Style.BorderColor = 6553600
            Style.BorderStyle = ebsSingle
            Style.Color = clRed
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxGrid1: TcxGrid
            Left = 0
            Top = 17
            Width = 892
            Height = 120
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
              PopupMenu = dxBarPopupMenu1
              OnDblClick = dxBarButton8Click
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
              OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
              DataController.DataSource = DS_RateClient
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Filter.Active = True
              DataController.KeyFieldNames = 'rate_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  Column = cxGrid1DBBandedTableView1contract_cod
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid1DBBandedTableView1add_sum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid1DBBandedTableView1add_sum_alt
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              FilterRow.InfoText = #1065#1077#1083#1082#1085#1080#1090#1077' '#1079#1076#1077#1089#1100' '#1076#1083#1103' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1092#1080#1083#1100#1090#1088#1072
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.InvertSelect = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.BandHeaders = False
              OnCustomDrawColumnHeader = cxGrid2DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                  Options.HoldOwnColumnsOnly = True
                end>
              object cxGrid1DBBandedTableView1rate_id: TcxGridDBBandedColumn
                Caption = #8470' '#1079#1072#1087#1080#1089#1080
                DataBinding.FieldName = 'rate_id'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn
                Caption = #1044#1086#1075#1086#1074#1086#1088
                DataBinding.FieldName = 'contract_cod'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
                Caption = #1050#1083#1080#1077#1085#1090
                DataBinding.FieldName = 'firm_customer_name'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1add_count: TcxGridDBBandedColumn
                Caption = #1050#1086#1083'-'#1074#1086
                DataBinding.FieldName = 'add_count'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.000'
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn
                Caption = #1045#1076'.'#1080#1079#1084'.'
                DataBinding.FieldName = 'ed_izm_name'
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1add_sum: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072
                DataBinding.FieldName = 'add_sum'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                Styles.Content = fmMain.cxStyle_Bold
                Styles.Footer = fmMain.cxStyle_Bold
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn
                Caption = #1042#1072#1083#1102#1090#1072
                DataBinding.FieldName = 'brief_name'
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn
                Caption = #1057#1090#1054#1090#1087#1088
                DataBinding.FieldName = 'node_begin_name'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn
                Caption = #1057#1090#1053#1072#1079#1085
                DataBinding.FieldName = 'node_end_name'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn
                Caption = #1043#1088#1091#1079#1045#1058#1057#1053#1043
                DataBinding.FieldName = 'kargoETSNG_name'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1contract_set: TcxGridDBBandedColumn
                DataBinding.FieldName = 'contract_set'
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid1DBBandedTableView1add_sum_alt: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072
                DataBinding.FieldName = 'add_sum_alt'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                Styles.Content = fmMain.cxStyle_Agree_bargain_cod
                Styles.Footer = fmMain.cxStyle_Bold
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1type_add_name: TcxGridDBBandedColumn
                Caption = #1059#1089#1083#1091#1075#1072
                DataBinding.FieldName = 'type_add_name'
                Width = 70
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1type_calc_name: TcxGridDBBandedColumn
                Caption = #1058#1080#1087' '#1088#1072#1089#1095#1077#1090#1072
                DataBinding.FieldName = 'type_calc_name'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBBandedTableView1
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 140
          Width = 892
          Height = 131
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object cxLabel2: TcxLabel
            Left = 0
            Top = 0
            Align = alTop
            Caption = #1059#1089#1083#1091#1075#1080' '#1040#1075#1077#1085#1090
            ParentColor = False
            ParentFont = False
            Style.BorderColor = 6553600
            Style.BorderStyle = ebsSingle
            Style.Color = clGreen
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxGrid2: TcxGrid
            Tag = 1
            Left = 0
            Top = 17
            Width = 892
            Height = 114
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
              Tag = 1
              PopupMenu = dxBarPopupMenu2
              OnDblClick = dxBarButton8Click
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = cxGrid2DBBandedTableView1CustomDrawCell
              OnFocusedItemChanged = cxGrid2DBBandedTableView1FocusedItemChanged
              DataController.DataSource = DS_RateAgent
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Filter.Active = True
              DataController.KeyFieldNames = 'rate_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  Column = cxGrid2DBBandedTableView1contract_cod
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBBandedTableView1add_sum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBBandedTableView1add_sum_alt
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              FilterRow.InfoText = #1065#1077#1083#1082#1085#1080#1090#1077' '#1079#1076#1077#1089#1100' '#1076#1083#1103' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1092#1080#1083#1100#1090#1088#1072
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.InvertSelect = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.BandHeaders = False
              OnCustomDrawColumnHeader = cxGrid2DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                  Options.HoldOwnColumnsOnly = True
                end>
              object cxGrid2DBBandedTableView1rate_id: TcxGridDBBandedColumn
                Caption = #8470' '#1079#1072#1087#1080#1089#1080
                DataBinding.FieldName = 'rate_id'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1contract_cod: TcxGridDBBandedColumn
                Caption = #1044#1086#1075#1086#1074#1086#1088
                DataBinding.FieldName = 'contract_cod'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
                Caption = #1040#1075#1077#1085#1090
                DataBinding.FieldName = 'firm_customer_name'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1add_count: TcxGridDBBandedColumn
                Caption = #1050#1086#1083'-'#1074#1086
                DataBinding.FieldName = 'add_count'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.000'
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn
                Caption = #1045#1076'.'#1080#1079#1084'.'
                DataBinding.FieldName = 'ed_izm_name'
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1add_sum: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072
                DataBinding.FieldName = 'add_sum'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                Styles.Content = fmMain.cxStyle_Bold
                Styles.Footer = fmMain.cxStyle_Bold
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1brief_name: TcxGridDBBandedColumn
                Caption = #1042#1072#1083#1102#1090#1072
                DataBinding.FieldName = 'brief_name'
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1node_begin_name: TcxGridDBBandedColumn
                Caption = #1057#1090#1054#1090#1087#1088
                DataBinding.FieldName = 'node_begin_name'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1node_end_name: TcxGridDBBandedColumn
                Caption = #1057#1090#1053#1072#1079#1085
                DataBinding.FieldName = 'node_end_name'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn
                Caption = #1043#1088#1091#1079#1045#1058#1057#1053#1043
                DataBinding.FieldName = 'kargoETSNG_name'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1contract_set: TcxGridDBBandedColumn
                DataBinding.FieldName = 'contract_set'
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid2DBBandedTableView1add_sum_alt: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072
                DataBinding.FieldName = 'add_sum_alt'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                Styles.Content = fmMain.cxStyle_Agree_bargain_cod
                Styles.Footer = fmMain.cxStyle_Bold
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1type_add_name: TcxGridDBBandedColumn
                Caption = #1059#1089#1083#1091#1075#1072
                DataBinding.FieldName = 'type_add_name'
                Width = 70
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1type_calc_name: TcxGridDBBandedColumn
                Caption = #1058#1080#1087' '#1088#1072#1089#1095#1077#1090#1072
                DataBinding.FieldName = 'type_calc_name'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
            end
            object cxGridLevel1: TcxGridLevel
              Tag = 1
              GridView = cxGrid2DBBandedTableView1
            end
          end
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 671
    Width = 892
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      892
      37)
    object BitBtn2: TBitBtn
      Left = 809
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
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
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 728
      Top = 6
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
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 375
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 892
      Height = 280
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 892
        Height = 86
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          892
          86)
        object Label4: TLabel
          Left = 9
          Top = 41
          Width = 79
          Height = 13
          Caption = #1058#1080#1087' '#1087#1077#1088#1077#1074#1086#1079#1082#1080':'
        end
        object Label18: TLabel
          Left = 9
          Top = 4
          Width = 39
          Height = 13
          Caption = #1050#1083#1080#1077#1085#1090':'
        end
        object Label27: TLabel
          Left = 559
          Top = 4
          Width = 47
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1044#1086#1075#1086#1074#1086#1088':'
        end
        object Label20: TLabel
          Left = 394
          Top = 4
          Width = 137
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
        end
        object Label3: TLabel
          Left = 728
          Top = 41
          Width = 98
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1055#1077#1088#1080#1086#1076' '#1087#1077#1088#1077#1074#1086#1079#1082#1080':'
        end
        object Label6: TLabel
          Left = 565
          Top = 41
          Width = 123
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1052#1077#1089#1103#1094' '#1086#1082#1072#1079#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080':'
        end
        object Label10: TLabel
          Left = 709
          Top = 4
          Width = 67
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077':'
        end
        object Label12: TLabel
          Left = 187
          Top = 41
          Width = 80
          Height = 13
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxLookupComboBox1: TcxLookupComboBox
          Left = 9
          Top = 17
          Anchors = [akLeft, akTop, akRight]
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'contract_id'
          Properties.ListColumns = <
            item
              SortOrder = soAscending
              Width = 200
              FieldName = 'firm_customer_name'
            end
            item
              Width = 100
              FieldName = 'contract_cod'
            end
            item
              Width = 130
              FieldName = 'firm_self_name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DS_Client
          Properties.OnChange = cxLookupComboBox1PropertiesChange
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 0
          Width = 384
        end
        object cxLookupComboBox2: TcxLookupComboBox
          Left = 9
          Top = 55
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 30
          Properties.KeyFieldNames = 'inf_obj_id'
          Properties.ListColumns = <
            item
              FieldName = 'inf_obj_name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DS_TypeBargain
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 3
          Width = 174
        end
        object cxComboBox1: TcxComboBox
          Left = 728
          Top = 55
          Anchors = [akTop, akRight]
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            #1071#1085#1074#1072#1088#1100
            #1060#1077#1074#1088#1072#1083#1100
            #1052#1072#1088#1090
            #1040#1087#1088#1077#1083#1100
            #1052#1072#1081
            #1048#1102#1085#1100
            #1048#1102#1083#1100
            #1040#1074#1075#1091#1089#1090
            #1057#1077#1085#1090#1103#1073#1088#1100
            #1054#1082#1090#1103#1073#1088#1100
            #1053#1086#1103#1073#1088#1100
            #1044#1077#1082#1072#1073#1088#1100)
          Properties.OnChange = cxComboBox1PropertiesChange
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 4
          Text = #1071#1085#1074#1072#1088#1100
          Width = 99
        end
        object cxComboBox2: TcxComboBox
          Left = 827
          Top = 55
          Anchors = [akTop, akRight]
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            '2014'
            '2013'
            '2012'
            '2011'
            '2010'
            '2009'
            '2008'
            '2007'
            '2006'
            '2005'
            '2004'
            '2003'
            '2002'
            '2001')
          Properties.OnChange = cxComboBox1PropertiesChange
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 5
          Text = '2001'
          Width = 59
        end
        object cxButtonEdit13: TcxButtonEdit
          Left = 394
          Top = 17
          Anchors = [akTop, akRight]
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxButtonEdit14PropertiesButtonClick
          Style.Color = clBtnFace
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 1
          Width = 165
        end
        object cxButtonEdit14: TcxButtonEdit
          Left = 559
          Top = 17
          Anchors = [akTop, akRight]
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxButtonEdit14PropertiesButtonClick
          Style.Color = clBtnFace
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 2
          Width = 143
        end
        object cxComboBox3: TcxComboBox
          Left = 565
          Top = 55
          Anchors = [akTop, akRight]
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            #1071#1085#1074#1072#1088#1100
            #1060#1077#1074#1088#1072#1083#1100
            #1052#1072#1088#1090
            #1040#1087#1088#1077#1083#1100
            #1052#1072#1081
            #1048#1102#1085#1100
            #1048#1102#1083#1100
            #1040#1074#1075#1091#1089#1090
            #1057#1077#1085#1090#1103#1073#1088#1100
            #1054#1082#1090#1103#1073#1088#1100
            #1053#1086#1103#1073#1088#1100
            #1044#1077#1082#1072#1073#1088#1100)
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 6
          Text = #1071#1085#1074#1072#1088#1100
          Width = 99
        end
        object cxComboBox4: TcxComboBox
          Left = 664
          Top = 55
          Anchors = [akTop, akRight]
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            '2014'
            '2013'
            '2012'
            '2011'
            '2010'
            '2009'
            '2008'
            '2007'
            '2006'
            '2005'
            '2004'
            '2003'
            '2002'
            '2001')
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 7
          Text = '2001'
          Width = 59
        end
        object cxLookupComboBox4: TcxLookupComboBox
          Left = 704
          Top = 17
          Anchors = [akTop, akRight]
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 30
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'doc_id'
          Properties.ListColumns = <
            item
              FieldName = 'doc_describe'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DS_Agreement
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 8
          Width = 158
        end
        object BitBtn4: TBitBtn
          Left = 864
          Top = 17
          Width = 22
          Height = 22
          Hint = #1055#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
          Anchors = [akTop, akRight]
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            888800000000000088000FFFFFFFFFF080000FFFFFFF000070080FFFFFF07887
            07880FFFFF0788E770880FFFFF08888780880FFFFF08E88780880FFFFF07EE87
            70880FFFFFF0788708880FFFFFFF000088880FFFFFFFFFF088880FFFFFFF0000
            88880FFFFFFF080888880FFFFFFF008888880000000008888888}
          TabOrder = 9
        end
        object cxTextEdit13: TcxTextEdit
          Left = 185
          Top = 55
          ParentFont = False
          Properties.Alignment.Horz = taLeftJustify
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 10
          Width = 333
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 86
        Width = 892
        Height = 104
        Align = alTop
        Caption = #1052#1072#1088#1096#1088#1091#1090
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object cxGrid3: TcxGrid
          Left = 2
          Top = 15
          Width = 888
          Height = 87
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          object cxGridDBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu3
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DS_Distance
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.Active = True
            DataController.KeyFieldNames = 'id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = #1065#1077#1083#1082#1085#1080#1090#1077' '#1079#1076#1077#1089#1100' '#1076#1083#1103' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1092#1080#1083#1100#1090#1088#1072
            OptionsData.Deleting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.InvertSelect = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.BandHeaders = False
            Bands = <
              item
                Options.HoldOwnColumnsOnly = True
              end>
            object cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'id'
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid1DBBandedTableView1add_distance_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'add_distance_id'
              Width = 100
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid1DBBandedTableView1distance_num: TcxGridDBBandedColumn
              Caption = #8470' '#1087'\'#1087
              DataBinding.FieldName = 'distance_num'
              Options.Editing = False
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1node_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'node_id'
              Width = 100
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid1DBBandedTableView1node_name: TcxGridDBBandedColumn
              Tag = 10
              Caption = #1057#1090'.'
              DataBinding.FieldName = 'node_name'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end
                item
                  Glyph.SourceDPI = 96
                  Glyph.Data = {
                    424D460300000000000036000000280000000E0000000E000000010020000000
                    000000000000C40E0000C40E0000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000866E5CCC9077
                    64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                    00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                    86FF634935FF000000000000000000000000000000000000000000000000BB98
                    83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                    35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                    E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                    0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                    EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                    00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                    DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                    000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                    DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                    0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                    FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                    96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                    68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                    FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                    00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                    FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                    000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                    84FF000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000}
                  Kind = bkGlyph
                end>
              Properties.ReadOnly = True
              Properties.OnButtonClick = cxGrid1DBBandedTableView1node_namePropertiesButtonClick
              Width = 157
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1node_cod: TcxGridDBBandedColumn
              Tag = 1
              Caption = #1057#1090'. '#1082#1086#1076
              DataBinding.FieldName = 'node_cod'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end
                item
                  Glyph.SourceDPI = 96
                  Glyph.Data = {
                    424D460300000000000036000000280000000E0000000E000000010020000000
                    000000000000C40E0000C40E0000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000866E5CCC9077
                    64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                    00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                    86FF634935FF000000000000000000000000000000000000000000000000BB98
                    83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                    35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                    E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                    0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                    EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                    00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                    DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                    000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                    DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                    0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                    FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                    96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                    68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                    FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                    00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                    FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                    000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                    84FF000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000}
                  Kind = bkGlyph
                end>
              Properties.ReadOnly = True
              Properties.OnButtonClick = cxGrid1DBBandedTableView1node_codPropertiesButtonClick
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1node_type_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'node_type_id'
              Width = 100
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid1DBBandedTableView1node_type_name: TcxGridDBBandedColumn
              Caption = #1058#1080#1087
              DataBinding.FieldName = 'node_type_name'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end
                item
                  Glyph.SourceDPI = 96
                  Glyph.Data = {
                    424D460300000000000036000000280000000E0000000E000000010020000000
                    000000000000C40E0000C40E0000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000866E5CCC9077
                    64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                    00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                    86FF634935FF000000000000000000000000000000000000000000000000BB98
                    83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                    35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                    E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                    0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                    EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                    00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                    DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                    000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                    DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                    0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                    FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                    96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                    68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                    FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                    00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                    FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                    000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                    84FF000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000}
                  Kind = bkGlyph
                end>
              Properties.ReadOnly = True
              Properties.OnButtonClick = cxGrid1DBBandedTableView1node_type_namePropertiesButtonClick
              Width = 137
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1state_name: TcxGridDBBandedColumn
              Caption = #1057#1090#1088#1072#1085#1072
              DataBinding.FieldName = 'state_name'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end
                item
                  Glyph.SourceDPI = 96
                  Glyph.Data = {
                    424D460300000000000036000000280000000E0000000E000000010020000000
                    000000000000C40E0000C40E0000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000866E5CCC9077
                    64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                    00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                    86FF634935FF000000000000000000000000000000000000000000000000BB98
                    83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                    35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                    E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                    0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                    EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                    00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                    DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                    000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                    DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                    0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                    FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                    96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                    68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                    FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                    00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                    FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                    000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                    84FF000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000}
                  Kind = bkGlyph
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView1state_namePropertiesButtonClick
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1state_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'state_id'
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView1road_name: TcxGridDBBandedColumn
              Caption = #1044#1086#1088#1086#1075#1072
              DataBinding.FieldName = 'road_name'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end
                item
                  Glyph.SourceDPI = 96
                  Glyph.Data = {
                    424D460300000000000036000000280000000E0000000E000000010020000000
                    000000000000C40E0000C40E0000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000866E5CCC9077
                    64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                    00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                    86FF634935FF000000000000000000000000000000000000000000000000BB98
                    83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                    35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                    E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                    0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                    EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                    00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                    DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                    000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                    DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                    0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                    FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                    96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                    68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                    FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                    00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                    FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                    000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                    84FF000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000}
                  Kind = bkGlyph
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView1road_namePropertiesButtonClick
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1road_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'road_id'
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBBandedTableView1
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 190
        Width = 892
        Height = 90
        Align = alClient
        Caption = #1043#1088#1091#1079
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        DesignSize = (
          892
          90)
        object Label11: TLabel
          Left = 10
          Top = 19
          Width = 89
          Height = 13
          Caption = #1045#1058#1057#1053#1043'..................'
        end
        object Label14: TLabel
          Left = 51
          Top = 41
          Width = 114
          Height = 13
          Caption = #1048#1079' '#1087#1086#1076' '#1075#1088#1091#1079#1072'................'
          Enabled = False
        end
        object cxCheckBox4: TcxCheckBox
          Left = 4
          Top = 62
          Caption = #1043#1053#1043'.............'
          Properties.Alignment = taLeftJustify
          Properties.OnEditValueChanged = cxCheckBox4PropertiesEditValueChanged
          TabOrder = 8
        end
        object cxButtonEdit5: TcxButtonEdit
          Left = 57
          Top = 12
          Anchors = [akLeft, akTop, akRight]
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end
            item
              Glyph.SourceDPI = 96
              Glyph.Data = {
                424D460300000000000036000000280000000E0000000E000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000866E5CCC9077
                64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                86FF634935FF000000000000000000000000000000000000000000000000BB98
                83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                84FF000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000}
              Kind = bkGlyph
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxButtonEdit5PropertiesButtonClick
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 0
          Width = 630
        end
        object cxButtonEdit6: TcxButtonEdit
          Tag = 1
          Left = 689
          Top = 12
          Anchors = [akTop, akRight]
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end
            item
              Glyph.SourceDPI = 96
              Glyph.Data = {
                424D460300000000000036000000280000000E0000000E000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000866E5CCC9077
                64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                86FF634935FF000000000000000000000000000000000000000000000000BB98
                83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                84FF000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000}
              Kind = bkGlyph
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxButtonEdit5PropertiesButtonClick
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 1
          Width = 91
        end
        object cxButtonEdit7: TcxButtonEdit
          Tag = 1
          Left = 783
          Top = 60
          Anchors = [akTop, akRight]
          Enabled = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end
            item
              Glyph.SourceDPI = 96
              Glyph.Data = {
                424D460300000000000036000000280000000E0000000E000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000866E5CCC9077
                64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                86FF634935FF000000000000000000000000000000000000000000000000BB98
                83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                84FF000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000}
              Kind = bkGlyph
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxButtonEdit8PropertiesButtonClick
          Style.Color = clBtnFace
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 7
          Width = 103
        end
        object cxButtonEdit8: TcxButtonEdit
          Left = 57
          Top = 60
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end
            item
              Glyph.SourceDPI = 96
              Glyph.Data = {
                424D460300000000000036000000280000000E0000000E000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000866E5CCC9077
                64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                86FF634935FF000000000000000000000000000000000000000000000000BB98
                83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                84FF000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000}
              Kind = bkGlyph
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxButtonEdit8PropertiesButtonClick
          Style.Color = clBtnFace
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 6
          Width = 723
        end
        object cxTextEdit14: TcxTextEdit
          Left = 783
          Top = 12
          Anchors = [akTop, akRight]
          Properties.Alignment.Horz = taLeftJustify
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 2
          Width = 103
        end
        object cxButtonEdit11: TcxButtonEdit
          Left = 124
          Top = 36
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end
            item
              Glyph.SourceDPI = 96
              Glyph.Data = {
                424D460300000000000036000000280000000E0000000E000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000866E5CCC9077
                64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                86FF634935FF000000000000000000000000000000000000000000000000BB98
                83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                84FF000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000}
              Kind = bkGlyph
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxButtonEdit11PropertiesButtonClick
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 3
          Width = 563
        end
        object cxButtonEdit12: TcxButtonEdit
          Tag = 1
          Left = 689
          Top = 36
          Anchors = [akTop, akRight]
          Enabled = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end
            item
              Glyph.SourceDPI = 96
              Glyph.Data = {
                424D460300000000000036000000280000000E0000000E000000010020000000
                000000000000C40E0000C40E0000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000866E5CCC9077
                64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                86FF634935FF000000000000000000000000000000000000000000000000BB98
                83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                84FF000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000}
              Kind = bkGlyph
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxButtonEdit11PropertiesButtonClick
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 4
          Width = 91
        end
        object cxTextEdit16: TcxTextEdit
          Left = 783
          Top = 36
          Anchors = [akTop, akRight]
          Properties.Alignment.Horz = taLeftJustify
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 5
          Width = 103
        end
      end
    end
    object Panel9: TPanel
      Left = 0
      Top = 280
      Width = 892
      Height = 95
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object cxGroupBox5: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Style.BorderStyle = ebs3D
        TabOrder = 0
        Height = 95
        Width = 892
        object Label13: TLabel
          Left = 227
          Top = 17
          Width = 107
          Height = 13
          Caption = #1050#1083#1080#1077#1085#1090'......................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 227
          Top = 67
          Width = 104
          Height = 13
          Caption = #1050#1086#1084#1080#1089#1089#1080#1103'.................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 10
          Top = 18
          Width = 150
          Height = 13
          Caption = #1050#1086#1083'-'#1074#1086' '#1090#1086#1085#1085'......................'
        end
        object Label17: TLabel
          Left = 227
          Top = 42
          Width = 122
          Height = 13
          Caption = #1056#1072#1089#1093#1086#1076#1099'.......................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 460
          Top = 17
          Width = 23
          Height = 13
          Caption = 'USD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 515
          Top = 17
          Width = 119
          Height = 13
          Caption = #1042#1072#1083#1102#1090#1072'....................'
        end
        object Label21: TLabel
          Left = 460
          Top = 42
          Width = 23
          Height = 13
          Caption = 'USD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 10
          Top = 68
          Width = 136
          Height = 13
          Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085'/'#1089#1091#1090#1082#1080'.........'
        end
        object Label23: TLabel
          Left = 460
          Top = 67
          Width = 23
          Height = 13
          Caption = 'USD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 10
          Top = 43
          Width = 163
          Height = 13
          Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074'.....................'
        end
        object cxCurrencyEdit1: TcxCurrencyEdit
          Left = 313
          Top = 11
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 0
          Width = 144
        end
        object cxCurrencyEdit15: TcxCurrencyEdit
          Left = 124
          Top = 37
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 1
          Width = 95
        end
        object cxCurrencyEdit16: TcxCurrencyEdit
          Left = 124
          Top = 62
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 2
          Width = 95
        end
        object cxCurrencyEdit2: TcxCurrencyEdit
          Left = 313
          Top = 61
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 3
          Width = 144
        end
        object cxCurrencyEdit3: TcxCurrencyEdit
          Left = 124
          Top = 12
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = '#,##0.000'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 4
          Width = 95
        end
        object cxCurrencyEdit4: TcxCurrencyEdit
          Left = 313
          Top = 36
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          Style.Color = clBtnFace
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clGreen
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 5
          Width = 144
        end
        object cxLookupComboBox3: TcxLookupComboBox
          Left = 601
          Top = 10
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'currency_id'
          Properties.ListColumns = <
            item
              FieldName = 'brief_name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DS_Currency
          Properties.OnEditValueChanged = cxLookupComboBox3PropertiesEditValueChanged
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 6
          Width = 75
        end
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102)
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = fmMain.cxImageList1
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 608
    Top = 88
    PixelsPerInch = 96
    object dxBarButton7: TdxBarButton
      Caption = #1057#1090#1072#1074#1082#1072' '#1079#1072' '#1074#1072#1075#1086#1085'...'
      Category = 0
      Hint = #1057#1090#1072#1074#1082#1072' '#1079#1072' '#1074#1072#1075#1086#1085
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton7Click
    end
    object dxBarButton8: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = dxBarButton9Click
    end
    object dxBarButton1: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1040#1073#1089#1086#1083#1102#1090#1085#1072#1103' '#1074#1077#1083#1080#1095#1080#1085#1072'...'
      Category = 0
      Hint = #1040#1073#1089#1086#1083#1102#1090#1085#1072#1103' '#1074#1077#1083#1080#1095#1080#1085#1072
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1045#1076#1080#1085#1072#1103' '#1089#1090#1072#1074#1082#1072' '#1079#1072' '#1091#1089#1083#1091#1075#1091'...'
      Category = 0
      Hint = #1045#1076#1080#1085#1072#1103' '#1089#1090#1072#1074#1082#1072' '#1079#1072' '#1091#1089#1083#1091#1075#1091
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' -> '#1074' '#1040#1075#1077#1085#1090#1072
      Category = 0
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' -> '#1074' '#1040#1075#1077#1085#1090#1072
      Visible = ivAlways
      ImageIndex = 18
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = #1050#1086#1085#1090#1077#1081#1085#1077#1088#1085#1072#1103' '#1091#1089#1083#1091#1075#1072'...'
      Category = 0
      Hint = #1050#1086#1085#1090#1077#1081#1085#1077#1088#1085#1072#1103' '#1091#1089#1083#1091#1075#1072
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1064#1080#1087#1087#1080#1085#1075'...'
      Category = 0
      Hint = #1064#1080#1087#1087#1080#1085#1075
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton6Click
    end
    object dxBarButton10: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
    end
    object dxBarButton12: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
    end
    object dxBarButton13: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Tag = 1
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end>
    end
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
      end
      item
        Component = Panel1
        Properties.Strings = (
          'Height')
      end
      item
        Component = Panel3
        Properties.Strings = (
          'Height')
      end
      item
        Component = Panel4
        Properties.Strings = (
          'Height')
      end>
    StorageName = '\Software\LIS1\BargainAdd'
    StorageType = stRegistry
    Left = 696
    Top = 96
  end
  object Query_Client: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Filtered = True
    Parameters = <
      item
        Name = 'date_current'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM view_contract_rights  '
      'WHERE '
      'type_contract = 0'
      
        'AND :date_current  BETWEEN (date_begin - (day(date_begin) - 1)) ' +
        'AND (dateadd(mm, 1, date_end) - day(dateadd(mm, 1, date_end)))'
      'ORDER BY firm_customer_name')
    Left = 284
    Top = 106
  end
  object DS_Client: TDataSource
    DataSet = Query_Client
    Left = 310
    Top = 117
  end
  object Query_TypeBargain: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM inf_obj'
      
        'WHERE type_inf_id = 1 AND dbo.GetInfObjVisible(str_group_visible' +
        ') = 1'
      'ORDER BY inf_obj_name')
    Left = 376
    Top = 124
  end
  object DS_TypeBargain: TDataSource
    DataSet = Query_TypeBargain
    Left = 406
    Top = 133
  end
  object DS_Currency: TDataSource
    DataSet = Query_Currency
    Left = 630
    Top = 181
  end
  object Query_Currency: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM currency '
      'WHERE currency_id IN (1, 3, 5, 6)'
      'ORDER BY currency_id')
    Left = 600
    Top = 172
  end
  object ClientDS_BargainRail: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 296
    object ClientDS_BargainRailid: TAutoIncField
      FieldName = 'id'
    end
    object ClientDS_BargainRailadd_id: TIntegerField
      FieldName = 'add_id'
    end
    object ClientDS_BargainRailbargain_rail_id: TIntegerField
      FieldName = 'bargain_rail_id'
    end
    object ClientDS_BargainRailbargain_add_id: TIntegerField
      FieldName = 'bargain_add_id'
    end
    object ClientDS_BargainRailcalc_round_weight: TIntegerField
      FieldName = 'calc_round_weight'
    end
    object ClientDS_BargainRailcalc_kargo_min_norm: TCurrencyField
      FieldName = 'calc_kargo_min_norm'
    end
    object ClientDS_BargainRailcalc_set_grp: TBooleanField
      FieldName = 'calc_set_grp'
    end
    object ClientDS_BargainRailkargoETSNG_id: TIntegerField
      FieldName = 'kargoETSNG_id'
    end
    object ClientDS_BargainRailkargoETSNG_cod: TStringField
      FieldName = 'kargoETSNG_cod'
      Size = 10
    end
    object ClientDS_BargainRailkargoETSNG_name: TStringField
      FieldName = 'kargoETSNG_name'
      Size = 200
    end
    object ClientDS_BargainRailkargoETSNG_add_id: TIntegerField
      FieldName = 'kargoETSNG_add_id'
    end
    object ClientDS_BargainRailkargoETSNG_add_cod: TStringField
      FieldName = 'kargoETSNG_add_cod'
      Size = 10
    end
    object ClientDS_BargainRailkargoETSNG_add_name: TStringField
      FieldName = 'kargoETSNG_add_name'
      Size = 200
    end
    object ClientDS_BargainRailkargoGNG_id: TIntegerField
      FieldName = 'kargoGNG_id'
    end
    object ClientDS_BargainRailkargoGNG_cod: TStringField
      FieldName = 'kargoGNG_cod'
    end
    object ClientDS_BargainRailkargoGNG_name: TStringField
      FieldName = 'kargoGNG_name'
      Size = 200
    end
    object ClientDS_BargainRailstate_begin_id: TIntegerField
      FieldName = 'state_begin_id'
    end
    object ClientDS_BargainRailstate_begin_cod: TStringField
      FieldName = 'state_begin_cod'
    end
    object ClientDS_BargainRailstate_begin_name: TStringField
      FieldName = 'state_begin_name'
      Size = 200
    end
    object ClientDS_BargainRailstate_end_id: TIntegerField
      FieldName = 'state_end_id'
    end
    object ClientDS_BargainRailstate_end_cod: TStringField
      FieldName = 'state_end_cod'
      Size = 10
    end
    object ClientDS_BargainRailstate_end_name: TStringField
      FieldName = 'state_end_name'
      Size = 200
    end
    object ClientDS_BargainRailnode_begin_id: TIntegerField
      FieldName = 'node_begin_id'
    end
    object ClientDS_BargainRailnode_begin_cod: TStringField
      FieldName = 'node_begin_cod'
      Size = 10
    end
    object ClientDS_BargainRailnode_begin_name: TStringField
      FieldName = 'node_begin_name'
      Size = 200
    end
    object ClientDS_BargainRailnode_end_id: TIntegerField
      FieldName = 'node_end_id'
    end
    object ClientDS_BargainRailnode_end_cod: TStringField
      FieldName = 'node_end_cod'
      Size = 10
    end
    object ClientDS_BargainRailnode_end_name: TStringField
      FieldName = 'node_end_name'
      Size = 200
    end
    object ClientDS_BargainRailcit_id: TIntegerField
      FieldName = 'cit_id'
    end
    object ClientDS_BargainRailtype_kontener_id: TIntegerField
      FieldName = 'type_kontener_id'
    end
    object ClientDS_BargainRailset_attr_self: TBooleanField
      FieldName = 'set_attr_self'
    end
    object ClientDS_BargainRailcount_vagon: TCurrencyField
      FieldName = 'count_vagon'
    end
    object ClientDS_BargainRailcount_weight: TCurrencyField
      FieldName = 'count_weight'
    end
    object ClientDS_BargainRailcount_day_vagon: TCurrencyField
      FieldName = 'count_day_vagon'
    end
    object ClientDS_BargainRailtelegram_num: TStringField
      FieldName = 'telegram_num'
      Size = 200
    end
    object ClientDS_BargainRailpay_other_road: TStringField
      FieldName = 'pay_other_road'
      Size = 200
    end
    object ClientDS_BargainRailfirm_sender_id: TIntegerField
      FieldName = 'firm_sender_id'
    end
    object ClientDS_BargainRailfirm_sender_name: TStringField
      FieldName = 'firm_sender_name'
      Size = 200
    end
    object ClientDS_BargainRailfirm_reciever_id: TIntegerField
      FieldName = 'firm_reciever_id'
    end
    object ClientDS_BargainRailfirm_reciever_name: TStringField
      FieldName = 'firm_reciever_name'
      Size = 200
    end
    object ClientDS_BargainRailkargoETSNG_group_name: TStringField
      FieldName = 'kargoETSNG_group_name'
      Size = 200
    end
    object ClientDS_BargainRailset_list_rate: TBooleanField
      FieldName = 'set_list_rate'
    end
  end
  object ClientDS_Bargain: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 488
    object AutoIncField1: TAutoIncField
      FieldName = 'id'
    end
    object ClientDS_Bargaincontract_id: TIntegerField
      FieldName = 'contract_id'
    end
    object ClientDS_Bargaintype_bargain_id: TIntegerField
      FieldName = 'type_bargain_id'
    end
    object ClientDS_Bargaincurrency_id: TIntegerField
      FieldName = 'currency_id'
    end
    object ClientDS_BargainkargoGNG_id: TIntegerField
      FieldName = 'kargoGNG_id'
    end
    object ClientDS_BargainkargoGNG_cod: TStringField
      FieldName = 'kargoGNG_cod'
      Size = 10
    end
    object ClientDS_BargainkargoGNG_name: TStringField
      FieldName = 'kargoGNG_name'
      Size = 200
    end
    object ClientDS_BargainkargoETSNG_id: TIntegerField
      FieldName = 'kargoETSNG_id'
    end
    object ClientDS_BargainkargoETSNG_cod: TStringField
      FieldName = 'kargoETSNG_cod'
    end
    object ClientDS_BargainkargoETSNG_name: TStringField
      FieldName = 'kargoETSNG_name'
      Size = 200
    end
    object ClientDS_BargainkargoETSNG_group_name: TStringField
      FieldName = 'kargoETSNG_group_name'
      Size = 200
    end
    object ClientDS_BargainkargoETSNG_add_id: TIntegerField
      FieldName = 'kargoETSNG_add_id'
    end
    object ClientDS_BargainkargoETSNG_add_cod: TStringField
      FieldName = 'kargoETSNG_add_cod'
    end
    object ClientDS_BargainkargoETSNG_add_name: TStringField
      FieldName = 'kargoETSNG_add_name'
      Size = 200
    end
    object ClientDS_Bargainstate_begin_id: TIntegerField
      FieldName = 'state_begin_id'
    end
    object ClientDS_Bargainstate_begin_name: TStringField
      FieldName = 'state_begin_name'
      Size = 200
    end
    object ClientDS_Bargainstate_end_id: TIntegerField
      FieldName = 'state_end_id'
    end
    object ClientDS_Bargainstate_end_name: TStringField
      FieldName = 'state_end_name'
      Size = 200
    end
    object ClientDS_Bargainnode_begin_id: TIntegerField
      FieldName = 'node_begin_id'
    end
    object ClientDS_Bargainnode_begin_cod: TStringField
      FieldName = 'node_begin_cod'
    end
    object ClientDS_Bargainnode_begin_name: TStringField
      FieldName = 'node_begin_name'
      Size = 200
    end
    object ClientDS_Bargainnode_end_id: TIntegerField
      FieldName = 'node_end_id'
    end
    object ClientDS_Bargainnode_end_cod: TStringField
      FieldName = 'node_end_cod'
    end
    object ClientDS_Bargainnode_end_name: TStringField
      FieldName = 'node_end_name'
      Size = 200
    end
    object ClientDS_Bargaindate_period: TDateField
      FieldName = 'date_period'
    end
    object ClientDS_Bargaincount_day_vagon: TCurrencyField
      FieldName = 'count_day_vagon'
    end
    object ClientDS_Bargaincount_vagon: TCurrencyField
      FieldName = 'count_vagon'
    end
    object ClientDS_Bargaincount_weight: TCurrencyField
      FieldName = 'count_weight'
    end
  end
  object DS_RateClient: TDataSource
    DataSet = ClientDS_RateClient
    Left = 632
    Top = 440
  end
  object ClientDS_RateClient: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 440
    object ClientDS_RateClientrate_id: TIntegerField
      FieldName = 'rate_id'
    end
    object ClientDS_RateClientcontract_cod: TStringField
      FieldName = 'contract_cod'
    end
    object ClientDS_RateClientfirm_customer_name: TStringField
      FieldName = 'firm_customer_name'
      Size = 200
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'add_count'
    end
    object ClientDS_RateCliented_izm_name: TStringField
      FieldName = 'ed_izm_name'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'add_rate'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'add_sum'
    end
    object ClientDS_RateClientbrief_name: TStringField
      FieldName = 'brief_name'
    end
    object StringField11: TStringField
      FieldName = 'node_begin_name'
      Size = 200
    end
    object StringField13: TStringField
      FieldName = 'node_end_name'
      Size = 200
    end
    object StringField2: TStringField
      FieldName = 'kargoETSNG_name'
      Size = 200
    end
    object ClientDS_RateClientcontract_set: TIntegerField
      FieldName = 'contract_set'
    end
    object ClientDS_RateClientadd_sum_alt: TCurrencyField
      FieldName = 'add_sum_alt'
    end
    object ClientDS_RateClienttype_add_name: TStringField
      FieldName = 'type_add_name'
      Size = 200
    end
    object ClientDS_RateClienttype_calc_name: TStringField
      FieldName = 'type_calc_name'
      Size = 50
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarSubItem1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 264
    Top = 456
    PixelsPerInch = 96
  end
  object DS_RateAgent: TDataSource
    DataSet = ClientDS_RateAgent
    Left = 472
    Top = 584
  end
  object ClientDS_RateAgent: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 584
    object IntegerField1: TIntegerField
      FieldName = 'rate_id'
    end
    object StringField1: TStringField
      FieldName = 'contract_cod'
    end
    object StringField3: TStringField
      FieldName = 'firm_customer_name'
      Size = 200
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'add_count'
    end
    object StringField4: TStringField
      FieldName = 'ed_izm_name'
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'add_rate'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'add_sum'
    end
    object StringField5: TStringField
      FieldName = 'brief_name'
    end
    object StringField6: TStringField
      FieldName = 'node_begin_name'
      Size = 200
    end
    object StringField7: TStringField
      FieldName = 'node_end_name'
      Size = 200
    end
    object StringField8: TStringField
      FieldName = 'kargoETSNG_name'
      Size = 200
    end
    object ClientDS_RateAgentcontract_set: TIntegerField
      FieldName = 'contract_set'
    end
    object ClientDS_RateAgentadd_sum_alt: TCurrencyField
      FieldName = 'add_sum_alt'
    end
    object ClientDS_RateAgenttype_add_name: TStringField
      FieldName = 'type_add_name'
      Size = 200
    end
    object ClientDS_RateAgenttype_calc_name: TStringField
      FieldName = 'type_calc_name'
      Size = 50
    end
  end
  object dxBarPopupMenu2: TdxBarPopupMenu
    Tag = 1
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarSubItem2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 112
    Top = 568
    PixelsPerInch = 96
  end
  object ClientDS_Bargain_AddDistance: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 800
    Top = 472
    object ClientDS_Bargain_AddDistanceid: TAutoIncField
      FieldName = 'id'
    end
    object ClientDS_Bargain_AddDistanceadd_id: TIntegerField
      FieldName = 'add_id'
    end
    object ClientDS_Bargain_AddDistanceadd_distance_id: TIntegerField
      FieldName = 'add_distance_id'
    end
    object ClientDS_Bargain_AddDistancedistance_num: TIntegerField
      FieldName = 'distance_num'
    end
    object ClientDS_Bargain_AddDistancenode_id: TIntegerField
      FieldName = 'node_id'
    end
    object ClientDS_Bargain_AddDistancenode_name: TStringField
      FieldName = 'node_name'
      Size = 200
    end
    object ClientDS_Bargain_AddDistancenode_cod: TStringField
      FieldName = 'node_cod'
      Size = 10
    end
    object ClientDS_Bargain_AddDistancenode_type_id: TIntegerField
      FieldName = 'node_type_id'
    end
    object ClientDS_Bargain_AddDistancenode_type_name: TStringField
      FieldName = 'node_type_name'
      Size = 100
    end
    object ClientDS_Bargain_AddDistanceglobal_id: TIntegerField
      FieldName = 'global_id'
    end
    object ClientDS_Bargain_AddDistancestate_id: TIntegerField
      FieldName = 'state_id'
    end
    object ClientDS_Bargain_AddDistancestate_name: TStringField
      FieldName = 'state_name'
      Size = 30
    end
    object ClientDS_Bargain_AddDistanceroad_id: TIntegerField
      FieldName = 'road_id'
    end
    object ClientDS_Bargain_AddDistanceroad_name: TStringField
      FieldName = 'road_name'
      Size = 30
    end
  end
  object ClientDS_Bargain_AddPayers: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 800
    Top = 416
    object AutoIncField4: TAutoIncField
      FieldName = 'id'
    end
    object ClientDS_Bargain_AddPayers_add_id: TIntegerField
      FieldName = 'add_id'
    end
    object ClientDS_Bargain_AddPayersadd_payers_id: TIntegerField
      FieldName = 'add_payers_id'
    end
    object ClientDS_Bargain_AddPayersfirm_id: TIntegerField
      FieldName = 'firm_id'
    end
    object ClientDS_Bargain_AddPayersstate_id: TIntegerField
      FieldName = 'state_id'
    end
    object ClientDS_Bargain_AddPayersfirm_name: TStringField
      FieldName = 'firm_name'
      Size = 200
    end
    object ClientDS_Bargain_AddPayersstate_name: TStringField
      FieldName = 'state_name'
      Size = 200
    end
    object ClientDS_Bargain_AddPayersglobal_id: TIntegerField
      FieldName = 'global_id'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 72
    Top = 91
    PixelsPerInch = 96
    object cxStyle_Bold: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle_AgreeFactInc_Between: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle_AgreeFactInc_Sum: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14141181
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle_AgreeFactInc_AddProfit: TcxStyle
      AssignedValues = [svColor]
      Color = 12315124
    end
    object cxStyle_ClientFrahtCard_Rashod: TcxStyle
      AssignedValues = [svColor]
      Color = 15132390
    end
    object cxStyle_ClientFrahtCard_Profitt: TcxStyle
      AssignedValues = [svColor]
      Color = 13756410
    end
    object cxStyle_AgreeFact: TcxStyle
      AssignedValues = [svColor]
      Color = 14286550
    end
    object cxStyle_Agree_bargain_cod: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 11599867
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle_Orders_cod: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle_BoldBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlue
    end
    object cxStyle_ClientFrahtCard_Rashod_RUB: TcxStyle
      AssignedValues = [svColor]
      Color = 12517375
    end
    object cxStyle_BalanceOrders: TcxStyle
      AssignedValues = [svColor]
      Color = 16765650
    end
    object cxStyle_Comiss_USD: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15132390
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle_Comiss_RUB: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12517375
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle_Sum_USD: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 549388222
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle_Sum_RUB: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12517375
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle_Sum_EUR: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16768220
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle_Sum_CHF: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 551345372
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle_Sum_Client: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyle_Sum_Agent: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clGreen
    end
    object cxStyle_Sum_Comiss: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlue
    end
    object cxStyle_ID: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = 5263440
    end
    object cxStyle_Docs_Status: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15723006
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
  end
  object Query_Agreement: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Filtered = True
    Parameters = <
      item
        Name = 'contract_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT doc_id, global_id, doc_describe, doc_cod '
      'FROM view_doc_blob'
      'WHERE ISNUMERIC(doc_type_cod) = 1 AND doc_type_cod in (1, 2) '
      'AND global_id = :contract_id'
      '')
    Left = 773
    Top = 6
  end
  object DS_Agreement: TDataSource
    DataSet = Query_Agreement
    Left = 795
    Top = 15
  end
  object ClientDS_BargainAdd: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'ClientDS_BargainAddIndex2'
        Fields = 'bargain_add_id'
      end>
    IndexName = 'ClientDS_BargainAddIndex2'
    Params = <>
    StoreDefs = True
    Left = 608
    Top = 248
    object ClientDS_BargainAddadd_id: TAutoIncField
      FieldName = 'add_id'
    end
    object ClientDS_BargainAddbargain_add_id: TIntegerField
      FieldName = 'bargain_add_id'
    end
    object ClientDS_BargainAddbargain_id: TIntegerField
      FieldName = 'bargain_id'
    end
    object ClientDS_BargainAddtype_add_id: TIntegerField
      FieldName = 'type_add_id'
    end
    object ClientDS_BargainAddcontract_id: TIntegerField
      FieldName = 'contract_id'
    end
    object ClientDS_BargainAddcurrency_id: TIntegerField
      FieldName = 'currency_id'
    end
    object ClientDS_BargainAddtype_nds_id: TIntegerField
      FieldName = 'type_nds_id'
    end
    object ClientDS_BargainAdded_izm_id: TIntegerField
      FieldName = 'ed_izm_id'
    end
    object ClientDS_BargainAddservice_id: TIntegerField
      FieldName = 'service_id'
    end
    object ClientDS_BargainAddadd_sum: TCurrencyField
      FieldName = 'add_sum'
    end
    object ClientDS_BargainAddadd_count: TCurrencyField
      FieldName = 'add_count'
    end
    object ClientDS_BargainAddcomment: TStringField
      FieldName = 'comment'
      Size = 200
    end
    object ClientDS_BargainAddtype_contract: TIntegerField
      FieldName = 'type_contract'
    end
    object ClientDS_BargainAddcontract_set: TIntegerField
      FieldName = 'contract_set'
    end
    object ClientDS_BargainAddset_include_nds: TBooleanField
      FieldName = 'set_include_nds'
    end
    object ClientDS_BargainAddtype_nds_cod: TStringField
      FieldName = 'type_nds_cod'
      Size = 10
    end
    object ClientDS_BargainAdded_izm_cod: TStringField
      FieldName = 'ed_izm_cod'
      Size = 10
    end
    object ClientDS_BargainAddexchange_USD_val: TCurrencyField
      FieldName = 'exchange_USD_val'
    end
    object ClientDS_BargainAddexchange_EUR_val: TCurrencyField
      FieldName = 'exchange_EUR_val'
    end
    object ClientDS_BargainAddexchange_CHF_val: TCurrencyField
      FieldName = 'exchange_CHF_val'
    end
    object ClientDS_BargainAddcontract_cod: TStringField
      FieldName = 'contract_cod'
    end
    object ClientDS_BargainAdded_izm_name: TStringField
      FieldName = 'ed_izm_name'
    end
    object ClientDS_BargainAddfirm_customer_name: TStringField
      FieldName = 'firm_customer_name'
      Size = 60
    end
    object ClientDS_BargainAddtype_add_name: TStringField
      FieldName = 'type_add_name'
      Size = 50
    end
    object ClientDS_BargainAddbrief_name: TStringField
      FieldName = 'brief_name'
    end
    object ClientDS_BargainAddadd_sum_alt: TCurrencyField
      FieldName = 'add_sum_alt'
    end
    object ClientDS_BargainAddbrief_name_alt: TStringField
      FieldName = 'brief_name_alt'
    end
    object ClientDS_BargainAddtype_exchange_id: TIntegerField
      FieldName = 'type_exchange_id'
    end
    object ClientDS_BargainAddtype_calc_id: TIntegerField
      FieldName = 'type_calc_id'
    end
    object ClientDS_BargainAddadd_rate: TCurrencyField
      FieldName = 'add_rate'
    end
    object ClientDS_BargainAddtype_calc_name: TStringField
      FieldName = 'type_calc_name'
      Size = 200
    end
    object ClientDS_BargainAdddate_period: TDateTimeField
      FieldName = 'date_period'
    end
    object ClientDS_BargainAdddate_period_finance: TDateTimeField
      FieldName = 'date_period_finance'
    end
    object ClientDS_BargainAdddate_period_service: TDateTimeField
      FieldName = 'date_period_service'
    end
    object ClientDS_BargainAddservice_kind_id: TIntegerField
      FieldName = 'service_kind_id'
    end
    object ClientDS_BargainAddservice_kind: TStringField
      FieldName = 'service_kind'
      Size = 200
    end
    object ClientDS_BargainAddservice_kind_inv: TStringField
      FieldName = 'service_kind_inv'
      Size = 200
    end
    object ClientDS_BargainAddservice_kind_rep_id: TIntegerField
      FieldName = 'service_kind_rep_id'
    end
    object ClientDS_BargainAddservice_kind_rep: TStringField
      FieldName = 'service_kind_rep'
      Size = 200
    end
    object ClientDS_BargainAddservice_kind_rep_inv: TStringField
      FieldName = 'service_kind_rep_inv'
      Size = 200
    end
  end
  object ClientDS_BargainFact: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 800
    Top = 352
    object AutoIncField3: TAutoIncField
      FieldName = 'id'
    end
    object ClientDS_BargainFactadd_id: TIntegerField
      FieldName = 'add_id'
    end
    object ClientDS_BargainFactbargain_fact_id: TIntegerField
      FieldName = 'bargain_fact_id'
    end
    object ClientDS_BargainFactfact_id: TIntegerField
      FieldName = 'fact_id'
    end
    object ClientDS_BargainFactbargain_add_id: TIntegerField
      FieldName = 'bargain_add_id'
    end
    object ClientDS_BargainFactfact_rate_not_nds: TCurrencyField
      FieldName = 'fact_rate_not_nds'
    end
    object ClientDS_BargainFactfact_rate: TCurrencyField
      FieldName = 'fact_rate'
    end
    object ClientDS_BargainFactfact_count: TCurrencyField
      FieldName = 'fact_count'
    end
    object ClientDS_BargainFactfact_sum: TCurrencyField
      FieldName = 'fact_sum'
    end
    object ClientDS_BargainFacttype_vagon_id: TIntegerField
      FieldName = 'type_vagon_id'
    end
    object ClientDS_BargainFacttype_vagon_name: TStringField
      FieldName = 'type_vagon_name'
      Size = 30
    end
    object ClientDS_BargainFacttype_send_id: TIntegerField
      FieldName = 'type_send_id'
    end
    object ClientDS_BargainFacttype_send_name: TStringField
      FieldName = 'type_send_name'
      Size = 30
    end
    object ClientDS_BargainFactset_main: TIntegerField
      FieldName = 'set_main'
    end
    object ClientDS_BargainFactexchange_date: TDateField
      FieldName = 'exchange_date'
    end
  end
  object ClientDS_Fact: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 344
    object ClientDS_Factfact_id: TIntegerField
      FieldName = 'fact_id'
    end
    object ClientDS_Factbargain_id: TIntegerField
      FieldName = 'bargain_id'
    end
    object ClientDS_Factnum_document: TStringField
      FieldName = 'num_document'
      Size = 101
    end
    object ClientDS_Factnum_document_pref: TStringField
      FieldName = 'num_document_pref'
      Size = 3
    end
    object ClientDS_Factnum_vagon: TIntegerField
      FieldName = 'num_vagon'
    end
    object ClientDS_Factnum_konten: TStringField
      FieldName = 'num_konten'
      Size = 21
    end
    object ClientDS_Factsub_cod_self: TStringField
      FieldName = 'sub_cod_self'
      Size = 16
    end
    object ClientDS_Factdate_from_to: TDateTimeField
      FieldName = 'date_from_to'
    end
    object ClientDS_Factdatpr: TDateTimeField
      FieldName = 'datpr'
    end
    object ClientDS_Facttype_kontener_name: TStringField
      FieldName = 'type_kontener_name'
      Size = 801
    end
    object ClientDS_Factfact_weight: TCurrencyField
      FieldName = 'fact_weight'
    end
    object ClientDS_Factcalc_weight: TCurrencyField
      FieldName = 'calc_weight'
    end
    object ClientDS_Facttransport_pay: TCurrencyField
      FieldName = 'transport_pay'
    end
    object ClientDS_Factnds: TCurrencyField
      FieldName = 'nds'
    end
    object ClientDS_Factfirm_info_name: TStringField
      FieldName = 'firm_info_name'
      Size = 101
    end
    object ClientDS_Factcalc_weight_check: TBooleanField
      FieldName = 'calc_weight_check'
    end
    object ClientDS_Factxml_reply_id: TIntegerField
      FieldName = 'xml_reply_id'
    end
    object ClientDS_Factfolder: TStringField
      FieldName = 'folder'
      Size = 101
    end
    object ClientDS_Factfact_etran_comment: TStringField
      FieldName = 'fact_etran_comment'
      Size = 256
    end
    object ClientDS_Factfact_users_comment: TStringField
      FieldName = 'fact_users_comment'
      Size = 256
    end
    object ClientDS_Factglobal_color: TIntegerField
      FieldName = 'global_color'
    end
    object ClientDS_Factdate_ready: TDateTimeField
      FieldName = 'date_ready'
    end
    object ClientDS_Factnode_begin_name: TStringField
      FieldName = 'node_begin_name'
      Size = 51
    end
    object ClientDS_Factnode_end_name: TStringField
      FieldName = 'node_end_name'
      Size = 51
    end
    object ClientDS_Factdate_delivery: TDateTimeField
      FieldName = 'date_delivery'
    end
    object ClientDS_Factetran_owner_name: TStringField
      FieldName = 'etran_owner_name'
      Size = 256
    end
    object ClientDS_Factbargain_new_id: TIntegerField
      FieldName = 'bargain_new_id'
    end
    object ClientDS_Factset_main: TBooleanField
      FieldName = 'set_main'
    end
    object ClientDS_Factkargo_capacity: TCurrencyField
      FieldName = 'kargo_capacity'
    end
  end
  object ClientDS_BargainRate: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 800
    Top = 304
    object AutoIncField2: TAutoIncField
      FieldName = 'id'
    end
    object ClientDS_BargainRateadd_id: TIntegerField
      FieldName = 'add_id'
    end
    object ClientDS_BargainRatebargain_rate_id: TIntegerField
      FieldName = 'bargain_rate_id'
    end
    object ClientDS_BargainRatebargain_add_id: TIntegerField
      FieldName = 'bargain_add_id'
    end
    object ClientDS_BargainRatetype_vagon_id: TIntegerField
      FieldName = 'type_vagon_id'
    end
    object ClientDS_BargainRatetype_vagon_name: TStringField
      FieldName = 'type_vagon_name'
      Size = 30
    end
    object ClientDS_BargainRatetype_send_id: TIntegerField
      FieldName = 'type_send_id'
    end
    object ClientDS_BargainRatetype_send_name: TStringField
      FieldName = 'type_send_name'
      Size = 30
    end
    object ClientDS_BargainRateweight: TCurrencyField
      FieldName = 'weight'
    end
    object ClientDS_BargainRaterate_val: TCurrencyField
      FieldName = 'rate_val'
    end
    object ClientDS_BargainRateset_one: TBooleanField
      FieldName = 'set_one'
    end
  end
  object dxBarPopupMenu3: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton13'
      end>
    UseOwnFont = False
    Left = 184
    Top = 144
    PixelsPerInch = 96
  end
  object ClientDS_Distance: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 152
    object AutoIncField5: TAutoIncField
      FieldName = 'id'
    end
    object IntegerField3: TIntegerField
      FieldName = 'add_distance_id'
    end
    object IntegerField4: TIntegerField
      FieldName = 'distance_num'
    end
    object IntegerField5: TIntegerField
      FieldName = 'node_id'
    end
    object StringField9: TStringField
      FieldName = 'node_name'
      Size = 200
    end
    object StringField10: TStringField
      FieldName = 'node_cod'
      Size = 10
    end
    object IntegerField6: TIntegerField
      FieldName = 'node_type_id'
    end
    object StringField12: TStringField
      FieldName = 'node_type_name'
      Size = 100
    end
    object IntegerField7: TIntegerField
      FieldName = 'global_id'
    end
    object IntegerField8: TIntegerField
      FieldName = 'state_id'
    end
    object StringField14: TStringField
      FieldName = 'state_name'
      Size = 30
    end
    object IntegerField9: TIntegerField
      FieldName = 'road_id'
    end
    object StringField15: TStringField
      FieldName = 'road_name'
      Size = 30
    end
    object ClientDS_Distancenode_type_cod: TStringField
      FieldName = 'node_type_cod'
      Size = 5
    end
  end
  object DS_Distance: TDataSource
    DataSet = ClientDS_Distance
    Left = 80
    Top = 168
  end
end
