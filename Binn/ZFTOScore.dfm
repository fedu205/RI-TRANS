object fmZFTOScore: TfmZFTOScore
  Left = 291
  Top = 74
  Caption = #1055#1077#1088#1077#1095#1085#1080' '#1082' '#1089#1095'-'#1092'. '#1087#1086#1076#1088#1103#1076#1095#1080#1082#1086#1074
  ClientHeight = 663
  ClientWidth = 887
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poDesigned
  OnClose = FormClose
  OnDestroy = FormDestroy
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 58
    Width = 887
    Height = 605
    Align = alClient
    TabOrder = 3
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    Properties.Images = fmMain.cxImageList1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    OnChange = cxPageControl1Change
    ClientRectBottom = 605
    ClientRectRight = 887
    ClientRectTop = 25
    object cxTabSheet2: TcxTabSheet
      Caption = #1057#1095'-'#1092'. '#1062#1060#1058#1054
      ImageIndex = 40
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 887
        Height = 281
        Align = alClient
        Constraints.MinHeight = 150
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Office2007Black'
        object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = Popup_Agent
          OnDblClick = dxBarButton_EditSFClick
          OnKeyPress = cxGrid2DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGrid2DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid2DBBandedTableView1FocusedItemChanged
          OnFocusedRecordChanged = cxGrid2DBBandedTableView1FocusedRecordChanged
          DataController.DataSource = DS_ZFTOScoreGet
          DataController.Filter.OnChanged = cxGrid2DBBandedTableView1DataControllerFilterChanged
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
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid2DBBandedTableView1fact_inc_sum_rub
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          Filtering.ColumnFilteredItemsList = True
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
          Styles.Content = fmMain.cxStyle_ColorWhite
          OnCustomDrawColumnHeader = cxGrid2DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid2DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid2DBBandedTableView1zfto_score_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'zfto_score_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 0
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
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1fact_date: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1089#1095'-'#1092'.'
            DataBinding.FieldName = 'fact_date'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 61
            Position.BandIndex = 0
            Position.ColIndex = 2
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
            Position.ColIndex = 3
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
            Position.ColIndex = 4
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
            Position.ColIndex = 14
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
            Position.ColIndex = 7
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
            Position.ColIndex = 6
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
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1kpp: TcxGridDBBandedColumn
            Caption = #1050#1055#1055' '#1082#1083#1080#1077#1085#1090#1072
            DataBinding.FieldName = 'kpp'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1locco: TcxGridDBBandedColumn
            Caption = #1050#1086#1076' '#1045#1051#1057
            DataBinding.FieldName = 'locco'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod
            Position.BandIndex = 0
            Position.ColIndex = 10
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
            Position.ColIndex = 11
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
            Position.ColIndex = 12
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
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1date_load_year: TcxGridDBBandedColumn
            Caption = #1054#1090#1095'.'#1043#1086#1076
            DataBinding.FieldName = 'date_load_year'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1date_load_month: TcxGridDBBandedColumn
            Caption = #1054#1090#1095'.'#1052#1077#1089#1103#1094
            DataBinding.FieldName = 'date_load_month'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 16
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
            Position.ColIndex = 17
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
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1fact_num_c: TcxGridDBBandedColumn
            Caption = #8470' '#1082#1086#1088'. '#1089#1095'-'#1092'.'
            DataBinding.FieldName = 'fact_num_c'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taRightJustify
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_AgreeFactInc_AddProfit
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1file_load: TcxGridDBBandedColumn
            Caption = #1060#1072#1081#1083' '#1079#1072#1075#1088#1091#1079#1082#1080
            DataBinding.FieldName = 'file_load'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1waers: TcxGridDBBandedColumn
            Caption = #1042#1072#1083#1102#1090#1072
            DataBinding.FieldName = 'waers'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1set_grant: TcxGridDBBandedColumn
            Caption = #1055#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077
            DataBinding.FieldName = 'set_grant'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = False
            HeaderAlignmentVert = vaTop
            Width = 30
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1date_load: TcxGridDBBandedColumn
            DataBinding.FieldName = 'date_load'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid2DBBandedTableView1service_kind: TcxGridDBBandedColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080' '#1089'-'#1092
            DataBinding.FieldName = 'service_kind'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1zfto_score_act_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1072#1082#1090#1072
            DataBinding.FieldName = 'zfto_score_act_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid2DBBandedTableView1set_auto: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1079#1085#1072#1082' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103
            DataBinding.FieldName = 'set_auto'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid2DBBandedTableView1fact_inc_sum_rub: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072', RUB('#1087#1088#1080#1074#1103#1079#1072#1085#1085#1099#1081' '#1092#1072#1082#1090')'
            DataBinding.FieldName = 'fact_inc_sum_rub'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_AgreeFact
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1cnt_global_doc: TcxGridDBBandedColumn
            DataBinding.FieldName = 'cnt_global_doc'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Properties.DecimalPlaces = 0
            HeaderAlignmentVert = vaTop
            HeaderGlyph.SourceDPI = 96
            HeaderGlyph.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00DAD4CFFF644B37FF634935FF664C38FFC4BAB2FFFFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00CDC4BDFF69503CFFDAD4CFFFFFFFFF00EDEAE8FF694F3BFFD4CC
              C6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF006D5440FFE3DEDBFFCCC3BDFF664C39FFE0DBD7FFDFD9D5FF644A
              36FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00735A47FFFFFFFF006B513EFFC0B5ADFF654B38FFFFFFFF006349
              35FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF007A614EFFFFFFFF00705744FFFFFFFF00684F3BFFFFFFFF006349
              35FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00816956FFFFFFFF00775E4BFFFFFFFF006B513EFFFFFFFF00674D
              39FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00846C5AFFFFFFFF007B624FFFFFFFFF006E5441FFFFFFFF006B52
              3EFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF0087705EFFFFFFFF007E6553FFFFFFFF00745B48FFFFFFFF006E55
              42FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF008E7765FFFFFFFF00846D5AFFFFFFFF007B624FFFFFFFFF007158
              45FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00947D6CFFFFFFFF008B7462FFFFFFFF00816A57FFFFFFFF00785F
              4CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00998372FFFFFFFF00927B69FFFFFFFF0088715FFFFFFFFF007F66
              54FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0097816FFFFFFFFF00FFFFFF00FFFFFF00856E
              5CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF009C8675FFD8CFC8FFFFFFFF00D9D1CAFF947D
              6BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00D8D0C9FF9D8776FF9A8472FF96806EFFD9D2
              CBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object cxGrid2DBBandedTableView1service_kind_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'service_kind_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBBandedTableView1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 288
        Width = 887
        Height = 292
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Constraints.MinHeight = 100
        TabOrder = 2
        object Splitter2: TSplitter
          Left = 460
          Top = 2
          Width = 4
          Height = 288
          Align = alRight
          Color = 8421631
          ParentColor = False
          Visible = False
          ExplicitLeft = 461
        end
        object GroupBox1: TGroupBox
          Left = 2
          Top = 2
          Width = 458
          Height = 288
          Align = alClient
          Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103' '#1087#1086' '#1092#1072#1082#1090#1091#1088#1077
          TabOrder = 0
          object cxGrid3: TcxGrid
            Left = 2
            Top = 43
            Width = 454
            Height = 243
            Align = alClient
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmClassic
            LookAndFeel.SkinName = 'Office2007Black'
            object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
              PopupMenu = Popup_ZFTO
              OnKeyPress = cxGrid2DBBandedTableView1KeyPress
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Filter.Hint = '111'
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCustomDrawCell = cxGrid3DBBandedTableView1CustomDrawCell
              OnFocusedItemChanged = cxGrid2DBBandedTableView1FocusedItemChanged
              OnFocusedRecordChanged = cxGrid3DBBandedTableView1FocusedRecordChanged
              DataController.DataSource = DS_ZFTOScoreTable
              DataController.Filter.OnChanged = cxGrid2DBBandedTableView1DataControllerFilterChanged
              DataController.KeyFieldNames = 'zfto_score_table_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid3DBBandedTableView1sum_rub
                end
                item
                  Kind = skCount
                  Column = cxGrid3DBBandedTableView1number_doc
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid3DBBandedTableView1sum_usd
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid3DBBandedTableView1nds_rub
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid3DBBandedTableView1nds_usd
                end>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <
                    item
                      Column = cxGrid3DBBandedTableView1number_doc
                    end
                    item
                      Column = cxGrid3DBBandedTableView1sum_rub
                    end>
                  SummaryItems = <
                    item
                      Format = #1050#1086#1083'-'#1074#1086': 0'
                      Kind = skCount
                      FieldName = 'invoice_score_id'
                      Column = cxGrid3DBBandedTableView1number_doc
                    end
                    item
                      Format = ' '#1057#1091#1084#1084#1072' '#1074' RUB: #,##0.00'
                      Kind = skSum
                      FieldName = 'itog_itog'
                      Column = cxGrid3DBBandedTableView1number_doc
                    end
                    item
                      Format = ' '#1057#1091#1084#1084#1072' '#1074' USD: #,##0.00'
                      Kind = skSum
                      FieldName = 'itog_itog_usd'
                      Column = cxGrid3DBBandedTableView1number_doc
                    end>
                end>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              Filtering.ColumnFilteredItemsList = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.HeaderHeight = 35
              OptionsView.BandHeaders = False
              Styles.Content = fmMain.cxStyle_ColorWhite
              OnCustomDrawColumnHeader = cxGrid2DBBandedTableView1CustomDrawColumnHeader
              OnCustomDrawFooterCell = cxGrid2DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGrid3DBBandedTableView1zfto_score_table_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'zfto_score_table_id'
                DataBinding.IsNullValueType = True
                Visible = False
                HeaderAlignmentVert = vaTop
                Width = 25
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid3DBBandedTableView1zfto_score_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'zfto_score_id'
                DataBinding.IsNullValueType = True
                Visible = False
                HeaderAlignmentVert = vaTop
                Width = 40
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid3DBBandedTableView1number_doc: TcxGridDBBandedColumn
                Caption = #8470' '#1085#1072#1082#1083'.'
                DataBinding.FieldName = 'number_doc'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 71
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1vagon_num: TcxGridDBBandedColumn
                Caption = #8470' '#1074#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'vagon_num'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                SortIndex = 0
                SortOrder = soAscending
                Width = 85
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1cont_num: TcxGridDBBandedColumn
                Caption = #8470' '#1082#1086#1085#1090'.'
                DataBinding.FieldName = 'cont_num'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1date_dep: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088'.'
                DataBinding.FieldName = 'date_dep'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.SaveTime = False
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1date_serv: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1086#1082#1072#1079'. '#1091#1089#1083#1091#1075#1080
                DataBinding.FieldName = 'date_serv'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                HeaderAlignmentVert = vaTop
                Width = 61
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1sum_rub: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072', RUB'
                DataBinding.FieldName = 'sum_rub'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_AgreeFactInc_Sum
                Width = 77
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1nds_rub: TcxGridDBBandedColumn
                Caption = #1053#1044#1057', RUB'
                DataBinding.FieldName = 'nds_rub'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                Width = 67
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1sum_usd: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072', ('#1042#1072#1083'.)'
                DataBinding.FieldName = 'sum_usd'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_AgreeFactInc_Sum
                Width = 84
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1nds_usd: TcxGridDBBandedColumn
                Caption = #1053#1044#1057', USD'
                DataBinding.FieldName = 'nds_usd'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                Width = 40
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1carddoctyp: TcxGridDBBandedColumn
                Caption = #1058#1080#1087' '#1082#1072#1088#1090#1086#1095#1082#1080
                DataBinding.FieldName = 'carddoctyp'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 59
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1fr_weight: TcxGridDBBandedColumn
                Caption = #1043#1088#1091#1079', '#1074#1077#1089
                DataBinding.FieldName = 'fr_weight'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 70
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1fr_code: TcxGridDBBandedColumn
                Caption = #1043#1088#1091#1079', '#1082#1086#1076
                DataBinding.FieldName = 'fr_code'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1st_src_name: TcxGridDBBandedColumn
                Caption = #1057#1090'.'#1054#1090#1087#1088'.'
                DataBinding.FieldName = 'st_src_name'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 65
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1st_src: TcxGridDBBandedColumn
                Caption = #1050#1086#1076' '#1057#1090'.'#1054#1090#1087#1088'.'
                DataBinding.FieldName = 'st_src'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 40
                Position.BandIndex = 0
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1st_tgt_name: TcxGridDBBandedColumn
                Caption = #1057#1090'.'#1053#1072#1079#1085'.'
                DataBinding.FieldName = 'st_tgt_name'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1st_tgt: TcxGridDBBandedColumn
                Caption = #1050#1086#1076' '#1057#1090'.'#1053#1072#1079#1085
                DataBinding.FieldName = 'st_tgt'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Position.BandIndex = 0
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1ktgrm_text: TcxGridDBBandedColumn
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'ktgrm_text'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 77
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1date_pr: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072' '#1075#1088#1091#1079#1072
                DataBinding.FieldName = 'date_pr'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                HeaderAlignmentVert = vaTop
                Width = 61
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1global_color: TcxGridDBBandedColumn
                DataBinding.FieldName = 'global_color'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid3DBBandedTableView1waers: TcxGridDBBandedColumn
                Caption = #1042#1072#1083#1102#1090#1072
                DataBinding.FieldName = 'waers'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 65
                Position.BandIndex = 0
                Position.ColIndex = 18
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1serv_code: TcxGridDBBandedColumn
                Caption = #1050#1086#1076' '#1091#1089#1083#1091#1075#1080
                DataBinding.FieldName = 'serv_code'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 19
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1invoiceid: TcxGridDBBandedColumn
                Caption = 'ID '#1069#1090#1088#1072#1085
                DataBinding.FieldName = 'invoiceid'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 20
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1vidsoob: TcxGridDBBandedColumn
                Caption = #1042#1080#1076' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
                DataBinding.FieldName = 'vidsoob'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 84
                Position.BandIndex = 0
                Position.ColIndex = 21
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1type_tr: TcxGridDBBandedColumn
                Caption = #1055#1088#1080#1079#1085#1072#1082' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
                DataBinding.FieldName = 'type_tr'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 109
                Position.BandIndex = 0
                Position.ColIndex = 22
                Position.RowIndex = 0
              end
            end
            object cxGrid3Level1: TcxGridLevel
              GridView = cxGrid3DBBandedTableView1
            end
          end
          object ToolBar3: TToolBar
            Left = 2
            Top = 15
            Width = 454
            Height = 28
            AutoSize = True
            ButtonHeight = 24
            Caption = 'ToolBar3'
            DrawingStyle = dsGradient
            EdgeBorders = [ebTop, ebBottom]
            HotTrackColor = clYellow
            Images = fmMain.cxImageList_16
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object ToolButton6: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'ToolButton5'
              ImageIndex = 28
              Style = tbsSeparator
            end
            object ToolButton24: TToolButton
              Left = 8
              Top = 0
              Caption = 'ToolButton24'
              ImageIndex = 37
              Style = tbsCheck
              OnClick = ToolButton24Click
            end
            object ToolButton25: TToolButton
              Left = 31
              Top = 0
              Width = 8
              Caption = 'ToolButton25'
              ImageIndex = 38
              Style = tbsSeparator
            end
            object ToolButton19: TToolButton
              Left = 39
              Top = 0
              Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1087#1088#1080#1074#1103#1079#1072#1085#1085#1099#1081' '#1085#1072#1088#1072#1089#1090#1072#1102#1097#1080#1081' '#1092#1072#1082#1090
              Caption = 'ToolButton19'
              ImageIndex = 73
              Style = tbsCheck
              OnClick = ToolButton19Click
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 464
          Top = 2
          Width = 421
          Height = 288
          Align = alRight
          Caption = #1053#1072#1088#1072#1089#1090#1072#1102#1097#1080#1081' '#1092#1072#1082#1090
          TabOrder = 1
          Visible = False
          object cxGrid4: TcxGrid
            Left = 2
            Top = 15
            Width = 417
            Height = 271
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmClassic
            LookAndFeel.SkinName = 'Office2007Black'
            object cxGrid4DBBandedTableView1: TcxGridDBBandedTableView
              PopupMenu = Popup_Fact_inc
              OnDblClick = N46Click
              OnKeyPress = cxGrid2DBBandedTableView1KeyPress
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCustomDrawCell = cxGrid4DBBandedTableView1CustomDrawCell
              OnFocusedItemChanged = cxGrid2DBBandedTableView1FocusedItemChanged
              DataController.DataSource = DS_FactInc
              DataController.Filter.OnChanged = cxGrid2DBBandedTableView1DataControllerFilterChanged
              DataController.KeyFieldNames = 'fact_inc_id'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'fact_inc_id'
                  Column = cxGrid4DBBandedTableView1id_uch
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  FieldName = 'itog'
                  Column = cxGrid4DBBandedTableView1itog
                end
                item
                  Format = '#,##0'
                  Kind = skSum
                  FieldName = 'fkv'
                  Column = cxGrid4DBBandedTableView1fkv
                end
                item
                  Format = '#,##0.000'
                  Kind = skSum
                  FieldName = 'vg'
                  Column = cxGrid4DBBandedTableView1vg
                end
                item
                  Format = '#,##0'
                  Kind = skSum
                  FieldName = 'grp'
                  Column = cxGrid4DBBandedTableView1grp
                end
                item
                  Format = '#,##0'
                  Kind = skSum
                  FieldName = 'grves'
                  Column = cxGrid4DBBandedTableView1grves
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid4DBBandedTableView1itog_TD
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid4DBBandedTableView1itog_VOHR
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid4DBBandedTableView1itog_SHTRAF
                end
                item
                  Format = '#,#0.00'
                  Kind = skSum
                  Column = cxGrid4DBBandedTableView1itogr
                end>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <
                    item
                      Column = cxGrid4DBBandedTableView1fact_inc_id
                    end
                    item
                      Column = cxGrid4DBBandedTableView1bargain_id
                    end
                    item
                      Column = cxGrid4DBBandedTableView1bargain_cod
                    end
                    item
                      Column = cxGrid4DBBandedTableView1brief_name
                    end
                    item
                      Column = cxGrid4DBBandedTableView1id_uch
                    end
                    item
                      Column = cxGrid4DBBandedTableView1max_load_id
                    end
                    item
                      Column = cxGrid4DBBandedTableView1ndser
                    end
                    item
                      Column = cxGrid4DBBandedTableView1dataot
                    end
                    item
                      Column = cxGrid4DBBandedTableView1datpr
                    end
                    item
                      Column = cxGrid4DBBandedTableView1free_fact_text
                    end
                    item
                      Column = cxGrid4DBBandedTableView1free_fact
                    end
                    item
                      Column = cxGrid4DBBandedTableView1FIO_free_fact
                    end
                    item
                      Column = cxGrid4DBBandedTableView1FIO_users_owner
                    end
                    item
                      Column = cxGrid4DBBandedTableView1users_owner_id
                    end
                    item
                      Column = cxGrid4DBBandedTableView1sto_name
                    end
                    item
                      Column = cxGrid4DBBandedTableView1stn_name
                    end
                    item
                      Column = cxGrid4DBBandedTableView1gruz_name
                    end
                    item
                      Column = cxGrid4DBBandedTableView1podkod
                    end
                    item
                      Column = cxGrid4DBBandedTableView1rodv
                    end
                    item
                      Column = cxGrid4DBBandedTableView1ndnum
                    end
                    item
                      Column = cxGrid4DBBandedTableView1nvag
                    end
                    item
                      Column = cxGrid4DBBandedTableView1fsob_name
                    end>
                  SummaryItems = <
                    item
                      Format = #1050#1086#1083'-'#1074#1086': 0'
                      Kind = skCount
                      Column = cxGrid4DBBandedTableView1fact_inc_id
                    end
                    item
                      Format = 'C'#1091#1084#1084#1072': #,##0.00'
                      Kind = skSum
                      Column = cxGrid4DBBandedTableView1itog
                      Sorted = True
                    end
                    item
                      Format = #1060'.'#1074#1077#1089': '
                      Kind = skSum
                      Column = cxGrid4DBBandedTableView1vg
                    end
                    item
                      Format = #1056'.'#1074#1077#1089': 0'
                      Kind = skSum
                      Column = cxGrid4DBBandedTableView1grves
                    end>
                end>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              Filtering.ColumnFilteredItemsList = True
              OptionsCustomize.ColumnsQuickCustomization = True
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
              Styles.Content = fmMain.cxStyle_ColorWhite
              OnCustomDrawColumnHeader = cxGrid2DBBandedTableView1CustomDrawColumnHeader
              OnCustomDrawFooterCell = cxGrid2DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGrid4DBBandedTableView1fact_inc_id: TcxGridDBBandedColumn
                Caption = #8470' '#1079#1072#1087#1080#1089#1080
                DataBinding.FieldName = 'fact_inc_id'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid4DBBandedTableView1bargain_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'bargain_id'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid4DBBandedTableView1id_uch: TcxGridDBBandedColumn
                Caption = #1059#1095'.'#1085#1086#1084#1077#1088
                DataBinding.FieldName = 'id_uch'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1brief_name: TcxGridDBBandedColumn
                Caption = #1042#1072#1083#1102#1090#1072
                DataBinding.FieldName = 'brief_name'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 19
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn
                Caption = #1054#1090#1074#1077#1090#1089#1074#1077#1085#1085#1099#1081
                DataBinding.FieldName = 'FIO_users_owner'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_AgreeFact
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1bargain_cod: TcxGridDBBandedColumn
                Caption = #8470' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
                DataBinding.FieldName = 'bargain_cod'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_AgreeFact
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
                Caption = #1050#1083#1080#1077#1085#1090
                DataBinding.FieldName = 'firm_customer_name'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_AgreeFact
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1date_period_month: TcxGridDBBandedColumn
                Caption = #1052#1077#1089#1103#1094' '#1087#1088#1080#1083#1086#1078'.'
                DataBinding.FieldName = 'date_period_month'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                SortIndex = 0
                SortOrder = soAscending
                Styles.Content = fmMain.cxStyle_AgreeFact
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1date_period_year: TcxGridDBBandedColumn
                Caption = #1043#1086#1076' '#1087#1088#1080#1083#1086#1078'.'
                DataBinding.FieldName = 'date_period_year'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_AgreeFact
                Width = 45
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1ndser: TcxGridDBBandedColumn
                Caption = #1057#1077#1088#1053#1072#1082#1083
                DataBinding.FieldName = 'ndser'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 56
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1ndnum: TcxGridDBBandedColumn
                Caption = #8470' '#1085#1072#1082#1083'.'
                DataBinding.FieldName = 'ndnum'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1nvag: TcxGridDBBandedColumn
                Caption = #8470' '#1074#1072#1075'.'
                DataBinding.FieldName = 'nvag'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 61
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1fkat: TcxGridDBBandedColumn
                Caption = #1054#1090#1087#1088#1072#1074#1082#1072
                DataBinding.FieldName = 'fkat'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Position.BandIndex = 0
                Position.ColIndex = 27
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1fkv: TcxGridDBBandedColumn
                Caption = #1050#1086#1083'-'#1074#1086
                DataBinding.FieldName = 'fkv'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 20
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1grp: TcxGridDBBandedColumn
                Caption = #1043'/'#1087
                DataBinding.FieldName = 'grp'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 21
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1dataot: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072#1054#1090
                DataBinding.FieldName = 'dataot'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1datpr: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072#1055#1088#1080#1073
                DataBinding.FieldName = 'datpr'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1vg: TcxGridDBBandedColumn
                Caption = #1060'.'#1074#1077#1089
                DataBinding.FieldName = 'vg'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 53
                Position.BandIndex = 0
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1grves: TcxGridDBBandedColumn
                Caption = #1056'.'#1074#1077#1089
                DataBinding.FieldName = 'grves'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 41
                Position.BandIndex = 0
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1nkont: TcxGridDBBandedColumn
                Caption = #8470' '#1082#1086#1085#1090
                DataBinding.FieldName = 'nkont'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1free_fact_text: TcxGridDBBandedColumn
                Caption = #1058#1077#1082#1089#1090' '#1087#1088#1077#1090#1077#1085#1079#1080#1080
                DataBinding.FieldName = 'free_fact_text'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 23
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1free_fact: TcxGridDBBandedColumn
                Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1103
                DataBinding.FieldName = 'free_fact'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.DisplayGrayed = '0'
                Properties.NullStyle = nssUnchecked
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
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1FIO_free_fact: TcxGridDBBandedColumn
                Caption = #1048#1079#1084#1077#1085#1103#1083
                DataBinding.FieldName = 'FIO_free_fact'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 24
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1sto_name: TcxGridDBBandedColumn
                Caption = #1057#1090#1054#1090#1087#1088
                DataBinding.FieldName = 'sto_name'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 72
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1stn_name: TcxGridDBBandedColumn
                Caption = #1057#1090#1053#1072#1079#1085
                DataBinding.FieldName = 'stn_name'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 66
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1gruz_name: TcxGridDBBandedColumn
                Caption = #1043#1088#1091#1079#1045#1058#1057#1053#1043
                DataBinding.FieldName = 'gruz_name'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 75
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1podkod: TcxGridDBBandedColumn
                Caption = #1055#1086#1076#1082#1086#1076
                DataBinding.FieldName = 'podkod'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 51
                Position.BandIndex = 0
                Position.ColIndex = 25
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1itog: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072
                DataBinding.FieldName = 'itog'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_AgreeFactInc_Sum
                Width = 79
                Position.BandIndex = 0
                Position.ColIndex = 18
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1itogr: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072' RUB'
                DataBinding.FieldName = 'itogr'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,#0.00'
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_AgreeFactInc_Sum
                Position.BandIndex = 0
                Position.ColIndex = 32
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1rodv: TcxGridDBBandedColumn
                Caption = #1056#1086#1076#1055'/'#1057
                DataBinding.FieldName = 'rodv'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 30
                Position.BandIndex = 0
                Position.ColIndex = 22
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1fsob_name: TcxGridDBBandedColumn
                Caption = #1052#1055#1057'/'#1057#1055#1057
                DataBinding.FieldName = 'fsob_name'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 40
                Position.BandIndex = 0
                Position.ColIndex = 26
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1max_load_id: TcxGridDBBandedColumn
                Caption = #1052#1077#1089#1103#1094' '#1079#1072#1075#1088#1091#1079#1082#1080
                DataBinding.FieldName = 'max_load_id'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 28
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1users_owner_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'users_owner_id'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid4DBBandedTableView1type_self: TcxGridDBBandedColumn
                DataBinding.FieldName = 'type_self'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid4DBBandedTableView1type_info: TcxGridDBBandedColumn
                DataBinding.FieldName = 'type_info'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 70
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid4DBBandedTableView1fact_inc_color: TcxGridDBBandedColumn
                DataBinding.FieldName = 'fact_inc_color'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Width = 60
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid4DBBandedTableView1invoice_score_fact_inc_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'invoice_score_fact_inc_id'
                DataBinding.IsNullValueType = True
                HeaderAlignmentVert = vaTop
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid4DBBandedTableView1itog_TD: TcxGridDBBandedColumn
                Caption = #1058'. '#1044'.'
                DataBinding.FieldName = 'itog_TD'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_Agree_bargain_cod
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 29
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1itog_VOHR: TcxGridDBBandedColumn
                Caption = #1054#1093#1088#1072#1085#1072
                DataBinding.FieldName = 'itog_VOHR'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_Agree_bargain_cod
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 30
                Position.RowIndex = 0
              end
              object cxGrid4DBBandedTableView1itog_SHTRAF: TcxGridDBBandedColumn
                Caption = #1064#1090#1088#1072#1092
                DataBinding.FieldName = 'itog_SHTRAF'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_Agree_bargain_cod
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 31
                Position.RowIndex = 0
              end
            end
            object cxGrid1DBBandedTableView2: TcxGridDBBandedTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
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
            end
            object cxGrid4Level1: TcxGridLevel
              GridView = cxGrid4DBBandedTableView1
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 281
        Width = 887
        Height = 7
        AlignSplitter = salBottom
        Control = Panel1
        Color = 8421631
        ParentColor = False
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1055#1077#1088#1077#1095#1085#1080' '#1089#1095'-'#1092'.'
      ImageIndex = 102
      object cxGrid5: TcxGrid
        Left = 0
        Top = 0
        Width = 887
        Height = 580
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Office2007Black'
        object cxGrid5DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = Popup_ZFTOScorePeriod
          OnKeyPress = cxGrid2DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Filter.Hint = '111'
          ScrollbarAnnotations.CustomAnnotations = <>
          OnFocusedItemChanged = cxGrid2DBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_ZFTOScorePeriod
          DataController.Filter.OnChanged = cxGrid2DBBandedTableView1DataControllerFilterChanged
          DataController.KeyFieldNames = 'zfto_score_table_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = cxGrid5DBBandedTableView1number_doc
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid5DBBandedTableView1sum_wnds_rub
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid5DBBandedTableView1nds_rub
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid5DBBandedTableView1sum_rub
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid5DBBandedTableView1sum_wnds_usd
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid5DBBandedTableView1nds_usd
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid5DBBandedTableView1sum_usd
            end>
          DataController.Summary.SummaryGroups = <>
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
          Styles.Content = fmMain.cxStyle_ColorWhite
          OnCustomDrawColumnHeader = cxGrid2DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid2DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid5DBBandedTableView1zfto_score_table_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'zfto_score_table_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid5DBBandedTableView1zfto_score_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'zfto_score_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1zfto_score_act_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1072#1082#1090#1072
            DataBinding.FieldName = 'zfto_score_act_id'
            DataBinding.IsNullValueType = True
            Visible = False
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1number_doc: TcxGridDBBandedColumn
            Caption = #8470' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
            DataBinding.FieldName = 'number_doc'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1vagon_num: TcxGridDBBandedColumn
            Caption = #8470' '#1074#1072#1075#1086#1085#1072
            DataBinding.FieldName = 'vagon_num'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1st_src_name: TcxGridDBBandedColumn
            Caption = #1057#1090'.'#1054#1090#1087#1088'.'
            DataBinding.FieldName = 'st_src_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1st_tgt_name: TcxGridDBBandedColumn
            Caption = #1057#1090'.'#1053#1072#1079#1085'.'
            DataBinding.FieldName = 'st_tgt_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1ktgrm_text: TcxGridDBBandedColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1083#1072#1100#1077#1078#1072
            DataBinding.FieldName = 'ktgrm_text'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1date_dep: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1054#1090#1087#1088'.'
            DataBinding.FieldName = 'date_dep'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            HeaderAlignmentVert = vaTop
            Width = 64
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1date_serv: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1054#1082#1072#1079'. '#1091#1089#1083#1091#1075#1080
            DataBinding.FieldName = 'date_serv'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1sum_wnds_rub: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057', RUB'
            DataBinding.FieldName = 'sum_wnds_rub'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1nds_rub: TcxGridDBBandedColumn
            Caption = #1053#1044#1057', RUB '
            DataBinding.FieldName = 'nds_rub'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1sum_rub: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072', RUB'
            DataBinding.FieldName = 'sum_rub'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_AgreeFactInc_Sum
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1sum_wnds_usd: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057', ('#1042#1072#1083'.)'
            DataBinding.FieldName = 'sum_wnds_usd'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1nds_usd: TcxGridDBBandedColumn
            Caption = #1053#1044#1057', ('#1042#1072#1083'.)'
            DataBinding.FieldName = 'nds_usd'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1sum_usd: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072', ('#1042#1072#1083'.)'
            DataBinding.FieldName = 'sum_usd'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_AgreeFactInc_Sum
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1fact_num: TcxGridDBBandedColumn
            Caption = #8470' '#1089#1095#1105#1090'-'#1092#1072#1082#1090#1091#1088#1099
            DataBinding.FieldName = 'fact_num'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod
            Width = 78
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1fact_date: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1089#1095#1105#1090'-'#1092#1072#1082#1090#1091#1088#1099
            DataBinding.FieldName = 'fact_date'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1carddoctyp: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1082#1072#1088#1090#1086#1095#1082#1080
            DataBinding.FieldName = 'carddoctyp'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1st_src: TcxGridDBBandedColumn
            Caption = #1050#1086#1076' '#1057#1090'.'#1054#1090#1087#1088'.'
            DataBinding.FieldName = 'st_src'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1st_tgt: TcxGridDBBandedColumn
            Caption = #1050#1086#1076' '#1057#1090'.'#1053#1072#1079#1085'.'
            DataBinding.FieldName = 'st_tgt'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1cont_num: TcxGridDBBandedColumn
            Caption = #8470' '#1082#1086#1085#1090'.'
            DataBinding.FieldName = 'cont_num'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1fr_code: TcxGridDBBandedColumn
            Caption = #1050#1086#1076' '#1075#1088#1091#1079#1072
            DataBinding.FieldName = 'fr_code'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1fr_weight: TcxGridDBBandedColumn
            Caption = #1042#1077#1089' '#1075#1088#1091#1079#1072
            DataBinding.FieldName = 'fr_weight'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1number_act: TcxGridDBBandedColumn
            Caption = #8470' '#1072#1082#1090#1072
            DataBinding.FieldName = 'number_act'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1date_act: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1072#1082#1090#1072
            DataBinding.FieldName = 'date_act'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1num_contr: TcxGridDBBandedColumn
            Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
            DataBinding.FieldName = 'num_contr'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1type_incom: TcxGridDBBandedColumn
            Caption = #1042#1080#1076' '#1076#1086#1093#1086#1076#1086#1074
            DataBinding.FieldName = 'type_incom'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1numact_cor: TcxGridDBBandedColumn
            Caption = #8470' '#1082#1086#1088#1088'.'#1072#1082#1090#1072
            DataBinding.FieldName = 'numact_cor'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_AgreeFactInc_AddProfit
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1datact_cor: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1082#1086#1088#1088'.'#1072#1082#1090#1072
            DataBinding.FieldName = 'datact_cor'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_AgreeFactInc_AddProfit
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1date_load_month: TcxGridDBBandedColumn
            Caption = #1054#1090#1095'.'#1052#1077#1089#1103#1094
            DataBinding.FieldName = 'date_load_month'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1date_load_year: TcxGridDBBandedColumn
            Caption = #1054#1090#1095'.'#1043#1086#1076
            DataBinding.FieldName = 'date_load_year'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1global_color: TcxGridDBBandedColumn
            DataBinding.FieldName = 'global_color'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid5DBBandedTableView1waers: TcxGridDBBandedColumn
            Caption = #1042#1072#1083#1102#1090#1072
            DataBinding.FieldName = 'waers'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1serv_code: TcxGridDBBandedColumn
            Caption = #1050#1086#1076' '#1091#1089#1083#1091#1075#1080
            DataBinding.FieldName = 'serv_code'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1invoiceid: TcxGridDBBandedColumn
            Caption = 'ID '#1069#1090#1088#1072#1085
            DataBinding.FieldName = 'invoiceid'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1date_pr: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1055#1088#1080#1077#1084#1072' '#1075#1088#1091#1079#1072
            DataBinding.FieldName = 'date_pr'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
        object cxGrid5Level1: TcxGridLevel
          GridView = cxGrid5DBBandedTableView1
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 26
    Width = 887
    Height = 32
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 10
      Width = 70
      Height = 13
      Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082'.....'
    end
    object Label8: TLabel
      Left = 499
      Top = 10
      Width = 59
      Height = 13
      Caption = #1044#1086#1075#1086#1074#1086#1088'.....'
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 81
      Top = 6
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 20
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'contract_id'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'firm_customer_name'
        end
        item
          FieldName = 'contract_cod'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_Contract
      Properties.OnEditValueChanged = cxLookupComboBox1PropertiesEditValueChanged
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Coffee'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Coffee'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Coffee'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Coffee'
      TabOrder = 0
      Width = 408
    end
    object cxTextEdit_Contract: TcxTextEdit
      Left = 550
      Top = 6
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Coffee'
      Style.Shadow = False
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Coffee'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Coffee'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Coffee'
      TabOrder = 1
      Width = 168
    end
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = dxBarButton_FilterRecords1
        Properties.Strings = (
          'Down')
      end
      item
        Component = dxBarButton_FilterRecords2
        Properties.Strings = (
          'Down')
      end
      item
        Component = dxBarButton_FilterRecords3
        Properties.Strings = (
          'Down')
      end
      item
        Component = dxBarButton_FilterRecords4
        Properties.Strings = (
          'Down')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Visible'
          'Width'
          'WindowState')
      end
      item
        Component = GroupBox2
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end
      item
        Component = Panel1
        Properties.Strings = (
          'Height'
          'Visible'
          'Width')
      end>
    StorageName = '\Software\LIS1\ZFTOScore'
    StorageType = stRegistry
    Left = 436
    Top = 57
  end
  object Query_ZFTOScoreTable: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    CommandTimeout = 100
    Parameters = <
      item
        Name = 'zfto_score_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM view_ZFTO_score_table'
      'WHERE zfto_score_id=:zfto_score_id'
      '')
    Left = 26
    Top = 366
  end
  object DS_ZFTOScoreTable: TDataSource
    DataSet = Query_ZFTOScoreTable
    Left = 32
    Top = 398
  end
  object DS_ZFTOScoreGet: TDataSource
    DataSet = SP_ZFTOScoreGet
    Left = 65
    Top = 134
  end
  object SP_ZFTOScoreGet: TADOStoredProc
    Connection = fmMain.Lis
    CursorType = ctStatic
    CommandTimeout = 100
    ProcedureName = 'sp_zfto_score_GET;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@date1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@date2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@contract_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 66
    Top = 105
  end
  object Query_FactIncDBF: TADOQuery
    AutoCalcFields = False
    Connection = fmMain.Lis
    CursorType = ctStatic
    Filtered = True
    CommandTimeout = 100
    Parameters = <
      item
        Name = 'zfto_score_id'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM view_zfto_score_fact_inc '
      'WHERE zfto_score_id =:zfto_score_id '
      '')
    Left = 529
    Top = 346
  end
  object DS_FactInc: TDataSource
    DataSet = Query_FactIncDBF
    Left = 532
    Top = 374
  end
  object Query_ZFTOScorePeriod: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    CommandTimeout = 100
    Parameters = <
      item
        Name = 'date1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'date2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'contract_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM view_ZFTO_score_table'
      'WHERE date_load >= :date1 '
      'AND date_load<=:date2'
      'AND contract_id = :contract_id')
    Left = 227
    Top = 101
  end
  object DS_ZFTOScorePeriod: TDataSource
    DataSet = Query_ZFTOScorePeriod
    Left = 224
    Top = 128
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Popup_Agent'
      'Popup_Fact_inc'
      'Popup_ZFTO'
      'Popup_ZFTOScorePeriod')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True)
    ImageOptions.Images = fmMain.cxImageList1
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 408
    Top = 57
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 978
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem_Add'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'N41'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem_Print'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1055#1077#1088#1080#1086#1076
      Category = 0
      Style = fmMain.cxStyle_Bold
      Visible = ivAlways
      ImageIndex = 7
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
    end
    object dxBarButton2: TdxBarButton
      Caption = #1052#1077#1089#1103#1094
      Category = 0
      Hint = #1052#1077#1089#1103#1094
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1055#1077#1088#1080#1086#1076
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object dxBarButton1: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton1Click
    end
    object N20: TdxBarButton
      Tag = 2
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 15
      OnClick = N20Click
    end
    object dxBarButton4: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = #1054#1087#1077#1088#1072#1090#1080#1074#1085#1099#1081' '#1092#1072#1082#1090'...'
      Category = 0
      Hint = #1054#1087#1077#1088#1072#1090#1080#1074#1085#1099#1081' '#1092#1072#1082#1090
      Visible = ivAlways
      ImageIndex = 35
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Category = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100
      Visible = ivNever
      ImageIndex = 3
      OnClick = dxBarButton6Click
    end
    object dxBarSubItem_Print: TdxBarSubItem
      Caption = #1054#1090#1095#1077#1090#1099
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
    object dxBarButton_ReportClient: TdxBarButton
      Caption = #1054#1090#1095#1105#1090' '#1087#1086' '#1089#1095'-'#1092' '#1074' '#1088#1072#1079#1088#1077#1079#1077' '#1082#1083#1080#1077#1085#1090#1086#1074
      Category = 0
      Hint = #1054#1090#1095#1105#1090' '#1087#1086' '#1089#1095'-'#1092' '#1074' '#1088#1072#1079#1088#1077#1079#1077' '#1082#1083#1080#1077#1085#1090#1086#1074
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton_ReportClientClick
    end
    object dxBarButton7: TdxBarButton
      Caption = #1057#1074#1103#1079#1072#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
      Category = 0
      Hint = #1057#1074#1103#1079#1072#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
      Visible = ivAlways
      ImageIndex = 67
      OnClick = dxBarButton7Click
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103' '#1089#1086' '#1057#1095'-'#1092'. ...'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_NoteAdd'
        end>
    end
    object dxBarButton10: TdxBarButton
      Caption = #1048#1079' '#1069#1058#1056#1040#1053#1072
      Category = 0
      Hint = #1048#1079' '#1069#1058#1056#1040#1053#1072
      Visible = ivAlways
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Caption = #1055#1072#1082#1072#1079#1072#1090#1100' '#1040#1082#1090#1099' '#1074' '#1069#1058#1056#1040#1053#1077
      Category = 0
      Hint = #1055#1072#1082#1072#1079#1072#1090#1100' '#1040#1082#1090#1099' '#1074' '#1069#1058#1056#1040#1053#1077
      Visible = ivAlways
      ImageIndex = 123
      OnClick = dxBarButton11Click
    end
    object dxBarButton16: TdxBarButton
      Tag = 2
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 165
      OnClick = dxBarButton16Click
    end
    object dxBarButton17: TdxBarButton
      Tag = 1
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 164
      OnClick = dxBarButton16Click
    end
    object N30: TdxBarButton
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072#1084
      Category = 1
      Visible = ivAlways
      ImageIndex = 33
    end
    object N41: TdxBarButton
      Caption = #1055#1086#1080#1089#1082
      Category = 1
      Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Visible = ivAlways
      ImageIndex = 41
      OnClick = N41Click
    end
    object N16: TdxBarSubItem
      Tag = 2
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Category = 1
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'N17'
        end
        item
          Visible = True
          ItemName = 'N18'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'N20'
        end
        item
          Visible = True
          ItemName = 'N21'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton_FilterRecords1'
        end>
    end
    object N17: TdxBarButton
      Caption = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080'...'
      Category = 1
      Visible = ivAlways
      ImageIndex = 11
      OnClick = N17Click
    end
    object N18: TdxBarButton
      Tag = 1
      Caption = #1059#1073#1088#1072#1090#1100' '#1094#1074#1077#1090
      Category = 1
      Visible = ivAlways
      ImageIndex = 12
      OnClick = N17Click
    end
    object N21: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 1
      Visible = ivAlways
      ImageIndex = 13
      OnClick = N21Click
    end
    object dxBarButton_AddZFTO: TdxBarButton
      Caption = #1057#1090#1072#1088#1099#1081' '#1092#1086#1088#1084#1072#1090
      Category = 1
      Hint = #1057#1090#1072#1088#1099#1081' '#1092#1086#1088#1084#1072#1090
      Visible = ivAlways
      OnClick = dxBarButton_AddZFTOClick
    end
    object dxBarButton_DelZFTO: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1080#1085#1092'-'#1094#1080#1102' '#1062#1060#1058#1054
      Category = 1
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1080#1085#1092'-'#1094#1080#1102' '#1062#1060#1058#1054
      Visible = ivAlways
      OnClick = dxBarButton_DelZFTOClick
    end
    object dxBarSubItem_Add: TdxBarSubItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Category = 1
      Visible = ivAlways
      ImageIndex = 55
      ShowCaption = False
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem_AddZFTO'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem_AddCor'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton_DelZFTO'
        end>
    end
    object dxBarButton_AddCor: TdxBarButton
      Tag = 1
      Caption = #1057#1090#1072#1088#1099#1081' '#1092#1086#1088#1084#1072#1090
      Category = 1
      Hint = #1057#1090#1072#1088#1099#1081' '#1092#1086#1088#1084#1072#1090
      Visible = ivAlways
      OnClick = dxBarButton_AddZFTOClick
    end
    object dxBarSubItem_Del: TdxBarSubItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1080#1085#1092'-'#1094#1080#1102' '#1062#1060#1058#1054
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton_DelZFTO'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_DelCorr'
        end>
    end
    object dxBarButton_DelCorr: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1086#1095#1085#1091#1102' '#1080#1085#1092'-'#1094#1080#1102
      Category = 1
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1086#1095#1085#1091#1102' '#1080#1085#1092'-'#1094#1080#1102
      Visible = ivAlways
    end
    object dxBarButton_FilterRecords1: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 1
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton_FilterRecords1Click
    end
    object dxBarButton_NoteAdd: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080' '#1089'-'#1092
      Category = 1
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080' '#1089'-'#1092
      Visible = ivAlways
      OnClick = dxBarButton_NoteAddClick
    end
    object dxBarButton_ADDScore: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091
      Category = 1
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1095#1077#1090'-'#1092#1072#1082#1090#1091#1088#1091
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton_ADDScoreClick
    end
    object dxBarButton_EditSF: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1057'-'#1060'...'
      Category = 1
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1057'-'#1060
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBarButton_EditSFClick
    end
    object dxBarButton_DeleteSF: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1057'-'#1060
      Category = 1
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1057'-'#1060
      Visible = ivAlways
      ImageIndex = 2
      OnClick = dxBarButton_DeleteSFClick
    end
    object dxBarButton_AddZFTONew: TdxBarButton
      Caption = #1053#1086#1074#1099#1081' '#1092#1086#1088#1084#1072#1090
      Category = 1
      Hint = #1053#1086#1074#1099#1081' '#1092#1086#1088#1084#1072#1090
      Visible = ivAlways
      OnClick = dxBarButton_AddZFTONewClick
    end
    object dxBarSubItem_AddZFTO: TdxBarSubItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1085#1092'-'#1094#1080#1102' '#1062#1060#1058#1054
      Category = 1
      Visible = ivAlways
      ImageIndex = 55
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton_AddZFTO'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_AddZFTONew'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton10'
        end>
    end
    object dxBarSubItem_AddCor: TdxBarSubItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1083#1077#1085#1080#1077' '#1062#1060#1058#1054
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton_AddCor'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_AddCorNew'
        end>
    end
    object dxBarButton_AddCorNew: TdxBarButton
      Tag = 1
      Caption = #1053#1086#1074#1099#1081' '#1092#1086#1088#1084#1072#1090
      Category = 1
      Hint = #1053#1086#1074#1099#1081' '#1092#1086#1088#1084#1072#1090
      Visible = ivAlways
      OnClick = dxBarButton_AddZFTONewClick
    end
    object dxBarButton8: TdxBarButton
      Tag = 1
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1085#1072#1088#1072#1089#1090#1072#1102#1097#1080#1081' '#1092#1072#1082#1090
      Category = 1
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1085#1072#1088#1072#1089#1090#1072#1102#1097#1080#1081' '#1092#1072#1082#1090
      Visible = ivAlways
      ImageIndex = 18
      OnClick = dxBarButton8Click
    end
    object N43: TdxBarButton
      Tag = 2
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1072#1088#1072#1089#1090#1072#1102#1097#1080#1081' '#1092#1072#1082#1090' '#1082' '#1089#1095#1077#1090#1091'-'#1092#1072#1082#1090#1091#1088#1077
      Category = 2
      Visible = ivAlways
      ImageIndex = 105
      OnClick = N43Click
    end
    object N46: TdxBarButton
      Caption = #1057#1074#1086#1081#1089#1090#1074#1072' '#1092#1072#1082#1090#1072
      Category = 2
      Visible = ivAlways
      ImageIndex = 33
      OnClick = N46Click
    end
    object N44: TdxBarButton
      Tag = 1
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1092#1072#1082#1090' '#1080#1079' '#1089#1095#1077#1090#1072'-'#1092#1072#1082#1090#1091#1088#1099
      Category = 2
      Visible = ivAlways
      ImageIndex = 106
      OnClick = N44Click
    end
    object N48: TdxBarButton
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1074' '#1085#1072#1088#1072#1089#1090#1072#1102#1097#1080#1081' '#1092#1072#1082#1090
      Category = 2
      Visible = ivAlways
      ImageIndex = 26
      OnClick = N48Click
    end
    object N34: TdxBarSubItem
      Tag = 4
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Category = 2
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'N36'
        end
        item
          Visible = True
          ItemName = 'N37'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'N20'
        end
        item
          Visible = True
          ItemName = 'N39'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton_FilterRecords2'
        end>
    end
    object N36: TdxBarButton
      Caption = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080'...'
      Category = 2
      Visible = ivAlways
      ImageIndex = 11
      OnClick = N36Click
    end
    object N37: TdxBarButton
      Tag = 1
      Caption = #1059#1073#1088#1072#1090#1100' '#1094#1074#1077#1090
      Category = 2
      Visible = ivAlways
      ImageIndex = 12
      OnClick = N36Click
    end
    object N39: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 2
      Visible = ivAlways
      ImageIndex = 13
      OnClick = N39Click
    end
    object dxBarButton_FilterRecords2: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 2
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton_FilterRecords2Click
    end
    object N49: TdxBarButton
      Caption = #1055#1086#1080#1089#1082' '#1092#1072#1082#1090#1072' '#1087#1086' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Category = 3
      Visible = ivAlways
      ImageIndex = 41
      OnClick = N49Click
    end
    object MenuItem7: TdxBarSubItem
      Tag = 3
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Category = 3
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MenuItem8'
        end
        item
          Visible = True
          ItemName = 'MenuItem9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'N20'
        end
        item
          Visible = True
          ItemName = 'MenuItem12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton_FilterRecords3'
        end>
    end
    object MenuItem8: TdxBarButton
      Caption = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080'...'
      Category = 3
      Visible = ivAlways
      ImageIndex = 11
      OnClick = MenuItem8Click
    end
    object MenuItem9: TdxBarButton
      Tag = 1
      Caption = #1059#1073#1088#1072#1090#1100' '#1094#1074#1077#1090
      Category = 3
      Visible = ivAlways
      ImageIndex = 12
      OnClick = MenuItem8Click
    end
    object MenuItem12: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 3
      Visible = ivAlways
      ImageIndex = 13
      OnClick = MenuItem12Click
    end
    object dxBarButton_FilterRecords3: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 3
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton_FilterRecords3Click
    end
    object dxBarButtonCopyToFact: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1086#1087#1077#1088#1072#1090#1080#1074#1085#1099#1081' '#1092#1072#1082#1090
      Category = 3
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1086#1087#1077#1088#1072#1090#1080#1074#1085#1099#1081' '#1092#1072#1082#1090
      Visible = ivAlways
      ImageIndex = 18
      OnClick = dxBarButtonCopyToFactClick
    end
    object dxBarButton_CopyFactBargainGroup: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1087#1077#1088#1077#1074#1086#1079#1082#1091' '#1076#1088#1091#1075#1086#1081' '#1075#1088#1091#1087#1087#1099
      Category = 3
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1087#1077#1088#1077#1074#1086#1079#1082#1091' '#1076#1088#1091#1075#1086#1081' '#1075#1088#1091#1087#1087#1099
      Visible = ivAlways
      ImageIndex = 18
      OnClick = dxBarButton_CopyFactBargainGroupClick
    end
    object dxBarButton_CopyFactBargain: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1087#1077#1088#1077#1074#1086#1079#1082#1091
      Category = 3
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1087#1077#1088#1077#1074#1086#1079#1082#1091
      Visible = ivAlways
      ImageIndex = 18
      OnClick = dxBarButton_CopyFactBargainClick
    end
    object N55: TdxBarButton
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Category = 4
      Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Visible = ivAlways
      ImageIndex = 41
      OnClick = N41Click
    end
    object MenuItem16: TdxBarSubItem
      Tag = 5
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Category = 4
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'MenuItem17'
        end
        item
          Visible = True
          ItemName = 'MenuItem18'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'N20'
        end
        item
          Visible = True
          ItemName = 'MenuItem21'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton_FilterRecords4'
        end>
    end
    object MenuItem17: TdxBarButton
      Caption = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080'...'
      Category = 4
      Visible = ivAlways
      ImageIndex = 11
      OnClick = MenuItem17Click
    end
    object MenuItem18: TdxBarButton
      Tag = 1
      Caption = #1059#1073#1088#1072#1090#1100' '#1094#1074#1077#1090
      Category = 4
      Visible = ivAlways
      ImageIndex = 12
      OnClick = MenuItem17Click
    end
    object MenuItem21: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 4
      Visible = ivAlways
      ImageIndex = 13
      OnClick = MenuItem21Click
    end
    object dxBarButton_FilterRecords4: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 4
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton_FilterRecords4Click
    end
    object dxBarButton9: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1057'-'#1060'...'
      Category = 4
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1057'-'#1060
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBarButton9Click
    end
  end
  object Popup_Agent: TdxBarPopupMenu
    Tag = 2
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton_ADDScore'
      end
      item
        Visible = True
        ItemName = 'dxBarButton_EditSF'
      end
      item
        Visible = True
        ItemName = 'dxBarButton_DeleteSF'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem2'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N30'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N41'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N16'
      end>
    UseOwnFont = False
    Left = 63
    Top = 162
    PixelsPerInch = 96
  end
  object Popup_Fact_inc: TdxBarPopupMenu
    Tag = 4
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'N43'
      end
      item
        Visible = True
        ItemName = 'N44'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N46'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N48'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N34'
      end>
    UseOwnFont = False
    Left = 531
    Top = 402
    PixelsPerInch = 96
  end
  object Popup_ZFTO: TdxBarPopupMenu
    Tag = 3
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'N49'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButtonCopyToFact'
      end
      item
        Visible = True
        ItemName = 'dxBarButton_CopyFactBargain'
      end
      item
        Visible = True
        ItemName = 'dxBarButton_CopyFactBargainGroup'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'MenuItem7'
      end>
    UseOwnFont = False
    Left = 33
    Top = 429
    PixelsPerInch = 96
  end
  object Popup_ZFTOScorePeriod: TdxBarPopupMenu
    Tag = 5
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N55'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'MenuItem16'
      end>
    UseOwnFont = False
    Left = 225
    Top = 153
    PixelsPerInch = 96
  end
  object OpenDialog1: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' Excel|*.xls; *.csv|'#1060#1072#1081#1083#1099' XML|*.xml|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 469
    Top = 57
  end
  object Query_Contract: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Filtered = True
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM view_contract_rights ')
    Left = 518
    Top = 116
  end
  object DS_Contract: TDataSource
    DataSet = Query_Contract
    Left = 544
    Top = 129
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 502
    Top = 58
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
end
