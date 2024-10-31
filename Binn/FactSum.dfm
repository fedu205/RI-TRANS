object fmFactSum: TfmFactSum
  Left = 0
  Top = 0
  Caption = 'fmFactSum'
  ClientHeight = 627
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 26
    Width = 814
    Height = 601
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      PopupMenu = dxBarPopupMenu1
      OnKeyPress = cxGrid1DBBandedTableView1KeyPress
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
      OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
      DataController.DataSource = DS_Fact_Sum
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.OnChanged = cxGrid1DBBandedTableView1DataControllerFilterChanged
      DataController.Filter.Active = True
      DataController.KeyFieldNames = 'fact_sum_id'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = #1050#1086#1083'-'#1074#1086' '#1079#1072#1087#1080#1089#1077#1081' '#1074' '#1075#1088#1091#1087#1087#1077' :  #,##0'
          Kind = skCount
          Column = cxGrid1DBBandedTableView1fact_sum_id
        end
        item
          Format = #1057#1091#1084#1084#1072' '#1053#1072#1095#1080#1089#1083#1077#1085#1080#1081' : #,##0.00'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1fact_sum_RUB
        end
        item
          Format = #1057#1091#1084#1084#1072' '#1053#1044#1057' : #,##0.00'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1fact_sum_tax_RUB
        end
        item
          Format = #1060'.'#1074#1077#1089' : #,##0'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1fact_weight
        end
        item
          Format = #1056'.'#1074#1077#1089' : #,##0'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1calc_weight
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #1050#1086#1083'-'#1074#1086': 0'
          Kind = skCount
          Column = cxGrid1DBBandedTableView1num_vagon
        end
        item
          Format = '#,##0'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1calc_weight
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1fact_weight
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1fact_sum_RUB
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1fact_sum_tax_RUB
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
              Column = cxGrid1DBBandedTableView1fact_id
            end
            item
              Column = cxGrid1DBBandedTableView1num_vagon
            end
            item
              Column = cxGrid1DBBandedTableView1num_document_pref
            end
            item
              Column = cxGrid1DBBandedTableView1num_document
            end
            item
              Column = cxGrid1DBBandedTableView1date_from_to
            end
            item
              Column = cxGrid1DBBandedTableView1datpr
            end
            item
            end
            item
            end
            item
            end
            item
              Column = cxGrid1DBBandedTableView1num_konten
            end
            item
              Column = cxGrid1DBBandedTableView1fact_weight
            end
            item
              Column = cxGrid1DBBandedTableView1kargo_capacity
            end
            item
              Column = cxGrid1DBBandedTableView1calc_weight
            end
            item
            end
            item
            end
            item
              Column = cxGrid1DBBandedTableView1node_begin_name
            end
            item
              Column = cxGrid1DBBandedTableView1node_end_name
            end
            item
              Column = cxGrid1DBBandedTableView1node_end_SNG_name
            end
            item
              Column = cxGrid1DBBandedTableView1kargoETSNG_name
            end
            item
              Column = cxGrid1DBBandedTableView1kargoGNG_name
            end
            item
            end
            item
            end
            item
              Column = cxGrid1DBBandedTableView1firm_info_name
            end
            item
              Column = cxGrid1DBBandedTableView1set_main
            end
            item
              Column = cxGrid1DBBandedTableView1bargain_id
            end
            item
              Column = cxGrid1DBBandedTableView1bargain_cod
            end
            item
              Column = cxGrid1DBBandedTableView1firm_customer_name
            end
            item
            end
            item
            end
            item
            end
            item
              Column = cxGrid1DBBandedTableView1file_load_info
            end
            item
              Column = cxGrid1DBBandedTableView1date_load_file
            end
            item
            end>
          SummaryItems = <
            item
              Format = #1050#1086#1083'-'#1074#1086' '#1079#1072#1087#1080#1089#1077#1081' '#1074' '#1075#1088#1091#1087#1087#1077' :  #,##0'
              Kind = skCount
              Column = cxGrid1DBBandedTableView1fact_sum_id
            end
            item
              Format = #1057#1091#1084#1084#1072' '#1053#1072#1095#1080#1089#1083#1077#1085#1080#1081' : #,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1fact_sum_RUB
            end
            item
              Format = #1057#1091#1084#1084#1072' '#1053#1044#1057' : #,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1fact_sum_tax_RUB
            end
            item
              Format = #1060'.'#1074#1077#1089' : #,##0'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1fact_weight
            end
            item
              Format = #1056'.'#1074#1077#1089' : #,##0'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1calc_weight
            end>
        end>
      DataController.Summary.Options = [soMultipleSelectedRecords]
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.InvertSelect = False
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
      object cxGrid1DBBandedTableView1fact_sum_id: TcxGridDBBandedColumn
        Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1103
        DataBinding.FieldName = 'fact_sum_id'
        HeaderAlignmentVert = vaTop
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1fact_id: TcxGridDBBandedColumn
        Tag = 157724920
        Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1092#1072#1082#1090#1072
        DataBinding.FieldName = 'fact_id'
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn
        Tag = 1
        Caption = #8470' '#1074#1072#1075#1086#1085#1072
        DataBinding.FieldName = 'num_vagon'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Bold
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1num_document_pref: TcxGridDBBandedColumn
        Caption = #1057#1077#1088'.'#1085#1072#1082#1083#1072#1076'.'
        DataBinding.FieldName = 'num_document_pref'
        HeaderAlignmentVert = vaTop
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1num_document: TcxGridDBBandedColumn
        Tag = 157730812
        Caption = #8470' '#1085#1072#1082#1083#1072#1076'.'
        DataBinding.FieldName = 'num_document'
        HeaderAlignmentVert = vaTop
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1date_from_to: TcxGridDBBandedColumn
        Tag = 157729332
        Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088'.'
        DataBinding.FieldName = 'date_from_to'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1date_ready: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072#1055#1086#1075#1088#1091#1079
        DataBinding.FieldName = 'date_ready'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentVert = vaTop
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1datpr: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
        DataBinding.FieldName = 'datpr'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1bargain_cod: TcxGridDBBandedColumn
        Tag = 354641128
        Caption = #8470' '#1087#1077#1088#1077#1074#1086#1079#1082#1080'.'
        DataBinding.FieldName = 'bargain_cod'
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
        Caption = #1050#1083#1080#1077#1085#1090
        DataBinding.FieldName = 'firm_customer_name'
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1num_konten: TcxGridDBBandedColumn
        Tag = 157708204
        Caption = #8470' '#1082#1086#1085#1090'.'
        DataBinding.FieldName = 'num_konten'
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1fact_weight: TcxGridDBBandedColumn
        Tag = 3
        Caption = #1060'.'#1074#1077#1089
        DataBinding.FieldName = 'fact_weight'
        HeaderAlignmentVert = vaTop
        Width = 56
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1kargo_capacity: TcxGridDBBandedColumn
        Tag = 1
        Caption = #1043'/'#1087
        DataBinding.FieldName = 'kargo_capacity'
        HeaderAlignmentVert = vaTop
        Width = 41
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1calc_weight: TcxGridDBBandedColumn
        Tag = 1
        Caption = #1056'.'#1074#1077#1089
        DataBinding.FieldName = 'calc_weight'
        HeaderAlignmentVert = vaTop
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn
        Tag = 65436568
        Caption = #1057#1090#1054#1090#1087#1088
        DataBinding.FieldName = 'node_begin_name'
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn
        Tag = 65437936
        Caption = #1057#1090#1053#1072#1079#1085
        DataBinding.FieldName = 'node_end_name'
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1node_end_SNG_name: TcxGridDBBandedColumn
        Caption = #1057#1090#1072#1085#1094#1080#1103' '#1085#1072#1079'. '#1057#1053#1043
        DataBinding.FieldName = 'node_end_SNG_name'
        HeaderAlignmentVert = vaTop
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1node_begin_SNG_name: TcxGridDBBandedColumn
        Caption = #1057#1090#1072#1085#1094#1080#1103' '#1086#1090#1087#1088'. '#1057#1053#1043
        DataBinding.FieldName = 'node_begin_SNG_name'
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn
        Tag = 65420072
        Caption = #1043#1088#1091#1079' '#1045#1058#1057#1053#1043
        DataBinding.FieldName = 'kargoETSNG_name'
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1kargoGNG_name: TcxGridDBBandedColumn
        Tag = 65421636
        Caption = #1043#1088#1091#1079' '#1043#1053#1043
        DataBinding.FieldName = 'kargoGNG_name'
        Visible = False
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1state_begin_name: TcxGridDBBandedColumn
        Caption = #1057#1090#1088'.'#1054#1090#1087#1088'.'
        DataBinding.FieldName = 'state_begin_name'
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1state_end_name: TcxGridDBBandedColumn
        Caption = #1057#1090#1088'.'#1053#1072#1079#1085'.'
        DataBinding.FieldName = 'state_end_name'
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1set_main: TcxGridDBBandedColumn
        Tag = 354568164
        Caption = #1054#1089#1085'./'#1053#1077' '#1086#1089#1085'.'
        DataBinding.FieldName = 'set_main'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = #1054#1089#1085'.'
        Properties.DisplayUnchecked = #1053#1077#1054#1089#1085'.'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        HeaderAlignmentVert = vaTop
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1firm_info_name: TcxGridDBBandedColumn
        Tag = 65366744
        Caption = #1048#1089#1090#1086#1095#1085#1080#1082
        DataBinding.FieldName = 'firm_info_name'
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1file_load_info: TcxGridDBBandedColumn
        Tag = 157903364
        Caption = #1060#1072#1081#1083' '#1079#1072#1075#1088'.'
        DataBinding.FieldName = 'file_load_info'
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1date_load_file: TcxGridDBBandedColumn
        Tag = 157905024
        Caption = #1044#1072#1090#1072' '#1079#1072#1075#1088'.'
        DataBinding.FieldName = 'date_load_file'
        PropertiesClassName = 'TcxDateEditProperties'
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_folder: TcxGridDBBandedColumn
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
        DataBinding.FieldName = 'etran_folder'
        HeaderAlignmentVert = vaTop
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1doc_date_last_oper: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1087#1086#1089#1083#1077#1076'. '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
        DataBinding.FieldName = 'doc_date_last_oper'
        Visible = False
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1bargain_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'bargain_id'
        Visible = False
        HeaderAlignmentVert = vaTop
        Width = 65
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1payer_cod: TcxGridDBBandedColumn
        Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
        DataBinding.FieldName = 'payer_cod'
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1claim_num: TcxGridDBBandedColumn
        Caption = #1053#1086#1084#1077#1088' '#1079#1072#1103#1074#1082#1080
        DataBinding.FieldName = 'claim_num'
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_fact_load: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1087#1086#1075#1088#1091#1079#1082#1080
        DataBinding.FieldName = 'etran_fact_load'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        HeaderAlignmentVert = vaTop
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_date_ready: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1085#1103#1090#1080#1103' '#1082' '#1087#1077#1088#1077#1074#1086#1079#1082#1077
        DataBinding.FieldName = 'etran_date_ready'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentVert = vaTop
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_date_departure: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
        DataBinding.FieldName = 'etran_date_departure'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentVert = vaTop
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_date_arrive: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
        DataBinding.FieldName = 'etran_date_arrive'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentVert = vaTop
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_date_delivery: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1088#1072#1089#1082#1088#1077#1076#1080#1090#1086#1074#1072#1085#1080#1103
        DataBinding.FieldName = 'etran_date_delivery'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentVert = vaTop
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1road_begin_name: TcxGridDBBandedColumn
        Caption = #1044#1086#1088'. '#1054#1090#1087#1088'.'
        DataBinding.FieldName = 'road_begin_name'
        HeaderAlignmentVert = vaTop
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1road_end_name: TcxGridDBBandedColumn
        Caption = #1044#1086#1088'. '#1053#1072#1079#1085'.'
        DataBinding.FieldName = 'road_end_name'
        HeaderAlignmentVert = vaTop
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 43
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_owner_name: TcxGridDBBandedColumn
        Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082
        DataBinding.FieldName = 'etran_owner_name'
        HeaderAlignmentVert = vaTop
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 44
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1els_cod: TcxGridDBBandedColumn
        Caption = #1045#1051#1057
        DataBinding.FieldName = 'els_cod'
        HeaderAlignmentVert = vaTop
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 45
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_date_register: TcxGridDBBandedColumn
        Caption = #1057#1076#1072#1095#1072' '#1085#1072' '#1080#1085#1086#1076#1086#1088#1086#1075#1091
        DataBinding.FieldName = 'etran_date_register'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 46
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_date_receiving: TcxGridDBBandedColumn
        Caption = #1055#1088#1080#1077#1084' '#1089' '#1080#1085#1086#1076#1086#1088#1086#1075#1080
        DataBinding.FieldName = 'etran_date_receiving'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 47
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1invoice_id: TcxGridDBBandedColumn
        Caption = 'ID '#1085#1072#1082#1083#1072#1076#1085#1086#1081
        DataBinding.FieldName = 'invoice_id'
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1sum_type_id: TcxGridDBBandedColumn
        Caption = #1058#1080#1087' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1103' ('#1082#1086#1076')'
        DataBinding.FieldName = 'sum_type_id'
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1sum_type_name: TcxGridDBBandedColumn
        Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077': '#1058#1080#1087
        DataBinding.FieldName = 'sum_type_name'
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1zfto_score_table_id: TcxGridDBBandedColumn
        Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1089'\'#1092' '#1062#1060#1058#1054
        DataBinding.FieldName = 'zfto_score_table_id'
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1fact_sum_RUB: TcxGridDBBandedColumn
        Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077': '#1057#1091#1084#1084#1072' ('#1088#1091#1073'.)'
        DataBinding.FieldName = 'fact_sum_RUB'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1fact_sum_tax_RUB: TcxGridDBBandedColumn
        Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077': '#1057#1091#1084#1084#1072' '#1053#1044#1057' ('#1088#1091#1073'.)'
        DataBinding.FieldName = 'fact_sum_tax_RUB'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1fact_num: TcxGridDBBandedColumn
        Caption = #8470' '#1089'\'#1092' '#1062#1060#1058#1054
        DataBinding.FieldName = 'fact_num'
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1fact_date: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1089'\'#1092' '#1062#1060#1058#1054
        DataBinding.FieldName = 'fact_date'
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_payer_cod: TcxGridDBBandedColumn
        Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077': '#1055#1083#1072#1090#1077#1083#1100#1097#1080#1082' '#1050#1086#1076
        DataBinding.FieldName = 'etran_payer_cod'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Sum_USD
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 48
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_payer_name: TcxGridDBBandedColumn
        Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077': '#1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
        DataBinding.FieldName = 'etran_payer_name'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Sum_USD
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 49
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_carrier_cod: TcxGridDBBandedColumn
        Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077': '#1055#1077#1088#1077#1074#1086#1079#1095#1080#1082' '#1050#1086#1076
        DataBinding.FieldName = 'etran_carrier_cod'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Sum_USD
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 50
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_carrier_name: TcxGridDBBandedColumn
        Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077': '#1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
        DataBinding.FieldName = 'etran_carrier_name'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Sum_USD
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 51
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_distance_name: TcxGridDBBandedColumn
        Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077': '#1044#1080#1089#1090#1072#1085#1094#1080#1103' '#1074#1079#1080#1084#1072#1085#1080#1103' '#1089#1073#1086#1088#1072
        DataBinding.FieldName = 'etran_distance_name'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Sum_USD
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 52
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_distance_node_cod: TcxGridDBBandedColumn
        Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077': '#1057#1090#1072#1085#1094#1080#1103' '#1074#1079#1080#1084#1072#1085#1080#1103' '#1089#1073#1086#1088#1072' '#1050#1086#1076
        DataBinding.FieldName = 'etran_distance_node_cod'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Sum_USD
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 53
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1etran_distance_node_name: TcxGridDBBandedColumn
        Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077': '#1057#1090#1072#1085#1094#1080#1103' '#1074#1079#1080#1084#1072#1085#1080#1103' '#1089#1073#1086#1088#1072
        DataBinding.FieldName = 'etran_distance_node_name'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Sum_USD
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 54
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1group_name: TcxGridDBBandedColumn
        Caption = #1043#1088#1091#1087#1087#1072' '#1075#1088#1091#1079#1072
        DataBinding.FieldName = 'group_name'
        HeaderAlignmentVert = vaTop
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 55
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object SP_Fact_Sum_Get: TADOStoredProc
    Connection = fmMain.Lis
    CommandTimeout = 90
    ProcedureName = 'sp_fact_GET'
    Parameters = <>
    Left = 288
    Top = 220
  end
  object DS_Fact_Sum: TDataSource
    DataSet = SP_Fact_Sum_Get
    Left = 288
    Top = 249
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
    Left = 258
    Top = 112
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
      FloatLeft = 828
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
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
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton10'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1055#1086#1080#1089#1082
      Category = 0
      Hint = #1055#1086#1080#1089#1082
      Visible = ivAlways
      ImageIndex = 41
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074' '#1069#1090#1088#1072#1085#1077
      Category = 0
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074' '#1069#1090#1088#1072#1085#1077
      Visible = ivAlways
      ImageIndex = 123
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton4Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end>
    end
    object dxBarButton5: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 14
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1082' '#1089#1095'-'#1092'. '#1062#1060#1058#1054
      Category = 0
      Hint = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1082' '#1089#1095'-'#1092'. '#1062#1060#1058#1054
      Visible = ivAlways
      ImageIndex = 49
      OnClick = dxBarButton7Click
    end
    object dxBarButton8: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1074#1103#1079#1100' '#1089' '#1089'\'#1092' '#1062#1060#1058#1054
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1089#1074#1103#1079#1100' '#1089' '#1089'\'#1092' '#1062#1060#1058#1054
      Visible = ivAlways
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
    object dxBarButton11: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1092#1072#1082#1090
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1092#1072#1082#1090
      Visible = ivNever
      ImageIndex = 3
      OnClick = dxBarButton11Click
    end
    object dxBarButton10: TdxBarButton
      Caption = 'SQL'
      Category = 0
      Hint = 'SQL - '#1082#1086#1076' '#1079#1072#1087#1088#1086#1089#1072' '#1082#1086#1090#1086#1088#1099#1081' '#1074#1077#1088#1085#1091#1083' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 137
      OnClick = dxBarButton10Click
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
      end>
    UseOwnFont = False
    Left = 288
    Top = 277
    PixelsPerInch = 96
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = cxGrid1DBBandedTableView1
        Properties.Strings = (
          'OptionsView.GroupByBox')
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
      end>
    StorageName = '\Software\Lis1\FactSum'
    StorageType = stRegistry
    Left = 288
    Top = 112
  end
end
