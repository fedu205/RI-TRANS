object fmTrafficFreeDay: TfmTrafficFreeDay
  Left = 0
  Top = 0
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1076#1074#1080#1078#1077#1085#1080#1077#1084
  ClientHeight = 379
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 26
    Width = 932
    Height = 353
    Align = alClient
    BorderStyle = cxcbsNone
    TabOrder = 4
    LookAndFeel.Kind = lfUltraFlat
    ExplicitWidth = 804
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      PopupMenu = dxBarPopupMenu1
      OnKeyPress = cxGrid1DBBandedTableView1KeyPress
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
      OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
      DataController.DataSource = DS_Traffic_Free_Day
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.OnChanged = cxGrid1DBBandedTableView1DataControllerFilterChanged
      DataController.Filter.Active = True
      DataController.KeyFieldNames = 'fact_track_stat_id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1count_stay0
        end
        item
          Format = '#,##0'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1count_stay1
        end
        item
          Format = '#,##0'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1count_stay2
        end
        item
          Format = '#,##0'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1distance2
        end
        item
          Format = #1050#1086#1083'-'#1074#1086': #,##0'
          Kind = skCount
          Column = cxGrid1DBBandedTableView1num_vagon
        end>
      DataController.Summary.SummaryGroups = <
        item
          Links = <
            item
            end
            item
            end
            item
              Column = cxGrid1DBBandedTableView1num_vagon
            end
            item
              Column = cxGrid1DBBandedTableView1count_stay0
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
              Column = cxGrid1DBBandedTableView1vagon_id
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
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
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
          SummaryItems = <
            item
              Format = #1050#1086#1083'-'#1074#1086' '#1079#1072#1087#1080#1089#1077#1081' '#1074' '#1075#1088#1091#1087#1087#1077' :  #,##0'
              Kind = skCount
            end
            item
              Format = #1057#1091#1084#1084#1072' '#1053#1072#1095#1080#1089#1083#1077#1085#1080#1081' : #,##0.00'
              Kind = skSum
            end
            item
              Format = #1057#1091#1084#1084#1072' '#1053#1044#1057' : #,##0.00'
              Kind = skSum
            end
            item
              Format = #1060'.'#1074#1077#1089' : #,##0'
              Kind = skSum
            end
            item
              Format = #1056'.'#1074#1077#1089' : #,##0'
              Kind = skSum
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
      object cxGrid1DBBandedTableView1fact_track_stat_id: TcxGridDBBandedColumn
        Caption = #8470'  '#1047#1072#1087#1080#1089#1080
        DataBinding.FieldName = 'fact_track_stat_id'
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1vagon_id: TcxGridDBBandedColumn
        Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1074#1072#1075#1086#1085#1072
        DataBinding.FieldName = 'vagon_id'
        HeaderAlignmentVert = vaTop
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn
        Caption = #1042#1072#1075#1086#1085
        DataBinding.FieldName = 'num_vagon'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Bold
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1type_park_vagon_name: TcxGridDBBandedColumn
        Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
        DataBinding.FieldName = 'type_park_vagon_name'
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
        Caption = #1042#1083#1072#1076#1077#1083#1077#1094
        DataBinding.FieldName = 'firm_customer_name'
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1date_otpr: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1088#1077#1081#1089#1072
        DataBinding.FieldName = 'date_otpr'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd.mm.yyyy'
        HeaderAlignmentVert = vaTop
        Width = 77
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn
        Caption = #1057#1090'. '#1054#1090#1087#1088'. ('#1048#1084#1103')'
        DataBinding.FieldName = 'node_begin_name'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_AgreeFact
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1node_operation_name: TcxGridDBBandedColumn
        Caption = #1057#1090'. '#1054#1087#1077#1088'. ('#1048#1084#1103')'
        DataBinding.FieldName = 'node_operation_name'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_AgreeFact
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn
        Caption = #1057#1090'. '#1053#1072#1079#1085'. ('#1048#1084#1103')'
        DataBinding.FieldName = 'node_end_name'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_AgreeFact
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1count_stay0: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1089#1090#1086#1081' ('#1054#1073#1097#1080#1081' '#1074' '#1088#1077#1081#1089#1077')'
        DataBinding.FieldName = 'count_stay0'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_RUB
        Width = 80
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1count_stay1: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1089#1090#1086#1081' ('#1053#1072' '#1089#1090#1072#1085#1094#1080#1080' '#1086#1087#1077#1088#1072#1094#1080#1080')'
        DataBinding.FieldName = 'count_stay1'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_RUB
        Width = 80
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1count_stay2: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1089#1090#1086#1081' ('#1053#1072' '#1089#1090#1072#1085#1094#1080#1080' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1074' '#1088#1077#1081#1089#1077')'
        DataBinding.FieldName = 'count_stay2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_RUB
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1distance2: TcxGridDBBandedColumn
        Caption = #1054#1089#1090'. '#1088#1072#1089#1089#1090#1086#1103#1085#1080#1077
        DataBinding.FieldName = 'distance2'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_AgreeFactInc_AddProfit
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1poluchgr: TcxGridDBBandedColumn
        Caption = #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095'. ('#1050#1086#1076')'
        DataBinding.FieldName = 'poluchgr'
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1client_firm_customer_name: TcxGridDBBandedColumn
        Caption = #8470'6 '#1050#1086#1084#1084#1077#1085#1090'. ('#1050#1083#1080#1077#1085#1090', '#1044#1086#1075#1086#1074#1086#1088') '
        DataBinding.FieldName = 'client_firm_customer_name'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment6: TcxGridDBBandedColumn
        Tag = 96
        Caption = #8470'6 '#1082#1086#1084#1084#1077#1085#1090'.('#1055#1086#1083#1080#1075#1086#1085') '
        DataBinding.FieldName = 'comment6'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment1: TcxGridDBBandedColumn
        Tag = 91
        Caption = #8470'1 '#1082#1086#1084#1084#1077#1085#1090'.'
        DataBinding.FieldName = 'comment1'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment2: TcxGridDBBandedColumn
        Tag = 92
        Caption = #8470'2 '#1082#1086#1084#1084#1077#1085#1090'.'
        DataBinding.FieldName = 'comment2'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment3: TcxGridDBBandedColumn
        Tag = 93
        Caption = #8470'3 '#1082#1086#1084#1084#1077#1085#1090'.'
        DataBinding.FieldName = 'comment3'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment4: TcxGridDBBandedColumn
        Tag = 94
        Caption = #8470'4 '#1082#1086#1084#1084#1077#1085#1090'.'
        DataBinding.FieldName = 'comment4'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment5: TcxGridDBBandedColumn
        Tag = 95
        Caption = #8470'5 '#1082#1086#1084#1084#1077#1085#1090'.'
        DataBinding.FieldName = 'comment5'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment7: TcxGridDBBandedColumn
        Tag = 97
        Caption = #8470'7 '#1082#1086#1084#1084#1077#1085#1090'.'
        DataBinding.FieldName = 'comment7'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment8: TcxGridDBBandedColumn
        Tag = 98
        Caption = #8470'8 '#1082#1086#1084#1084#1077#1085#1090'.'
        DataBinding.FieldName = 'comment8'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment9: TcxGridDBBandedColumn
        Tag = 99
        Caption = #8470'9 '#1082#1086#1084#1084#1077#1085#1090'.'
        DataBinding.FieldName = 'comment9'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment10: TcxGridDBBandedColumn
        Tag = 100
        Caption = #8470'10 '#1082#1086#1084#1084#1077#1085#1090'.'
        DataBinding.FieldName = 'comment10'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment11: TcxGridDBBandedColumn
        Tag = 101
        Caption = #8470'11 '#1082#1086#1084#1084#1077#1085#1090'.'
        DataBinding.FieldName = 'comment11'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment12: TcxGridDBBandedColumn
        Tag = 102
        Caption = #8470'12 '#1082#1086#1084#1084#1077#1085#1090'.'
        DataBinding.FieldName = 'comment12'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment13: TcxGridDBBandedColumn
        Tag = 103
        Caption = #8470'13 '#1082#1086#1084#1084#1077#1085#1090'. ('#1082#1086#1084#1084#1077#1085#1090' '#1087#1088#1086#1089#1090#1086#1080')'
        DataBinding.FieldName = 'comment13'
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_Comiss_USD
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn
        Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
        DataBinding.FieldName = 'type_park_name'
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1cod_operation_vagon_name_full: TcxGridDBBandedColumn
        Caption = #1048#1084#1103' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1087#1086#1083#1085#1086#1077' ('#1074#1072#1075#1086#1085')'
        DataBinding.FieldName = 'cod_operation_vagon_name_full'
        HeaderAlignmentVert = vaTop
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1dispatch_FIO_users: TcxGridDBBandedColumn
        Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081' '#1082#1086#1084#1084#1077#1088#1089#1072#1085#1090' / '#1076#1080#1089#1087#1077#1090#1095#1077#1088' ('#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1087#1086#1083#1080#1075#1086#1085#1086#1074')'
        DataBinding.FieldName = 'dispatch_FIO_users'
        HeaderAlignmentVert = vaTop
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1grpol_name: TcxGridDBBandedColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103
        DataBinding.FieldName = 'grpol_name'
        HeaderAlignmentVert = vaTop
        Width = 95
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
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
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 279
    Top = 117
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
      FloatLeft = 587
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
          ItemName = 'dxBarButton13'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem5'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton18: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton22'
        end>
    end
    object dxBarButton19: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
    end
    object dxBarButton20: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
    end
    object dxBarButton21: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      ShortCut = 123
    end
    object dxBarButton22: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = #1055#1088#1086#1089#1090#1086#1081' '#1074' '#1076#1074#1080#1078#1077#1085#1080#1080
      Category = 0
      Style = fmMain.cxStyle_Bold
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end>
    end
    object dxBarButton23: TdxBarButton
      Caption = #1055#1088#1086#1089#1090#1086#1081' '#1074' '#1076#1074#1080#1078#1077#1085#1080#1080
      Category = 0
      Hint = #1055#1088#1086#1089#1090#1086#1081' '#1074' '#1076#1074#1080#1078#1077#1085#1080#1080
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      ImageIndex = 142
      OnClick = dxBarButton23Click
    end
    object dxBarButton24: TdxBarButton
      Caption = #1055#1088#1086#1089#1090#1086#1081' '#1085#1072' '#1089#1090#1072#1085#1094#1080#1080' '#1055#1055#1057'/'#1088#1077#1084#1086#1085#1090#1072' '#1074' '#1088#1072#1073#1086#1095#1077#1084' '#1087#1072#1088#1082#1077
      Category = 0
      Hint = #1055#1088#1086#1089#1090#1086#1081' '#1085#1072' '#1089#1090#1072#1085#1094#1080#1080' '#1055#1055#1057'/'#1088#1077#1084#1086#1085#1090#1072' '#1074' '#1088#1072#1073#1086#1095#1077#1084' '#1087#1072#1088#1082#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 142
      OnClick = dxBarButton24Click
    end
    object dxBarButton25: TdxBarButton
      Caption = #1055#1088#1086#1089#1090#1086#1081' '#1085#1072' '#1089#1090#1072#1085#1094#1080#1080' '#1055#1054#1043#1056#1059#1047#1050#1048
      Category = 0
      Hint = #1055#1088#1086#1089#1090#1086#1081' '#1085#1072' '#1089#1090#1072#1085#1094#1080#1080' '#1055#1054#1043#1056#1059#1047#1050#1048
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 142
      OnClick = dxBarButton25Click
    end
    object dxBarButton26: TdxBarButton
      Caption = #1055#1088#1086#1089#1090#1086#1081' '#1085#1072' '#1089#1090#1072#1085#1094#1080#1080' '#1042#1067#1043#1056#1059#1047#1050#1048
      Category = 0
      Hint = #1055#1088#1086#1089#1090#1086#1081' '#1085#1072' '#1089#1090#1072#1085#1094#1080#1080' '#1042#1067#1043#1056#1059#1047#1050#1048
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 142
      OnClick = dxBarButton26Click
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
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton2Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end>
    end
    object dxBarButton4: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton3Click
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
    object dxBarButton8: TdxBarButton
      Caption = #1048#1089#1090#1086#1088#1080#1103' '#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1103
      Category = 0
      Enabled = False
      Hint = #1048#1089#1090#1086#1088#1080#1103' '#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1103
      Visible = ivAlways
      ImageIndex = 149
      OnClick = dxBarButton8Click
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103' '#1089' '#1076#1080#1089#1083#1086#1082#1072#1094#1080#1077#1081
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end>
    end
    object dxBarButton9: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' 13'
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' 13'
      Visible = ivAlways
      ImageIndex = 149
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Tag = 3
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' 13'
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' 13'
      Visible = ivAlways
      ImageIndex = 149
      OnClick = dxBarButton9Click
    end
    object dxBarButton11: TdxBarButton
      Tag = 5
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1080#1081' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' 13'
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1080#1081' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' 13'
      Visible = ivAlways
      ImageIndex = 149
      OnClick = dxBarButton9Click
    end
    object dxBarButton12: TdxBarButton
      Tag = 6
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1080#1081' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' 13'
      Category = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1080#1081' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' 13'
      Visible = ivAlways
      ImageIndex = 149
      OnClick = dxBarButton9Click
    end
    object dxBarButton13: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1087#1080#1089#1082#1091' '#1074#1072#1075#1086#1085#1086#1074
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1087#1080#1089#1082#1091' '#1074#1072#1075#1086#1085#1086#1074
      Visible = ivAlways
      ImageIndex = 42
      OnClick = dxBarButton13Click
    end
    object dxBarButton14: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1100' 13 '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100' 13 '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1089' 0 '#1087#1088#1086#1089#1090#1086#1077#1084' '#1085#1072' '#1089#1090#1072#1085#1094#1080#1080' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1074' '#1088#1077#1081#1089#1077
      Visible = ivAlways
      ImageIndex = 149
      OnClick = dxBarButton14Click
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
          'Width')
      end>
    StorageName = '\Software\Lis1\TrafficFreeDay'
    StorageType = stRegistry
    Left = 275
    Top = 163
  end
  object Query_Traffic_Free_Day1: TADOQuery
    CursorType = ctStatic
    CommandTimeout = 200
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      
        'DECLARE'#9'@date_begin'#9#9#9'date'#9'= DATEADD(dd, -90, GETDATE()), --'#1085#1072#1095#1072 +
        #1083#1086' '#1075#1086#1076#1072' cast(datename(yyyy, getdate()) as datetime),'
      
        #9#9#9'@date_end'#9#9#9'      date'#9'= DATEADD(dd, 1, GETDATE()), --'#1082#1086#1085#1077#1094' '#1075 +
        #1086#1076#1072' DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1),'
      #9#9#9'@users_group_id'#9#9'  int'#9#9'= 0,'
      
        '      @now                float = FLOOR(convert(float, GETDATE()' +
        ' ))'
      ''
      
        #9'SELECT @users_group_id = users_group_id FROM USERS WHERE users_' +
        'name = SYSTEM_USER'
      ''
      #9'--SELECT @date_begin = '#39'20190626'#39
      #9'--SELECT @date_end = '#39'20190627'#39
      #9'--SELECT @users_group_id = 158706'
      ''
      ''
      
        #9'--'#1042#1072#1075#1086#1085#1099' '#1074' '#1090#1077#1082#1091#1097#1077#1084' '#1086#1090#1094#1077#1087#1086#1095#1085#1086#1084' '#1088#1077#1084#1086#1085#1090#1077' ('#1058#1054#1056') '#1087#1086' '#1087#1086#1089#1083#1077#1076#1085#1080#1084' '#1079#1072#1075#1088#1091#1078 +
        #1077#1085#1085#1099#1084' '#1076#1072#1085#1085#1099#1084
      #9'SELECT DISTINCT t.num_vagon'
      #9'INTO #vagon_tech'
      #9'FROM view_fact_tech t'
      #9'WHERE date_breakage_dt BETWEEN @date_begin AND @date_end'
      
        #9#9'AND (type_repair = '#39'04'#39' OR type_repair = '#39'03'#39' OR type_repair =' +
        ' '#39'09'#39') -- '#1058#1077#1082#1091#1097#1080#1077' '#1088#1077#1084#1086#1085#1090#1099
      
        #9#9'AND (comment_sfh_cod = '#39'4'#39' OR comment_sfh_cod = '#39'1'#39')          ' +
        '       -- '#1047#1072#1090#1088#1072#1090#1099' '#1057#1060#1061
      #9#9'AND users_group_id = @users_group_id'
      
        #9'GROUP BY t.num_vagon, CONVERT(varchar(8),t.date_breakage_dt,112' +
        '), station_detaching_name, road_name, breakage_name -- 1 '#1089#1083#1091#1095#1072#1081' ' +
        #1088#1077#1084#1086#1085#1090#1072
      #9'HAVING MAX(t.date_repair_end) IS NULL'
      #9'CREATE INDEX #ix_num_vagon ON #vagon_tech(num_vagon)'
      ''
      
        #9'SELECT v.num_vagon, v.vagon_id, v.users_group_id, v.firm_custom' +
        'er_name, vc6.firm_customer_name + '#39' '#1044#1086#1075'.'#8470' '#39' + vc6.contract_cod a' +
        's client_firm_customer_name, c6.vagon_comment as comment6, sale_' +
        'FIO_users + '#39' / '#39' + dispatch_FIO_users AS dispatch_FIO_users'
      #9'INTO #v_vagon_owner1'
      #9'FROM view_vagon_owner v'
      
        #9'LEFT OUTER JOIN vagon_comment c6  WITH (NOLOCK) ON (c6.vagon_id' +
        ' = v.vagon_id) AND (c6.vagon_comment_type_id = 908732) AND (@dat' +
        'e_end BETWEEN c6.date_begin AND ISNULL(c6.date_end + 0.999, @dat' +
        'e_end))'
      
        #9'LEFT OUTER JOIN view_vagon_comment6 vc6 ON c6.attached_global_i' +
        'd = vc6.comment6_id'
      
        #9'WHERE v.users_group_id = @users_group_id AND @date_end BETWEEN ' +
        'v.date_begin AND ISNULL(v.date_end, @date_end)'
      
        '  CREATE INDEX #ix_num_vagon_users_group_id1 ON #v_vagon_owner1(' +
        'num_vagon, users_group_id)'
      ''
      ''
      ''
      '  SELECT'
      
        '    fact_track_stat_id, f.num_vagon, v.vagon_id, type_park_vagon' +
        '_name, v.firm_customer_name, date_otpr, node_begin_name, node_en' +
        'd_name, node_operation_name,f.type_park_id, f.type_park_name, co' +
        'd_operation_vagon_name_full,'
      
        '    count_stay0, count_stay1, count_stay2, distance2, poluchgr, ' +
        'grpol_name, v.comment6, v.client_firm_customer_name, v.dispatch_' +
        'FIO_users,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908727 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) AS comment1,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908728 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) AS comment2,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908729 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) AS comment3,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908730 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) AS comment4,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908731 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) AS comment5,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908733 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) AS comment7,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908734 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) AS comment8,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908735 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) AS comment9,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908736 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) AS comment10,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 2279355) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) AS comment11,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 4766052) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) AS comment12,'
      
        #9#9' (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH (NOLO' +
        'CK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_type_id' +
        ' = 1385291) AND (date_query BETWEEN c.date_begin AND ISNULL(c.da' +
        'te_end + 0.999 , date_query))) AS comment13'
      '  FROM fact_track_stat f WITH (NOLOCK)'
      
        '  JOIN (SELECT cod FROM dbo.StrToTbl('#39'4824860,4824861,4824864,48' +
        '24866'#39','#39','#39')) sv ON sv.cod = f.type_park_id--'#1074#1099#1073#1086#1088' '#1090#1086#1083#1100#1082#1086' '#1089#1086#1073#1089#1090#1074#1077 +
        #1085#1085#1099#1077','#1072#1088#1077#1085#1076#1086#1074#1072#1085#1085#1099#1077','#1083#1080#1079#1080#1085#1075#1086#1074#1099#1077','#1087#1088#1080#1074#1083#1077#1095#1077#1085#1085#1099#1077
      
        '  LEFT JOIN #v_vagon_owner1 v ON v.users_group_id = f.users_grou' +
        'p_id AND v.num_vagon = f.num_vagon'
      '  WHERE type_park_vagon = 1'
      '    AND f.users_group_id = @users_group_id'
      '    AND distance2 > 0'
      '    AND f.num_vagon NOT IN (SELECT num_vagon FROM #vagon_tech)'
      ''
      ''
      #9'DROP TABLE #vagon_tech'
      #9'DROP TABLE #v_vagon_owner1')
    Left = 408
    Top = 88
  end
  object DS_Traffic_Free_Day: TDataSource
    DataSet = Query_Traffic_Free_Day1
    Left = 408
    Top = 121
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarSubItem2'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
      end>
    UseOwnFont = False
    OnPopup = dxBarPopupMenu1Popup
    Left = 407
    Top = 159
    PixelsPerInch = 96
  end
  object Query_Traffic_Free_Day2: TADOQuery
    CursorType = ctStatic
    CommandTimeout = 200
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      
        #9'DECLARE'#9'@date_begin'#9#9#9'date'#9'= DATEADD(dd, -90, GETDATE()), --'#1085#1072#1095 +
        #1072#1083#1086' '#1075#1086#1076#1072' cast(datename(yyyy, getdate()) as datetime),'
      
        #9#9#9'@date_end'#9#9#9'      date'#9'= DATEADD(dd, 1, GETDATE()), --'#1082#1086#1085#1077#1094' '#1075 +
        #1086#1076#1072' DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1),'
      #9#9#9'@users_group_id'#9#9'  int'#9#9'= 0,'
      #9#9#9'@now'#9#9#9#9'        float'#9'= FLOOR(convert(float, getdate() ))'
      ''
      
        #9'SELECT @users_group_id = users_group_id FROM USERS WHERE users_' +
        'name = SYSTEM_USER'
      ''
      
        #9'--'#1042#1072#1075#1086#1085#1099' '#1074' '#1090#1077#1082#1091#1097#1077#1084' '#1086#1090#1094#1077#1087#1086#1095#1085#1086#1084' '#1088#1077#1084#1086#1085#1090#1077' ('#1058#1054#1056') '#1087#1086' '#1087#1086#1089#1083#1077#1076#1085#1080#1084' '#1079#1072#1075#1088#1091#1078 +
        #1077#1085#1085#1099#1084' '#1076#1072#1085#1085#1099#1084
      #9'SELECT DISTINCT t.num_vagon   '
      #9'INTO #vagon_tech'
      #9'FROM view_fact_tech t'
      #9'WHERE date_breakage_dt BETWEEN @date_begin AND @date_end   '
      
        #9#9'AND (type_repair = '#39'04'#39' OR type_repair = '#39'03'#39' OR type_repair =' +
        ' '#39'09'#39') -- '#1058#1077#1082#1091#1097#1080#1077' '#1088#1077#1084#1086#1085#1090#1099
      
        #9#9'AND (comment_sfh_cod = '#39'4'#39' OR comment_sfh_cod = '#39'1'#39')          ' +
        '       -- '#1047#1072#1090#1088#1072#1090#1099' '#1057#1060#1061
      #9#9'AND users_group_id = @users_group_id'
      
        #9'GROUP BY t.num_vagon, CONVERT(varchar(8),t.date_breakage_dt,112' +
        '), station_detaching_name, road_name, breakage_name -- 1 '#1089#1083#1091#1095#1072#1081' ' +
        #1088#1077#1084#1086#1085#1090#1072
      #9'HAVING MAX(t.date_repair_end) IS NULL'
      #9'CREATE INDEX #ix_num_vagon ON #vagon_tech(num_vagon)'
      ''
      
        #9'SELECT d.inf_obj_id, f.rzd_gropl_cod, n.inf_obj_cod AS node_cod' +
        '/*, n.inf_obj_name AS node_name */'
      '  INTO #rzd_gropl_cod'
      #9'FROM inf_obj_DEPO d'
      '  JOIN global_id gi ON d.inf_obj_id = gi.global_id'
      '  LEFT OUTER JOIN firm f ON f.firm_id = d.firm_id'
      '  LEFT OUTER JOIN view_NODE n ON n.inf_obj_id = d.node_id'
      
        #9'WHERE @now BETWEEN ISNULL(FLOOR(convert(float, d.date_begin)), ' +
        '@now) AND ISNULL(FLOOR(convert(float, d.date_end)), @now)'
      
        '    AND rzd_gropl_cod IS NOT NULL AND rzd_gropl_cod <> '#39#39' AND n.' +
        'inf_obj_cod IS NOT NULL AND n.inf_obj_cod <> '#39#39
      
        #9'CREATE INDEX #ix_rzd_gropl_cod ON #rzd_gropl_cod(rzd_gropl_cod,' +
        ' node_cod)'
      ''
      
        #9'SELECT v.num_vagon, v.vagon_id, v.users_group_id, v.firm_custom' +
        'er_name, vc6.firm_customer_name + '#39' '#1044#1086#1075'.'#8470' '#39' + vc6.contract_cod a' +
        's client_firm_customer_name, c6.vagon_comment as comment6, sale_' +
        'FIO_users + '#39' / '#39' + dispatch_FIO_users AS dispatch_FIO_users'
      #9'INTO #v_vagon_owner2'
      #9'FROM view_vagon_owner v '
      
        #9'LEFT OUTER JOIN vagon_comment c6  WITH (NOLOCK) ON (c6.vagon_id' +
        ' = v.vagon_id) AND (c6.vagon_comment_type_id = 908732) AND (@dat' +
        'e_end BETWEEN c6.date_begin AND ISNULL(c6.date_end + 0.999, @dat' +
        'e_end))  '
      
        #9'LEFT OUTER JOIN view_vagon_comment6 vc6 ON c6.attached_global_i' +
        'd = vc6.comment6_id  '
      
        #9'WHERE v.users_group_id = @users_group_id AND @date_end BETWEEN ' +
        'v.date_begin AND ISNULL(v.date_end, @date_end)'
      
        '  CREATE INDEX #ix_num_vagon_users_group_id2 ON #v_vagon_owner2(' +
        'num_vagon, users_group_id)'
      ''
      ''
      '  SELECT'
      
        '    fact_track_stat_id, f.num_vagon, v.vagon_id, type_park_vagon' +
        '_name, v.firm_customer_name, date_otpr, node_begin_name, node_en' +
        'd_name, node_operation_name, f.type_park_id, f.type_park_name, c' +
        'od_operation_vagon_name_full,'
      
        '    count_stay0, count_stay1, count_stay2, distance2, poluchgr, ' +
        'f.grpol_name, v.comment6, v.client_firm_customer_name, v.dispatc' +
        'h_FIO_users,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908727 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment1,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908728 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment2,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908729 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment3,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908730 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment4,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908731 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment5,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908733 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment7,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908734 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment8,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908735 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment9,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908736 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment10,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 2279355) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment11,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 4766052) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment12,'
      
        #9#9' (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH (NOLO' +
        'CK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_type_id' +
        ' = 1385291) AND (date_query BETWEEN c.date_begin AND ISNULL(c.da' +
        'te_end + 0.999 , date_query))) as comment13'
      ''
      '  FROM fact_track_stat f WITH (NOLOCK)'
      
        '  JOIN (SELECT cod FROM dbo.StrToTbl('#39'4824860,4824861,4824864,48' +
        '24866'#39','#39','#39')) sv ON sv.cod = f.type_park_id--'#1074#1099#1073#1086#1088' '#1090#1086#1083#1100#1082#1086' '#1089#1086#1073#1089#1090#1074#1077 +
        #1085#1085#1099#1077','#1072#1088#1077#1085#1076#1086#1074#1072#1085#1085#1099#1077','#1083#1080#1079#1080#1085#1075#1086#1074#1099#1077','#1087#1088#1080#1074#1083#1077#1095#1077#1085#1085#1099#1077
      
        '  JOIN #rzd_gropl_cod d ON d.node_cod = f.node_end_cod AND d.rzd' +
        '_gropl_cod = f.RW_grpol'
      
        '  LEFT JOIN #v_vagon_owner2 v ON v.users_group_id = f.users_grou' +
        'p_id AND v.num_vagon = f.num_vagon'
      '  WHERE type_park_vagon = 1'
      '    AND f.users_group_id = @users_group_id'
      '    AND distance2 = 0'
      '    AND f.num_vagon NOT IN (SELECT num_vagon FROM #vagon_tech)'
      ''
      ''
      #9'DROP TABLE #vagon_tech'
      #9'DROP TABLE #v_vagon_owner2'
      #9'DROP TABLE #rzd_gropl_cod'
      '')
    Left = 484
    Top = 84
  end
  object Query_Traffic_Free_Day4: TADOQuery
    CursorType = ctStatic
    CommandTimeout = 200
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      
        'DECLARE'#9'@date_begin'#9#9#9'date'#9'= DATEADD(dd, -90, GETDATE()), --'#1085#1072#1095#1072 +
        #1083#1086' '#1075#1086#1076#1072' cast(datename(yyyy, getdate()) as datetime),'
      
        #9#9#9'@date_end'#9#9#9'    date'#9'= DATEADD(dd, 1, GETDATE()), --'#1082#1086#1085#1077#1094' '#1075#1086#1076 +
        #1072' DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1),'
      #9#9#9'@users_group_id'#9#9'int'#9#9'= 0,'
      #9#9#9'@now'#9#9#9#9'      float'#9'= FLOOR(convert(float, getdate() ))'
      ''
      
        #9'SELECT @users_group_id = users_group_id FROM USERS WHERE users_' +
        'name = SYSTEM_USER'
      ''
      
        #9'--'#1042#1072#1075#1086#1085#1099' '#1074' '#1090#1077#1082#1091#1097#1077#1084' '#1086#1090#1094#1077#1087#1086#1095#1085#1086#1084' '#1088#1077#1084#1086#1085#1090#1077' ('#1058#1054#1056') '#1087#1086' '#1087#1086#1089#1083#1077#1076#1085#1080#1084' '#1079#1072#1075#1088#1091#1078 +
        #1077#1085#1085#1099#1084' '#1076#1072#1085#1085#1099#1084
      #9'SELECT DISTINCT t.num_vagon   '
      #9'INTO #vagon_tech'
      #9'FROM view_fact_tech t'
      #9'WHERE date_breakage_dt BETWEEN @date_begin AND @date_end   '
      
        #9#9'AND (type_repair = '#39'04'#39' OR type_repair = '#39'03'#39' OR type_repair =' +
        ' '#39'09'#39') -- '#1058#1077#1082#1091#1097#1080#1077' '#1088#1077#1084#1086#1085#1090#1099
      
        #9#9'AND (comment_sfh_cod = '#39'4'#39' OR comment_sfh_cod = '#39'1'#39')          ' +
        '       -- '#1047#1072#1090#1088#1072#1090#1099' '#1057#1060#1061
      #9#9'AND users_group_id = @users_group_id'
      
        #9'GROUP BY t.num_vagon, CONVERT(varchar(8),t.date_breakage_dt,112' +
        '), station_detaching_name, road_name, breakage_name -- 1 '#1089#1083#1091#1095#1072#1081' ' +
        #1088#1077#1084#1086#1085#1090#1072
      #9'HAVING MAX(t.date_repair_end) IS NULL'
      #9'CREATE INDEX #ix_num_vagon ON #vagon_tech(num_vagon)'
      ''
      
        #9'SELECT d.inf_obj_id, f.rzd_gropl_cod, n.inf_obj_cod AS node_cod' +
        '/*, n.inf_obj_name AS node_name */'
      '  INTO #rzd_gropl_cod'
      #9'FROM inf_obj_DEPO d'
      '  JOIN global_id gi ON d.inf_obj_id = gi.global_id'
      '  LEFT OUTER JOIN firm f ON f.firm_id = d.firm_id'
      '  LEFT OUTER JOIN view_NODE n ON n.inf_obj_id = d.node_id'
      
        #9'WHERE @now BETWEEN ISNULL(FLOOR(convert(float, d.date_begin)), ' +
        '@now) AND ISNULL(FLOOR(convert(float, d.date_end)), @now)'
      
        '    AND rzd_gropl_cod IS NOT NULL AND rzd_gropl_cod <> '#39#39' AND n.' +
        'inf_obj_cod IS NOT NULL AND n.inf_obj_cod <> '#39#39
      
        #9'CREATE INDEX #ix_rzd_gropl_cod ON #rzd_gropl_cod(rzd_gropl_cod,' +
        ' node_cod)'
      ''
      
        #9'SELECT v.num_vagon, v.vagon_id, v.users_group_id, v.firm_custom' +
        'er_name, vc6.firm_customer_name + '#39' '#1044#1086#1075'.'#8470' '#39' + vc6.contract_cod a' +
        's client_firm_customer_name, c6.vagon_comment as comment6, sale_' +
        'FIO_users + '#39' / '#39' + dispatch_FIO_users AS dispatch_FIO_users'
      #9'INTO #v_vagon_owner4'
      #9'FROM view_vagon_owner v '
      
        #9'LEFT OUTER JOIN vagon_comment c6  WITH (NOLOCK) ON (c6.vagon_id' +
        ' = v.vagon_id) AND (c6.vagon_comment_type_id = 908732) AND (@dat' +
        'e_end BETWEEN c6.date_begin AND ISNULL(c6.date_end + 0.999, @dat' +
        'e_end))  '
      
        #9'LEFT OUTER JOIN view_vagon_comment6 vc6 ON c6.attached_global_i' +
        'd = vc6.comment6_id  '
      
        #9'WHERE v.users_group_id = @users_group_id AND @date_end BETWEEN ' +
        'v.date_begin AND ISNULL(v.date_end, @date_end)'
      
        '  CREATE INDEX #ix_num_vagon_users_group_id4 ON #v_vagon_owner4(' +
        'num_vagon, users_group_id)'
      ''
      ''
      '  SELECT'
      
        '    fact_track_stat_id, f.num_vagon, v.vagon_id, type_park_vagon' +
        '_name, v.firm_customer_name, f.date_otpr, f.node_begin_name, f.n' +
        'ode_end_name, node_operation_name, f.type_park_id, f.type_park_n' +
        'ame, cod_operation_vagon_name_full,'
      
        '    count_stay0, count_stay1, count_stay2, distance2, f.poluchgr' +
        ', f.grpol_name, v.comment6, v.client_firm_customer_name, v.dispa' +
        'tch_FIO_users, d.node_cod, d.rzd_gropl_cod,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908727 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment1,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908728 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment2,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908729 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment3,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908730 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment4,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908731 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment5,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908733 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment7,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908734 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment8,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908735 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment9,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908736 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment10,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 2279355) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment11,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 4766052) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment12,'
      
        #9#9' (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH (NOLO' +
        'CK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_type_id' +
        ' = 1385291) AND (date_query BETWEEN c.date_begin AND ISNULL(c.da' +
        'te_end + 0.999 , date_query))) as comment13'
      '  FROM fact_track_stat f WITH (NOLOCK)'
      
        '  JOIN (SELECT cod FROM dbo.StrToTbl('#39'4824860,4824861,4824864,48' +
        '24866'#39','#39','#39')) sv ON sv.cod = f.type_park_id--'#1074#1099#1073#1086#1088' '#1090#1086#1083#1100#1082#1086' '#1089#1086#1073#1089#1090#1074#1077 +
        #1085#1085#1099#1077','#1072#1088#1077#1085#1076#1086#1074#1072#1085#1085#1099#1077','#1083#1080#1079#1080#1085#1075#1086#1074#1099#1077','#1087#1088#1080#1074#1083#1077#1095#1077#1085#1085#1099#1077
      
        '  LEFT JOIN fact_track_trip t ON t.fact_track_trip_id = f.fact_t' +
        'rack_trip_id AND t.num_vagon = f.num_vagon AND t.users_group_id ' +
        '= f.users_group_id'
      
        '  LEFT JOIN #v_vagon_owner4 v ON v.users_group_id = f.users_grou' +
        'p_id AND v.num_vagon = f.num_vagon'
      
        '  LEFT JOIN #rzd_gropl_cod  d ON d.node_cod = f.node_end_cod AND' +
        ' d.rzd_gropl_cod = f.RW_grpol'
      '  WHERE type_park_vagon = 1'
      '    AND f.users_group_id = @users_group_id'
      '    AND distance2 = 0 AND t.fact_weight > 0'
      '    AND f.num_vagon NOT IN (SELECT num_vagon FROM #vagon_tech)'
      '    AND d.node_cod IS NULL AND d.rzd_gropl_cod IS NULL'
      ''
      ''
      #9'DROP TABLE #vagon_tech'
      #9'DROP TABLE #v_vagon_owner4'
      #9'DROP TABLE #rzd_gropl_cod'
      ''
      '')
    Left = 554
    Top = 87
  end
  object Query_Traffic_Free_Day3: TADOQuery
    CursorType = ctStatic
    CommandTimeout = 200
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      
        'DECLARE'#9'@date_begin'#9#9#9'date'#9'= DATEADD(dd, -90, GETDATE()), --'#1085#1072#1095#1072 +
        #1083#1086' '#1075#1086#1076#1072' cast(datename(yyyy, getdate()) as datetime),'
      
        #9#9#9'@date_end'#9#9#9'    date'#9'= DATEADD(dd, 1, GETDATE()), --'#1082#1086#1085#1077#1094' '#1075#1086#1076 +
        #1072' DATEADD(yy, DATEDIFF(yy, 0, GETDATE()) + 1, -1),'
      #9#9#9'@users_group_id'#9#9'int'#9#9'= 0,'
      #9#9#9'@now'#9#9#9#9'      float'#9'= FLOOR(convert(float, getdate() ))'
      ''
      
        #9'SELECT @users_group_id = users_group_id FROM USERS WHERE users_' +
        'name = SYSTEM_USER'
      ''
      
        #9'--'#1042#1072#1075#1086#1085#1099' '#1074' '#1090#1077#1082#1091#1097#1077#1084' '#1086#1090#1094#1077#1087#1086#1095#1085#1086#1084' '#1088#1077#1084#1086#1085#1090#1077' ('#1058#1054#1056') '#1087#1086' '#1087#1086#1089#1083#1077#1076#1085#1080#1084' '#1079#1072#1075#1088#1091#1078 +
        #1077#1085#1085#1099#1084' '#1076#1072#1085#1085#1099#1084
      #9'SELECT DISTINCT t.num_vagon   '
      #9'INTO #vagon_tech'
      #9'FROM view_fact_tech t'
      #9'WHERE date_breakage_dt BETWEEN @date_begin AND @date_end'
      
        #9#9'AND (type_repair = '#39'04'#39' OR type_repair = '#39'03'#39' OR type_repair =' +
        ' '#39'09'#39') -- '#1058#1077#1082#1091#1097#1080#1077' '#1088#1077#1084#1086#1085#1090#1099
      
        #9#9'AND (comment_sfh_cod = '#39'4'#39' OR comment_sfh_cod = '#39'1'#39')          ' +
        '       -- '#1047#1072#1090#1088#1072#1090#1099' '#1057#1060#1061
      #9#9'AND users_group_id = @users_group_id'
      
        #9'GROUP BY t.num_vagon, CONVERT(varchar(8),t.date_breakage_dt,112' +
        '), station_detaching_name, road_name, breakage_name -- 1 '#1089#1083#1091#1095#1072#1081' ' +
        #1088#1077#1084#1086#1085#1090#1072
      #9'HAVING MAX(t.date_repair_end) IS NULL'
      #9'CREATE INDEX #ix_num_vagon ON #vagon_tech(num_vagon)'
      ''
      
        #9'SELECT d.inf_obj_id, f.rzd_gropl_cod, n.inf_obj_cod AS node_cod' +
        '/*, n.inf_obj_name AS node_name */'
      '  INTO #rzd_gropl_cod'
      #9'FROM inf_obj_DEPO d'
      '  JOIN global_id gi ON d.inf_obj_id = gi.global_id'
      '  LEFT OUTER JOIN firm f ON f.firm_id = d.firm_id'
      '  LEFT OUTER JOIN view_NODE n ON n.inf_obj_id = d.node_id'
      
        #9'WHERE @now BETWEEN ISNULL(FLOOR(convert(float, d.date_begin)), ' +
        '@now) AND ISNULL(FLOOR(convert(float, d.date_end)), @now)'
      
        '    AND rzd_gropl_cod IS NOT NULL AND rzd_gropl_cod <> '#39#39' AND n.' +
        'inf_obj_cod IS NOT NULL AND n.inf_obj_cod <> '#39#39
      
        #9'CREATE INDEX #ix_rzd_gropl_cod ON #rzd_gropl_cod(rzd_gropl_cod,' +
        ' node_cod)'
      ''
      
        #9'SELECT v.num_vagon, v.vagon_id, v.users_group_id, v.firm_custom' +
        'er_name, vc6.firm_customer_name + '#39' '#1044#1086#1075'.'#8470' '#39' + vc6.contract_cod a' +
        's client_firm_customer_name, c6.vagon_comment as comment6, sale_' +
        'FIO_users + '#39' / '#39' + dispatch_FIO_users AS dispatch_FIO_users'
      #9'INTO #v_vagon_owner3'
      #9'FROM view_vagon_owner v'
      
        #9'LEFT OUTER JOIN vagon_comment c6  WITH (NOLOCK) ON (c6.vagon_id' +
        ' = v.vagon_id) AND (c6.vagon_comment_type_id = 908732) AND (@dat' +
        'e_end BETWEEN c6.date_begin AND ISNULL(c6.date_end + 0.999, @dat' +
        'e_end))  '
      
        #9'LEFT OUTER JOIN view_vagon_comment6 vc6 ON c6.attached_global_i' +
        'd = vc6.comment6_id  '
      
        #9'WHERE v.users_group_id = @users_group_id AND @date_end BETWEEN ' +
        'v.date_begin AND ISNULL(v.date_end, @date_end)'
      
        #9'CREATE INDEX #ix_num_vagon_users_group_id3 ON #v_vagon_owner3(n' +
        'um_vagon, users_group_id)'
      ''
      ''
      ''
      '  SELECT'
      
        '    fact_track_stat_id, f.num_vagon, v.vagon_id, type_park_vagon' +
        '_name, v.firm_customer_name, f.date_otpr, f.node_begin_name, f.n' +
        'ode_end_name, node_operation_name, f.type_park_id, f.type_park_n' +
        'ame, cod_operation_vagon_name_full,'
      
        '    count_stay0, count_stay1, count_stay2, distance2, f.poluchgr' +
        ', f.grpol_name, v.comment6, v.client_firm_customer_name, v.dispa' +
        'tch_FIO_users, d.node_cod, d.rzd_gropl_cod,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908727 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment1,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908728 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment2,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908729 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment3,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908730 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment4,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908731 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment5,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908733 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment7,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908734 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment8,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908735 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment9,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908736 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment10,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 2279355) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment11,'
      
        '         (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 4766052) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query))) as comment12,'
      
        #9#9' (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH (NOLO' +
        'CK) WHERE (c.vagon_id = f.vagon_id) AND (c.vagon_comment_type_id' +
        ' = 1385291) AND (date_query BETWEEN c.date_begin AND ISNULL(c.da' +
        'te_end + 0.999 , date_query))) as comment13'
      '  FROM fact_track_stat f WITH (NOLOCK)'
      
        '  JOIN (SELECT cod FROM dbo.StrToTbl('#39'4824860,4824861,4824864,48' +
        '24866'#39','#39','#39')) sv ON sv.cod = f.type_park_id--'#1074#1099#1073#1086#1088' '#1090#1086#1083#1100#1082#1086' '#1089#1086#1073#1089#1090#1074#1077 +
        #1085#1085#1099#1077','#1072#1088#1077#1085#1076#1086#1074#1072#1085#1085#1099#1077','#1083#1080#1079#1080#1085#1075#1086#1074#1099#1077','#1087#1088#1080#1074#1083#1077#1095#1077#1085#1085#1099#1077
      
        '  LEFT JOIN fact_track_trip t ON t.fact_track_trip_id = f.fact_t' +
        'rack_trip_id AND t.num_vagon = f.num_vagon AND t.users_group_id ' +
        '= f.users_group_id'
      
        '  LEFT JOIN #v_vagon_owner3 v ON v.users_group_id = f.users_grou' +
        'p_id AND v.num_vagon = f.num_vagon'
      
        '  LEFT JOIN #rzd_gropl_cod  d ON d.node_cod = f.node_end_cod AND' +
        ' d.rzd_gropl_cod = f.RW_grpol'
      '  WHERE type_park_vagon = 1'
      '    AND f.users_group_id = @users_group_id'
      '    AND distance2 = 0 AND t.fact_weight = 0'
      '    AND f.num_vagon NOT IN (SELECT num_vagon FROM #vagon_tech)'
      '    AND d.node_cod IS NULL AND d.rzd_gropl_cod IS NULL'
      ''
      #9'DROP TABLE #vagon_tech'
      #9'DROP TABLE #v_vagon_owner3'
      #9'DROP TABLE #rzd_gropl_cod'
      ''
      '')
    Left = 519
    Top = 85
  end
end
