object fmBargainListAdd: TfmBargainListAdd
  Left = 0
  Top = 0
  Caption = #1059#1089#1083#1091#1075#1080
  ClientHeight = 575
  ClientWidth = 948
  Color = clBtnFace
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 26
    Width = 948
    Height = 549
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 549
    ClientRectRight = 948
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1059#1089#1083#1091#1075#1080
      ImageIndex = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 948
        Height = 525
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu1
          OnKeyPress = cxGrid1DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_BargainAdd
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'bargain_add_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGrid1DBBandedTableView1bargain_add_id
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1add_contract_NDS_sum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1add_contract_notNDS_sum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1add_contract_sum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1add_count
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1add_NDS_sum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1add_NDS_sum_RUB
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1add_notNDS_sum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1add_notNDS_sum_RUB
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1add_sum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1add_sum_RUB
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.BandHeaders = False
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid1DBBandedTableView1bargain_rail_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'bargain_rail_id'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1bargain_add_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'bargain_add_id'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1calc_round_weight: TcxGridDBBandedColumn
            DataBinding.FieldName = 'calc_round_weight'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1calc_kargo_min_norm: TcxGridDBBandedColumn
            DataBinding.FieldName = 'calc_kargo_min_norm'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1calc_set_grp: TcxGridDBBandedColumn
            DataBinding.FieldName = 'calc_set_grp'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1calc_set_fact_sum: TcxGridDBBandedColumn
            DataBinding.FieldName = 'calc_set_fact_sum'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1calc_set_round_up_sum: TcxGridDBBandedColumn
            DataBinding.FieldName = 'calc_set_round_up_sum'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1kargoETSNG_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kargoETSNG_id'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1kargoETSNG_add_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kargoETSNG_add_id'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1kargoGNG_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kargoGNG_id'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1state_begin_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'state_begin_id'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1state_end_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'state_end_id'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1node_begin_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'node_begin_id'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1node_end_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'node_end_id'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1cit_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'cit_id'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1type_kontener_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'type_kontener_id'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1set_attr_self: TcxGridDBBandedColumn
            DataBinding.FieldName = 'set_attr_self'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1count_vagon: TcxGridDBBandedColumn
            Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074
            DataBinding.FieldName = 'count_vagon'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1count_weight: TcxGridDBBandedColumn
            Caption = #1042#1077#1089
            DataBinding.FieldName = 'count_weight'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1count_day_vagon: TcxGridDBBandedColumn
            Caption = #1050#1086#1083'-'#1074#1086' '#1076#1085#1077#1081
            DataBinding.FieldName = 'count_day_vagon'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1firm_sender_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'firm_sender_id'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1firm_reciever_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'firm_reciever_id'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1079' '#1045#1058#1057#1053#1043' ('#1082#1086#1076')'
            DataBinding.FieldName = 'kargoETSNG_cod'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1079' '#1045#1058#1057#1053#1043
            DataBinding.FieldName = 'kargoETSNG_name'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1kargoETSNG_group_name: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1087#1087#1072' '#1075#1088#1091#1079#1072
            DataBinding.FieldName = 'kargoETSNG_group_name'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1kargoETSNG_add_name: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kargoETSNG_add_name'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1kargoETSNG_add_cod: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kargoETSNG_add_cod'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1079' '#1043#1053#1043
            DataBinding.FieldName = 'kargoGNG_name'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1kargoGNG_cod: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1079' '#1043#1053#1043' ('#1082#1086#1076')'
            DataBinding.FieldName = 'kargoGNG_cod'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1state_begin_name: TcxGridDBBandedColumn
            Caption = #1057#1090#1088'. '#1086#1090#1087#1088'.'
            DataBinding.FieldName = 'state_begin_name'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1state_begin_cod: TcxGridDBBandedColumn
            Caption = #1057#1090#1088'. '#1086#1090#1087#1088'. ('#1082#1086#1076')'
            DataBinding.FieldName = 'state_begin_cod'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1state_end_name: TcxGridDBBandedColumn
            Caption = #1057#1090#1088'. '#1085#1072#1079#1085'.'
            DataBinding.FieldName = 'state_end_name'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1state_end_cod: TcxGridDBBandedColumn
            Caption = #1057#1090#1088'. '#1085#1072#1079#1085'. ('#1082#1086#1076')'
            DataBinding.FieldName = 'state_end_cod'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn
            Caption = #1057#1090'. '#1086#1090#1087#1088'.'
            DataBinding.FieldName = 'node_begin_name'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn
            Caption = #1057#1090'. '#1086#1090#1087#1088'. ('#1082#1086#1076')'
            DataBinding.FieldName = 'node_begin_cod'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn
            Caption = #1057#1090'. '#1085#1072#1079#1085'.'
            DataBinding.FieldName = 'node_end_name'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1node_end_cod: TcxGridDBBandedColumn
            Caption = #1057#1090'. '#1085#1072#1079#1085'. ('#1082#1086#1076')'
            DataBinding.FieldName = 'node_end_cod'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1firm_sender_name: TcxGridDBBandedColumn
            DataBinding.FieldName = 'firm_sender_name'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1firm_reciever_name: TcxGridDBBandedColumn
            DataBinding.FieldName = 'firm_reciever_name'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1set_list_rate: TcxGridDBBandedColumn
            DataBinding.FieldName = 'set_list_rate'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
            DataBinding.FieldName = 'bargain_id'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 45
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1set_include_nds: TcxGridDBBandedColumn
            DataBinding.FieldName = 'set_include_nds'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1add_sum: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = 'add_sum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Styles.Content = cxStyle_SumAddBold
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1add_count: TcxGridDBBandedColumn
            Caption = #1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'add_count'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.000'
            Styles.Content = cxStyle_SumAdd
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
            DataBinding.FieldName = 'comment'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1type_contract_name: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
            DataBinding.FieldName = 'type_contract_name'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn
            DataBinding.FieldName = 'type_contract'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1type_nds_cod: TcxGridDBBandedColumn
            DataBinding.FieldName = 'type_nds_cod'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1ed_izm_cod: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ed_izm_cod'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1exchange_USD_val: TcxGridDBBandedColumn
            Caption = #1050#1091#1088#1089' USD'
            DataBinding.FieldName = 'exchange_USD_val'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.0000'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1exchange_EUR_val: TcxGridDBBandedColumn
            Caption = #1050#1091#1088#1089' EUR'
            DataBinding.FieldName = 'exchange_EUR_val'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.0000'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1exchange_CHF_val: TcxGridDBBandedColumn
            Caption = #1050#1091#1088#1089' CHF'
            DataBinding.FieldName = 'exchange_CHF_val'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.0000'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn
            Caption = #1044#1086#1075#1086#1074#1086#1088
            DataBinding.FieldName = 'contract_cod'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
            Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
            DataBinding.FieldName = 'firm_customer_name'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn
            Caption = #1045#1076'. '#1080#1079#1084'.'
            DataBinding.FieldName = 'ed_izm_name'
            Styles.Content = cxStyle_SumAdd
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1type_add_name: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1091#1089#1083#1091#1075#1080
            DataBinding.FieldName = 'type_add_name'
            Styles.Content = fmMain.cxStyle_Bold
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn
            Caption = #1042#1072#1083#1102#1090#1072
            DataBinding.FieldName = 'brief_name'
            Styles.Content = cxStyle_SumAdd
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1add_NDS_sum: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
            DataBinding.FieldName = 'add_NDS_sum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Styles.Content = cxStyle_SumAdd
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1add_notNDS_sum: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057
            DataBinding.FieldName = 'add_notNDS_sum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Styles.Content = cxStyle_SumAdd
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1add_contract_NDS_sum: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1053#1044#1057
            DataBinding.FieldName = 'add_contract_NDS_sum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Styles.Content = cxStyle_SumContract
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1add_contract_notNDS_sum: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1073#1077#1079' '#1053#1044#1057
            DataBinding.FieldName = 'add_contract_notNDS_sum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Styles.Content = cxStyle_SumContract
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1add_contract_sum: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1089' '#1053#1044#1057
            DataBinding.FieldName = 'add_contract_sum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Styles.Content = cxStyle_SumContractBold
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1add_NDS_sum_RUB: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1089' '#1053#1044#1057' RUB'
            DataBinding.FieldName = 'add_NDS_sum_RUB'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Styles.Content = cxStyle_SumRub
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1add_notNDS_sum_RUB: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1073#1077#1079' '#1053#1044#1057' RUB'
            DataBinding.FieldName = 'add_notNDS_sum_RUB'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Styles.Content = cxStyle_SumRub
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1add_sum_RUB: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' RUB'
            DataBinding.FieldName = 'add_sum_RUB'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Styles.Content = cxStyle_SumRubBold
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1type_nds_name: TcxGridDBBandedColumn
            Caption = #1053#1044#1057
            DataBinding.FieldName = 'type_nds_name'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1add_rate: TcxGridDBBandedColumn
            Caption = #1057#1090#1072#1074#1082#1072
            DataBinding.FieldName = 'add_rate'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Styles.Content = cxStyle_SumAdd
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1type_calc_id: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1088#1072#1089#1095#1077#1090#1072
            DataBinding.FieldName = 'type_calc_id'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1type_exchange_id: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1082#1091#1088#1089#1072
            DataBinding.FieldName = 'type_exchange_id'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 44
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1contract_brief_name: TcxGridDBBandedColumn
            Caption = #1042#1072#1083#1102#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
            DataBinding.FieldName = 'contract_brief_name'
            Styles.Content = cxStyle_SumContract
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn
            Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
            DataBinding.FieldName = 'FIO_users_owner'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1date_period_month: TcxGridDBBandedColumn
            Caption = #1052#1077#1089#1103#1094
            DataBinding.FieldName = 'date_period_month'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1date_period_year: TcxGridDBBandedColumn
            Caption = #1043#1086#1076
            DataBinding.FieldName = 'date_period_year'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBBandedTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1042#1072#1075#1086#1085#1099
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = fmMain.cxImageList1
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 152
    Top = 96
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
      FloatLeft = 969
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton1Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end>
    end
    object dxBarButton2: TdxBarButton
      Caption = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080'...'
      Category = 0
      Hint = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080
      Visible = ivAlways
      ImageIndex = 11
    end
    object dxBarButton3: TdxBarButton
      Caption = #1059#1073#1088#1072#1090#1100' '#1094#1074#1077#1090' '#1079#1072#1087#1080#1089#1080'...'
      Category = 0
      Hint = #1059#1073#1088#1072#1090#1100' '#1094#1074#1077#1090' '#1079#1072#1087#1080#1089#1080
      Visible = ivAlways
      ImageIndex = 20
    end
    object dxBarButton4: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton7Click
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = '00.00.0000'
      Category = 0
      Style = fmMain.cxStyle_Bold
      Visible = ivAlways
      ImageIndex = 7
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    object dxBarButton8: TdxBarButton
      Caption = #1052#1077#1089#1103#1094' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
      Category = 0
      Hint = #1052#1077#1089#1103#1094' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = #1055#1077#1088#1080#1086#1076' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
      Visible = ivAlways
      OnClick = dxBarButton9Click
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      Category = 0
      Visible = ivAlways
      ImageIndex = 38
      ShowCaption = False
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator1'
        end>
    end
    object dxBarButton10: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Caption = '('#1042#1089#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080')'
      Category = 0
      Hint = '('#1042#1089#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080')'
      Visible = ivAlways
      ImageIndex = 38
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton12: TdxBarButton
      Tag = 2
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 164
      OnClick = dxBarButton13Click
    end
    object dxBarButton13: TdxBarButton
      Tag = 1
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 165
      OnClick = dxBarButton13Click
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
      end>
    UseOwnFont = False
    Left = 376
    Top = 216
    PixelsPerInch = 96
  end
  object Query_BargainAdd: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'date1'
        Size = -1
        Value = Null
      end
      item
        Name = 'date2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM view_bargain_new_rail'
      'WHERE date_period between :date1 and :date2')
    Left = 584
    Top = 128
  end
  object DS_BargainAdd: TDataSource
    DataSet = Query_BargainAdd
    Left = 576
    Top = 80
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 144
    Top = 168
    PixelsPerInch = 96
    object cxStyle_SumAdd: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
    object cxStyle_SumAddBold: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle_SumContract: TcxStyle
      AssignedValues = [svColor]
      Color = 16777088
    end
    object cxStyle_SumContractBold: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16777088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle_SumRub: TcxStyle
      AssignedValues = [svColor]
      Color = 65408
    end
    object cxStyle_SumRubBold: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 65408
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
end
