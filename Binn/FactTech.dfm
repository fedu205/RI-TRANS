object fmFactTech: TfmFactTech
  Left = 0
  Top = 0
  Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1086#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077' '#1074#1072#1075#1086#1085#1086#1074
  ClientHeight = 640
  ClientWidth = 1034
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 26
    Width = 1034
    Height = 614
    ActivePage = TabSheet1
    Align = alClient
    Style = tsButtons
    TabOrder = 4
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1058#1077#1093'. '#1089#1086#1089#1090#1086#1103#1085#1080#1077
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1026
        Height = 583
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BorderWidth = 1
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = Popup_TrackVagon
          OnDblClick = cxGrid1DBBandedTableView1DblClick
          OnKeyPress = cxGrid1DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_FactTech
          DataController.Filter.OnChanged = cxGrid1DBBandedTableView1DataControllerFilterChanged
          DataController.KeyFieldNames = 'fact_tech_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
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
                  Column = cxGrid1DBBandedTableView1num_vagon
                end
                item
                  Column = cxGrid1DBBandedTableView1fact_tech_id
                end
                item
                  Column = cxGrid1DBBandedTableView1block_p
                end
                item
                  Column = cxGrid1DBBandedTableView1type_repair
                end
                item
                  Column = cxGrid1DBBandedTableView1depo
                end
                item
                  Column = cxGrid1DBBandedTableView1num_notice_23
                end
                item
                  Column = cxGrid1DBBandedTableView1road
                end
                item
                  Column = cxGrid1DBBandedTableView1station_detaching
                end
                item
                  Column = cxGrid1DBBandedTableView1date_breakage
                end
                item
                  Column = cxGrid1DBBandedTableView1breakage
                end
                item
                  Column = cxGrid1DBBandedTableView1date_build
                end
                item
                  Column = cxGrid1DBBandedTableView1last_depo_place
                end
                item
                  Column = cxGrid1DBBandedTableView1date_last_depo_place
                end
                item
                  Column = cxGrid1DBBandedTableView1last_cap_place
                end
                item
                  Column = cxGrid1DBBandedTableView1date_cap_place
                end
                item
                  Column = cxGrid1DBBandedTableView1num_notice_36
                end
                item
                  Column = cxGrid1DBBandedTableView1date_repair_begin
                end
                item
                  Column = cxGrid1DBBandedTableView1date_repair_end
                end
                item
                  Column = cxGrid1DBBandedTableView1modernization
                end
                item
                  Column = cxGrid1DBBandedTableView1file_load_name
                end
                item
                  Column = cxGrid1DBBandedTableView1file_load_date
                end
                item
                  Column = cxGrid1DBBandedTableView1users_id
                end
                item
                  Column = cxGrid1DBBandedTableView1road_name
                end
                item
                  Column = cxGrid1DBBandedTableView1station_detaching_name
                end
                item
                  Column = cxGrid1DBBandedTableView1breakage_name
                end
                item
                  Column = cxGrid1DBBandedTableView1global_color
                end
                item
                  Column = cxGrid1DBBandedTableView1date_breakage_t
                end
                item
                  Column = cxGrid1DBBandedTableView1date_repair_begin_t
                end
                item
                  Column = cxGrid1DBBandedTableView1date_repair_end_t
                end
                item
                  Column = cxGrid1DBBandedTableView1file_load_date_t
                end
                item
                  Column = cxGrid1DBBandedTableView1depo_name
                end
                item
                  Column = cxGrid1DBBandedTableView1last_depo_place_name
                end
                item
                  Column = cxGrid1DBBandedTableView1last_cap_place_name
                end
                item
                  Column = cxGrid1DBBandedTableView1FIO_users
                end
                item
                  Column = cxGrid1DBBandedTableView1type_repair_name
                end>
              SummaryItems = <
                item
                  Format = #1050#1086#1083'-'#1074#1086': 0'
                  Kind = skCount
                end>
            end>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          Filtering.ColumnFilteredItemsList = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = clSilver
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.HeaderHeight = 35
          OptionsView.BandHeaders = False
          Preview.AutoHeight = False
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid1DBBandedTableView1fact_tech_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'fact_tech_id'
            HeaderAlignmentVert = vaTop
            HeaderGlyphAlignmentVert = vaTop
            Options.VertSizing = False
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn
            Caption = #8470' '#1074#1072#1075#1086#1085#1072
            DataBinding.FieldName = 'num_vagon'
            HeaderAlignmentVert = vaTop
            HeaderGlyphAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_Bold
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1block_p: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1079#1085#1072#1082' '#1073#1083#1086#1082#1072' '#1056
            DataBinding.FieldName = 'block_p'
            HeaderAlignmentVert = vaTop
            HeaderGlyphAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1type_repair: TcxGridDBBandedColumn
            Caption = '('#1050#1086#1076') '#1042#1080#1076' '#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'type_repair'
            HeaderAlignmentVert = vaTop
            HeaderGlyphAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1depo: TcxGridDBBandedColumn
            Caption = '('#1050#1086#1076') '#1044#1077#1087#1086
            DataBinding.FieldName = 'depo'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1num_notice_23: TcxGridDBBandedColumn
            Caption = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077' '#1042#1059'-23'
            DataBinding.FieldName = 'num_notice_23'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1road: TcxGridDBBandedColumn
            Caption = '('#1050#1086#1076') '#1044#1086#1088#1086#1075#1072
            DataBinding.FieldName = 'road'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1station_detaching: TcxGridDBBandedColumn
            Caption = '('#1050#1086#1076') '#1057#1090'.'#1086#1090#1094#1077#1087#1082#1080
            DataBinding.FieldName = 'station_detaching'
            HeaderAlignmentVert = vaTop
            HeaderGlyphAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1date_breakage: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080
            DataBinding.FieldName = 'date_breakage'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ReadOnly = True
            Properties.SaveTime = False
            Properties.ShowTime = False
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1breakage: TcxGridDBBandedColumn
            Caption = '('#1050#1086#1076') '#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
            DataBinding.FieldName = 'breakage'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1date_build: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1088#1086#1081#1082#1080
            DataBinding.FieldName = 'date_build'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1last_depo_place: TcxGridDBBandedColumn
            Caption = '('#1050#1086#1076') '#1052#1077#1089#1090#1086' '#1044#1077#1087'.'#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'last_depo_place'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1date_last_depo_place: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1076#1077#1087'.'#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'date_last_depo_place'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1last_cap_place: TcxGridDBBandedColumn
            Caption = '('#1050#1086#1076') '#1052#1077#1089#1090#1086' '#1050#1072#1087'.'#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'last_cap_place'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1date_cap_place: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1050#1072#1087'.'#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'date_cap_place'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1num_notice_36: TcxGridDBBandedColumn
            Caption = #1059#1074#1077#1076#1086#1084#1083#1077#1085#1080#1077' '#1042#1059'-36'
            DataBinding.FieldName = 'num_notice_36'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1date_repair_begin: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1085#1072#1095'.'#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'date_repair_begin'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1date_repair_end: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095'.'#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'date_repair_end'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1modernization: TcxGridDBBandedColumn
            Caption = #1052#1086#1076#1077#1088#1085#1080#1079#1072#1094#1080#1103
            DataBinding.FieldName = 'modernization'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1file_load_name: TcxGridDBBandedColumn
            Caption = #1060#1072#1081#1083' '#1079#1072#1075#1088#1091#1079#1082#1080
            DataBinding.FieldName = 'file_load_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1file_load_date: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1079#1072#1075#1088#1091#1079#1082#1080
            DataBinding.FieldName = 'file_load_date'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1users_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'users_id'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1road_name: TcxGridDBBandedColumn
            Caption = #1044#1086#1088#1086#1075#1072
            DataBinding.FieldName = 'road_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1station_detaching_name: TcxGridDBBandedColumn
            Caption = #1057#1090'. '#1086#1090#1094#1077#1087#1082#1080
            DataBinding.FieldName = 'station_detaching_name'
            HeaderAlignmentVert = vaTop
            HeaderGlyphAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1breakage_name: TcxGridDBBandedColumn
            Caption = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
            DataBinding.FieldName = 'breakage_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn
            Caption = #1062#1074#1077#1090
            DataBinding.FieldName = 'global_color'
            PropertiesClassName = 'TcxColorComboBoxProperties'
            Properties.CustomColors = <>
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1date_breakage_t: TcxGridDBBandedColumn
            Caption = #1042#1088#1077#1084#1103' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080
            DataBinding.FieldName = 'date_breakage_t'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1date_repair_begin_t: TcxGridDBBandedColumn
            Caption = #1042#1088#1077#1084#1103' '#1085#1072#1095'. '#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'date_repair_begin_t'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1date_repair_end_t: TcxGridDBBandedColumn
            Caption = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'date_repair_end_t'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1file_load_date_t: TcxGridDBBandedColumn
            Caption = #1042#1088#1077#1084#1103' '#1079#1072#1075#1088#1091#1079#1082#1080
            DataBinding.FieldName = 'file_load_date_t'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1depo_name: TcxGridDBBandedColumn
            Caption = #1044#1077#1087#1086
            DataBinding.FieldName = 'depo_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1last_depo_place_name: TcxGridDBBandedColumn
            Caption = #1052#1077#1089#1090#1086' '#1076#1077#1087'. '#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'last_depo_place_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1last_cap_place_name: TcxGridDBBandedColumn
            Caption = #1052#1077#1089#1090#1086' '#1082#1072#1087'. '#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'last_cap_place_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn
            Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
            DataBinding.FieldName = 'FIO_users'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1type_repair_name: TcxGridDBBandedColumn
            Caption = #1042#1080#1076' '#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'type_repair_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1model_name: TcxGridDBBandedColumn
            Caption = #1052#1086#1076#1077#1083#1100
            DataBinding.FieldName = 'model_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1firm_name: TcxGridDBBandedColumn
            Caption = #1042#1083#1072#1076#1077#1083#1077#1094
            DataBinding.FieldName = 'firm_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1arenda_firm_name: TcxGridDBBandedColumn
            Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088
            DataBinding.FieldName = 'arenda_firm_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1set_self_cost: TcxGridDBBandedColumn
            Caption = #1057#1086#1073#1089#1090#1074'. '#1088#1072#1089#1093#1086#1076
            DataBinding.FieldName = 'set_self_cost'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1breakage_type: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1079#1085#1072#1082' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080
            DataBinding.FieldName = 'breakage_type'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1set_weight: TcxGridDBBandedColumn
            Caption = #1060#1072#1082#1090'. '#1074#1077#1089'.'
            DataBinding.FieldName = 'fact_weight'
            HeaderAlignmentVert = vaTop
            HeaderGlyphAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
            DataBinding.FieldName = 'type_park_name'
            HeaderAlignmentVert = vaTop
            HeaderGlyphAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1vagon_id: TcxGridDBBandedColumn
            Caption = #8470' '#1047#1072#1087#1080#1089#1080' '#1074#1072#1075#1086#1085#1072
            DataBinding.FieldName = 'vagon_id'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1comment6: TcxGridDBBandedColumn
            Caption = #8470'6 '#1082#1086#1084#1084#1077#1085#1090'.'
            DataBinding.FieldName = 'comment6'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1comment_sfh_name: TcxGridDBBandedColumn
            Caption = #1055#1086#1084#1077#1090#1082#1072' '#1057#1060#1061
            DataBinding.FieldName = 'comment_sfh_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1comment_sfh_color: TcxGridDBBandedColumn
            Caption = #1062#1074#1077#1090' '#1055#1086#1084#1077#1090#1082#1080' '#1057#1060#1061
            DataBinding.FieldName = 'comment_sfh_color'
            PropertiesClassName = 'TcxColorComboBoxProperties'
            Properties.CustomColors = <>
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 44
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1vagon_owner_comment: TcxGridDBBandedColumn
            Caption = #1042#1083#1072#1076#1077#1083#1077#1094' '#1074#1072#1075#1086#1085#1072' ('#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077')'
            DataBinding.FieldName = 'vagon_owner_comment'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 45
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBBandedTableView1
        end
      end
    end
    object TabSheet2: TTabSheet
      Tag = 1
      Caption = #1048#1089#1082#1083#1102#1095#1077#1085#1080#1077' '#1088#1077#1084#1086#1085#1090#1086#1074' '#1080#1079' '#1072#1088#1077#1085#1076#1099
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1026
        Height = 583
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BorderWidth = 1
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid2DBBandedTableView2: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu1
          OnDblClick = dxBarButton21Click
          OnKeyPress = cxGrid2DBBandedTableView2KeyPress
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGrid2DBBandedTableView2CustomDrawCell
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_VagonRepair
          DataController.Filter.OnChanged = cxGrid1DBBandedTableView1DataControllerFilterChanged
          DataController.KeyFieldNames = 'vagon_repair_fact_id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skCount
              Position = spFooter
              Column = cxGrid2DBBandedTableView2num_vagon
            end
            item
              Kind = skCount
              Column = cxGrid2DBBandedTableView2num_vagon
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGrid2DBBandedTableView2days_repair
            end
            item
              Kind = skSum
              Column = cxGrid2DBBandedTableView2days_repair
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
            end
            item
              Kind = skCount
              Column = cxGrid2DBBandedTableView2num_vagon
            end
            item
              Kind = skSum
              Column = cxGrid2DBBandedTableView2days_repair
            end
            item
              Kind = skSum
              Column = cxGrid2DBBandedTableView2days_repair_period
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
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
                  Format = #1050#1086#1083'-'#1074#1086': 0'
                  Kind = skCount
                end>
            end>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          Filtering.ColumnFilteredItemsList = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = clSilver
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.HeaderHeight = 35
          OptionsView.BandHeaders = False
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid2DBBandedTableView2vagon_repair_fact_id: TcxGridDBBandedColumn
            Caption = #8470' '#1047#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'vagon_repair_fact_id'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2vagon_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'vagon_id'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid2DBBandedTableView2num_vagon: TcxGridDBBandedColumn
            Caption = #8470' '#1074#1072#1075#1086#1085#1072
            DataBinding.FieldName = 'num_vagon'
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_Bold
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2date_begin_repair: TcxGridDBBandedColumn
            Caption = #1053#1072#1095#1072#1083#1086' '#1072#1088#1077#1085#1076#1085#1099#1093' '#1082#1072#1085#1080#1082#1091#1083
            DataBinding.FieldName = 'date_begin_repair'
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_Bold
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2date_end_repair: TcxGridDBBandedColumn
            Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1072#1088#1077#1085#1076#1085#1099#1093' '#1082#1072#1085#1080#1082#1091#1083
            DataBinding.FieldName = 'date_end_repair'
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_Bold
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2breakage_name: TcxGridDBBandedColumn
            Caption = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
            DataBinding.FieldName = 'breakage_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2users_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'users_id'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid2DBBandedTableView2FIO_users: TcxGridDBBandedColumn
            Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
            DataBinding.FieldName = 'FIO_users'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2users_group_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'users_group_id'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid2DBBandedTableView2days_repair: TcxGridDBBandedColumn
            Caption = #1040#1088#1077#1085#1076#1085#1099#1077' '#1082#1072#1085#1080#1082#1091#1083#1099', '#1089#1091#1090'.'
            DataBinding.FieldName = 'days_repair'
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_Bold
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2days_repair_period: TcxGridDBBandedColumn
            Caption = #1040#1088#1077#1085#1076#1085#1099#1077' '#1082#1072#1085#1080#1082#1091#1083#1099' ('#1079#1072' '#1087#1077#1088#1080#1086#1076'), '#1089#1091#1090'.'
            DataBinding.FieldName = 'days_repair_period'
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_Bold
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2set_arenda: TcxGridDBBandedColumn
            Caption = #1048#1089#1082#1083#1102#1095#1072#1090#1100' '#1080#1079' '#1072#1088#1077#1085#1076#1099
            DataBinding.FieldName = 'set_arenda'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2set_subarenda: TcxGridDBBandedColumn
            Caption = #1048#1089#1082#1083#1102#1095#1072#1090#1100' '#1080#1079' '#1089#1091#1073#1072#1088#1077#1085#1076#1099
            DataBinding.FieldName = 'set_subarenda'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2set_kratk_arenda: TcxGridDBBandedColumn
            Caption = #1048#1089#1082#1083#1102#1095#1072#1090#1100' '#1080#1079' '#1082#1088#1072#1090#1082#1086#1089#1088#1086#1095#1085#1086#1081' '#1072#1088#1077#1085#1076#1099
            DataBinding.FieldName = 'set_kratk_arenda'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2set_sub_kratk_arenda: TcxGridDBBandedColumn
            Caption = #1048#1089#1082#1083#1102#1095#1072#1090#1100' '#1080#1079' '#1082#1088#1072#1090#1082#1086#1089#1088#1086#1095#1085#1086#1081' '#1089#1091#1073#1072#1088#1077#1085#1076#1099
            DataBinding.FieldName = 'set_sub_kratk_arenda'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2set_cheked: TcxGridDBBandedColumn
            Caption = #1055#1088#1086#1074#1077#1088#1077#1085
            DataBinding.FieldName = 'set_cheked'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_ID
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2comment: TcxGridDBBandedColumn
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
            DataBinding.FieldName = 'comment'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2firm_arenda: TcxGridDBBandedColumn
            Caption = #1040#1088#1077#1085#1076#1086#1076#1072#1090#1077#1083#1100'/'#1057#1091#1073#1072#1088#1077#1085#1076#1086#1076#1072#1090#1077#1083#1100
            DataBinding.FieldName = 'firm_arenda'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2type_arenda_repair_name: TcxGridDBBandedColumn
            Caption = #1059#1089#1083#1086#1074#1080#1077' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1103' '#1080#1079' '#1072#1088#1077#1085#1076#1099
            DataBinding.FieldName = 'type_arenda_repair_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2firm_sarenda: TcxGridDBBandedColumn
            Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088'/'#1057#1091#1073#1072#1088#1077#1085#1076#1072#1090#1086#1088
            DataBinding.FieldName = 'firm_sarenda'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2type_sarenda_repair_name: TcxGridDBBandedColumn
            Caption = #1059#1089#1083#1086#1074#1080#1077' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1103' '#1080#1079' '#1089#1091#1073#1072#1088#1077#1085#1076#1099
            DataBinding.FieldName = 'type_sarenda_repair_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2date_period: TcxGridDBBandedColumn
            Caption = #1055#1077#1088#1080#1086#1076
            DataBinding.FieldName = 'date_period'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2date_last_update: TcxGridDBBandedColumn
            Caption = #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1077
            DataBinding.FieldName = 'date_last_update'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2date_otpr: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088'. '#1055#1055#1057'  ('#1056#1077#1081#1089' '#1055#1055#1057')'
            DataBinding.FieldName = 'date_otpr'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2date_arrival: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073#1099#1090#1080#1103' '#1055#1055#1057' ('#1056#1077#1081#1089' '#1055#1055#1057')'
            DataBinding.FieldName = 'date_arrival'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2node_end_name: TcxGridDBBandedColumn
            Caption = #1057#1090'. '#1055#1055#1057
            DataBinding.FieldName = 'node_end_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2date_breakage: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1042#1059'-23 ('#1058#1077#1093'. '#1089#1086#1089#1090#1086#1103#1085#1080#1077')'
            DataBinding.FieldName = 'date_breakage'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2station_detaching_name: TcxGridDBBandedColumn
            Caption = #1057#1090'. '#1086#1090#1094#1077#1087#1082#1080
            DataBinding.FieldName = 'station_detaching_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2type_repair_name: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1088#1077#1084#1086#1085#1090#1072' ('#1058#1077#1093'. '#1089#1086#1089#1090#1086#1103#1085#1080#1077')'
            DataBinding.FieldName = 'type_repair_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2depo_name: TcxGridDBBandedColumn
            Caption = #1044#1077#1087#1086' ('#1058#1077#1093'. '#1089#1086#1089#1090#1086#1103#1085#1080#1077')'
            DataBinding.FieldName = 'depo_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2date_repair_end: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1042#1059'-36 ('#1058#1077#1093'. '#1089#1086#1089#1090#1086#1103#1085#1080#1077')'
            DataBinding.FieldName = 'date_repair_end'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2date_otpr1: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088'. '#1074' '#1088#1077#1084#1086#1085#1090'  ('#1056#1077#1081#1089' '#1074' '#1088#1077#1084#1086#1085#1090')'
            DataBinding.FieldName = 'date_otpr1'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2date_arrival1: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073#1099#1090#1080#1103' '#1074' '#1088#1077#1084#1086#1085#1090' ('#1056#1077#1081#1089' '#1074' '#1088#1077#1084#1086#1085#1090')'
            DataBinding.FieldName = 'date_arrival1'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2node_end_name1: TcxGridDBBandedColumn
            Caption = #1057#1090'. '#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'node_repair_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2date_otpr2: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088'. '#1085#1072' '#1087#1086#1075#1088#1091#1079#1082#1091'  ('#1056#1077#1081#1089' '#1085#1072' '#1087#1086#1075#1088#1091#1079#1082#1091')'
            DataBinding.FieldName = 'date_otpr2'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2date_arrival2: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073#1099#1090#1080#1103' '#1085#1072' '#1087#1086#1075#1088#1091#1079#1082#1091' ('#1056#1077#1081#1089' '#1085#1072' '#1087#1086#1075#1088#1091#1079#1082#1091')'
            DataBinding.FieldName = 'date_arrival2'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2node_end_name2: TcxGridDBBandedColumn
            Caption = #1057#1090'. '#1087#1086#1075#1088#1091#1079#1082#1080
            DataBinding.FieldName = 'node_end_name2'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2type_repair_fact_name: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1103
            DataBinding.FieldName = 'type_repair_fact_name'
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_Bold
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2firm_arenda_contract_cod: TcxGridDBBandedColumn
            Caption = #1040#1088#1077#1085#1076#1086#1076#1072#1090#1077#1083#1100'/'#1057#1091#1073#1072#1088#1077#1085#1076#1086#1076#1072#1090#1077#1083#1100' '#1076#1086#1075#1086#1074#1086#1088
            DataBinding.FieldName = 'firm_arenda_contract_cod'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2firm_sarenda_contract_cod: TcxGridDBBandedColumn
            Caption = #1040#1088#1077#1085#1076#1072#1090#1086#1088'/'#1057#1091#1073#1072#1088#1077#1085#1076#1072#1090#1086#1088' '#1076#1086#1075#1086#1074#1086#1088
            DataBinding.FieldName = 'firm_sarenda_contract_cod'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2d1: TcxGridDBBandedColumn
            Caption = #1055#1077#1088#1074#1099#1081' '#1076#1077#1085#1100
            DataBinding.FieldName = 'd1'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView2d2: TcxGridDBBandedColumn
            Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1076#1077#1085#1100
            DataBinding.FieldName = 'd2'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBBandedTableView2
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1056#1077#1077#1089#1090#1088' '#1079#1072#1073#1088#1072#1082#1086#1074#1072#1085#1085#1099#1093' '#1074#1072#1075#1086#1085#1086#1074
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1026
        Height = 583
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BorderWidth = 1
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu2
          OnKeyPress = cxGrid3DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGrid2DBBandedTableView2CustomDrawCell
          DataController.DataSource = DS_Report_fact_track
          DataController.Filter.OnChanged = cxGrid1DBBandedTableView1DataControllerFilterChanged
          DataController.KeyFieldNames = 'num_vagon;date_begin'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skCount
              Position = spFooter
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
              Position = spFooter
            end
            item
              Kind = skCount
            end
            item
              Kind = skCount
              Position = spFooter
            end
            item
              Kind = skCount
            end
            item
              Format = '0#'
              Kind = skSum
              Position = spFooter
              Column = cxGrid3DBBandedTableView1count_p
            end
            item
              Format = '0#'
              Kind = skSum
              Column = cxGrid3DBBandedTableView1count_p
            end
            item
              Kind = skCount
              Position = spFooter
              Column = cxGrid3DBBandedTableView1num_vagon
            end
            item
              Kind = skCount
              Column = cxGrid3DBBandedTableView1num_vagon
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
              OnGetText = cxGrid3DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText
            end
            item
              Kind = skCount
            end
            item
              Format = '0#'
              Kind = skSum
              Column = cxGrid3DBBandedTableView1count_p
            end
            item
              Kind = skCount
              Column = cxGrid3DBBandedTableView1num_vagon
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <
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
                  Format = #1050#1086#1083'-'#1074#1086': 0'
                  Kind = skCount
                end>
            end>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          Filtering.ColumnFilteredItemsList = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = clSilver
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.HeaderHeight = 35
          OptionsView.BandHeaders = False
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid3DBBandedTableView1num_vagon: TcxGridDBBandedColumn
            Caption = #8470' '#1074#1072#1075#1086#1085#1072
            DataBinding.FieldName = 'num_vagon'
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_Bold
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1date_begin: TcxGridDBBandedColumn
            Caption = #1053#1077#1088#1072#1073'. '#1087#1072#1088#1082' '#1085#1072#1095#1072#1083#1086' ('#1076#1080#1089#1083'.)'
            DataBinding.FieldName = 'date_begin'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1date_end: TcxGridDBBandedColumn
            Caption = #1053#1077#1088#1072#1073'. '#1087#1072#1088#1082' '#1086#1082#1086#1085#1095#1072#1085#1080#1077' ('#1076#1080#1089#1083'.)'
            DataBinding.FieldName = 'date_end'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1count_p: TcxGridDBBandedColumn
            Caption = #1050#1086#1083'-'#1074#1086','#1089#1091#1090'  ('#1076#1080#1089#1083'.)'
            DataBinding.FieldName = 'count_p'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '0#'
            HeaderAlignmentVert = vaTop
            Styles.Content = fmMain.cxStyle_Bold
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1type_repair_name: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1088#1077#1084#1086#1085#1090#1072' ('#1090#1077#1093'. '#1089#1086#1089#1090'.)'
            DataBinding.FieldName = 'type_repair_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1breakage_type: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1079#1085#1072#1082' '#1085#1077#1080#1089#1087#1088#1072#1085#1086#1089#1090#1080' ('#1090#1077#1093'. '#1089#1086#1089#1090'.)'
            DataBinding.FieldName = 'breakage_type'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1date_breakage_dt: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080'  ('#1090#1077#1093'. '#1089#1086#1089#1090'.)'
            DataBinding.FieldName = 'date_breakage'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1date_repare_end: TcxGridDBBandedColumn
            Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1088#1077#1084#1086#1085#1090#1072'  ('#1090#1077#1093'. '#1089#1086#1089#1090'.)'
            DataBinding.FieldName = 'date_repare_end'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
            Caption = #1042#1083#1072#1076#1077#1083#1077#1094
            DataBinding.FieldName = 'firm_customer_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1type_park_name: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
            DataBinding.FieldName = 'type_park_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn
            Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
            DataBinding.FieldName = 'rod_vagon_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1breakage_name: TcxGridDBBandedColumn
            Caption = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
            DataBinding.FieldName = 'breakage_name'
            HeaderAlignmentVert = vaTop
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBBandedTableView1
        end
      end
    end
  end
  object Query_FactTech: TADOQuery
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
      end
      item
        Name = 'users_group_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      ' SELECT *,'
      
        ' (SELECT top 1 c.vagon_comment FROM dbo.view_vagon_comment c WIT' +
        'H (NOLOCK) WHERE (c.vagon_id = view_fact_tech.vagon_id) AND (vag' +
        'on_comment_type_cod = '#39'6'#39')  AND (date_breakage BETWEEN c.date_be' +
        'gin AND ISNULL(c.date_end + 0.999 ,date_breakage))) AS comment6 '
      'FROM view_fact_tech WITH (NOLOCK)'
      'WHERE '
      
        '((date_breakage BETWEEN  :date1 AND :date2) OR (date_breakage is' +
        ' NULL))'
      'AND (users_group_id = :users_group_id ) ')
    Left = 69
    Top = 261
  end
  object DS_FactTech: TDataSource
    DataSet = Query_FactTech
    Left = 68
    Top = 289
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Top'
          'Width'
          'WindowState')
      end>
    StorageName = '\Software\Lis1\FactTech'
    StorageType = stRegistry
    Left = 169
    Top = 178
  end
  object SP_TrackDelete: TADOStoredProc
    Connection = fmMain.Lis
    ProcedureName = 'sp_fact_tech_modify;1'
    Parameters = <>
    Left = 357
    Top = 250
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
      'Popup_Load'
      'Popup_ToExcel'
      'Popup_TrackVagon')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    ImageOptions.Images = fmMain.cxImageList1
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 199
    Top = 179
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
      ItemLinks = <
        item
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
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton25'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton29'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton28'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = #1052#1077#1085#1102
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1074#1099#1075#1086#1085#1099
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1074#1099#1075#1086#1085#1099
      Visible = ivAlways
      ImageIndex = 55
      ShowCaption = False
      ItemLinks = <>
      ItemOptions.ShowDescriptions = False
      ItemOptions.ShowShortCuts = True
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Enabled = False
      Visible = ivAlways
      ImageIndex = 6
      ShowCaption = False
      OnClick = dxBarSubItem2Click
      ItemLinks = <
        item
          Visible = True
          ItemName = 'N12'
        end
        item
          Visible = True
          ItemName = 'N21'
        end>
    end
    object dxBarButton2: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1055#1086#1080#1089#1082' '#1076#1072#1085#1085#1099#1093
      Category = 0
      Enabled = False
      Hint = #1055#1086#1080#1089#1082' '#1076#1072#1085#1085#1099#1093
      Visible = ivAlways
      ImageIndex = 41
      OnClick = Action_FindExecute
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = '00.00.0000'
      Category = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1087#1077#1088#1080#1086#1076
      Style = fmMain.cxStyle_Bold
      Visible = ivAlways
      ImageIndex = 7
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end>
    end
    object dxBarButton4: TdxBarButton
      Tag = 1
      Caption = #1055#1077#1088#1080#1086#1076
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = #1057#1088#1077#1079' '#1087#1086#1089#1083#1077#1076#1085#1080#1093
      Category = 0
      Hint = #1057#1088#1077#1079' '#1087#1086#1089#1083#1077#1076#1085#1080#1093
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 44
    end
    object dxBarButton7: TdxBarButton
      Tag = 4
      Caption = #1092#1086#1088#1084#1072#1090' '#1051#1077#1075#1072' '#1058#1088#1072#1085#1089' (XLS)'
      Category = 0
      Hint = #1092#1086#1088#1084#1072#1090' '#1051#1077#1075#1072' '#1058#1088#1072#1085#1089' (XLS)'
      Visible = ivAlways
    end
    object dxBarButton_FilterRecords1: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton_FilterRecords1Click
    end
    object dxBarButton8: TdxBarButton
      Caption = #1057#1086#1073#1089#1090'. '#1088#1072#1089#1093#1086#1076
      Category = 0
      Hint = #1057#1086#1073#1089#1090'. '#1088#1072#1089#1093#1086#1076
      Visible = ivAlways
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1074#1072#1075#1086#1085#1072#1084
      Category = 0
      Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1089#1087#1080#1089#1082#1091' '#1074#1072#1075#1086#1085#1086#1074
      Visible = ivAlways
      ImageIndex = 42
      OnClick = dxBarButton9Click
    end
    object dxBarButton1: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1074#1077#1089
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1074#1077#1089
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton10: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' Excel'
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = dxBarButton11Click
    end
    object dxBarButton12: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton12Click
    end
    object dxBarButton13: TdxBarButton
      Tag = 3
      Caption = #1048#1089#1082#1083#1102#1095#1072#1090#1100' '#1080#1079' '#1072#1088#1077#1085#1076#1099
      Category = 0
      Hint = #1048#1089#1082#1083#1102#1095#1072#1090#1100' '#1080#1079' '#1072#1088#1077#1085#1076#1099
      Visible = ivAlways
      ImageIndex = 142
      OnClick = dxBarButton13Click
    end
    object dxBarButton14: TdxBarButton
      Tag = 4
      Caption = #1048#1089#1082#1083#1102#1095#1072#1090#1100' '#1080#1079' '#1089#1091#1073#1072#1088#1077#1085#1073#1099
      Category = 0
      Hint = #1048#1089#1082#1083#1102#1095#1072#1090#1100' '#1080#1079' '#1089#1091#1073#1072#1088#1077#1085#1073#1099
      Visible = ivAlways
      ImageIndex = 142
      OnClick = dxBarButton13Click
    end
    object dxBarButton30: TdxBarButton
      Tag = 12
      Caption = #1048#1089#1082#1083#1102#1095#1072#1090#1100' '#1080#1079' '#1082#1088#1072#1090#1082#1086#1089#1088#1086#1095#1085#1086#1081' '#1072#1088#1077#1085#1076#1099
      Category = 0
      Hint = #1048#1089#1082#1083#1102#1095#1072#1090#1100' '#1080#1079' '#1082#1088#1072#1090#1082#1086#1089#1088#1086#1095#1085#1086#1081' '#1072#1088#1077#1085#1076#1099
      Visible = ivAlways
      ImageIndex = 142
      OnClick = dxBarButton13Click
    end
    object dxBarButton33: TdxBarButton
      Tag = 15
      Caption = #1048#1089#1082#1083#1102#1095#1072#1090#1100' '#1080#1079' '#1082#1088#1072#1090#1082#1086#1089#1088#1086#1095#1085#1086#1081' '#1089#1091#1073#1072#1088#1077#1085#1076#1099
      Category = 0
      Hint = #1048#1089#1082#1083#1102#1095#1072#1090#1100' '#1080#1079' '#1082#1088#1072#1090#1082#1086#1089#1088#1086#1095#1085#1086#1081' '#1089#1091#1073#1072#1088#1077#1085#1076#1099
      Visible = ivAlways
      ImageIndex = 142
      OnClick = dxBarButton13Click
    end
    object dxBarButton15: TdxBarButton
      Tag = 4
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBarButton15Click
    end
    object dxBarButton16: TdxBarButton
      Tag = 5
      Caption = #1055#1088#1086#1074#1077#1088#1077#1085#1086
      Category = 0
      Hint = #1055#1088#1086#1074#1077#1088#1077#1085#1086
      Visible = ivAlways
      ImageIndex = 60
      OnClick = dxBarButton13Click
    end
    object dxBarButton17: TdxBarButton
      Tag = 6
      Caption = #1053#1077' '#1087#1088#1086#1074#1077#1088#1077#1085#1086
      Category = 0
      Hint = #1053#1077' '#1087#1088#1086#1074#1077#1088#1077#1085#1086
      Visible = ivAlways
      ImageIndex = 59
      OnClick = dxBarButton13Click
    end
    object dxBarButton18: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1090#1077#1093'. '#1089#1086#1089#1090#1086#1103#1085#1080#1103
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1090#1077#1093'. '#1089#1086#1089#1090#1086#1103#1085#1080#1103
      Visible = ivAlways
      ImageIndex = 115
      OnClick = dxBarButton18Click
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 56
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end>
    end
    object dxBarButton19: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton19Click
    end
    object dxBarButton21: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBarButton21Click
    end
    object dxBarButton20: TdxBarButton
      Caption = #1052#1077#1089#1103#1094
      Category = 0
      Hint = #1052#1077#1089#1103#1094
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton20Click
    end
    object dxBarButton22: TdxBarButton
      Tag = 7
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1077' '#1080#1079' '#1072#1088#1077#1085#1076#1099
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1077' '#1080#1079' '#1072#1088#1077#1085#1076#1099
      Visible = ivAlways
      OnClick = dxBarButton22Click
    end
    object dxBarButton31: TdxBarButton
      Tag = 13
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1077' '#1080#1079' '#1082#1088#1072#1090#1082#1086#1089#1088#1086#1095#1085#1086#1081' '#1072#1088#1077#1085#1076#1099
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1077' '#1080#1079' '#1082#1088#1072#1090#1082#1086#1089#1088#1086#1095#1085#1086#1081' '#1072#1088#1077#1085#1076#1099
      Visible = ivAlways
      OnClick = dxBarButton22Click
    end
    object dxBarButton32: TdxBarButton
      Tag = 14
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1077' '#1080#1079' '#1082#1088#1072#1090#1082#1086#1089#1088#1086#1095#1085#1086#1081' '#1089#1091#1073#1072#1088#1077#1085#1076#1099
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1077' '#1080#1079' '#1082#1088#1072#1090#1082#1086#1089#1088#1086#1095#1085#1086#1081' '#1089#1091#1073#1072#1088#1077#1085#1076#1099
      Visible = ivAlways
      OnClick = dxBarButton22Click
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end>
    end
    object dxBarButton23: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton23Click
    end
    object dxBarButton24: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 14
      OnClick = dxBarButton24Click
    end
    object dxBarButton25: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1103
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1103
      Visible = ivNever
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000027744558745469746C6500526566726573683B5265706561743B4261
        72733B526962626F6E3B52656C6F6164CD4DF6E90000037749444154785E6593
        6B4C537718C69F73E885622F4069C9B02DA1ADB60C2133D471DDD451D8257C02
        2661B3719912A3092163898BDBF8B06422DB74612612CDE64CDCE2A698CC2DA2
        0C541C9918645BB701EB3414B99536E08022A597737ADE71927E58C693BCFFBC
        F9E5799E2FFFBC0C364A64FFE794988DE6CF6F55032034567433EF7596AB37E7
        A85AC0302FB22C1C448020D02F3C47BD8F3C4B9F76BC3314FCE44A05AD330844
        585F80B3BDAF00007BB2CBE9BC70C73533E0F998BCF33F5030FA9B38343EFF3D
        F58F1EA7737D0DB347CF943A456F44F06085BF87F7BF28054470A2AB72CFE5C1
        43F4C07F999EC4876989FB891E477B6921DA438BDC6D5A37D398EF22755EDD4B
        CD271DF5626689BB83B74E3920693AB643AF516BCFE7659723439B0E6F6008D7
        6F0F60E46F0F44E5DB6D28DABE1DF9D66750F8F4F3989B0F7C597DC0329026DD
        153878BC80D8CCEC4D2DD9FADC145D8606EE078338FBF5377CFFDDC10FA7C717
        AC33138FAD3F0F0D1FB976EBC798D7EF86C1900AAB292F45A393BE0D800DADC5
        20E1E3F4B22E3D13ABDC1CDC7F8D61666EAEADEFCCEC31001C44011DCA237266
        F88FB18F5277CB91AE27C438FE2500EF46C25C9CE5B9B84DA10462F12798F64D
        63C5C79D17C3CBDC5D4A7C27EBEE5BF86ABD18E3C11E90F2112251CE044071E5
        84572E0947F8C8C44A8F54A94843B24C0685542E88414E0893B3DEACCA2FD6FB
        08B4492661118AFD038A876032EA5587DB75CB828065361CE2A67D8100FC2137
        AC66234C76CD7E00529DDCC9DCBC34115E5E8C746CCBCD455DCD0B880B1C1809
        8FC6FDB5D0E9B4181B9D6D4FB239B45B55AA9462953E0C8D3C0B6BAB5462B029
        42AA34B94FFB540A3B726FFE7E7246AC9E74BF6B92A4045EE0F170E657F47C37
        35E5BEBE788029ADDE6CDE569239BA65475461B66402410BA6BC8B989CF46375
        758DF38E2E952B53E5B6AD858A0BF93BA31075B32B04CFF08ACBDD1DBC240259
        952BA7F1607B01B575DBE9DB87657463B281067CCD7471701FD535E7F603D0D7
        34D9FBDB6ED8A8F5AA899EAD4D1599120083C4935C5663A8AF6BD9E26FEAB4D0
        07D72C74EABE95CEB94BE8707B1155BC96E372546595B85AF3B8CA43199CA558
        510440E278550D54BD99932881D468571BCA6A0D9FED6C308EECDE6BA25DAF9B
        E8B93DC63F2BDFB0B4025057ED339F2EA8569E06A0103385752A301BCF1832B1
        1D4052820B006200E2FF615C82E35FC02B8FD5CBC3AEEB0000000049454E44AE
        426082}
      ImageIndex = 91
      OnClick = dxBarButton25Click
    end
    object dxBarButton26: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton26Click
    end
    object dxBarButton27: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = dxBarButton27Click
    end
    object dxBarButton28: TdxBarButton
      Tag = 2
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 164
      OnClick = dxBarButton29Click
    end
    object dxBarButton29: TdxBarButton
      Tag = 1
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 165
      OnClick = dxBarButton29Click
    end
    object dxBarButton34: TdxBarButton
      Tag = 1
      Caption = #1058#1054#1056' '#1056#1077#1084#1086#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085' '#1057#1060#1061' ('#1079#1077#1083#1077#1085#1099#1081')'
      Category = 0
      Hint = #1058#1054#1056' '#1056#1077#1084#1086#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085' '#1057#1060#1061' ('#1079#1077#1083#1077#1085#1099#1081')'
      Visible = ivAlways
      OnClick = dxBarButton34Click
    end
    object dxBarButton35: TdxBarButton
      Tag = 2
      Caption = #1044#1056'/'#1050#1056' '#1056#1077#1084#1086#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085' '#1057#1060#1061' ('#1075#1086#1083#1091#1073#1086#1081')'
      Category = 0
      Hint = #1044#1056'/'#1050#1056' '#1056#1077#1084#1086#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085' '#1057#1060#1061' ('#1075#1086#1083#1091#1073#1086#1081')'
      Visible = ivAlways
      OnClick = dxBarButton34Click
    end
    object dxBarButton36: TdxBarButton
      Tag = 3
      Caption = #1056#1077#1084#1086#1085#1090' '#1079#1072' '#1089#1090#1086#1088#1086#1085#1085#1080#1084#1080' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103#1084#1080' ('#1078#1077#1083#1090#1099#1081')'
      Category = 0
      Hint = #1056#1077#1084#1086#1085#1090' '#1079#1072' '#1089#1090#1086#1088#1086#1085#1085#1080#1084#1080' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103#1084#1080' ('#1078#1077#1083#1090#1099#1081')'
      Visible = ivAlways
      OnClick = dxBarButton34Click
    end
    object dxBarButton37: TdxBarButton
      Tag = 4
      Caption = #1056#1077#1084#1086#1085#1090' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1077#1085' '#1057#1060#1061' ('#1082#1088#1072#1089#1085#1099#1081') '
      Category = 0
      Hint = #1056#1077#1084#1086#1085#1090' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1077#1085' '#1057#1060#1061' ('#1082#1088#1072#1089#1085#1099#1081') '
      Visible = ivAlways
      OnClick = dxBarButton34Click
    end
    object dxBarButton38: TdxBarButton
      Tag = 5
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      Category = 0
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100
      Visible = ivAlways
      OnClick = dxBarButton34Click
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103' '#1089' '#1058#1077#1093'. '#1089#1086#1089#1090#1086#1103#1085#1080#1077#1084
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton34'
        end
        item
          Visible = True
          ItemName = 'dxBarButton35'
        end
        item
          Visible = True
          ItemName = 'dxBarButton36'
        end
        item
          Visible = True
          ItemName = 'dxBarButton37'
        end
        item
          Visible = True
          ItemName = 'dxBarButton38'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          Visible = True
          ItemName = 'dxBarButton31'
        end
        item
          Visible = True
          ItemName = 'dxBarButton32'
        end>
    end
    object dxBarButton39: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1091
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1091
      Visible = ivAlways
      ImageIndex = 178
      OnClick = dxBarButton39Click
    end
    object dxBarButton40: TdxBarButton
      Tag = 1
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1091
      Category = 0
      Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1091
      Visible = ivAlways
      ImageIndex = 179
      OnClick = dxBarButton39Click
    end
    object dxBarButton41: TdxBarButton
      Tag = 2
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1091
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1091
      Visible = ivAlways
      ImageIndex = 180
      OnClick = dxBarButton39Click
    end
    object N5: TdxBarButton
      Tag = 1
      Caption = #1092#1086#1088#1084#1072#1090' '#1043#1042#1062' ('#1058#1061#1058')'
      Category = 1
      Hint = #1092#1086#1088#1084#1072#1090' '#1043#1042#1062' ('#1058#1061#1058')'
      Visible = ivAlways
    end
    object N12: TdxBarButton
      Caption = #1054#1090#1095#1105#1090' '#1087#1086' '#1074#1072#1075#1086#1085#1072#1084
      Category = 2
      Visible = ivAlways
      ImageIndex = 8
    end
    object N21: TdxBarButton
      Caption = #1054#1090#1095#1105#1090' '#1087#1086' '#1082#1086#1085#1090#1077#1081#1085#1077#1088#1072#1084
      Category = 2
      Visible = ivAlways
      ImageIndex = 8
    end
    object dxBarButton6: TdxBarButton
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099'...'
      Category = 3
      Hint = #1055#1072#1088#1072#1084#1077#1090#1088#1099
      Style = fmMain.cxStyle_Bold
      Visible = ivAlways
      ImageIndex = 1
    end
    object N3: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 3
      Visible = ivAlways
      ImageIndex = 2
      ShortCut = 46
      OnClick = Action_DeleteExecute
    end
    object Excel3: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 3
      Visible = ivAlways
      ImageIndex = 8
      OnClick = Excel3Click
    end
    object N1: TdxBarSubItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1085#1072' '#1082#1072#1088#1090#1077
      Category = 3
      Visible = ivAlways
      ImageIndex = 126
      ItemLinks = <>
    end
    object N10: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 3
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'N82'
        end
        item
          Visible = True
          ItemName = 'N83'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'N14'
        end
        item
          Visible = True
          ItemName = 'N74'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton_FilterRecords1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton39'
        end
        item
          Visible = True
          ItemName = 'dxBarButton40'
        end
        item
          Visible = True
          ItemName = 'dxBarButton41'
        end>
    end
    object N82: TdxBarButton
      Caption = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080' ...'
      Category = 3
      Enabled = False
      Visible = ivAlways
      ImageIndex = 11
      OnClick = N82Click
    end
    object N83: TdxBarButton
      Tag = 1
      Caption = #1059#1073#1088#1072#1090#1100' '#1094#1074#1077#1090' '#1079#1072#1087#1080#1089#1080'...'
      Category = 3
      Enabled = False
      Visible = ivAlways
      ImageIndex = 12
      OnClick = N82Click
    end
    object N14: TdxBarButton
      Tag = 1
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 3
      Visible = ivAlways
      ImageIndex = 15
      OnClick = N14Click
    end
    object N74: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 3
      Visible = ivAlways
      ImageIndex = 14
      OnClick = N74Click
    end
    object N100: TdxBarButton
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1091#1089#1090#1072#1085#1086#1074#1082#1080
      Category = 3
      Visible = ivAlways
      ImageIndex = 17
    end
  end
  object Popup_TrackVagon: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarSubItem6'
      end
      item
        Visible = True
        ItemName = 'N3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'Excel3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N10'
      end>
    UseOwnFont = False
    Left = 68
    Top = 318
    PixelsPerInch = 96
  end
  object Query_VagonRepair: TADOQuery
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
      end
      item
        Name = '=users_group_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      
        '* , dbo.func_GetVagonOwner(vagon_id, date_begin_repair) AS owner' +
        '_name,'
      'DATEDIFF(day,date_begin_repair,date_end_repair) + 1 as days_rep'
      'FROM vagon_repair_fact'
      
        'WHERE ISNULL(date_begin_repair,date_period) BETWEEN :date1  AND ' +
        ':date2'
      'AND users_group_id :=users_group_id ')
    Left = 326
    Top = 252
  end
  object DS_VagonRepair: TDataSource
    DataSet = SP_VagonArendaView
    Left = 132
    Top = 288
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'dxBarButton30'
      end
      item
        Visible = True
        ItemName = 'dxBarButton33'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton16'
      end
      item
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem5'
      end>
    UseOwnFont = False
    Left = 130
    Top = 321
    PixelsPerInch = 96
  end
  object SP_VagonArendaView: TADOStoredProc
    Connection = fmMain.Lis
    ProcedureName = 'sp_vagon_arenda_get'
    Parameters = <>
    Left = 132
    Top = 258
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 229
    Top = 178
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
  end
  object dxBarPopupMenu2: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton27'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton26'
      end>
    UseOwnFont = False
    Left = 203
    Top = 319
    PixelsPerInch = 96
  end
  object sp_Report_fact_track: TADOStoredProc
    Connection = fmMain.Lis
    ProcedureName = 'sp_Report_fact_track'
    Parameters = <>
    Left = 203
    Top = 261
  end
  object DS_Report_fact_track: TDataSource
    DataSet = sp_Report_fact_track
    Left = 204
    Top = 288
  end
end
