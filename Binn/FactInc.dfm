object fmFactInc: TfmFactInc
  Left = 272
  Top = 75
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1053#1072#1088#1072#1089#1090#1072#1102#1097#1080#1081' '#1092#1072#1082#1090' '#1087#1086' '#1078'/'#1076
  ClientHeight = 627
  ClientWidth = 1136
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020000001000400E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    0000800000000080000080800000000080008000800000808000C0C0C0008080
    8000FF00000000FF0000FFFF00000000FF00FF00FF0000FFFF00FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000007FFF000000007FFF00000000000000070000F00000070000F000000
    00000007000000F00007000000F0000000000070000000070070000000070000
    000000700070000700700070000700000000007000F70007007000F700070000
    008888780000008788780000008700000000000F00000078000F000000700000
    00000000F80087800000F80087000000000000088FFF788888888FFF70080000
    0088880888888888888888800088000000888808787878787878787008800000
    0078880777777777777777700880000007F77787777777777777777008880000
    077FF787F7F7F7F7F7F7F770000000000077FF8FFFFFFFFFFFFFFF7000000000
    00077F8FFF88FFFFFFFFFF80088800000000778000008F7F7F7F780088880000
    0000078000008777777780088888000000000000800000000000008888880000
    0000000080000000000000000000000000000000800000000008888888880000
    0000000080000000000000000000000000000000800000000000000000000000
    0000008880000000000000000000000000000087880000000000000000000000
    0000008788000000000000000000000000000087880000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFF87F8701F03F0381E00E00C0000000E0000000F0000000F800
    0000FE000000FC000000FC000000F8000000F8000000F8000000F8000000F800
    0000FC000000FE000000FF000000FF800000FFF1FF00FFF1FF00FFF1FE00FFF1
    FFFFFFF1FFFFFFC07FFFFFC07FFFFFC07FFFFFC07FFFFFFFFFFFFFFFFFFF}
  OnClose = FormClose
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 444
    Width = 1136
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Color = 8421631
    ParentColor = False
    ExplicitLeft = -1
    ExplicitTop = 497
  end
  object Panel2: TPanel
    Left = 0
    Top = 26
    Width = 1136
    Height = 418
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 23
      Width = 1134
      Height = 394
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        PopupMenu = PopupMenu1
        OnDblClick = N1Click
        OnKeyPress = cxGrid1DBBandedTableView1KeyPress
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
        OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
        OnFocusedRecordChanged = cxGrid1DBBandedTableView1FocusedRecordChanged
        DataController.DataSource = DS_FactInc
        DataController.Filter.OnChanged = cxGrid1DBBandedTableView1DataControllerFilterChanged
        DataController.KeyFieldNames = 'fact_inc_id'
        DataController.Summary.DefaultGroupSummaryItems = <
          item
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0'
            Kind = skCount
            FieldName = 'fact_inc_id'
            Column = cxGrid1DBBandedTableView1id_uch
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            FieldName = 'itog'
            Column = cxGrid1DBBandedTableView1itog
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'fkv'
            Column = cxGrid1DBBandedTableView1fkv
          end
          item
            Format = '#,##0.000'
            Kind = skSum
            FieldName = 'vg'
            Column = cxGrid1DBBandedTableView1vg
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'grp'
            Column = cxGrid1DBBandedTableView1grp
          end
          item
            Format = '#,##0'
            Kind = skSum
            FieldName = 'grves'
            Column = cxGrid1DBBandedTableView1grves
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,#0.00'
            Kind = skSum
            Column = cxGrid1DBBandedTableView1itogr
          end
          item
            Format = '#,#0.00'
            Kind = skSum
            Column = cxGrid1DBBandedTableView1itog_ndsr
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
                Column = cxGrid1DBBandedTableView1fact_inc_id
              end
              item
                Column = cxGrid1DBBandedTableView1bargain_id
              end
              item
                Column = cxGrid1DBBandedTableView1bargain_cod
              end
              item
                Column = cxGrid1DBBandedTableView1brief_name
              end
              item
                Column = cxGrid1DBBandedTableView1id_uch
              end
              item
                Column = cxGrid1DBBandedTableView1max_load_id
              end
              item
                Column = cxGrid1DBBandedTableView1ndser
              end
              item
                Column = cxGrid1DBBandedTableView1dataot
              end
              item
                Column = cxGrid1DBBandedTableView1datpr
              end
              item
                Column = cxGrid1DBBandedTableView1free_fact_text
              end
              item
                Column = cxGrid1DBBandedTableView1free_fact
              end
              item
                Column = cxGrid1DBBandedTableView1FIO_free_fact
              end
              item
                Column = cxGrid1DBBandedTableView1FIO_users_owner
              end
              item
                Column = cxGrid1DBBandedTableView1users_owner_id
              end
              item
                Column = cxGrid1DBBandedTableView1sto_name
              end
              item
                Column = cxGrid1DBBandedTableView1stn_name
              end
              item
                Column = cxGrid1DBBandedTableView1gruz_name
              end
              item
                Column = cxGrid1DBBandedTableView1podkod
              end
              item
                Column = cxGrid1DBBandedTableView1rodv
              end
              item
                Column = cxGrid1DBBandedTableView1ndnum
              end
              item
                Column = cxGrid1DBBandedTableView1nvag
              end
              item
                Column = cxGrid1DBBandedTableView1fsob_name
              end>
            SummaryItems = <
              item
                Format = #1050#1086#1083'-'#1074#1086': 0'
                Kind = skCount
                Column = cxGrid1DBBandedTableView1fact_inc_id
              end
              item
                Format = 'C'#1091#1084#1084#1072': #,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1itog
                Sorted = True
              end
              item
                Format = #1060'.'#1074#1077#1089': '
                Kind = skSum
                Column = cxGrid1DBBandedTableView1vg
              end
              item
                Format = #1056'.'#1074#1077#1089': 0'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1grves
              end>
          end>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.HeaderHeight = 35
        OptionsView.BandHeaders = False
        OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
        Bands = <
          item
          end>
        object cxGrid1DBBandedTableView1fact_inc_id: TcxGridDBBandedColumn
          Caption = #8470' '#1079#1072#1087#1080#1089#1080
          DataBinding.FieldName = 'fact_inc_id'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'bargain_id'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 60
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1id_uch: TcxGridDBBandedColumn
          Caption = #1059#1095'.'#1085#1086#1084#1077#1088
          DataBinding.FieldName = 'id_uch'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn
          Caption = #1042#1072#1083#1102#1090#1072
          DataBinding.FieldName = 'brief_name'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn
          Caption = #1054#1090#1074#1077#1090#1089#1074#1077#1085#1085#1099#1081
          DataBinding.FieldName = 'FIO_users_owner'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 64
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1bargain_cod: TcxGridDBBandedColumn
          Caption = #8470' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
          DataBinding.FieldName = 'bargain_cod'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
          Caption = #1050#1083#1080#1077#1085#1090
          DataBinding.FieldName = 'firm_customer_name'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1date_period_month: TcxGridDBBandedColumn
          Caption = #1052#1077#1089#1103#1094' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
          DataBinding.FieldName = 'date_period_month'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1date_period_year: TcxGridDBBandedColumn
          Caption = #1043#1086#1076' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
          DataBinding.FieldName = 'date_period_year'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 45
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1date_period_finance_name: TcxGridDBBandedColumn
          Caption = #1060#1080#1085'. '#1084#1077#1089#1103#1094' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
          DataBinding.FieldName = 'date_period_finance_name'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1ndser: TcxGridDBBandedColumn
          Caption = #1057#1077#1088#1053#1072#1082#1083
          DataBinding.FieldName = 'ndser'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 32
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1ndnum: TcxGridDBBandedColumn
          Caption = #8470' '#1085#1072#1082#1083'.'
          DataBinding.FieldName = 'ndnum'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1nvag: TcxGridDBBandedColumn
          Caption = #8470' '#1074#1072#1075'.'
          DataBinding.FieldName = 'nvag'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 61
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1fkat: TcxGridDBBandedColumn
          Caption = #1054#1090#1087#1088#1072#1074#1082#1072
          DataBinding.FieldName = 'fkat'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 0
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1fkv: TcxGridDBBandedColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'fkv'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1grp: TcxGridDBBandedColumn
          Caption = #1043'/'#1087
          DataBinding.FieldName = 'grp'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1dataot: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072' '#1054#1090#1087#1088'.'
          DataBinding.FieldName = 'dataot'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 55
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1datpr: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072' '#1055#1088#1080#1073'.'
          DataBinding.FieldName = 'datpr'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1vg: TcxGridDBBandedColumn
          Caption = #1060'.'#1074#1077#1089
          DataBinding.FieldName = 'vg'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '##0.000'
          HeaderAlignmentVert = vaTop
          Width = 53
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1grves: TcxGridDBBandedColumn
          Caption = #1056'.'#1074#1077#1089
          DataBinding.FieldName = 'grves'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 41
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1nkont: TcxGridDBBandedColumn
          Caption = #8470' '#1082#1086#1085#1090
          DataBinding.FieldName = 'nkont'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1free_fact_text: TcxGridDBBandedColumn
          Caption = #1058#1077#1082#1089#1090' '#1087#1088#1077#1090#1077#1085#1079#1080#1080
          DataBinding.FieldName = 'free_fact_text'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1free_fact: TcxGridDBBandedColumn
          Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1103
          DataBinding.FieldName = 'free_fact'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayGrayed = '0'
          Properties.NullStyle = nssUnchecked
          HeaderAlignmentHorz = taRightJustify
          HeaderAlignmentVert = vaTop
          HeaderGlyph.SourceDPI = 96
          HeaderGlyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00000000FF000000FFFFFFFF00FFFFFF00000000FF0000
            00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00000000FF000000FFFFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FFFFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000FF000000FFFFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00000000FFFFFFFF00000000FF000000FFFFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00000000FF000000FFFFFFFF00FFFFFF00000000FF0000
            00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          Width = 34
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1FIO_free_fact: TcxGridDBBandedColumn
          Caption = #1048#1079#1084#1077#1085#1103#1083
          DataBinding.FieldName = 'FIO_free_fact'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1sto_name: TcxGridDBBandedColumn
          Caption = #1057#1090'.'#1054#1090#1087#1088'.'
          DataBinding.FieldName = 'sto_name'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 72
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1stn_name: TcxGridDBBandedColumn
          Caption = #1057#1090'.'#1053#1072#1079#1085'.'
          DataBinding.FieldName = 'stn_name'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1gruz_name: TcxGridDBBandedColumn
          Caption = #1043#1088#1091#1079#1045#1058#1057#1053#1043
          DataBinding.FieldName = 'gruz_name'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1podkod: TcxGridDBBandedColumn
          Caption = #1055#1086#1076#1082#1086#1076
          DataBinding.FieldName = 'podkod'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 51
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1itog: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'itog'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          HeaderAlignmentVert = vaTop
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1itogr: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072' RUB'
          DataBinding.FieldName = 'itogr'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_AgreeFactInc_Sum
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1rodv: TcxGridDBBandedColumn
          Caption = #1056#1086#1076#1055'/'#1057
          DataBinding.FieldName = 'rodv'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1fsob_name: TcxGridDBBandedColumn
          Caption = #1052#1055#1057'/'#1057#1055#1057
          DataBinding.FieldName = 'fsob_name'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1max_load_id: TcxGridDBBandedColumn
          Caption = #1052#1077#1089#1103#1094' '#1079#1072#1075#1088#1091#1079#1082#1080
          DataBinding.FieldName = 'max_load_id'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 60
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'users_owner_id'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1type_self: TcxGridDBBandedColumn
          DataBinding.FieldName = 'type_self'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1type_info: TcxGridDBBandedColumn
          DataBinding.FieldName = 'type_info'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 70
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1fact_inc_color: TcxGridDBBandedColumn
          Caption = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080
          DataBinding.FieldName = 'fact_inc_color'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 38
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1check_invoice_score: TcxGridDBBandedColumn
          Caption = #1057#1095#1077#1090' '#1092#1072#1082#1090#1091#1088#1072
          DataBinding.FieldName = 'check_invoice_score'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          HeaderAlignmentVert = vaTop
          Width = 25
          Position.BandIndex = 0
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1od: TcxGridDBBandedColumn
          Caption = #1054#1090#1095'.'#1076#1077#1085#1100
          DataBinding.FieldName = 'od'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1sto: TcxGridDBBandedColumn
          DataBinding.FieldName = 'sto'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1stn: TcxGridDBBandedColumn
          DataBinding.FieldName = 'stn'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1x: TcxGridDBBandedColumn
          Caption = #1052#1077#1089#1103#1094' '#1079#1072#1075#1088#1091#1079#1082#1080
          DataBinding.FieldName = 'x'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Position.BandIndex = 0
          Position.ColIndex = 34
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1zfto_score_num: TcxGridDBBandedColumn
          Caption = #1057#1095#1077#1090#1072' '#1092#1072#1082#1090#1091#1088#1099
          DataBinding.FieldName = 'zfto_score_num'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 35
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1fexan: TcxGridDBBandedColumn
          Caption = #1042#1080#1076' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
          DataBinding.FieldName = 'fexan'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1itog_ndsr: TcxGridDBBandedColumn
          Caption = #1053#1044#1057' RUB'
          DataBinding.FieldName = 'itog_ndsr'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          HeaderAlignmentVert = vaTop
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 36
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1file_name_dbf: TcxGridDBBandedColumn
          Caption = #1060#1072#1081#1083' '#1079#1072#1075#1088#1091#1079#1082#1080
          DataBinding.FieldName = 'file_name_dbf'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 37
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1shaping_rate_id: TcxGridDBBandedColumn
          Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1087#1086#1076#1088#1103#1076#1095#1080#1082#1072
          DataBinding.FieldName = 'shaping_rate_id'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_ClientFrahtCard_Profitt
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 39
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1contract_agent_cod: TcxGridDBBandedColumn
          Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1087#1086#1076#1088#1103#1076#1095#1080#1082#1072
          DataBinding.FieldName = 'contract_agent_cod'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_ClientFrahtCard_Profitt
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 40
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1agent_name: TcxGridDBBandedColumn
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'agent_name'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_ClientFrahtCard_Profitt
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 41
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn
          Caption = #1054#1090#1074#1077#1090#1089#1074#1077#1085#1085#1099#1081
          DataBinding.FieldName = 'FIO_users'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 42
          Position.RowIndex = 0
        end
      end
      object cxGrid1DBBandedTableView2: TcxGridDBBandedTableView
        OnKeyPress = cxGrid1DBBandedTableView1KeyPress
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGrid1DBBandedTableView2CustomDrawCell
        OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
        DataController.DataSource = DS_FindEmpty
        DataController.KeyFieldNames = 'fact_inc_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0'
            Kind = skCount
            Column = cxGrid1DBBandedTableView2id_uch
          end
          item
            Kind = skSum
            Column = cxGrid1DBBandedTableView2itog
          end
          item
            Kind = skSum
            Column = cxGrid1DBBandedTableView2fkv
          end
          item
            Kind = skSum
            Column = cxGrid1DBBandedTableView2grp
          end
          item
            Kind = skSum
            Column = cxGrid1DBBandedTableView2grves
          end
          item
            Kind = skSum
            Column = cxGrid1DBBandedTableView2vg
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.BandHeaders = False
        OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
        Bands = <
          item
          end>
        object cxGrid1DBBandedTableView2fact_inc_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'fact_inc_id'
          DataBinding.IsNullValueType = True
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView2bargain_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'bargain_id'
          DataBinding.IsNullValueType = True
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView2max_load_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'max_load_id'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView2type_self: TcxGridDBBandedColumn
          DataBinding.FieldName = 'type_self'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView2id_uch: TcxGridDBBandedColumn
          Caption = #1059#1095'.'#1085#1086#1084#1077#1088
          DataBinding.FieldName = 'id_uch'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2brief_name: TcxGridDBBandedColumn
          Caption = #1042#1072#1083#1102#1090#1072
          DataBinding.FieldName = 'brief_name'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2FIO_users_owner: TcxGridDBBandedColumn
          Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
          DataBinding.FieldName = 'FIO_users_owner'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2ndnum: TcxGridDBBandedColumn
          Caption = #8470' '#1085#1072#1082#1083'.'
          DataBinding.FieldName = 'ndnum'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2ndser: TcxGridDBBandedColumn
          Caption = #1057#1077#1088'.'#1085#1072#1082#1083'.'
          DataBinding.FieldName = 'ndser'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2nvag: TcxGridDBBandedColumn
          Caption = #8470' '#1074#1072#1075#1086#1085#1072
          DataBinding.FieldName = 'nvag'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2nkont: TcxGridDBBandedColumn
          Caption = #8470' '#1082#1086#1085#1090'.'
          DataBinding.FieldName = 'nkont'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2fkv: TcxGridDBBandedColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'fkv'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2grp: TcxGridDBBandedColumn
          Caption = #1043'/'#1087
          DataBinding.FieldName = 'grp'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2dataot: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072#1054#1090#1087#1088
          DataBinding.FieldName = 'dataot'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2datpr: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072#1055#1088#1080#1073
          DataBinding.FieldName = 'datpr'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2vg: TcxGridDBBandedColumn
          Caption = #1060'.'#1074#1077#1089
          DataBinding.FieldName = 'vg'
          DataBinding.IsNullValueType = True
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2grves: TcxGridDBBandedColumn
          Caption = #1056'.'#1074#1077#1089
          DataBinding.FieldName = 'grves'
          DataBinding.IsNullValueType = True
          Width = 52
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2podkod: TcxGridDBBandedColumn
          Caption = #1055#1086#1076#1082#1086#1076
          DataBinding.FieldName = 'podkod'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2free_fact_text: TcxGridDBBandedColumn
          DataBinding.FieldName = 'free_fact_text'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2free_fact: TcxGridDBBandedColumn
          DataBinding.FieldName = 'free_fact'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2FIO_free_fact: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FIO_free_fact'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2fact_inc_color: TcxGridDBBandedColumn
          DataBinding.FieldName = 'fact_inc_color'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView2sto_name: TcxGridDBBandedColumn
          Caption = #1057#1090'.'#1054#1090#1087#1088
          DataBinding.FieldName = 'sto_name'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2stn_name: TcxGridDBBandedColumn
          Caption = #1057#1090'.'#1053#1072#1079#1085'.'
          DataBinding.FieldName = 'stn_name'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2gruz_name: TcxGridDBBandedColumn
          Caption = #1043#1088#1091#1079' '#1045#1058#1057#1053#1043
          DataBinding.FieldName = 'gruz_name'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2kursdr: TcxGridDBBandedColumn
          Caption = #1050#1091#1088#1089
          DataBinding.FieldName = 'kursdr'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2field_report: TcxGridDBBandedColumn
          Caption = #1044#1086#1087#1086#1083#1085#1077#1085#1080#1077
          DataBinding.FieldName = 'field_report'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2fsob_name: TcxGridDBBandedColumn
          Caption = #1052#1055#1057'/'#1057#1055#1057
          DataBinding.FieldName = 'fsob_name'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2bargain_cod: TcxGridDBBandedColumn
          Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077
          DataBinding.FieldName = 'bargain_cod'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2date_period: TcxGridDBBandedColumn
          DataBinding.FieldName = 'date_period'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2firm_customer_name: TcxGridDBBandedColumn
          Caption = #1050#1083#1080#1077#1085#1090
          DataBinding.FieldName = 'firm_customer_name'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2users_owner_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'users_owner_id'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView2date_period_month: TcxGridDBBandedColumn
          DataBinding.FieldName = 'date_period_month'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2date_period_year: TcxGridDBBandedColumn
          DataBinding.FieldName = 'date_period_year'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2itog: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'itog'
          DataBinding.IsNullValueType = True
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2od: TcxGridDBBandedColumn
          Caption = #1054#1090#1095'.'#1076#1077#1085#1100
          DataBinding.FieldName = 'od'
          DataBinding.IsNullValueType = True
          Width = 30
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView2sto: TcxGridDBBandedColumn
          DataBinding.FieldName = 'sto'
          DataBinding.IsNullValueType = True
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView2stn: TcxGridDBBandedColumn
          DataBinding.FieldName = 'stn'
          DataBinding.IsNullValueType = True
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBBandedTableView1
      end
    end
    object cxTabControl1: TcxTabControl
      Left = 1
      Top = 1
      Width = 1134
      Height = 22
      Align = alTop
      TabOrder = 0
      Visible = False
      Properties.CustomButtons.Buttons = <>
      Properties.TabIndex = 0
      Properties.Tabs.Strings = (
        #1053#1072#1088#1072#1089#1090'. '#1092#1072#1082#1090
        #1055#1086#1088#1086#1078#1085'. '#1074#1072#1075#1086#1085#1099)
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.SkinName = ''
      OnChange = cxTabControl1Change
      ClientRectBottom = 24
      ClientRectRight = 1134
      ClientRectTop = 24
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 447
    Width = 1136
    Height = 180
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Constraints.MinHeight = 20
    Constraints.MinWidth = 20
    TabOrder = 5
    object cxGrid2: TcxGrid
      Left = 2
      Top = 2
      Width = 1132
      Height = 176
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
        DataController.DataSource = DS_ZFTOScore
        DataController.Filter.Active = True
        DataController.KeyFieldNames = 'zfto_score_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Kind = skCount
            Column = cxGrid2DBBandedTableView1fact_num
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxGrid2DBBandedTableView1sum_rub
          end
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxGrid2DBBandedTableView1sum_usd
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.HeaderHeight = 35
        OptionsView.BandHeaders = False
        OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
        OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
        Bands = <
          item
          end>
        object cxGrid2DBBandedTableView1zfto_score_id: TcxGridDBBandedColumn
          Caption = #8470' '#1079#1072#1087#1080#1089#1080
          DataBinding.FieldName = 'zfto_score_id'
          DataBinding.IsNullValueType = True
          Visible = False
          HeaderAlignmentVert = vaTop
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1fact_num: TcxGridDBBandedColumn
          Caption = #8470' '#1089#1095'-'#1092'.'
          DataBinding.FieldName = 'fact_num'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          HeaderAlignmentVert = vaTop
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1fact_date: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072' '#1089#1095'-'#1092'.'
          DataBinding.FieldName = 'fact_date'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 61
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1sum_rub: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072', RUB'
          DataBinding.FieldName = 'sum_rub'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_AgreeFactInc_Sum
          Width = 86
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1sum_usd: TcxGridDBBandedColumn
          Caption = #1057#1091#1084#1084#1072', ('#1042#1072#1083'.)'
          DataBinding.FieldName = 'sum_usd'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_AgreeFactInc_Sum
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1global_color: TcxGridDBBandedColumn
          DataBinding.FieldName = 'global_color'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.CustomColors = <>
          Visible = False
          HeaderAlignmentVert = vaTop
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1date_act: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072' '#1072#1082#1090#1072
          DataBinding.FieldName = 'date_act'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1deb_name: TcxGridDBBandedColumn
          Caption = #1050#1083#1080#1077#1085#1090
          DataBinding.FieldName = 'deb_name'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1inn: TcxGridDBBandedColumn
          Caption = #1048#1053#1053' '#1082#1083#1080#1077#1085#1090#1072
          DataBinding.FieldName = 'inn'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1kpp: TcxGridDBBandedColumn
          Caption = #1050#1055#1055' '#1082#1083#1080#1077#1085#1090#1072
          DataBinding.FieldName = 'kpp'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1locco: TcxGridDBBandedColumn
          Caption = #1050#1086#1076' '#1045#1051#1057
          DataBinding.FieldName = 'locco'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1num_contr: TcxGridDBBandedColumn
          Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'num_contr'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod
          Width = 74
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1number_act: TcxGridDBBandedColumn
          Caption = #8470' '#1072#1082#1090#1072
          DataBinding.FieldName = 'number_act'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod
          Width = 73
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1type_incom: TcxGridDBBandedColumn
          Caption = #1050#1086#1076' '#1076#1086#1093#1086#1076#1086#1074
          DataBinding.FieldName = 'type_incom'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod
          Width = 42
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1date_load_year: TcxGridDBBandedColumn
          Caption = #1054#1090#1095'.'#1043#1086#1076
          DataBinding.FieldName = 'date_load_year'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1date_load_month: TcxGridDBBandedColumn
          Caption = #1054#1090#1095'.'#1052#1077#1089#1103#1094
          DataBinding.FieldName = 'date_load_month'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1numact_cor: TcxGridDBBandedColumn
          Caption = #8470' '#1082#1086#1088'.'#1072#1082#1090#1072
          DataBinding.FieldName = 'numact_cor'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taRightJustify
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_AgreeFactInc_AddProfit
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1datact_cor: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072' '#1082#1086#1088'.'#1072#1082#1090#1072
          DataBinding.FieldName = 'datact_cor'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_AgreeFactInc_AddProfit
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1file_load: TcxGridDBBandedColumn
          Caption = #1060#1072#1081#1083' '#1079#1072#1075#1088#1091#1079#1082#1080
          DataBinding.FieldName = 'file_load'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 66
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1waers: TcxGridDBBandedColumn
          Caption = #1042#1072#1083#1102#1090#1072
          DataBinding.FieldName = 'waers'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBBandedTableView1
      end
    end
  end
  object Query_FactIncDBF: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Filtered = True
    CommandTimeout = 100
    Parameters = <>
    SQL.Strings = (
      'select TOP 1 *  from view_fact_inc_temp'
      'where max_load_id = 200311 and type_self=1')
    Left = 230
    Top = 93
  end
  object DS_FactInc: TDataSource
    DataSet = Query_FactIncDBF
    Left = 230
    Top = 127
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = Panel1
        Properties.Strings = (
          'Height'
          'Width')
      end>
    StorageName = '\Software\Lis1\FactInc'
    StorageType = stRegistry
    Left = 89
    Top = 93
  end
  object SP_FactInc_10_01: TADOStoredProc
    Connection = fmMain.Lis
    Filtered = True
    CommandTimeout = 100
    ProcedureName = 'sp_fact_inc_month_10_01;1'
    Parameters = <
      item
        Name = '@om'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@god'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@type_self'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@type_report'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 359
    Top = 92
  end
  object DS_FindEmpty: TDataSource
    DataSet = Query_FindEmpty
    Left = 305
    Top = 127
  end
  object Query_FindEmpty: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    CommandTimeout = 100
    Parameters = <>
    SQL.Strings = (
      'select * from view_fact_inc_temp'
      'where max_load_id = 200311 and type_self=1')
    Left = 304
    Top = 96
  end
  object Query_ZFTOScore: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Filtered = True
    CommandTimeout = 100
    Parameters = <
      item
        Name = 'fact_inc_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT s.zfto_score_id, zfto_score_act_id, locco, number_act, da' +
        'te_act, type_incom, inn, kpp, deb_name, num_contr,'
      
        #9'fact_num, fact_date, SUM(t.sum_rub) AS sum_rub, SUM(t.sum_usd) ' +
        'AS sum_usd, '
      
        #9's.global_color, date_load_month, date_load_year, date_load, fil' +
        'e_load, numact_cor, datact_cor, t.waers'
      'FROM view_zfto_score_rights s '
      
        'INNER JOIN zfto_score_fact_inc f ON s.zfto_score_id  = f.zfto_sc' +
        'ore_id AND f.fact_inc_id = :fact_inc_id'
      
        'INNER JOIN zfto_score_table t ON s.zfto_score_id = t.zfto_score_' +
        'id '
      
        'GROUP BY s.zfto_score_id, zfto_score_act_id, locco, number_act, ' +
        'date_act, type_incom, inn, kpp, deb_name, num_contr,'
      
        #9'fact_num, fact_date, s.global_color, date_load_month, date_load' +
        '_year, date_load, file_load, numact_cor, datact_cor, t.waers')
    Left = 305
    Top = 530
  end
  object DS_ZFTOScore: TDataSource
    DataSet = Query_ZFTOScore
    Left = 329
    Top = 545
  end
  object dxBarManager1: TdxBarManager
    Tag = 555
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PopupMenu1')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = fmMain.cxImageList1
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 119
    Top = 88
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1052#1077#1085#1102
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 604
      FloatTop = 357
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'N1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = #1052#1077#1085#1102
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Category = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 41
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1092#1072#1082#1090' '#1074' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077
      Visible = ivNever
      ImageIndex = 3
      OnClick = dxBarButton3Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 6
      ShowCaption = False
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton_ReportClient'
        end>
    end
    object dxBarButton4: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1086#1087#1077#1088#1072#1090#1080#1074#1085#1099#1081' '#1092#1072#1082#1090
      Category = 0
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1086#1087#1077#1088#1072#1090#1080#1074#1085#1099#1081' '#1092#1072#1082#1090
      Visible = ivAlways
      ImageIndex = 18
      OnClick = dxBarButton4Click
    end
    object dxBarButton_LoadDBF: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1082#1090' '#1062#1060#1058#1054' '#1080#1079' '#1092#1072#1081#1083#1072' (dbf)'
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1082#1090' '#1062#1060#1058#1054' '#1080#1079' '#1092#1072#1081#1083#1072' (dbf)'
      Visible = ivAlways
      ImageIndex = 55
      OnClick = dxBarButton_LoadDBFClick
    end
    object dxBarButton_DelDBF: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100'  '#1092#1072#1082#1090' '#1079#1072' '#1087#1103#1090#1080#1076#1085#1077#1074#1082#1091
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1075#1088#1091#1078#1077#1085#1085#1099#1081' '#1092#1072#1082#1090' (dbf)'
      Visible = ivAlways
      OnClick = dxBarButton_DelDBFClick
    end
    object dxBarSubItem_GroupDBF: TdxBarSubItem
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072' DBF'
      Category = 0
      Visible = ivAlways
      ImageIndex = 55
      ShowCaption = False
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton_LoadDBF'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_DelDBF'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton_AddGrant'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_DeleteGrant'
        end>
    end
    object dxBarButton_Snap: TdxBarButton
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1092#1072#1082#1090' '#1082' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1077' ('#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080')'
      Category = 0
      Hint = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1092#1072#1082#1090' '#1082' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1077' ('#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080')'
      Visible = ivAlways
      OnClick = dxBarButton_SnapClick
    end
    object dxBarButton_AddGrant: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1062#1060#1058#1054
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1062#1060#1058#1054
      Visible = ivAlways
      ImageIndex = 55
      OnClick = dxBarButton_AddGrantClick
    end
    object dxBarButton_DeleteGrant: TdxBarButton
      Tag = 2
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1062#1060#1058#1054
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1062#1060#1058#1054
      Visible = ivAlways
      OnClick = dxBarButton_DelDBFClick
    end
    object dxBarButton_FilterRecords1: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton_FilterRecords1Click
    end
    object dxBarButton_Unbind: TdxBarButton
      Tag = 1
      Caption = #1054#1090#1074#1103#1079#1072#1090#1100' '#1092#1072#1082#1090' '#1086#1090' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1099
      Category = 0
      Hint = #1054#1090#1074#1103#1079#1072#1090#1100' '#1092#1072#1082#1090' '#1086#1090' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1099
      Visible = ivAlways
      OnClick = dxBarButton_SnapClick
    end
    object dxBarButton_AddSnap: TdxBarButton
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1092#1072#1082#1090' '#1082' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1077' ('#1074#1088#1091#1095#1085#1091#1102')'
      Category = 0
      Hint = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1092#1072#1082#1090' '#1082' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1077' ('#1074#1088#1091#1095#1085#1091#1102')'
      Visible = ivAlways
      OnClick = dxBarButton_AddSnapClick
    end
    object dxBarButton_ReportClient: TdxBarButton
      Caption = #1054#1090#1095#1105#1090' '#1087#1086' '#1089#1095'-'#1092' '#1074' '#1088#1072#1079#1088#1077#1079#1077' '#1082#1083#1080#1077#1085#1090#1086#1074
      Category = 0
      Hint = #1054#1090#1095#1105#1090' '#1087#1086' '#1089#1095'-'#1092' '#1074' '#1088#1072#1079#1088#1077#1079#1077' '#1082#1083#1080#1077#1085#1090#1086#1074
      Visible = ivAlways
      OnClick = dxBarButton_ReportClientClick
    end
    object dxBarButton6: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1040#1082#1090' '#1087#1086#1076#1088#1103#1076#1095#1080#1082#1072' ('#1092#1072#1081#1083' '#1079#1072#1075#1088#1091#1079#1082#1080')'
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1040#1082#1090' '#1087#1086#1076#1088#1103#1076#1095#1080#1082#1072' ('#1092#1072#1081#1083' '#1079#1072#1075#1088#1091#1079#1082#1080')'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = dxBarButton6Click
    end
    object dxBarButton5: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100'...'
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBarButton5Click
    end
    object dxBarButton7: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1082#1086#1083#1086#1085#1082#1080
      Category = 0
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1082#1086#1083#1086#1085#1082#1080
      Visible = ivAlways
      ImageIndex = 18
      OnClick = dxBarButton7Click
    end
    object N1: TdxBarButton
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1092#1072#1082#1090#1072'...'
      Category = 1
      Hint = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1092#1072#1082#1090#1072
      Visible = ivAlways
      ImageIndex = 47
      OnClick = N1Click
    end
    object N28: TdxBarButton
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074' '#1089#1095#1077#1090#1077'-'#1092#1072#1082#1090#1091#1088#1077' ...'
      Category = 1
      Visible = ivAlways
      ImageIndex = 48
    end
    object N6: TdxBarButton
      Caption = #1055#1077#1088#1077#1074#1086#1079#1082#1072
      Category = 1
      Visible = ivAlways
      ImageIndex = 22
      OnClick = Action_AgreeExecute
    end
    object N17: TdxBarButton
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
      Category = 1
      Hint = #1050#1072#1088#1090#1086#1095#1082#1072' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
      Visible = ivAlways
      ImageIndex = 10
      OnClick = N17Click
    end
    object N18: TdxBarButton
      Caption = #1057#1074#1077#1088#1082#1072' '#1089' '#1087#1086#1076#1088#1103#1076#1095#1080#1082#1086#1084
      Category = 1
      Visible = ivAlways
      ImageIndex = 40
      OnClick = N18Click
    end
    object N14: TdxBarSubItem
      Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1080
      Category = 1
      Visible = ivAlways
      ImageIndex = 114
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Excel1'
        end
        item
          Visible = True
          ItemName = 'N15'
        end>
    end
    object Excel1: TdxBarButton
      Tag = 1
      Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1103' '#1074' Excel'
      Category = 1
      Visible = ivAlways
      ImageIndex = 8
      OnClick = Excel1Click
    end
    object N15: TdxBarButton
      Tag = 2
      Caption = #1059#1073#1088#1072#1090#1100' '#1087#1088#1077#1090#1077#1085#1079#1080#1102
      Category = 1
      Visible = ivAlways
      ImageIndex = 2
      OnClick = Excel1Click
    end
    object N21: TdxBarSubItem
      Caption = #1055#1086#1080#1089#1082' '#1074#1072#1075#1086#1085#1086#1074
      Category = 1
      Visible = ivAlways
      ImageIndex = 42
      ItemLinks = <
        item
          Visible = True
          ItemName = 'N19'
        end
        item
          Visible = True
          ItemName = 'N22'
        end>
    end
    object N19: TdxBarButton
      Caption = #1055#1086#1080#1089#1082' '#1087#1086#1088#1086#1078#1085#1080#1093' '#1074#1072#1075#1086#1085#1086#1074
      Category = 1
      Visible = ivAlways
      OnClick = N19Click
    end
    object N22: TdxBarButton
      Caption = #1055#1086#1080#1089#1082' '#1075#1088#1091#1078#1105#1085#1085#1099#1093' '#1074#1072#1075#1086#1085#1086#1074
      Category = 1
      Visible = ivAlways
      OnClick = N22Click
    end
    object N11: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 1
      Visible = ivAlways
      ImageIndex = 8
      OnClick = N11Click
    end
    object N20: TdxBarButton
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1085#1072' '#1082#1072#1088#1090#1077
      Category = 1
      Visible = ivAlways
      ImageIndex = 126
      OnClick = N20Click
    end
    object N3: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 1
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'N25'
        end
        item
          Visible = True
          ItemName = 'N31'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'N7'
        end
        item
          Visible = True
          ItemName = 'N4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton_FilterRecords1'
        end>
    end
    object N25: TdxBarButton
      Caption = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080' ...'
      Category = 1
      Visible = ivAlways
      ImageIndex = 11
      OnClick = N25Click
    end
    object N31: TdxBarButton
      Tag = 1
      Caption = #1059#1073#1088#1072#1090#1100' '#1094#1074#1077#1090' '#1079#1072#1087#1080#1089#1080'...'
      Category = 1
      Visible = ivAlways
      ImageIndex = 12
      OnClick = N25Click
    end
    object N7: TdxBarButton
      Tag = 1
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 1
      Visible = ivAlways
      ImageIndex = 15
      OnClick = N7Click
    end
    object N4: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 1
      Visible = ivAlways
      ImageIndex = 13
      OnClick = N4Click
    end
  end
  object PopupMenu1: TdxBarPopupMenu
    Tag = 1
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'N1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N6'
      end
      item
        Visible = True
        ItemName = 'N17'
      end
      item
        Visible = True
        ItemName = 'N18'
      end
      item
        Visible = True
        ItemName = 'N14'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N21'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton_Snap'
      end
      item
        Visible = True
        ItemName = 'dxBarButton_AddSnap'
      end
      item
        Visible = True
        ItemName = 'dxBarButton_Unbind'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N11'
      end
      item
        Visible = True
        ItemName = 'N20'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N3'
      end>
    UseOwnFont = False
    OnPopup = PopupMenu1Popup
    Left = 230
    Top = 155
    PixelsPerInch = 96
  end
end
