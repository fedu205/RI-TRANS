object fmEtranMain: TfmEtranMain
  Left = 0
  Top = 0
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1101#1090#1088#1072#1085#1086#1074#1089#1082#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080'... (EMPTY)'
  ClientHeight = 846
  ClientWidth = 1171
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 17
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 158
    Width = 1171
    Height = 663
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet3
    Properties.CustomButtons.Buttons = <>
    Properties.Style = 6
    OnChange = cxPageControl1Change
    ClientRectBottom = 663
    ClientRectRight = 1171
    ClientRectTop = 29
    object cxTabSheet7: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1052#1086#1085#1080#1090#1086#1088#1080#1085#1075
      ImageIndex = 5
      ExplicitTop = 30
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1171
        Height = 634
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object cxGrid5: TcxGrid
          Left = 0
          Top = 0
          Width = 1171
          Height = 634
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          object cxGridDBBandedTableView4: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCustomDrawCell = cxGridDBBandedTableView4CustomDrawCell
            DataController.DataSource = DS_Monitor
            DataController.KeyFieldNames = 'monitor_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGridDBBandedTableView1monitor_id
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 8
            FixedDataRows.SeparatorWidth = 8
            NewItemRow.SeparatorWidth = 8
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.InvertSelect = False
            OptionsView.NavigatorOffset = 63
            OptionsView.FixedColumnSeparatorWidth = 3
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.IndicatorWidth = 15
            OptionsView.BandHeaders = False
            OptionsView.FixedBandSeparatorWidth = 3
            Preview.LeftIndent = 25
            Preview.RightIndent = 6
            RowLayout.MinValueWidth = 100
            Bands = <
              item
              end>
            object cxGridDBBandedTableView1monitor_id: TcxGridDBBandedColumn
              Caption = #8470' '#1079#1072#1087#1080#1089#1080
              DataBinding.FieldName = 'monitor_id'
              MinWidth = 25
              Width = 86
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1color: TcxGridDBBandedColumn
              DataBinding.FieldName = 'color'
              MinWidth = 25
              Width = 125
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView1monitor_date_end: TcxGridDBBandedColumn
              Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
              DataBinding.FieldName = 'monitor_date_end'
              MinWidth = 25
              Width = 145
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1monitor_date_begin: TcxGridDBBandedColumn
              Caption = #1053#1072#1095#1072#1083#1086
              DataBinding.FieldName = 'monitor_date_begin'
              MinWidth = 25
              Width = 145
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1monitor_text: TcxGridDBBandedColumn
              Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              DataBinding.FieldName = 'monitor_text'
              MinWidth = 25
              Width = 413
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1monitor_status: TcxGridDBBandedColumn
              Caption = #1057#1090#1072#1090#1091#1089
              DataBinding.FieldName = 'monitor_status'
              MinWidth = 25
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1monitor_type: TcxGridDBBandedColumn
              Caption = #1044#1077#1081#1089#1090#1074#1080#1077
              DataBinding.FieldName = 'monitor_type'
              MinWidth = 25
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView4monitor_font_bold: TcxGridDBBandedColumn
              DataBinding.FieldName = 'monitor_font_bold'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBBandedTableView4
          end
        end
      end
    end
    object cxTabSheet8: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1054#1096#1080#1073#1082#1080
      ImageIndex = 6
      ExplicitTop = 30
      object cxGrid6: TcxGrid
        Left = 0
        Top = 0
        Width = 1171
        Height = 634
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object cxGridDBBandedTableView5: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DS_Error
          DataController.KeyFieldNames = 'error_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.NavigatorOffset = 63
          OptionsView.FixedColumnSeparatorWidth = 3
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 15
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 3
          Preview.LeftIndent = 25
          Preview.RightIndent = 6
          RowLayout.MinValueWidth = 100
          Bands = <
            item
            end>
          object cxGridDBBandedTableView2error_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'error_id'
            MinWidth = 25
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2error_date: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'error_date'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2error_cod: TcxGridDBBandedColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'error_cod'
            MinWidth = 25
            Width = 63
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2error_message: TcxGridDBBandedColumn
            Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            DataBinding.FieldName = 'error_message'
            MinWidth = 25
            Width = 583
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2error_name: TcxGridDBBandedColumn
            Caption = #1054#1096#1080#1073#1082#1072
            DataBinding.FieldName = 'error_name'
            MinWidth = 25
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBBandedTableView5
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1079#1072#1075#1088#1091#1079#1082#1080
      ImageIndex = 2
      ExplicitTop = 30
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1171
        Height = 634
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        object cxGridDBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DS_Connect
          DataController.KeyFieldNames = 'connect_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGridDBBandedTableView1connect_id
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.NavigatorOffset = 63
          OptionsView.FixedColumnSeparatorWidth = 3
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 15
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 3
          Preview.LeftIndent = 25
          Preview.RightIndent = 6
          RowLayout.MinValueWidth = 100
          Bands = <
            item
            end>
          object cxGridDBBandedTableView1connect_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'connect_id'
            MinWidth = 25
            Width = 95
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1connect_name: TcxGridDBBandedColumn
            Caption = #1057#1086#1077#1076#1080#1085#1077#1085#1080#1077
            DataBinding.FieldName = 'connect_name'
            MinWidth = 25
            Width = 113
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1etran_login: TcxGridDBBandedColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' '#1069#1058#1056#1040#1053
            DataBinding.FieldName = 'etran_login'
            MinWidth = 25
            Width = 124
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1read_interval: TcxGridDBBandedColumn
            Caption = #1048#1085#1090#1077#1088#1074#1072#1083' ('#1084#1080#1085')'
            DataBinding.FieldName = 'read_interval'
            MinWidth = 25
            Width = 110
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1set_load: TcxGridDBBandedColumn
            Caption = #1047#1072#1075#1088#1091#1079#1082#1072
            DataBinding.FieldName = 'set_load'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1users_name: TcxGridDBBandedColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' '#1041#1044
            DataBinding.FieldName = 'users_name'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1doc_type_name: TcxGridDBBandedColumn
            Caption = #1044#1086#1082#1091#1084#1077#1085#1090
            DataBinding.FieldName = 'doc_type_name'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1users_group_name: TcxGridDBBandedColumn
            Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
            DataBinding.FieldName = 'users_group_name'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1period_end: TcxGridDBBandedColumn
            Caption = #1055#1086#1089#1083'. '#1076#1072#1090#1072' '#1079#1072#1075#1088#1091#1079#1082#1080
            DataBinding.FieldName = 'period_end'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBBandedTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1053#1077' '#1079#1072#1075#1088#1091#1078#1077#1085#1085#1099#1077' '#1087#1077#1088#1080#1086#1076#1099
      ImageIndex = 3
      ExplicitTop = 30
      object Splitter1: TSplitter
        Left = 0
        Top = 363
        Width = 1171
        Height = 6
        Cursor = crVSplit
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        Color = 8421631
        ParentColor = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 369
        Width = 1171
        Height = 265
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 1171
          Height = 265
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          object cxGridDBBandedTableView3: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DS_Period_Error
            DataController.KeyFieldNames = 'query_error_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGridDBBandedTableView3query_error_id
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 8
            FixedDataRows.SeparatorWidth = 8
            NewItemRow.SeparatorWidth = 8
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.InvertSelect = False
            OptionsView.NavigatorOffset = 63
            OptionsView.FixedColumnSeparatorWidth = 3
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.IndicatorWidth = 15
            OptionsView.BandHeaders = False
            OptionsView.FixedBandSeparatorWidth = 3
            Preview.LeftIndent = 25
            Preview.RightIndent = 6
            RowLayout.MinValueWidth = 100
            Bands = <
              item
              end>
            object cxGridDBBandedTableView3query_error_id: TcxGridDBBandedColumn
              Caption = #8470' '#1079#1072#1087#1080#1089#1080
              DataBinding.FieldName = 'query_error_id'
              MinWidth = 25
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3query_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'query_id'
              MinWidth = 25
              Width = 125
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView3set_server: TcxGridDBBandedColumn
              Caption = #1057#1077#1088#1074#1077#1088#1085#1086#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1077
              DataBinding.FieldName = 'set_server'
              MinWidth = 25
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3error_date: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072
              DataBinding.FieldName = 'error_date'
              MinWidth = 25
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3error_cod: TcxGridDBBandedColumn
              Caption = #1050#1086#1076
              DataBinding.FieldName = 'error_cod'
              MinWidth = 25
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3error_name: TcxGridDBBandedColumn
              Caption = #1054#1096#1080#1073#1082#1072
              DataBinding.FieldName = 'error_name'
              MinWidth = 25
              Width = 145
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3error_param: TcxGridDBBandedColumn
              Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              DataBinding.FieldName = 'error_param'
              MinWidth = 25
              Width = 291
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBBandedTableView3
          end
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1171
        Height = 363
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        object cxGridDBBandedTableView2: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnFocusedRecordChanged = cxGridDBBandedTableView2FocusedRecordChanged
          DataController.DataSource = DS_Period
          DataController.KeyFieldNames = 'query_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGridDBBandedTableView2query_id
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.NavigatorOffset = 63
          OptionsView.FixedColumnSeparatorWidth = 3
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 15
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 3
          Preview.LeftIndent = 25
          Preview.RightIndent = 6
          RowLayout.MinValueWidth = 100
          Bands = <
            item
            end>
          object cxGridDBBandedTableView2query_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'query_id'
            MinWidth = 25
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2connect_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
            DataBinding.FieldName = 'connect_id'
            MinWidth = 25
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2period_begin: TcxGridDBBandedColumn
            Caption = #1053#1072#1095#1072#1083#1086
            DataBinding.FieldName = 'period_begin'
            MinWidth = 25
            Width = 138
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2period_end: TcxGridDBBandedColumn
            Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
            DataBinding.FieldName = 'period_end'
            MinWidth = 25
            Width = 136
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2etran_login: TcxGridDBBandedColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' '#1069#1058#1056#1040#1053
            DataBinding.FieldName = 'etran_login'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2db_users_name: TcxGridDBBandedColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' '#1041#1044
            DataBinding.FieldName = 'db_users_name'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2date_enter: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072
            DataBinding.FieldName = 'date_enter'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2doc_type_name: TcxGridDBBandedColumn
            Caption = #1044#1086#1082#1091#1084#1077#1085#1090
            DataBinding.FieldName = 'doc_type_name'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2users_group_name: TcxGridDBBandedColumn
            Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
            DataBinding.FieldName = 'users_group_name'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBBandedTableView2
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1053#1077' '#1079#1072#1075#1088#1091#1078#1077#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
      ImageIndex = 4
      ExplicitTop = 30
      object Splitter2: TSplitter
        Left = 0
        Top = 363
        Width = 1171
        Height = 6
        Cursor = crVSplit
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        Color = 8421631
        ParentColor = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 369
        Width = 1171
        Height = 265
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object cxGrid7: TcxGrid
          Left = 0
          Top = 0
          Width = 1171
          Height = 265
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          object cxGridDBBandedTableView7: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DS_Docs_Error
            DataController.KeyFieldNames = 'query_error_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGridDBBandedTableView7query_error_id
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 8
            FixedDataRows.SeparatorWidth = 8
            NewItemRow.SeparatorWidth = 8
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.InvertSelect = False
            OptionsView.NavigatorOffset = 63
            OptionsView.FixedColumnSeparatorWidth = 3
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.IndicatorWidth = 15
            OptionsView.BandHeaders = False
            OptionsView.FixedBandSeparatorWidth = 3
            Preview.LeftIndent = 25
            Preview.RightIndent = 6
            RowLayout.MinValueWidth = 100
            Bands = <
              item
              end>
            object cxGridDBBandedTableView7query_error_id: TcxGridDBBandedColumn
              Caption = #8470' '#1079#1072#1087#1080#1089#1080
              DataBinding.FieldName = 'query_error_id'
              MinWidth = 25
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7query_id: TcxGridDBBandedColumn
              Caption = #8470' '#1079#1072#1087#1080#1089#1080' '
              DataBinding.FieldName = 'query_id'
              MinWidth = 25
              Width = 125
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView7set_server: TcxGridDBBandedColumn
              Caption = #1057#1077#1088#1074#1077#1088#1085#1086#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1077
              DataBinding.FieldName = 'set_server'
              MinWidth = 25
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7error_date: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072
              DataBinding.FieldName = 'error_date'
              MinWidth = 25
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7error_cod: TcxGridDBBandedColumn
              Caption = #1050#1086#1076
              DataBinding.FieldName = 'error_cod'
              MinWidth = 25
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7error_name: TcxGridDBBandedColumn
              Caption = #1054#1096#1080#1073#1082#1072
              DataBinding.FieldName = 'error_name'
              MinWidth = 25
              Width = 191
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7error_param: TcxGridDBBandedColumn
              Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              DataBinding.FieldName = 'error_param'
              MinWidth = 25
              Width = 388
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
          object cxGridLevel7: TcxGridLevel
            GridView = cxGridDBBandedTableView7
          end
        end
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 1171
        Height = 363
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        object cxGridDBBandedTableView6: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnFocusedRecordChanged = cxGridDBBandedTableView6FocusedRecordChanged
          DataController.DataSource = DS_Docs
          DataController.KeyFieldNames = 'query_docs_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGridDBBandedTableView6query_docs_id
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.InvertSelect = False
          OptionsView.NavigatorOffset = 63
          OptionsView.FixedColumnSeparatorWidth = 3
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 15
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 3
          Preview.LeftIndent = 25
          Preview.RightIndent = 6
          RowLayout.MinValueWidth = 100
          Bands = <
            item
            end>
          object cxGridDBBandedTableView6query_docs_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'query_docs_id'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6query_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1087#1077#1088#1080#1086#1076#1072
            DataBinding.FieldName = 'query_id'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6doc_id: TcxGridDBBandedColumn
            Caption = 'ID '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            DataBinding.FieldName = 'doc_id'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6etran_login: TcxGridDBBandedColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' '#1069#1058#1056#1040#1053
            DataBinding.FieldName = 'etran_login'
            MinWidth = 25
            Width = 146
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6db_users_name: TcxGridDBBandedColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' '#1041#1044
            DataBinding.FieldName = 'db_users_name'
            MinWidth = 25
            Width = 166
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6users_group_name: TcxGridDBBandedColumn
            Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
            DataBinding.FieldName = 'users_group_name'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView6doc_type_name: TcxGridDBBandedColumn
            Caption = #1044#1086#1082#1091#1084#1077#1085#1090
            DataBinding.FieldName = 'doc_type_name'
            MinWidth = 25
            Width = 205
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = cxGridDBBandedTableView6
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077
      ImageIndex = 5
      ExplicitTop = 30
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 1171
        Height = 634
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
      end
    end
    object cxTabSheet5: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1072#1103' '#1086#1090#1087#1088#1072#1074#1082#1072' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
      ImageIndex = 6
      ExplicitTop = 30
      object Memo2: TMemo
        Left = 0
        Top = 71
        Width = 1171
        Height = 299
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        Lines.Strings = (
          '')
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object Memo3: TMemo
        Left = 0
        Top = 370
        Width = 1171
        Height = 264
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        Lines.Strings = (
          '')
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1171
        Height = 71
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 2
        object Label4: TLabel
          Left = 15
          Top = 8
          Width = 192
          Height = 19
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1086#1090#1087#1088#1072#1074#1082#1072':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 821
    Width = 1171
    Height = 25
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Panels = <>
    PaintStyle = stpsOffice11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object Panel7: TPanel
    Left = 0
    Top = 84
    Width = 1171
    Height = 74
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 6
    object Label1: TLabel
      Left = 15
      Top = 8
      Width = 94
      Height = 19
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 115
      Top = 8
      Width = 115
      Height = 19
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1053#1077' '#1079#1072#1087#1091#1097#1077#1085#1086'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102)
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.DisabledImages = cxImageList_16_dis
    ImageOptions.DisabledLargeImages = cxImageList_dis
    ImageOptions.Images = cxImageList_16_normal
    ImageOptions.LargeImages = cxImageList_normal
    ImageOptions.LargeIcons = True
    ImageOptions.UseLargeImagesForLargeIcons = True
    LookAndFeel.Kind = lfUltraFlat
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 808
    Top = 216
    PixelsPerInch = 120
    DockControlHeights = (
      0
      0
      84
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = #1054#1089#1085#1086#1074#1085#1086#1077' '#1084#1077#1085#1102
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 899
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1077' '#1084#1077#1085#1102
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 40
      DockingStyle = dsTop
      FloatLeft = 899
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          BeginGroup = True
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
          ItemName = 'dxBarButton5'
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
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1060#1072#1081#1083
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = #1042#1099#1093#1086#1076
      Category = 0
      Hint = #1042#1099#1093#1086#1076
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton5Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1057#1086#1077#1076#1080#1085#1077#1085#1080#1077' '#1089' '#1041#1044
      Category = 0
      Hint = #1057#1086#1077#1076#1080#1085#1077#1085#1080#1077' '#1089' '#1041#1044
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1047#1072#1087#1091#1089#1082
      Category = 0
      Enabled = False
      Hint = #1047#1072#1087#1091#1089#1082
      Visible = ivAlways
      ImageIndex = 2
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Tag = 1
      Caption = #1057#1090#1086#1087
      Category = 0
      Enabled = False
      Hint = #1057#1090#1086#1087
      Visible = ivAlways
      ImageIndex = 3
      OnClick = dxBarButton3Click
    end
    object dxBarButton5: TdxBarButton
      Caption = #1042#1099#1093#1086#1076
      Category = 0
      Hint = #1042#1099#1093#1086#1076
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton5Click
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton12'
        end>
    end
    object dxBarButton10: TdxBarButton
      Caption = #1057#1087#1088#1072#1074#1082#1072
      Category = 0
      Hint = #1057#1087#1088#1072#1074#1082#1072
      Visible = ivAlways
      ImageIndex = 10
    end
    object dxBarButton12: TdxBarButton
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Category = 0
      Hint = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Visible = ivAlways
      ImageIndex = 11
    end
    object dxBarButton16: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 20
      OnClick = dxBarButton16Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1047#1072#1087#1088#1086#1089' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1086#1074
      Category = 0
      Hint = #1047#1072#1087#1088#1086#1089' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1086#1074
      Visible = ivNever
      ImageIndex = 11
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivNever
      OnClick = dxBarButton7Click
    end
  end
  object cxImageList_normal: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 14156520
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001010112382011B44A260FC3120D0A80000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0006000000000000000003020338D08044FFFFBD79FF663A1CE7060403160000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000002000000060000000D00000014000000180000001B0000
          001D0000001E0000001E0000001E0000001E0000001D0000012C331D10B82F1A
          0EC00000024B01010246381D08B8F2A95DFFFFD997FFAC6728FB0A0908790001
          010E04040432311B0DAE0605056D000000050000000000000000000000000000
          00020000000900000017000000290000003A0000004700000050000000560000
          005A0000005C0000005C0000005C0000005C0000005A352012C7E77F2FFFEC8F
          3AFF8C4F1AF8B16929FFF2A250FFB48D59FF936D44FFE7AA60FFD28034FF693B
          14DE9D5A1FF3F68C36FF934C1EFF0101024A0000000000000000000000030000
          00100000002C09090968161616A3202020C8272727DD2B2B2BEC2F2F2FF42F2F
          2FF72F2F2FF72F2F2FF72F2F2FF72F2F2FF52C2C2CED413028F2E3832CFFFFBC
          5AFFC18C42FFD3A159FFECBB70FFAF7743FFF8AF6AFFA87E49FFFFC975FFCB8F
          42FFEAA74CFFFEA544FF7D4117E90101022800000000000000000000000C0B0B
          0B5D232323CC313131FB505050FF7F7E7EFFA4A3A3FFBEBEBDFFD2D1D1FFDFDE
          DEFFE4E3E3FFE4E3E3FFE0E0DFFFD4D3D2FFC0BFBFFF9F9E9FFF855326FFCB8D
          39FFC7712EFFAE6D2EFFA66A2FFFFBBE6FFFFFD687FFC28240FF985F29FFCF79
          32FF885B27FFD37D24FF0907077A000000000000000000000000111111623030
          30F7585857FFACACABFFE2E1E0FFEBEAEAFFECEBEBFFEDECEBFFEDECEBFFECEB
          EAFFECEBEAFFECEBEAFFECEBEAFFECEBEBFFEDECEBFFC1C1C2FFB46924FFE8A0
          3CFFBB752EFFFFC559FFFFBF60FFD39048FDC08040F6FFB45AFFFFC65CFFEB97
          3AFFA8742FFFE88925FF20120BA70000000000000000000000002C2C2CE16C6B
          6BFFD9D8D7FFE3E2E2FFE3E2E2FFE3E2E2FFE4E3E2FFE5E4E3FFE6E5E4FFE6E6
          E5FFE7E6E5FFE7E6E5FFE6E6E5FFC0BFBFFF8B8582FF7C593DFFF18C1BFFE89B
          30FFAD6721FFFEAE3DFF7A5534FF282829F40304056F33221598ED9D39FFE490
          2DFFA66920FFFFA129FF814714EE0605076F0202033500000005313131F3CAC9
          C8FFE1E0DFFFE2E1E0FFE5E5E3FFE3E2E1FFDCDBDAFFD6D4D4FFCDCBCBFFC8C5
          C5FFC5C2C3FFC5C2C3FFC7C4C5FF866552FFE17E2DFFFAA13BFFB17427FFB06A
          26FFFAA22AFFC77826FFB0AFAFFF313131F90000005D0000001F6F431AC1FFA5
          24FFB36513FF915817FFED8A13FFD16A0FFF723914F100000029313131F3DAD9
          D8FFE7E6E5FFE0DFDFFFCAC6C8FFB7B2B4FFAAA5A7FFA6A0A1FFA7A2A3FFA9A4
          A4FFA8A4A4FFA9A4A4FFA8A4A4FF865A3EFFFF9C42FFFFBF62FFB17941FFFA9F
          44FFFFC866FFB0763EFFCCCBCBFF313131F90000005D0000001F45280E9FFFA0
          14FFFF960EFFA25310FFF1940EFFFF8B06FFB0510FFF00010234313131F3DCDB
          DAFFD5D3D3FFB3AFB1FFADA9A9FFB0ACACFFB4B1B0FFB5B2B0FFB5B1B0FFB4B1
          B0FFB4B1B0FFB4B0B0FFB4B0B0FF8A8481FF82624CFFAC692CFFEDAD5FFFBC91
          5AFFD89A56FFE8AB66FF827973FF313131F90000005D00000045AB7139E9FCB9
          61FF995A1CFFD89434FFD17613FF723D13D72A1B119500000012313131F3CFCD
          CEFFB8B4B5FFBCB9B8FFBEBBBAFFBDBAB9FFBDBAB9FFBEBBBAFFBFBCBCFFC0BE
          BDFFC1BEBDFFC1BEBDFFC0BEBDFFBFBCBCFFBEBBBAFF8B8684FFDA8C44FFFFD9
          99FFA6713FFFFFEEB7FFD39E6AFF4F3622FD2D1B0DBC9F7045EBFFEAB6FFD8A2
          6BFFBD9C6BFFFEBD76FF472811C7000000090000000000000000313131F3C9C6
          C6FFC6C2C2FFCAC7C6FFCDCBCAFFD5D3D2FFDEDCDCFFE4E3E2FFE9E8E7FFECEB
          EBFFEDECECFFEDEDECFFEDEBEBFFE9E8E7FFE4E3E3FFD5D4D3FF966132FFC5A2
          72FFE1A679FFF0C798FFFDD1A1FFFFEAC3FFFFE7C2FFFFE2B6FFECC090FFFFCF
          A1FF8B6B4BFFD58C47FF09060475000000000000000000000000313131F3A0A0
          9FFFD6D3D3FFDFDEDDFFE8E7E6FFEDECEBFFEEEDECFFEEEDECFFEEEDECFFEDEC
          EBFFEDECEBFFEDECEBFFEDECEBFFEEEDECFFEEEDECFFA8A6A4FFBC7D46FFEED9
          B2FFA5886CFFAE9A7FFFAF845AFFDDB895FFFFE7CBFF97683FFFBBA484FFA582
          64FFBDAE93FFE6A668FF26150AB50000001200000000000000002B2B2BDD7777
          76FFE2E1E0FFE5E4E3FFE4E3E2FFE4E3E2FFE4E3E2FFE5E4E3FFE6E5E4FFE6E6
          E4FFE7E6E5FFE7E6E5FFE6E6E5FFE6E5E4FFE5E4E3FF85614CFFFFC598FFFFDF
          B9FFDD995AFFF7C18DFFFFF4D8FFA88A71FFB88462FFE3DEC9FFFFDAB0FFE4A0
          62FFFAC998FFFFEED0FFAD602FFF010101470000000000000000313131F3C7C6
          C5FFE1E0DFFFE2E1E0FFE5E4E3FFE3E2E2FFDDDCDCFFDAD8D8FFD2D0D0FFCAC8
          C8FFC7C4C5FFC7C4C5FFCAC7C8FFD1CFCFFFDAD8D8FFACA9A8FFA1633CFF935F
          3CFF8B8580FF8B7461FFB77840FFBEA58EFFAC9581FFCC915BFE5D3416CD170F
          097B55331AC1C77946FF362214B20000000F0000000000000000313131F3DAD9
          D8FFE7E6E5FFE0DFDEFFC9C6C8FFB9B4B6FFAEAAABFFA8A2A4FFA7A2A2FFA7A2
          A2FFA7A2A3FFA8A3A3FFA7A2A3FFA6A2A2FFA7A2A3FFAEA9AAFFA29FA1FFB6B4
          B5FFDFDEDDFFE7E6E5FF93877FFFF2C39FFFFFFDEBFF583012D8000000080000
          0000010101070D0B0A440000000B000000000000000000000000313131F3DCDB
          DAFFD5D3D3FFB3AFB1FFADA9A9FFB0ACABFFB4B0AFFFB5B2B0FFB5B1B0FFB5B1
          B0FFB5B1B0FFB5B1B0FFB5B1B0FFB5B2B1FFB5B2B0FFB4B1AFFFB0ACACFFAEA9
          A9FFB3AEB0FFD2CFD0FFBBB9B8FFAE6C43FFD58E61FF20130AA4000000000000
          0000000000000000000000000000000000000000000000000000313131F3CFCD
          CEFFB8B4B5FFBCB9B8FFBFBCBBFFBEBBBAFFBDBAB9FFBDBAB9FFBCB9B8FFBDB9
          B9FFBDB9B9FFBDB9B9FFBDB9B9FFBCB9B8FFBDB9B9FFBDBAB9FFBEBBBAFFBFBB
          BBFFBDB9B9FFB7B3B4FFC1C0C0FF47352AFC3F2516BF0806065C000000000000
          0000000000000000000000000000000000000000000000000000313131F3C8C5
          C6FFC5C2C2FFC9C6C6FFC9C6C6FFCBC9C8FFD1CECEFFD5D4D3FFDAD9D8FFDEDC
          DBFFE0DEDEFFE0DEDEFFDEDDDCFFDAD9D8FFD6D4D4FFD1CECEFFCCC9C9FFC9C6
          C6FFC9C6C6FFC6C3C3FFC8C5C6FF313131F90000005A0000001D000000000000
          0000000000000000000000000000000000000000000000000000303030F2A3A2
          A2FFD3D0D0FFD9D6D6FFE1E0DFFFE9E8E8FFEEEEEDFFF0F0EFFFF1F1F0FFF1F1
          F0FFF1F1F0FFF1F1F0FFF1F1F0FFF1F1F0FFF0F0EFFFEEEEEDFFEAE9E8FFE2E1
          E0FFD9D8D7FFD3D0D0FFAAA9A8FF313131F9000000560000001B000000000000
          0000000000000000000000000000000000000000000000000000242424BB5756
          56FFDCDADAFFE5E4E3FFE7E6E6FFE7E6E5FFE6E5E4FFE6E5E4FFE7E6E5FFE7E6
          E5FFE7E6E5FFE7E6E5FFE7E6E5FFE7E6E5FFE6E5E4FFE6E5E4FFE7E6E5FFE7E6
          E5FFE5E4E4FFDFDEDEFF646464FF262626DD0000005A0000001D000000000000
          0000000000000000000000000000000000000000000000000000313131F3ACAC
          ABFFE1E0DFFFE1E0DFFFE2E1E0FFE4E3E2FFE5E5E4FFE3E2E1FFDFDEDDFFDCDB
          DAFFDBDADAFFDBDADAFFDCDBDAFFDFDDDDFFE3E2E1FFE5E5E3FFE4E3E2FFE2E1
          E0FFE1E0DFFFE1E0DFFFB4B3B2FF313131F90000005D0000001F000000000000
          0000000000000000000000000000000000000000000000000000313131F3D8D7
          D7FFE4E3E2FFE5E4E3FFDDDBDBFFCDCACBFFC0BCBDFFB6B3B4FFAFABACFFAAA5
          A6FFA7A2A4FFA7A2A4FFA9A5A6FFAFAAACFFB6B2B3FFBFBCBCFFCCC9CAFFDBDA
          DAFFE5E5E3FFE4E3E2FFD9D8D7FF313131F90000005D0000001F000000000000
          0000000000000000000000000000000000000000000000000000313131F3DCDB
          DAFFE2E1E0FFC3BFC1FFAEA8AAFFACA7A8FFACA8A7FFACA8A8FFAFABAAFFB1AD
          ACFFB1AEACFFB1AEACFFB1ADACFFB0ABAAFFADA9A8FFACA8A7FFACA7A8FFADA8
          AAFFC1BDBFFFE0DEDFFFDCDBDAFF313131F90000005D0000001F000000000000
          0000000000000000000000000000000000000000000000000000313131F4D5D4
          D4FFBDB8BBFFB4B0B0FFBAB6B6FFBBB8B7FFBBB8B7FFBBB8B7FFBBB7B7FFBBB7
          B6FFBAB7B6FFBBB7B6FFBBB7B6FFBAB7B7FFBBB8B7FFBBB8B7FFBBB8B7FFBAB7
          B6FFB4B0B0FFBAB5B7FFD4D3D2FF313131F90000005D0000001F000000000000
          0000000000000000000000000000000000000000000000000000313131F4C8C6
          C7FFBFBCBCFFC6C3C2FFC5C2C2FFC5C2C2FFC5C2C2FFC5C2C1FFC5C2C1FFC5C2
          C2FFC5C2C1FFC5C2C2FFC5C2C1FFC5C2C1FFC5C2C2FFC5C2C2FFC5C2C2FFC5C2
          C2FFC5C3C2FFC0BDBCFFC5C2C3FF313131F90000005C0000001E000000000000
          0000000000000000000000000000000000000000000000000000313131F4C0BE
          BEFFCECACBFFD0CECDFFD1CECEFFD1CECEFFD1CECDFFD1CECDFFD1CECDFFD1CE
          CEFFD1CECDFFD1CECEFFD1CECDFFD1CECDFFD1CECDFFD1CECDFFD1CECEFFD1CE
          CEFFD1CECDFFCECBCBFFC3C1C1FF313131F90000005000000018000000000000
          00000000000000000000000000000000000000000000000000002B2B2BD96362
          62FFCECCCCFFDAD8D8FFDBD8D8FFDBD9D9FFDBD9D9FFDCD9D9FFDBD9D9FFDBD9
          D9FFDBD9D9FFDBD9D9FFDBD9D9FFDBD9D9FFDCD9D8FFDBD9D9FFDBD9D9FFDBD8
          D8FFDBD8D8FFD4D1D2FF6D6D6CFF2D2D2DEA000000310000000C000000000000
          00000000000000000000000000000000000000000000000000000E0E0E452E2E
          2EE84E4E4DFF9E9D9DFFD6D4D4FFE3E1E1FFE4E1E1FFE5E2E2FFE3E1E1FFE3E1
          E1FFE4E1E1FFE4E1E1FFE4E1E1FFE4E1E1FFE5E2E2FFE4E1E1FFE3E1E1FFD8D6
          D6FFA3A2A2FF555454FF303030F5111111700000001000000003000000000000
          0000000000000000000000000000000000000000000000000000000000000808
          08271F1F1F9E303030EE464545FF717070FF989797FFB3B2B2FFC9C9C8FFD7D5
          D4FFDCDADAFFDDDBDBFFD8D6D5FFD5D3D2FFBCBBBBFF9D9C9CFF747473FF4A4A
          49FF2F2F2FF2212121B10A0A0A41000000080000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000505051B1212125D1D1D1D96252525BC2B2B2BD92E2E2EEA3030
          30F1303030F1303030F1303030F12E2E2EEC2D2D2DE8272727CB1F1F1FA31313
          136A0606062A0000000500000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000005000000110000
          0021000000310000003D0000004300000045000000470000003D000000260000
          000F000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000A000000200000003F0000
          0058000000670000006E0000007100000074000000820000008B000000780000
          004F000000270000000D00000002000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000000A000000140000
          0018000000180000001800000019000000230000003E0000006100060083001C
          00AA073507C30E430ECD0A3D0ACA02290AC8000F00AC000000AE000000B10000
          009C00000074000000440000001E000000080000000100000000000000000000
          0000000000000000000000000000000000000000000400000014000000280000
          0030000000300000003000000036000000500005007C073507C7569056F5A2CD
          A2FFB6DDB6FFAEDDAEFF9AD49AFF7BC17BFF4B9F4BFF10571AF5001604D10000
          00BC000000A90000007F00000043000000130000000100000000000000000000
          000000000000000000000000000000000000000000020000000A000000140000
          0018000000180000001B00000030000E0075337233E9CAE2CAFFE4F7E4FFC4EA
          C4FFABDFABFF8BD28BFF7FCD7FFF76CA76FF6CC86CFF5BBD5BFF2B932BFF0131
          1AF1000014BE000000890000004D000000150000000100000000000000000000
          00000000000000000000000000000000000000002640000073BF000073BF0000
          73BF000072C000006DC3000C4ED447824FFAEAF6EAFFD5F0D5FFAEDEAEFF97D6
          97FF5EBE5EFF55BA55FF42B242FF46B446FF42B342FF39AF39FF37B237FF1E96
          1EFF013326FF000042E70000065F0000001D0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000600010025246024D2E4F3E4FFCDECCDFFA7DCA7FF8ED28EFF68C1
          68FF5EBD5EFFFFFFFFFFC3E7C3FF1EA41EFF24A724FF1BA31BFF15A015FF13A4
          13FF088808FF001E03AB00000065000000300000000900000000000000000000
          0000000000000000000000000001000000030000000600000008000000080000
          00090000001800230088ACD1ACFFD5F1D5FFA5DBA5FF89D089FF6FC56FFF46B5
          46FF6DC46DFFFFFFFFFFE2F3E2FF16A116FF0B9C0BFF069A06FF029902FF0198
          01FF019A01FF005B00E700020078000000420000001100000000000000000000
          00000000000000000002000000070000000E00000014000000180000001B0000
          002300100063286328DCD4EFD4FFAADDAAFF8BD18BFF6FC56FFF55BA55FF2DAB
          2DFF67C267FFFFFFFFFFE1F3E1FF0C9D0CFF009600FF009801FF019A02FF029A
          03FF039E05FF028B04FF001A00AD000000580000001900000000000000000000
          00000000000200000008000000120000001A0000001E000000210000002D0000
          0047022C02AB64A064FABFE9BFFF91D391FF64C064FF39AF39FF25A725FF0599
          05FF5FBD5FFFFFFFFFFFE1F2E1FF0B970BFF009300FF009600FF009801FF079F
          0BFF08A10DFF079D0CFF013801D7000000750000002700000002000000000000
          0001000000050000001100000E3000001F4D000026580000265D000026700F0F
          34932D6340EC80BC80FFA5DDA5FF6CC36CFF51B851FF9ED99EFF9ED89EFF97D6
          97FFC7E9C7FFFFFFFFFFF4FBF4FF95D595FF8CD28DFF93D593FF7BCB7BFF0EA3
          13FF0DA614FF0FA815FF035004E90000008F000000420000000B000000000000
          00020000020E00001A4002032A57070F365807143F5804104064303873B07676
          C0F9438263FF7BBD7BFF8ED58EFF47B447FF90D390FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF8EFFF21AA
          26FF10AC1BFF16B021FF04590FF4000000990000005C0000001B000000000000
          00040000163203062B550A163E5805123F58010E405918225A877778C3F88FA0
          ECFF468776FF61AF61FF7ACD7AFF4AB64AFF35AE35FF65C165FF61BF60FF57BB
          56FF9FD99FFFFFFFFFFFEEF8EEFF69C36AFF60C162FF66C368FF54BC56FF15AC
          1FFF1CB52BFF1CB62BFF045025FF00001FB00000006800000029000000000000
          050D0102284E0B183E5605114059010E4059000C3F5C575A9FD38C9AE6FF8DA8
          FFFF51879CFF41954AFF6AC76AFF42B342FF21A521FF029802FF009300FF008E
          00FF5EBC5EFFFFFFFFFFE0F1DFFF0EA213FF06A912FF0DAD1AFF13B323FF22BB
          34FF25BE38FF21B633FF03424DFF000079F1000000680000002F000000000000
          13240509304E06134056010E405A000C405B000D405E7E7ECCFF91AAFCFF849E
          FFFF6D91DBFF338159FF55BB55FF35AE35FF19A219FF069A06FF009801FF0096
          00FF61C061FFFFFFFFFFE0F1DFFF19AB20FF1BB62BFF22BB35FF27BF3BFF2AC2
          40FF2FCC48FF1EA52DFF0F429FFF020599FF00001C840000002F000000000000
          1A2F050D364C03104056010D3F5C010E415E222B64888287D6FF8AA4FFFF819A
          FFFF7F99FFFF5B8AB4FF2F9B2FFF2EAE2EFF119E11FF019801FF029A03FF0099
          00FF62C063FFFFFFFFFFE1F2E0FF1CAD25FF21BC34FF29C13EFF2EC746FF33CD
          4EFF36D152FF167140FF3358EDFF0C15B1FF0000268A00000029000000000000
          1A2E040B364709154659091647620B1747652A33698D8186D6FF89A2FFFF889F
          FFFF89A0FFFF8EA4FFFF29704EFF1FA11FFF0B9E0BFF009800FF039B06FF019E
          05FF37B139FFD9EFD8FF9AD699FF16AF23FF28C23EFF2FC948FF36D052FF40DD
          61FF22A034FF5D85B3FF708CFBFF131CB2FF0000267D0000001C000000000000
          132101063044131F4E5A131F4F6516214E6B1B25506F7E7ECCFF8BA2FCFF92A7
          FFFF94A9FFFF9BAEFFFF7F91D5FF116A2AFF069806FF009C01FF059D08FF0BA3
          11FF0AA412FF0FA716FF11AC1CFF24BD37FF2DC745FF36D153FF41DE63FF28AE
          3DFF64958DFFBECBFCFFA8B9FFFF06089FFF00001D590000000C000000000000
          05080001284117224F561E285663202B566B262F56716566A8D48994E6FF9CAF
          FFFF9EB1FFFFA5B7FFFFA9B8FAFF414AA7FF1D7141FF018D02FF06A00AFF0DA7
          13FF13AD1CFF18B326FF21BC34FF2AC741FF34D150FF37CD53FF219933FF73A0
          9BFFDAE1FEFFEDF1FFFF9196DDFF000085E60000001300000003000000000000
          00000000162407083046242E5A6029335D672E375D6C434A728A7E7ECCFF98A3
          EDFFA7B8FFFFADBDFFFFB7C5FFFF8D92DEFF4345B5FF578798FF1F8032FF098C
          0EFF109E16FF17A923FF1DAE2CFF1EAA2FFF209631FF458D66FF9EB8D8FFCFD9
          FFFFE4E9FFFFDADCF5FF1818A3FF0000305C0000000300000000000000000000
          00000000020400001D3005072D451E254D57323B61653B436469585D8CA27676
          C1F3959EE6FFA9B7F9FFBBC9FFFFC5D2FFFF7A7CCFFF4546B7FF6D7ACCFF6F96
          AFFF629C86FF498A6AFF0B444EFF1A456CFF6B86C0FFC4D1FFFFCFD9FFFFCBD2
          F9FF888BD6FF1919A4FF00003A66000000020000000000000000000000000000
          0000000000000000000000000E1800001F340000264000002640000026400F0F
          344C4F4F7F9F7E7ECCFF7E7ECCFF7E7ECCFF7676BFEF47477C9F4B4B9ACF3F3F
          B2FF3F3FB2FF3F3FB2FF3F3F9FDF04045893000086E2000099FF000099FF0000
          99FF000069B00000264000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000008000000270000004B0000004D0000
          00350000001F0000001000000005000000010000000000000000000000000000
          000000000000000000000000000000000000000000020000000A000000140000
          0018000000180000001800000018000000180000001800000018000000180000
          0018000000180000001800000018000030630000134E00000061000000740000
          0069000000560000003E00000020000000090000000100000000000000000000
          0000000000000000000000000000000000000000000400000014000000280000
          0030000000300000003000000030000000300000003000000030000000300000
          003000000030000000300000003000003072000099FF000072D9000030A60000
          007C0000006E0000005500000032000000100000000100000000000000000000
          000000000000000000000000000000000000000000020000000A000000140000
          0018000000180000001800000018000000180000001800000018000000180000
          00180000001800000018000000180000001C000085E6000099FF000099FF0000
          86EB00004DA40000093E0000001A000000080000000100000000000000000000
          00000000000000000000000000000000000000002640000073BF000073BF0000
          73BF000073BF000073BF000073BF000073BF000073BF000073BF000073BF0000
          73BF000073BF000073BF000073BF000072C1000090F1000099FF000099FF0000
          99FF000099FF00007DD100000A12000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000A1600008FF0000099FF000099FF0000
          5FA1000026410000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000003961000086DF00004D8100000A100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000001D300000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000A0000000600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000100270003006D000000460000000C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000C4413C6125419F9000300AF00000062000000230000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000337B40F68AE5AAFF136721FB001600D5000000830000
          0030000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000297335F6A2FFCAFF86EEAFFF36994FFF012301E60000
          00930000003C0000000700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000227431F681FBB1FF7CF1A9FF80F8B0FF45B364FF0032
          03EA000200A10000004E00000017000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001C742DF66AFBA4FF64EF9AFF65EF9BFF6DFAA7FF48CD
          74FF0A5216F4000B00C300000071000000230000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000016742AF654F794FF4FEC8CFF4FEC8CFF4FED8CFF54F4
          92FF45E27DFF157B2AFE001400D60000007E0000002A00000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000F7325F63BF482FF39E97BFF37EA7AFF37EA7AFF36EA
          79FF39EF7FFF39EF7EFF159436FF001F00E00000008F00000047000000120000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000A7221F625EF70FF23E46AFF22E469FF22E56AFF23E4
          6AFF23E56AFF22E66AFF24EF70FF11AA3EFF003E06F3000A00B9000000510000
          0006000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000056F1BF613E55BFF12DA56FF11DA54FF12DB56FF13DA
          56FF11DB54FF11DB56FF11DB55FF14E35BFF0AC645FF004D0BFA0000006F0000
          0009000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000016B16F604D947FF04CF43FF04CF43FF03CE43FF05CE
          43FF03CE41FF03CF41FF03CE42FF03D646FF04BA3BFF014008DF000100360000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000006611F600C637FF00BE34FF00BE34FF00BD33FF00BD
          33FF00BC33FF00BE33FF00C134FF009C28FF003A04E100030043000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000005E0EF600A828FF00A426FF00A425FF00A325FF00A1
          25FF00A225FF00A326FF007B18FF002F02D30002003600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000570AF6008E1DFF008B1AFF008D1AFF008B19FF0090
          1AFF00911DFF00630EFF002802BE0001002A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000005207F6007A11FF007611FF007510FF007811FF008A
          1EFF00560CF60016018600010014000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000004E06F600690BFF00630AFF006E10FF007D19FF004F
          0AF3000800670000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000004905F6005806FF007315FF007316FF004306EE0006
          005A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000004503F6007416FF007015FF003A03E50005004E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000075D14F509721DFF002E00D30003003B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000053508AF063B09C90002002F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000E0000
          0040000000450000004400000044000000440000004400000044000000440000
          0044000000440000004400000044000000440000004400000044000000450000
          00420000001B0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000011BBA0101
          23DE01012CE101012EE001012EE001012EE001012EE001012EE001012EE00101
          2EE001012EE001012EE001012EE001012EE001012EE001012AE001011FE50000
          0CC9000000420000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000D0D71F9403F
          FFFF4B49FBFF4D4CFBFF4D4CFBFF4D4BFBFF4D4CFBFF4E4DFBFF4D4CFBFF4D4C
          FBFF4C4AFBFF4D4CFBFF4E4CFBFF4D4CFBFF4D4BFBFF4947FCFF312FFBFF0000
          1FE1000000450000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000E0E7CF94544
          FFFF5150FFFF5353FFFF5454FFFF5353FFFF5453FFFF5452FFFF5453FFFF5453
          FFFF5353FFFF5454FFFF5453FFFF5352FFFF5351FFFF504FFFFF3B39FFFF0000
          28E0000000440000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000B0C7EF93534
          FFFF403FFFFF4242FFFF4242FFFF4242FFFF4342FFFF4243FFFF4242FFFF4242
          FFFF4242FFFF4242FFFF4242FFFF4243FFFF4241FFFF3F3FFFFF2D2DFFFF0101
          2DE0000000440000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000008097EF92827
          FFFF3130FFFF3333FFFF3333FFFF3333FFFF3333FFFF3333FFFF3333FFFF3433
          FFFF3333FFFF3333FFFF3333FFFF3333FFFF3333FFFF2F2FFFFF2323FFFF0101
          2EE0000000440000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000007077EF91D1D
          FFFF2425FFFF2728FFFF2727FFFF2728FFFF2627FFFF2626FFFF2626FFFF2627
          FFFF2627FFFF2727FFFF2626FFFF2727FFFF2626FFFF2525FFFF191AFFFF0001
          2EE0000000440000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000004057EF91414
          FFFF191AFFFF1B1BFFFF1A1CFFFF1C1BFFFF1B1CFFFF1B1CFFFF1B1BFFFF1B1B
          FFFF1C1CFFFF1A1CFFFF1B1CFFFF1B1CFFFF1B1BFFFF1A1AFFFF1212FFFF0001
          2EE0000000440000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000003037EF90B0B
          FFFF0D0FFFFF0E10FFFF0F11FFFF0E10FFFF0E10FFFF0F11FFFF0E10FFFF0F0F
          FFFF0F11FFFF0E10FFFF0F11FFFF0F11FFFF0F11FFFF0E11FFFF0A0BFFFF0001
          2EE0000000440000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000001027EF90204
          FFFF0306FFFF0306FFFF0306FFFF0306FFFF0305FFFF0306FFFF0305FFFF0305
          FFFF0306FFFF0306FFFF0306FFFF0306FFFF0306FFFF0406FFFF0204FFFF0001
          2EE0000000440000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000017EF90001
          FFFF0002FEFF0002FEFF0002FEFF0002FEFF0002FEFF0002FEFF0002FEFF0002
          FEFF0002FEFF0002FEFF0002FEFF0003FEFF0003FEFF0002FFFF0001FEFF0001
          2EE0000000440000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000017BF90002
          FFFF0003FAFF0003FAFF0003FBFF0003FBFF0003FBFF0003FBFF0003FBFF0003
          FBFF0003FBFF0003FBFF0003FBFF0004FBFF0004FAFF0003FBFF0002F8FF0001
          2EE0000000440000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000017AF90003
          FAFF0005F4FF0005F5FF0005F5FF0005F5FF0005F5FF0005F5FF0005F5FF0005
          F5FF0005F5FF0005F5FF0005F5FF0005F5FF0005F5FF0005F5FF0003F0FF0001
          2EE0000000440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000276F90004
          EBFF0005E9FF0005EBFF0005ECFF0005ECFF0005EDFF0005ECFF0005EDFF0005
          EDFF0005EDFF0005EDFF0006EBFF0005EBFF0005EBFF0006EAFF0004E3FF0001
          2EE0000000440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000273F90004
          DEFF0007DFFF0007E2FF0007E3FF0007E4FF0007E4FF0007E4FF0007E4FF0007
          E4FF0007E4FF0007E3FF0007E3FF0007E3FF0007E1FF0007DEFF0005D8FF0001
          2EE0000000440000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000026FF90006
          D0FF0008D5FF0008D8FF0008D8FF0008D8FF0008D9FF0009D9FF0008D9FF0008
          DAFF0008D9FF0009D8FF0008D8FF0009D8FF0008D7FF0008D4FF0006CAFF0001
          2EE0000000440000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000026CF90008
          C2FF000AC8FF000BCCFF000BCDFF000BCDFF000BCDFF000ACEFF000BCEFF000B
          CDFF000BCEFF000BCDFF000BCDFF000BCCFF000ACBFF000AC8FF0007BFFF0001
          2EE0000000440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000369F9000A
          B0FF000DBAFF000EBEFF000EBEFF000EBDFF000EBEFF000DBFFF000EBEFF000E
          BEFF000EBFFF000EBEFF000EBEFF000EBEFF000EBCFF000DBAFF0009AEFF0001
          2DE1000000460000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000160F90004
          84FF000693FF000697FF000698FF000697FF000698FF000699FF000698FF0006
          98FF000698FF000698FF000698FF000698FF000697FF000692FF000484FF0001
          2BD5000000330000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000143A60001
          6AAE00016FAE000172AE000172AE000173AE000173AE000173AF000173AF0001
          73AF000173AF000173AF000172AE000173AE000172AE00016FAE00016AB60000
          1678000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000000000000000000000000000000000008010000240100004A000000520000
          0043000000340000002A00000021000000160000000F0000000A000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000402002385530BBB9E6925DE6B440ECD371E
          00B3200D00A11307008D060200730000005700000049010000461C0C03872B15
          08932A13068C090401520000000F0000000700000003000000010D0501492913
          067D2E160882170A02620100000E000000000000000000000000000000000000
          000000000000000000000000000005030032D49A41F8FFF6E3FFFFEACAFFFEDC
          A5FFF5CB90FFD1A368F89F7434E66F4709D4562E00C73E1D01BBAA6119FBD59D
          59FFD88F3FFF411F03BF0201004A000000340000002900000020693207BACE8D
          42FFDD9F57FF874C12DD0B05002F000000000000000000000000000000000000
          000000000000000000000000000005030032CC9540F3FFFFFCFFFEFBF7FFFDFA
          F7FFFFFCF7FFFFFAF0FFFFF9E8FFFFFAE2FFFFF5DFFFDDBF9BFFC87D2AFFE4B2
          6CFFE9A24AFF693C0CEB342104AE110700920C03008705000073643309C7DFA0
          4DFFEDB56BFF9F621EE90F060034000000000000000000000000000000000000
          000000000000000000000000000005030032CC953FF3FFFFFBFFE8B676FFE19F
          49FFE3A251FFE5AD64FFEBBC81FFF0CEA3FFEFD7B8FF9F7C5EFFCC7D29FFD397
          55FFD28639FF9E5D2BFFDEC6A2FFF2C582FFE0AD6EFE977344EC8F4910F8D187
          3AFFD89A55FFC57624FF391C088E000000070000000000000000000000000000
          000000000000000000000000000005030032CC953FF3FFFEFBFFE9B87BFFE2A3
          51FFE4A659FFE4A658FFE4A757FFDFA255FFB27738FFC0762FFFCE893EFFC883
          43FFBA6D2AFFB5580FFF9A6335FFC5A27BFFB99E80FF9D6A43FFB5580FFFBB6F
          2BFFC88343FFD28B3FFFB76E29F70F0702530000000000000000000000000000
          000000000000000000000000000005030032CC953FF3FFFEFBFFE9B97DFFE3A4
          54FFE4A85BFFE4A95EFFE5AB61FFDEA45EFFB9712FFFDD9836FFF0C775FFFADA
          95FFE4B359FFCD7917FFD38025FFE2AF5BFFE1A650FFD6852AFFCC7A18FFE6B5
          5CFFFBD995FFEEC471FFE99A31FF2E1703850000000000000000000000000000
          000000000000000000000000000005030032CC953FF3FFFEFBFFEABB80FFE4A6
          57FFE5AA5FFFE5AB62FFE6AC65FFD9A05DFFB66E2BFFDB9634FFF0C774FFFBDB
          96FFE6B55AFFCB7A17FFCE7F26FFE7B35EFFE1A750FFD0832AFFCC7A18FFE7B7
          5DFFFCDC97FFEEC271FFE5992FFF3E1F04980100000500000000000000000000
          000000000000000000000000000005030032CC953FF3FFFEFBFFEBBD83FFE5A9
          5CFFE6AC64FFE6AD67FFE6AE6AFFD29A5CFFB66B25FFDB9634FFEFC473FFFAD9
          94FFE5B359FFCB7918FFC9781FFFBF7532FFC07531FFC9771DFFCD7E1CFFE6B4
          5CFFFBDA95FFECC170FFE5982FFF502805AB0201000B00000000000000000000
          000000000000000000000000000005030032CC953FF3FFFEFAFFEBBF86FFE5AA
          60FFE7AF67FFE7B06CFFE7B26FFFCC9458FFB76B22FFDA9634FFEEC373FFFAD8
          93FFE5B259FFCB7919FFC7761DFFB66E2EFFB8702EFFC8741AFFCD7E1DFFE5B3
          5CFFFBD994FFECC170FFE3972FFF653306BE0000001300000000000000000000
          000000000000000000000000000005030032CC953FF3FFFEFAFFECC189FFE6AE
          65FFE8B26CFFE7B270FFE8B674FFC38B54FFB76A1DFFDD9933FFF1CC78FFFFE1
          9CFFE9B95EFFCD7C18FFD08327FFE3B15EFFDDA54FFFD3862BFFCE7D19FFEABB
          61FFFFE19DFFEFC874FFE4982FFF7A3E06D00200002400000000000000000000
          000000000000000000000000000005030032CC953FF3FFFEFAFFECC28DFFE7AF
          69FFE8B372FFE8B576FFE9B87AFFC68E58FFB96D28FFD08934FFD9A255FFDFAB
          66FFCF8D3EFFBB6513FFBF6D20FFCC8D48FFC98941FFBC6D23FFBC6713FFCF90
          40FFE0AB67FFD9A053FFD68B33FF86450FD90402002D00000000000000000000
          000000000000000000000000000005030032CC953FF3FFFEFAFFEDC491FFE8B2
          6EFFE9B677FFEAB87BFFEBBB7FFFD3A26CFFBF7C3EFFD29146FFD89E5AFFD295
          4BFFC57924FFAF540BFFCAA471FFF0D1A3FFF1D5ADFFDAAF71FFB25711FFC57A
          27FFD3954DFFD79D5AFFDB9748FF754419C80302011B00000000000000000000
          000000000000000000000000000005030032CC953FF3FFFEFAFFEDC894FFE9B6
          73FFEABA7CFFEABB81FFEBBE85FFC38F5BFFBD7628FFE6AD4AFFFBDA91FFF9D5
          8AFFDFA340FFC56C0FFFC2A887FFF3D9B6FFF4DCBCFFDEB685FFC16D18FFE1A7
          45FFF9D78DFFFAD88FFFEBAC46FF874C0ED70301002B00000000000000000000
          000000000000000000000000000005030032CC953FF3FFFEFAFFEECA9AFFE9B9
          79FFEBBD82FFEBBE88FFECC18CFFC18A58FFC07828FFE4AA4AFFF7D28BFFF5CF
          82FFDD9E3DFFC46B0EFFC0A88BFFF5DEBEFFF5DFC4FFD7AC88FFC3731CFFDEA2
          42FFF5CF85FFF6D289FFE6A946FF9A5811E50803003C00000000000000000000
          000000000000000000000000000005030032CC953FF3FFFEF9FFEFCC9EFFEBBC
          80FFEBC088FFEDC38CFFEEC591FFC08650FFC37824FFE3AA4AFFF7D38BFFF5CF
          83FFDD9E3DFFC26A0EFFC0A480FFF3D9B3FFF7E5CEFFDAB18EFFC2721CFFDFA2
          42FFF5D086FFF6D289FFE5A846FFAC6212F10E06004F00000000000000000000
          000000000000000000000000000005030032CC953FF3FFFEF9FFF1CEA3FFEBBE
          86FFEDC38EFFEDC794FFEEC999FFBD8049FFC37721FFE2AA4AFFF7D38BFFF4CE
          83FFDE9F3DFFC2690EFFBFA075FFEDC78DFFF5DFC0FFDCB697FFC3731EFFDFA2
          42FFF5D086FFF6D289FFE2A746FFB96A13FA1609006100000000000000000000
          000000000000000000000000000005030032CC953FF3FFFEF9FFF1D1A7FFEDC1
          8BFFEEC595FFEEC99BFFF0CC9FFFBC7C41FFC5751DFFE2AA4AFFF7D38BFFF4CE
          83FFDE9F3DFFC0690EFFC1A275FFE9BC79FFECC388FFDBB493FFC3731FFFDFA2
          42FFF5D086FFF6D289FFE1A646FFC47013FF200E007300000000000000000000
          000000000000000000000000000005030032CC953FF3FFFDF9FFF1D4ACFFEEC7
          93FFEFCB9BFFEFCEA1FFF0D1A6FFB97232FFC77617FFE6B04DFFFEDD93FFFBD8
          8BFFE3A640FFC16B0FFFBF9F6FFFE7B66EFFE3A851FFD39A5EFFC37318FFE3AA
          45FFFCDA8EFFFCDC91FFE4AC49FFCC7513FF3216018C00000000000000000000
          000000000000000000000000000005030032CC953FF3FFFDF9FFF2D6B1FFEECA
          99FFEFCEA1FFF0D1A7FFF1D4ACFFC48147FFC4782EFFD19445FFE2B373FFE0AF
          6DFFD18F3DFFC0732DFFC8A26CFFE9BB76FFEABD7AFFD29343FFC67F3BFFCF8D
          39FFE1AF6EFFE0B271FFC7883AF59F5610D73717017800000000000000000000
          000000000000000000000000000005030032CC953FF3FFFDF9FFF3D9B6FFEFCE
          9FFFF1D2A8FFF1D4AEFFF2D7B3FFE8C6A1FFE0B893FFC48962FFB16C42FFB36E
          45FFCB9878FFE1BA97FFE2B36EFFEFCC98FFFEFBF6FFF2DDC3FFE7CCB5FFBD7A
          44FF7A3814DD7B3A17CD53250C8A2611043D0D05011900000000000000000000
          000000000000000000000000000005030032CC953FF3FFFDF8FFF4DDBAFFF0D0
          A6FFF2D4AEFFF2D9B4FFF4DAB9FFF5DDBEFFF5E0C4FFF6E3CAFFF7E6D0FFF9EA
          D6FFFAEEDEFFF3D8B3FFE7B770FFF7E5CBFFFFFFFFFFFFFFFFFFFFFFFFFFCDA2
          61F1010000490000000F00000000000000000000000000000000000000000000
          000000000000000000000000000005030032CC953FF3FFFDF8FFF4DFC0FFF2D4
          ACFFF4D8B4FFF4DBBAFFF5DDBFFFF6E1C4FFF7E3CBFFF7E7D0FFF9EAD6FFFAED
          DCFFFAF0E2FFF1D4A8FFECC387FFFCF5EBFFFFFFFFFFFFFFFFFFF6E1C8FC3A27
          0C87000000190000000400000000000000000000000000000000000000000000
          000000000000000000000000000005030032CC953FF3FFFDF8FFF5E0C4FFF3D7
          B3FFF3DCBAFFF5DEC0FFF6E0C5FFF7E4CCFFF7E7D2FFF8E9D6FFF9EDDCFFFAF0
          E3FFFBF1E5FFF1D5A8FFF3DAB2FFFFFFFEFFFFFFFFFFFEECD3FF372915870000
          0017000000030000000000000000000000000000000000000000000000000000
          000000000000000000000000000005030032CC953FF3FFFDF8FFF6E3CAFFF4DB
          B9FFF5DEC1FFF5E1C8FFF7E4CDFFF7E7D3FFF8EAD8FFF9EDDDFFFAF0E3FFFBF3
          E8FFFCF3E6FFF2D9B3FFF6E5CAFFFFFFFFFFFFF2DBFF43341F95000000160000
          0003000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000005030032CC953FF3FFFDF8FFF7E5D0FFF6DE
          BFFFF7E2C7FFF7E5CDFFF8E8D2FFF8EBD8FFF9EDDDFFFBF0E2FFFCF3E8FFFCF7
          EEFFFBF2E5FFF4DBB7FFFFFCF6FFFFF0D7FF543F20A20000001C000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000005030032CC953FF3FFFDF7FFF8E9D5FFF6E1
          C7FFF7E5CEFFF8E8D3FFF9EBD8FFFAEEDDFFFAF0E2FFFBF3E6FFFCF6ECFFFCF8
          F3FFFBF4E9FFFBF1E3FFFBEDD4FF4B381F9A0000001D00000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000005020031CC953FF3FFFDF7FFF8EAD8FFF6E4
          CCFFF8E8D3FFF9ECDBFFFBF1E5FFFDF7F0FFFEFCF9FFFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDE3B9FF5D411AA5000000210000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000005020031CC9540F3FFFFFCFFFFFDFCFFFFFE
          FEFFFFFFFFFFFFFFFFFFFFFDF7FFFFF8E9FFFFF7DDFFFFF0D4FFF6D3A2FCD9AC
          68EEB58337E15E3C099B03010022000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000502002ED39941F8FFF4E3FFFBE8C9FFFADB
          A9FFFAD195FFE7B372F7BC8A43D9875A18B7513000A03F21008C261300611008
          00340100000F0000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000302001980500AAB9D6620C66F450C9E351F
          006F130900550D050042070300290101000C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000002020100130301001C010100100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000900000021000000120000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          001B090400533F1E00A10F08008A000000310000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000080000001801000039341900978241
          00D5A25D19E9F99A3AFF3B1A00C0000000380000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000014030100370F070066502A01B4B9640EF6D08438FCEDC5
          9EFFF1E8E0FFF0BB85FF381500C0000000370000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000060000
          002A0C04005D311700979C540BE5DF852BFFDEA76FFFE7D1BBFFEBE6E0FFEBEF
          F2FFE4D6C5FFE4892AFF391A00C0000000370000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000090000001604010047301600956E38
          03CBBB7023F6E89C50FFE5BE96FFE7D9CCFFEBE9EAFFEAECEEFFE8EBEEFFE4DB
          D3FFD38C3FFFE58715FF391A00C0000000370000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000060000001900000035140A00765C2D00C1A65D13EDD88F45FEEAB3
          7BFFEAD3BDFFE8E1DBFFE9EBECFFE8EBEDFFE7E8E9FFE6E7E8FFE2E1DFFFD59B
          63FFD78E29FFEC9E36FF381800C0000000370000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000D0100
          00310B050062341900A09E5104E9D4802CFFDEA56DFFE5C29FFFE9DFD6FFE9E9
          E8FFE8E9EAFFE6E7E8FFE4E5E5FFE3E3E4FFE2E3E4FFE1E5E9FFD7B390FFCE72
          11FFE1AF51FFECA038FF381800C0000000370000000000000000000000000000
          0000000000000000000000000001000000040000001E090400593418009B6332
          02C9D57615FDE0984EFFE1BB94FFE4D4C4FFE9EAEBFFE8EAEBFFE6E6E8FFE5E5
          E5FFE2E3E3FFE1E1E3FFDFE0E0FFDDDDDBFFDDDFDCFFD9C1A5FFCF7D23FFDEA3
          43FFE3B75EFFEDA13BFF381800C0000000370000000000000000000000000000
          00000000000000000009000000343B1D009F783D00D2A1580DEBE88A2BFFE8AE
          75FFE5D2BEFFE8E2DCFFE9EEF3FFE7EBEEFFE4E4E5FFE2E2E3FFE0E0E2FFDFDF
          DFFFDEDDDBFFDCDBD4FFDCD9CEFFDDDAC9FFDCCEB3FFCE7C2AFFD68825FFE3B6
          5CFFE4B863FFEDA33FFF381700C0000000370000000000000000000000000000
          000000000000361B006DB45D06F8CF7B28FCE39B53FFE6C29FFFE7E3E0FFE7E7
          E6FFE6EAEDFFE5E6E8FFE3E3E4FFE0E0E1FFDFDFDFFFDEDEDBFFDCDBD5FFDCD9
          CDFFDDD9C9FFDED8C1FFE0D7BCFFE2D7B9FFD4944CFFD17A15FFE1B055FFE3B4
          5EFFE5BB6AFFEEA544FF381700C0000000370000000000000000000000000000
          000000000000CB7015FBE0B991FFE4D4C4FFE8EAEDFFE6E7E9FFE5E5E6FFE3E3
          E4FFE1E1E1FFDFDFDFFFDEDEDCFFDCDBD3FFDBD9CDFFDCD9C8FFDFD8C1FFE0D7
          BCFFE2D7B7FFE3D5B2FFE6D8B4FFDDAE6FFFD27E1DFFE0AF54FFE2B35CFFE3B6
          63FFE6BE71FFEFA84AFF381700C0000000370000000000000000000000000000
          000000000000CD7926FBE8F2FDFFE6EAEDFFE2E2E3FFE1E1E1FFDFE0DEFFDDDD
          DAFFDCDBD3FFDCDACEFFDCD8C6FFDED8C1FFE0D7BCFFE2D6B7FFE3D5B2FFE4D2
          ABFFE5D2A8FFE8D4A9FFE3BD84FFCE6E0EFFDEA648FFE3B35BFFE3B561FFE5B9
          69FFE8C37AFFF1AB4FFF381700C0000000370000000000000000000000000000
          000000000000C86705FBD59A61FFDDD1C5FFDEDFDDFFDCDCD5FFDCD9CDFFDDD8
          C8FFDFD7C0FFE0D7BCFFE1D6B7FFE3D4B1FFE4D3ADFFE6D3A9FFE7D1A3FFE9CE
          9CFFEBCF9CFFEAC48AFFD37B20FFD58A28FFE2B45CFFE3B661FFE5B969FFE6BD
          72FFEAC882FFF1AC53FF381700C0000000370000000000000000000000000000
          000000000000CA6D09FBD2831EFFCF7F2BFFD7B68CFFDED4BCFFE1D9C0FFE2D6
          B6FFE3D4B0FFE5D3ACFFE6D3A8FFE8D1A3FFE8CE9EFFEACD99FFEBCC95FFEDCA
          90FFEEC78BFFDA8C38FFD58927FFE3B55EFFE3B662FFE4B968FFE6BC70FFE7C0
          79FFEBCA89FFF2AE59FF381700C0000000370000000000000000000000000000
          000000000000CA6D0AFBD9A444FFD69531FFD07B19FFD5934AFFE3C99DFFE7D5
          ACFFE8D1A3FFE9CF9CFFEACC99FFEBCB95FFECCA90FFEEC88BFFEFC787FFF2C9
          88FFE29F4FFFD3801DFFE1B158FFE3B661FFE4B968FFE5BC6FFFE6C078FFE9C4
          81FFECCE92FFF2B15DFF381600C0000000370000000000000000000000000000
          000000000000CA6F0CFBDAA64CFFD8A042FFD79B39FFD2801AFFD48730FFE2B2
          71FFEBCB94FFEDCA91FFEDC88CFFEFC788FFF0C482FFF0C380FFF4C682FFEAAF
          61FFD2730EFFE3B461FFE5BA66FFE5B867FFE6BC6FFFE7C078FFE9C47FFFEAC8
          88FFEED39CFFF4B465FF381600C0000000370000000000000000000000000000
          000000000000CB700FFBDEAD5BFFDAA54CFFD9A246FFD9A142FFD5912DFFD179
          18FFDE9542FFEEBA74FFF2C481FFF3C17BFFF3C27CFFF4C27AFFEEAF5FFFD377
          16FFC4986CFFCD7F2CFFDC9742FFE7BC72FFE8C179FFE9C582FFEAC788FFECCC
          91FFF0D8A7FFF5B86DFF371500BE000000360000000000000000000000000000
          000000000000CB7111FBE1B56BFFDDAC5AFFDBA752FFDAA34AFFD9A449FFD796
          32FFCD7617FFD48837FFE18B2AFFE6973DFFE79A3FFFE19338FFD0802CFFC1B6
          ABFFBFE5FFFFC1D8EEFFC6A27CFFCB7B29FFDFA253FFE7B872FFEFD39DFFEED3
          9FFFF1DEB4FFF6BB75FF371500BD000000340000000000000000000000000000
          000000000000CC7315FBE5C07EFFE1B46CFFDEAF62FFDDAF5EFFDB9E43FFCF7D
          21FFC0B8AEFFBEC4CBFFC8945FFFCC975FFFC99560FFC5A483FFC2E0F1FFC3E9
          FFFFC5E2FFFFC6E4FFFFC7EDFFFFCAD7E1FFC9A482FFCF873CFFDD9847FFEDCC
          99FFF8EFD2FFF8C07EFF361400BC000000340000000000000000000000000000
          000000000000CD7418FBE8C991FFE4BD7DFFE3BB77FFDEA857FFCE7C25FFC3BB
          B5FFC1E7FFFFC2E5FFFFC3E6FFFFC5E0FDFFC5E4FFFFC7EAFFFFC9E6FFFFCBE4
          FFFFCCE5FFFFCCE6FFFFCEE5FFFFCFEBFFFFD0EFFFFFD0DAE7FFCDAC8DFFD38C
          42FFDE9C53FFF7BC79FF321300AF000000260000000000000000000000000000
          000000000000CE761CFBEED7ABFFE9CB96FFE1AD66FFCE7D28FFC6C2BFFFC6E9
          FFFFC8E4FFFFC9E4FFFFC9E5FFFFCBE6FFFFCDE7FFFFD0E7FFFFD3E9FFFFD4EA
          FFFFD4EAFFFFD5E9FFFFD5EAFFFFD1E8FFFFD0E8FFFFD0EBFFFFCFEAFFFFCCDE
          F3FFCFB193FFD27D25FF200F008C000000100000000000000000000000000000
          000000000000CF7921FBF5EBD2FFE4B273FFCD7E2DFFCAC8C2FFCDEBFFFFD1E8
          FFFFD5EAFFFFD6EAFFFFD7EAFFFFD6EAFFFFD1E7FFFFC7E3FFFFBFDFFFFFC0DF
          FFFFC0DFFFFFBCDEFFFFB6DBFFFFA0CFFFFF9ACDFFFF96CBFFFF9BCDFFFFBCDE
          FFFFE4F1F0FF936537E40501004C000000030000000000000000000000000000
          000000000000CE7B26FAECC08CFFD48332FFD4D2CFFFD4EEFFFFCDE5FFFFB3D9
          FFFFA4D2FFFFA4D1FFFFA5D2FFFFA3D2FFFF9BCCFFFF8DC6FFFF83C1FFFF84C1
          FFFF84C1FFFF85C2FFFF87C2FFFF89C4FFFF86C3FFFF93C9FFFFBFDEFFFFE4F6
          FFFFC7A98AFF422000A100000013000000000000000000000000000000000000
          000000000000B75A00E8BD8141FF85B3DFFF83C6FFFF83C1FFFF81C0FFFF78BC
          FFFF72B8FFFF72B8FFFF72B9FFFF73B8FFFF74B9FFFF75BAFFFF76BBFFFF76BA
          FFFF76BBFFFF76BAFFFF76B9FFFF77BBFFFF93C9FFFFC0E0FFFFD8F1FFFFB3AE
          A9FF794209CD0503002E00000000000000000000000000000000000000000000
          0000000000005C3309818FA5BBFF78C0FFFF71BCFFFF67B3FFFF61AFFFFF64B2
          FFFF65B2FFFF65B1FFFF65B1FFFF65B2FFFF65B2FFFF65B1FFFF65B2FFFF65B2
          FFFF65B1FFFF62B0FFFF69B4FFFF93C9FFFFB9DEFFFFA8CFF9FF9B948DFF683C
          0EB50F0700350000000300000000000000000000000000000000000000000000
          00000000000010080015753E08A6928679FD79B0E8FF72BCFFFF6AB7FFFF53A8
          FFFF50A7FFFF54A9FFFF54AAFFFF55A9FFFF55AAFFFF55A9FFFF55A9FFFF54A9
          FFFF50A7FFFF64B1FFFF96CAFFFFA5D6FFFF8BB2D8FF8F7356F53D1F03850301
          0014000000000000000000000000000000000000000000000000000000000000
          00000000000000000000050300073F1F0055845320C9818A93FE73ADE7FF71BB
          FFFF60B0FFFF45A2FFFF45A2FFFF46A2FFFF46A2FFFF44A1FFFF43A2FFFF44A1
          FFFF69B4FFFF92CAFFFF8AC8FFFF8097AFFF7B4C1CCF1F0F0051000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000804000B4E28036D815B34D3758A
          9EFF7DB8F2FF72B9FFFF58AEFFFF4DA8FFFF50A8FFFF60B0FFFF6DB8FFFF77BE
          FFFF82C5FFFF79B4EDFF847C73FD5A3005A40201002000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001309001A562E
          077B7E5D3BDB77818CFA7BADDFFF6EB6FEFF70BDFFFF6EB8FFFF72B1F0FF77A8
          DAFF7B9AB8FF835B32E13117006B000000090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001B0E00254824006475491BBB7C7267F683807DFF867768FD7C5E41E36F49
          21C25E30018F1008002E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000A05000D2E16003E351A004C2612003C1B0D002A1109
          0019000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000001300000034000000520000
          005F000000610000005500000037000000140000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000F1A0900623E1400B34D1A01D0541A
          01D8421400CE1A0900B000000081000000440000001000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A080048882D01EFA64308FFBB5D16FFC982
          45FFBD7A51FF90370DFA220B00C3000000770000002400000000000000000000
          0000000000000000000000000000000000040000000D0000001C000000280000
          002A000000240000001700000009000000010000000000000000000000000000
          00000000000000000000000000008F3100EFAC4806FFD47310FFE68C1BFFF4DC
          BDFFFCEDD4FFCD8B4EFF91350AFB0000008A0000002D00000000000000000000
          000000000000000000000000000900000023000000480000006A0000007F0000
          0084000000780000005D00000037000000140000000300000000000000000000
          00000000000100000008000000118F3702F6AC5306FFB9610EFFC17119FFD4B5
          98FFD6AE7CFFD9B686FF934314FC000000950000004000000016000000160000
          0016000000160000001A0202093E333370B46B6BD4F57B7BF0FE6060EFFE3636
          D4FB12127FE4000018B200000082000000490000001800000003000000000000
          0004000000190000003800000052652801F9773903FF7B3F07FF834A0EFF917A
          61FF92795CFF9A8364FF6C360FFD000000B60000007A0000005E0000005E0000
          005E0000005E04040F706B6BC5EEBDBDFFFF8A8AFFFF4848FFFF2F2FFFFF2626
          FFFF1F1FFFFF0D0DCAFC00002CC70000008A0000004700000010000000020000
          011B0F0F2C7922226CC72C2C89E13A3086FE3C3185FF3B3085FF392E82FF3934
          90FF37318DFF36308CFF2A1E7AFE101076EF0C0C74E20B0B74DC080872DC0505
          71DC02026BDA5353C5F6D7D7FFFF6F6FFFFF1515FFFF0000FFFF0000FFFF0202
          FFFF0404FFFF0606FFFF0303C0FD00002AC60000007400000022040409165050
          98C1DDDDF7FEF0F0FCFFDFDFFDFFD2D2FDFFC4C4FDFFB3B3FDFFA1A1FDFF8E8E
          FCFF7B7BFCFF6969FCFF5959FCFF4949FCFF3939F8FF2929EEFF1C1CE8FF0B0B
          E4FF2727E5FFCCCCFCFF9696FFFF0303FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0101FFFF000085F10000006B0000002226265975EEEE
          FFFFCBCBFFFF7575FFFF5C5CFFFF5656FFFF5050FFFF4848FFFF4040FFFF3838
          FFFF3030FFFF2929FFFF2323FFFF1C1CFFFF1515FAFF0F0FEFFF0B0BEAFF0000
          E4FF5A5AEEFFE7E7FFFF3131FFFF0000FFFF0000FFFF0000FFFF0000DFFF0000
          CDFF0000CDFF0000CDFF0000CCFF00008EF20000003A000000116464B3CFFCFC
          FFFF2626FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FAFF0000F0FF0000E9FF0000
          E4FF7C7CF4FFCBCBFFFF0404FFFF0000FFFF0000FFFF0000DDFF000087F60000
          33BE0000299900002B8E00002D90000019780000003D000000116B6BBCD5F9F9
          FFFF2525FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FAFF0000F0FF0000E9FF0000
          E5FF8282F5FFCACAFFFF0303FFFF0000FFFF0000FFFF0000D2FF00007FF30000
          3ED200003CC900003DC7000040C900001FB10000006E0000002228285E6FEFEF
          FFFFCACAFFFF7575FFFF5C5CFFFF5656FFFF5151FFFF4949FFFF4141FFFF3939
          FFFF3131FFFF2929FFFF2424FFFF1E1EFFFF1818FBFF1111F2FF0B0BE9FF0101
          E3FF6161EDFFEBEBFFFF2929FFFF0000FFFF0000FFFF0000FEFF0000DEFF0000
          D7FF0000D8FF0000D8FF0000D6FF00008FF900000076000000230303080A5050
          99AFDCDCF8FEF0F0FCFFE0E0FDFFD3D3FDFFC5C5FDFFB5B5FDFFA2A2FDFF8F8F
          FCFF7C7CFCFF6A6AFCFF5B5BFCFF4D4DFCFF3F3FF9FF3030F1FF2222E8FF0F0F
          E2FF3232E5FFD9D9FEFF8F8FFFFF0101FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0303FFFF000089F20000004A00000012000000000000
          01010F0F2C3D23236C8D2C2C89B4583B86FC5F4185FF604183FF624383FF6450
          97FF644E93FF684E8CFF4B2A78FD121277D60E0E74B30B0B73A20A0A73A40707
          73A604046EA26565CEEBE2E2FFFF7878FFFF1414FFFF0000FFFF0000FFFF0404
          FFFF0B0BFFFF0E0EFFFF0707CBFC00002F850000001B00000004000000000000
          0000000000000000000000000000A24000F5C25B00FFC76000FFD1700AFFDD9C
          48FFE19838FFF29F23FFA54300FC000000830000002900000000000000000000
          00000000000009091B207676CCE3CCCCFFFF9797FFFF5252FFFF3D3DFFFF3B3B
          FFFF3737FFFF1818CEF901013C820000021A0000000400000000000000000000
          00000000000000000000000000009C3C01F4BF5904FFCC6601FFD77306FFE4A8
          52FFEDB353FFED9C29FF9E3C00FA0000005E0000001B00000000000000000000
          0000000000000000000004040D11434385988D8DE8F5A0A0F7FE8888F7FF5757
          E6FB1C1C9BCD00001D460000000B000000010000000000000000000000000000
          0000000000000000000000000000602001A2A54205FFC76201FFED8600FFF8BF
          55FFE6B871FFB8601AFF611F00C4000000250000000800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000602000A280C0045773818E8A75722FFAA62
          2FFF7B3E20F9320F00AB0703003A000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000444141D6A5ACB2FFBAC0
          C5FF484644F10000007D00000026000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000414345D6A6A5A5FFC3C2
          C2FF47494BF10000007D00000026000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000424242D6A5A5A5FFC2C1
          C2FF484848F10000007E00000028000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000424242D6A5A5A5FFC3C3
          C3FF4A4A4AF2000000820000002C000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000424242D6A5A5A5FFC3C4
          C4FF585858F40404048B00000032000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000424242D6A5A5A5FFC5C4
          C5FF5C5C5CF71212129600000034000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000003424242D8A6A6A6FFC6C6
          C6FF5B5B5BF70F0F0F9800000037000000060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000E474747DDA3A3A3FFC8C8
          C8FF565656F60C0C0CA10000004B0000000F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002525255B6E6E6EF8BBBBBBFFE0E0
          E0FF838383FC222222C1000000640000001B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003F3F3FB0A3A3A3FFE6E6E6FFF9F9
          F9FFC6C6C6FF3D3D3DE20000006E0000001F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000001010102424242B4ACACACFFF2F2F2FFFDFD
          FDFFC1C1C1FF434343E50303036C0000001C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003838389DAFAFAFFFF2F2F2FFFAFA
          FAFFBFBFBFFF393939DB000000640000001A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000025252594B9B9B9FFF0F0F0FEF7F7
          F7FFC5C5C5FF252525C40000004A000000130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002626268B696969FF757575FA7676
          76FA6B6B6BFF2626269B00000018000000060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000050000001E00000038000000340000001F0000000D000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000400040630001927B7000B10A1000101860000006A000000470000002A0000
          0016000000090000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000014
          1E7D002132D1002D44FF002C43FF00283DF600121DCD000001950000007B0000
          005C0000003D000000220000000F000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF002D46FF002E47FF002C43FF013957FF00324CFF002B42FC001E2DE6000B
          11BB000101900000006E0000004A0000002E0000001B0000000B000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF002F4AFF002F4AFF002C43FF024569FF024264FF023F61FF013957FF0030
          49FF00263BF500151FD20002029B0000007F0000006400000043000000250000
          0010000000030000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF00304DFF00304DFF002C43FF044972FF04486FFF03476DFF02476CFF0343
          67FF023F60FF013754FF002E46FC002438F2000C11BF00000094000000710000
          003C0000000E0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF003351FF003250FF002C43FF054D7AFF064C78FF054B75FF044A73FF0549
          72FF04486FFF02476DFF024468FF023F61FF013958FF002C44FB00131DCD0000
          00660000001C0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF023658FF013555FF002C43FF074F80FF074F7FFF074F7DFF064D7BFF064B
          7AFF054B77FF054A74FF044874FF034872FF034771FF02466DFF00263BF50000
          0076000000220000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF02395DFF02385BFF002C43FF0A5389FF0A5287FF0A5384FF085282FF0850
          7FFF08507FFF074D7DFF074D79FF064C78FF064C77FF064B74FF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF033D64FF033C62FF002C43FF0D5892FF0C558FFF0C558CFF0A558AFF0B55
          88FF0A5485FF095184FF095181FF085080FF074F7DFF074F7BFF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF05426DFF05416AFF002C43FF0F5C9DFF0E5B9AFF0E5A97FF0E5995FF0C59
          93FF0C5890FF0C578DFF0B568CFF0A548AFF0A5388FF0A5384FF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF084A7AFF074877FF002C43FF1161A8FF1160A5FF115FA3FF115D9FFF0E5C
          9CFF0E5D9BFF0E5C98FF0D5A94FF0C5994FF0C5892FF0C568EFF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF0B5388FF0B5285FF002C43FF1467B1FF1466AFFF1465ADFF1463ACFF1161
          A8FF1261A6FF1161A3FF0F5F9FFF0E5E9EFF0E5D9CFF0E5C99FF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF105F9AFF0F5D96FF002C43FF186CBBFF176BB9FF1669B6FF1667B5FF1666
          B3FF1566B0FF1466ADFF1363A9FF1263A7FF1162A6FF1160A3FF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF156AA9FF1367A5FF002C43FF1A70C4FF1A70C2FF196EBFFF186DBEFF186B
          BCFF176BBAFF176BB7FF1569B3FF1468B1FF1467B0FF1465ADFF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF1A75B9FF1973B5FF002C43FF1C75CDFF071C31FFDC9D64FF909395FF427D
          B3FF1A70C3FF1970C2FF176FBEFF176DBCFF176CBBFF176AB7FF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF1D7FC5FF1D7CC1FF002C43FF217AD4FF05111EFFF5B36BFFFFB565FFCDA7
          7DFF1D76CDFF1D74CBFF1C74C9FF1A73C6FF1A72C5FF186FC2FF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF2085CDFF2083C8FF002C43FF247FDDFF124374FF856C51FFD7AF85FF9B9F
          A0FF207AD7FF2078D6FF1F79D3FF1E79D1FF1D77CFFF1B75CDFF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF2288D0FF2487CEFF002C43FF2884E4FF2273C7FF195592FF2782E2FF2481
          E1FF2380DFFF227EDDFF237EDBFF227DDAFF207DD8FF1E7BD6FF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF278AD0FF2A8BCFFF002C43FF2B89EBFF2A88EAFF2988E9FF2987E9FF2886
          E8FF2786E7FF2583E6FF2582E3FF2482E2FF2481E0FF2380DEFF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF308FCFFF3390CEFF002C43FF2E8EF1FF2E8EF0FF2D8EF1FF2D8EF0FF2C8B
          EDFF2A8BEDFF2A8BEEFF2989EBFF2987EAFF2887EAFF2784E7FF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF4196CEFF4597CEFF002C43FF3294F3FF3293F4FF3292F5FF3292F6FF2F91
          F4FF2E91F5FF2E90F4FF2D8EF3FF2D8EF2FF2B8CF1FF2A8AEEFF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF559CCDFF569DCCFF002C43FF3799F3FF3798F4FF3797F6FF3597F8FF3496
          F9FF3496F9FF3395F8FF3193F9FF3294F9FF3092F7FF2E90F5FF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF68A5CDFF69A4CDFF002C43FF3FA1F3FF3DA0F4FF3B9FF5FF399EF6FF399D
          F8FF399CF9FF379AF9FF369AFBFF3499FCFF3497FCFF3295FBFF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF7AABCCFF79ABCCFF002C43FF45A8F3FF44A8F4FF43A7F5FF40A4F6FF3FA2
          F8FF3EA3FAFF3BA2FAFF3B9FFAFF399DFBFF389CFCFF379BFCFF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF89B1CDFF88B1CDFF002C43FF47ABF3FF48ABF4FF48AAF6FF45A8F6FF44A8
          F8FF43A8FAFF41A7FAFF40A4FBFF3FA4FCFF3EA2FCFF3CA0FCFF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FF98B8CEFF97B7CDFF002C43FF48AAF3FF48AAF4FF47ABF6FF46AAF6FF46AB
          F8FF47ACFAFF44A9F9FF43AAFAFF44AAFCFF43A8FCFF41A8FCFF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000002C
          43FFA8BFCEFF89A6B8FF002C43FF4AABF1FF49ACF4FF47AAF6FF45ABF6FF47AD
          F8FF48ADF9FF44AAFAFF43A9FCFF45AAFCFF44A9FCFF45ABFCFF00293FFA0000
          0077000000230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000631
          48FF32586DFF133D53FF012E46FF256288FF3C7DA9FF2F75A5FF2773A6FF2D7D
          B1FF3286C1FF348CCDFF3894DBFF3C9AE6FF43A6F3FF47AAF9FF00293EF90000
          006D000000200000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000128
          3DDF042F45F2032E45F5012E45FA012C42FD002C43FE002C42FE002C43FF002B
          42FF012D44FF04334CFF073956FF0A3E5EFF0E4567FF114A6DFF00293FF60000
          0046000000140000000000000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000007
          0B29010D134301151F6C011E2C9F022537C4002537D000263AD8012B40E8012C
          43F6012D44FA012C43FB002C43FC002C42FD002C43FE002C43FE00263AE10000
          0013000000060000000000000102000001020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000001010400050719010B11390213
          1C610219247D011B288F001C2A9F001F2FB4001F30B6001F30B500151F770000
          0001000000000000000000000001000000010000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000080000001B0000001B0000
          0008000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000100170009007A000B00A40004008F0000
          004B0000000D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000012001D00AF2F6A35FF467F50FF063C09FA0008
          00B2000000530000000C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000E001800A71D6025FFD9EDDCFFF9FFFBFF73A57BFF0035
          00F8000800B10000004F0000000D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000D001800A225642CFFCFE7D3FFF0FEF2FFE5F8E8FFE3FBE7FF69A1
          73FF003803FA000800AF0000003A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0009001600A01B5C21FFC8E0CCFFF3FEF5FFE5F7E8FFDAF5E0FFD4F5DAFFCAF3
          D1FF63A56DFF002B04E70000004F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000080013
          00961E5F25FFCAE0CDFFF7FFF8FFE8F8EBFFDEF6E4FFD5F4DBFFC9F1D1FFBDF0
          C7FFAFEFBAFF07380EEB00000058000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000005001200931658
          1CFFB9D5BEFFF9FFFBFFEAF9EDFFE2F8E6FFDAF5DFFFCEF2D4FFC1EFC8FFB4ED
          BCFFA4EAAFFF073C0FEF00000066000000060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000004000E008713571CFFBCD6
          C0FFFAFFFBFFEBF9EDFFE5F8E7FFDBF6DFFFD2F4D7FFC7F1CDFFB9EEC2FFABEA
          B5FF99E6A7FF0C4614F50003007B0000000D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000F0084105216FFAACAB0FFF9FF
          FCFFEAF9ECFFE5F7E6FFDCF6E1FFD4F5D9FFCAF2D2FFBFEFC7FFB1EBBCFFA1E7
          AEFF92E2A0FF1A5C22FB00060091000000160000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000B00700B4E11FFA4C5A9FFF8FFFAFFE7F8
          EAFFE2F7E5FFDDF7E0FFD6F4DCFFD2F7D8FFC9F5D0FFB7EDC0FFAAE9B4FF9BE5
          A8FF8CE39CFF2F7B3BFF000900A60000001E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000008013C074B10F598BE9EFFF4FFF5FFE4F7E6FFDEF7
          E2FFDAF6DFFFD5F5D9FFD4F9DBFFB3E0BCFF9DD2A6FFAFECBBFFA1E8AFFF91E4
          A1FF86E497FF419850FF000D00BC000000340000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000016006069996FFFF3FFF6FFDEF5E1FFD9F4DDFFD5F4
          D9FFD0F3D7FFD3F8D9FFBDEAC6FF286932FF4F9059FFABEEB8FF9AE6AAFF8CE2
          9AFF81E490FF49A959FF001E00DA000000520000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000011024212521BF99AC6A0FFDDFCE1FFCCF1D3FFCAF1
          D0FFCBF6D1FFBAEAC3FF35753EFF002A00D5205C29EBA1EBAFFF93E6A2FF84E1
          95FF78E08BFF55BE67FF083F10F1000000750000000E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000001A0268105419FF96C89DFFCBF7D4FFC1F3
          C9FFB5E9BDFF3C7F46FF002200C70007013C07410FD47FCA8CFF8DE69DFF7DDF
          90FF6FDC84FF5ED172FF186523FF0003009B0000002200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000001A026B0E4F14F888C692FFB5F0
          BFFF3B8045FF002900D30000002C000000000026038D408D4DFF83E195FF76DE
          8AFF69DA7EFF60DD76FF258435FF001200C60000004500000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000190264145A1EFE337A
          3DFF012D04CD0001002D0000000000000000000F013A165921EE6ECE80FF72DF
          86FF64D979FF58D870FF3BAB4EFF013007EB0001007A00000013000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000E0136000F
          00420001001300000000000000000000000000010002002C05AE4EAB5EFF6BDE
          80FF5ED874FF52D46AFF48CF60FF11631EFF000C00B400000038000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000018026023732FFF60D6
          74FF57D66EFF4CD264FF44D25DFF299D3DFF002404E300000071000000140000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000060115013609C641AF
          54FF52D86AFF47D05FFF3FCF57FF35C24CFF0E5F1BFE000B00B7000000410000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000017035D1568
          22FE45C65DFF42D15AFF39CB52FF33CD4DFF23A037FF012F07EC000200860000
          0024000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000100020028
          04A2248A35FF3ED057FF34C94DFF2CC646FF29C743FF117320FF001702D10000
          0069000000140000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000000B
          022B04400EDB2DAD43FF30CC4AFF26C442FF22C43CFF1FB437FF085213FC000D
          01BE000000580000001000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000001502540B5816F728B540FF23C83EFF1CC036FF19C133FF18A52EFF0548
          0FF9000900B4000000520000000D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000001A036D0B5B17F620B639FF18C233FF13BC2DFF11BE2BFF13A0
          29FF05430EF6000901B100000054000000140000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000001A036E0A5B16F718AB30FF11C12DFF0BBA25FF0BBD
          25FF109C25FF05450EF8000A00BB000000630000001900000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000015025504440EDA118B25FF0FB82AFF06BB
          20FF04BA1FFF0DA324FF065512FD001402BD0001004200000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000008012101250594086015F60F99
          25FF09B523FF03C11EFF10AC27FF06360DD70002004E00000006000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000010002000E023A0126
          0696095D16EC098D1EFF0B821EFF032E0AB00004002E00000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          0003000B022D000F0240000F023E000901220001000600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000050000000E00000019000000230000002A0000002E0000002E0000
          002A00000023000000190000000E000000050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000080000
          001A000000320000004C0E0500721F0A00912B0E00A72B0E00AC1E0A00A20F05
          009000000076000000630000004C000000320000001A00000008000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000050000001700000037250D
          0087662200D68E3000F8A34618FFAD5C33FFB66D48FFB66D48FFAD5C33FFA346
          18FF8E2F00FA662200E3250D00B2000000830000006000000037000000170000
          0005000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000007000000252A0E0084802A00EBAB57
          2DFFCE9D84FFEFE0D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEFE0D8FFCE9D84FFAB572DFF802B00F32A0E00BE00000085000000560000
          0025000000070000000000000000000000000000000000000000000000000000
          00000000000000000000000000080301002D722600D7A54B1EFFD9B29FFFFFFF
          FFFFF8F1EEFFE6C9B7FFE3C2AAFFD8AA8AFFBE7340FFBF7441FFDAAF90FFE6C9
          B4FFECD7CBFFFBF8F6FFFFFFFFFFD9B29FFFA54B1EFF722600EC0301009C0000
          0064000000290000000800000000000000000000000000000000000000000000
          00000000000000000009080300387F2A00E5B8714EFFFAF5F3FFF9F2EFFFCA8E
          67FFAB5018FFC99273FFC38666FF9F3C06FFA13F07FFA24008FFA24008FFC68A
          68FFCD9777FFB5632BFFD9AE90FFFEFDFDFFFAF5F3FFB8714EFF7F2A00F30803
          00A5000000690000002C00000009000000000000000000000000000000000000
          00000000000607020032812B00E8C89175FFFFFFFFFFD8AF96FFA64912FF9D39
          04FFB76D44FFD7AD94FFA6460CFFA8480DFFA94B0EFFAB4D10FFAC4E11FFAC4E
          11FFDAB297FFBD764AFFA7470CFFB86732FFEBD6CAFFFFFFFFFFC89175FF812B
          00F4070300A60000006800000028000000060000000000000000000000000000
          00010401001F802B00E4BD7B5AFFFDFCFBFFC58763FF9C3803FFA84E1BFFBF7C
          54FFEBD4C7FFDFBCA5FFDEB9A0FFE0BDA5FFE5C7B2FFE5C8B2FFE2BFA7FFE1BD
          A2FFE3C1A8FFEDD8C9FFC8885CFFB35E26FFB0581EFFDFBCA7FFFFFFFFFFBD7B
          5AFF802B00F40401009F0000005A0000001A0000000100000000000000000000
          000A6A2300C3AD5C33FFFBF8F6FFC78C6AFFA34414FFCD997BFFDAB199FFDCB6
          9DFFE7CCB9FFC27B4AFFB76325FFB86221FFB8611CFFBA631DFFBE6A26FFC06F
          2CFFCC8953FFEBD2BDFFE2BFA3FFE1BC9FFFD6A683FFB7662FFFE4C9B9FFFBF8
          F6FFAD5C33FF6A2300E8000000890000003D0000000A00000000000000011908
          00439A3503FFECD9CFFFD6AC97FFBD7955FFDBB6A0FFC3835BFFB15A22FFD6A7
          87FFCE946AFFB75E1AFFBA641EFFBB7431FFB98548FFBD7F3CFFC47228FFC472
          26FFC47226FFD9A474FFE0B68FFFC57834FFD39969FFE4C2A7FFD29D77FFF1E4
          DEFFECD9CFFF9A3503FF190900B6000000670000001F00000001000000077527
          00D0BD7B5AFFF4E9E4FFCF9E83FFCB9476FFAA4E16FFAA4C0FFFB25A1DFFDEB6
          99FFC8844EFFBE6921FFBF7935FFB6A472FFB2B78DFFB6B080FFC58F4AFFCD7E
          2EFFCD7F2EFFD89B5BFFE8C5A1FFCC7F33FFC77528FFC6762EFFDAAC84FFE6CB
          B8FFFFFEFEFFBE7D5DFF752700EE000000880000003800000007160700339432
          00FAE7CEC1FFE1C3B3FFBC7853FFA5440AFFAA4B0FFFAF5314FFC0753DFFE0B9
          99FFC57835FFC47226FFC08F4EFFB4BA8FFFB6BC8FFFB6C094FFC4A769FFD489
          35FFD48A36FFD89346FFEBC9A4FFD99954FFCF8230FFCC7D2DFFC77729FFD8A4
          79FFF6ECE8FFE6CBBFFF943200FD160700AC00000052000000124015007BA041
          12FFF4E8E2FFC48664FFA24008FFA8490EFFAE5112FFB45A18FFCB8A55FFE3BD
          9CFFC57428FFCA7A2BFFC98F46FFBBB784FFB8C397FFBCC190FFCBA55EFFD992
          3BFFD9933CFFD9923CFFEECEA7FFE1AB6BFFD78E39FFD48936FFD18432FFCA7B
          2CFFEBD6C8FFFEFDFCFFA04112FF3F1500CF0000006A0000001C732700C9BC79
          57FFE4C8BAFFA0400DFFA6460BFFAB4D10FFB15716FFB8601BFFD39968FFE4BE
          9BFFC9792BFFCF8130FFD28937FFCD9E53FFC7AF6FFFCEA961FFD89A44FFDB99
          41FFDB9942FFDB9942FFEECFA7FFE6B87EFFDA963FFFD9933CFFD78E39FFD388
          35FFDEB187FFFBF6F5FFBC7957FF732700ED0000007B000000258A2E00EBCE9D
          84FFD1A38CFFA03D08FFA8490DFFAE5112FFB45B18FFBB651EFFDAA97DFFE8C5
          A5FFDEAB75FFEAC79FFFF2DBBFFFF4E0C7FFF8ECDCFFF8EDDDFFF5E3CAFFF3E0
          C4FFEED1AAFFE7BF87FFEFD6B2FFE9C591FFDB9B45FFDB9941FFDA963FFFD892
          3BFFDCA86FFFFAF5F2FFCE9D84FF8B2E00F9000000850000002B943200F8D7B0
          9CFFC58B6EFFA13F08FFA94B0EFFB05414FFB75E1AFFD39968FFF0DBC7FFF5E5
          D5FFEBCAA6FFE2AF74FFDD9F52FFDC9E4DFFDB9C46FFD99F4BFFDBA85AFFDCAD
          65FFE3C088FFEED8B5FFF7EDDDFFF5E7D1FFE6BF85FFDA9E48FFDC9B44FFDB97
          40FFDFA867FFFBF6F4FFD7B09CFF953200FD000000890000002C973200FCDBB7
          A5FFC3886AFFA24109FFAA4C0FFFB9672CFFE1BC9FFFE2BC9BFFE7C5A5FFE2B4
          85FFD38936FFD7913BFFD99740FFD99D48FFD8A04EFFD3AA5EFFCCB573FFCFB2
          6DFFD2AD64FFD2AD63FFE5CEA2FFEDDBBAFFECD6B2FFEFD8B5FFDFA85BFFDC9B
          44FFE3AE69FFFCF9F8FFDBB7A5FF973300FE000000850000002B933100F7D6AD
          99FFC79074FFA2410AFFBA6D3BFFE3C1A9FFCE9160FFC27027FFDEB081FFE4B8
          88FFD48D38FFD8943EFFDA9A45FFD9A04CFFD5A95CFFB8D5AEFF9FF9F3FFB0E2
          C8FFCBBC7FFFCCB878FFE2D5AEFFE3D1A8FFD3AF65FFE2C18AFFF1DDBEFFE1B0
          6AFFE4B678FFFEFDFCFFD5AB96FF943200FD0000007B00000025892E00E8C993
          78FFD6AD98FFB26337FFDDB69EFFBB6B32FFBA631DFFC16E24FFDEAD7CFFE6BE
          94FFD58E3AFFD89742FFD89E4BFFD7A556FFD2AE65FFB8D6B2FFA5F7EFFFB4E6
          CDFFC9CB9BFFCAC895FFE3E0C4FFDED6B2FFCEB473FFD2AE64FFDBB16CFFF0D9
          B7FFEDD1A8FFFFFEFEFFC89175FF892D00F60000006A0000001C702500BFB66D
          48FFE9D5CAFFD4A790FFB45F2AFFB15615FFB9621CFFC16E24FFDAA570FFE9C7
          A1FFD6903CFFD89844FFD8A04EFFD5A95CFFD1B26DFFCCC088FFC7D0A6FFCCD6
          B1FFCFD9B6FFCDD8B6FFE7EAD8FFDBDABAFFCBBE84FFCFB470FFD3AB5FFFDCAE
          66FFF9F1E6FFFFFFFFFFB66D48FF702500E400000052000000123D1400699D3A
          09FFF5EBE5FFC28462FFA6470CFFB05514FFB8611CFFC16D23FFD69A60FFEAC9
          A4FFD5913EFFD79946FFD7A251FFD4AD63FFD0B979FFCEC795FFD1D7B3FFD8E4
          CBFFDDEAD7FFDBE9D6FFEBF2E6FFD9DFC3FFCAC694FFCDB97AFFD1AE65FFD8AC
          62FFFDFDFDFFFCF9F7FF9D3A09FF3D1400B70000003700000007160700259331
          00F6DAB5A2FFD6AD99FFA74A15FFAE5112FFB65E1AFFBF6A22FFD08E4DFFE9C8
          A3FFD8994EFFD79A46FFD6A454FFD3B068FFD0BD82FFD1CFA3FFDAE2C7FFE7F0
          E2FFF0F7F0FFEFF6EFFFF1F6EFFFD9E3CBFFCBCDA0FFCCBD81FFD0B16BFFE6D2
          AAFFFFFFFFFFDAB6A3FF923100FB1507007C0000001E00000001000000006C24
          00B8AB572DFFFBF8F6FFB76E46FFAB4D10FFB55B19FFBD6720FFC77A31FFEED5
          BAFFEACAA2FFEBCEA7FFEEDABAFFF0E4CCFFF1EBD9FFF2F1E4FFF4F6EEFFF9FB
          F8FFFEFEFEFFFCFDFCFFF5FAF4FFD8E3C9FFCDCFA4FFCDBE84FFD3B979FFF9FA
          F6FFFFFFFFFFAB572DFF6D2400DD0000003D0000000A00000000000000001708
          0027933100F6D6AD99FFE8D1C5FFB15F2EFFB15615FFC67D43FFE3BE9CFFF3E2
          D1FFEED6BAFFDEAF70FFDAAD66FFD4AF67FFD2BC81FFD4CFA4FFE1E6CEFFF2F6
          EDFFFBFDFBFFFCFEFCFFFAFBF8FFE7ECDBFFCFCDA1FFCEBF85FFECE8D3FFFFFF
          FFFFD6AD99FF933100FB170800730000001A0000000100000000000000000000
          0000591E00979F3F0FFFEEDDD5FFE1C2B3FFB76A3AFFD6A47FFFD19562FFD397
          5CFFE9C8A4FFD5974AFFD59D4DFFD4A95FFFD3B676FFD3C693FFDAD9B7FFE3E7
          D2FFEBF0E3FFF5F7F0FFEAEFDFFFE6E7D3FFE4E0C4FFE4DFC2FFFFFFFFFFEEDD
          D5FF9F3F0FFF5A1E00C000000028000000060000000000000000000000000000
          000004010006782800CAA75024FFF8F1EDFFE3C7B9FFBD7547FFB75F1BFFC271
          27FFE9C9A9FFDBA465FFD39646FFD4A255FFD4AE67FFD3BC7EFFD5C999FFD9D5
          AFFFE3E3C9FFF0F0E2FFD5D3ABFFD2C999FFEAEAD8FFFEFFFFFFF8F1EDFFA750
          24FF782800DF0401003100000009000000000000000000000000000000000000
          0000000000000702000B7D2A00D2AD5C33FFF5ECE7FFF1E3DCFFCF9A7BFFBE71
          35FFCF9159FFE8C8A7FFCF8E3FFFD3994AFFD3A457FFD2AE69FFD3B879FFD4C0
          88FFECE7D0FFDCD2A9FFDAD2A9FFF2F2E7FFFFFFFFFFF5ECE7FFAD5C33FF7E2A
          00E3070200320000000800000000000000000000000000000000000000000000
          0000000000000000000001000002782800CAA4491BFFE2C5B7FFFFFFFFFFEEDD
          D4FFD8AB8BFFE4C2A6FFE0B88EFFCD8B3EFFD09649FFD3A155FFD3A860FFE8D6
          B5FFEFE7D3FFF1F0E3FFFFFFFFFFFFFFFFFFE2C5B7FFA4491BFF782800DB0100
          0027000000070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000030100055E1F009E953200F8B66D48FFECD9
          CFFFFFFFFFFFF8F1EFFFF9F4F1FFF8F3F0FFF2E9E0FFF7F4F0FFFCFCFCFFFDFE
          FEFFFFFEFEFFFFFFFFFFECD9CFFFB66D48FF943100FA5D1F00B10301001B0000
          0005000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B040013702600BD9432
          00F9AB572DFFCB987EFFE8D0C4FFEEDDD4FFFEFDFCFFFEFDFCFFEEDDD4FFE8D0
          C4FFCB987EFFAB572DFF953200FA702600C80B04002A01010109000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000D04
          00164116006F752700C7903000F2973200FB993300FF993300FF973200FB9131
          00F3762700CC4116007A0D040022000000050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000020000000B0000001800000022000000280000
          002700000022000000190000000B000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000006000000230002004F00090081000E009F001200B0001300B60011
          00B1000C00A400050088000000630000003C0000001B00000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030001
          0027020D0078001E00C10A3B01ED2C6420FC3D7632FF437C38FF487F3DFF4178
          36FF3A702DFF1A4E0FF8002700E5011400C002050089000000490000001A0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000009010700560423
          00C01D5710FA619E5DFF8BC28CFFB3E7BAFFC6F5CEFFCEFAD7FFD3FDDCFFCDF7
          D4FFC6F1CDFFA6D4A8FF7DAF79FF3F7834FF073200EE011200BE000100760000
          002E000000050000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000100120212007C154A07EE5C9D
          58FFACE8B3FFC1F8CBFFC3F8CEFFBFF4C9FFC0F3C8FFC4F8CDFFC4F7CEFFC3F4
          CCFFC4F2CCFFCAF7D2FFCDFAD5FFC4F3CCFF8EC58FFF326D28FF042500E10105
          00930000003B0000000800000000000000000000000000000000000000000000
          00000000000000000000000000000001000C0318008A235E18F788CD8CFFB8F9
          C3FFB3F2BCFFB1EFBAFFB3EFBCFFB9F5C4FFABE6B2FF87C288FF88C389FFAAE3
          B1FFBEF6C8FFBAF0C2FFB9EFC1FFBBF0C3FFC3F7CCFFB7EDBFFF508C49FF062D
          00E8010600980000003900000004000000000000000000000000000000000000
          00000000000000000000000000030315007628671DF993DF9AFFABF4B7FFA3ED
          AEFFA5ECB0FFA7EDB1FFABF1B7FF78B877FF266114FF144F00FF145000FF215D
          0EFF6BA967FFB2F1BCFFB1EEBAFFB1EEBBFFB1EEBBFFB5F2C0FFB7F4C2FF5D9E
          59FF062B00E70104008D00000028000000010000000000000000000000000000
          00000000000000000000020C0045134B07EB7CCE83FF9DEFA9FF97E9A3FF98EA
          A4FF99E9A4FF9EEEAAFF83CE88FF155002FF124D00FF144F00FF144F00FF134E
          00FF0F4900FF7DC180FFA9F0B5FFA5ECB0FFA6EDB1FFA6ECB1FFA9EFB4FFABF1
          B6FF418239FF021D00D700000066000000110000000000000000000000000000
          0000000000000001000C062800AF499847FF92EF9FFF8BE798FF8BE798FF8CE6
          99FF8CE898FF92ED9FFF59A457FF104900FF155000FF155000FF155000FF1550
          00FF104A00FF4C9145FF9EF2ABFF98EAA4FF99EAA6FF9BEAA7FF9BEAA7FFA1F0
          AEFF8AD993FF1B540FFB010C00AE000000380000000000000000000000000000
          000000000000030D00501D5C11F772D57EFF80E68EFF7DE28BFF7EE28CFF7EE3
          8BFF7EE48DFF82E891FF60B964FF134B00FF144D00FF155000FF155000FF144E
          00FF104800FF5AAB5BFF8DED9DFF8BE799FF8DE79AFF8EE79CFF8FE79EFF8EE8
          9CFF97F0A7FF4E9B4CFF062800E10001006A0000000D00000000000000000000
          000000000004092C00A63D923AFF75E585FF6FDD7EFF70DE7FFF6FDE7FFF71DF
          80FF71E080FF70E180FF72E182FF3D8E38FF175303FF104600FF0F4400FF1651
          02FF398832FF78E186FF7AE589FF7CE58AFF7DE58CFF7FE58EFF82E591FF81E4
          91FF84E894FF76D581FF114802FA020A009D0000002400000000000000000000
          0000010500220E4000D84FBE57FF61DB71FF61D870FF62D971FF62DA71FF63DA
          74FF64DB74FF63DB73FF65DE75FF69E37BFF57C561FF43A445FF41A143FF55C2
          5FFF6DE77FFF6DE67FFF6BE27CFF6DE17EFF6DE27EFF6FE180FF71E281FF73E3
          84FF77E488FF76E387FF2F7A27FF041800C30000003B00000001000000000000
          00000412004B175707FB4FCD5CFF52D362FF52D360FF52D262FF52D462FF54D7
          64FF56D766FF56D767FF56D968FF55D465FF3D9E3DFF308429FF30862AFF3187
          2BFF3A9939FF4ABB54FF5ADC6DFF5DE271FF5DDE70FF5FDE72FF62E073FF64E0
          75FF65E077FF6BE77EFF3D993EFF042300DC0000005000000004000000000000
          0000061B006A1E6D15FF43CB52FF44CE54FF44CD54FF45CF55FF45CF56FF47D1
          56FF48D258FF48D259FF4AD55CFF47CB56FF1B610EFF114800FF134C00FF134C
          00FF114900FF134C01FF257419FF44BF4FFF51DF67FF50DA64FF53DD66FF56DD
          68FF55DC6AFF5CE672FF3FAA44FF093100ED0001006400000008000000000000
          00000720007A1E7618FF38C948FF39C94BFF3BC94CFF3AC94BFF3BCA4BFF3CCC
          4BFF3CCD4DFF3ECC4FFF40CF52FF3DC74BFF1C650DFF144C00FF155000FF1550
          00FF155000FF155000FF114800FF185907FF39B543FF49DC5DFF48D85BFF49D8
          5EFF49D95FFF4EE265FF3CB143FF0E3E00F40003006E0000000A000000000000
          00000720007B1B7415FF2FC33FFF2FC43FFF32C542FF30C340FF31C541FF33C6
          43FF33C744FF34C845FF36CB47FF33C342FF1A620BFF144A00FF154F00FF1550
          00FF155000FF155000FF155000FF124900FF1C6710FF3BCE4FFF3FD553FF3ED5
          52FF41D654FF44DE5BFF34AE3DFF0E3E00F30103006900000007000000000000
          0000071D006B176A0EFF28BB35FF29BE36FF29C038FF29C039FF2AC03BFF2CC3
          3DFF2CC53DFF2CC53FFF2DC840FF2CC13CFF1C6F11FF175D07FF165603FF144E
          00FF155000FF155000FF155000FF155000FF134A00FF2CAC36FF36D24DFF37D1
          4BFF37D14BFF3BDC53FF2CA532FF0C3500EB0001005300000003000000000000
          00000515004D135805FB21B52EFF22BA31FF22BB31FF23BC32FF25BC33FF23B6
          32FF24B731FF24B731FF26B834FF26B734FF27B634FF2AC83DFF26B031FF1760
          08FF154E00FF155000FF155000FF155000FF144B00FF239223FF30D146FF30CE
          44FF31CF46FF34D74BFF239426FF082600D60000003900000000000000000000
          0000030B0024104100DC1CA323FF1EB62BFF1EB52CFF1FB82DFF1FAF2AFF1766
          0AFF165A05FF165D05FF175D06FF175D06FF175F07FF21AC2CFF26CD3CFF1A7B
          14FF144C00FF155000FF155000FF155000FF144C00FF209121FF2BCD40FF2ACA
          3EFF2CCC3FFF2DCD40FF1A7614FF061B00B80000002000000000000000000000
          0000000100050B3000AB168014FF1BB629FF1CB228FF1BB52AFF1CB229FF176A
          0CFF154800FF154D00FF154D00FF154D00FF154B00FF196E0DFF1C881AFF1657
          03FF154F00FF155000FF155000FF155000FF144B00FF209E26FF26CA3CFF27C7
          3AFF28CA3CFF26BF37FF135003FC030C007E0000000900000000000000000000
          00000000000006190059125D06FB16AA23FF18B024FF18B026FF1AB729FF1986
          16FF154A00FF155000FF155000FF155000FF155000FF154C00FF144800FF154F
          00FF155000FF155000FF155000FF154E00FF165603FF22B830FF25C738FF24C6
          36FF26CC3CFF1E9220FF0B2F00D70002003B0000000000000000000000000000
          000000000000010500100D3600BD138413FF15AE22FF15AA22FF16AF24FF17A8
          22FF156308FF154D00FF155000FF155000FF155000FF155000FF155000FF1550
          00FF155000FF155000FF154F00FF154A00FF1B8719FF21C232FF22C133FF23C6
          36FF22BB31FF145A07FF041100870000000C0000000000000000000000000000
          000000000000000000000515004A114F02F2139A19FF13A71FFF13A61FFF16AC
          23FF159B1CFF155B04FF154A00FF154E00FF155000FF155000FF155000FF1550
          00FF154F00FF154C00FF154C00FF197C13FF1EBA2EFF1FBD30FF1FBE30FF21C4
          33FF187D14FF0A2800C400010028000000000000000000000000000000000000
          000000000000000000000000000109220079126007FD119F1BFF13A41DFF14A4
          1DFF14AA1FFF14A01CFF14710CFF155903FF154B00FF154B00FF154B00FF154A
          00FF154E00FF166308FF198B18FF1CB72AFF1DB72BFF1DB82DFF1EBE30FF1A91
          1CFF0E3A00E30207004C00000000000000000000000000000000000000000000
          00000000000000000000000000000103000B0928008D125E06FB129618FF11A3
          1BFF12A21BFF12A51DFF13A71FFF149A1AFF148F17FF158012FF168012FF1686
          14FF17981CFF18AA23FF1AB628FF1AB227FF1BB62AFF1BB62BFF188718FF0E41
          01E7030D005A0000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000002000608210075114F02F4117E
          0FFF109B18FF11A01BFF12A11CFF13A51DFF13A71EFF14A81FFF15A920FF15AB
          21FF15AD21FF16AC21FF17AE23FF17B125FF179C1DFF146D0CFF0D3400CF020A
          0049000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001061800510E37
          00C1115D05FD117C0FFF109316FF119F19FF11A01BFF12A31BFF12A61DFF12A6
          1EFF13A61DFF15A41DFF159118FF14710DFF114C02F108230098010500280000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000104
          000E061B00600D3400B5104500E6125F05FF116D09FF11770DFF11780EFF1174
          0DFF126808FF125102FA0E3E00D40A26009A0209003C00000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001030009030E0030071D0065092500890B2B00A00B2C00A50A28
          00990820007D0412004F0103001E000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000020000000B0000001800000022000000280000
          002700000022000000190000000B000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000006000000230002004F00090081000E009F001200B0001300B60011
          00B1000C00A400050088000000630000003C0000001B00000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030001
          0027020D0078001E00C10A3B01ED2C6420FC3D7632FF437C38FF487F3DFF4178
          36FF3A702DFF1A4E0FF8002700E5011400C002050089000000490000001A0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000009010700560423
          00C01D5710FA619E5DFF8BC28CFFB3E7BAFFC6F5CEFFCEFAD7FFD3FDDCFFCDF7
          D4FFC6F1CDFFA6D4A8FF7DAF79FF3F7834FF073200EE011200BE000100760000
          002E000000050000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000100120212007C154A07EE5C9D
          58FFACE8B3FFC1F8CBFFC3F8CEFFC0F4C9FFBFF2C6FFBEF2C6FFBEF1C7FFC1F2
          CAFFC4F2CDFFCAF7D2FFCDFAD5FFC4F3CCFF8EC58FFF326D28FF042500E10105
          00930000003B0000000800000000000000000000000000000000000000000000
          00000000000000000000000000000001000C0318008A235E18F788CD8CFFB8F9
          C3FFB3F2BCFFB1EFBAFFB2EEBBFFB4F0BEFFB6F1C0FFB6F1BFFFB8F2C2FFB9F2
          C3FFBAF1C3FFBAF0C3FFB9EFC1FFBBF0C3FFC3F7CCFFB7EDBFFF508C49FF062D
          00E8010600980000003900000004000000000000000000000000000000000000
          00000000000000000000000000030315007628671DF993DF9AFFABF4B7FFA3ED
          AEFFA5ECB0FFA6EDB1FFB1F8BDFF72B370FF165202FF215D0EFF215D0FFF215D
          0FFF1C5809FF5F9B59FFB8F6C2FFB1EEBBFFB1EEBBFFB5F2C0FFB7F4C2FF5D9E
          59FF062B00E70104008D00000028000000010000000000000000000000000000
          00000000000000000000020C0045134B07EB7CCE83FF9DEFA9FF97E9A3FF98EA
          A4FF99E9A4FF9BEBA6FFA6F6B3FF65AB64FF094200FF144E00FF134E00FF134E
          00FF0E4900FF52924BFFADF4B9FFA5ECB0FFA6EDB1FFA6ECB1FFA9EFB4FFABF1
          B6FF418239FF021D00D700000066000000110000000000000000000000000000
          0000000000000001000C062800AF499847FF92EF9FFF8BE798FF8BE798FF8CE6
          99FF8CE898FF8DE899FF96F1A5FF5DAA5CFF0C4400FF155000FF155000FF1550
          00FF114B00FF4D9347FF9EF2ABFF98EAA4FF99EAA6FF9BEAA7FF9BEAA7FFA1F0
          AEFF8AD993FF1B540FFB010C00AE000000380000000000000000000000000000
          000000000000030D00501D5C11F772D57EFF80E68EFF7DE28BFF7EE28CFF7EE3
          8BFF7EE48DFF7FE48DFF87EE98FF55A855FF0D4400FF155000FF155000FF1550
          00FF114B00FF479141FF8EEF9FFF8BE799FF8DE79AFF8EE79CFF8FE79EFF8EE8
          9CFF97F0A7FF4E9B4CFF062800E10001006A0000000D00000000000000000000
          000000000004092C00A63D923AFF75E585FF6FDD7EFF70DE7FFF6FDE7FFF71DF
          80FF71E080FF70E07FFF79EB8AFF4CA64EFF0E4500FF155000FF155000FF1550
          00FF124B00FF40903BFF7FEC90FF7CE58AFF7DE58CFF7FE58EFF82E591FF81E4
          91FF84E894FF76D581FF114802FA020A009D0000002400000000000000000000
          0000010500220E4000D84FBE57FF61DB71FF61D870FF62D971FF62DA71FF63DA
          74FF64DB74FF63DB73FF69E67DFF44A446FF0F4500FF155000FF155000FF1550
          00FF124B00FF398E34FF6FE881FF6DE17EFF6DE27EFF6FE180FF71E281FF73E3
          84FF77E488FF76E387FF2F7A27FF041800C30000003B00000001000000000000
          00000412004B175707FB4FCD5CFF52D362FF52D360FF52D262FF52D462FF54D7
          64FF56D766FF56D767FF5AE16EFF3CA13EFF104500FF155000FF155000FF1550
          00FF134B00FF338C2FFF5EE374FF5BDE6EFF5EDE71FF5FDE72FF62E073FF64E0
          75FF65E077FF6BE77EFF3D993EFF042300DC0000005000000004000000000000
          0000061B006A1E6D15FF43CB52FF44CE54FF44CD54FF45CF55FF45CF56FF47D1
          56FF48D258FF48D259FF4DDB61FF349E37FF114600FF155000FF155000FF1550
          00FF134B00FF2D8B29FF50DF66FF4ED862FF50DA62FF50DA64FF53DD66FF56DD
          68FF55DC6AFF5CE672FF3FAA44FF093100ED0001006400000008000000000000
          00000720007A1E7618FF38C948FF39C94BFF3BC94CFF3AC94BFF3BCA4BFF3CCC
          4BFF3CCD4DFF3ECC4FFF42D656FF2E9B2FFF124600FF155000FF155000FF1550
          00FF134C00FF298926FF45DA5BFF43D457FF44D458FF47D75AFF47D85BFF49D8
          5EFF49D95FFF4EE265FF3CB143FF0E3E00F40003006E0000000A000000000000
          00000720007B1B7415FF2FC33FFF2FC43FFF32C542FF30C340FF31C541FF33C6
          43FF33C744FF34C845FF37D14BFF289829FF134700FF155000FF155000FF1550
          00FF144C00FF248721FF3BD752FF39D04EFF3BD14FFF3CD352FF3ED352FF3ED5
          52FF41D654FF44DE5BFF34AE3DFF0E3E00F30103006900000007000000000000
          0000071D006B176A0EFF28BB35FF29BE36FF29C038FF29C039FF2AC03BFF2CC0
          3CFF2CC33CFF2CC33EFF2ECC42FF239525FF134700FF155000FF155000FF1550
          00FF144C00FF22851EFF36D34AFF34CE47FF35CE48FF35CF4AFF35CF4AFF37D1
          4BFF37D14BFF3BDC53FF2CA532FF0C3500EB0001005300000003000000000000
          00000515004D135805FB21B52EFF22BA31FF22BB31FF23BC32FF25BD34FF24BE
          36FF25BF36FF26BF36FF28C93CFF209022FF124000FF144A00FF144A00FF144A
          00FF134500FF1E7F1AFF2FD044FF2ECB41FF30CC42FF2FCC42FF2FCD44FF30CE
          44FF31CF46FF34D74BFF239426FF082600D60000003900000000000000000000
          0000030B0024104100DC1CA323FF1EB62BFF1EB52CFF1FB72CFF20B82EFF21B9
          30FF20BA31FF20BB30FF22BE33FF22B530FF21AC2BFF22AC2CFF20A82BFF20AB
          2BFF23B22FFF25B934FF28C839FF27C73AFF29C83BFF29C93DFF2AC93EFF2ACA
          3EFF2CCC3FFF2DCD40FF1A7614FF061B00B80000002000000000000000000000
          0000000100050B3000AB168014FF1BB629FF1CB228FF1BB42AFF1CB42AFF1EB5
          2CFF1EB62CFF1EB82CFF20BA2DFF20BE30FF1FA927FF1B7D15FF19710FFF1A77
          11FF1F9922FF24C437FF25C336FF25C337FF26C638FF26C638FF26C63AFF27C7
          3AFF28CA3CFF26BF37FF135003FC030C007E0000000900000000000000000000
          00000000000006190059125D06FB16AA23FF18B024FF18B026FF19B127FF1BB2
          29FF1BB329FF1CB42AFF1DB92DFF1CA123FF155703FF144800FF144B00FF144A
          00FF144A00FF1B8B1AFF21C434FF22C035FF22C135FF23C335FF25C537FF24C6
          36FF26CC3CFF1E9220FF0B2F00D70002003B0000000000000000000000000000
          000000000000010500100D3600BD138413FF15AE22FF15AA22FF16AD23FF17AE
          24FF18AF24FF18B127FF1AB62AFF187D13FF154800FF155000FF155000FF1550
          00FF154B00FF176108FF1FB82DFF20BE31FF21BE31FF20BE30FF21C033FF23C6
          36FF22BB31FF145A07FF041100870000000C0000000000000000000000000000
          000000000000000000000515004A114F02F2139A19FF13A71FFF13A61FFF16A9
          22FF15AA21FF16AD23FF17B125FF167B11FF154900FF155000FF155000FF1550
          00FF154C00FF166107FF1DB52AFF1EBA2DFF1FB92EFF1FBB30FF1FBE30FF21C4
          33FF187D14FF0A2800C400010028000000000000000000000000000000000000
          000000000000000000000000000109220079126007FD119F1BFF13A41DFF14A4
          1DFF14A61EFF14A71FFF15AD22FF16971AFF155202FF154B00FF154E00FF154D
          00FF154A00FF188215FF1CB92BFF1CB529FF1DB52BFF1DB82DFF1EBE30FF1A91
          1CFF0E3A00E30207004C00000000000000000000000000000000000000000000
          00000000000000000000000000000103000B0928008D125E06FB129618FF11A3
          1BFF12A21BFF12A31CFF13A51EFF14A81FFF149219FF156F0CFF156408FF1568
          09FF178916FF18AF25FF1AB026FF1AB227FF1BB62AFF1BB62BFF188718FF0E41
          01E7030D005A0000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000002000608210075114F02F4117E
          0FFF109B18FF11A01BFF12A01CFF13A31CFF13A61EFF14A71FFF15A71FFF15A8
          20FF15AD21FF16AB21FF17AE23FF17B125FF179C1DFF146D0CFF0D3400CF020A
          0049000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001061800510E37
          00C1115D05FD117C0FFF109316FF119F19FF11A01BFF12A31BFF12A61DFF12A6
          1EFF13A61DFF15A41DFF159118FF14710DFF114C02F108230098010500280000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000104
          000E061B00600D3400B5104500E6125F05FF116D09FF11770DFF11780EFF1174
          0DFF126808FF125102FA0E3E00D40A26009A0209003C00000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001030009030E0030071D0065092500890B2B00A00B2C00A50A28
          00990820007D0412004F0103001E000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000B0000001D0000002B0000
          00230000000F0000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000005000000150000003300000052000000630000
          0057000000370000001800000006000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000070000001E0000004200000064002030A2000D138E0000
          00790000006600000046000000230000000B0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000A000000240000004C001A2792005987EF00669AFF006090F70020
          30A80000007D0000006F000000530000002F0000001200000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000D0000002A00000052003A56C101679AFF03689CFF608CADFF8F9FB6FF106C
          9DFF003F60CF0006098600000076000000600000003D0000001B000000070000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020000000E0000
          002F00060A63004C73DC046A9CFF0B6FA1FF0B6EA1FFEFC6C9FFFFCCCCFFDFC1
          C7FF307AA4FF00537DE700131D980000007B0000006A0000004A000000260000
          000D000000020000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000000E0000002F000D
          137000537EE50C72A2FF0C70A2FF217FAFFF1C76A5FFFFCCCCFFFFCDCDFFFFCD
          CDFFFFD1D1FF7096B3FF00669AFF002D44B80000007D00000072000000580000
          0034000000140000000400000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000E0000002F00131D7A0060
          91F60B71A2FF0F73A3FF217FB0FF3B92C0FF4287AFFFFFCDCDFFFFCECEFFFFCE
          CEFFFFCFCFFFFFD3D3FFAFB4C5FF106D9EFF00466AD700060A87000000790000
          0063000000410000001E00000009000000010000000000000000000000000000
          00000000000000000000000000020000000E0000002F00131D7A006091F61379
          A6FF0F73A4FF227FB0FF3B92C0FF51A3CEFF2A86B5FFEFC9CDFFFFCECEFFFFCF
          CFFFFFCFCFFFFFD1D1FFFFD2D2FFDFCDD3FF307CA7FF006090F7001A27A00000
          007C0000006D0000004F0000002B0000000F0000000300000000000000000000
          000000000000000000020000000E0000002F00131D7A006091F61A80ABFF0F72
          A3FF227FB0FF3B92C0FF52A3CFFF65B1DBFF6DB8E1FF287FADFFBFB8C5FFFFD2
          D2FFFFD1D1FFFFD0D0FFFFD4D4FFFFD3D3FFFFDCDCFF6094B5FF00669AFF0033
          4EC00000007E000000750000005B000000370000001800000006000000000000
          0000000000020000000E0000002F00131D7A006091F6197FAAFF0F72A3FF2280
          B0FF3C92C0FF52A3CFFF65B1DBFF75BDE5FF82C7EEFF8DCFF5FF4B9ECAFF7098
          B5FFFFD7D7FFFFD1D1FFFFD4D4FFFFD2D2FFFFD4D4FFFFD9D9FF9FB6C9FF106E
          9FFF00537DE7000D138F0000007900000066000000440000001D000000000000
          00010000000C0000002E00131D7A006091F6187EAAFF0E72A3FF2380B0FF3C93
          C1FF52A3CFFF65B1DBFF73BBE2FF7BBCE1FF7DB8DAFF84BDDEFF8BC4E4FF6DB1
          D7FF438BB3FFCFC7D1FFFFD6D6FFFFD4D4FFFFD5D5FFFFD9D9FFFFD6D6FFCFCD
          D7FF307FA9FF006090F7002030A80000007A0000005D0000002D000000000000
          00040000002100131D74006091F6187EAAFF0E72A3FF2380B1FF3C93C1FF52A3
          CFFF61AAD2FF6587A2FF65535CFF673A3CFF673333FF673333FF673333FF6A42
          46FF686371FF337195FF80A2BCFFFFDFDFFFFFD4D4FFFFD6D6FFFFD7D7FFFFD8
          D8FFEFDADDFF5091B5FF00669AFF004060CB00060A580000001E000000000000
          000B00131D5B006091F6187EA9FF0E72A3FF2380B1FF3C93C1FF53A4CFFF5E9D
          C1FF634A52FF6E3A3AFF895555FFA77979FFB99292FFB78F8FFFAD8080FF9563
          63FF7D4949FF673333FF546175FF3F85ACFFBFC5D2FFFFDBDBFFFFD8D8FFFFD9
          D9FFFFDEDEFFFFDADAFF70A1BEFF00669AFF003956A80000000C000000000006
          0A1E005F91F3147AA7FF0E72A3FF2480B1FF3D93C1FF53A4CFFF5F9FC4FF6444
          4AFF7F4B4BFFB18686FFDCC7C7FFD4B9B9FFCDAFA9FFC9A8A0FFBB928EFFB080
          80FFA87777FF986464FF6E3A3AFF675C68FF3E90BCFF70A0BDFFEFDBDEFFFFD9
          D9FFFFDADAFFFFDDDDFF9FADC1FF004060C60000003100000009000000000026
          3A6903699CFF0E72A3FF2481B1FF3D93C1FF53A4CFFF66B2DCFF664F58FF804C
          4CFFC7A6A6FFE1CECCFFE9DBC8FFFAF6DAFFFFFEE0FFFFFEE1FFFFFEE2FFF5ED
          D5FFCBAAA1FFAA7676FF9E6B6BFF6B3737FF7D92A7FF76BEE6FF3486B1FFBFCC
          D9FFFFDBDBFFFFDEDEFF7095B3FF002031970000002F00000008000000000033
          4D84086C9FFF2481B1FF3D94C1FF53A4D0FF66B2DCFF70A0C0FF6C3838FFB486
          86FFC9A5A3FFF1E6D0FFFFFEE3FFFFFEE3FFF6F1D9FFFFFEE5FFFFFEE5FFFFFE
          E6FFFFFEE6FFE1CDBEFFAD7979FF905C5CFF6A4246FF9BD8FCFF93D4F9FF4599
          C6FF609CBCFFEFDBDFFF5086AAFF001927820000002400000005000000000033
          4D811274A6FF3D94C2FF53A4D0FF66B2DCFF76BEE6FF747C90FF885454FFB682
          82FFE5D0C1FFFFFEE6FFFFFEE6FFFFFEE7FFD9CBBAFFD9CBBBFFFFFEE9FFFFFE
          E9FFFFFEEAFFFFFEEAFFC59E9AFFAE7A7AFF6B3737FF92C0DFFF9DDBFFFF9DDB
          FFFF80C5ECFF2D85B3FF00669AFF303639640000000F0000000200000000001A
          2740086C9FFF54A4D0FF66B2DCFF76BEE6FF83C8EFFF705A63FF9A6666FFBC88
          88FFFFFEE9FFFFFEE9FFFFFEEAFFFFFEEAFFD9CBBDFFB3998FFFFFFEECFFFFFE
          EDFFFFFEEDFFFFFEEEFFE4D0C6FFB48080FF794545FF90B1CCFF9DDBFFFF9DDB
          FFFF9DDBFFFF62AFD9FF00669AFF00131D3A0000000200000000000000000000
          0000006090EF3990BFFF77BEE6FF84C8EFFF8ED0F5FF756571FF9D6969FFC28F
          8FFFFFFEECFFFFFEEDFFFFFEEDFFFFFEEEFF97736DFF845956FFFFFFF0FFFFFF
          F0FFFFFFF1FFFFFFF1FFEFE2D7FFB98585FF7A4747FF90B1CCFF9DDBFFFF93D4
          F9FF318BBAFF005A87E2001A2745000000010000000000000000000000000000
          000000131D30005987DF217EAFFF7CC2EAFF95D5FAFF808598FF895656FFC894
          94FFF9F5E7FFFFFFF0FFFFFFF1FFE3D9CDFF845957FFE3D9CFFFFFFFF3FFFFFF
          F4FFFFFFF4FFFFFFF5FFDCC2BDFFB88585FF673333FF96C6E6FF76BEE6FF1475
          A7FF00466AB500060A1400000000000000000000000000000000000000000000
          00000000000000060A100039568F096DA0FF4D9FCBFF96C6E5FF6D3939FFC08D
          8DFFDBBEB9FFFFFFF4FFF6F2E8FFAA8C88FFF6F2E9FFFFFFF6FFFFFFF7FFFFFF
          F7FFFFFFF8FFF9F5EFFFC99C9BFF956161FF755D66FF4FA1CDFF005F91F1002D
          4476000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000001A2740004C73BF1475A7FF4E586DFF824E
          4EFFD4A0A0FFDEC8C3FFFFFFF8FFFFFFF8FFFFFFF9FFFFFFF9FFFFFFFAFFFFFF
          FAFFF9F6F2FFC59E9DFFC8A3A3FF6D3939FF246187FF00537DD300131D350000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000263A600D537ADF6733
          33FFB07D7DFFE0ADADFFDEB4B3FFEBD4D2FFF4E7E5FFF3E6E4FFF2E5E4FFDEC1
          C0FFD6B5B5FFDCCBCBFF703F3FFF275373FF0039569600060A13000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000D0606206733
          33FFB37F7FFF8D5959FF9C6A6AFFCFA1A1FFEDBFBFFFF2C9C9FFE5C5C5FFE2CF
          CFFFAA8B8BFF613639FF204F70F1002030550000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004020
          209F673333FF542929CF3A3C4DDF504350FF744444FF794B4BFF84666AFF5A52
          60FF275373FF07496CC4000D1323000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000263A60005987DF1475A7FF4599C6FF0A6D
          A0FF00334D850000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000263A60004C73BF001A
          2740000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004000000210000
          003F000000400000003100000015000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000001600000049000000850000
          00A6000000A600000093000000730000004F0000002B00000011000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000002B0101058033336EDB1E1EA1FD1C1D
          BFFF3A3AC3FE4343A5F238385FD41B1B28B100000089000000700000004F0000
          00300000001E0000000A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000012F2F65B22A2AA7FA0000B4FF0E0EBDFF2D2E
          F7FF5B59FEFF5758FAFF6264E2FF4344CEFA424297EF3F3F68DC111319B30000
          008B0000007300000055000000380000001B0000000900000000000000000000
          00000000000000000000000000000000000000000000000000000000000D0000
          00310000003100000017171731460708A1FF0E10BCFF1817CFFF1817D7FF1919
          EAFE2625ECFE4344F3FD787AF8FD9C9DF9FDA9ADF7FF5959D6FF2655B0FE4181
          B3F5466189E02D3546BC12141995000000720000005C0000003D000000260000
          00160000000400000000000000000000000000000000000000001613114A1A17
          15A4000000A3000000811E1D32880202B5FF2120D9FF292AC3FF2323BFFF1E1F
          C0FE1F20C1FE2729D3FD2B30E4FD3D47EBFE6B7AF2FF777ADCFF2D7FD3FE5BDA
          F2FA63C2EDFB59A9D7FB3F82BAF3425B7FE5364357D20A0A0AA7000000890000
          006F0000004D0000002E00000013000000050000000000000000C09C7CF1D0A1
          71FFC4A07FFB7A6858E3594C4BDA0A0AC0FF3838FEFF595AFCFE4D4CF5FE2222
          C9FE2525ACFD2122ADFE0E1EC4FF1329DFFF3447F2FF4650E2FF1F76DAFE38C0
          F1FA60D1F3FA86E4F2FA9CE8F3FC88D3E7FE317CB3FF836051FD9F6751F77150
          50E1372A2BBB120F0F920000006C0000004C0000001E00000001C7976AFFE3AE
          68FFE4B16CFFE2AE6AFFB38B72FF1313BEFF5754FCFF7C7CFCFF7372FBFE2525
          D8FD2F2FB1FA2729B2FC0C20BCFF1028CFFF2035E9FF3543E6FF2B66C9FE349B
          E0FA33A9ECFA3EB1E8FD52B3D9FF91D0D8FF7F9DB6FFB8AC56FEF9E367FDDCBE
          70FEC0976EFD91665FF56B4C4DE4453838C10707075800000004C6986DFFE2B0
          69FFE6AF66FFE7B062FFBB8F68FF2825C3FF857EF8FF8E8DF2FF645EEFFF2B27
          DEFE2F2DC5FD2729B9FC0D23B9FF102BC9FF132EDEFF2236E7FF2265CFFE3893
          DEF92D86D3FC1B88D2FF39A8D5FF76CADBFF5190B9FFBD9936FEF7D73FFCF9EF
          72FDF9F994FDF8EFABFDECD9ABFEA27366FD756B6CB600000005C6976CFFE7B7
          70FFF0BE72FFF7C472FFBF9670FF4945C4FF928EFAFF6965F1FF3F39EDFF4C44
          E8FF5449E3FF3B36D8FF0C1FD8FF0D2ADAFF0E29DAFF0E21D8FF2268D7FE3199
          EDF9248CE3FD2585CDFF309CD4FF48B5DCFF3588BEFFB87F35FEF7BB23FCF9C7
          45FDF4C46BFDF3C57EFDF9E9A9FDB5937AFE7F7374BF00000005C4966DFFDFB0
          71FFE6B570FFF0BE71FFBF9978FF2422C9FF4641FBFF514DF3FF5D57EEFF6C65
          E9FF7C73E6FF7874E3FF5A6EEEFF4663FAFF2C49F5FF1A2FEAFF2468E4FF2E95
          E6FC2486DDFE297DC5FF318FCDFF38A6D8FF2782BDFFBF7D36FEE88E23FCDE92
          35FDF9B844FDF8DC6AFDF9F99AFDB7966DFE7D7071BD00000005BE926CFFD0A9
          75FFECC280FFEDC078FFA98896FF1E1EF6FF6765FAFF7673F5FF847FF1FF8F8A
          EDFF9D97ECFF9896E6FF8096F0FF96B4FBFF9DB8FBFF486DFAFF2B7FE5FF3291
          DDFF237DD1FF2873B8FF3282C0FF3596D0FF2276BAFFC38739FEF59A23FCE89A
          25FDF9C224FDF9CF41FDF9F274FDB8925BFE7D7071BD00000005C59973FFC8A4
          78FFDBB780FFF4D18EFFE0BF9AFF6B5DD3FF554FEAFF6B68F6FF7F7CF6FFACA7
          F0FFC7C1EDFFC0C0EBFF94A7F6FF6A87FDFF356BF8FF3199F4FF3598E5FF378D
          DEFF277BCEFF2A6CADFF3279B1FF3384C1FF246EB4FFC3823BFEF69023FCE996
          24FDF9B123FDF9BE24FDF9DB44FDB98746FE7D7172BD00000005C79C77FFDDBB
          8DFFC9A479FFD4AF81FFECCA93FFFCDC98FFE6CCA7FFA08FC5FF7E73D9FF645F
          EDFF7571F3FF7774EDFF3560F1FF2082F4FF46C2F5FF48C3F9FF3693E2FF3983
          CDFF2871BEFF2B65A2FF3471A7FF3479B0FF2369ADFFC47D40FEF38923FCE68D
          24FDF9A823FDF9AE23FDF9C826FDBB7D2FFE7E7173BD00000005C79C7AFFEDD3
          AAFFECD0A3FFCCAD84FFDDBE94FFE6C59DFFC9A67CFFE7CA95FFF6E0B4FFD9C9
          C3FFC4B7D8FF888BC8FF2893DBFF4BCFF7FF64D0F2FF59C6F6FF3382CFFF3972
          B4FF2961A7FF2D5B91FF366898FF356FA2FF2467A8FFC27741FEF27F23FCE487
          24FDF99C23FDF9A423FDF9B823FDBC7426FE7F7173BD00000005C69C7BFFE5CC
          ACFFF0D6B2FFECD4B0FFC7AA87FFC5A986FFCBB290FFC8AB8BFFE7D1B1FFEDD8
          B9FFFBE4BFFFB8B9B8FF4AA7D8FF74DFFEFF84E1FAFF6DD1FCFF337AC9FF3765
          A1FF275395FF2F5181FF385D87FF366698FF2868A8FFBB7041FEEB7823FCE27D
          24FDF99323FDF99A23FDF9AE23FDBD6D26FE7F7072BD00000005C8A081FFE8D7
          BDFFEAD5B7FFE7CFB2FFE0C7AAFFE2CDB0FFF1E1C5FFCCB799FFECE1C5FFF9EF
          D8FFFFF2D9FFAEADB6FF64ABD0FF9DEEFAFFA0EDF8FF69CDFBFF3494E9FF3A7D
          C6FF2A5CA3FF304F7DFF385982FF386797FF276AABFFB56B41FEE26F23FCDE76
          24FDF98823FDF99123FDF9A223FDBC6725FE827778BD00000005C8A182FFEDE6
          D3FFF7EED9FFF6ECD6FFF4E7D1FFECDCC5FFEDDEC6FFCCB398FFDDC9B1FFF9F0
          DEFFFFFFEBFFB7BECAFF7AB9D5FFB2FAFFFF69D0F6FF30B0F5FF33B5F7FF3AB7
          FEFF268FDEFF2C72B2FF3572ABFF3573ADFF2872B6FFAF6B45FEDB6D23FCD76F
          24FDF67F23FDF98723FDF99923FDBB5D1BFE929091BE00000005C7A284FFE7DD
          CFFFEFE4D1FFF2E9D5FFF6F0DCFFFAF6E4FFFDF9E8FFE7D9C4FFCDB7A0FFF2E6
          D6FFF9E7D1FFB6B5BFFF419DD6FF4DC7FFFF40C3FCFF46C7FBFF4ECAFAFF57D0
          FBFF52BCE7FF63BED9FF4EB4DCFF45A3DAFF3393D9FFB0744FFED26623FCD16A
          26FDEC7523FDF47E23FDF98E23FDC9651BFE918C8BBD00000005CAA68AFFF5F3
          ECFFF7F2E5FFEFE5D8FFEEE2D5FFEDE2D4FFF1E7DBFFFAF5EBFFCEBBA5FFFAF6
          EBFFFFFFF4FFABCEE6FF35AAF2FF5FD0F8FF68D2F6FF73D8F8FF7CDDFBFF89E7
          FFFF86D3E9FFA0DDDAFFC2F3E2FFB0F1E9FF6DB9C5FFCA763AFEC86023FCC465
          27FDE37023FDE97423FDF98423FDCF671EFE83726FBD00000005C9A487FEF2EC
          E7FFFFFFFDFFFFFFFFFFFDFDF8FFF8F3ECFFF4EDE5FFF1E8DFFFCCB4A0FFDCCA
          BAFFFDF3E8FFDDEDF6FF71CCFFFF5DD0FFFF75D9FCFF84E1F9FFA6EFF8FFBEFA
          FBFFB7E9E7FFAFE6E1FF88DBEAFF79BED5FFD4B47EFECC6924FDB85A23FDC060
          23FDD36723FDE06F23FDF27923FDCC601EFE857570BD000000059A8A7DB2C6A4
          8CF6D0AF98FFDDC5B6FFF1EBE5FFFFFFFFFFFFFFFFFFFFFFFFFFF1EAE2FFC5AD
          97FFC3A994FFC7AB94FFD2B39BFFC1BBB6FF9CCDEDFF7AD3FFFF6ECFFFFF7CDD
          FFFF6EC4E9FF72B7CFFFB4C8BCFFF8D89BFFF0BC74FDBD6324FCA85123FDB45A
          24FDBD5B23FDCE6524FDE97523FDC75D1EFE857571BD00000005000000001A19
          181B645D586D9E8C7EB8CAA68BFBCCA68DFFDFCBBEFFF3EAE4FFFFFEFEFFFDFD
          FBFFF8F6F0FFEEE7DEFFE8DDD2FFD9C4B1FFCCA78AFFD8C3B4FFD2E0EDFFB4E6
          FFFF7E8AA7FFD5B78EFFFFF4B1FFFAE4AAFFE9BB79FDB25C22FC9B4B24FDA452
          26FDA85223FDB85B24FDD86B23FDC0581EFE847471BD00000005000000000000
          00000000000000000000101010104843404EB19B8AD0C7A78FF5CEAD94FFDDC4
          B3FFF1E7E1FFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFD7C6B5FFCEB5A0FFFFF6
          EDFFB98E8CFFDBBA8CFFFFF7BDFFFAEAB3FFEABE7BFDAA5222FC934827FD954B
          29FD954824FDA24F23FDC86223FDB85321FE837371BD00000005000000000000
          000000000000000000000000000000000000000000000E0E0D0F655F5A6F9B8A
          7EB4CAA78CFACBA68BFFDEC7B9FFEEE2DBFFFCFBF8FFFFFFFFFFE9E2D8FFCBB9
          A3FFA37873FFDDC49AFFFFF8C2FFFAEFB8FFEEC382FEAA5522FC934926FD954B
          2BFD904628FD974724FDC25E24FDB54F1DFE857977BD00000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000151515153D393741B09A88CFCBAC94F6CFAC95FFDABEACFFEFE5E0FFFFFF
          FCFFA47A76FFD5BF95FFFFFFD2FFF1DEB0FFD99F73FDC47345FCA65C43FD9D55
          37FD91482BFD994929FDC25E23FCB44B1CFE939091BD00000006000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000003030304665E59709C8C80B4C8A58BF7D0AA
          8BFFA3716AFFD4B893FFF0D7ABFFD99868FFEDA738FDF5BA34FCE8AA45FDCB85
          54FDB9714FFDAE5E41FDC36226FCB4501EFE969393BE00000006000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000181818183333
          3333A5877DDEB36447FFE49D53FFFAC241FFFACC44FDF8D24FFCF9CB59FDF9CF
          69FDF9E37FFDE9BE81FDD9A877FDC77F5BFC8B8988A900000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000073544A94DFA453FEFCDD63FEFAE46EFDF9E478FDF9E67FFDF9DA84FDF9DE
          90FDF9F9ACFDF9F9BCFDFAECB0FDCFA895EF3939394800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000322D2B38B08474D7D4A082F3E6BC7BFCF2D68CFDFAF6ADFDF9EEB0FDF9EB
          B6FDF4E2ACFDDDAF8CFBC2A094E44F4E4D5B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000221F1D257B676290AE8778CFCF9B7AF7DAAA85FDD6A2
          82FCC39F90E67B726F8E13131315000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000030303032D2C2C30675B5677645F
          5D711E1E1E220000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000060000001300000018000000100000
          0005000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000800000026000000430000003F0000
          0027000000150000000900000002000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000000A000000140000
          0018000000180000001800000018000000180000001800000018000000180000
          001800000018000000180000001800001D4700000038000000610000006E0000
          005F00000048000000310000001A000000080000000100000000000000000000
          0000000000000000000000000000000000000000000400000014000000280000
          0030000000300000003000000030000000300000003000000030000000300000
          003000000030000000300000003000003A7F000087E700004DB300000A850000
          007C0000006E0000005500000032000000100000000100000000000000000000
          000000000000000000000000000000000000000000020000000A000000140000
          0018000000180000001800000018000000180000001800000018000000180000
          001800000018000000180000001800000A29000090F200009AFF00009AFF0000
          60C7000027800000003E00000020000000090000000100000000000000000000
          00000000000000000000000000000000000000002740000073BF000073BF0000
          73BF000073BF000073BF000073BF000073BF000073BF000073BF000073BF0000
          73BF000073BF000073BF000073BF000073C1000091F100009AFF00009AFF0000
          9AFF00009AFF00007DD200000A15000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000003000000040000000300000009000087E200009AFF00009AFF0000
          86E000004D8100000A1000000000000000000000000000000000000000000000
          0000000000000000000000000001000000030000000600000008000000080000
          00090000000C000000140000001C00000020000000200000001C000000190000
          001C0000002400000028000000250000306500009AFF000073C7000030660000
          00200000001E000000150000000A000000020000000000000000000000000000
          00000000000000000002000000070000000E00000014000000180000001B0000
          00230000003300000047000000580000005F0000005F00000058000000510000
          00560000006000000064000000610000318B00001365000000560000005E0000
          00600000005B0000004A0000002E000000120000000300000000000000000000
          00000000000200000008000000120000001A0000001E000000210000002D0000
          004700000062000000730000007C0000007F0000007F0000007C000000780000
          078100001D9700000F8C0000007F0000007B000000780000007B0000007F0000
          00800000007D000000750000005F000000380000001200000002000000000000
          0001000000050000001100000E3000001F4D000027580000275D000027701010
          349350507FCD7777C0F77F7FCCFF7F7FCCFF7777C0F7363676CF343499ED4040
          B3FF4650C6FF4144B8FF34349BEF040460CD000087EF00009AFF00009AFF0000
          9AFF00006AD7000027A00000007B00000061000000310000000B000000000000
          00020000020E00001B4002032A57070F36580714405804104064313973B07777
          C1F98D9AE6FF8EA6F9FF89A3FFFF849EFFFF595FC9FF464BBDFF556EE3FF557D
          FFFF4B72FFFF4166F9FF0D12A8FF0E1CB3FF1D46E6FF184CFFFF0C40FFFF0636
          F9FF011BCDFF0003A0FF00003AB000000078000000510000001B000000000000
          00040000163203062B550A173E5805124058010F405918225B877879C3F890A1
          ECFF8EA8FFFF859FFFFF819BFFFF5E6BD9FF4951C1FF6087FAFF4F76FFFF456C
          FFFF4168FFFF0C13ADFF162AC0FF255BFFFF0F43FFFF0538FFFF0134FFFF0033
          FFFF0033FFFF012AECFF0003A0FF0000279F0000006300000029000000000000
          050D0102284E0B183F5605114059010E4059000D405C585BA0D38D9BE6FF8EA9
          FFFF849EFFFF809AFFFF7B93FAFF4446B8FF5D7FF1FF4F76FFFF446AFFFF4067
          FFFF2840D9FF0B16ADFF285EFFFF0E41FFFF0336FFFF0033FFFF0134FFFF0537
          FFFF0739FFFF083AFFFF0524D9FF000087EF000000670000002F000000000000
          1324050A304E06134056010E405A000D405B000D405E7F7FCCFF92ABFCFF859F
          FFFF809AFFFF7F99FFFF6978E3FF4A54C6FF557DFFFF456CFFFF4067FFFF4167
          FFFF111AB3FF1C3ED9FF1247FFFF0337FFFF0033FFFF0335FFFF0A3BFFFF1342
          FFFF1A48FFFF1D4AFFFF1947FFFF0205A0FF00001D840000002F000000000000
          1B2F050E374C03104056010D405C010E415E222B64888388D6FF8BA5FFFF829B
          FFFF809AFFFF829CFFFF636FD9FF4E62D9FF4B72FFFF4369FFFF4369FFFF496D
          FFFF0507A0FF1843ECFF093CFFFF0336FFFF0638FFFF1040FFFF204CFFFF315A
          FFFF3F65FFFF446AFFFF3860FFFF0C16B3FF0000268A00000029000000000000
          1B2E040C3747091646590A1647620B1747652B33698D8287D6FF8AA3FFFF89A0
          FFFF8AA1FFFF8FA5FFFF6B75D9FF495CD9FF5478FFFF5678FFFF5A7BFFFF6382
          FFFF0E12A7FF143DECFF2652FFFF2651FFFF2E58FFFF3E64FFFF5375FFFF6A88
          FFFF7E98FFFF869EFFFF738FFFFF141DB3FF0000277D0000001C000000000000
          132101063044141F4E5A14204F6516224F6B1B26506F7F7FCCFF8CA3FCFF93A8
          FFFF95AAFFFF9CAFFFFF8B96E7FF4249C1FF6383FFFF6D8AFFFF728FFFFF7E98
          FFFF2228B3FF1935D9FF4D71FFFF4F73FFFF5A7BFFFF6B88FFFF829AFFFF9CB0
          FFFFB5C4FFFFC1CDFFFFA9BAFFFF0608A0FF00001D590000000C000000000000
          05080001284118224F561E295663202B566B263057716567A8D48A95E6FF9DB0
          FFFF9FB2FFFFA6B8FFFFAAB9FAFF4849B8FF697EECFF839CFFFF88A0FFFF93A9
          FFFF6571D9FF0710ADFF738FFFFF7692FFFF8099FFFF8FA5FFFFA4B6FFFFBECB
          FFFFDBE2FFFFEDF1FFFF9297DDFF000086E60000001300000003000000000000
          00000000162407093046242E5A6029345D672F385D6C444A728A7F7FCCFF99A4
          EDFFA8B9FFFFAEBEFFFFB8C6FFFF8E93DEFF4546B8FF8B9CF3FF9BAFFFFFA5B7
          FFFFB2C2FFFF2426ADFF363EC0FF9AAEFFFFA1B4FFFFADBDFFFFBCC9FFFFCFD9
          FFFFE4E9FFFFDADCF5FF1919A4FF0000305C0000000300000000000000000000
          00000000020400001D3006072E451E254D57323B61653B446469595D8CA27777
          C1F3969FE6FFAAB8F9FFBCC9FFFFC6D2FFFF7B7DCFFF4647B8FF757DD9FF9DAC
          F6FFBCCAFFFFA6AFEEFF1516A3FF2C30B3FF818EE6FFC5D1FFFFCFD9FFFFCBD2
          F9FF898CD6FF1A1AA5FF00003A66000000020000000000000000000000000000
          0000000000000000000000000E1800001F340000274000002740000027401010
          344C4F4F7F9F7F7FCCFF7F7FCCFF7F7FCCFF7777BFEF48487C9F4B4B9BCF4040
          B3FF4040B3FF4040B3FF4040A0DF04045893000087E200009AFF00009AFF0000
          9AFF00006AB00000274000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000008000000270000004B0000004D0000
          00350000001F0000001000000005000000010000000000000000000000000000
          000000000000000000000000000000000000000000020000000A000000140000
          0018000000180000001800000018000000180000001800000018000000180000
          0018000000180000001800000018000030630000134E00000061000000740000
          0069000000560000003E00000020000000090000000100000000000000000000
          0000000000000000000000000000000000000000000400000014000000280000
          0030000000300000003000000030000000300000003000000030000000300000
          00300000003000000030000000300000307200009AFF000073D9000030A60000
          007C0000006E0000005500000032000000100000000100000000000000000000
          000000000000000000000000000000000000000000020000000A000000140000
          0018000000180000001800000018000000180000001800000018000000180000
          00180000001800000018000000180000001C000086E600009AFF00009AFF0000
          87EB00004DA400000A3E0000001A000000080000000100000000000000000000
          00000000000000000000000000000000000000002740000073BF000073BF0000
          73BF000073BF000073BF000073BF000073BF000073BF000073BF000073BF0000
          73BF000073BF000073BF000073BF000073C1000091F100009AFF00009AFF0000
          9AFF00009AFF00007DD100000A12000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000A16000090F000009AFF00009AFF0000
          60A1000027410000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000003A61000087DF00004D8100000A100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000001D300000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000006000000100000
          001302020012351A00571600006E0000007A00000077000000710000006C0000
          00660000005E00000054000000490000003E00000032000000270000001D0000
          0017000000110000000B00000005000000020000000000000000000000000000
          0000000000000000000000000000000000000000000100000014000000380000
          00461608004FE5B061EDDABA8BEAB7935CDB8D6A34C6604012B0361E009B1405
          00890000007E0000007A000000740000006F0000006900000061000000570000
          004D0000004100000035000000240000000E0000000200000000000000000000
          0000000000000000000000000003000000070000000A00000022000000570000
          00720E000076FAD49DFCFFEEDFFFFFE6CDFFFFEAD1FFFFE7C8FFFFE1B9FFF2CF
          9CF9D1AA70E8A67E43D375501CBA472A00A31F0C008F0000007E0000007B0000
          0076000000700000006B00000052000000230000000500000000000000000000
          000000000000000000000000000B0000002305010034AF7B2DC4A47D43C96C4B
          1AB5562B00ABF7CF94FBFFE0C3FFFFD09DFFFFD3A5FFFFD8AFFFFFDEBDFFFFE5
          CCFFFFEBD8FFFFEDD8FFFFEACFFFFFE5C1FFFAD8A8FDDCB67DEEB48A4FDA845E
          27C2543405AA29140094010000680000002D0000000700000000000000000000
          00000000000000000000000000140000004302000064F5C885F9FFF2E4FFFFE7
          CAFFFFD499FFFED497FFFFE4C9FFFFD5A8FFFFD8AEFFFFD9B0FFFFD9B1FFFFD9
          B1FFFFD9B1FFFFDAB3FFFFDEBBFFFFE3C7FFFFEAD5FFFFEFDFFFFFF0E0FFFFED
          D7FFFFE9CCFFFFCF89FF301900840000002E0000000700000000000000000000
          00000000000000000000482D0459543405892F120090E9BE7DF4FFE3C8FFFFD3
          A7FFFFCB8DFFFFD79AFFFFE5CCFFFFD6ABFFFFD9B1FFFFDAB4FFFFDCB6FFFFDD
          B8FFFFDEBAFFFFDFBCFFFFE0BEFFFFE1C0FFFFE1C0FFFFE1C2FFFFE2C4FFFFE4
          C9FFFFF0E4FFFFE5BFFF371D00870000002D0000000700000000000000000000
          00000000000000000000C48D3AC9FFE9CAFFFFD398FFFDCE89FEFFE6CEFFFFD5
          AAFFFFC885FFFFD699FFFFE7CFFFFFD8B0FFFFDBB5FFFFDCB7FFFFDDB9FFFFDE
          BCFFFFDFBEFFFFE1C0FFFFE2C2FFFFE3C5FFFFE4C7FFFFE5CAFFFFE6CCFFFFE6
          CDFFFFF0E2FFFFDEADFF361A00860000002C0000000600000000000000000000
          00000000000000000000B78944BDFFEEDDFFFFCE96FFFFD290FFFFE7D0FFFFD7
          AFFFFFCA89FFFFD699FFFFE8D2FFFFDAB3FFFFDDB8FFFFDEBBFFFFDFBDFFFFE0
          BFFFFFE1C1FFFFE2C3FFFFE3C6FFFFE4C9FFFFE5CBFFFFE6CDFFFFE7CFFFFFE8
          D1FFFFF1E6FFFFDEAEFF361A00860000002B0000000600000000000000000000
          00000000000000000000B78943BDFFEBD5FFFFC582FFFFD18CFFFFE9D4FFFFD9
          B2FFFFCC8CFFFFD699FFFFEAD5FFFFDCB7FFFFDFBCFFFFE0BEFFFFE1C0FFFFE2
          C2FFFFE3C5FFFFE4C8FFFFE5CAFFFFE6CCFFFFE7CEFFFFE8D1FFFFE9D3FFFFEA
          D4FFFFF2E8FFFFDFB1FF2E1500810000002B0000000500000000000000000000
          00000000000000000000B78843BDFFECD8FFFFC889FFFFD18DFFFFEAD6FFFFDB
          B6FFFFCD8FFFFFD699FFFFEBD8FFFFDEBAFFFFE0BFFFFFE1C1FFFFE3C4FFFFE4
          C7FFFFE5C9FFFFE6CCFFFFE7CEFFFFE8D0FFFFE9D2FFFFEAD4FFFFEBD6FFFFEC
          D8FFFFF4EBFFFFE0B3FF2912007E0000002B0000000600000000000000000000
          00000000000000000000B78842BDFFEDD9FFFFCA8DFFFFD18DFFFFEBD9FFFFDD
          BAFFFFCF93FFFFD699FFFFECDBFFFFE0BEFFFFE2C3FFFFE3C6FFFFE4C8FFFFE5
          CBFFFFE6CDFFFFE7CFFFFFE8D1FFFFEAD3FFFFEBD5FFFFECD8FFFFEDDAFFFFED
          DBFFFFF5EEFFFFE0B4FF2A13007E0000002A0000000500000000000000000000
          00000000000000000000B78842BDFFEDDBFFFFCC90FFFFD18DFFFFECDBFFFFDF
          BEFFFFD096FFFFD699FFFFEEDEFFFFE1C2FFFFE4C7FFFFE5C9FFFFE6CCFFFFE7
          CEFFFFE8D0FFFFE9D2FFFFEAD5FFFFEBD7FFFFECD9FFFFEDDBFFFFEEDDFFFFEF
          DFFFFFF7F2FFFFE0B3FF2A13007E000000290000000500000000000000000000
          00000000000000000000B78842BDFFEEDCFFFFCE94FFFFD18DFFFFEEDEFFFFE1
          C1FFFFD299FFFFD699FFFFEFE0FFFFE3C6FFFFE5CBFFFFE6CDFFFFE8CFFFFFE9
          D2FFFFEAD4FFFFEBD6FFFFECD8FFFFEDDAFFFFEEDCFFFFEFDFFFFFF0E1FFFFF1
          E2FFFFFAF7FFFFDBA6FF2A12007C000000270000000400000000000000000000
          00000000000000000000B78841BDFFEFDEFFFFD097FFFFD18DFFFFEFE0FFFFE2
          C5FFFFD39CFFFFD598FFFFF1E6FFFFE5CAFFFFE7CEFFFFE8D1FFFFE9D3FFFFEA
          D5FFFFEBD7FFFFEDD9FFFFEEDCFFFFEFDEFFFFF0E0FFFFF1E3FFFFF4E8FFFFF3
          E6FFFFFBFAFFFCD9A5FD240F0078000000270000000400000000000000000000
          00000000000000000000B78841BDFFF0E0FFFFD19BFFFFD18DFFFFF0E3FFFFE4
          CAFFFFD5A0FFFFD597FFFFF3EAFFFFE6CDFFFFE9D2FFFFEAD4FFFFEBD7FFFFEC
          D9FFFFEDDBFFFFEEDDFFFFEFDFFFFFF0E1FFFFF3E7FFFFDCB8FFFFEBD6FFFFF8
          F1FFFFFCFCFFF8D7A5FB1E0B0075000000270000000400000000000000000000
          00000000000000000000B78840BDFFF1E2FFFFD39FFFFFD18DFFFFF2E7FFFFE6
          CEFFFFD6A3FFFFD597FFFFF4ECFFFFE9D1FFFFEBD5FFFFECD8FFFFEDDAFFFFEE
          DCFFFFEFDEFFFFF0E0FFFFF1E3FFFFF2E5FFFFF4EAFFFFD3A4FFFFC88FFFFEEA
          D5FFFFFFFFFFF9D7A6FC1F0B0075000000260000000400000000000000000000
          00000000000000000000B78840BDFFF2E3FFFFD5A3FFFFD08BFFFFF4EBFFFFE8
          D1FFFFD7A6FFFFD597FFFFF6EEFFFFEAD5FFFFECD9FFFFEDDBFFFFEFDEFFFFF0
          E0FFFFF1E2FFFFF2E4FFFFF3E6FFFFF4EAFFFFF4E8FFFECE9BFFFCD3A6FFF7C3
          8AFFF9E4CCFFF9D9ABFC1F0C00680000001D0000000200000000000000000000
          00000000000000000000B78840BDFFF3E6FFFFD7A7FFFFD08BFFFFF5EDFFFFEA
          D6FFFFD9A9FFFFD597FFFFF7F1FFFFECD9FFFFEEDDFFFFEFDFFFFFF0E1FFFFF1
          E3FFFFF2E5FFFFF4E8FFFFF5EAFFFFF7F0FFFFEFDFFFF8C388FFFEFCF9FFFDF8
          F2FFF7E0C7FFF8CC8EFE210F004B0000000D0000000100000000000000000000
          00000000000000000000B78840BDFFF3E7FFFFD8ABFFFFD08BFFFFF6F0FFFFEC
          D9FFFFDBACFFFFD598FFFFF8F4FFFFEEDCFFFFF0E0FFFFF1E2FFFFF2E5FFFFF3
          E7FFFFF4E9FFFFF5EBFFFFF6EDFFFFFBF7FFFBE4CAFFF4C895FFFFFFFFFFFFFF
          FFFFFFFFFFFFEFB766F21105001F000000020000000000000000000000000000
          00000000000000000000B78740BDFFF4E9FFFFDAAFFFFFD08CFFFFF8F2FFFFEE
          DDFFFFDCB0FFFFD598FFFFF9F7FFFFF0E0FFFFF2E4FFFFF3E6FFFFF4E8FFFFF5
          EAFFFFF6ECFFFFF7EFFFFFF8F1FFFFFFFEFFF6D6B0FFF6DAB8FFFFFFFFFFFFFF
          FFFFF5C072F73C1D004700000002000000000000000000000000000000000000
          00000000000000000000B7873FBDFFF5EBFFFFDCB2FFFFD08CFFFFF9F4FFFFF0
          E1FFFFDEB3FFFFD598FFFFFBF9FFFFF1E3FFFFF3E7FFFFF4E9FFFFF6ECFFFFF7
          EEFFFFF8F0FFFFF9F2FFFFFAF4FFFFFFFFFFF3D1A7FFFBF1E6FFFFFFFFFFF5C3
          7AF73C1D00480000000200000000000000000000000000000000000000000000
          00000000000000000000B7873FBDFFF6ECFFFFDEB6FFFFD08CFFFFFAF7FFFFF1
          E5FFFFDFB6FFFFD598FFFFFCFCFFFFF3E7FFFFF5EBFFFFF6EDFFFFF7EFFFFFF8
          F1FFFFF9F3FFFFFAF6FFFFFCF8FFFFFDFBFFF4DBBBFFFFFFFFFFF6C67FF83B1C
          0048000000020000000000000000000000000000000000000000000000000000
          00000000000000000000B7873EBDFFF7EEFFFFDFB9FFFFD18DFFFFFBF9FFFFF3
          E9FFFFE1B9FFFFD598FFFFFDFFFFFFF5EBFFFFF7EEFFFFF8F0FFFFF9F3FFFFFA
          F5FFFFFBF7FFFFFCFAFFFFFFFFFFFEFFFFFFFAF6F3FFFACD89FB452300500000
          0002000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B7873EBDFFF7F0FFFFE1BDFFFFD18DFFFFFCFCFFFFF5
          EDFFFFE2BCFFFFD698FFFFFFFFFFFFF7EEFFFFF9F3FFFFFCFAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF8EDFFFFEBCDFFF9C780F94724004B000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B7863EBDFFF8F2FFFFE3C0FFFFD18DFFFFFDFEFFFFF7
          F0FFFFE3BDFFFFD9A0FFFFFFFFFFFFFEFDFFFFF7ECFFFFEDD3FFFFE1B6FFFFD5
          9BFFFED191FFFFC266FFB6771EBE6A40026D2B14002B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B7863EBDFFF9F3FFFFE5C4FFFFD18DFFFFFEFFFFFFF9
          F4FFFFE9CBFFFFC064FFFFD495FFFFCE89FFFFD08FFFFFD8A0FFFFE1B5FFFFEB
          CFFFFEDDAEFFA36D23AB00000005000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B7863EBDFFFAF5FFFFE7C8FFFFD290FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFEBCDFFFFE8C8FFFFEACCFFFFE5C0FFFFDDAEFFFFD8A0FFFEBC
          5AFE8B5A14930000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B7863DBDFFFBF7FFFFE9CCFFFFC876FFFFEACBFFFFDC
          A8FFFFD292FFFFCF8DFFFFCF8CFFFFD597FFFFE0B5FFFDE6C6FFFEC470FE5129
          005B000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B7853CBBFFFAF6FFFFF7EEFFFFD393FFFFD9A2FFFFE6
          C2FFFFF1DEFFFFF7EAFFFFF5E6FFFFEDD5FFFFE2B6FFEBBB76EC512F00530000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BE8B40BFFFFDFBFFFFF5E9FFFFF1DEFFFFE6C1FFFAD4
          9DFADEAF6ADFB7853BB78B5B168B5F37005F3418003410030010000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008E5E178EBB8C46BB90632190673F06673E20003E1C09
          001C010001010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010100010101
          000102020002020100040201000A010100110201001602010016030300140505
          000F070600090706000707060007060500060605000605040005040400040303
          0003030300030202000201010001010100010101000100000000000000000000
          0000000000000000000000000000000000000101000101010001020200030000
          000B0000001B0000002B0000003E0000004E0000005800000058000000520000
          00430100003105040020080700140A09000B0908000908070008070600070504
          0005050400050303000302020002010100010101000101010001000000000000
          0000000000000000000000000000000000000101000100000005000000180000
          003C00000064090000921F0000B2340600C7380E00CB1F0000C2090000B00000
          0098000000800000006601000047080600280C0A00150B0A000C090800090706
          0007060500060404000403030003020200020202000201010001000000000000
          00000000000000000000000000000101000100000008000000240400006A4300
          00CC7B2F06EDB3744FFBCFA081FFDAB49AFFDBB59AFFD7AD8FFEBA7F53FC9453
          21F5400900DB0B0000B9000000930000006C060400420C0A00200C0A000F0A09
          000A080700080605000605040005030300030202000201010001000000000000
          00000000000000000000000000010000000E0000002F2400009C801600F8BB78
          54FFE6CDBAFFF5E9E4FFF6EDE8FFF6EBDEFFF6E8CAFFF8EDD0FFFCF6E5FFF8EE
          D9FFE2C3A3FFB67B44FC581E00E4030000B40000008A020000570B09002A0C0B
          00110A09000A0706000706050006040400040303000302020002000000000000
          000000000000000000000000000D0000003D430000C28E1E00FFC58A6AFFEBD8
          CCFFECD9CFFFDFBC92FFCB9468FFC28261FFC58866FFC17E5AFFC98F60FFD09A
          50FFEBD191FFFDF8D6FFE2C499FF9A5519F91E0000CC0000009A020000640A08
          002E0C0B00120A09000A06050006050400050404000402020002000000000000
          000000000000000000040B000044630800DE8A1500FFB7704CFFE6CFC1FFE1C4
          B0FFC08256FFC37F66FFE9BA9AFFF6CFAAFFF7CEAAFFF3CBABFFDEB5A1FFE4AF
          96FFCD8B6CFFCF9A69FFEED9A5FFF4E6C2FFC1864EFE3B0900DB000000A00000
          00660907002C0B0A001008070008060500060404000402020002000000000000
          00000000000002000019660E00D48D1B00FF9D3B0BFFD7B29BFFDCBBABFFBA77
          45FFDBA586FFFBD9B5FFF9D8B5FFF9D8B5FFF9D7B5FFF9D8B7FF7063A1FF5349
          9AFF9B85A3FFBF9B9AFFC88E77FFD09C5DFFF2E2B5FFCC9B67FE3E0C00DD0000
          009F0000005F0A0800260908000B060500060504000503030003000000000000
          000000000003310A0074902200FF932800FFB56943FFDAB6A4FFCA945CFFCE94
          73FFFBDFBBFFF8DABAFFFADDBFFFFADDC0FFFBDEC1FFFBDEC1FFC1ACB7FF0000
          93FF000090FF3F3899FFF6D4B3FFD69D83FFBC7D4FFFF0DCAAFFC78D59FF2A00
          00D6000000940200004F09080018070600070504000503030003000000000000
          000004010012691C00CA983000FF9A3400FFC28668FFD4A98CFFBB7336FFF7D8
          B9FFF9E0C4FFFAE0C6FFFBE2C9FFFBE2CAFFFBE3CAFFFBE3CAFFFBE3CBFF5E55
          ABFF000098FFB19DB6FFFADBBDFFFFDEB9FFE4B292FFBF835AFFEEDAB1FFB06F
          3AFD0F0000C500000080040300370807000F0504000504040004000000000000
          00001F0A0044923000F89F3D0CFF9E3B09FFC78F73FFD09D62FFD09150FFFDE7
          C6FFFBE5CEFFFBE6D0FFFCE7D0FFFCE7D1FFFCE7D1FFFCE7D2FFFCE7D1FFC5B3
          C4FF9285B8FFFBE3CBFFFBE1C6FFFADBBFFFFCDCB8FFD9A284FFC18656FFE3C6
          A2FF7D3503F5000000A900000063060500200605000704040004000000000000
          00004015007A9E3D0AFFA44919FFA14111FFC58C6FFFC4874EFFE0B06CFFFDE8
          BAFF9C91C1FFE8D8D2FFFCEAD8FFFCEBD8FFFCEBDAFFFCEBD9FFFCE9D7FFFCEA
          D6FFFCE8D5FFFCE7D1FFFCE6CEFFFBE2C9FFFADDC1FFFEDCBAFFCA8B76FFDCB7
          7AFFCD9F78FF370700DC0000008D0201003E0605000D04040004000000000000
          00005F2001AAA24617FFA75124FFA34718FFBF7E5EFFC07D43FFE6BA78FFFDE5
          A7FF2523A3FF4C48AFFFE7D9D8FFFDEEDFFFFCEEDFFFFCEEDEFFFCEDDDFFFCED
          DDFFFCECDBFFFCEAD7FFFCE8D5FFFBE6D0FFFBE3CAFFFCDFC2FFF6D1AFFFB874
          4CFFDFBE9AFFA55C2AFC020000AF000000610504001B04040004000000000000
          0000662403B2A74E21FFAB582DFFA95024FFB56C47FFBD773CFFE4B87CFFFEE6
          A2FF302C9FFF00009AFF3633AAFFE0D6DCFFFDF1E4FFFDF1E4FFFCF0E2FFF9E9
          D9FFFCEFE0FFFCEDDDFFFCECDAFFFCE9D6FFFBE7D2FFFBE1CAFFFDDFC3FFD8A1
          88FFD3A35CFFC89375FF4C1800DC000000800404003003030006000000000000
          0000652303B0A95327FFAE5F36FFB05F35FFAB582EFFBF7B38FFD9A871FFFFED
          B1FF61589BFF5F5AABFF9892CBFFD7D0DDFFFDF3E8FFFDF2E8FFECD1C0FFC98F
          6FFFD5A488FFF1D9C7FFFCEEDFFFFCEBDBFFFCE9D7FFFBE6D1FFFAE2C7FFF4D3
          BBFFC68540FFDBB89CFF8D4A1FF405010098030300440303000D000000000000
          0000561C0097AA552BFFB36641FFB56A44FFA74F23FFBA7239FFC68853FFFEED
          B6FFF5E1A5FFF6E19EFFFCEECAFFFDF6F0FFFBF0E8FFE2C0ABFFB76D46FF9D3B
          0AFF9E3E0DFFAE5B30FFCD9576FFF3DCCAFFFCECDCFFFBE9D6FFEDD8CEFFE3CF
          CAFFD0955BFFDCB478FFB4704AFE240D00B60403005503030014000000000000
          000038110064A9542AFFB7704CFFBA7552FFAE5E36FFAA552FFFB66824FFF8E4
          B4FFFDEBB1FFFCE8A6FFFBE89DFFF3DEB0FFD5AA8FFFAB572DFFA24516FFBE7C
          59FFCF9D80FFBA734EFFAD5A2FFFDBB097FFD2C6D3FF625BB3FF2C29A4FF3D39
          A8FFDEAD64FFD3A05CFFC68C6FFF3C1600C8030300620202001A000000000000
          0000210B003A9D4214F8BA7754FFBE7D5DFFBA7450FFA64C20FFB36320FFDBAE
          80FFFFF4C3FFFCEBB2FFEFD194FFC98A4CFFA54A15FFA54918FFC99271FFF2E2
          DAFFFDF7F2FFF8ECE3FFEFDACBFFF1DDCEFFE8DCDEFF5E59B6FF00009AFF342F
          9EFFE9BE70FFC88B4BFFC99277FF531E00D80404006B0202001E000000000000
          000002010004762801CABA7552FFC18466FFC78E72FFAC5A30FFA54A1FFFB668
          27FFFAEEC4FFFEF2BFFFD7A771FFA1420EFFAD5720FFD8A762FFF5DD9AFFFCEF
          C4FFFCF4DBFFFCF5E9FFFCF4EAFFFCF2E6FFFBF0DDFFFAEAC6FF796EA0FF342F
          9BFFECC783FFC28041FFC58C6FFF622100E00303006C0101001E000000000000
          00000000000042150073AB572EFFC89377FFC99479FFC68C6FFFA14314FFAB55
          16FFD19D6FFFFFFDD4FFEBD0A0FFCC945FFFE0B980FFFBEBABFFFCECA5FFDCCC
          9FFFDBCDA4FFFCEAA7FFFCE9A6FFFCE9A5FFFBE9A4FFFBE69FFFF6E19FFFC6B6
          A8FFEAC588FFBE793CFFBF7F5FFF622200E0020200640101001A000000000000
          00000000000005020009903507EDC3886AFFCF9E86FFD2A58EFFBA7553FF9D3C
          12FFAE5A14FFE5C6A1FFFFFDD6FFFDF2C5FFFCF1BEFFFEF2BBFFFEF1B6FF4F4A
          A2FF524DA0FFFCEDACFFFDEBAAFFFCEAABFFFCE9ACFFFCEAAEFFFBEAAFFFFFF1
          BBFFDFB37DFFBD7739FFB66D48FF571E00D50101005501010013000000000000
          000000000000000000003C130069AC582FFFD3A790FFD5AC96FFD7AE99FFB061
          39FF9C380FFFAB5417FFEED8B4FFFFFFDFFFFFF6CCFFFEF6C8FF8E89B1FF0000
          9AFF00009AFFC8BFB5FFFDF0B9FFFCEEBAFFFDEDBBFFFCEDBBFFFDECBCFFFFF3
          C5FFC37F50FFBF7B37FFAB582EFF3E1500BD0101003F0101000B000000000000
          0000000000000000000004010006702300BEBF7F5EFFDCB9A7FFDCBAA9FFDBB9
          A6FFAC592FFFA2430CFFAB551CFFE8CFACFFFFFFE7FFFFFAD6FFB5AFC0FF6764
          AFFF2423A1FF5350A9FFFDF3C8FFFEF2C8FFFEF1C8FFFDF0C8FFFFF5D0FFEBCD
          A8FFB46522FFB1633CFF9B4115FC1F0B008C0101002600000002000000000000
          0000000000000000000000000000170700288C3308E7CA967BFFE3C7B9FFE4CA
          BCFFDDBBA9FFAC582EFF993209FFAA520EFFCFA07AFFFBF3D7FFFFFFE8FFFEFC
          DEFFE7E1D2FFC2BEC8FFEFE8D2FFFFF7D4FFFFF7D7FFFFFDDEFFF5E4C3FFB364
          35FFAD592AFFA75024FF702904DF050200490000000E00000000000000000000
          000000000000000000000000000000000000240B003F963C10F1D5AA95FFEAD5
          CAFFECD8CEFFE6CEC2FFB66F4CFF972F06FFA64A06FFB36737FFDEBC9BFFFAF3
          DAFFFFFFEDFFFFFEE5FFFFFFEAFFFFFDE5FFFDF5DBFFE2C2A2FFAD5B2DFFAB54
          19FFA54C1FFF9A3A09FD230D007D0000001B0000000200000000000000000000
          000000000000000000000000000000000000000000002E0E0050983D13F3D3A6
          90FFF0E0D8FFF2E5DEFFEEDCD2FFC89277FFA3471DFF9C3907FFA54706FFAF5B
          1EFFBC784AFFCA9574FFC8906DFFC38862FFB46535FFAA5210FFA24514FFA143
          14FF983909FC4015009F00000020000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000250C00418530
          06DDD0A08AFFF2E5DDFFF8F1EDFFFDFBF8FFE4C9BBFFB76F4BFF9C3808FF9831
          05FF983005FF9F3D06FF9E3C07FF9F3C08FF9C380BFF9C3B0BFF9E3B0BFF9A36
          02FF461700A60000002200000005000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001A08
          002D621C00ADAC5E35FCE4C9BBFFFEFDFCFFFFFFFFFFFFFFFFFFF1E2DBFFCC99
          7FFFB66C49FFA95127FFA5491DFFA74F24FFAD5930FFA95228FF983709FB4818
          009F0000001E0000000500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003B120065863811DAB8714EFFDFBEAEFFF9F4F1FFFFFFFFFFFFFF
          FFFFFFFFFFFFF5EAE5FFEAD5CBFFD4AA94FFAE5E36FF833611DF2D0F00690000
          0010000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000270B0045601F00A57C3511CBA35F3EEBB681
          64F1B57D60F1B1775AF0873D17DC612303B12D0F00620000000E000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000050200091807002A1D08
          00371E0900391B0700350C04001A000000040000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000D000000140000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000180A03005C220A009C110905920104055800000025000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000190F05
          006B471500BE9E3700FABB4D00FF893309F95C3522E00F0B0A8B0000001F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030100002511040071541900C89C34
          00F8B85D1AFFB27E49FFB76314FFA03300FFA43705FF412619C3000102290000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000005030100371B070085661F00D6A23800FBB95710FFB281
          51FFB5B0A2FFDBDDCBFFC17127FF9A3100FFA63902FF3F2215BE0001011F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000506020047290C009B792600E6B44601FFB75D19FFB38352FFB6AA96FFD1D3
          C5FFF5ECCBFFFFECC0FFC57224FF9C3400FFA73C01FF2B0F03B20000001A0000
          000000000004000000200000003D000000260000000700000000000000000000
          00000000000000000000000000000000000000000000010000100602004E3711
          00A9872B00F1BC4F04FFBB6A26FFB38D64FFBCBAAAFFD3D9CBFFECEDD2FFF6ED
          C9FFF8E7C1FFF5E1B7FFC27021FF9F3900FFA93F00FF280C00B1000000270301
          00401C0700875B1E00D25F2102DF18110DA20204055A00000019000000000000
          0000000000000000000000000001010000210A020063481400BF8D2E00F1B44B
          04FFB77234FFAF9778FFC1C6BCFFDAE6DBFFEEF3DBFFF4F2D2FFF3E9C7FFF4E4
          BEFFF7E1B8FFF7DDB3FFC47022FFA44000FFAC4401FF2D0E00D4330F00B88D2E
          00F3AD4404FFBA5B0BFFB34901FF923910FE4D2C1CD602030359000000000000
          0000000000000100002813050076561A00CCA33B00FEB5510BFFB6763FFFB29F
          86FFC6CEC5FFE3F3E7FFF0FAE3FFF4F7DAFFF2EFD0FFF1E9C8FFF3E6C0FFF5E0
          B8FFF8DEB1FFF8DAACFFC57220FFA94900FFB04902FF5A1E00FFAA4C07FFAE6E
          38FFAF9E87FFC0A47DFFAC4705FF9C3000FF943809FF11100F78000000000000
          00271A0700835E1B00D4AD4000FFB95C13FFB47F4DFFB8AE9AFFC9D4CBFFE4F6
          E7FFF1FDE7FFF0F6DEFFEFF2D8FFEFEDD0FFF2EBCAFFF4E7C2FFF5E2B9FFF6DD
          B1FFF7D9A8FFF9D9A5FFC8741FFFAF5400FFB45004FF5E3419FF9F8F7AFFC8CA
          BEFFE9E8D2FFF1D39FFFAB4706FF9C3300FF903709FC0B0A0A6C250C00696B20
          00DDA83D01FFB86720FFB28A5FFFBBBCB0FFD1E3E0FFE8FBF2FFF0FFEFFFEFFB
          E5FFEDF6DEFFEEF2D8FFF0EED2FFF1EBCBFFF2E8C4FFF5E3BCFFF7DEB3FFF6D8
          A9FFF6D5A0FFF9D29AFFCA751EFFB96102FFBA5A07FF674D3EFFD1D1BBFFF6EC
          C9FFFBEFCAFFEDC991FFAB4805FF9F3800FF863001F901010162953500E3B96C
          2AFFAF906FFFBFC4BCFFDAEDEDFFECFBF5FFF2FFF3FFEEFDEBFFEDF8E4FFEDF5
          DFFFEEF3DAFFF0F0D3FFF1ECCDFFF4E8C5FFF5E3BCFFF7DFB4FFF7DAABFFF7D5
          A1FFF7D098FFF6CC91FFCB771CFFC3710AFFC2650CFF715440FFDDD4B3FFF4E4
          C0FFF9E8C2FFEBC48DFFAD4A05FFA43E00FF862F00F900000061A03D00F2B39A
          78FFDDF5F5FFF0FFF6FFF1FFF2FFEEFEEEFFEBFCE9FFEDF9E5FFEDF6E1FFEDF3
          DBFFF0F0D5FFF1ECCDFFF4EAC7FFF6E4BFFFF6DFB5FFF7DBADFFF6D6A3FFF7D1
          9AFFF7CB91FFF7C889FFCC791DFFCD8212FFC97012FF6F513DFFDCCFACFFF6E0
          B8FFFAE4BBFFECC28AFFB04F05FFA94500FF883101F9000000619C3900EEB69D
          7BFFEAFEF6FFEDFFEDFFECFCEBFFECFCEAFFEDF9E6FFEDF8E1FFEEF4DCFFF0F1
          D7FFF1EDCFFFF3E9C7FFF6E6C0FFF7E2B7FFF8DCAEFFF7D7A6FFF8D29CFFF7CD
          92FFF5C889FFF5C281FFCE7B1EFFD79420FFCF7C1AFF704F3BFFDDCCA7FFF6DD
          B0FFFAE0B2FFEEC284FFB35405FFAE4F01FF893401F9000000619C3900EEB69D
          7CFFE9FEF4FFEDFEECFFECFBEAFFECFAE7FFEDF8E3FFEEF5DEFFEFF2D8FFF0EF
          D1FFF3EAC9FFF5E7C1FFF6E1B8FFF8DCAFFFF7D8A7FFF7D49FFFF7CE95FFF5C9
          8BFFF5C582FFF5BF7AFFCF7D1FFFDFA331FFD48627FF704D39FFDEC8A1FFF6D8
          A8FFF9DBA9FFEFBE7EFFB85A05FFB75B04FF8B3701F9000000619C3900EEB69E
          7DFFE9FEF4FFEDFDECFFECFAE9FFECF8E3FFEDF6DEFFEFF3D9FFF0F0D3FFF1EC
          CCFFF4E8C3FFF6E3BAFFF8DDB2FFF6D8A9FFF7D5A0FFF7CF97FFF6CA8DFFF5C6
          84FFF5C37DFFF6BF77FFD18022FFE5B146FFD79035FF704C37FFDEC59AFFF6D5
          A1FFFAD6A0FFEDB774FFBC6105FFC16A09FF8D3A02F9000000619C3900EEB69E
          7EFFEAFEF3FFEDFCE9FFEDF9E4FFEDF7DFFFEEF3DAFFF0F0D4FFF2EDCCFFF4E9
          C6FFF6E4BDFFF7DFB4FFF8D9AAFFF8D5A2FFF9D29AFFF9CF94FFFACD8EFFF8C7
          86FFF3BF78FFE6AD63FFCC7B22FFEABC60FFDA9546FF704A34FFDFC192FFF7D0
          99FFFAD197FFEBB36DFFC26A06FFCB7C11FF903E05F9000000619C3900EEB69E
          7EFFEAFEF3FFEDFBE7FFEDF8E1FFEDF3DCFFEFF1D6FFF0EDCFFFF2E9C7FFF5E6
          BEFFF8E0B6FFF8DCAFFFFADBA8FFFBD8A3FFFBD398FFF0C386FFDEA767FFDA90
          3AFFD07717FFBA600EFFC77216FFECC67EFFDA9958FF704832FFDFBD8CFFF7CD
          92FFF9CE90FFEAAF67FFC7740BFFD68D1BFF924207F9000000619C3900EEB69E
          7EFFEAFDF0FFEDF9E3FFEDF4DDFFEFF2D6FFF0EED0FFF2EBCBFFF7ECC8FFFBE9
          C2FFFAE2B7FFF7D8A6FFEBC38BFFDA9D59FFCF7E2BFFC66E18FFC97A1EFFA555
          23FF411B9DFF6F325DFFD47C0DFFEDCD98FFDA9E6AFF714730FFDFB986FFF5C9
          8AFFF8CA88FFE9AA61FFCB7C13FFE09F2AFF94460BF9000000619C3900EEB69E
          7DFFEAFCEDFFEDF6DFFFEFF4DAFFF2F5D9FFF4F3D6FFF5ECCBFFF6DFB6FFE7C6
          96FFD49F61FFC87526FFC26C18FFC58F4BFFC27E32FFC9B388FFE4EDB9FF7F53
          73FF0000FFFF5C3784FFE0960FFFEBD0AFFFDAA078FF70452EFFDEB57FFFF5C5
          82FFF8C681FFE9A65AFFD0851DFFE7AE3EFF964A10F9000000619C3900EEB6A1
          83FFEEFFF8FFF0FBE7FFEEEED0FFEAD8B1FFDEBE8FFFCF9553FFC76E1EFFC062
          0BFFBF5D01FFBF5500FFC8985CFFD6FFFFFFD0C596FFD3DDC3FFE0FFDFFFB088
          48FF805E63FFC1941BFFE2B01EFFEFDACAFFDEAA8EFF6E4129FFDFB57AFFF9C7
          84FFF7C885FFE6A558FFD38A28FFEDBB55FF964D15F9000000619B3A00EEB798
          72FFE2D8BDFFD8B989FFC8853DFFC2620AFFBF5D02FFC05D00FFC16100FFC469
          00FFC87400FFCC7700FFD3B660FFDBF4C7FFDDC142FFDEB827FFDCAF22FFD292
          03FFCF8400FFC26E00FFAE5609FFC98D67FFD28E69FF825738FFE3B174FFEAA8
          55FFE49E40FFCB7B27FFD49038FFF0C470FF984F1BF9000000619D4001EEC26A
          0CFFC16105FFC05D00FFC26200FFC66B00FFC97500FFCE8000FFD38D00FFD99A
          00FFDCA400FFDDA700FFD9A20BFFCC8A0DFFC27500FFB96000FFAA4900FFA038
          00FF972D00FF932C04FF99380EFFA14615FFAC5416FFB16316FFC57318FFAC56
          1EFF833C47FFAD4D0EFFDB9948FFF0CD8CFF985021F9000000619F4300EEC86F
          00FFC77100FFCD7F00FFD38E00FFD99D00FFDDA500FFDDA300FFD89A00FFC985
          00FFBC7300FFB45F00FFAA4800FF9D3100FF982D01FF973207FF9B3D0DFFA24D
          18FFA75719FFA54D08FFB76315FFC29356FFC27A2CFFCCBD97FFDBC681FF4E22
          8CFF0000FFFF964D3EFFE6A64DFFEFD2A7FF985228F900000061A55200EFDFA4
          00FFDEA500FFDEA400FFD59800FFC78400FFBC6F00FFB35900FFA84400FF9C32
          00FF9A2C00FF963208FF9A4213FFA3480DFF9F4D0CFFA55104FFB65200FFBC5B
          00FFC16200FFC25A00FFCDB687FFD7FFFFFFCDB172FFD6FFFFFFE0F4CBFF693E
          70FF3729C1FFB57A23FFE8B95FFFEED3BDFF98532DF900000062A14800F6C782
          01FFB96A01FFAE5400FF9F3B00FF952A00FF8F2600F9842500E9913000FBA246
          01FF9D4700FFB05200FFBE5E00FFC36400FFC56900FFC87000FFCA7700FFCC7D
          00FFCE8400FFD18200FFD7C775FFDCE9ADFFDCB329FFDDC349FFDDBF3DFFD099
          07FFD6A107FFD79A00FFDAAB62FFF2DACFFF9D5935FC000000636339248F6F25
          06BB652308A9591B03984D180083431700703612005B200B0038973E00EDC974
          00FFCA7900FFCC7E00FFCF8700FFD49000FFD79700FFD99C00FFDAA200FFDCA6
          00FFDCA700FFDCA600FFD59702FFC88200FFC17700FFBC6700FFB55900FFAB4A
          00FFA74000FFA03600FF9E3B09FFC47F56FF8E451FF200000039000000000000
          0000000000000000000000000000000000000000000000000000A04B00EFDDA4
          00FFDEA700FFDCA400FFD89E00FFD39600FFCD8C00FFC87D00FFBC6900FFAD52
          00FFAC4C00FFA74700FFA13C00FF9B3000FF9B2D00FF972C00FF8D2A00F68028
          00DE6C2300CB5B1D00B3541A00963B1000701908003E00000003000000000000
          0000000000000000000000000000000000000000000000000000953E03EBB768
          02FFB36002FFAF5601FFA64600FF9A3300FF962D00FF942D00FF922C00FA8729
          00EC782500E0702300CB581C00A2491800862C0F006D280D0057230C003F0F05
          001D000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000412E2655581F
          0994591E07975A1C03995B1C009B5C1E009B591E0097491900812F1000581A08
          00330B0400220903001302010004000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000050000001100000021000000310000
          003D00000043000000410000003800000029000000180000000A000000020000
          0000000000000000000000000000000000060000001300000018000000100000
          0005000000010000000000000000000000000000000000000000000000000000
          000000000000000000010000000A000000200000003F00000058000000670000
          006E00000071000000700000006C000000610000004C0000002F000000140000
          00040000000000000000000000000000000800000026000000430000003F0000
          0027000000150000000900000002000000000000000000000000000000000000
          0000000000010000000C0000002A0000005100060077001C00A5073407C20E43
          0ECD0A3D0ACA012901BA000F009F0000008900000082000000700000004F0000
          002E0000001C000000180000001800001D4700000038000000610000006E0000
          005F00000048000000310000001A000000080000000100000000000000000000
          000000000008000000280005005E073507BA579157F3A2CDA2FFB6DDB6FFAEDD
          AEFF9AD49AFF7BC17BFF4B9F4BFE105810E4001600B000000095000000840000
          006300000041000000320000003000003A7F000086E700004DB300000A850000
          007C0000006E0000005500000032000000100000000100000000000000000000
          00030000001B000E0067347234E7CAE2CAFFE4F7E4FFC4EAC4FFA7DDA7FF92D4
          92FF81CE81FF75CA75FF6CC86CFF5BBD5BFF2B932BFF013101C4000000880000
          00720000004600000023000000180000092900008FF2000099FF000099FF0000
          5FC7000026800000003E00000020000000090000000100000000000000020000
          000F000D0052468246ECEAF6EAFFD5F0D5FFADDEADFF95D595FF7FCC7FFF6CC3
          6CFF5BBD5BFF4DB74DFF41B241FF39AF39FF37B237FF1E961EFF01341DEF0000
          3EDD00004FD3000066C6000072C0000072C1000090F1000099FF000099FF0000
          99FF000099FF00007CD200000A15000000010000000000000000000000060001
          0025246024D2E4F3E4FFCDECCDFFA7DCA7FF8DD28DFF75C775FF5FBE5FFF4CB6
          4CFF3CB03CFF2FAB2FFF24A624FF1BA31BFF15A015FF13A413FF088808FF001E
          00A500000067000000330000000C00000009000086E2000099FF000099FF0000
          86E000004D8100000A10000000000000000000000000000000000000000D0023
          007EACD1ACFFD5F1D5FFA5DBA5FF89D089FF6EC46EFF57BB57FF42B342FF31AB
          31FF22A622FF15A115FF0D9D0DFF069A06FF029902FF019801FF019A01FF005B
          00E8000200860000005F0000003400003065000099FF000073C7000030660000
          00200000001E000000150000000A0000000200000000000000000010003C2863
          28CED4EFD4FFABDEABFF8DD28DFF6FC46FFF54BA54FF3CB03CFF28A828FF17A1
          17FF0A9C0AFF029902FF009800FF009800FF009901FF029A04FF039E05FF028B
          04FF001A00C1000000920000006F0000308B00001365000000560000005E0000
          00600000005B0000004A0000002E000000120000000300000000022C027664A0
          64F5C1E9C1FF88CF88FF4CB74CFF38AF38FF27A827FF18A218FF0E9D0EFF0499
          04FF009700FF009700FF009800FF009A02FF019B03FF059D08FF08A10DFF079D
          0CFF013908E500000AAF0000008B0000007B000000780000007B0000007F0000
          00800000007D000000750000005F0000003800000012000000020E450E9C80BC
          80FFA7DFA7FF57BB57FF81CD81FFCEECCEFFC5E8C5FFC7E8C7FFC8E9C8FFC8E9
          C8FFC9E9C9FFC9E9C9FFC9E9C9FFCBEACBFFC4E7C3FF25AA28FF08A410FF0FA8
          16FF0E5D24FF2D3082FF2E2E8DF004045FCD000086EF000099FF000099FF0000
          99FF000069D7000026A00000007B00000061000000310000000B114B11A47BBD
          7BFF8FD58FFF45B345FFAFDFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFAFF33B137FF0DAA18FF16B0
          21FF0F692CFF304CBBFF0C119DFF0E1BB2FF1C45E6FF174BFFFF0C3FFFFF0635
          F9FF011ACDFF00039FFF000039B000000078000000510000001B0B410B9461AF
          61FF7CCD7CFF3AAF3AFF74C774FFB5E1B5FFADDEADFFADDEADFFACDEACFFACDE
          ACFFACDEACFFACDEACFFACDEACFFAEDFAEFFA7DBA7FF26AE2BFF18B427FF1CB6
          2BFF106337FF0A108DFF1428B9FF245AFFFF0F42FFFF0537FFFF0133FFFF0032
          FFFF0032FFFF0129ECFF00039FFF0000269F000000630000002901280164388A
          38EE6AC76AFF3FB23FFF14A014FF019701FF009400FF009500FF009800FF009B
          02FF01A007FF04A40DFF09A712FF0CAA16FF0EAD1AFF1CB62CFF25BF39FF21B6
          33FF0F4B4DFF0A139AFF275CFDFF0E40FFFF0335FFFF0032FFFF0133FFFF0536
          FFFF0738FFFF0839FFFF0523D9FF000086EF000000670000002F000E00240E54
          14BF55BB55FF35AE35FF1BA31BFF069A06FF009800FF039C06FF08A10DFF0DA6
          14FF13AC1CFF18B125FF1EB62DFF22BC35FF27C03CFF2AC341FF2FCC48FF1EA5
          2DFF0B266FFF1A3BD0FF1246FFFF0336FFFF0032FFFF0334FFFF0A3AFFFF1341
          FFFF1947FFFF1C49FFFF1846FFFF02059FFF00001C840000002F00000000001D
          136C2F9B2FFF2EAE2EFF119E11FF019801FF029A03FF079F0AFF0CA412FF12A9
          1AFF17B023FF1DB52CFF23BC36FF29C13EFF2EC746FF33CD4EFF36D152FF1772
          40FF050794FF1741EAFF093BFFFF0335FFFF0637FFFF103FFFFF1F4BFFFF3059
          FFFF3E64FFFF4369FFFF375FFFFF0C15B2FF0000268A00000029000000000000
          1A2E074E18C21FA11FFF0B9E0BFF009800FF039B06FF09A10DFF0EA615FF14AD
          1FFF1BB329FF21BA33FF28C13EFF2FC948FF36D052FF40DD61FF229F34FF4571
          B3FF0E12A3FF133CECFF2551FFFF2550FFFF2D57FFFF3D63FFFF5274FFFF6987
          FFFF7D97FFFF859DFFFF728EFFFF131CB2FF0000267D0000001C000000000000
          1321010D2D53096215DE069806FF009C01FF059D08FF0AA210FF11A818FF16AF
          23FF1EB62EFF25BE39FF2DC745FF36D153FF41DE63FF28AE3DFF3F778DFF7C95
          FCFF2127B2FF1834D9FF4C70FFFF4E72FFFF597AFFFF6A87FFFF8199FFFF9BAF
          FFFFB4C3FFFFC0CDFFFFA8B9FFFF06089FFF00001D590000000C000000000000
          05080001284115284965085A18D4018D02FF06A00AFF0DA713FF13AD1CFF19B3
          27FF21BB33FF2AC541FF34D150FF37CD53FF1F9733FF4F839BFF869EFEFF92A8
          FFFF6470D9FF0710ACFF728EFFFF7591FFFF7F98FFFF8EA4FFFFA3B5FFFFBDCB
          FFFFDBE2FFFFEDF1FFFF9196DDFF000085E60000001300000003000000000000
          00000000162407083046232E59621A463BA00B6914E3098B0EFE109E16FF17A9
          23FF1DAE2CFF1EAA2FFF219731FF397D5AFF3A489BFF8A9BF3FF9AAEFFFFA4B6
          FFFFB1C1FFFF2325ACFF353DBFFF99ADFFFFA0B3FFFFACBCFFFFBBC9FFFFCFD9
          FFFFE4E9FFFFDADCF5FF1818A3FF0000305C0000000300000000000000000000
          00000000020400001D3005072D451E254D572F3D5B6E2A4D48952E634ACE3572
          57FA48846EFF669797FF9CB8D5FFC5D2FFFF7A7CCFFF4546B7FF747CD9FF9CAB
          F6FFBBCAFFFFA5AEEEFF1415A2FF2B2FB2FF808DE6FFC4D1FFFFCFD9FFFFCBD2
          F9FF888BD6FF1919A4FF00003A66000000020000000000000000000000000000
          0000000000000000000000000E1800001F340000264000002640000026400F0F
          344C4F4F7F9F7E7ECCFF7E7ECCFF7E7ECCFF7676BFEF47477C9F4B4B9ACF3F3F
          B2FF3F3FB2FF3F3FB2FF3F3F9FDF04045893000086E2000099FF000099FF0000
          99FF000069B00000264000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000008000000270000004B0000004D0000
          00350000001F0000001000000005000000010000000000000000000000000000
          000000000000000000000000000000000000000000020000000A000000140000
          0018000000180000001800000018000000180000001800000018000000180000
          0018000000180000001800000018000030630000134E00000061000000740000
          0069000000560000003E00000020000000090000000100000000000000000000
          0000000000000000000000000000000000000000000400000014000000280000
          0030000000300000003000000030000000300000003000000030000000300000
          003000000030000000300000003000003072000099FF000072D9000030A60000
          007C0000006E0000005500000032000000100000000100000000000000000000
          000000000000000000000000000000000000000000020000000A000000140000
          0018000000180000001800000018000000180000001800000018000000180000
          00180000001800000018000000180000001C000085E6000099FF000099FF0000
          86EB00004DA40000093E0000001A000000080000000100000000000000000000
          00000000000000000000000000000000000000002640000073BF000073BF0000
          73BF000073BF000073BF000073BF000073BF000073BF000073BF000073BF0000
          73BF000073BF000073BF000073BF000072C1000090F1000099FF000099FF0000
          99FF000099FF00007DD100000A12000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000A1600008FF0000099FF000099FF0000
          5FA1000026410000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000003961000086DF00004D8100000A100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000001D300000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000040000
          000A000000090000000300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000060000001300000018000000100000
          00050000000100000000000000000000000000000000000000000000000A0000
          0021000000290000001800000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000800000026000000430000003F0000
          0027000000150000000900000002000000000000000000000000000000090000
          002B0000004D000000470000002900000012000000060000000A000000140000
          0018000000180000001800000018000000180000001800000018000000180000
          001800000018000000180000001800001D4700000038000000610000006E0000
          005F00000048000000310000001A0000000800000001000000000000007F051E
          2361000000550000006D0000005D0000003C0000001C00000018000000280000
          0030000000300000003000000030000000300000003000000030000000300000
          003000000030000000300000003000003A7F000086E700004DB300000A850000
          007C0000006E000000550000003200000010000000010000000006272E4937C9
          ECFF1A7B8EBB031619840000007B00000067000000410000001E000000170000
          0018000000180000001800000018000000180000001800000018000000180000
          00180000001800000018000000180000092900008FF2000099FF000099FF0000
          5FC7000026800000003E000000200000000900000001000000000107080A2D9F
          C2DE42D7FDFF34C7E8F80C4C5CBB0000007D0000178B00005BCD00006DC30000
          72BF000073BF000073BF000073BF000073BF000073BF000073BF000073BF0000
          73BF000073BF000073BF000073BF000072C1000090F1000099FF000099FF0000
          99FF000099FF00007CD200000A15000000010000000000000000000000001567
          7D9C3BBCE8FF4BD7F5FF3DB8D7FF074056C0000000790000005A0000002A0000
          0009000000000000000000000000000000000000000000000000000000000000
          000100000003000000040000000300000009000086E2000099FF000099FF0000
          86E000004D8100000A1000000000000000000000000000000000000000000630
          394B28A9D0FF9DDAE8FFC1E9F1FF43B0CEFF012432A900000078000000540000
          002700000011000000140000001C00000020000000200000001C000000190000
          001C00000024000000280000002500003065000099FF000073C7000030660000
          00200000001E000000150000000A000000020000000000000000000000000000
          000008607CB25EBFD8FFD9EFF5FFB4E3EEFF2490B0F4010F169A0000007C0000
          005D0000004500000049000000580000005F0000005F00000058000000510000
          00560000006000000064000000610000308B00001365000000560000005E0000
          00600000005B0000004A0000002E000000120000000300000000000000000000
          0000010C111E107FA1DF78CADFFFE3F3F7FF93D5E6FF116C8AE3000305960000
          0091000000840000007C0000007D0000007F0000007F0000007C000000780000
          078100001C9700000E8C0000007F0000007B000000780000007B0000007F0000
          00800000007D000000750000005F000000380000001200000002000000000000
          000100000005011D2A4F1F9CBEFB98D6E6FFE3F4F8FF6FC7DCFF064768DE0808
          1BC6333350DF61619EF87979C4FF7E7ECBFF7676BFF7353575CF333398ED3F3F
          B2FF454FC5FF4043B7FF33339AEF04045FCD000086EF000099FF000099FF0000
          99FF000069D7000026A00000007B00000061000000310000000B000000000000
          00020000020E00001A40033761A135ACCCFFB5E2EDFFD7EFF6FF4DB5D2FF294F
          77FD4C537DFF6171ABFF768DDEFF8099F9FF585EC9FF454ABCFF546DE3FF547C
          FFFF4A71FFFF4065F9FF0D12A7FF0E1BB2FF1C45E6FF174BFFFF0C3FFFFF0635
          F9FF011ACDFF00039FFF000039B000000078000000510000001B000000000000
          00040000163203062B550A163E58055986C34FB9D5FFCFEBF3FFBFE7F0FF339D
          C0FF3C5986FF4B5A91FF5D70BAFF5460C5FF474FBEFF5F86FAFF4E75FFFF446B
          FFFF4067FFFF0C13ACFF1529BFFF245AFFFF0F42FFFF0537FFFF0133FFFF0032
          FFFF0032FFFF0129ECFF00039FFF0000269F0000006300000029000000000000
          050D0102284E0B183E5605114059021345630B75A0E16DC5DDFFDFF2F7FF9FDB
          E9FF2585ADFF3E5083FF495795FF34358DFF5676E1FF4D74FDFF4369FFFF3F66
          FFFF273FD9FF0B15ACFF275DFFFF0E40FFFF0335FFFF0032FFFF0133FFFF0536
          FFFF0738FFFF0839FFFF0523D9FF000086EF000000670000002F000000000000
          13240509304E06134056010E405A000C405B011F527C2098C0FF8DD2E4FFE5F4
          F8FF7CCCE0FF226E9CFF363E76FF2E347CFF4566D1FF4166F4FF3F66FEFF4066
          FFFF1119B2FF1B3DD9FF1246FFFF0336FFFF0032FFFF0334FFFF0A3AFFFF1341
          FFFF1947FFFF1C49FFFF1846FFFF02059FFF00001C840000002F000000000000
          1A2F050D364C03104056010D3F5C010E415E222B64885481C3FF2DA7C9FFABDE
          EBFFDDF2F7FF59BAD5FF215082FF293475FF324DADFF395ADCFF4065F8FF486C
          FEFF05079FFF1742ECFF093BFFFF0335FFFF0637FFFF103FFFFF1F4BFFFF3059
          FFFF3E64FFFF4369FFFF375FFFFF0C15B2FF0000268A00000029000000000000
          1A2E040B364709154659091647620B1747652A33698D8186D6FF3F8ECFFF45B4
          D2FFC7E8F1FFCAEBF2FF3BA9CCFF1F3975FF2F4491FF3D56B8FF4F6CE2FF607E
          F9FF0E12A6FF133CECFF2551FFFF2550FFFF2D57FFFF3D63FFFF5274FFFF6987
          FFFF7D97FFFF859DFFFF728EFFFF131CB2FF0000267D0000001C000000000000
          132101063044131F4E5A131F4F6516214E6B1B25506F7E7ECCFF88A1FAFF2C91
          C5FF63C1DAFFD5F3FCFF92C2D1FF745244FF37417FFF4456A1FF5D74D1FF7891
          F5FF2127B2FF1834D9FF4C70FFFF4E72FFFF597AFFFF6A87FFFF8199FFFF9BAF
          FFFFB4C3FFFFC0CDFFFFA8B9FFFF06089FFF00001D590000000C000000000000
          05080001284117224F561E285663202B566B262F56716566A8D48994E6FF87A7
          F3FF209CCAFF7FAEBBFFDEA168FFA9684AFF262987FF5363B1FF758ADDFF8EA3
          F8FF6470D9FF0710ACFF728EFFFF7591FFFF7F98FFFF8EA4FFFFA3B5FFFFBDCB
          FFFFDBE2FFFFEDF1FFFF9196DDFF000085E60000001300000003000000000000
          00000000162407083046242E5A6029335D672E375D6C434A728A7E7ECCFF98A3
          EDFF879BD5FFDDB291FF9A979EFF1C57CFFF0C30B8FF4551B6FF94A7F5FFA3B5
          FDFFB1C1FFFF2325ACFF353DBFFF99ADFFFFA0B3FFFFACBCFFFFBBC9FFFFCFD9
          FFFFE4E9FFFFDADCF5FF1818A3FF0000305C0000000300000000000000000000
          00000000020400001D3005072D451E254D57323B61653B436469585D8CA27676
          C1F3959EE6FF9281B2FF6DBEFFFF2F8CF3FF2F45B3FF3839AAFF747CD8FF9CAB
          F6FFBBCAFFFFA5AEEEFF1415A2FF2B2FB2FF808DE6FFC4D1FFFFCFD9FFFFCBD2
          F9FF888BD6FF1919A4FF00003A66000000020000000000000000000000000000
          0000000000000000000000000E1800001F340000264000002640000026400F0F
          344C4F4F7F9F7C7CCBFF6169BEFF5060BDFF7171BCF047477C9F4B4B9ACF3F3F
          B2FF3F3FB2FF3F3FB2FF3F3F9FDF04045893000086E2000099FF000099FF0000
          99FF000069B00000264000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000008000000270000004B0000004D0000
          00350000001F0000001000000005000000010000000000000000000000000000
          000000000000000000000000000000000000000000020000000A000000140000
          0018000000180000001800000018000000180000001800000018000000180000
          0018000000180000001800000018000030630000134E00000061000000740000
          0069000000560000003E00000020000000090000000100000000000000000000
          0000000000000000000000000000000000000000000400000014000000280000
          0030000000300000003000000030000000300000003000000030000000300000
          003000000030000000300000003000003072000099FF000072D9000030A60000
          007C0000006E0000005500000032000000100000000100000000000000000000
          000000000000000000000000000000000000000000020000000A000000140000
          0018000000180000001800000018000000180000001800000018000000180000
          00180000001800000018000000180000001C000085E6000099FF000099FF0000
          86EB00004DA40000093E0000001A000000080000000100000000000000000000
          00000000000000000000000000000000000000002640000073BF000073BF0000
          73BF000073BF000073BF000073BF000073BF000073BF000073BF000073BF0000
          73BF000073BF000073BF000073BF000072C1000090F1000099FF000099FF0000
          99FF000099FF00007DD100000A12000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000A1600008FF0000099FF000099FF0000
          5FA1000026410000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000003961000086DF00004D8100000A100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000001D300000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000070007024600020066000000590000
          0025000000060000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000A0333003410DE00230ACF0001009B0000
          005F000000230000000600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000015065F034917FF064E1AFF001F09DB0000
          009A0000005F0000002400000006000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000040000000B0016066D086521FE37DE5EFF064E1AFF0021
          09DC0001009B0000005F00000023000000050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000300000011000000290000004300140691075F1FFF35F260FF37D85DFF064E
          1AFE002009DB0000009A0000005D000000220000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000070000
          00210004015500100597001B08C1002F0EE6055D1DFF2CF159FF36F262FF3ADD
          60FF07521CFF001F09DA000000980000005B0000002000000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000090000002B0013
          0690002F0EE3014314FB025B1AFF046B1FFF0EAA34FF21F152FF2BF25AFF35F2
          62FF3AE060FF09561FFE001D08D8000000960000005300000017000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000070003013300250BC1014A
          16FE078C28FF0DCE3AFF0EE240FF0FE941FF10EF43FF18F14AFF21F152FF2BF1
          59FF35F261FF3CE864FF0A5820FF001B08D40000008000000031000000060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010002012400290CC503611CFF0CC8
          38FF0ED43CFF0ED63CFF0EDA3DFF0FE040FF0FE740FF10EE44FF17F149FF22F1
          51FF2BF25AFF35F361FF3DE364FF0B561FF700090299000000370000000A0000
          0007000000060000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000A002109A003621CFF0DC838FF0DC9
          38FF0DCD3AFF0ED03CFF0DD43CFF0ED83DFF0EDE3FFF0EE740FF0FEE42FF16F1
          49FF21F151FF2BF159FF37F263FF27BA4CFE000F0587000000240000001F0000
          00330000002A0000000E00000001000000000000000000000000000000000000
          0000000000000000000000000000000B0340024D16F80DBD35FF0DC238FF0DC5
          38FF0DC738FF0DC938FF0DCD39FF0ED13CFF0ED63EFF0FDE3EFF0FE740FF10EE
          42FF16F049FF20F151FF25D74FFF053914C30002013200010029000F047F000A
          03930000006D000000340000000B000000000000000000000000000000000000
          000000000000000000000000000300240B9D088F29FF0CB934FF0CBC35FF0CBF
          36FF0DC337FF0DC438FF0DC739FF0DC737FF0CCA39FF0ED63EFF0EDD3FFF0EE4
          41FF0FED42FF10CB3DFF02310FC10002012E00000015023910B3066D20FD002F
          0EEA000602AF0000006F0000002B000000070000000000000000000000000000
          0000000000000000000000040114014013D90CB031FF0CB333FF0CB734FF0CBA
          34FF0CBB35FF0BB433FF05701FFA014012E904691EFF0DCE3AFF0ED53CFF0EDC
          3EFF0BB833FF01280CB50000002700000006001C0871098A27FF0A942AFF056B
          1FFF002D0DEA000301A40000005B000000190000000100000000000000000000
          000000000000000000000009032B035919EE0CAD30FF0CB032FF0CB233FF0CB5
          34FF0AA22EFF014213EF000F04720017076F02581AFD0DC838FF0ECD39FF0AA5
          2FFF01260BB4000100270000000600000000001B086E035619FF0A972BFF0A95
          2AFF025118FF001F09D900000085000000370000000800000000000000000000
          00000000000000000000000D043A04661EF60BA630FF0BAA2FFF0BAC30FF0AA7
          30FF014515F9000D04840000001E000D043D025819F70DC638FF08952AFF0024
          0AB20000002B000000160000000E000000040003010C00290CAC078426FF0A98
          2BFF088124FF003911F8000903AD000000560000001400000000000000000000
          00000000000000000000000C043205651EF40BA12EFF0BA52FFF0BA830FF0463
          1DFF00220ACC000000400000000A0010054403631CFE08982BFF00230AAF0001
          002F000000300000004900000037000000100000000000110554067421FC0A9C
          2BFF0A972AFF014A16FF001B08D1000000700000002300000001000000000000
          0000000000000000000000060218045518E60A9D2CFF0AA02CFF0A9E2DFF0040
          13FB000A039A0000003200000004000B0330013C12DC01210A88000000240003
          014201250BBB001707B40000005E0000001A0000000400180776088C28FF0BA0
          2DFF0A9C2CFF035A1AFF002C0DE8000201850000003100000005000000000000
          0000000000000000000000000001013710B10A972BFF0A9C2CFF078225FF0035
          0FF300020195000000440000000D000100030007021F000000120006024E0242
          14DB088A27FF00290CDF0000006A000000200002001E013910CF0BA730FF0BA4
          2FFF0BA02DFF04671DFF003510F3000802970000003700000007000000000000
          00000000000000000000000000000018075A087E24FF0A972AFF088C27FF003C
          12F8000B03B90000006D00000024000000050000001300080258013F13E40CB8
          33FF079029FF00260BDF00000079000000430017078C078425FF0BAB30FF0BA9
          2FFF0BA52FFF046A1EFF003810F6000B039A0000003300000005000000000000
          00000000000000000000000000000004010E024514DC0A942AFF0A972BFF0465
          1DFF002D0EE800030186000000320000001C000B0366014213E90CBE35FF0DC8
          38FF078927FF00290DE60000009D001105A704661EF80CB433FF0CB032FF0BAE
          31FF0BAB30FF04631CFF003610F3000903890000002800000002000000000000
          00000000000000000000000000000000000000150656045E1CFB0A942AFF0A94
          2AFF014514FB000C037E00000036000E0477014314EF0CC237FF0ED53CFF0DCD
          3AFF078B27FF003910F701310FE9067722FC0CBA34FF0CB834FF0CB634FF0CB2
          33FF0CAF31FF025218FF00300FE9000401670000001900000000000000000000
          00000000000000000000000000000000000000000000001F0A8004601CFF0358
          1AFF00220AAF0002014000130688024715F60DD13BFF0FE540FF0FDD3EFF0ED6
          3DFF0BBD36FF089129FF0BB634FF0DC236FF0DC136FF0DBD35FF0DB935FF0CB7
          34FF0BA930FF004414FF00220AC70000003D0000000A00000000000000000000
          000000000000000000000000000000000000000000000002000600220A8A0021
          0A8E0002011F00170780034A18FB1CD548FF17F14AFF0FEE43FF0FE640FF0FDE
          3EFF0ED73DFF0DD13AFF0ECD3AFF0DC838FF0DC638FF0DC437FF0DC037FF0CBD
          35FF056F20FF003B12F8000B03790000001C0000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000C0435034315E92CD153FF2DF25AFF21F052FF16F148FF0FEE42FF0FE6
          41FF0FDE3FFF0ED73DFF0ED23CFF0ECE3AFF0ECA3AFF0DC838FF0DC538FF0AA2
          2EFF004214FF00200AB400000028000000060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000A032B044517E33AE061FF37F363FF2BF159FF21F151FF15F149FF0FEE
          43FF0EE640FF0EDE3EFF0ED83EFF0ED43CFF0ED23BFF0DCD39FF0BB432FF0149
          15FF00280BC30001002F00000009000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000001C087307521DFF3BE462FF35F261FF2AF259FF21F150FF16F0
          49FF0FEE42FF0FE640FF0EDF3FFF0EDA3DFF0ED63CFF089F2DFF014615FB0022
          0AA80003012A0000000700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000001E097B0A5820FC3CE964FF34F360FF2AF257FF20F1
          50FF15F148FF10EC43FF0CCB39FF089A2CFF035F1CFC002D0EC4001105610000
          000F000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000001C08700C5D22FB3DED65FF33F261FF29F2
          57FF15B73CFF014515F9002B0DD0001B088D000F044A00020113000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000001A08680F6226F63EF068FF33F3
          60FF139935FF002F0EE900010078000000240000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000170760116829F43EF3
          68FF17A33AFF002F0DE50001006F000000200000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000001105461A7A
          32F11BA33DFF002E0DD50002004D000000140000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000014
          064F034016DF001E098A00000019000000060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object cxImageList_dis: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 16253672
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040412404040B4494949C324242480000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          010600000000000000000D0D0D38A0A0A0FFC8C8C8FF616161E7080808160000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000002010101060303030D04040414050505180505051B0606
          061D0606061E0606061E0606061E0606061E0606061D0909092C3F3F3FB83E3E
          3EC00F0F0F4B0F0F0F463D3D3DB8B8B8B8FFD3D3D3FF868686FB1F1F1F790303
          030E0D0D0D323B3B3BAE1A1A1A6D010101050000000000000000000000000000
          00020202020905050517080808290C0C0C3A0E0E0E4710101050111111561212
          125A1212125C1212125C1212125C1212125C1212125A434343C7A1A1A1FFA7A7
          A7FF737373F8898989FFB3B3B3FF9D9D9DFF878787FFB5B5B5FF9B9B9BFF5D5D
          5DDE7A7A7AF3AAAAAAFF787878FF1010104A0000000000000000010101030303
          03100909092C1B1B1B68313131A3414141C84B4B4BDD515151EC555555F45656
          56F7565656F7565656F7565656F7565656F5515151ED595959F29F9F9FFFBCBC
          BCFF999999FFAAAAAAFFBDBDBDFF939393FFBFBFBFFF929292FFC7C7C7FF9D9D
          9DFFAEAEAEFFB3B3B3FF696969E90909092800000000000000000202020C1B1B
          1B5D444444CC585858FB717171FF979797FFB3B3B3FFC9C9C9FFDADADAFFE3E3
          E3FFE8E8E8FFE8E8E8FFE5E5E5FFDBDBDBFFCBCBCBFFB0B0B0FF767676FF9A9A
          9AFF939393FF8A8A8AFF878787FFC3C3C3FFCECECEFF999999FF7F7F7FFF9999
          99FF777777FF939393FF1E1E1E7A000000000000000000000000202020625656
          56F7777777FFBBBBBBFFE7E7E7FFEEEEEEFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCCCCCCFF878787FFA7A7
          A7FF8F8F8FFFBBBBBBFFBFBFBFFFA2A2A2FD969696F6BCBCBCFFBDBDBDFFA7A7
          A7FF878787FF9E9E9EFF323232A70000000000000000000000004F4F4FE18787
          87FFDFDFDFFFE7E7E7FFE7E7E7FFE7E7E7FFE8E8E8FFE8E8E8FFE9E9E9FFEAEA
          EAFFEBEBEBFFEBEBEBFFEAEAEAFFCBCBCBFF9D9D9DFF7B7B7BFF9D9D9DFFA2A2
          A2FF838383FFB0B0B0FF777777FF4F4F4FF41919196F3A3A3A98A7A7A7FF9F9F
          9FFF818181FFA8A8A8FF696969EE1A1A1A6F0C0C0C3501010105575757F3D3D3
          D3FFE6E6E6FFE7E7E7FFE8E8E8FFE7E7E7FFE2E2E2FFDCDCDCFFD6D6D6FFD0D0
          D0FFCECECEFFCECECEFFCFCFCFFF888888FF9E9E9EFFAEAEAEFF888888FF8787
          87FFA7A7A7FF919191FFBEBEBEFF575757F91313135D0606061F5C5C5CC1A7A7
          A7FF818181FF757575FF999999FF8C8C8CFF656565F108080829575757F3E0E0
          E0FFEBEBEBFFE5E5E5FFD2D2D2FFC2C2C2FFB7B7B7FFB3B3B3FFB5B5B5FFB7B7
          B7FFB6B6B6FFB7B7B7FFB6B6B6FF808080FFB3B3B3FFBFBFBFFF939393FFB1B1
          B1FFC1C1C1FF919191FFD5D5D5FF575757F91313135D0606061F4040409FA0A0
          A0FF9E9E9EFF797979FF989898FF9B9B9BFF7F7F7FFF0B0B0B34575757F3E2E2
          E2FFDBDBDBFFBFBFBFFFBBBBBBFFBDBDBDFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FF9C9C9CFF838383FF878787FFB7B7B7FFA1A1
          A1FFABABABFFB7B7B7FF939393FF575757F91313135D0E0E0E45888888E9BEBE
          BEFF797979FF9D9D9DFF8D8D8DFF5E5E5ED73434349504040412575757F3D7D7
          D7FFC3C3C3FFC7C7C7FFC8C8C8FFC7C7C7FFC7C7C7FFC8C8C8FFC9C9C9FFCACA
          CAFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FFC8C8C8FF9E9E9EFFA3A3A3FFD5D5
          D5FF8D8D8DFFE1E1E1FFB1B1B1FF5E5E5EFD3C3C3CBC898989EBE1E1E1FFB3B3
          B3FFA8A8A8FFC7C7C7FF4A4A4AC7020202090000000000000000575757F3D2D2
          D2FFCFCFCFFFD2D2D2FFD5D5D5FFDBDBDBFFE3E3E3FFE8E8E8FFECECECFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFECECECFFE8E8E8FFDBDBDBFF828282FFAEAE
          AEFFBCBCBCFFCFCFCFFFD7D7D7FFE6E6E6FFE6E6E6FFE1E1E1FFCACACAFFD8D8
          D8FF878787FFA3A3A3FF1C1C1C75000000000000000000000000575757F3B1B1
          B1FFDCDCDCFFE3E3E3FFEBEBEBFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFB6B6B6FF999999FFD8D8
          D8FF9F9F9FFFAAAAAAFF9B9B9BFFC6C6C6FFE9E9E9FF878787FFB1B1B1FF9B9B
          9BFFB8B8B8FFB7B7B7FF373737B50404041200000000000000004D4D4DDD9090
          90FFE7E7E7FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFE9E9
          E9FFEBEBEBFFEBEBEBFFEAEAEAFFE9E9E9FFE8E8E8FF858585FFD5D5D5FFE2E2
          E2FFAFAFAFFFCDCDCDFFEFEFEFFFA2A2A2FFA3A3A3FFDDDDDDFFDFDFDFFFB3B3
          B3FFD3D3D3FFEBEBEBFF8A8A8AFF0F0F0F470000000000000000575757F3D0D0
          D0FFE6E6E6FFE7E7E7FFE8E8E8FFE7E7E7FFE3E3E3FFE0E0E0FFDADADAFFD3D3
          D3FFCFCFCFFFCFCFCFFFD3D3D3FFD9D9D9FFE0E0E0FFBABABAFF8A8A8AFF8383
          83FF9C9C9CFF909090FF939393FFB7B7B7FFAAAAAAFFA7A7A7FE565656CD2525
          257B525252C19E9E9EFF404040B20303030F0000000000000000575757F3E0E0
          E0FFEBEBEBFFE5E5E5FFD2D2D2FFC3C3C3FFBBBBBBFFB5B5B5FFB5B5B5FFB5B5
          B5FFB5B5B5FFB6B6B6FFB5B5B5FFB5B5B5FFB5B5B5FFBBBBBBFFB2B2B2FFC2C2
          C2FFE3E3E3FFEBEBEBFF9F9F9FFFD3D3D3FFF6F6F6FF545454D8020202080000
          000002020207161616440202020B000000000000000000000000575757F3E2E2
          E2FFDBDBDBFFBFBFBFFFBBBBBBFFBCBCBCFFBFBFBFFFC0C0C0FFC0C0C0FFC0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FFC1C1C1FFC0C0C0FFBFBFBFFFBDBDBDFFBBBB
          BBFFBFBFBFFFD9D9D9FFC6C6C6FF929292FFAEAEAEFF313131A4000000000000
          0000000000000000000000000000000000000000000000000000575757F3D7D7
          D7FFC3C3C3FFC7C7C7FFC9C9C9FFC8C8C8FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7
          C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC8C8C8FFC9C9
          C9FFC7C7C7FFC2C2C2FFCBCBCBFF5E5E5EFC474747BF1717175C000000000000
          0000000000000000000000000000000000000000000000000000575757F3D0D0
          D0FFCECECEFFD2D2D2FFD2D2D2FFD3D3D3FFD8D8D8FFDBDBDBFFE0E0E0FFE3E3
          E3FFE5E5E5FFE5E5E5FFE3E3E3FFE0E0E0FFDCDCDCFFD8D8D8FFD3D3D3FFD2D2
          D2FFD2D2D2FFCFCFCFFFD0D0D0FF575757F91212125A0606061D000000000000
          0000000000000000000000000000000000000000000000000000565656F2B3B3
          B3FFDADADAFFDFDFDFFFE6E6E6FFECECECFFF0F0F0FFF2F2F2FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF0F0F0FFEDEDEDFFE7E7
          E7FFDFDFDFFFDADADAFFB9B9B9FF575757F9111111560505051B000000000000
          0000000000000000000000000000000000000000000000000000414141BB7777
          77FFE2E2E2FFE8E8E8FFEBEBEBFFEBEBEBFFE9E9E9FFE9E9E9FFEBEBEBFFEBEB
          EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE9E9E9FFEBEBEBFFEBEB
          EBFFE9E9E9FFE3E3E3FF828282FF4A4A4ADD1212125A0606061D000000000000
          0000000000000000000000000000000000000000000000000000575757F3BBBB
          BBFFE6E6E6FFE6E6E6FFE7E7E7FFE8E8E8FFE9E9E9FFE7E7E7FFE3E3E3FFE2E2
          E2FFE1E1E1FFE1E1E1FFE2E2E2FFE3E3E3FFE7E7E7FFE8E8E8FFE8E8E8FFE7E7
          E7FFE6E6E6FFE6E6E6FFC1C1C1FF575757F91313135D0606061F000000000000
          0000000000000000000000000000000000000000000000000000575757F3DFDF
          DFFFE8E8E8FFE8E8E8FFE3E3E3FFD5D5D5FFCACACAFFC2C2C2FFBCBCBCFFB7B7
          B7FFB5B5B5FFB5B5B5FFB7B7B7FFBBBBBBFFC2C2C2FFC9C9C9FFD3D3D3FFE1E1
          E1FFE8E8E8FFE8E8E8FFDFDFDFFF575757F91313135D0606061F000000000000
          0000000000000000000000000000000000000000000000000000575757F3E2E2
          E2FFE7E7E7FFCCCCCCFFBBBBBBFFB9B9B9FFB9B9B9FFBABABAFFBBBBBBFFBDBD
          BDFFBDBDBDFFBDBDBDFFBDBDBDFFBCBCBCFFBABABAFFB9B9B9FFB9B9B9FFBABA
          BAFFCBCBCBFFE5E5E5FFE2E2E2FF575757F91313135D0606061F000000000000
          0000000000000000000000000000000000000000000000000000575757F4DCDC
          DCFFC7C7C7FFC0C0C0FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5
          C5FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5
          C5FFC0C0C0FFC3C3C3FFDBDBDBFF575757F91313135D0606061F000000000000
          0000000000000000000000000000000000000000000000000000575757F4D1D1
          D1FFC9C9C9FFCFCFCFFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
          CEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
          CEFFCECECEFFCACACAFFCECECEFF575757F91212125C0606061E000000000000
          0000000000000000000000000000000000000000000000000000575757F4CBCB
          CBFFD6D6D6FFD7D7D7FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8
          D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8
          D8FFD8D8D8FFD6D6D6FFCDCDCDFF575757F91010105005050518000000000000
          00000000000000000000000000000000000000000000000000004D4D4DD98080
          80FFD7D7D7FFE0E0E0FFE0E0E0FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE0E0
          E0FFE0E0E0FFDBDBDBFF888888FF525252EA0A0A0A310202020C000000000000
          0000000000000000000000000000000000000000000000000000181818455353
          53E86F6F6FFFAFAFAFFFDCDCDCFFE7E7E7FFE7E7E7FFE8E8E8FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE8E8E8FFE7E7E7FFE7E7E7FFDFDF
          DFFFB3B3B3FF757575FF565656F5232323700303031001010103000000000000
          0000000000000000000000000000000000000000000000000000000000000E0E
          0E273737379E555555EE696969FF8B8B8BFFABABABFFC0C0C0FFD3D3D3FFDDDD
          DDFFE2E2E2FFE3E3E3FFDEDEDEFFDBDBDBFFC7C7C7FFAFAFAFFF8E8E8EFF6C6C
          6CFF545454F23C3C3CB114141441020202080000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000909091B2020205D34343496424242BC4C4C4CD9525252EA5656
          56F1565656F1565656F1565656F1525252EC515151E8474747CB383838A32424
          246A0D0D0D2A0101010500000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000101010105030303110707
          07210A0A0A310C0C0C3D0D0D0D430E0E0E450E0E0E470C0C0C3D080808260303
          030F010101030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010202020A060606200D0D0D3F1212
          1258151515671616166E17171771171717741A1A1A821C1C1C8B181818781010
          104F080808270303030D00000002000000000000000000000000000000000000
          000000000000000000000000000000000000000000020202020A040404140505
          0518050505180505051805050519070707230C0C0C3E131313611C1C1C832D2D
          2DAA3E3E3EC3494949CD444444CA383838C8282828AC232323AE232323B11F1F
          1F9C171717740E0E0E440606061E020202080000000100000000000000000000
          0000000000000000000000000000000000000101010404040414080808280A0A
          0A300A0A0A300A0A0A300B0B0B36101010501B1B1B7C3F3F3FC78D8D8DF5C5C5
          C5FFD3D3D3FFD0D0D0FFC3C3C3FFB1B1B1FF909090FF5A5A5AF5313131D12626
          26BC222222A91919197F0D0D0D43040404130000000100000000000000000000
          000000000000000000000000000000000000000000020202020A040404140505
          0518050505180505051B0A0A0A301D1D1D75707070E9DDDDDDFFF0F0F0FFDEDE
          DEFFCFCFCFFFBEBEBEFFB7B7B7FFB3B3B3FFAEAEAEFFA3A3A3FF7F7F7FFF4343
          43F12D2D2DBE1B1B1B890F0F0F4D040404150000000100000000000000000000
          0000000000000000000000000000000000001C1C1C40535353BF535353BF5353
          53BF545454C0525252C3494949D4808080FAF3F3F3FFE7E7E7FFD1D1D1FFC3C3
          C3FFA3A3A3FF9F9F9FFF939393FF979797FF939393FF8F8F8FFF8F8F8FFF7B7B
          7BFF474747FF484848E71515155F0606061D0101010300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001010106080808255F5F5FD2EFEFEFFFE3E3E3FFCDCDCDFFBFBFBFFFA9A9
          A9FFA3A3A3FFFFFFFFFFDCDCDCFF808080FF838383FF7E7E7EFF7B7B7BFF7B7B
          7BFF6C6C6CFF2E2E2EAB141414650A0A0A300202020900000000000000000000
          0000000000000000000000000001010101030101010602020208020202080202
          02090505051829292988CBCBCBFFE8E8E8FFCCCCCCFFBCBCBCFFAEAEAEFF9797
          97FFACACACFFFFFFFFFFEEEEEEFF7B7B7BFF757575FF737373FF707070FF6F6F
          6FFF707070FF525252E7181818780D0D0D420303031100000000000000000000
          00000000000000000002010101070303030E04040414050505180505051B0707
          07231A1A1A63636363DCE7E7E7FFCFCFCFFFBEBEBEFFAEAEAEFF9F9F9FFF8888
          88FFA9A9A9FFFFFFFFFFEEEEEEFF767676FF6F6F6FFF6F6F6FFF707070FF7070
          70FF737373FF6B6B6BFF2C2C2CAD121212580505051900000000000000000000
          00000000000202020208040404120505051A0606061E070707210909092D0E0E
          0E47343434AB999999FADBDBDBFFC1C1C1FFA7A7A7FF8F8F8FFF838383FF7171
          71FFA3A3A3FFFFFFFFFFEDEDEDFF737373FF6D6D6DFF6F6F6FFF6F6F6FFF7575
          75FF767676FF747474FF424242D7171717750808082700000002000000000000
          000101010105030303110F0F0F301B1B1B4D212121582222225D252525703737
          3793696969ECB1B1B1FFCDCDCDFFABABABFF9C9C9CFFC8C8C8FFC8C8C8FFC3C3
          C3FFDFDFDFFFFFFFFFFFF8F8F8FFC3C3C3FFBFBFBFFFC2C2C2FFB5B5B5FF7979
          79FF797979FF7B7B7BFF4F4F4FE91D1D1D8F0D0D0D420202020B000000000000
          00020404040E1717174023232357292929582D2D2D582F2F2F64646464B0AEAE
          AEF9818181FFAFAFAFFFC0C0C0FF979797FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FF8383
          83FF7E7E7EFF828282FF555555F41F1F1F991212125C0505051B000000000101
          010413131332232323552E2E2E582D2D2D582C2C2C5948484887AEAEAEF8CACA
          CAFF838383FF9F9F9FFFB5B5B5FF999999FF8D8D8DFFA8A8A8FFA5A5A5FF9F9F
          9FFFC9C9C9FFFFFFFFFFF5F5F5FFAAAAAAFFA6A6A6FFA9A9A9FF9F9F9FFF7F7F
          7FFF868686FF878787FF545454FF2F2F2FB01515156808080829000000000404
          040D2020204E2E2E2E562D2D2D592B2B2B592C2C2C5C8C8C8CD3C7C7C7FFD1D1
          D1FF919191FF888888FFACACACFF939393FF828282FF707070FF6D6D6DFF6B6B
          6BFFA3A3A3FFFFFFFFFFECECECFF797979FF787878FF7D7D7DFF818181FF8B8B
          8BFF8D8D8DFF888888FF535353FF606060F1151515680909092F000000000F0F
          0F242424244E2D2D2D562B2B2B5A2B2B2B5B2C2C2C5EB7B7B7FFD1D1D1FFCDCD
          CDFFB5B5B5FF797979FF9F9F9FFF8D8D8DFF7D7D7DFF737373FF6F6F6FFF6F6F
          6FFFA6A6A6FFFFFFFFFFECECECFF808080FF868686FF8B8B8BFF8F8F8FFF9090
          90FF979797FF808080FF787878FF707070FF252525840909092F000000001414
          142F2727274C2C2C2C562C2C2C5C2D2D2D5E51515188BCBCBCFFCFCFCFFFCCCC
          CCFFCBCBCBFF9F9F9FFF838383FF8B8B8BFF787878FF6F6F6FFF707070FF6F6F
          6FFFA7A7A7FFFFFFFFFFEDEDEDFF838383FF8B8B8BFF909090FF939393FF9999
          99FF9B9B9BFF686868FFA6A6A6FF7E7E7EFF2B2B2B8A08080829000000001414
          142E252525473131315933333362343434655656568DBBBBBBFFCFCFCFFFCFCF
          CFFFCFCFCFFFD1D1D1FF6F6F6FFF7F7F7FFF767676FF6F6F6FFF717171FF7171
          71FF8F8F8FFFE8E8E8FFC5C5C5FF818181FF909090FF969696FF9B9B9BFFA3A3
          A3FF808080FF9F9F9FFFC3C3C3FF818181FF2828287D0606061C000000000E0E
          0E21212121443939395A3B3B3B653D3D3D6B4040406FB7B7B7FFCFCFCFFFD3D3
          D3FFD3D3D3FFD7D7D7FFBBBBBBFF636363FF717171FF717171FF737373FF7777
          77FF777777FF7B7B7BFF7E7E7EFF8C8C8CFF939393FF9B9B9BFFA5A5A5FF8888
          88FF969696FFE3E3E3FFDBDBDBFF747474FF1D1D1D590202020C000000000303
          03081D1D1D413A3A3A56424242634444446B48484871959595D4C5C5C5FFD7D7
          D7FFD7D7D7FFDBDBDBFFDADADAFF8F8F8FFF6B6B6BFF6B6B6BFF757575FF7B7B
          7BFF7F7F7FFF838383FF8B8B8BFF939393FF9B9B9BFF9B9B9BFF7D7D7DFFA0A0
          A0FFEFEFEFFFF7F7F7FFC5C5C5FF626262E60404041301010103000000000000
          00001010102424242446454545604A4A4A674D4D4D6C6464648AB7B7B7FFCECE
          CEFFDBDBDBFFDEDEDEFFE2E2E2FFC3C3C3FF969696FF929292FF717171FF6E6E
          6EFF787878FF7F7F7FFF838383FF838383FF7B7B7BFF878787FFC8C8C8FFEBEB
          EBFFF3F3F3FFEBEBEBFF7D7D7DFF2525255C0101010300000000000000000000
          00000202020415151530222222453C3C3C574F4F4F65545454697B7B7BA2ACAC
          ACF3CACACAFFDADADAFFE3E3E3FFE7E7E7FFB6B6B6FF979797FFAFAFAFFFA5A5
          A5FF989898FF878787FF565656FF686868FFAAAAAAFFE7E7E7FFEBEBEBFFE7E7
          E7FFBFBFBFFF7E7E7EFF2B2B2B66000000020000000000000000000000000000
          000000000000000000000A0A0A18171717341C1C1C401C1C1C401C1C1C402A2A
          2A4C7272729FB7B7B7FFB7B7B7FFB7B7B7FFACACACEF6D6D6D9F848484CF9393
          93FF939393FF939393FF858585DF41414193626262E26F6F6FFF6F6F6FFF6F6F
          6FFF4D4D4DB01C1C1C4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020208080808270F0F0F4B0F0F0F4D0B0B
          0B350606061F0303031001010105000000010000000000000000000000000000
          000000000000000000000000000000000000000000020202020A040404140505
          0518050505180505051805050518050505180505051805050518050505180505
          0518050505180505051805050518262626631717174E13131361171717741515
          1569111111560C0C0C3E06060620020202090000000100000000000000000000
          0000000000000000000000000000000000000101010404040414080808280A0A
          0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A
          0A300A0A0A300A0A0A300A0A0A302A2A2A726F6F6FFF595959D9333333A61919
          197C1616166E111111550A0A0A32030303100000000100000000000000000000
          000000000000000000000000000000000000000000020202020A040404140505
          0518050505180505051805050518050505180505051805050518050505180505
          05180505051805050518050505180606061C626262E66F6F6FFF6F6F6FFF6464
          64EB3E3E3EA41010103E0505051A020202080000000100000000000000000000
          0000000000000000000000000000000000001C1C1C40535353BF535353BF5353
          53BF535353BF535353BF535353BF535353BF535353BF535353BF535353BF5353
          53BF535353BF535353BF535353BF545454C1696969F16F6F6FFF6F6F6FFF6F6F
          6FFF6F6F6FFF5B5B5BD107070712000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000008080816686868F06F6F6FFF6F6F6FFF4646
          46A11C1C1C410000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002A2A2A61616161DF38383881070707100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000151515300000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010202020A0101010600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000080808271717176D0E0E0E460202020C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000474747C65A5A5AF9242424AF14141462070707230000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000777777F6C5C5C5FF626262FB333333D51A1A1A830A0A
          0A30010101030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006F6F6FF6DADADAFFC7C7C7FF858585FF3C3C3CE61D1D
          1D930C0C0C3C0101010700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006D6D6DF6CBCBCBFFC5C5C5FFC9C9C9FF969696FF4242
          42EA212121A11010104E05050517000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006A6A6AF6C2C2C2FFBABABAFFBBBBBBFFC2C2C2FFA2A2
          A2FF555555F42B2B2BC317171771070707230000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000686868F6B7B7B7FFB1B1B1FFB1B1B1FFB1B1B1FFB6B6
          B6FFA9A9A9FF6C6C6CFE323232D61919197E0808082A00000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000656565F6ACACACFFA7A7A7FFA6A6A6FFA6A6A6FFA6A6
          A6FFA9A9A9FFA9A9A9FF767676FF393939E01D1D1D8F0E0E0E47040404120000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000626262F6A1A1A1FF9C9C9CFF9B9B9BFF9C9C9CFF9C9C
          9CFF9C9C9CFF9C9C9CFFA1A1A1FF7E7E7EFF494949F3292929B9101010510101
          0106000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000606060F6969696FF919191FF919191FF919191FF9191
          91FF919191FF919191FF919191FF969696FF868686FF505050FA1616166F0202
          0209000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000005D5D5DF68B8B8BFF878787FF878787FF868686FF8787
          87FF868686FF878787FF868686FF898989FF7F7F7FFF464646DF0B0B0B360000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000005A5A5AF6828282FF7F7F7FFF7F7F7FFF7E7E7EFF7E7E
          7EFF7E7E7EFF7F7F7FFF808080FF717171FF444444E10E0E0E43000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000575757F6767676FF747474FF747474FF747474FF7373
          73FF747474FF747474FF646464FF3D3D3DD30B0B0B3600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000545454F66C6C6CFF6A6A6AFF6B6B6BFF6A6A6AFF6C6C
          6CFF6D6D6DFF5A5A5AFF363636BE0909092A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000525252F6646464FF626262FF626262FF636363FF6A6A
          6AFF535353F62323238604040414000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000505050F65D5D5DFF5A5A5AFF5F5F5FFF656565FF5050
          50F3181818670101010300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004E4E4EF6565656FF616161FF616161FF4B4B4BEE1414
          145A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004D4D4DF6616161FF606060FF454545E51212124E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000595959F5646464FF3C3C3CD30D0D0D3B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003A3A3AAF424242C90A0A0A2F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000303030E0D0D
          0D400E0E0E450E0E0E440E0E0E440E0E0E440E0E0E440E0E0E440E0E0E440E0E
          0E440E0E0E440E0E0E440E0E0E440E0E0E440E0E0E440E0E0E440E0E0E450D0D
          0D420505051B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000303030BA3A3A
          3ADE3F3F3FE13F3F3FE03F3F3FE03F3F3FE03F3F3FE03F3F3FE03F3F3FE03F3F
          3FE03F3F3FE03F3F3FE03F3F3FE03F3F3FE03F3F3FE03D3D3DE03A3A3AE52D2D
          2DC90D0D0D420000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000646464F9B2B2
          B2FFB4B4B4FFB6B6B6FFB6B6B6FFB5B5B5FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
          B6FFB5B5B5FFB6B6B6FFB6B6B6FFB6B6B6FFB5B5B5FFB4B4B4FFAAAAAAFF3939
          39E10E0E0E450000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000686868F9B4B4
          B4FFB9B9B9FFBABABAFFBABABAFFBABABAFFBABABAFFBABABAFFBABABAFFBABA
          BAFFBABABAFFBABABAFFBABABAFFBABABAFFB9B9B9FFB8B8B8FFB0B0B0FF3D3D
          3DE00E0E0E440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000686868F9AEAE
          AEFFB2B2B2FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
          B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB2B2B2FFABABABFF3F3F
          3FE00E0E0E440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000676767F9A8A8
          A8FFACACACFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
          ADFFADADADFFADADADFFADADADFFADADADFFADADADFFACACACFFA7A7A7FF3F3F
          3FE00E0E0E440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000676767F9A4A4
          A4FFA7A7A7FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8
          A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA3A3A3FF3F3F
          3FE00E0E0E440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000666666F9A1A1
          A1FFA3A3A3FFA4A4A4FFA3A3A3FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4
          A4FFA4A4A4FFA3A3A3FFA4A4A4FFA4A4A4FFA4A4A4FFA3A3A3FFA0A0A0FF3F3F
          3FE00E0E0E440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000656565F99D9D
          9DFF9E9E9EFF9E9E9EFF9F9F9FFF9E9E9EFF9E9E9EFF9F9F9FFF9E9E9EFF9F9F
          9FFF9F9F9FFF9E9E9EFF9F9F9FFF9F9F9FFF9F9F9FFF9E9E9EFF9D9D9DFF3F3F
          3FE00E0E0E440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000656565F99A9A
          9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A
          9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF3F3F
          3FE00E0E0E440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000646464F99999
          99FF989898FF989898FF989898FF989898FF989898FF989898FF989898FF9898
          98FF989898FF989898FF989898FF989898FF989898FF999999FF989898FF3F3F
          3FE00E0E0E440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000636363F99999
          99FF979797FF979797FF979797FF979797FF979797FF979797FF979797FF9797
          97FF979797FF979797FF979797FF979797FF979797FF979797FF969696FF3F3F
          3FE00E0E0E440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000636363F99797
          97FF949494FF959595FF959595FF959595FF959595FF959595FF959595FF9595
          95FF959595FF959595FF959595FF959595FF959595FF959595FF939393FF3F3F
          3FE00E0E0E440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000616161F99191
          91FF909090FF919191FF919191FF919191FF929292FF919191FF929292FF9292
          92FF929292FF929292FF919191FF919191FF919191FF909090FF8E8E8EFF3F3F
          3FE00E0E0E440000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000606060F98C8C
          8CFF8C8C8CFF8D8D8DFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E
          8EFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E8EFF8D8D8DFF8C8C8CFF898989FF3F3F
          3FE00E0E0E440000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005E5E5EF98686
          86FF888888FF898989FF898989FF898989FF8A8A8AFF8A8A8AFF8A8A8AFF8A8A
          8AFF8A8A8AFF898989FF898989FF898989FF898989FF888888FF848484FF3F3F
          3FE00E0E0E440000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005D5D5DF98080
          80FF838383FF848484FF858585FF858585FF858585FF858585FF858585FF8585
          85FF858585FF858585FF858585FF848484FF848484FF838383FF7F7F7FFF3F3F
          3FE00E0E0E440000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005C5C5CF97979
          79FF7D7D7DFF7F7F7FFF7F7F7FFF7E7E7EFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
          7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7E7E7EFF7D7D7DFF787878FF3F3F
          3FE10E0E0E460000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000585858F96868
          68FF6E6E6EFF6F6F6FFF707070FF6F6F6FFF707070FF707070FF707070FF7070
          70FF707070FF707070FF707070FF707070FF6F6F6FFF6D6D6DFF686868FF3B3B
          3BD50A0A0A330000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003C3C3CA64D4D
          4DAE4F4F4FAE515151AE515151AE515151AE515151AE515151AF515151AF5151
          51AF515151AF515151AF515151AE515151AE515151AE4F4F4FAE4F4F4FB62020
          2078000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000000000000000000000000000002020208070707240F0F0F4A101010520D0D
          0D430A0A0A340808082A07070721040404160303030F0202020A010101050000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000080808235F5F5FBB797979DE595959CD3939
          39B32D2D2DA12323238D19191973111111570F0F0F490E0E0E46272727873232
          32932F2F2F8C141414520303030F010101070101010300000001141414492B2B
          2B7D2F2F2F821D1D1D620303030E000000000000000000000000000000000000
          00000000000000000000000000000C0C0C329F9F9FF8F3F3F3FFE9E9E9FFDADA
          DAFFCECECEFFAEAEAEF8828282E65A5A5AD44A4A4AC73E3E3EBB808080FBABAB
          ABFFA2A2A2FF414141BF0F0F0F4A0A0A0A340808082906060620525252BA9F9F
          9FFFAEAEAEFF696969DD0E0E0E2F000000000000000000000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FDFDFDFFFBFBFBFFFBFB
          FBFFFBFBFBFFF8F8F8FFF5F5F5FFF3F3F3FFF2F2F2FFC9C9C9FF939393FFB9B9
          B9FFADADADFF5D5D5DEB393939AE232323921F1F1F8719191973525252C7ABAB
          ABFFBCBCBCFF7A7A7AE910101034000000000000000000000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FDFDFDFFBFBFBFFFA9A9
          A9FFAEAEAEFFB6B6B6FFC3C3C3FFD3D3D3FFDBDBDBFF979797FF939393FFA8A8
          A8FF9D9D9DFF838383FFCCCCCCFFC7C7C7FFB7B7B7FE868686EC707070F89D9D
          9DFFABABABFF8F8F8FFF3636368E020202070000000000000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FDFDFDFFC1C1C1FFADAD
          ADFFB1B1B1FFB1B1B1FFB0B0B0FFAEAEAEFF909090FF929292FF9E9E9EFF9D9D
          9DFF8D8D8DFF818181FF858585FFB3B3B3FFAFAFAFFF8C8C8CFF818181FF8E8E
          8EFF9D9D9DFF9F9F9FFF8B8B8BF7171717530000000000000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FDFDFDFFC2C2C2FFAFAF
          AFFFB2B2B2FFB3B3B3FFB5B5B5FFB1B1B1FF8F8F8FFFA0A0A0FFC1C1C1FFD2D2
          D2FFB1B1B1FF8E8E8EFF959595FFB1B1B1FFACACACFF999999FF8E8E8EFFB3B3
          B3FFD3D3D3FFBFBFBFFFA3A3A3FF2E2E2E850000000000000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FDFDFDFFC3C3C3FFB0B0
          B0FFB3B3B3FFB5B5B5FFB7B7B7FFAFAFAFFF8C8C8CFF9F9F9FFFC1C1C1FFD3D3
          D3FFB3B3B3FF8D8D8DFF939393FFB3B3B3FFACACACFF979797FF8E8E8EFFB3B3
          B3FFD3D3D3FFBFBFBFFFA1A1A1FF393939980101010500000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FDFDFDFFC3C3C3FFB3B3
          B3FFB7B7B7FFB7B7B7FFB9B9B9FFABABABFF8A8A8AFF9F9F9FFFC0C0C0FFD1D1
          D1FFB2B2B2FF8D8D8DFF8F8F8FFF939393FF939393FF8F8F8FFF8F8F8FFFB3B3
          B3FFD3D3D3FFBEBEBEFFA1A1A1FF444444AB0303030B00000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FCFCFCFFC6C6C6FFB3B3
          B3FFB8B8B8FFBABABAFFBBBBBBFFA7A7A7FF898989FF9F9F9FFFBFBFBFFFD1D1
          D1FFB2B2B2FF8D8D8DFF8E8E8EFF8E8E8EFF8F8F8FFF8D8D8DFF909090FFB3B3
          B3FFD2D2D2FFBEBEBEFFA0A0A0FF505050BE0404041300000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FCFCFCFFC7C7C7FFB7B7
          B7FFBBBBBBFFBBBBBBFFBEBEBEFFA2A2A2FF878787FF9F9F9FFFC3C3C3FFD7D7
          D7FFB5B5B5FF8E8E8EFF959595FFB3B3B3FFABABABFF989898FF8F8F8FFFB7B7
          B7FFD7D7D7FFC0C0C0FFA0A0A0FF5C5C5CD00808082400000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FCFCFCFFC9C9C9FFB9B9
          B9FFBDBDBDFFBFBFBFFFC0C0C0FFA5A5A5FF8C8C8CFF9B9B9BFFABABABFFB3B3
          B3FF9E9E9EFF838383FF8B8B8BFFA1A1A1FF9C9C9CFF8B8B8BFF858585FF9F9F
          9FFFB5B5B5FFABABABFF9C9C9CFF666666D90B0B0B2D00000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FCFCFCFFCBCBCBFFBBBB
          BBFFBFBFBFFFC1C1C1FFC3C3C3FFB2B2B2FF979797FFA3A3A3FFADADADFFA3A3
          A3FF8F8F8FFF7D7D7DFFB0B0B0FFD3D3D3FFD8D8D8FFB7B7B7FF808080FF9191
          91FFA6A6A6FFACACACFFA7A7A7FF606060C80707071B00000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FCFCFCFFCCCCCCFFBEBE
          BEFFC2C2C2FFC3C3C3FFC6C6C6FFA5A5A5FF8E8E8EFFACACACFFD0D0D0FFCDCD
          CDFFA5A5A5FF878787FFB6B6B6FFDCDCDCFFDFDFDFFFC0C0C0FF898989FFA8A8
          A8FFCFCFCFFFCFCFCFFFACACACFF666666D70909092B00000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FCFCFCFFCFCFCFFFC0C0
          C0FFC3C3C3FFC7C7C7FFC9C9C9FFA3A3A3FF8F8F8FFFABABABFFCDCDCDFFC8C8
          C8FFA3A3A3FF878787FFB7B7B7FFE0E0E0FFE3E3E3FFBFBFBFFF8B8B8BFFA6A6
          A6FFCACACAFFCBCBCBFFABABABFF727272E50F0F0F3C00000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FCFCFCFFD1D1D1FFC3C3
          C3FFC7C7C7FFC9C9C9FFCBCBCBFF9F9F9FFF8F8F8FFFABABABFFCDCDCDFFC9C9
          C9FFA3A3A3FF868686FFB3B3B3FFDBDBDBFFE7E7E7FFC2C2C2FF8B8B8BFFA6A6
          A6FFCACACAFFCBCBCBFFAAAAAAFF7C7C7CF11515154F00000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FCFCFCFFD3D3D3FFC6C6
          C6FFCACACAFFCCCCCCFFCFCFCFFF9B9B9BFF8D8D8DFFAAAAAAFFCDCDCDFFC8C8
          C8FFA3A3A3FF868686FFAEAEAEFFCACACAFFE1E1E1FFC7C7C7FF8C8C8CFFA6A6
          A6FFCACACAFFCBCBCBFFA8A8A8FF838383FA1C1C1C6100000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FCFCFCFFD6D6D6FFC9C9
          C9FFCDCDCDFFCFCFCFFFD2D2D2FF979797FF8D8D8DFFAAAAAAFFCDCDCDFFC8C8
          C8FFA3A3A3FF858585FFAFAFAFFFC0C0C0FFC7C7C7FFC3C3C3FF8D8D8DFFA6A6
          A6FFCACACAFFCBCBCBFFA8A8A8FF888888FF2424247300000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FCFCFCFFD7D7D7FFCCCC
          CCFFCFCFCFFFD3D3D3FFD5D5D5FF909090FF8B8B8BFFADADADFFD3D3D3FFCFCF
          CFFFA7A7A7FF868686FFABABABFFBBBBBBFFAEAEAEFFACACACFF8A8A8AFFA8A8
          A8FFD0D0D0FFD1D1D1FFABABABFF8B8B8BFF3030308C00000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FCFCFCFFDADADAFFCFCF
          CFFFD3D3D3FFD5D5D5FFD7D7D7FF9D9D9DFF939393FFA2A2A2FFBBBBBBFFB7B7
          B7FF9F9F9FFF919191FFAEAEAEFFBFBFBFFFC1C1C1FFA1A1A1FF999999FF9B9B
          9BFFB8B8B8FFB9B9B9FF979797F5717171D72F2F2F7800000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FCFCFCFFDCDCDCFFD2D2
          D2FFD6D6D6FFD8D8D8FFDBDBDBFFCFCFCFFFC7C7C7FFA8A8A8FF939393FF9595
          95FFB3B3B3FFC9C9C9FFB9B9B9FFCFCFCFFFFBFBFBFFE1E1E1FFD7D7D7FF9999
          99FF656565DD636363CD4141418A1D1D1D3D0A0A0A1900000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FBFBFBFFDEDEDEFFD5D5
          D5FFD9D9D9FFDBDBDBFFDEDEDEFFE0E0E0FFE3E3E3FFE6E6E6FFE8E8E8FFEBEB
          EBFFEFEFEFFFDBDBDBFFBBBBBBFFE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFA9A9
          A9F10F0F0F490303030F00000000000000000000000000000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FBFBFBFFE1E1E1FFD8D8
          D8FFDBDBDBFFDEDEDEFFE1E1E1FFE3E3E3FFE7E7E7FFE8E8E8FFEBEBEBFFEFEF
          EFFFF1F1F1FFD6D6D6FFC7C7C7FFF5F5F5FFFFFFFFFFFFFFFFFFE4E4E4FC3737
          3787050505190101010400000000000000000000000000000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FBFBFBFFE3E3E3FFDBDB
          DBFFDEDEDEFFE1E1E1FFE3E3E3FFE7E7E7FFE9E9E9FFEBEBEBFFEEEEEEFFF1F1
          F1FFF3F3F3FFD6D6D6FFDBDBDBFFFEFEFEFFFFFFFFFFECECECFF393939870505
          0517010101030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FBFBFBFFE6E6E6FFDEDE
          DEFFE2E2E2FFE3E3E3FFE7E7E7FFE9E9E9FFECECECFFEFEFEFFFF1F1F1FFF3F3
          F3FFF3F3F3FFDBDBDBFFE6E6E6FFFFFFFFFFF0F0F0FF44444495040404160101
          0103000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FBFBFBFFE8E8E8FFE1E1
          E1FFE5E5E5FFE7E7E7FFE9E9E9FFECECECFFEFEFEFFFF1F1F1FFF3F3F3FFF7F7
          F7FFF3F3F3FFDDDDDDFFFBFBFBFFEFEFEFFF4E4E4EA20606061C010101040000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C0C0C329B9B9BF3FBFBFBFFEBEBEBFFE3E3
          E3FFE7E7E7FFEAEAEAFFECECECFFEFEFEFFFF1F1F1FFF3F3F3FFF6F6F6FFF8F8
          F8FFF3F3F3FFF2F2F2FFEBEBEBFF4848489A0606061D01010103000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C0C0C319B9B9BF3FBFBFBFFECECECFFE7E7
          E7FFEAEAEAFFEEEEEEFFF3F3F3FFF7F7F7FFFBFBFBFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFE2E2E2FF505050A5070707210101010500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C0C0C319B9B9BF3FDFDFDFFFDFDFDFFFEFE
          FEFFFFFFFFFFFFFFFFFFFBFBFBFFF5F5F5FFF1F1F1FFEDEDEDFFD4D4D4FCAFAF
          AFEE8B8B8BE14848489B08080822010101040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B2E9F9F9FF8F3F3F3FFE7E7E7FFDADA
          DAFFD2D2D2FFBBBBBBF7929292D9646464B7404040A03434348C222222611111
          11340303030F0000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000006060619595959AB727272C65050509E2B2B
          2B6F18181855121212420B0B0B290303030C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000002040404130707071C040404100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000202020907070721040404120000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001010101030505
          051B14141453393939A12222228A0A0A0A310000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020208050505180C0C0C39333333975E5E
          5ED57A7A7AE9ADADADFF3E3E3EC00B0B0B380000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001040404140C0C0C371A1A1A66444444B4818181F69C9C9CFCD1D1
          D1FFEDEDEDFFC8C8C8FF3D3D3DC00B0B0B370000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101060909
          092A1717175D32323297707070E59D9D9DFFB8B8B8FFDADADAFFEAEAEAFFF2F2
          F2FFDDDDDDFF9F9F9FFF3D3D3DC00B0B0B370000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001020202090404041610101047313131955555
          55CB8A8A8AF6B0B0B0FFCACACAFFE1E1E1FFEEEEEEFFEFEFEFFFEFEFEFFFE2E2
          E2FFA0A0A0FF979797FF3D3D3DC00B0B0B370000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001010106050505190B0B0B351F1F1F764C4C4CC1797979EDA4A4A4FEC1C1
          C1FFDCDCDCFFE7E7E7FFEEEEEEFFEFEFEFFFECECECFFECECECFFE6E6E6FFAFAF
          AFFF999999FFA7A7A7FF3D3D3DC00B0B0B370000000000000000000000000000
          00000000000000000000000000000000000000000000000000000303030D0A0A
          0A3118181862353535A06F6F6FE9999999FFB7B7B7FFCECECEFFE5E5E5FFEDED
          EDFFEDEDEDFFECECECFFE9E9E9FFE9E9E9FFE8E8E8FFEAEAEAFFC2C2C2FF8C8C
          8CFFADADADFFA8A8A8FF3D3D3DC00B0B0B370000000000000000000000000000
          0000000000000000000000000001010101040606061E151515593434349B5050
          50C9909090FDABABABFFC8C8C8FFDCDCDCFFEEEEEEFFEEEEEEFFECECECFFEAEA
          EAFFE8E8E8FFE8E8E8FFE5E5E5FFE3E3E3FFE4E4E4FFCCCCCCFF949494FFA7A7
          A7FFB3B3B3FFA9A9A9FF3D3D3DC00B0B0B370000000000000000000000000000
          000000000000020202090A0A0A343737379F5A5A5AD2747474EBA1A1A1FFBFBF
          BFFFDADADAFFE8E8E8FFF1F1F1FFEEEEEEFFE9E9E9FFE8E8E8FFE7E7E7FFE5E5
          E5FFE3E3E3FFE0E0E0FFDDDDDDFFDCDCDCFFD2D2D2FF969696FF979797FFB3B3
          B3FFB5B5B5FFABABABFF3D3D3DC00B0B0B370000000000000000000000000000
          0000000000002B2B2B6D7C7C7CF8949494FCAFAFAFFFCECECEFFE9E9E9FFEBEB
          EBFFEEEEEEFFEBEBEBFFE9E9E9FFE6E6E6FFE5E5E5FFE3E3E3FFE0E0E0FFDDDD
          DDFFDCDCDCFFD9D9D9FFD7D7D7FFD7D7D7FFA6A6A6FF8F8F8FFFAFAFAFFFB3B3
          B3FFB9B9B9FFADADADFF3D3D3DC00B0B0B370000000000000000000000000000
          0000000000008C8C8CFBC6C6C6FFDCDCDCFFEFEFEFFFECECECFFEAEAEAFFE9E9
          E9FFE7E7E7FFE5E5E5FFE4E4E4FFDFDFDFFFDCDCDCFFDBDBDBFFD9D9D9FFD7D7
          D7FFD6D6D6FFD5D5D5FFD7D7D7FFB8B8B8FF929292FFAEAEAEFFB2B2B2FFB5B5
          B5FFBCBCBCFFB0B0B0FF3D3D3DC00B0B0B370000000000000000000000000000
          000000000000939393FBF5F5F5FFEEEEEEFFE8E8E8FFE7E7E7FFE5E5E5FFE2E2
          E2FFDFDFDFFFDDDDDDFFDADADAFFD9D9D9FFD7D7D7FFD6D6D6FFD5D5D5FFD2D2
          D2FFD1D1D1FFD3D3D3FFC3C3C3FF8B8B8BFFA9A9A9FFB2B2B2FFB5B5B5FFB8B8
          B8FFC1C1C1FFB3B3B3FF3D3D3DC00B0B0B370000000000000000000000000000
          000000000000848484FBAFAFAFFFDADADAFFE4E4E4FFE0E0E0FFDDDDDDFFDBDB
          DBFFD9D9D9FFD7D7D7FFD6D6D6FFD5D5D5FFD3D3D3FFD2D2D2FFD0D0D0FFCECE
          CEFFCFCFCFFFC7C7C7FF949494FF989898FFB2B2B2FFB5B5B5FFB8B8B8FFBCBC
          BCFFC4C4C4FFB4B4B4FF3C3C3CC00B0B0B370000000000000000000000000000
          000000000000868686FB939393FF979797FFC1C1C1FFD7D7D7FFDADADAFFD6D6
          D6FFD4D4D4FFD3D3D3FFD2D2D2FFD1D1D1FFCFCFCFFFCDCDCDFFCCCCCCFFCBCB
          CBFFC9C9C9FFA0A0A0FF979797FFB3B3B3FFB5B5B5FFB7B7B7FFBCBCBCFFC0C0
          C0FFC8C8C8FFB7B7B7FF3C3C3CC00B0B0B370000000000000000000000000000
          000000000000878787FBA5A5A5FF9C9C9CFF909090FFA5A5A5FFCDCDCDFFD4D4
          D4FFD1D1D1FFCECECEFFCDCDCDFFCCCCCCFFCBCBCBFFC9C9C9FFC8C8C8FFCACA
          CAFFADADADFF939393FFB0B0B0FFB5B5B5FFB7B7B7FFBBBBBBFFBFBFBFFFC3C3
          C3FFCCCCCCFFB9B9B9FF3C3C3CC00B0B0B370000000000000000000000000000
          000000000000888888FBA8A8A8FFA4A4A4FFA0A0A0FF919191FF9B9B9BFFBABA
          BAFFCCCCCCFFCCCCCCFFCACACAFFC9C9C9FFC7C7C7FFC6C6C6FFC8C8C8FFB7B7
          B7FF8C8C8CFFB5B5B5FFB7B7B7FFB7B7B7FFBBBBBBFFBFBFBFFFC3C3C3FFC7C7
          C7FFD0D0D0FFBDBDBDFF3C3C3CC00B0B0B370000000000000000000000000000
          000000000000898989FBB0B0B0FFA8A8A8FFA6A6A6FFA4A4A4FF9A9A9AFF9090
          90FFA6A6A6FFC0C0C0FFC7C7C7FFC5C5C5FFC5C5C5FFC5C5C5FFB8B8B8FF9090
          90FFACACACFF969696FFA5A5A5FFBDBDBDFFC0C0C0FFC4C4C4FFC7C7C7FFCBCB
          CBFFD6D6D6FFC0C0C0FF3C3C3CBE0B0B0B360000000000000000000000000000
          0000000000008A8A8AFBB8B8B8FFAFAFAFFFABABABFFA7A7A7FFA7A7A7FF9D9D
          9DFF8E8E8EFF9E9E9EFF9E9E9EFFA7A7A7FFA8A8A8FFA3A3A3FF979797FFC4C4
          C4FFE5E5E5FFDFDFDFFFB3B3B3FF949494FFADADADFFBDBDBDFFD1D1D1FFD1D1
          D1FFDBDBDBFFC4C4C4FF3B3B3BBD0A0A0A340000000000000000000000000000
          0000000000008C8C8CFBC1C1C1FFB8B8B8FFB3B3B3FFB1B1B1FFA5A5A5FF9393
          93FFC5C5C5FFD0D0D0FFA9A9A9FFAAAAAAFFAAAAAAFFB6B6B6FFE1E1E1FFE7E7
          E7FFE8E8E8FFE8E8E8FFE8E8E8FFDEDEDEFFB7B7B7FF9E9E9EFFA8A8A8FFCFCF
          CFFFEAEAEAFFC8C8C8FF3B3B3BBC0A0A0A340000000000000000000000000000
          0000000000008D8D8DFBCACACAFFC0C0C0FFBDBDBDFFAFAFAFFF949494FFC9C9
          C9FFE6E6E6FFE6E6E6FFE7E7E7FFE7E7E7FFE8E8E8FFE8E8E8FFE9E9E9FFEAEA
          EAFFEAEAEAFFEAEAEAFFEBEBEBFFECECECFFECECECFFE2E2E2FFBDBDBDFFA2A2
          A2FFADADADFFC6C6C6FF373737AF080808260000000000000000000000000000
          0000000000008F8F8FFBD6D6D6FFCCCCCCFFB6B6B6FF959595FFCECECEFFE8E8
          E8FFE9E9E9FFE9E9E9FFE9E9E9FFEAEAEAFFEBEBEBFFECECECFFEDEDEDFFEEEE
          EEFFEEEEEEFFEEEEEEFFEEEEEEFFECECECFFECECECFFECECECFFECECECFFE5E5
          E5FFC1C1C1FF969696FF2929298C030303100000000000000000000000000000
          000000000000929292FBE9E9E9FFBCBCBCFF979797FFD1D1D1FFEBEBEBFFECEC
          ECFFEEEEEEFFEEEEEEFFEFEFEFFFEEEEEEFFECECECFFE8E8E8FFE5E5E5FFE6E6
          E6FFE6E6E6FFE4E4E4FFE2E2E2FFD9D9D9FFD6D6D6FFD5D5D5FFD7D7D7FFE4E4
          E4FFEEEEEEFF7E7E7EE41111114C010101030000000000000000000000000000
          000000000000939393FAC9C9C9FF9C9C9CFFDBDBDBFFEEEEEEFFEBEBEBFFE0E0
          E0FFDADADAFFDADADAFFDBDBDBFFDADADAFFD7D7D7FFD1D1D1FFCDCDCDFFCECE
          CEFFCECECEFFCECECEFFCFCFCFFFD0D0D0FFCECECEFFD4D4D4FFE5E5E5FFF4F4
          F4FFB9B9B9FF3A3A3AA104040413000000000000000000000000000000000000
          000000000000777777E8989898FFC1C1C1FFCDCDCDFFCDCDCDFFCCCCCCFFC9C9
          C9FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7C7FFC7C7C7FFC8C8C8FFC8C8C8FFC8C8
          C8FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8C8FFD4D4D4FFE6E6E6FFEFEFEFFFBEBE
          BEFF5D5D5DCD0B0B0B2E00000000000000000000000000000000000000000000
          00000000000042424281B7B7B7FFC9C9C9FFC6C6C6FFC2C2C2FFC0C0C0FFC1C1
          C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
          C1FFC1C1C1FFC0C0C0FFC3C3C3FFD4D4D4FFE3E3E3FFD9D9D9FFA9A9A9FF5454
          54B5101010350101010300000000000000000000000000000000000000000000
          0000000000000A0A0A15535353A69E9E9EFDC0C0C0FFC6C6C6FFC3C3C3FFBABA
          BAFFB9B9B9FFBABABAFFBABABAFFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFFBABA
          BAFFB9B9B9FFC1C1C1FFD5D5D5FFDBDBDBFFC1C1C1FF8C8C8CF5343434850505
          0514000000000000000000000000000000000000000000000000000000000000
          00000000000000000000040404072A2A2A556A6A6AC9A1A1A1FEBDBDBDFFC6C6
          C6FFBFBFBFFFB4B4B4FFB4B4B4FFB5B5B5FFB5B5B5FFB4B4B4FFB4B4B4FFB4B4
          B4FFC3C3C3FFD3D3D3FFD0D0D0FFACACACFF666666CF1D1D1D51010101050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000505050B3636366D727272D3A1A1
          A1FFC6C6C6FFC6C6C6FFBCBCBCFFB8B8B8FFB9B9B9FFBFBFBFFFC4C4C4FFC8C8
          C8FFCDCDCDFFC2C2C2FF959595FD474747A40707072000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000D0D0D1A3E3E
          3E7B767676DB999999FABDBDBDFFC4C4C4FFC6C6C6FFC5C5C5FFC0C0C0FFB9B9
          B9FFADADADFF757575E12929296B020202090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121225313131645F5F5FBB8C8C8CF6999999FF929292FD787878E36161
          61C24343438F1010102E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000707070D1F1F1F3E2424244C1B1B1B3C1313132A0C0C
          0C19000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001040404130A0A0A34101010521313
          135F13131361111111550B0B0B37040404140000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000303030F1E1E1E623C3C3CB3494949D04D4D
          4DD8444444CE2E2E2EB01A1A1A810E0E0E440303031000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000019191948666666EF787878FF878787FF9F9F
          9FFF9F9F9FFF717171FA343434C3181818770707072400000000000000000000
          0000000000000000000000000000010101040303030D0606061C080808280808
          082A070707240505051702020209000000010000000000000000000000000000
          0000000000000000000000000000696969EF7A7A7AFF8E8E8EFF9A9A9AFFE0E0
          E0FFEDEDEDFFA4A4A4FF707070FB1C1C1C8A0909092D00000000000000000000
          0000000000000000000002020209070707230E0E0E481515156A1919197F1A1A
          1A84181818781313135D0B0B0B37040404140101010300000000000000000000
          00000000000102020208030303116B6B6BF67A7A7AFF828282FF8A8A8AFFC5C5
          C5FFBABABAFFBFBFBFFF757575FC1E1E1E950D0D0D4004040416040404160404
          0416040404160505051A1111113E656565B4B1B1B1F5C3C3C3FEB8B8B8FE9D9D
          9DFB686868E42D2D2DB21A1A1A820F0F0F490505051801010103000000000101
          0104050505190B0B0B38101010525A5A5AF9636363FF676767FF6D6D6DFF9494
          94FF929292FF989898FF636363FD242424B61818187A1313135E1313135E1313
          135E1313135E1D1D1D70A9A9A9EEE4E4E4FFD0D0D0FFB6B6B6FFACACACFFA8A8
          A8FFA5A5A5FF878787FC393939C71C1C1C8A0E0E0E4703030310000000020606
          061B2F2F2F79616161C7757575E17C7C7CFE7B7B7BFF7B7B7BFF797979FF8181
          81FF7F7F7FFF7E7E7EFF707070FE656565EF616161E25E5E5EDC5C5C5CDC5B5B
          5BDC575757DAA1A1A1F6EFEFEFFFC5C5C5FFA1A1A1FF999999FF999999FF9A9A
          9AFF9A9A9AFF9B9B9BFF808080FD383838C617171774070707220A0A0A168484
          84C1EEEEEEFEF8F8F8FFF1F1F1FFECECECFFE6E6E6FFDFDFDFFFD8D8D8FFD1D1
          D1FFC9C9C9FFC2C2C2FFBBBBBBFFB5B5B5FFADADADFFA2A2A2FF9B9B9BFF9292
          92FF9E9E9EFFE9E9E9FFD5D5D5FF9A9A9AFF999999FF999999FF999999FF9999
          99FF999999FF999999FF999999FF656565F11515156B070707224A4A4A75F8F8
          F8FFEAEAEAFFC8C8C8FFBEBEBEFFBBBBBBFFB9B9B9FFB6B6B6FFB2B2B2FFAFAF
          AFFFACACACFFA9A9A9FFA7A7A7FFA4A4A4FF9F9F9FFF989898FF959595FF8E8E
          8EFFB6B6B6FFF5F5F5FFACACACFF999999FF999999FF999999FF8C8C8CFF8585
          85FF858585FF858585FF848484FF696969F20C0C0C3A03030311999999CFFEFE
          FEFFA8A8A8FF999999FF999999FF999999FF999999FF999999FF999999FF9999
          99FF999999FF999999FF999999FF999999FF979797FF939393FF909090FF8E8E
          8EFFC6C6C6FFEAEAEAFF9A9A9AFF999999FF999999FF8B8B8BFF676767F63A3A
          3ABE2F2F2F992E2E2E8E2E2E2E90222222780C0C0C3D03030311A0A0A0D5FCFC
          FCFFA8A8A8FF999999FF999999FF999999FF999999FF999999FF999999FF9999
          99FF999999FF999999FF999999FF999999FF979797FF939393FF909090FF8E8E
          8EFFC9C9C9FFEAEAEAFF9A9A9AFF999999FF999999FF878787FF636363F34343
          43D2404040C9404040C7414141C92F2F2FB11616166E070707224B4B4B6FF8F8
          F8FFEAEAEAFFC8C8C8FFBEBEBEFFBBBBBBFFB9B9B9FFB6B6B6FFB3B3B3FFB0B0
          B0FFACACACFFA9A9A9FFA7A7A7FFA5A5A5FFA1A1A1FF9B9B9BFF949494FF8E8E
          8EFFB9B9B9FFF7F7F7FFA9A9A9FF999999FF999999FF989898FF8C8C8CFF8989
          89FF898989FF898989FF888888FF6A6A6AF918181876070707230707070A8080
          80AFEEEEEEFEF8F8F8FFF1F1F1FFECECECFFE7E7E7FFE0E0E0FFD9D9D9FFD1D1
          D1FFC9C9C9FFC2C2C2FFBCBCBCFFB7B7B7FFAFAFAFFFA6A6A6FF9D9D9DFF9393
          93FFA2A2A2FFEFEFEFFFD2D2D2FF999999FF999999FF999999FF999999FF9999
          99FF999999FF999999FF9A9A9AFF666666F20F0F0F4A04040412000000000000
          00012323233D5555558D6C6C6CB47F7F7FFC828282FF818181FF828282FF8F8F
          8FFF8D8D8DFF8A8A8AFF737373FD616161D6585858B3535353A2525252A45252
          52A64E4E4EA2AAAAAAEBF3F3F3FFC9C9C9FFA1A1A1FF999999FF999999FF9A9A
          9AFF9D9D9DFF9E9E9EFF868686FC2D2D2D850505051B01010104000000000000
          0000000000000000000000000000717171F5808080FF828282FF8A8A8AFFA8A8
          A8FFA3A3A3FFA2A2A2FF757575FC1A1A1A830808082900000000000000000000
          00000000000015151520AEAEAEE3EAEAEAFFD5D5D5FFBABABAFFB1B1B1FFB0B0
          B0FFAFAFAFFF8E8E8EF9323232820606061A0101010400000000000000000000
          00000000000000000000000000006F6F6FF4818181FF858585FF8B8B8BFFAFAF
          AFFFB3B3B3FFA2A2A2FF717171FA1313135E0505051B00000000000000000000
          000000000000000000000B0B0B116E6E6E98C6C6C6F5D5D5D5FECCCCCCFFB0B0
          B0FB727272CD1A1A1A460202020B000000010000000000000000000000000000
          0000000000000000000000000000474747A2777777FF838383FF929292FFB8B8
          B8FFBCBCBCFF878787FF4E4E4EC4070707250202020800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000404040A1E1E1E45686868E8838383FF8A8A
          8AFF6F6F6FF9363636AB0F0F0F3A010101040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000606060D6BCBCBCFFCCCC
          CCFF686868F11919197D08080826000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000616161D6B7B7B7FFCECE
          CEFF6A6A6AF11919197D08080826000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000606060D6B7B7B7FFCDCD
          CDFF6A6A6AF11919197E08080828000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000606060D6B7B7B7FFCFCF
          CFFF6B6B6BF21A1A1A820909092C000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000606060D6B7B7B7FFCFCF
          CFFF787878F41F1F1F8B0A0A0A32010101040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000606060D6B7B7B7FFD0D0
          D0FF7B7B7BF72C2C2C960A0A0A34010101040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001010103606060D8B8B8B8FFD1D1
          D1FF7A7A7AF72B2B2B980B0B0B37010101060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000303030E656565DDB5B5B5FFD3D3
          D3FF767676F62A2A2AA10F0F0F4B0303030F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002F2F2F5B898989F8C9C9C9FFE6E6
          E6FF9B9B9BFC424242C1141414640505051B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000565656B0B5B5B5FFEBEBEBFFFAFA
          FAFFD1D1D1FF5E5E5EE21616166E0606061F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000001010102595959B4BDBDBDFFF5F5F5FFFDFD
          FDFFCDCDCDFF646464E51818186C0606061C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004C4C4C9DBFBFBFFFF5F5F5FFFBFB
          FBFFCCCCCCFF595959DB141414640505051A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003B3B3B94C7C7C7FFF3F3F3FEF9F9
          F9FFD1D1D1FF444444C40F0F0F4A040404130000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003A3A3A8B878787FF8F8F8FFA9090
          90FA898989FF3D3D3D9B05050518010101060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010101050606061E0B0B0B380A0A0A340606061F0303030D010101030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          01040C0C0C30343434B7272727A11B1B1B861515156A0E0E0E470808082A0404
          0416020202090000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002525
          257D3D3D3DD14E4E4EFF4E4E4EFF494949F6343434CD1E1E1E951919197B1212
          125C0C0C0C3D070707220303030F010101040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF4F4F4FFF4F4F4FFF4E4E4EFF565656FF515151FF4D4D4DFC404040E62C2C
          2CBB1D1D1D901616166E0F0F0F4A0909092E0505051B0202020B000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF505050FF505050FF4E4E4EFF5E5E5EFF5C5C5CFF5B5B5BFF565656FF5050
          50FF484848F5363636D22020209B1919197F141414640D0D0D43070707250303
          0310010101030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF525252FF525252FF4E4E4EFF626262FF616161FF5F5F5FFF5F5F5FFF5D5D
          5DFF5A5A5AFF555555FF4E4E4EFC464646F22D2D2DBF1E1E1E94171717710C0C
          0C3C0303030E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF535353FF535353FF4E4E4EFF666666FF656565FF646464FF626262FF6262
          62FF616161FF5F5F5FFF5D5D5DFF5B5B5BFF565656FF4D4D4DFB343434CD1414
          14660606061C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF575757FF555555FF4E4E4EFF696969FF696969FF686868FF666666FF6666
          66FF646464FF636363FF636363FF616161FF616161FF5F5F5FFF484848F51818
          1876070707220000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF595959FF585858FF4E4E4EFF6E6E6EFF6D6D6DFF6C6C6CFF6A6A6AFF6969
          69FF696969FF686868FF666666FF656565FF656565FF646464FF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF5C5C5CFF5B5B5BFF4E4E4EFF727272FF717171FF707070FF6E6E6EFF6E6E
          6EFF6C6C6CFF6B6B6BFF6A6A6AFF696969FF686868FF676767FF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF606060FF5F5F5FFF4E4E4EFF787878FF767676FF757575FF747474FF7373
          73FF717171FF707070FF6F6F6FFF6E6E6EFF6D6D6DFF6C6C6CFF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF676767FF656565FF4E4E4EFF7D7D7DFF7C7C7CFF7B7B7BFF797979FF7777
          77FF767676FF757575FF737373FF737373FF727272FF717171FF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF6E6E6EFF6C6C6CFF4E4E4EFF828282FF818181FF808080FF808080FF7D7D
          7DFF7C7C7CFF7B7B7BFF787878FF777777FF777777FF757575FF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF777777FF757575FF4E4E4EFF878787FF868686FF858585FF848484FF8383
          83FF828282FF808080FF7E7E7EFF7D7D7DFF7C7C7CFF7B7B7BFF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF7F7F7FFF7C7C7CFF4E4E4EFF8C8C8CFF8B8B8BFF898989FF888888FF8787
          87FF868686FF858585FF838383FF828282FF818181FF808080FF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF878787FF858585FF4E4E4EFF909090FF494949FFB3B3B3FFA8A8A8FF9595
          95FF8B8B8BFF8A8A8AFF888888FF878787FF878787FF858585FF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF8D8D8DFF8B8B8BFF4E4E4EFF959595FF414141FFC0C0C0FFC1C1C1FFB7B7
          B7FF909090FF8F8F8FFF8E8E8EFF8C8C8CFF8C8C8CFF8A8A8AFF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF929292FF909090FF4E4E4EFF9A9A9AFF686868FF888888FFBEBEBEFFB1B1
          B1FF969696FF959595FF949494FF929292FF919191FF909090FF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF939393FF949494FF4E4E4EFF9E9E9EFF909090FF777777FF9D9D9DFF9B9B
          9BFF9A9A9AFF999999FF989898FF979797FF969696FF949494FF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF959595FF979797FF4E4E4EFFA2A2A2FFA1A1A1FFA0A0A0FFA0A0A0FFA0A0
          A0FF9F9F9FFF9E9E9EFF9D9D9DFF9C9C9CFF9B9B9BFF9A9A9AFF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF999999FF9A9A9AFF4E4E4EFFA6A6A6FFA5A5A5FFA5A5A5FFA5A5A5FFA3A3
          A3FFA3A3A3FFA3A3A3FFA1A1A1FFA1A1A1FFA0A0A0FF9F9F9FFF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFF9F9F9FFFA1A1A1FF4E4E4EFFA8A8A8FFA8A8A8FFA9A9A9FFA9A9A9FFA7A7
          A7FFA7A7A7FFA7A7A7FFA6A6A6FFA6A6A6FFA4A4A4FFA3A3A3FF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFFA7A7A7FFA7A7A7FF4E4E4EFFAAAAAAFFAAAAAAFFABABABFFABABABFFABAB
          ABFFABABABFFAAAAAAFFAAAAAAFFAAAAAAFFA9A9A9FFA7A7A7FF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFFAEAEAEFFAFAFAFFF4E4E4EFFADADADFFADADADFFACACACFFACACACFFADAD
          ADFFADADADFFACACACFFADADADFFADADADFFADADADFFABABABFF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFFB5B5B5FFB5B5B5FF4E4E4EFFAFAFAFFFAFAFAFFFB0B0B0FFAFAFAFFFAFAF
          AFFFB0B0B0FFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFFBCBCBCFFBBBBBBFF4E4E4EFFB0B0B0FFB1B1B1FFB2B2B2FFB1B1B1FFB1B1
          B1FFB2B2B2FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB0B0B0FF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFFC2C2C2FFC1C1C1FF4E4E4EFFB1B1B1FFB1B1B1FFB2B2B2FFB1B1B1FFB2B2
          B2FFB3B3B3FFB1B1B1FFB2B2B2FFB3B3B3FFB3B3B3FFB2B2B2FF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004E4E
          4EFFC8C8C8FFB3B3B3FF4E4E4EFFB1B1B1FFB1B1B1FFB2B2B2FFB1B1B1FFB2B2
          B2FFB3B3B3FFB2B2B2FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FF4B4B4BFA1818
          1877070707230000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005252
          52FF727272FF5B5B5BFF4F4F4FFF787878FF8E8E8EFF888888FF858585FF8C8C
          8CFF949494FF9A9A9AFFA1A1A1FFA7A7A7FFAFAFAFFFB3B3B3FF4A4A4AF91616
          166D060606200000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004545
          45DF4D4D4DF24E4E4EF54D4D4DFA4D4D4DFD4E4E4EFE4D4D4DFE4E4E4EFF4D4D
          4DFF4E4E4EFF535353FF585858FF5C5C5CFF616161FF656565FF4A4A4AF60E0E
          0E46040404140000000000000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000D0D
          0D29151515432222226C3232329F3D3D3DC4404040D0424242D8484848E84C4C
          4CF64D4D4DFA4D4D4DFB4D4D4DFC4D4D4DFD4E4E4EFE4E4E4EFE444444E10404
          0413010101060000000001010102010101020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000101010408080819121212391F1F
          1F612828287D2D2D2D8F3131319F373737B4383838B6373737B5242424770000
          0001000000000000000000000001000000010000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000020202080505051B0505051B0202
          0208000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050505171C1C1C7A252525A41E1E1E8F0F0F
          0F4B0303030D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000040404122F2F2FAF707070FF828282FF4C4C4CFA2626
          26B2111111530202020C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000303030E2B2B2BA7656565FFE9E9E9FFFCFCFCFFA3A3A3FF4646
          46F8262626B11010104F0303030D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000303030D2A2A2AA26A6A6AFFE2E2E2FFF8F8F8FFF1F1F1FFF2F2F2FF9D9D
          9DFF494949FA262626AF0C0C0C3A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000202
          0209292929A0636363FFDCDCDCFFF9F9F9FFF1F1F1FFECECECFFEAEAEAFFE5E5
          E5FF9C9C9CFF3F3F3FE71010104F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020202082626
          2696656565FFDDDDDDFFFCFCFCFFF3F3F3FFEEEEEEFFE9E9E9FFE4E4E4FFDEDE
          DEFFD8D8D8FF484848EB12121258000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010105252525935F5F
          5FFFD2D2D2FFFCFCFCFFF4F4F4FFF0F0F0FFECECECFFE6E6E6FFDFDFDFFFDADA
          DAFFD2D2D2FF4A4A4AEF14141466010101060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001010104212121875D5D5DFFD3D3
          D3FFFDFDFDFFF4F4F4FFF1F1F1FFEDEDEDFFE8E8E8FFE3E3E3FFDCDCDCFFD5D5
          D5FFCCCCCCFF525252F51A1A1A7B0303030D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001202020845A5A5AFFC8C8C8FFFCFC
          FCFFF4F4F4FFF1F1F1FFEDEDEDFFEAEAEAFFE5E5E5FFDFDFDFFFD8D8D8FFD0D0
          D0FFC8C8C8FF606060FB1F1F1F91040404160000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001B1B1B70565656FFC3C3C3FFFCFCFCFFF2F2
          F2FFF0F0F0FFEEEEEEFFEAEAEAFFEAEAEAFFE5E5E5FFDBDBDBFFD4D4D4FFCCCC
          CCFFC6C6C6FF777777FF242424A60606061E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000F0F0F3C525252F5BCBCBCFFFAFAFAFFF1F1F1FFEFEF
          EFFFECECECFFEAEAEAFFEBEBEBFFD4D4D4FFC6C6C6FFD7D7D7FFD0D0D0FFC8C8
          C8FFC3C3C3FF8A8A8AFF2B2B2BBC0A0A0A340000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001C1C1C609A9A9AFFFAFAFAFFEEEEEEFFEBEBEBFFE9E9
          E9FFE7E7E7FFEAEAEAFFDCDCDCFF6D6D6DFF8C8C8CFFD6D6D6FFCCCCCCFFC5C5
          C5FFC1C1C1FF939393FF383838DA101010520101010400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000014141442595959F9BFBFBFFFF0F0F0FFE5E5E5FFE4E4
          E4FFE6E6E6FFDBDBDBFF777777FF3B3B3BD5616161EBD1D1D1FFCACACAFFC2C2
          C2FFBCBCBCFFA1A1A1FF4D4D4DF1171717750303030E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001F1F1F685B5B5BFFBFBFBFFFE7E7E7FFE1E1
          E1FFD8D8D8FF7E7E7EFF353535C70F0F0F3C474747D4B7B7B7FFC7C7C7FFBEBE
          BEFFB7B7B7FFACACACFF656565FF2020209B0707072200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002020206B575757F8B8B8B8FFDBDB
          DBFF7D7D7DFF3A3A3AD30909092C000000002B2B2B8D858585FFC1C1C1FFBBBB
          BBFFB4B4B4FFB2B2B2FF777777FF2F2F2FC60E0E0E4500000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001E1E1E645F5F5FFE7878
          78FF3B3B3BCD0A0A0A2D00000000000000001212123A5B5B5BEEB1B1B1FFB9B9
          B9FFB2B2B2FFACACACFF8F8F8FFF424242EB1919197A04040413000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000101010361313
          13420404041300000000000000000000000001010102343434AE969696FFB7B7
          B7FFAFAFAFFFA9A9A9FFA3A3A3FF616161FF292929B40B0B0B38000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001D1D1D606F6F6FFFAFAF
          AFFFABABABFFA5A5A5FFA2A2A2FF828282FF3C3C3CE317171771040404140000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000060606153D3D3DC69393
          93FFAAAAAAFFA2A2A2FF9F9F9FFF959595FF5E5E5EFE292929B70D0D0D410101
          0103000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001C1C1C5D6565
          65FE9D9D9DFFA1A1A1FF9B9B9BFF999999FF818181FF434343EC1B1B1B860707
          0724000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101023030
          30A2787878FF9F9F9FFF989898FF939393FF939393FF686868FF333333D11515
          1569040404140000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000D0D
          0D2B474747DB8A8A8AFF979797FF909090FF8F8F8FFF878787FF565656FC2B2B
          2BBE121212580303031000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000019191954595959F78B8B8BFF919191FF8B8B8BFF8A8A8AFF7E7E7EFF5050
          50F9282828B4101010520303030D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002020206D5A5A5AF6898989FF8A8A8AFF858585FF868686FF7A7A
          7AFF4D4D4DF6272727B111111154040404140000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002020206E595959F7818181FF878787FF828282FF8383
          83FF787878FF4F4F4FF8292929BB141414630505051900000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000019191955494949DA717171FF828282FF8080
          80FF7F7F7FFF797979FF575757FD2E2E2EBD0D0D0D4201010105000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000A0A0A212D2D2D945B5B5BF67676
          76FF7F7F7FFF818181FF7E7E7EFF434343D71111114E01010106000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000010101021111113A2D2D
          2D96585858EC6F6F6FFF6B6B6BFF373737B00B0B0B2E01010103000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          01030D0D0D2D131313401212123E0A0A0A220202020600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001010101050303030E05050519070707230808082A0909092E0909092E0808
          082A07070723050505190303030E010101050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001020202080505
          051A0A0A0A320F0F0F4C1D1D1D7229292991323232A7333333AC2C2C2CA22222
          229018181876141414630F0F0F4C0A0A0A320505051A02020208000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001010105050505170B0B0B372A2A
          2A87535353D66A6A6AF87D7D7DFF8C8C8CFF999999FF999999FF8C8C8CFF7D7D
          7DFF6B6B6BFA565656E3323232B21A1A1A83131313600B0B0B37050505170101
          0105000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000001010107070707252B2B2B84626262EB8989
          89FFBABABAFFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE9E9E9FFBABABAFF898989FF636363F3363636BE1B1B1B85111111560707
          0725010101070000000000000000000000000000000000000000000000000000
          00000000000000000000020202080A0A0A2D595959D7818181FFC9C9C9FFFFFF
          FFFFF5F5F5FFD8D8D8FFD2D2D2FFC0C0C0FF989898FF999999FFC3C3C3FFD7D7
          D7FFE2E2E2FFFAFAFAFFFFFFFFFFC9C9C9FF818181FF5D5D5DEC2020209C1414
          1464080808290202020800000000000000000000000000000000000000000000
          000000000000020202090E0E0E38606060E59B9B9BFFF8F8F8FFF6F6F6FFADAD
          ADFF818181FFB1B1B1FFAAAAAAFF757575FF767676FF777777FF777777FFABAB
          ABFFB4B4B4FF8C8C8CFFC3C3C3FFFDFDFDFFF8F8F8FF9B9B9BFF636363F32424
          24A5151515690909092C02020209000000000000000000000000000000000000
          0000010101060D0D0D32626262E8B2B2B2FFFFFFFFFFC5C5C5FF7C7C7CFF7373
          73FF979797FFC4C4C4FF7A7A7AFF7B7B7BFF7C7C7CFF7E7E7EFF7F7F7FFF7F7F
          7FFFC6C6C6FF9C9C9CFF7B7B7BFF909090FFE2E2E2FFFFFFFFFFB2B2B2FF6464
          64F4242424A61515156808080828010101060000000000000000000000000000
          00010808081F616161E4A2A2A2FFFCFCFCFFA9A9A9FF727272FF818181FFA1A1
          A1FFE0E0E0FFCECECEFFCCCCCCFFCECECEFFD5D5D5FFD5D5D5FFD0D0D0FFCECE
          CEFFD1D1D1FFE2E2E2FFA8A8A8FF898989FF858585FFCFCFCFFFFFFFFFFFA2A2
          A2FF646464F42121219F1212125A0505051A0000000100000000000000000202
          020A515151C38C8C8CFFFAFAFAFFADADADFF7C7C7CFFB6B6B6FFC7C7C7FFCACA
          CAFFD9D9D9FF9E9E9EFF8B8B8BFF898989FF878787FF898989FF8E8E8EFF9191
          91FFA5A5A5FFDCDCDCFFCECECEFFCCCCCCFFBDBDBDFF8F8F8FFFD8D8D8FFFAFA
          FAFF8C8C8CFF595959E81B1B1B890C0C0C3D0202020A00000000000000011717
          1743717171FFE4E4E4FFC5C5C5FFA0A0A0FFCACACAFFA5A5A5FF878787FFBEBE
          BEFFB0B0B0FF868686FF898989FF919191FF9A9A9AFF969696FF919191FF9090
          90FF909090FFB8B8B8FFC5C5C5FF979797FFB1B1B1FFD1D1D1FFB6B6B6FFECEC
          ECFFE4E4E4FF717171FF2E2E2EB6151515670606061F00000001010101075858
          58D0A2A2A2FFEFEFEFFFBABABAFFB3B3B3FF808080FF7D7D7DFF858585FFC9C9
          C9FFA2A2A2FF8C8C8CFF949494FFA9A9A9FFB4B4B4FFAFAFAFFF9F9F9FFF9797
          97FF979797FFAEAEAEFFD0D0D0FF999999FF929292FF949494FFBFBFBFFFD8D8
          D8FFFEFEFEFFA4A4A4FF5E5E5EEE1B1B1B880B0B0B3801010107131313336D6D
          6DFADCDCDCFFD4D4D4FF9F9F9FFF797979FF7D7D7DFF818181FF989898FFC9C9
          C9FF979797FF909090FF9F9F9FFFB6B6B6FFB7B7B7FFBBBBBBFFABABABFF9D9D
          9DFF9D9D9DFFA5A5A5FFD2D2D2FFABABABFF999999FF969696FF939393FFBABA
          BAFFF2F2F2FFDBDBDBFF6D6D6DFD2B2B2BAC10101052040404123232327B7A7A
          7AFFEFEFEFFFA9A9A9FF777777FF7B7B7BFF7F7F7FFF848484FFA6A6A6FFCCCC
          CCFF929292FF959595FF9F9F9FFFB3B3B3FFBDBDBDFFB9B9B9FFA9A9A9FFA1A1
          A1FFA2A2A2FFA2A2A2FFD5D5D5FFB8B8B8FFA0A0A0FF9D9D9DFF9A9A9AFF9595
          95FFE1E1E1FFFDFDFDFF7A7A7AFF434343CF1515156A0606061C565656C9A1A1
          A1FFD8D8D8FF787878FF7A7A7AFF7E7E7EFF838383FF878787FFB1B1B1FFCCCC
          CCFF949494FF999999FF9D9D9DFFA6A6A6FFAFAFAFFFACACACFFA4A4A4FFA4A4
          A4FFA5A5A5FFA5A5A5FFD5D5D5FFC1C1C1FFA3A3A3FFA2A2A2FFA0A0A0FF9C9C
          9CFFC2C2C2FFF9F9F9FFA1A1A1FF5D5D5DED1919197B07070725666666EBBABA
          BAFFBEBEBEFF767676FF7B7B7BFF7F7F7FFF848484FF8A8A8AFFBCBCBCFFD2D2
          D2FFBBBBBBFFD0D0D0FFE0E0E0FFE4E4E4FFEEEEEEFFEEEEEEFFE6E6E6FFE2E2
          E2FFD6D6D6FFC5C5C5FFD9D9D9FFCACACAFFA6A6A6FFA4A4A4FFA3A3A3FFA1A1
          A1FFB7B7B7FFF8F8F8FFBABABAFF696969F91B1B1B850909092B6D6D6DF8C7C7
          C7FFAEAEAEFF767676FF7C7C7CFF818181FF868686FFB1B1B1FFE2E2E2FFEAEA
          EAFFD3D3D3FFBCBCBCFFACACACFFAAAAAAFFA6A6A6FFA8A8A8FFAEAEAEFFB3B3
          B3FFC4C4C4FFDADADAFFEEEEEEFFE8E8E8FFC4C4C4FFA7A7A7FFA6A6A6FFA4A4
          A4FFB5B5B5FFF9F9F9FFC7C7C7FF6E6E6EFD1B1B1B890909092C6F6F6FFCCCCC
          CCFFABABABFF777777FF7D7D7DFF8E8E8EFFCCCCCCFFCBCBCBFFD1D1D1FFC2C2
          C2FF9D9D9DFFA0A0A0FFA3A3A3FFA7A7A7FFA8A8A8FFADADADFFB2B2B2FFB1B1
          B1FFAFAFAFFFAEAEAEFFCFCFCFFFDCDCDCFFD8D8D8FFDBDBDBFFB0B0B0FFA6A6
          A6FFB8B8B8FFFBFBFBFFCCCCCCFF707070FE1B1B1B850909092B6C6C6CF7C5C5
          C5FFB1B1B1FF787878FF959595FFD1D1D1FFACACACFF909090FFBFBFBFFFC4C4
          C4FF9E9E9EFFA2A2A2FFA5A5A5FFA8A8A8FFADADADFFCDCDCDFFD6D6D6FFD4D4
          D4FFB7B7B7FFB4B4B4FFD3D3D3FFD1D1D1FFB0B0B0FFC4C4C4FFDFDFDFFFB7B7
          B7FFBEBEBEFFFDFDFDFFC4C4C4FF6D6D6DFD1919197B07070725656565E8B3B3
          B3FFC5C5C5FF909090FFCACACAFF929292FF898989FF8E8E8EFFBDBDBDFFCACA
          CAFF9F9F9FFFA4A4A4FFA7A7A7FFABABABFFAFAFAFFFCFCFCFFFD8D8D8FFD7D7
          D7FFC2C2C2FFBFBFBFFFDCDCDCFFD3D3D3FFB3B3B3FFAFAFAFFFB5B5B5FFDCDC
          DCFFD5D5D5FFFEFEFEFFB2B2B2FF686868F61515156A0606061C525252BF9999
          99FFE1E1E1FFC1C1C1FF8C8C8CFF828282FF888888FF8E8E8EFFB7B7B7FFD0D0
          D0FFA0A0A0FFA4A4A4FFA8A8A8FFADADADFFB2B2B2FFBBBBBBFFC8C8C8FFCFCF
          CFFFD3D3D3FFD2D2D2FFE7E7E7FFD5D5D5FFB9B9B9FFB3B3B3FFADADADFFB4B4
          B4FFF2F2F2FFFFFFFFFF999999FF5A5A5AE410101052040404122D2D2D697575
          75FFF0F0F0FFA7A7A7FF7A7A7AFF818181FF878787FF8E8E8EFFAFAFAFFFD2D2
          D2FFA1A1A1FFA5A5A5FFA9A9A9FFAFAFAFFFB6B6B6FFC1C1C1FFD0D0D0FFDFDF
          DFFFE6E6E6FFE5E5E5FFF0F0F0FFDADADAFFBFBFBFFFB6B6B6FFAFAFAFFFB0B0
          B0FFFDFDFDFFFBFBFBFF757575FF3D3D3DB70B0B0B3701010107101010256C6C
          6CF6CBCBCBFFC5C5C5FF7E7E7EFF7F7F7FFF868686FF8D8D8DFFA5A5A5FFD1D1
          D1FFA8A8A8FFA5A5A5FFAAAAAAFFB1B1B1FFBABABAFFC7C7C7FFDDDDDDFFEDED
          EDFFF6F6F6FFF5F5F5FFF5F5F5FFDFDFDFFFC5C5C5FFB8B8B8FFB1B1B1FFD3D3
          D3FFFFFFFFFFCBCBCBFF6C6C6CFB2121217C0606061E00000001000000005050
          50B8898989FFFAFAFAFF989898FF7E7E7EFF858585FF8B8B8BFF969696FFDCDC
          DCFFD1D1D1FFD4D4D4FFDCDCDCFFE4E4E4FFEAEAEAFFEFEFEFFFF4F4F4FFFAFA
          FAFFFEFEFEFFFDFDFDFFF8F8F8FFDEDEDEFFC7C7C7FFBABABAFFB8B8B8FFF9F9
          F9FFFFFFFFFF898989FF585858DD0C0C0C3D0202020A00000000000000001111
          11276C6C6CF6C5C5C5FFDFDFDFFF8C8C8CFF828282FF9D9D9DFFCCCCCCFFE7E7
          E7FFDCDCDCFFB9B9B9FFB3B3B3FFB1B1B1FFBABABAFFC9C9C9FFE1E1E1FFF4F4
          F4FFFCFCFCFFFDFDFDFFFAFAFAFFE9E9E9FFC6C6C6FFBABABAFFE6E6E6FFFFFF
          FFFFC5C5C5FF6C6C6CFB202020730505051A0000000100000000000000000000
          000042424297787878FFE7E7E7FFD4D4D4FF939393FFBBBBBBFFADADADFFACAC
          ACFFD1D1D1FFA5A5A5FFA7A7A7FFAEAEAEFFB6B6B6FFC2C2C2FFD3D3D3FFE3E3
          E3FFEEEEEEFFF6F6F6FFEBEBEBFFE4E4E4FFDCDCDCFFDBDBDBFFFFFFFFFFE7E7
          E7FF787878FF4A4A4AC008080828010101060000000000000000000000000000
          000003030306595959CA848484FFF5F5F5FFD8D8D8FF9B9B9BFF878787FF9090
          90FFD3D3D3FFB3B3B3FFA3A3A3FFAAAAAAFFB1B1B1FFBABABAFFC5C5C5FFD0D0
          D0FFDEDEDEFFEDEDEDFFCCCCCCFFC4C4C4FFE7E7E7FFFEFEFEFFF5F5F5FF8484
          84FF5D5D5DDF0B0B0B3102020209000000000000000000000000000000000000
          0000000000000505050B5C5C5CD28C8C8CFFF1F1F1FFEBEBEBFFB7B7B7FF9494
          94FFA9A9A9FFD3D3D3FF9F9F9FFFA5A5A5FFAAAAAAFFB1B1B1FFB8B8B8FFBEBE
          BEFFE4E4E4FFCECECEFFCDCDCDFFF0F0F0FFFFFFFFFFF1F1F1FF8C8C8CFF5F5F
          5FE30D0D0D320202020800000000000000000000000000000000000000000000
          0000000000000000000001010102595959CA7F7F7FFFD6D6D6FFFFFFFFFFE7E7
          E7FFC1C1C1FFD0D0D0FFC5C5C5FF9E9E9EFFA3A3A3FFA9A9A9FFAEAEAEFFD8D8
          D8FFE7E7E7FFEEEEEEFFFFFFFFFFFFFFFFFFD6D6D6FF7F7F7FFF5C5C5CDB0808
          0827010101070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000020202054545459E6D6D6DF8999999FFE4E4
          E4FFFFFFFFFFF5F5F5FFF7F7F7FFF6F6F6FFEDEDEDFFF6F6F6FFFDFDFDFFFDFD
          FDFFFEFEFEFFFFFFFFFFE4E4E4FF999999FF6D6D6DFA484848B10707071B0101
          0105000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000008080813525252BD6D6D
          6DF9898989FFB6B6B6FFDEDEDEFFE7E7E7FFFDFDFDFFFDFDFDFFE7E7E7FFDEDE
          DEFFB6B6B6FF898989FF6E6E6EFA555555C80D0D0D2A03030309000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000909
          09163030306F575757C76A6A6AF26E6E6EFB707070FF707070FF6E6E6EFB6B6B
          6BF3585858CC3232327A0C0C0C22010101050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000020202020B0505051807070722080808280808
          082707070722050505190202020B000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001010106070707231111114F1D1D1D812525259F2A2A2AB02C2C2CB62A2A
          2AB1252525A41D1D1D88141414630C0C0C3C0505051B01010105000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101030808
          08271D1D1D78323232C1484848ED676767FC767676FF7B7B7BFF7E7E7EFF7878
          78FF727272FF575757F83D3D3DE52F2F2FC01D1D1D890F0F0F490505051A0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000002020209141414563535
          35C05B5B5BFA979797FFB8B8B8FFD7D7D7FFE4E4E4FFE9E9E9FFECECECFFE8E8
          E8FFE2E2E2FFCACACAFFA9A9A9FF787878FF434343EE2D2D2DBE181818760909
          092E010101050000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000040404122020207C4F4F4FEE9595
          95FFD5D5D5FFE3E3E3FFE4E4E4FFE1E1E1FFE1E1E1FFE4E4E4FFE4E4E4FFE2E2
          E2FFE2E2E2FFE7E7E7FFE9E9E9FFE2E2E2FFBBBBBBFF6E6E6EFF3C3C3CE11F1F
          1F930C0C0C3B0202020800000000000000000000000000000000000000000000
          00000000000000000000000000000303030C2525258A616161F7BBBBBBFFE0E0
          E0FFDBDBDBFFD9D9D9FFDADADAFFDFDFDFFFD3D3D3FFB6B6B6FFB7B7B7FFD2D2
          D2FFE1E1E1FFDDDDDDFFDCDCDCFFDEDEDEFFE4E4E4FFDBDBDBFF888888FF4141
          41E8212121980B0B0B3901010104000000000000000000000000000000000000
          000000000000000000000101010320202076676767F9C7C7C7FFD9D9D9FFD3D3
          D3FFD3D3D3FFD5D5D5FFD8D8D8FFACACACFF626262FF525252FF535353FF5D5D
          5DFF9F9F9FFFDADADAFFD9D9D9FFD9D9D9FFD9D9D9FFDCDCDCFFDDDDDDFF9595
          95FF3F3F3FE71E1E1E8D08080828000000010000000000000000000000000000
          00000000000000000000121212454F4F4FEBB7B7B7FFD1D1D1FFCCCCCCFFCDCD
          CDFFCDCDCDFFD1D1D1FFBABABAFF545454FF525252FF525252FF525252FF5252
          52FF505050FFB2B2B2FFD6D6D6FFD3D3D3FFD4D4D4FFD4D4D4FFD6D6D6FFD8D8
          D8FF7E7E7EFF363636D714141466030303110000000000000000000000000000
          0000000000000303030C333333AF8C8C8CFFCDCDCDFFC7C7C7FFC7C7C7FFC7C7
          C7FFC8C8C8FFCCCCCCFF979797FF505050FF535353FF535353FF535353FF5353
          53FF505050FF888888FFD3D3D3FFCDCDCDFFCDCDCDFFCECECEFFCECECEFFD3D3
          D3FFC1C1C1FF5A5A5AFB282828AE0B0B0B380000000000000000000000000000
          000000000000151515505D5D5DF7B5B5B5FFC2C2C2FFBFBFBFFFC0C0C0FFC0C0
          C0FFC0C0C0FFC4C4C4FFA3A3A3FF515151FF525252FF535353FF535353FF5252
          52FF505050FF9B9B9BFFCACACAFFC7C7C7FFC8C8C8FFC8C8C8FFC8C8C8FFC9C9
          C9FFCFCFCFFF8F8F8FFF3D3D3DE11616166A0303030D00000000000000000000
          000001010104333333A6848484FFBDBDBDFFB8B8B8FFB9B9B9FFB8B8B8FFB9B9
          B9FFB9B9B9FFBABABAFFBABABAFF828282FF555555FF4F4F4FFF4E4E4EFF5454
          54FF7D7D7DFFBDBDBDFFBFBFBFFFC0C0C0FFC0C0C0FFC1C1C1FFC2C2C2FFC1C1
          C1FFC5C5C5FFB7B7B7FF4F4F4FFA2424249D0707072400000000000000000000
          000009090922454545D89E9E9EFFB1B1B1FFB0B0B0FFB1B1B1FFB1B1B1FFB1B1
          B1FFB2B2B2FFB2B2B2FFB4B4B4FFB8B8B8FFA5A5A5FF8F8F8FFF8D8D8DFFA2A2
          A2FFBBBBBBFFBABABAFFB8B8B8FFB8B8B8FFB9B9B9FFB9B9B9FFBABABAFFBCBC
          BCFFBDBDBDFFBDBDBDFF737373FF303030C30C0C0C3B00000001000000000000
          00001616164B585858FBA4A4A4FFA8A8A8FFA8A8A8FFA8A8A8FFA9A9A9FFAAAA
          AAFFABABABFFABABABFFACACACFFAAAAAAFF8A8A8AFF787878FF797979FF7A7A
          7AFF878787FF9B9B9BFFAFAFAFFFB2B2B2FFB1B1B1FFB2B2B2FFB3B3B3FFB4B4
          B4FFB5B5B5FFBABABAFF888888FF3A3A3ADC1010105001010104000000000000
          00002020206A676767FF9F9F9FFFA0A0A0FFA0A0A0FFA1A1A1FFA1A1A1FFA3A3
          A3FFA4A4A4FFA4A4A4FFA5A5A5FFA0A0A0FF5F5F5FFF505050FF515151FF5151
          51FF505050FF525252FF6B6B6BFF9A9A9AFFACACACFFAAAAAAFFACACACFFAEAE
          AEFFADADADFFB4B4B4FF909090FF434343ED1414146402020208000000000000
          00002525257A6B6B6BFF9A9A9AFF9A9A9AFF9B9B9BFF9A9A9AFF9B9B9BFF9C9C
          9CFF9D9D9DFF9D9D9DFF9F9F9FFF9B9B9BFF606060FF515151FF535353FF5353
          53FF535353FF535353FF505050FF595959FF929292FFA8A8A8FFA6A6A6FFA6A6
          A6FFA7A7A7FFACACACFF929292FF4A4A4AF41717176E0202020A000000000000
          00002626267B6A6A6AFF949494FF949494FF969696FF949494FF959595FF9696
          96FF979797FF989898FF999999FF959595FF5E5E5EFF505050FF525252FF5353
          53FF535353FF535353FF535353FF505050FF626262FF9D9D9DFFA1A1A1FFA1A1
          A1FFA2A2A2FFA7A7A7FF8D8D8DFF494949F31616166901010107000000000000
          00002121216B636363FF8E8E8EFF8F8F8FFF909090FF909090FF919191FF9292
          92FF939393FF939393FF959595FF919191FF666666FF5B5B5BFF565656FF5252
          52FF535353FF535353FF535353FF535353FF505050FF898989FF9C9C9CFF9C9C
          9CFF9C9C9CFFA2A2A2FF868686FF444444EB1111115301010103000000000000
          00001818184D575757FB888888FF8B8B8BFF8B8B8BFF8C8C8CFF8D8D8DFF8A8A
          8AFF8A8A8AFF8A8A8AFF8B8B8BFF8B8B8BFF8B8B8BFF949494FF888888FF5C5C
          5CFF525252FF535353FF535353FF535353FF515151FF7B7B7BFF999999FF9898
          98FF999999FF9E9E9EFF7C7C7CFF3A3A3AD60B0B0B3900000000000000000000
          00000B0B0B24464646DC7F7F7FFF888888FF878787FF898989FF858585FF6060
          60FF595959FF5A5A5AFF5A5A5AFF5A5A5AFF5C5C5CFF858585FF949494FF6C6C
          6CFF515151FF535353FF535353FF535353FF515151FF7A7A7AFF969696FF9595
          95FF969696FF979797FF6A6A6AFF303030B80606062000000000000000000000
          000002020205363636AB6E6E6EFF878787FF858585FF868686FF858585FF6262
          62FF505050FF525252FF525252FF525252FF515151FF646464FF747474FF5757
          57FF525252FF535353FF535353FF535353FF515151FF7F7F7FFF939393FF9292
          92FF949494FF8E8E8EFF535353FC1E1E1E7E0202020900000000000000000000
          0000000000001C1C1C595A5A5AFB808080FF838383FF838383FF868686FF7171
          71FF505050FF535353FF535353FF535353FF535353FF515151FF505050FF5252
          52FF535353FF535353FF535353FF525252FF565656FF8A8A8AFF919191FF9090
          90FF939393FF797979FF3E3E3ED70C0C0C3B0000000000000000000000000000
          000000000000050505103B3B3BBD6F6F6FFF818181FF7F7F7FFF828282FF7F7F
          7FFF5D5D5DFF525252FF535353FF535353FF535353FF535353FF535353FF5353
          53FF535353FF535353FF525252FF505050FF737373FF8D8D8DFF8D8D8DFF9090
          90FF8B8B8BFF5A5A5AFF222222870202020C0000000000000000000000000000
          000000000000000000001717174A515151F2787878FF7D7D7DFF7D7D7DFF8181
          81FF797979FF595959FF505050FF525252FF535353FF535353FF535353FF5353
          53FF525252FF515151FF515151FF6C6C6CFF898989FF8B8B8BFF8B8B8BFF8E8E
          8EFF6D6D6DFF373737C408080828000000000000000000000000000000000000
          0000000000000000000000000001262626795C5C5CFD797979FF7C7C7CFF7C7C
          7CFF7F7F7FFF7B7B7BFF656565FF575757FF515151FF515151FF515151FF5050
          50FF525252FF5D5D5DFF747474FF878787FF878787FF888888FF8B8B8BFF7777
          77FF454545E31212124C00000000000000000000000000000000000000000000
          00000000000000000000000000000303030B2C2C2C8D5A5A5AFB767676FF7B7B
          7BFF7B7B7BFF7C7C7CFF7D7D7DFF787878FF747474FF6D6D6DFF6D6D6DFF7070
          70FF797979FF808080FF868686FF848484FF878787FF878787FF727272FF4848
          48E71717175A0101010300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000202020625252575515151F46B6B
          6BFF777777FF7A7A7AFF7A7A7AFF7C7C7CFF7D7D7DFF7E7E7EFF7F7F7FFF8080
          80FF808080FF818181FF818181FF838383FF7A7A7AFF636363FF3E3E3ECF1212
          1249000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001191919513D3D
          3DC1595959FD6A6A6AFF747474FF797979FF7A7A7AFF7B7B7BFF7C7C7CFF7C7C
          7CFF7D7D7DFF7D7D7DFF757575FF656565FF4F4F4FF12C2C2C980A0A0A280000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000404
          040E1E1E1E60393939B5494949E65B5B5BFF626262FF676767FF686868FF6666
          66FF5F5F5FFF535353FA434343D42E2E2E9A1010103C01010103000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000030303090F0F0F30202020652A2A2A89313131A0323232A52F2F
          2F992626267D1717174F0707071E010101020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000020202020B0505051807070722080808280808
          082707070722050505190202020B000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001010106070707231111114F1D1D1D812525259F2A2A2AB02C2C2CB62A2A
          2AB1252525A41D1D1D88141414630C0C0C3C0505051B01010105000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101030808
          08271D1D1D78323232C1484848ED676767FC767676FF7B7B7BFF7E7E7EFF7878
          78FF727272FF575757F83D3D3DE52F2F2FC01D1D1D890F0F0F490505051A0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000002020209141414563535
          35C05B5B5BFA979797FFB8B8B8FFD7D7D7FFE4E4E4FFE9E9E9FFECECECFFE8E8
          E8FFE2E2E2FFCACACAFFA9A9A9FF787878FF434343EE2D2D2DBE181818760909
          092E010101050000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000040404122020207C4F4F4FEE9595
          95FFD5D5D5FFE3E3E3FFE4E4E4FFE1E1E1FFE0E0E0FFE0E0E0FFDFDFDFFFE1E1
          E1FFE2E2E2FFE7E7E7FFE9E9E9FFE2E2E2FFBBBBBBFF6E6E6EFF3C3C3CE11F1F
          1F930C0C0C3B0202020800000000000000000000000000000000000000000000
          00000000000000000000000000000303030C2525258A616161F7BBBBBBFFE0E0
          E0FFDBDBDBFFD9D9D9FFD9D9D9FFDBDBDBFFDCDCDCFFDCDCDCFFDDDDDDFFDEDE
          DEFFDEDEDEFFDDDDDDFFDCDCDCFFDEDEDEFFE4E4E4FFDBDBDBFF888888FF4141
          41E8212121980B0B0B3901010104000000000000000000000000000000000000
          000000000000000000000101010320202076676767F9C7C7C7FFD9D9D9FFD3D3
          D3FFD3D3D3FFD4D4D4FFDDDDDDFFA7A7A7FF555555FF5D5D5DFF5E5E5EFF5E5E
          5EFF595959FF949494FFDFDFDFFFD9D9D9FFD9D9D9FFDCDCDCFFDDDDDDFF9595
          95FF3F3F3FE71E1E1E8D08080828000000010000000000000000000000000000
          00000000000000000000121212454F4F4FEBB7B7B7FFD1D1D1FFCCCCCCFFCDCD
          CDFFCDCDCDFFCFCFCFFFD8D8D8FF9F9F9FFF4D4D4DFF525252FF525252FF5252
          52FF505050FF8B8B8BFFD9D9D9FFD3D3D3FFD4D4D4FFD4D4D4FFD6D6D6FFD8D8
          D8FF7E7E7EFF363636D714141466030303110000000000000000000000000000
          0000000000000303030C333333AF8C8C8CFFCDCDCDFFC7C7C7FFC7C7C7FFC7C7
          C7FFC8C8C8FFC8C8C8FFCFCFCFFF9C9C9CFF4E4E4EFF535353FF535353FF5353
          53FF515151FF8A8A8AFFD3D3D3FFCDCDCDFFCDCDCDFFCECECEFFCECECEFFD3D3
          D3FFC1C1C1FF5A5A5AFB282828AE0B0B0B380000000000000000000000000000
          000000000000151515505D5D5DF7B5B5B5FFC2C2C2FFBFBFBFFFC0C0C0FFC0C0
          C0FFC0C0C0FFC1C1C1FFC8C8C8FF989898FF4E4E4EFF535353FF535353FF5353
          53FF515151FF878787FFCBCBCBFFC7C7C7FFC8C8C8FFC8C8C8FFC8C8C8FFC9C9
          C9FFCFCFCFFF8F8F8FFF3D3D3DE11616166A0303030D00000000000000000000
          000001010104333333A6848484FFBDBDBDFFB8B8B8FFB9B9B9FFB8B8B8FFB9B9
          B9FFB9B9B9FFB9B9B9FFC1C1C1FF949494FF4E4E4EFF535353FF535353FF5353
          53FF515151FF848484FFC4C4C4FFC0C0C0FFC0C0C0FFC1C1C1FFC2C2C2FFC1C1
          C1FFC5C5C5FFB7B7B7FF4F4F4FFA2424249D0707072400000000000000000000
          000009090922454545D89E9E9EFFB1B1B1FFB0B0B0FFB1B1B1FFB1B1B1FFB1B1
          B1FFB2B2B2FFB2B2B2FFB9B9B9FF8F8F8FFF4E4E4EFF535353FF535353FF5353
          53FF515151FF818181FFBCBCBCFFB8B8B8FFB9B9B9FFB9B9B9FFBABABAFFBCBC
          BCFFBDBDBDFFBDBDBDFF737373FF303030C30C0C0C3B00000001000000000000
          00001616164B585858FBA4A4A4FFA8A8A8FFA8A8A8FFA8A8A8FFA9A9A9FFAAAA
          AAFFABABABFFABABABFFB1B1B1FF8B8B8BFF4E4E4EFF535353FF535353FF5353
          53FF515151FF7E7E7EFFB3B3B3FFB0B0B0FFB1B1B1FFB2B2B2FFB3B3B3FFB4B4
          B4FFB5B5B5FFBABABAFF888888FF3A3A3ADC1010105001010104000000000000
          00002020206A676767FF9F9F9FFFA0A0A0FFA0A0A0FFA1A1A1FFA1A1A1FFA3A3
          A3FFA4A4A4FFA4A4A4FFA9A9A9FF878787FF4F4F4FFF535353FF535353FF5353
          53FF515151FF7B7B7BFFACACACFFA8A8A8FFAAAAAAFFAAAAAAFFACACACFFAEAE
          AEFFADADADFFB4B4B4FF909090FF434343ED1414146402020208000000000000
          00002525257A6B6B6BFF9A9A9AFF9A9A9AFF9B9B9BFF9A9A9AFF9B9B9BFF9C9C
          9CFF9D9D9DFF9D9D9DFFA3A3A3FF838383FF4F4F4FFF535353FF535353FF5353
          53FF515151FF797979FFA5A5A5FFA3A3A3FFA3A3A3FFA5A5A5FFA6A6A6FFA6A6
          A6FFA7A7A7FFACACACFF929292FF4A4A4AF41717176E0202020A000000000000
          00002626267B6A6A6AFF949494FF949494FF969696FF949494FF959595FF9696
          96FF979797FF989898FF9C9C9CFF808080FF4F4F4FFF535353FF535353FF5353
          53FF515151FF767676FFA0A0A0FF9D9D9DFF9E9E9EFF9F9F9FFFA0A0A0FFA1A1
          A1FFA2A2A2FFA7A7A7FF8D8D8DFF494949F31616166901010107000000000000
          00002121216B636363FF8E8E8EFF8F8F8FFF909090FF909090FF919191FF9191
          91FF929292FF929292FF979797FF7C7C7CFF4F4F4FFF535353FF535353FF5353
          53FF515151FF747474FF9D9D9DFF9A9A9AFF9A9A9AFF9B9B9BFF9B9B9BFF9C9C
          9CFF9C9C9CFFA2A2A2FF868686FF444444EB1111115301010103000000000000
          00001818184D575757FB888888FF8B8B8BFF8B8B8BFF8C8C8CFF8D8D8DFF8D8D
          8DFF8E8E8EFF8E8E8EFF939393FF797979FF4C4C4CFF505050FF505050FF5050
          50FF4E4E4EFF707070FF999999FF969696FF979797FF979797FF989898FF9898
          98FF999999FF9E9E9EFF7C7C7CFF3A3A3AD60B0B0B3900000000000000000000
          00000B0B0B24464646DC7F7F7FFF888888FF878787FF888888FF898989FF8A8A
          8AFF8A8A8AFF8B8B8BFF8C8C8CFF898989FF858585FF858585FF838383FF8484
          84FF888888FF8C8C8CFF939393FF929292FF939393FF949494FF949494FF9595
          95FF969696FF979797FF6A6A6AFF303030B80606062000000000000000000000
          000002020205363636AB6E6E6EFF878787FF858585FF868686FF868686FF8787
          87FF888888FF888888FF8A8A8AFF8C8C8CFF838383FF6D6D6DFF666666FF6969
          69FF7C7C7CFF909090FF909090FF909090FF919191FF919191FF919191FF9292
          92FF949494FF8E8E8EFF535353FC1E1E1E7E0202020900000000000000000000
          0000000000001C1C1C595A5A5AFB808080FF838383FF838383FF848484FF8585
          85FF858585FF868686FF888888FF7E7E7EFF575757FF505050FF515151FF5050
          50FF505050FF757575FF8E8E8EFF8D8D8DFF8D8D8DFF8F8F8FFF919191FF9090
          90FF939393FF797979FF3E3E3ED70C0C0C3B0000000000000000000000000000
          000000000000050505103B3B3BBD6F6F6FFF818181FF7F7F7FFF818181FF8181
          81FF828282FF838383FF868686FF6C6C6CFF505050FF535353FF535353FF5353
          53FF515151FF5D5D5DFF898989FF8C8C8CFF8C8C8CFF8C8C8CFF8D8D8DFF9090
          90FF8B8B8BFF5A5A5AFF222222870202020C0000000000000000000000000000
          000000000000000000001717174A515151F2787878FF7D7D7DFF7D7D7DFF7F7F
          7FFF7F7F7FFF818181FF838383FF6B6B6BFF505050FF535353FF535353FF5353
          53FF515151FF5D5D5DFF878787FF898989FF898989FF8A8A8AFF8B8B8BFF8E8E
          8EFF6D6D6DFF373737C408080828000000000000000000000000000000000000
          0000000000000000000000000001262626795C5C5CFD797979FF7C7C7CFF7C7C
          7CFF7D7D7DFF7E7E7EFF808080FF787878FF555555FF515151FF525252FF5252
          52FF505050FF6F6F6FFF888888FF868686FF878787FF888888FF8B8B8BFF7777
          77FF454545E31212124C00000000000000000000000000000000000000000000
          00000000000000000000000000000303030B2C2C2C8D5A5A5AFB767676FF7B7B
          7BFF7B7B7BFF7B7B7BFF7C7C7CFF7E7E7EFF757575FF646464FF5E5E5EFF6060
          60FF737373FF828282FF848484FF848484FF878787FF878787FF727272FF4848
          48E71717175A0101010300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000202020625252575515151F46B6B
          6BFF777777FF7A7A7AFF7A7A7AFF7B7B7BFF7D7D7DFF7E7E7EFF7E7E7EFF7E7E
          7EFF808080FF808080FF818181FF838383FF7A7A7AFF636363FF3E3E3ECF1212
          1249000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001191919513D3D
          3DC1595959FD6A6A6AFF747474FF797979FF7A7A7AFF7B7B7BFF7C7C7CFF7C7C
          7CFF7D7D7DFF7D7D7DFF757575FF656565FF4F4F4FF12C2C2C980A0A0A280000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000404
          040E1E1E1E60393939B5494949E65B5B5BFF626262FF676767FF686868FF6666
          66FF5F5F5FFF535353FA434343D42E2E2E9A1010103C01010103000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000030303090F0F0F30202020652A2A2A89313131A0323232A52F2F
          2F992626267D1717174F0707071E010101020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020202020B0606061D0909092B0707
          07230303030F0101010300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001010105040404150A0A0A3310101052141414631111
          11570B0B0B370505051801010106000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001010101070606061E0D0D0D4214141464333333A22323238E1818
          1879141414660E0E0E46070707230202020B0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010202020A070707240F0F0F4C2C2C2C92646464EF6F6F6FFF6A6A6AF73434
          34A81919197D1616166F111111530909092F0404041201010104000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020303
          030D0808082A10101052484848C1707070FF717171FF9D9D9DFFB3B3B3FF7777
          77FF4F4F4FCF1E1E1E8618181876131313600C0C0C3D0505051B010101070000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020303030E0909
          092F17171763595959DC717171FF777777FF777777FFE1E1E1FFEAEAEAFFD8D8
          D8FF878787FF5F5F5FE72A2A2A981919197B1515156A0F0F0F4A080808260303
          030D000000020000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020303030E0909092F1D1D
          1D705E5E5EE5777777FF777777FF858585FF7F7F7FFFEAEAEAFFEBEBEBFFEBEB
          EBFFECECECFFA6A6A6FF6F6F6FFF3F3F3FB81919197D17171772121212580A0A
          0A34040404140101010400000000000000000000000000000000000000000000
          0000000000000000000000000000000000020303030E0909092F2323237A6A6A
          6AF6777777FF797979FF858585FF969696FF929292FFEBEBEBFFEBEBEBFFEBEB
          EBFFEBEBEBFFEDEDEDFFC7C7C7FF777777FF545454D71F1F1F87181818791414
          14630D0D0D410606061E02020209000000010000000000000000000000000000
          00000000000000000000000000020303030E0909092F2323237A6A6A6AF67C7C
          7CFF797979FF868686FF969696FFA5A5A5FF8B8B8BFFE3E3E3FFEBEBEBFFEBEB
          EBFFEBEBEBFFECECECFFECECECFFDEDEDEFF878787FF6A6A6AF72F2F2FA01919
          197C1616166D1010104F0909092B0303030F0101010300000000000000000000
          000000000000000000020303030E0909092F2323237A6A6A6AF6808080FF7979
          79FF868686FF969696FFA6A6A6FFB2B2B2FFB7B7B7FF878787FFCACACAFFECEC
          ECFFECECECFFEBEBEBFFEDEDEDFFEDEDEDFFF0F0F0FFA0A0A0FF6F6F6FFF4545
          45C01919197E171717751212125B0B0B0B370505051801010106000000000000
          0000000000020303030E0909092F2323237A6A6A6AF67F7F7FFF797979FF8686
          86FF979797FFA6A6A6FFB2B2B2FFBCBCBCFFC5C5C5FFCCCCCCFFA1A1A1FFA7A7
          A7FFEFEFEFFFECECECFFEDEDEDFFECECECFFEDEDEDFFEFEFEFFFC2C2C2FF7878
          78FF5F5F5FE72323238F18181879141414660E0E0E440606061D000000000000
          00010202020C0909092E2323237A6A6A6AF67F7F7FFF797979FF868686FF9797
          97FFA6A6A6FFB2B2B2FFBBBBBBFFBDBDBDFFBBBBBBFFBFBFBFFFC3C3C3FFB3B3
          B3FF939393FFD6D6D6FFEEEEEEFFEDEDEDFFEEEEEEFFEFEFEFFFEEEEEEFFDBDB
          DBFF888888FF6A6A6AF7343434A81818187A1313135D0909092D000000000101
          010407070721222222746A6A6AF67F7F7FFF797979FF878787FF979797FFA6A6
          A6FFADADADFF9B9B9BFF7B7B7BFF717171FF6F6F6FFF6F6F6FFF6F6F6FFF7777
          77FF878787FF818181FFB0B0B0FFF2F2F2FFEDEDEDFFEEEEEEFFEFEFEFFFEFEF
          EFFFE9E9E9FF9A9A9AFF6F6F6FFF4F4F4FCB151515580606061E000000000202
          020B1E1E1E5B6A6A6AF67F7F7FFF797979FF878787FF979797FFA6A6A6FFA3A3
          A3FF777777FF747474FF8B8B8BFFA5A5A5FFB6B6B6FFB3B3B3FFAAAAAAFF9393
          93FF808080FF6F6F6FFF828282FF8F8F8FFFD3D3D3FFF0F0F0FFEFEFEFFFEFEF
          EFFFF1F1F1FFEFEFEFFFABABABFF6F6F6FFF444444A80202020C000000000A0A
          0A1E6A6A6AF37C7C7CFF797979FF878787FF979797FFA6A6A6FFA6A6A6FF7575
          75FF838383FFAEAEAEFFDADADAFFD0D0D0FFC7C7C7FFC2C2C2FFB5B5B5FFABAB
          ABFFA3A3A3FF979797FF747474FF808080FF959595FFAAAAAAFFE9E9E9FFEFEF
          EFFFEFEFEFFFF1F1F1FFBFBFBFFF4D4D4DC60A0A0A3102020209000000002C2C
          2C69717171FF797979FF878787FF979797FFA6A6A6FFB3B3B3FF797979FF8383
          83FFC3C3C3FFDEDEDEFFDFDFDFFFEEEEEEFFF2F2F2FFF3F3F3FFF3F3F3FFEAEA
          EAFFC3C3C3FFA5A5A5FF9B9B9BFF737373FFA7A7A7FFBDBDBDFF8D8D8DFFD5D5
          D5FFF0F0F0FFF1F1F1FFA6A6A6FF313131970909092F02020208000000003838
          3884757575FF878787FF979797FFA7A7A7FFB3B3B3FFABABABFF737373FFAFAF
          AFFFC3C3C3FFE6E6E6FFF3F3F3FFF3F3F3FFEBEBEBFFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFD8D8D8FFA7A7A7FF909090FF777777FFD5D5D5FFD0D0D0FF9C9C
          9CFFA3A3A3FFE9E9E9FF969696FF292929820707072401010105000000003838
          38817B7B7BFF979797FFA7A7A7FFB3B3B3FFBDBDBDFF9A9A9AFF8A8A8AFFAFAF
          AFFFDBDBDBFFF3F3F3FFF3F3F3FFF5F5F5FFD3D3D3FFD3D3D3FFF5F5F5FFF5F5
          F5FFF6F6F6FFF6F6F6FFBEBEBEFFA8A8A8FF737373FFC6C6C6FFD7D7D7FFD7D7
          D7FFC3C3C3FF8B8B8BFF6F6F6FFF3D3D3D640303030F00000002000000001C1C
          1C40757575FFA7A7A7FFB3B3B3FFBDBDBDFFC6C6C6FF838383FF989898FFB3B3
          B3FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFD3D3D3FFB3B3B3FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFDCDCDCFFADADADFF7E7E7EFFBDBDBDFFD7D7D7FFD7D7
          D7FFD7D7D7FFB0B0B0FF6F6F6FFF1717173A0000000200000000000000000000
          0000686868EF959595FFBEBEBEFFC7C7C7FFCDCDCDFF898989FF9B9B9BFFB8B8
          B8FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF9A9A9AFF888888FFF8F8F8FFF8F8
          F8FFF9F9F9FFF9F9F9FFE8E8E8FFB1B1B1FF7F7F7FFFBDBDBDFFD7D7D7FFD0D0
          D0FF8F8F8FFF626262E21D1D1D45000000010000000000000000000000000000
          000015151530616161DF858585FFC1C1C1FFD1D1D1FFA2A2A2FF8B8B8BFFBDBD
          BDFFF3F3F3FFF8F8F8FFF9F9F9FFDFDFDFFF898989FFE0E0E0FFFAFAFAFFFAFA
          FAFFFAFAFAFFFBFBFBFFD6D6D6FFB0B0B0FF6F6F6FFFCACACAFFBDBDBDFF7C7C
          7CFF4D4D4DB50808081400000000000000000000000000000000000000000000
          000000000000070707103E3E3E8F767676FFA2A2A2FFCACACAFF737373FFB7B7
          B7FFD3D3D3FFFAFAFAFFF2F2F2FFACACACFFF2F2F2FFFBFBFBFFFBFBFBFFFBFB
          FBFFFBFBFBFFF5F5F5FFC0C0C0FF939393FF868686FFA3A3A3FF696969F13232
          3276000000020000000000000000000000000000000000000000000000000000
          00000000000000000000000000001C1C1C40535353BF7C7C7CFF7C7C7CFF8585
          85FFC7C7C7FFD9D9D9FFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
          FCFFF7F7F7FFBFBFBFFFC3C3C3FF737373FF767676FF5C5C5CD3161616350000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002A2A2A60616161DF6F6F
          6FFFAAAAAAFFD1D1D1FFD3D3D3FFE3E3E3FFEFEFEFFFEFEFEFFFEFEFEFFFD7D7
          D7FFCFCFCFFFDBDBDBFF777777FF6F6F6FFF4040409608080813000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000E0E0E206F6F
          6FFFACACACFF8E8E8EFF9B9B9BFFC5C5C5FFDDDDDDFFE3E3E3FFDCDCDCFFDFDF
          DFFFADADADFF6E6E6EFF696969F1242424550000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004545
          459F6F6F6FFF5A5A5ACF616161DF6C6C6CFF7B7B7BFF808080FF8F8F8FFF7979
          79FF6F6F6FFF555555C40F0F0F23000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002A2A2A60616161DF7C7C7CFF9C9C9CFF7676
          76FF393939850000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002A2A2A60535353BF1C1C
          1C40000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010104070707210D0D
          0D3F0D0D0D400A0A0A3104040415010101040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001040404160F0F0F491B1B1B852121
          21A6212121A61D1D1D93171717731010104F0909092B03030311010101040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000909092B1C1C1C806B6B6BDB7F7F7FFD8A8A
          8AFF979797FE8D8D8DF2666666D43E3E3EB11B1B1B89161616701010104F0A0A
          0A300606061E0202020A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000015F5F5FB2858585FA7B7B7BFF848484FFA8A8
          A8FFBCBCBCFFBABABAFFB4B4B4FF9F9F9FFA868686EF6E6E6EDC343434B31C1C
          1C8B17171773111111550B0B0B380505051B0202020900000000000000000000
          00000000000000000000000000000000000000000000000000000303030D0A0A
          0A310A0A0A31050505172B2B2B46767676FF838383FF8F8F8FFF929292FF9A9A
          9AFEA0A0A0FEAFAFAFFDC5C5C5FDD4D4D4FDD9D9D9FFACACACFF888888FE9292
          92F57F7F7FE0535353BC2F2F2F95171717721212125C0C0C0C3D080808260404
          04160101010400000000000000000000000000000000000000001E1E1E4A3333
          33A4212121A31A1A1A813A3A3A887C7C7CFF979797FF919191FF8D8D8DFF8B8B
          8BFE8C8C8CFE969696FD9F9F9FFDA9A9A9FEBFBFBFFFBABABAFF999999FEB7B7
          B7FAB9B9B9FBABABABFB949494F37A7A7AE5636363D22A2A2AA71B1B1B891616
          166F0F0F0F4D0909092E04040413010101050000000000000000AEAEAEF1B3B3
          B3FFB3B3B3FB818181E36D6D6DDA848484FFAFAFAFFFBABABAFEB3B3B3FE9090
          90FE868686FD848484FE878787FF939393FFA9A9A9FFA9A9A9FF969696FEA9A9
          A9FAB9B9B9FAC9C9C9FAD2D2D2FCC6C6C6FE8E8E8EFF888888FD919191F77A7A
          7AE14C4C4CBB2A2A2A921616166C0F0F0F4C0606061E00000001ADADADFFB7B7
          B7FFB9B9B9FFB8B8B8FFA8A8A8FF868686FFB9B9B9FFC9C9C9FFC4C4C4FE9898
          98FD8B8B8BFA888888FC838383FF8C8C8CFF9D9D9DFFA4A4A4FF949494FEA0A0
          A0FAA5A5A5FAA8A8A8FDABABABFFC3C3C3FFAFAFAFFF9E9E9EFEBFBFBFFDB7B7
          B7FEACACACFD919191F5777777E4595959C11717175801010104ADADADFFB7B7
          B7FFB8B8B8FFB6B6B6FFA7A7A7FF909090FFC8C8C8FFCCCCCCFFB8B8B8FF9A9A
          9AFE939393FD8B8B8BFC828282FF8A8A8AFF939393FF9D9D9DFF929292FEA1A1
          A1F9999999FC929292FF9F9F9FFFB9B9B9FF9D9D9DFF939393FEAEAEAEFCC3C3
          C3FDD1D1D1FDDADADAFDD6D6D6FE9C9C9CFD7E7E7EB601010105ADADADFFBCBC
          BCFFC0C0C0FFC3C3C3FFACACACFF9D9D9DFFD0D0D0FFBCBCBCFFA9A9A9FFABAB
          ABFFABABABFF9F9F9FFF8E8E8EFF8F8F8FFF8F8F8FFF8F8F8FFF969696FEA4A4
          A4F99C9C9CFD949494FF9B9B9BFFA8A8A8FF949494FF919191FEA3A3A3FCB2B2
          B2FDBEBEBEFDC6C6C6FDD9D9D9FDACACACFE878787BF01010105ADADADFFB9B9
          B9FFBCBCBCFFC0C0C0FFAFAFAFFF919191FFB1B1B1FFB3B3B3FFB5B5B5FFB8B8
          B8FFBDBDBDFFBCBCBCFFB6B6B6FFB3B3B3FFA6A6A6FF9B9B9BFF9C9C9CFFA1A1
          A1FC999999FE929292FF989898FFA0A0A0FF8E8E8EFF949494FE9D9D9DFCA0A0
          A0FDB2B2B2FDC0C0C0FDD3D3D3FDA7A7A7FE848484BD01010105AAAAAAFFB5B5
          B5FFC4C4C4FFC2C2C2FFADADADFFA1A1A1FFBFBFBFFFC3C3C3FFC6C6C6FFC9C9
          C9FFCECECEFFCBCBCBFFC6C6C6FFD3D3D3FFD6D6D6FFB4B4B4FF9F9F9FFF9F9F
          9FFF949494FF8C8C8CFF949494FF9B9B9BFF8B8B8BFF979797FEA2A2A2FC9E9E
          9EFDA5A5A5FDB1B1B1FDC4C4C4FDA0A0A0FE858585BD01010105B0B0B0FFB3B3
          B3FFBDBDBDFFCDCDCDFFCACACAFFACACACFFB0B0B0FFBFBFBFFFC7C7C7FFD6D6
          D6FFDFDFDFFFDEDEDEFFD0D0D0FFC2C2C2FFABABABFFA8A8A8FFA3A3A3FFA2A2
          A2FF959595FF898989FF8E8E8EFF949494FF898989FF989898FEA2A2A2FC9E9E
          9EFDA4A4A4FDA5A5A5FDB2B2B2FD989898FE858585BD01010105B2B2B2FFC4C4
          C4FFB4B4B4FFBBBBBBFFCCCCCCFFD5D5D5FFD2D2D2FFBBBBBBFFB8B8B8FFB8B8
          B8FFC1C1C1FFC0C0C0FFA8A8A8FFA1A1A1FFB1B1B1FFB3B3B3FFA3A3A3FF9C9C
          9CFF8F8F8FFF858585FF8B8B8BFF8E8E8EFF868686FF9A9A9AFEA1A1A1FC9D9D
          9DFDA4A4A4FDA4A4A4FDA5A5A5FD909090FE858585BD01010105B3B3B3FFD6D6
          D6FFD2D2D2FFB9B9B9FFC6C6C6FFCECECEFFB5B5B5FFCBCBCBFFDDDDDDFFD8D8
          D8FFD2D2D2FFB9B9B9FF9A9A9AFFB4B4B4FFBCBCBCFFB9B9B9FF9A9A9AFF9292
          92FF868686FF7F7F7FFF858585FF898989FF848484FF9A9A9AFEA1A1A1FC9C9C
          9CFDA4A4A4FDA4A4A4FDA4A4A4FD8C8C8CFE858585BD01010105B3B3B3FFD3D3
          D3FFDADADAFFD8D8D8FFB8B8B8FFB7B7B7FFBDBDBDFFBABABAFFD6D6D6FFDCDC
          DCFFE4E4E4FFC6C6C6FFA7A7A7FFC7C7C7FFCCCCCCFFC3C3C3FF989898FF8989
          89FF7E7E7EFF797979FF7F7F7FFF858585FF868686FF979797FE9E9E9EFC9B9B
          9BFDA4A4A4FDA4A4A4FDA4A4A4FD8D8D8DFE858585BD01010105B6B6B6FFDBDB
          DBFFD9D9D9FFD6D6D6FFD0D0D0FFD4D4D4FFE2E2E2FFC1C1C1FFE0E0E0FFEDED
          EDFFF0F0F0FFC1C1C1FFAEAEAEFFD6D6D6FFD6D6D6FFC1C1C1FFA5A5A5FF9999
          99FF858585FF787878FF7D7D7DFF868686FF878787FF959595FE9A9A9AFC9A9A
          9AFDA4A4A4FDA4A4A4FDA4A4A4FD8C8C8CFE898989BD01010105B7B7B7FFE6E6
          E6FFEDEDEDFFEBEBEBFFE8E8E8FFE0E0E0FFE1E1E1FFC1C1C1FFD2D2D2FFEFEF
          EFFFF7F7F7FFCDCDCDFFB9B9B9FFE0E0E0FFBFBFBFFFA8A8A8FFAAAAAAFFAFAF
          AFFF9B9B9BFF8B8B8BFF8C8C8CFF8D8D8DFF8C8C8CFF949494FE989898FC9797
          97FDA3A3A3FDA4A4A4FDA4A4A4FD888888FE999999BE01010105B7B7B7FFE2E2
          E2FFE6E6E6FFE9E9E9FFEDEDEDFFF2F2F2FFF5F5F5FFDEDEDEFFC5C5C5FFE9E9
          E9FFEAEAEAFFC8C8C8FFA2A2A2FFB8B8B8FFB1B1B1FFB3B3B3FFB6B6B6FFBABA
          BAFFB0B0B0FFB1B1B1FFAAAAAAFFA5A5A5FF9E9E9EFF989898FE949494FC9595
          95FD9F9F9FFDA2A2A2FDA4A4A4FD8E8E8EFE979797BD01010105BBBBBBFFF3F3
          F3FFF1F1F1FFE9E9E9FFE7E7E7FFE7E7E7FFEBEBEBFFF5F5F5FFC7C7C7FFF5F5
          F5FFFAFAFAFFD3D3D3FFA9A9A9FFBCBCBCFFBFBFBFFFC4C4C4FFC9C9C9FFD0D0
          D0FFC5C5C5FFCBCBCBFFE1E1E1FFDADADAFFADADADFF9A9A9AFE909090FC9090
          90FD9B9B9BFD9E9E9EFDA4A4A4FD919191FE878787BD01010105B9B9B9FEF0F0
          F0FFFEFEFEFFFFFFFFFFFBFBFBFFF4F4F4FFF0F0F0FFECECECFFC4C4C4FFD5D5
          D5FFF5F5F5FFEEEEEEFFC6C6C6FFBEBEBEFFC7C7C7FFCBCBCBFFD8D8D8FFE3E3
          E3FFD9D9D9FFD5D5D5FFC7C7C7FFB8B8B8FFB9B9B9FE939393FD8A8A8AFD8D8D
          8DFD959595FD9A9A9AFDA1A1A1FD909090FE888888BD01010105939393B2B8B8
          B8F6C3C3C3FFD4D4D4FFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEFFBEBE
          BEFFBCBCBCFFBDBDBDFFC5C5C5FFC9C9C9FFD0D0D0FFCACACAFFC5C5C5FFCACA
          CAFFBCBCBCFFB3B3B3FFCBCBCBFFD4D4D4FFC1C1C1FD8C8C8CFC838383FD8989
          89FD8C8C8CFD939393FD9E9E9EFD8E8E8EFE888888BD01010105000000001919
          191B6161616D969696B8BABABAFBBDBDBDFFD8D8D8FFEFEFEFFFFEFEFEFFFCFC
          FCFFF6F6F6FFEBEBEBFFE4E4E4FFD1D1D1FFBBBBBBFFD1D1D1FFE6E6E6FFE1E1
          E1FFA8A8A8FFC1C1C1FFE0E0E0FFDBDBDBFFC0C0C0FD868686FC7F7F7FFD8383
          83FD838383FD8A8A8AFD979797FD8B8B8BFE888888BD01010105000000000000
          00000000000000000000101010104545454EA7A7A7D0B9B9B9F5C0C0C0FFD3D3
          D3FFEDEDEDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1FFC5C5C5FFF8F8
          F8FFB5B5B5FFC2C2C2FFE4E4E4FFDEDEDEFFC1C1C1FD838383FC7C7C7CFD7E7E
          7EFD7C7C7CFD818181FD919191FD898989FE888888BD01010105000000000000
          000000000000000000000000000000000000000000000E0E0E0F6262626F9494
          94B4BABABAFABBBBBBFFD6D6D6FFE9E9E9FFFBFBFBFFFFFFFFFFE6E6E6FFC5C5
          C5FFA2A2A2FFC9C9C9FFE6E6E6FFE0E0E0FFC6C6C6FE838383FC7C7C7CFD7F7F
          7FFD7C7C7CFD7D7D7DFD8F8F8FFD868686FE8B8B8BBD01010105000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000151515153B3B3B41A6A6A6CFBDBDBDF6C1C1C1FFCFCFCFFFECECECFFFEFE
          FEFFA3A3A3FFC3C3C3FFEDEDEDFFDADADAFFB8B8B8FD9C9C9CFC909090FD8787
          87FD7D7D7DFD808080FD8D8D8DFC858585FE999999BD01010106000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000303030463636370969696B4B8B8B8F7BDBD
          BDFF9E9E9EFFC3C3C3FFD7D7D7FFB3B3B3FFA8A8A8FDA9A9A9FCABABABFDA6A6
          A6FD9C9C9CFD929292FD8F8F8FFC868686FE9C9C9CBE01010106000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000181818183333
          3333A0A0A0DE979797FFAFAFAFFFB1B1B1FFB2B2B2FDB5B5B5FCBABABAFDC0C0
          C0FDC8C8C8FDC3C3C3FDB9B9B9FDA6A6A6FC8F8F8FA900000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000069696994ACACACFEBEBEBEFEC2C2C2FDC6C6C6FDC8C8C8FDCACACAFDCFCF
          CFFDDADADAFDE1E1E1FDDDDDDDFDBEBEBEEF3C3C3C4800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000303030389F9F9FD7B9B9B9F3BFBFBFFCCBCBCBFDDBDBDBFDDCDCDCFDDEDE
          DEFDD8D8D8FDC3C3C3FBB6B6B6E45151515B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000021212125757575909E9E9ECFB5B5B5F7BEBEBEFDBDBD
          BDFCB5B5B5E67979798E13131315000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000030303032D2D2D30636363776464
          64711F1F1F220000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000010101060404041305050518030303100101
          0105000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020208080808260D0D0D430D0D0D3F0808
          0827040404150202020900000002000000000000000000000000000000000000
          000000000000000000000000000000000000000000020202020A040404140505
          0518050505180505051805050518050505180505051805050518050505180505
          0518050505180505051805050518191919470B0B0B38131313611616166E1313
          135F0E0E0E480A0A0A310505051A020202080000000100000000000000000000
          0000000000000000000000000000000000000101010404040414080808280A0A
          0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A
          0A300A0A0A300A0A0A300A0A0A303030307F636363E7424242B31E1E1E851919
          197C1616166E111111550A0A0A32030303100000000100000000000000000000
          000000000000000000000000000000000000000000020202020A040404140505
          0518050505180505051805050518050505180505051805050518050505180505
          05180505051805050518050505180C0C0C29696969F26F6F6FFF6F6F6FFF4D4D
          4DC7292929800C0C0C3E06060620020202090000000100000000000000000000
          0000000000000000000000000000000000001C1C1C40535353BF535353BF5353
          53BF535353BF535353BF535353BF535353BF535353BF535353BF535353BF5353
          53BF535353BF535353BF535353BF545454C1696969F16F6F6FFF6F6F6FFF6F6F
          6FFF6F6F6FFF5B5B5BD208080815000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000101010103010101040101010302020209626262E26F6F6FFF6F6F6FFF6262
          62E0383838810707071000000000000000000000000000000000000000000000
          0000000000000000000000000001010101030101010602020208020202080202
          02090202020C040404140606061C06060620060606200606061C050505190606
          061C070707240808082807070725272727656F6F6FFF555555C7282828660606
          06200606061E040404150202020A000000020000000000000000000000000000
          00000000000000000002010101070303030E04040414050505180505051B0707
          07230A0A0A330E0E0E47121212581313135F1313135F12121258101010511111
          11561313136014141464131313612F2F2F8B1C1C1C65111111561313135E1313
          13601212125B0F0F0F4A0909092E040404120101010300000000000000000000
          00000000000202020208040404120505051A0606061E070707210909092D0E0E
          0E4714141462171717731919197C1919197F1919197F1919197C181818781C1C
          1C81292929972121218C1919197F1919197B181818781919197B1919197F1A1A
          1A801919197D171717751313135F0B0B0B380404041200000002000000000000
          000101010105030303110F0F0F301B1B1B4D212121582222225D252525703737
          37937A7A7ACDACACACF7B7B7B7FFB7B7B7FFACACACF76D6D6DCF808080ED9393
          93FF9D9D9DFF959595FF818181EF505050CD646464EF6F6F6FFF6F6F6FFF6F6F
          6FFF545454D72F2F2FA01919197B131313610A0A0A310202020B000000000000
          00020404040E1717174023232357292929582D2D2D582F2F2F64646464B0AEAE
          AEF9C7C7C7FFCFCFCFFFCFCFCFFFCDCDCDFFA6A6A6FF999999FFAFAFAFFFBABA
          BAFFB6B6B6FFAFAFAFFF7B7B7BFF7F7F7FFF9A9A9AFFA2A2A2FF9D9D9DFF9898
          98FF858585FF717171FF393939B018181878101010510505051B000000000101
          010413131332232323552E2E2E582D2D2D582C2C2C5948484887AEAEAEF8CACA
          CAFFD1D1D1FFCDCDCDFFCBCBCBFFAFAFAFFF9B9B9BFFBCBCBCFFB7B7B7FFB3B3
          B3FFB2B2B2FF7C7C7CFF878787FFA7A7A7FF9F9F9FFF9B9B9BFF999999FF9898
          98FF989898FF919191FF717171FF2F2F2F9F1414146308080829000000000404
          040D2020204E2E2E2E562D2D2D592B2B2B592C2C2C5C8C8C8CD3C7C7C7FFD1D1
          D1FFCDCDCDFFCBCBCBFFC7C7C7FF979797FFB7B7B7FFB7B7B7FFB3B3B3FFB2B2
          B2FF999999FF7B7B7BFFA8A8A8FF9E9E9EFF9A9A9AFF989898FF999999FF9B9B
          9BFF9B9B9BFF9B9B9BFF8B8B8BFF646464EF151515670909092F000000000F0F
          0F242424244E2D2D2D562B2B2B5A2B2B2B5B2C2C2C5EB7B7B7FFD1D1D1FFCDCD
          CDFFCBCBCBFFCBCBCBFFB7B7B7FF9F9F9FFFBABABAFFB3B3B3FFB2B2B2FFB2B2
          B2FF808080FF939393FF9F9F9FFF9A9A9AFF989898FF9A9A9AFF9C9C9CFFA0A0
          A0FFA3A3A3FFA3A3A3FFA2A2A2FF737373FF252525840909092F000000001414
          142F2727274C2C2C2C562C2C2C5C2D2D2D5E51515188BCBCBCFFCFCFCFFFCCCC
          CCFFCBCBCBFFCCCCCCFFB0B0B0FFA8A8A8FFB6B6B6FFB3B3B3FFB3B3B3FFB5B5
          B5FF747474FF9A9A9AFF9C9C9CFF9A9A9AFF9B9B9BFF9F9F9FFFA5A5A5FFABAB
          ABFFB1B1B1FFB3B3B3FFAFAFAFFF7F7F7FFF2B2B2B8A08080829000000001414
          142E252525473131315933333362343434655656568DBBBBBBFFCFCFCFFFCFCF
          CFFFCFCFCFFFD1D1D1FFB3B3B3FFA6A6A6FFBABABAFFBBBBBBFFBCBCBCFFBFBF
          BFFF7B7B7BFF989898FFA7A7A7FFA7A7A7FFABABABFFB1B1B1FFB9B9B9FFC2C2
          C2FFCBCBCBFFCECECEFFC6C6C6FF818181FF2828287D0606061C000000000E0E
          0E21212121443939395A3B3B3B653D3D3D6B4040406FB7B7B7FFCFCFCFFFD3D3
          D3FFD3D3D3FFD7D7D7FFC6C6C6FF999999FFBFBFBFFFC3C3C3FFC6C6C6FFCBCB
          CBFF878787FF939393FFB7B7B7FFB7B7B7FFBCBCBCFFC3C3C3FFCCCCCCFFD7D7
          D7FFE0E0E0FFE5E5E5FFDBDBDBFF747474FF1D1D1D590202020C000000000303
          03081D1D1D413A3A3A56424242634444446B48484871959595D4C5C5C5FFD7D7
          D7FFD7D7D7FFDBDBDBFFDADADAFF989898FFBBBBBBFFCCCCCCFFCFCFCFFFD3D3
          D3FFB1B1B1FF797979FFC6C6C6FFC7C7C7FFCBCBCBFFD1D1D1FFDADADAFFE3E3
          E3FFF0F0F0FFF7F7F7FFC5C5C5FF626262E60404041301010103000000000000
          00001010102424242446454545604A4A4A674D4D4D6C6464648AB7B7B7FFCECE
          CEFFDBDBDBFFDEDEDEFFE2E2E2FFC3C3C3FF979797FFCBCBCBFFD6D6D6FFDADA
          DAFFDFDFDFFF858585FF939393FFD6D6D6FFD8D8D8FFDDDDDDFFE3E3E3FFEBEB
          EBFFF3F3F3FFEBEBEBFF7D7D7DFF2525255C0101010300000000000000000000
          00000202020415151530222222453C3C3C574F4F4F65545454697B7B7BA2ACAC
          ACF3CACACAFFDADADAFFE3E3E3FFE7E7E7FFB6B6B6FF979797FFB7B7B7FFD3D3
          D3FFE3E3E3FFD3D3D3FF7B7B7BFF8B8B8BFFC2C2C2FFE7E7E7FFEBEBEBFFE7E7
          E7FFBFBFBFFF7E7E7EFF2B2B2B66000000020000000000000000000000000000
          000000000000000000000A0A0A18171717341C1C1C401C1C1C401C1C1C402A2A
          2A4C7272729FB7B7B7FFB7B7B7FFB7B7B7FFACACACEF6D6D6D9F848484CF9393
          93FF939393FF939393FF858585DF41414193626262E26F6F6FFF6F6F6FFF6F6F
          6FFF4D4D4DB01C1C1C4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020208080808270F0F0F4B0F0F0F4D0B0B
          0B350606061F0303031001010105000000010000000000000000000000000000
          000000000000000000000000000000000000000000020202020A040404140505
          0518050505180505051805050518050505180505051805050518050505180505
          0518050505180505051805050518262626631717174E13131361171717741515
          1569111111560C0C0C3E06060620020202090000000100000000000000000000
          0000000000000000000000000000000000000101010404040414080808280A0A
          0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A
          0A300A0A0A300A0A0A300A0A0A302A2A2A726F6F6FFF595959D9333333A61919
          197C1616166E111111550A0A0A32030303100000000100000000000000000000
          000000000000000000000000000000000000000000020202020A040404140505
          0518050505180505051805050518050505180505051805050518050505180505
          05180505051805050518050505180606061C626262E66F6F6FFF6F6F6FFF6464
          64EB3E3E3EA41010103E0505051A020202080000000100000000000000000000
          0000000000000000000000000000000000001C1C1C40535353BF535353BF5353
          53BF535353BF535353BF535353BF535353BF535353BF535353BF535353BF5353
          53BF535353BF535353BF535353BF545454C1696969F16F6F6FFF6F6F6FFF6F6F
          6FFF6F6F6FFF5B5B5BD107070712000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000008080816686868F06F6F6FFF6F6F6FFF4646
          46A11C1C1C410000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002A2A2A61616161DF38383881070707100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000151515300000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010106030303100404
          041304040412262626571F1F1F6E1818187A18181877171717711616166C1414
          14661313135E111111540F0F0F490C0C0C3E0A0A0A32080808270606061D0505
          0517030303110202020B01010105000000020000000000000000000000000000
          00000000000000000000000000000000000000000001040404140B0B0B380E0E
          0E461818184FB1B1B1EDBDBDBDEA999999DB747474C64F4F4FB03434349B2323
          23891919197E1818187A171717741616166F1515156913131361111111570F0F
          0F4D0D0D0D410B0B0B35070707240303030E0000000200000000000000000000
          0000000000000000000001010103010101070202020A07070722111111571717
          17721D1D1D76D4D4D4FCF2F2F2FFEBEBEBFFECECECFFE8E8E8FFE2E2E2FFD0D0
          D0F9AEAEAEE8878787D35D5D5DBA3D3D3DA32828288F1919197E1919197B1818
          1876161616701515156B10101052070707230101010500000000000000000000
          000000000000000000000202020B070707230C0C0C347F7F7FC4848484C95959
          59B5444444ABD0D0D0FBE6E6E6FFD7D7D7FFDADADAFFDEDEDEFFE3E3E3FFEAEA
          EAFFEFEFEFFFEFEFEFFFEBEBEBFFE5E5E5FFD9D9D9FDB9B9B9EE929292DA6A6A
          6AC2454545AA2E2E2E94151515680909092D0101010700000000000000000000
          00000000000000000000040404140D0D0D4314141464C8C8C8F9F3F3F3FFE9E9
          E9FFD5D5D5FFD3D3D3FFE8E8E8FFDBDBDBFFDEDEDEFFDFDFDFFFDFDFDFFFDFDF
          DFFFDFDFDFFFDFDFDFFFE3E3E3FFE8E8E8FFEEEEEEFFF2F2F2FFF2F2F2FFEFEF
          EFFFEAEAEAFFCFCFCFFF2D2D2D840909092E0101010700000000000000000000
          00000000000000000000303030593E3E3E892F2F2F90BFBFBFF4E8E8E8FFDBDB
          DBFFD0D0D0FFD6D6D6FFEAEAEAFFDCDCDCFFDFDFDFFFE0E0E0FFE1E1E1FFE2E2
          E2FFE3E3E3FFE3E3E3FFE3E3E3FFE5E5E5FFE5E5E5FFE6E6E6FFE7E7E7FFE8E8
          E8FFF3F3F3FFE3E3E3FF303030870909092D0101010700000000000000000000
          000000000000000000008D8D8DC9E9E9E9FFD5D5D5FFCECECEFEEBEBEBFFDBDB
          DBFFCDCDCDFFD5D5D5FFEBEBEBFFDFDFDFFFE0E0E0FFE1E1E1FFE2E2E2FFE3E3
          E3FFE3E3E3FFE5E5E5FFE6E6E6FFE7E7E7FFE8E8E8FFE9E9E9FFEAEAEAFFEBEB
          EBFFF3F3F3FFDDDDDDFF303030860909092C0101010600000000000000000000
          000000000000000000008A8A8ABDF1F1F1FFD3D3D3FFD2D2D2FFEBEBEBFFDEDE
          DEFFCFCFCFFFD5D5D5FFECECECFFDFDFDFFFE2E2E2FFE3E3E3FFE3E3E3FFE3E3
          E3FFE5E5E5FFE6E6E6FFE7E7E7FFE8E8E8FFE9E9E9FFEBEBEBFFEBEBEBFFECEC
          ECFFF3F3F3FFDEDEDEFF303030860909092B0101010600000000000000000000
          00000000000000000000898989BDEEEEEEFFCCCCCCFFCFCFCFFFEDEDEDFFDFDF
          DFFFCFCFCFFFD5D5D5FFEEEEEEFFE1E1E1FFE3E3E3FFE3E3E3FFE5E5E5FFE6E6
          E6FFE7E7E7FFE8E8E8FFE9E9E9FFEAEAEAFFEBEBEBFFECECECFFEDEDEDFFEDED
          EDFFF5F5F5FFDFDFDFFF2C2C2C810909092B0101010500000000000000000000
          00000000000000000000898989BDEFEFEFFFCFCFCFFFD0D0D0FFEEEEEEFFE1E1
          E1FFD1D1D1FFD5D5D5FFEFEFEFFFE3E3E3FFE3E3E3FFE5E5E5FFE7E7E7FFE8E8
          E8FFE8E8E8FFEAEAEAFFEBEBEBFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFFEFEF
          EFFFF6F6F6FFDFDFDFFF2929297E0909092B0101010600000000000000000000
          00000000000000000000888888BDEFEFEFFFD0D0D0FFD0D0D0FFEFEFEFFFE3E3
          E3FFD3D3D3FFD5D5D5FFF0F0F0FFE3E3E3FFE6E6E6FFE7E7E7FFE8E8E8FFE9E9
          E9FFEBEBEBFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFFEFEFEFFFF0F0
          F0FFF7F7F7FFE0E0E0FF2A2A2A7E0808082A0101010500000000000000000000
          00000000000000000000888888BDF0F0F0FFD2D2D2FFD0D0D0FFF0F0F0FFE3E3
          E3FFD3D3D3FFD5D5D5FFF1F1F1FFE6E6E6FFE8E8E8FFE8E8E8FFEAEAEAFFEBEB
          EBFFEBEBEBFFECECECFFEEEEEEFFEFEFEFFFEFEFEFFFF0F0F0FFF1F1F1FFF2F2
          F2FFF9F9F9FFDFDFDFFF2A2A2A7E080808290101010500000000000000000000
          00000000000000000000888888BDF0F0F0FFD3D3D3FFD0D0D0FFF1F1F1FFE5E5
          E5FFD5D5D5FFD5D5D5FFF2F2F2FFE7E7E7FFE9E9E9FFEBEBEBFFEBEBEBFFECEC
          ECFFEDEDEDFFEEEEEEFFEFEFEFFFEFEFEFFFF0F0F0FFF2F2F2FFF3F3F3FFF3F3
          F3FFFBFBFBFFDBDBDBFF2929297C080808270101010400000000000000000000
          00000000000000000000888888BDF1F1F1FFD3D3D3FFD0D0D0FFF2F2F2FFE7E7
          E7FFD7D7D7FFD5D5D5FFF3F3F3FFE9E9E9FFEBEBEBFFECECECFFEDEDEDFFEEEE
          EEFFEFEFEFFFEFEFEFFFF0F0F0FFF1F1F1FFF2F2F2FFF3F3F3FFF5F5F5FFF3F3
          F3FFFCFCFCFFD8D8D8FD26262678080808270101010400000000000000000000
          00000000000000000000888888BDF2F2F2FFD6D6D6FFD0D0D0FFF3F3F3FFE9E9
          E9FFD8D8D8FFD3D3D3FFF6F6F6FFEBEBEBFFECECECFFEDEDEDFFEFEFEFFFEFEF
          EFFFF0F0F0FFF1F1F1FFF2F2F2FFF3F3F3FFF5F5F5FFE2E2E2FFEEEEEEFFF9F9
          F9FFFDFDFDFFD7D7D7FB23232375080808270101010400000000000000000000
          00000000000000000000888888BDF3F3F3FFD7D7D7FFD0D0D0FFF5F5F5FFEBEB
          EBFFD9D9D9FFD3D3D3FFF7F7F7FFECECECFFEEEEEEFFEFEFEFFFEFEFEFFFF0F0
          F0FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FFF6F6F6FFDADADAFFD1D1D1FFEDED
          EDFFFFFFFFFFD7D7D7FC23232375080808260101010400000000000000000000
          00000000000000000000888888BDF3F3F3FFD9D9D9FFCFCFCFFFF6F6F6FFECEC
          ECFFDBDBDBFFD3D3D3FFF7F7F7FFEEEEEEFFEFEFEFFFF0F0F0FFF1F1F1FFF2F2
          F2FFF3F3F3FFF3F3F3FFF3F3F3FFF6F6F6FFF5F5F5FFD6D6D6FFD9D9D9FFCCCC
          CCFFE7E7E7FFD9D9D9FC212121680606061D0000000200000000000000000000
          00000000000000000000888888BDF3F3F3FFDBDBDBFFCFCFCFFFF7F7F7FFEEEE
          EEFFDBDBDBFFD3D3D3FFF9F9F9FFEFEFEFFFF1F1F1FFF2F2F2FFF3F3F3FFF3F3
          F3FFF3F3F3FFF5F5F5FFF6F6F6FFF8F8F8FFF2F2F2FFCBCBCBFFFBFBFBFFF8F8
          F8FFE5E5E5FFCECECEFE1C1C1C4B0303030D0000000100000000000000000000
          00000000000000000000888888BDF5F5F5FFDCDCDCFFCFCFCFFFF8F8F8FFEFEF
          EFFFDCDCDCFFD5D5D5FFFAFAFAFFF0F0F0FFF2F2F2FFF3F3F3FFF3F3F3FFF5F5
          F5FFF5F5F5FFF6F6F6FFF7F7F7FFFBFBFBFFE7E7E7FFCFCFCFFFFFFFFFFFFFFF
          FFFFFFFFFFFFB8B8B8F20D0D0D1F000000020000000000000000000000000000
          00000000000000000000888888BDF5F5F5FFDEDEDEFFCFCFCFFFF9F9F9FFF1F1
          F1FFDFDFDFFFD5D5D5FFFBFBFBFFF2F2F2FFF3F3F3FFF3F3F3FFF5F5F5FFF6F6
          F6FFF7F7F7FFF8F8F8FFF9F9F9FFFEFEFEFFDBDBDBFFDEDEDEFFFFFFFFFFFFFF
          FFFFC1C1C1F72626264700000002000000000000000000000000000000000000
          00000000000000000000888888BDF6F6F6FFDFDFDFFFCFCFCFFFFAFAFAFFF3F3
          F3FFDFDFDFFFD5D5D5FFFCFCFCFFF3F3F3FFF5F5F5FFF5F5F5FFF7F7F7FFF7F7
          F7FFF8F8F8FFF9F9F9FFFAFAFAFFFFFFFFFFD6D6D6FFF3F3F3FFFFFFFFFFC4C4
          C4F7262626480000000200000000000000000000000000000000000000000000
          00000000000000000000888888BDF7F7F7FFE1E1E1FFCFCFCFFFFBFBFBFFF3F3
          F3FFE1E1E1FFD5D5D5FFFDFDFDFFF5F5F5FFF6F6F6FFF7F7F7FFF8F8F8FFF9F9
          F9FFFAFAFAFFFBFBFBFFFBFBFBFFFDFDFDFFDEDEDEFFFFFFFFFFC5C5C5F82626
          2648000000020000000000000000000000000000000000000000000000000000
          00000000000000000000888888BDF7F7F7FFE2E2E2FFD0D0D0FFFCFCFCFFF5F5
          F5FFE2E2E2FFD5D5D5FFFEFEFEFFF6F6F6FFF7F7F7FFF8F8F8FFFAFAFAFFFBFB
          FBFFFBFBFBFFFCFCFCFFFFFFFFFFFEFEFEFFF7F7F7FFCCCCCCFB2C2C2C500000
          0002000000000000000000000000000000000000000000000000000000000000
          00000000000000000000888888BDF8F8F8FFE3E3E3FFD0D0D0FFFDFDFDFFF7F7
          F7FFE3E3E3FFD5D5D5FFFFFFFFFFF7F7F7FFFAFAFAFFFCFCFCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF7F7F7FFEBEBEBFFC7C7C7F92B2B2B4B000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000888888BDF9F9F9FFE5E5E5FFD0D0D0FFFEFEFEFFF8F8
          F8FFE3E3E3FFD8D8D8FFFFFFFFFFFEFEFEFFF7F7F7FFEDEDEDFFE1E1E1FFD6D6
          D6FFD2D2D2FFC1C1C1FF797979BE4141416D1A1A1A2B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000878787BDFAFAFAFFE7E7E7FFD0D0D0FFFEFEFEFFFAFA
          FAFFE9E9E9FFC0C0C0FFD3D3D3FFCFCFCFFFD1D1D1FFD8D8D8FFE0E0E0FFEBEB
          EBFFDDDDDDFF717171AB01010105000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000878787BDFBFBFBFFE8E8E8FFD2D2D2FFFFFFFFFFFFFF
          FFFFFFFFFFFFEBEBEBFFE8E8E8FFEAEAEAFFE5E5E5FFDEDEDEFFD8D8D8FFBBBB
          BBFE5C5C5C930101010300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000868686BDFBFBFBFFEAEAEAFFC7C7C7FFE9E9E9FFDBDB
          DBFFD3D3D3FFD0D0D0FFCFCFCFFFD3D3D3FFE0E0E0FFE7E7E7FFC4C4C4FE3232
          325B010101030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000868686BBFBFBFBFFF7F7F7FFD3D3D3FFD9D9D9FFE6E6
          E6FFF1F1F1FFF6F6F6FFF3F3F3FFEEEEEEFFE1E1E1FFBCBCBCEC313131530000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008B8B8BBFFDFDFDFFF5F5F5FFF1F1F1FFE5E5E5FFD4D4
          D4FAAFAFAFDF858585B75C5C5C8B3939395F1F1F1F340A0A0A10000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000005E5E5E8E8B8B8BBB63636390404040672525253E1111
          111C010101010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101010101
          010101010102010101040303030A040404110505051605050516050505140505
          050F040404090404040704040407040404060404040603030305020202040202
          0203020202030101010201010101010101010101010100000000000000000000
          0000000000000000000000000000000000000101010101010101010101030202
          020B0505051B0909092B0C0C0C3E1010104E1212125812121258101010520D0D
          0D430A0A0A3109090920070707140606060B0505050905050508040404070303
          0305030303050202020301010102010101010101010101010101000000000000
          0000000000000000000000000000000000000101010101010105050505180C0C
          0C3C14141464212121922F2F2FB23D3D3DC73F3F3FCB333333C2272727B01E1E
          1E981A1A1A80141414660F0F0F470B0B0B28090909150707070C050505090404
          0407040404060202020402020203010101020101010201010101000000000000
          00000000000000000000000000000101010102020208070707241616166A4343
          43CC636363ED9A9A9AFBB9B9B9FFC7C7C7FFC8C8C8FFC2C2C2FE9D9D9DFC7979
          79F5464646DB292929B91D1D1D931616166C101010420B0B0B200808080F0606
          060A050505080404040603030305020202030101010201010101000000000000
          00000000000000000000000000010303030E0909092F2D2D2D9C656565F89F9F
          9FFFD9D9D9FFF0F0F0FFF2F2F2FFEEEEEEFFE6E6E6FFE9E9E9FFF3F3F3FFEDED
          EDFFCECECEFF969696FC505050E4252525B41C1C1C8A121212570D0D0D2A0808
          08110606060A0404040704040406020202040202020301010102000000000000
          000000000000000000000303030D0C0C0C3D414141C26C6C6CFFACACACFFE2E2
          E2FFE4E4E4FFC6C6C6FFADADADFFA7A7A7FFABABABFFA4A4A4FFAAAAAAFFA6A6
          A6FFCBCBCBFFEDEDEDFFCACACAFF797979F9353535CC1F1F1F9A151515640D0D
          0D2E080808120606060A04040406030303050202020401010102000000000000
          0000000000000101010412121244545454DE6A6A6AFF9A9A9AFFDCDCDCFFD3D3
          D3FFA2A2A2FFAAAAAAFFCDCDCDFFD9D9D9FFDADADAFFD8D8D8FFCCCCCCFFCACA
          CAFFB0B0B0FFB0B0B0FFD4D4D4FFE2E2E2FF9E9E9EFE434343DB202020A01414
          14660C0C0C2C0808081005050508040404060202020401010102000000000000
          00000000000006060619535353D46B6B6BFF767676FFC7C7C7FFCFCFCFFF9999
          99FFC0C0C0FFE0E0E0FFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF9B9B9BFF8D8D
          8DFFA9A9A9FFBDBDBDFFB2B2B2FFABABABFFDCDCDCFFADADADFE454545DD2020
          209F1313135F0B0B0B260606060B040404060303030502020203000000000000
          0000010101032B2B2B746C6C6CFF6E6E6EFF969696FFCBCBCBFFA9A9A9FFB3B3
          B3FFE2E2E2FFE0E0E0FFE3E3E3FFE4E4E4FFE4E4E4FFE4E4E4FFC5C5C5FF6E6E
          6EFF6C6C6CFF868686FFDDDDDDFFBDBDBDFF9D9D9DFFD7D7D7FFA6A6A6FF3C3C
          3CD61E1E1E941111114F08080818040404070303030502020203000000000000
          000005050512525252CA707070FF707070FFAAAAAAFFC0C0C0FF939393FFE0E0
          E0FFE5E5E5FFE6E6E6FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FF9999
          99FF707070FFBBBBBBFFE2E2E2FFE3E3E3FFC8C8C8FFA3A3A3FFD9D9D9FF9090
          90FD2D2D2DC51A1A1A800D0D0D370606060F0303030502020204000000000000
          00001A1A1A446C6C6CF8777777FF757575FFB0B0B0FFADADADFFA6A6A6FFE7E7
          E7FFEAEAEAFFEAEAEAFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFEBEBEBFFC9C9
          C9FFB1B1B1FFE8E8E8FFE6E6E6FFE3E3E3FFE1E1E1FFBFBFBFFFA2A2A2FFCFCF
          CFFF646464F5222222A914141463090909200404040702020204000000000000
          00003232327A767676FF7E7E7EFF7A7A7AFFAEAEAEFFA0A0A0FFB7B7B7FFE2E2
          E2FFBABABAFFE4E4E4FFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFEEEEEEFFEDED
          EDFFEDEDEDFFEBEBEBFFEAEAEAFFE8E8E8FFE4E4E4FFE3E3E3FFB3B3B3FFBCBC
          BCFFB5B5B5FF424242DC1C1C1C8D0D0D0D3E0505050D02020204000000000000
          0000484848AA7D7D7DFF848484FF7D7D7DFFA5A5A5FF9B9B9BFFBFBFBFFFDBDB
          DBFF828282FF969696FFE6E6E6FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0
          F0FFEFEFEFFFEEEEEEFFEDEDEDFFEAEAEAFFE8E8E8FFE5E5E5FFDBDBDBFF9B9B
          9BFFC9C9C9FF858585FC242424AF131313610707071B02020204000000000000
          00004D4D4DB2838383FF898989FF858585FF989898FF969696FFBFBFBFFFD9D9
          D9FF848484FF707070FF8B8B8BFFE2E2E2FFF3F3F3FFF3F3F3FFF2F2F2FFEDED
          EDFFF1F1F1FFF0F0F0FFEFEFEFFFEDEDEDFFEBEBEBFFE8E8E8FFE6E6E6FFC0C0
          C0FFACACACFFB2B2B2FF4A4A4ADC1A1A1A800B0B0B3002020206000000000000
          00004D4D4DB0868686FF8E8E8EFF8E8E8EFF8A8A8AFF969696FFB7B7B7FFE0E0
          E0FF949494FF9B9B9BFFBEBEBEFFDEDEDEFFF5F5F5FFF5F5F5FFDEDEDEFFB0B0
          B0FFBEBEBEFFE3E3E3FFF1F1F1FFEFEFEFFFEEEEEEFFEBEBEBFFE6E6E6FFDFDF
          DFFF9B9B9BFFC9C9C9FF767676F4202020980F0F0F440404040D000000000000
          000041414197888888FF949494FF969696FF848484FF949494FFA3A3A3FFE1E1
          E1FFD7D7D7FFD4D4D4FFE9E9E9FFF8F8F8FFF4F4F4FFD2D2D2FF989898FF7676
          76FF777777FF8B8B8BFFB4B4B4FFE5E5E5FFF0F0F0FFEDEDEDFFE4E4E4FFDFDF
          DFFFAAAAAAFFBBBBBBFF989898FE333333B61313135505050514000000000000
          00002A2A2A64878787FF9A9A9AFF9E9E9EFF8E8E8EFF8A8A8AFF8A8A8AFFDEDE
          DEFFDFDFDFFFDADADAFFD6D6D6FFDADADAFFC1C1C1FF898989FF7D7D7DFFA2A2
          A2FFB9B9B9FF9C9C9CFF8B8B8BFFC7C7C7FFD6D6D6FF9F9F9FFF858585FF8D8D
          8DFFB4B4B4FFACACACFFAEAEAEFF404040C8151515620606061A000000000000
          00001919193A797979F89F9F9FFFA4A4A4FF9D9D9DFF828282FF878787FFBDBD
          BDFFE7E7E7FFDFDFDFFFCDCDCDFFA2A2A2FF7D7D7DFF7E7E7EFFB0B0B0FFEBEB
          EBFFF9F9F9FFF1F1F1FFE3E3E3FFE6E6E6FFE8E8E8FF9F9F9FFF707070FF8585
          85FFBDBDBDFFA1A1A1FFB3B3B3FF4C4C4CD81717176B0707071E000000000000
          000002020204585858CA9E9E9EFFA9A9A9FFB0B0B0FF8B8B8BFF818181FF8B8B
          8BFFE5E5E5FFE5E5E5FFB6B6B6FF797979FF858585FFB0B0B0FFD2D2D2FFE6E6
          E6FFEFEFEFFFF5F5F5FFF5F5F5FFF4F4F4FFF0F0F0FFE6E6E6FF9F9F9FFF8484
          84FFC6C6C6FF9A9A9AFFAEAEAEFF535353E01717176C0606061E000000000000
          000000000000323232738A8A8AFFB2B2B2FFB4B4B4FFAEAEAEFF7B7B7BFF8080
          80FFB3B3B3FFEEEEEEFFD1D1D1FFAAAAAAFFBFBFBFFFDCDCDCFFDADADAFFCACA
          CAFFCCCCCCFFDBDBDBFFDADADAFFDADADAFFD9D9D9FFD7D7D7FFD5D5D5FFC5C5
          C5FFC7C7C7FF979797FFA5A5A5FF545454E0151515640606061A000000000000
          000000000000040404096C6C6CEDABABABFFBBBBBBFFC0C0C0FF9E9E9EFF7979
          79FF808080FFCFCFCFFFEEEEEEFFE7E7E7FFE4E4E4FFE3E3E3FFE1E1E1FF9191
          91FF929292FFDDDDDDFFDCDCDCFFDCDCDCFFDDDDDDFFDDDDDDFFDDDDDDFFE4E4
          E4FFBEBEBEFF959595FF999999FF4D4D4DD51111115504040413000000000000
          000000000000000000002D2D2D698B8B8BFFC1C1C1FFC4C4C4FFC6C6C6FF9090
          90FF777777FF808080FFDADADAFFF2F2F2FFEAEAEAFFE8E8E8FFB1B1B1FF7070
          70FF707070FFCBCBCBFFE2E2E2FFE2E2E2FFE3E3E3FFE3E3E3FFE3E3E3FFE8E8
          E8FFA1A1A1FF959595FF8A8A8AFF3E3E3EBD0D0D0D3F0303030B000000000000
          0000000000000000000003030306535353BEA5A5A5FFCECECEFFCECECEFFCDCD
          CDFF8B8B8BFF797979FF828282FFD5D5D5FFF5F5F5FFEEEEEEFFC6C6C6FFA1A1
          A1FF818181FF969696FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFECECECFFD4D4
          D4FF888888FF929292FF797979FC2929298C0808082600000002000000000000
          000000000000000000000000000011111128696969E7B5B5B5FFD8D8D8FFD9D9
          D9FFCFCFCFFF8A8A8AFF737373FF7C7C7CFFB7B7B7FFEDEDEDFFF6F6F6FFF1F1
          F1FFE3E3E3FFCFCFCFFFE6E6E6FFEEEEEEFFEFEFEFFFF2F2F2FFE3E3E3FF8F8F
          8FFF898989FF848484FF5B5B5BDF101010490303030E00000000000000000000
          0000000000000000000000000000000000001B1B1B3F727272F1C3C3C3FFE1E1
          E1FFE4E4E4FFDCDCDCFF9A9A9AFF727272FF787878FF909090FFCACACAFFEEEE
          EEFFF8F8F8FFF4F4F4FFF6F6F6FFF4F4F4FFEFEFEFFFCECECEFF8A8A8AFF8181
          81FF818181FF737373FD2727277D0505051B0000000200000000000000000000
          0000000000000000000000000000000000000000000022222250747474F3C1C1
          C1FFE9E9E9FFEDEDEDFFE6E6E6FFB2B2B2FF7F7F7FFF747474FF777777FF8585
          85FF9B9B9BFFB2B2B2FFAEAEAEFFA8A8A8FF909090FF7D7D7DFF7C7C7CFF7B7B
          7BFF737373FC3939399F06060620010101040000000000000000000000000000
          00000000000000000000000000000000000000000000000000001C1C1C416464
          64DDBDBDBDFFECECECFFF5F5F5FFFBFBFBFFD9D9D9FF9A9A9AFF747474FF7272
          72FF727272FF757575FF757575FF757575FF767676FF767676FF767676FF7171
          71FF3D3D3DA60707072201010105000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001313
          132D4A4A4AAD8C8C8CFCD9D9D9FFFDFDFDFFFFFFFFFFFFFFFFFFEBEBEBFFB7B7
          B7FF999999FF868686FF808080FF848484FF8B8B8BFF868686FF727272FB3C3C
          3C9F0606061E0101010500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002C2C2C65686868DA9B9B9BFFD1D1D1FFF7F7F7FFFFFFFFFFFFFF
          FFFFFFFFFFFFF0F0F0FFE1E1E1FFC3C3C3FF8E8E8EFF676767DF272727690303
          0310010101030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001D1D1D45474747A5616161CB898989EBA1A1
          A1F19F9F9FF19A9A9AF06C6C6CDC4C4C4CB1262626620303030E010101030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000040404091212122A1717
          173717171739151515350A0A0A1A010101040000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000303030D040404140101010500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000050505181616165C2D2D2D9C262626921414145808080825010101050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000050505191B1B
          1B6B424242BE717171FA7E7E7EFF6B6B6BF95F5F5FE02626268B0606061F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000001010103080808251D1D1D714A4A4AC87070
          70F8878787FF979797FF848484FF737373FF767676FF4B4B4BC3090909290000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000010101050C0C0C3725252585535353D6737373FB838383FF9A9A
          9AFFBCBCBCFFDCDCDCFF8F8F8FFF707070FF767676FF474747BE0707071F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          0105101010472F2F2F9B5E5E5EE67B7B7BFF868686FF9B9B9BFFB8B8B8FFD6D6
          D6FFE6E6E6FFE6E6E6FF909090FF717171FF767676FF363636B20505051A0000
          000001010104060606200C0C0C3D080808260101010700000000000000000000
          00000000000000000000000000000000000000000000040404101212124E3838
          38A9666666F17F7F7FFF8D8D8DFFA2A2A2FFC2C2C2FFDBDBDBFFE6E6E6FFE6E6
          E6FFE3E3E3FFDEDEDEFF8D8D8DFF727272FF767676FF333333B1080808270E0E
          0E40262626874E4E4ED2535353DF2F2F2FA21515155A05050519000000000000
          00000000000000000000000000010707072118181863434343BF686868F17C7C
          7CFF919191FFA9A9A9FFCDCDCDFFE6E6E6FFEBEBEBFFE8E8E8FFE3E3E3FFE0E0
          E0FFDFDFDFFFDDDDDDFF8F8F8FFF747474FF787878FF3C3C3CD4393939B86969
          69F3797979FF828282FF7B7B7BFF747474FE555555D614141459000000000000
          000000000000080808281F1F1F764B4B4BCC747474FE808080FF959595FFAFAF
          AFFFD4D4D4FFEFEFEFFFF2F2F2FFEDEDEDFFE7E7E7FFE3E3E3FFE1E1E1FFDEDE
          DEFFDDDDDDFFDBDBDBFF8F8F8FFF767676FF7A7A7AFF575757FF7A7A7AFF8F8F
          8FFFAFAFAFFFB2B2B2FF7A7A7AFF717171FF717171FF25252578000000000808
          082724242483505050D4787878FF848484FF9A9A9AFFBABABAFFD8D8D8FFF0F0
          F0FFF4F4F4FFEEEEEEFFEAEAEAFFE5E5E5FFE5E5E5FFE2E2E2FFDFDFDFFFDCDC
          DCFFD9D9D9FFD8D8D8FF8F8F8FFF797979FF7C7C7CFF626262FFA3A3A3FFD0D0
          D0FFE4E4E4FFD3D3D3FF7A7A7AFF717171FF707070FC1E1E1E6C242424695757
          57DD767676FF898989FFA0A0A0FFC4C4C4FFE1E1E1FFF4F4F4FFF8F8F8FFF3F3
          F3FFEEEEEEFFEAEAEAFFE7E7E7FFE4E4E4FFE2E2E2FFE0E0E0FFDDDDDDFFD9D9
          D9FFD5D5D5FFD4D4D4FF909090FF7E7E7EFF808080FF757575FFD1D1D1FFE6E6
          E6FFE8E8E8FFCCCCCCFF797979FF727272FF686868F914141462696969E38E8E
          8EFFA5A5A5FFCCCCCCFFE9E9E9FFF6F6F6FFFAFAFAFFF6F6F6FFF1F1F1FFEEEE
          EEFFEBEBEBFFE7E7E7FFE5E5E5FFE3E3E3FFE0E0E0FFDEDEDEFFDADADAFFD6D6
          D6FFD3D3D3FFCFCFCFFF8F8F8FFF858585FF858585FF797979FFD3D3D3FFE1E1
          E1FFE4E4E4FFC9C9C9FF7A7A7AFF747474FF686868F913131361707070F2AAAA
          AAFFEDEDEDFFF9F9F9FFF9F9F9FFF7F7F7FFF5F5F5FFF2F2F2FFEFEFEFFFEBEB
          EBFFE8E8E8FFE5E5E5FFE4E4E4FFE2E2E2FFDEDEDEFFDBDBDBFFD6D6D6FFD3D3
          D3FFD0D0D0FFCDCDCDFF909090FF8C8C8CFF8A8A8AFF787878FFD0D0D0FFDFDF
          DFFFE2E2E2FFC8C8C8FF7B7B7BFF767676FF686868F9131313616E6E6EEEADAD
          ADFFF6F6F6FFF8F8F8FFF6F6F6FFF5F5F5FFF2F2F2FFF0F0F0FFECECECFFE9E9
          E9FFE6E6E6FFE3E3E3FFE2E2E2FFDFDFDFFFDBDBDBFFD8D8D8FFD4D4D4FFD0D0
          D0FFCCCCCCFFC8C8C8FF919191FF969696FF909090FF777777FFCECECEFFDCDC
          DCFFDEDEDEFFC7C7C7FF7C7C7CFF797979FF686868F9131313616E6E6EEEADAD
          ADFFF5F5F5FFF7F7F7FFF5F5F5FFF3F3F3FFF1F1F1FFEEEEEEFFEAEAEAFFE6E6
          E6FFE4E4E4FFE2E2E2FFDFDFDFFFDCDCDCFFD9D9D9FFD5D5D5FFD1D1D1FFCCCC
          CCFFC9C9C9FFC6C6C6FF929292FF9F9F9FFF979797FF777777FFCCCCCCFFD8D8
          D8FFDADADAFFC5C5C5FF7E7E7EFF7D7D7DFF696969F9131313616E6E6EEEAEAE
          AEFFF5F5F5FFF6F6F6FFF4F4F4FFF1F1F1FFEEEEEEFFEBEBEBFFE7E7E7FFE5E5
          E5FFE2E2E2FFE0E0E0FFDDDDDDFFD9D9D9FFD6D6D6FFD2D2D2FFCECECEFFCACA
          CAFFC7C7C7FFC5C5C5FF949494FFAAAAAAFF9E9E9EFF767676FFC9C9C9FFD6D6
          D6FFD7D7D7FFC0C0C0FF808080FF838383FF6A6A6AF9131313616E6E6EEEAEAE
          AEFFF6F6F6FFF5F5F5FFF1F1F1FFEFEFEFFFEBEBEBFFE8E8E8FFE5E5E5FFE3E3
          E3FFE1E1E1FFDEDEDEFFDADADAFFD7D7D7FFD4D4D4FFD1D1D1FFD0D0D0FFCBCB
          CBFFC4C4C4FFB6B6B6FF929292FFB7B7B7FFA6A6A6FF757575FFC6C6C6FFD3D3
          D3FFD3D3D3FFBCBCBCFF838383FF8B8B8BFF6D6D6DF9131313616E6E6EEEAEAE
          AEFFF6F6F6FFF4F4F4FFF0F0F0FFECECECFFE9E9E9FFE6E6E6FFE3E3E3FFE1E1
          E1FFDFDFDFFFDCDCDCFFDADADAFFD8D8D8FFD4D4D4FFC8C8C8FFB5B5B5FFA1A1
          A1FF8F8F8FFF838383FF8B8B8BFFC4C4C4FFADADADFF747474FFC4C4C4FFD0D0
          D0FFD0D0D0FFB9B9B9FF878787FF939393FF6F6F6FF9131313616E6E6EEEAEAE
          AEFFF5F5F5FFF1F1F1FFEDEDEDFFE9E9E9FFE6E6E6FFE5E5E5FFE6E6E6FFE5E5
          E5FFE0E0E0FFD8D8D8FFC8C8C8FFADADADFF979797FF8B8B8BFF8F8F8FFF8383
          83FF7D7D7DFF737373FF8D8D8DFFCFCFCFFFB4B4B4FF737373FFC1C1C1FFCCCC
          CCFFCCCCCCFFB7B7B7FF8B8B8BFF9D9D9DFF717171F9131313616E6E6EEEAEAE
          AEFFF5F5F5FFEEEEEEFFEBEBEBFFECECECFFEAEAEAFFE6E6E6FFDEDEDEFFCBCB
          CBFFAFAFAFFF929292FF8A8A8AFFA0A0A0FF949494FFBABABAFFDCDCDCFF8787
          87FF999999FF7E7E7EFF929292FFD7D7D7FFBABABAFF727272FFBFBFBFFFC9C9
          C9FFC9C9C9FFB4B4B4FF919191FFA8A8A8FF747474F9131313616E6E6EEEB0B0
          B0FFF8F8F8FFF4F4F4FFE5E5E5FFD7D7D7FFC5C5C5FFA7A7A7FF8E8E8EFF8484
          84FF808080FF7F7F7FFFA8A8A8FFEEEEEEFFC2C2C2FFD9D9D9FFF2F2F2FF9696
          96FF8B8B8BFF8B8B8BFF999999FFE3E3E3FFC5C5C5FF6F6F6FFFBDBDBDFFCBCB
          CBFFCBCBCBFFB2B2B2FF979797FFB4B4B4FF767676F9131313616D6D6DEEA9A9
          A9FFD9D9D9FFC0C0C0FF9B9B9BFF848484FF808080FF808080FF808080FF8181
          81FF838383FF848484FFAEAEAEFFE4E4E4FFA6A6A6FF9B9B9BFF989898FF8888
          88FF868686FF808080FF7C7C7CFFACACACFFB1B1B1FF7D7D7DFFBCBCBCFFB2B2
          B2FFA7A7A7FF939393FF9E9E9EFFC0C0C0FF797979F9131313616E6E6EEE8585
          85FF828282FF808080FF808080FF828282FF838383FF858585FF878787FF8A8A
          8AFF8B8B8BFF8B8B8BFF8E8E8EFF898989FF808080FF7D7D7DFF777777FF7373
          73FF6F6F6FFF6F6F6FFF757575FF7C7C7CFF818181FF838383FF8B8B8BFF8484
          84FF7F7F7FFF7D7D7DFFA7A7A7FFCBCBCBFF7C7C7CF9131313616F6F6FEE8383
          83FF828282FF858585FF878787FF8A8A8AFF8B8B8BFF8B8B8BFF898989FF8383
          83FF7E7E7EFF7B7B7BFF777777FF727272FF707070FF727272FF767676FF7D7D
          7DFF808080FF787878FF848484FFA3A3A3FF929292FFC1C1C1FFBEBEBEFF7878
          78FF999999FF888888FFAEAEAEFFD5D5D5FF7F7F7FF913131361717171EF8C8C
          8CFF8C8C8CFF8C8C8CFF888888FF828282FF7E7E7EFF7A7A7AFF767676FF7171
          71FF707070FF727272FF787878FF797979FF777777FF767676FF7C7C7CFF7E7E
          7EFF808080FF808080FFBBBBBBFFEFEFEFFFB2B2B2FFEEEEEEFFE5E5E5FF7979
          79FF909090FF898989FFB6B6B6FFDDDDDDFF818181F914141462727272F68383
          83FF7D7D7DFF787878FF727272FF6E6E6EFF6A6A6AF9636363E96C6C6CFB7474
          74FF727272FF797979FF7F7F7FFF818181FF828282FF838383FF848484FF8484
          84FF858585FF868686FFB8B8B8FFD5D5D5FF9B9B9BFFA8A8A8FFA4A4A4FF8989
          89FF8B8B8BFF898989FFB1B1B1FFE7E7E7FF868686FC141414635252528F5454
          54BB4E4E4EA94343439839393983313131702828285B181818386C6C6CED8383
          83FF848484FF848484FF868686FF888888FF898989FF8A8A8AFF8A8A8AFF8B8B
          8BFF8B8B8BFF8B8B8BFF898989FF838383FF808080FF7E7E7EFF7B7B7BFF7777
          77FF767676FF737373FF757575FFA4A4A4FF767676F20B0B0B39000000000000
          0000000000000000000000000000000000000000000000000000707070EF8B8B
          8BFF8C8C8CFF8B8B8BFF898989FF878787FF858585FF838383FF7E7E7EFF7878
          78FF787878FF767676FF737373FF717171FF717171FF6F6F6FFF696969F66060
          60DE545454CB484848B3404040962E2E2E701616163E01010103000000000000
          00000000000000000000000000000000000000000000000000006C6C6CEB7D7D
          7DFF7B7B7BFF797979FF757575FF707070FF6F6F6FFF6E6E6EFF6C6C6CFA6565
          65EC5D5D5DE0555555CB434343A2383838862727276D212121571B1B1B3F0C0C
          0C1D000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003A3A3A554444
          449444444497444444994343439B4444449B4242429737373781242424581414
          14330B0B0B220707071302020204000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          00000000000000000000000000010101010503030311070707210A0A0A310C0C
          0C3D0D0D0D430D0D0D410B0B0B3808080829050505180202020A000000020000
          0000000000000000000000000000010101060404041305050518030303100101
          0105000000010000000000000000000000000000000000000000000000000000
          000000000000000000010202020A060606200D0D0D3F12121258151515671616
          166E17171771161616701616166C131313610F0F0F4C0909092F040404140101
          010400000000000000000000000002020208080808260D0D0D430D0D0D3F0808
          0827040404150202020900000002000000000000000000000000000000000000
          0000000000010202020C0808082A101010511A1A1A772B2B2BA53E3E3EC24949
          49CD444444CA353535BA2525259F1B1B1B891A1A1A82161616701010104F0909
          092E0606061C0505051805050518191919470B0B0B38131313611616166E1313
          135F0E0E0E480A0A0A310505051A020202080000000100000000000000000000
          000002020208080808281414145E3D3D3DBA8C8C8CF3C5C5C5FFD3D3D3FFD0D0
          D0FFC3C3C3FFB1B1B1FF8F8F8FFE565656E42B2B2BB01E1E1E951A1A1A841414
          14630D0D0D410A0A0A320A0A0A303030307F636363E7424242B31E1E1E851919
          197C1616166E111111550A0A0A32030303100000000100000000000000000101
          01030505051B1A1A1A676F6F6FE7DDDDDDFFF0F0F0FFDEDEDEFFCECECEFFC2C2
          C2FFB8B8B8FFB2B2B2FFAEAEAEFFA3A3A3FF7F7F7FFF3A3A3AC41B1B1B881717
          17720E0E0E4607070723050505180C0C0C29696969F26F6F6FFF6F6F6FFF4D4D
          4DC7292929800C0C0C3E06060620020202090000000100000000000000020303
          030F151515527F7F7FECF3F3F3FFE7E7E7FFD0D0D0FFC3C3C3FFB7B7B7FFABAB
          ABFFA3A3A3FF9B9B9BFF939393FF8F8F8FFF8F8F8FFF7B7B7BFF444444EF4444
          44DD494949D3505050C6545454C0545454C1696969F16F6F6FFF6F6F6FFF6F6F
          6FFF6F6F6FFF5B5B5BD208080815000000010000000000000000010101060808
          08255F5F5FD2EFEFEFFFE3E3E3FFCDCDCDFFBFBFBFFFB1B1B1FFA3A3A3FF9A9A
          9AFF919191FF8A8A8AFF838383FF7E7E7EFF7B7B7BFF7B7B7BFF6C6C6CFF2D2D
          2DA5151515670A0A0A330202020C02020209626262E26F6F6FFF6F6F6FFF6262
          62E03838388107070710000000000000000000000000000000000303030D2727
          277ECBCBCBFFE8E8E8FFCCCCCCFFBCBCBCFFADADADFFA0A0A0FF939393FF8A8A
          8AFF838383FF7B7B7BFF777777FF737373FF707070FF6F6F6FFF707070FF5353
          53E81B1B1B861313135F0A0A0A34272727656F6F6FFF555555C7282828660606
          06200606061E040404150202020A0000000200000000000000001212123C6060
          60CEE7E7E7FFCFCFCFFFBFBFBFFFADADADFF9F9F9FFF919191FF868686FF7C7C
          7CFF757575FF707070FF6F6F6FFF6F6F6FFF6F6F6FFF707070FF737373FF6B6B
          6BFF303030C11D1D1D921616166F2F2F2F8B1C1C1C65111111561313135E1313
          13601212125B0F0F0F4A0909092E0404041201010103000000002A2A2A769999
          99F5DCDCDCFFBBBBBBFF9A9A9AFF8F8F8FFF858585FF7D7D7DFF777777FF7171
          71FF6F6F6FFF6F6F6FFF6F6F6FFF707070FF707070FF737373FF767676FF7474
          74FF444444E5262626AF1C1C1C8B1919197B181818781919197B1919197F1A1A
          1A801919197D171717751313135F0B0B0B3804040412000000024040409CB1B1
          B1FFCFCFCFFFA0A0A0FFB8B8B8FFE3E3E3FFDEDEDEFFDFDFDFFFDFDFDFFFDFDF
          DFFFE0E0E0FFE0E0E0FFE0E0E0FFE1E1E1FFDCDCDCFF858585FF777777FF7B7B
          7BFF5D5D5DFF787878FF7A7A7AF0505050CD646464EF6F6F6FFF6F6F6FFF6F6F
          6FFF545454D72F2F2FA01919197B131313610A0A0A310202020B454545A4AFAF
          AFFFC1C1C1FF959595FFD2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFF8D8D8DFF7B7B7BFF8282
          82FF636363FF909090FF767676FF7F7F7FFF9A9A9AFFA2A2A2FF9D9D9DFF9898
          98FF858585FF717171FF393939B018181878101010510505051B3C3C3C949F9F
          9FFFB6B6B6FF8F8F8FFFB0B0B0FFD5D5D5FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0
          D0FFD0D0D0FFD0D0D0FFD0D0D0FFD1D1D1FFCDCDCDFF878787FF838383FF8787
          87FF606060FF6F6F6FFF838383FFA7A7A7FF9F9F9FFF9B9B9BFF999999FF9898
          98FF989898FF919191FF717171FF2F2F2F9F1414146308080829242424647D7D
          7DEEACACACFF939393FF797979FF6F6F6FFF6D6D6DFF6E6E6EFF6F6F6FFF7070
          70FF737373FF757575FF797979FF7B7B7BFF7D7D7DFF878787FF8D8D8DFF8888
          88FF575757FF737373FFA7A7A7FF9E9E9EFF9A9A9AFF989898FF999999FF9B9B
          9BFF9B9B9BFF9B9B9BFF8B8B8BFF646464EF151515670909092F0D0D0D244D4D
          4DBF9F9F9FFF8D8D8DFF7E7E7EFF737373FF6F6F6FFF717171FF767676FF7979
          79FF7F7F7FFF838383FF878787FF8B8B8BFF8F8F8FFF919191FF979797FF8080
          80FF636363FF909090FF9F9F9FFF9A9A9AFF989898FF9A9A9AFF9C9C9CFFA0A0
          A0FFA3A3A3FFA3A3A3FFA2A2A2FF737373FF252525840909092F000000002121
          216C838383FF8B8B8BFF787878FF6F6F6FFF707070FF757575FF797979FF7D7D
          7DFF828282FF878787FF8B8B8BFF909090FF939393FF999999FF9B9B9BFF6969
          69FF6F6F6FFF999999FF9C9C9CFF9A9A9AFF9B9B9BFF9F9F9FFFA5A5A5FFABAB
          ABFFB1B1B1FFB3B3B3FFAFAFAFFF7F7F7FFF2B2B2B8A08080829000000001414
          142E484848C27F7F7FFF767676FF6F6F6FFF717171FF777777FF7B7B7BFF7F7F
          7FFF838383FF8A8A8AFF8F8F8FFF969696FF9B9B9BFFA3A3A3FF7F7F7FFF9595
          95FF797979FF989898FFA7A7A7FFA7A7A7FFABABABFFB1B1B1FFB9B9B9FFC2C2
          C2FFCBCBCBFFCECECEFFC6C6C6FF818181FF2828287D0606061C000000000E0E
          0E2123232353565656DE717171FF717171FF737373FF777777FF7C7C7CFF8181
          81FF878787FF8D8D8DFF939393FF9B9B9BFFA5A5A5FF888888FF838383FFC9C9
          C9FF878787FF939393FFB7B7B7FFB7B7B7FFBCBCBCFFC3C3C3FFCCCCCCFFD7D7
          D7FFE0E0E0FFE5E5E5FFDBDBDBFF747474FF1D1D1D590202020C000000000303
          03081D1D1D413A3A3A65515151D46B6B6BFF757575FF7B7B7BFF7F7F7FFF8383
          83FF8A8A8AFF929292FF9B9B9BFF9B9B9BFF7B7B7BFF909090FFCECECEFFD3D3
          D3FFB1B1B1FF797979FFC6C6C6FFC7C7C7FFCBCBCBFFD1D1D1FFDADADAFFE3E3
          E3FFF0F0F0FFF7F7F7FFC5C5C5FF626262E60404041301010103000000000000
          0000101010242424244645454562464646A05C5C5CE36E6E6EFE787878FF7F7F
          7FFF838383FF838383FF7C7C7CFF7B7B7BFF878787FFCBCBCBFFD6D6D6FFDADA
          DAFFDFDFDFFF858585FF939393FFD6D6D6FFD8D8D8FFDDDDDDFFE3E3E3FFEBEB
          EBFFF3F3F3FFEBEBEBFF7D7D7DFF2525255C0101010300000000000000000000
          00000202020415151530222222453C3C3C574D4D4D6E4D4D4D95626262CE7575
          75FA838383FF979797FFC6C6C6FFE7E7E7FFB6B6B6FF979797FFB7B7B7FFD3D3
          D3FFE3E3E3FFD3D3D3FF7B7B7BFF8B8B8BFFC2C2C2FFE7E7E7FFEBEBEBFFE7E7
          E7FFBFBFBFFF7E7E7EFF2B2B2B66000000020000000000000000000000000000
          000000000000000000000A0A0A18171717341C1C1C401C1C1C401C1C1C402A2A
          2A4C7272729FB7B7B7FFB7B7B7FFB7B7B7FFACACACEF6D6D6D9F848484CF9393
          93FF939393FF939393FF858585DF41414193626262E26F6F6FFF6F6F6FFF6F6F
          6FFF4D4D4DB01C1C1C4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020208080808270F0F0F4B0F0F0F4D0B0B
          0B350606061F0303031001010105000000010000000000000000000000000000
          000000000000000000000000000000000000000000020202020A040404140505
          0518050505180505051805050518050505180505051805050518050505180505
          0518050505180505051805050518262626631717174E13131361171717741515
          1569111111560C0C0C3E06060620020202090000000100000000000000000000
          0000000000000000000000000000000000000101010404040414080808280A0A
          0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A
          0A300A0A0A300A0A0A300A0A0A302A2A2A726F6F6FFF595959D9333333A61919
          197C1616166E111111550A0A0A32030303100000000100000000000000000000
          000000000000000000000000000000000000000000020202020A040404140505
          0518050505180505051805050518050505180505051805050518050505180505
          05180505051805050518050505180606061C626262E66F6F6FFF6F6F6FFF6464
          64EB3E3E3EA41010103E0505051A020202080000000100000000000000000000
          0000000000000000000000000000000000001C1C1C40535353BF535353BF5353
          53BF535353BF535353BF535353BF535353BF535353BF535353BF535353BF5353
          53BF535353BF535353BF535353BF545454C1696969F16F6F6FFF6F6F6FFF6F6F
          6FFF6F6F6FFF5B5B5BD107070712000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000008080816686868F06F6F6FFF6F6F6FFF4646
          46A11C1C1C410000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002A2A2A61616161DF38383881070707100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000151515300000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000010101040202
          020A020202090101010300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000010101060404041305050518030303100101
          01050000000100000000000000000000000000000000000000000202020A0707
          0721080808290505051801010107000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020208080808260D0D0D430D0D0D3F0808
          0827040404150202020900000002000000000000000000000000020202090909
          092B0F0F0F4D0E0E0E470808082904040412010101060202020A040404140505
          0518050505180505051805050518050505180505051805050518050505180505
          0518050505180505051805050518191919470B0B0B38131313611616166E1313
          135F0E0E0E480A0A0A310505051A0202020800000001000000001919197F2323
          2361111111551616166D1313135D0C0C0C3C0606061C05050518080808280A0A
          0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A
          0A300A0A0A300A0A0A300A0A0A303030307F636363E7424242B31E1E1E851919
          197C1616166E111111550A0A0A3203030310000000010000000023232349A7A7
          A7FF686868BB252525841919197B151515670D0D0D410606061E050505170505
          0518050505180505051805050518050505180505051805050518050505180505
          05180505051805050518050505180C0C0C29696969F26F6F6FFF6F6F6FFF4D4D
          4DC7292929800C0C0C3E060606200202020900000001000000000606060A8B8B
          8BDEB2B2B2FFA2A2A2F84E4E4EBB1919197D2525258B4C4C4CCD525252C35353
          53BF535353BF535353BF535353BF535353BF535353BF535353BF535353BF5353
          53BF535353BF535353BF535353BF545454C1696969F16F6F6FFF6F6F6FFF6F6F
          6FFF6F6F6FFF5B5B5BD208080815000000010000000000000000000000005959
          599CA7A7A7FFB3B3B3FFA1A1A1FF4B4B4BC0181818791212125A0808082A0202
          0209000000000000000000000000000000000000000000000000000000000000
          000101010103010101040101010302020209626262E26F6F6FFF6F6F6FFF6262
          62E0383838810707071000000000000000000000000000000000000000002828
          284B969696FFCECECEFFE0E0E0FF9F9F9FFF363636A918181878111111540808
          082703030311040404140606061C06060620060606200606061C050505190606
          061C070707240808082807070725272727656F6F6FFF555555C7282828660606
          06200606061E040404150202020A000000020000000000000000000000000000
          0000585858B2AFAFAFFFEBEBEBFFDADADAFF858585F42727279A1919197C1313
          135D0E0E0E450F0F0F49121212581313135F1313135F12121258101010511111
          11561313136014141464131313612F2F2F8B1C1C1C65111111561313135E1313
          13601212125B0F0F0F4A0909092E040404120101010300000000000000000000
          00000D0D0D1E737373DFBBBBBBFFF0F0F0FFC9C9C9FF6A6A6AE3202020961D1D
          1D911A1A1A841919197C1919197D1919197F1919197F1919197C181818781C1C
          1C81292929972121218C1919197F1919197B181818781919197B1919197F1A1A
          1A801919197D171717751313135F0B0B0B380404041200000002000000000000
          0001010101052121214F8A8A8AFBCBCBCBFFF0F0F0FFB7B7B7FF585858DE3535
          35C6616161DF979797F8B1B1B1FFB6B6B6FFACACACF76D6D6DCF808080ED9393
          93FF9D9D9DFF959595FF818181EF505050CD646464EF6F6F6FFF6F6F6FFF6F6F
          6FFF545454D72F2F2FA01919197B131313610A0A0A310202020B000000000000
          00020404040E17171740474747A1999999FFDADADAFFEBEBEBFFA5A5A5FF7272
          72FD838383FF9D9D9DFFBBBBBBFFC9C9C9FFA6A6A6FF999999FFAFAFAFFFBABA
          BAFFB6B6B6FFAFAFAFFF7B7B7BFF7F7F7FFF9A9A9AFFA2A2A2FF9D9D9DFF9898
          98FF858585FF717171FF393939B018181878101010510505051B000000000101
          010413131332232323552E2E2E585E5E5EC3A7A7A7FFE7E7E7FFDFDFDFFF9393
          93FF808080FF8B8B8BFFA2A2A2FFA3A3A3FF9B9B9BFFBCBCBCFFB7B7B7FFB3B3
          B3FFB2B2B2FF7C7C7CFF878787FFA7A7A7FF9F9F9FFF9B9B9BFF999999FF9898
          98FF989898FF919191FF717171FF2F2F2F9F1414146308080829000000000404
          040D2020204E2E2E2E562D2D2D5930303063707070E1B7B7B7FFEFEFEFFFCFCF
          CFFF878787FF7F7F7FFF8B8B8BFF7F7F7FFFAFAFAFFFB7B7B7FFB3B3B3FFB2B2
          B2FF999999FF7B7B7BFFA8A8A8FF9E9E9EFF9A9A9AFF989898FF999999FF9B9B
          9BFF9B9B9BFF9B9B9BFF8B8B8BFF646464EF151515670909092F000000000F0F
          0F242424244E2D2D2D562B2B2B5A2B2B2B5B3A3A3A7C8C8C8CFFC6C6C6FFF1F1
          F1FFBEBEBEFF7F7F7FFF777777FF777777FFA2A2A2FFAEAEAEFFB1B1B1FFB2B2
          B2FF808080FF939393FF9F9F9FFF9A9A9AFF989898FF9A9A9AFF9C9C9CFFA0A0
          A0FFA3A3A3FFA3A3A3FFA2A2A2FF737373FF252525840909092F000000001414
          142F2727274C2C2C2C562C2C2C5C2D2D2D5E51515188A2A2A2FF939393FFD5D5
          D5FFEEEEEEFFABABABFF737373FF717171FF8B8B8BFFA1A1A1FFAFAFAFFFB5B5
          B5FF747474FF9A9A9AFF9C9C9CFF9A9A9AFF9B9B9BFF9F9F9FFFA5A5A5FFABAB
          ABFFB1B1B1FFB3B3B3FFAFAFAFFF7F7F7FFF2B2B2B8A08080829000000001414
          142E252525473131315933333362343434655656568DBBBBBBFF9F9F9FFFA2A2
          A2FFE3E3E3FFE3E3E3FF9B9B9BFF6D6D6DFF7F7F7FFF939393FFACACACFFBCBC
          BCFF7B7B7BFF989898FFA7A7A7FFA7A7A7FFABABABFFB1B1B1FFB9B9B9FFC2C2
          C2FFCBCBCBFFCECECEFFC6C6C6FF818181FF2828287D0606061C000000000E0E
          0E21212121443939395A3B3B3B653D3D3D6B4040406FB7B7B7FFCDCDCDFF9393
          93FFB1B1B1FFECECECFFC0C0C0FF7C7C7CFF7B7B7BFF8E8E8EFFABABABFFC3C3
          C3FF878787FF939393FFB7B7B7FFB7B7B7FFBCBCBCFFC3C3C3FFCCCCCCFFD7D7
          D7FFE0E0E0FFE5E5E5FFDBDBDBFF747474FF1D1D1D590202020C000000000303
          03081D1D1D413A3A3A56424242634444446B48484871959595D4C5C5C5FFCACA
          CAFF909090FFB0B0B0FFB5B5B5FF939393FF777777FF9B9B9BFFBABABAFFCFCF
          CFFFB1B1B1FF797979FFC6C6C6FFC7C7C7FFCBCBCBFFD1D1D1FFDADADAFFE3E3
          E3FFF0F0F0FFF7F7F7FFC5C5C5FF626262E60404041301010103000000000000
          00001010102424242446454545604A4A4A674D4D4D6C6464648AB7B7B7FFCECE
          CEFFBEBEBEFFC5C5C5FFAEAEAEFF909090FF808080FF979797FFCFCFCFFFD9D9
          D9FFDFDFDFFF858585FF939393FFD6D6D6FFD8D8D8FFDDDDDDFFE3E3E3FFEBEB
          EBFFF3F3F3FFEBEBEBFF7D7D7DFF2525255C0101010300000000000000000000
          00000202020415151530222222453C3C3C574F4F4F65545454697B7B7BA2ACAC
          ACF3CACACAFFADADADFFC3C3C3FFA7A7A7FF8D8D8DFF8D8D8DFFB7B7B7FFD3D3
          D3FFE3E3E3FFD3D3D3FF7B7B7BFF8B8B8BFFC2C2C2FFE7E7E7FFEBEBEBFFE7E7
          E7FFBFBFBFFF7E7E7EFF2B2B2B66000000020000000000000000000000000000
          000000000000000000000A0A0A18171717341C1C1C401C1C1C401C1C1C402A2A
          2A4C7272729FB5B5B5FFA5A5A5FF9E9E9EFFA8A8A8F06D6D6D9F848484CF9393
          93FF939393FF939393FF858585DF41414193626262E26F6F6FFF6F6F6FFF6F6F
          6FFF4D4D4DB01C1C1C4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002020208080808270F0F0F4B0F0F0F4D0B0B
          0B350606061F0303031001010105000000010000000000000000000000000000
          000000000000000000000000000000000000000000020202020A040404140505
          0518050505180505051805050518050505180505051805050518050505180505
          0518050505180505051805050518262626631717174E13131361171717741515
          1569111111560C0C0C3E06060620020202090000000100000000000000000000
          0000000000000000000000000000000000000101010404040414080808280A0A
          0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A0A300A0A
          0A300A0A0A300A0A0A300A0A0A302A2A2A726F6F6FFF595959D9333333A61919
          197C1616166E111111550A0A0A32030303100000000100000000000000000000
          000000000000000000000000000000000000000000020202020A040404140505
          0518050505180505051805050518050505180505051805050518050505180505
          05180505051805050518050505180606061C626262E66F6F6FFF6F6F6FFF6464
          64EB3E3E3EA41010103E0505051A020202080000000100000000000000000000
          0000000000000000000000000000000000001C1C1C40535353BF535353BF5353
          53BF535353BF535353BF535353BF535353BF535353BF535353BF535353BF5353
          53BF535353BF535353BF535353BF545454C1696969F16F6F6FFF6F6F6FFF6F6F
          6FFF6F6F6FFF5B5B5BD107070712000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000008080816686868F06F6F6FFF6F6F6FFF4646
          46A11C1C1C410000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002A2A2A61616161DF38383881070707100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000151515300000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000010101071111114615151566121212590707
          0725010101060000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000E0E0E33414141DE373737CF1F1F1F9B1313
          135F070707230101010600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001B1B1B5F515151FF545454FF383838DB1F1F
          1F9A1313135F0707072401010106000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001010101040202020B1E1E1E6D5E5E5EFEA2A2A2FF545454FF3939
          39DC1F1F1F9B1313135F07070723010101050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          010303030311080808290D0D0D43252525915C5C5CFFA9A9A9FF9F9F9FFF5454
          54FE393939DB1F1F1F9A1313135D070707220101010500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101070707
          07211313135525252597313131C1414141E65A5A5AFFA5A5A5FFA9A9A9FFA2A2
          A2FF575757FF383838DA1E1E1E981212125B0606062001010104000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000020202090909092B2424
          2490404040E34D4D4DFB585858FF5F5F5FFF7C7C7CFFA0A0A0FFA5A5A5FFA9A9
          A9FFA3A3A3FF595959FE363636D81E1E1E961111115305050517000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010101070B0B0B33353535C15151
          51FE6E6E6EFF8A8A8AFF939393FF969696FF999999FF9D9D9DFFA0A0A0FFA4A4
          A4FFA9A9A9FFA8A8A8FF5A5A5AFF353535D41A1A1A800A0A0A31010101060000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000108080824383838C55B5B5BFF8888
          88FF8D8D8DFF8E8E8EFF8F8F8FFF929292FF959595FF989898FF9C9C9CFFA1A1
          A1FFA5A5A5FFA9A9A9FFA6A6A6FF585858F7222222990B0B0B370202020A0101
          0107010101060000000100000000000000000000000000000000000000000000
          00000000000000000000000000000202020A2D2D2DA05B5B5BFF888888FF8888
          88FF8A8A8AFF8B8B8BFF8D8D8DFF8F8F8FFF919191FF959595FF989898FF9C9C
          9CFFA0A0A0FFA4A4A4FFAAAAAAFF8C8C8CFE21212187070707240606061F0A0A
          0A330808082A0303030E00000001000000000000000000000000000000000000
          000000000000000000000000000011111140515151F8838383FF858585FF8787
          87FF878787FF888888FF8A8A8AFF8C8C8CFF8E8E8EFF929292FF959595FF9898
          98FF9C9C9CFFA0A0A0FF989898FF404040C30B0B0B32090909291F1F1F7F2121
          21931616166D0A0A0A340202020B000000000000000000000000000000000000
          00000000000000000000010101032E2E2E9D6F6F6FFF828282FF838383FF8484
          84FF868686FF868686FF878787FF878787FF898989FF8E8E8EFF919191FF9393
          93FF989898FF8A8A8AFF3B3B3BC10A0A0A2E040404153B3B3BB3606060FD4141
          41EA252525AF1616166F0909092B010101070000000000000000000000000000
          0000000000000000000005050514454545D97E7E7EFF7F7F7FFF818181FF8282
          82FF838383FF7F7F7FFF606060FA484848E95E5E5EFF8A8A8AFF8D8D8DFF9090
          90FF818181FF353535B50808082701010106222222716D6D6DFF727272FF6060
          60FF404040EA222222A41212125B050505190000000100000000000000000000
          000000000000000000000C0C0C2B545454EE7D7D7DFF7E7E7EFF7F7F7FFF8080
          80FF787878FF4A4A4AEF1D1D1D721F1F1F6F565656FD888888FF8A8A8AFF7979
          79FF343434B40808082701010106000000002121216E565656FF737373FF7272
          72FF545454FF383838D91B1B1B850B0B0B370202020800000000000000000000
          000000000000000000001111113A5C5C5CF67A7A7AFF7B7B7BFF7C7C7CFF7A7A
          7AFF4E4E4EF9202020840606061E1111113D555555F7878787FF717171FF3232
          32B20909092B040404160303030E010101040404040C333333AC6B6B6BFF7474
          74FF696969FF484848F8262626AD111111560404041400000000000000000000
          000000000000000000000F0F0F325B5B5BF4787878FF797979FF7A7A7AFF5C5C
          5CFF363636CC0D0D0D400202020A141414445B5B5BFE737373FF313131AF0A0A
          0A2F0A0A0A300F0F0F490B0B0B37030303100000000018181854636363FC7575
          75FF737373FF515151FF343434D1161616700707072300000001000000000000
          0000000000000000000007070718515151E6767676FF777777FF767676FF4C4C
          4CFB2323239A0A0A0A32010101040E0E0E30444444DC29292988070707240E0E
          0E42353535BB2D2D2DB41313135E0505051A01010104212121766E6E6EFF7777
          77FF757575FF585858FF404040E81B1B1B850A0A0A3101010105000000000000
          00000000000000000000000000013A3A3AB1737373FF757575FF6A6A6AFF4646
          46F31E1E1E950E0E0E440303030D010101030909091F040404121212124E4747
          47DB6D6D6DFF3D3D3DDF1515156A060606200707071E404040CF7A7A7AFF7979
          79FF777777FF5D5D5DFF464646F3212121970B0B0B3701010107000000000000
          00000000000000000000000000001C1C1C5A686868FF737373FF6E6E6EFF4A4A
          4AF8292929B91616166D07070724010101050404041315151558484848E48181
          81FF6F6F6FFF3B3B3BDF181818790D0D0D432525258C6B6B6BFF7C7C7CFF7B7B
          7BFF797979FF5F5F5FFF474747F62323239A0A0A0A3301010105000000000000
          00000000000000000000000000000404040E484848DC727272FF737373FF5D5D
          5DFF404040E81C1C1C860A0A0A320606061C19191966494949E9848484FF8888
          88FF6D6D6DFF3E3E3EE61F1F1F9D282828A75B5B5BF8808080FF7E7E7EFF7D7D
          7DFF7C7C7CFF5C5C5CFF474747F31F1F1F890808082800000002000000000000
          0000000000000000000000000000000000001A1A1A565A5A5AFB727272FF7272
          72FF4E4E4EFB1E1E1E7E0B0B0B361D1D1D774B4B4BEF858585FF8D8D8DFF8A8A
          8AFF6D6D6DFF484848F7434343E9646464FC828282FF818181FF818181FF7F7F
          7FFF7E7E7EFF555555FF424242E9161616670505051900000000000000000000
          00000000000000000000000000000000000000000000262626805B5B5BFF5757
          57FF313131AF0D0D0D40232323884E4E4EF68B8B8BFF949494FF919191FF8E8E
          8EFF838383FF707070FF808080FF858585FF858585FF838383FF828282FF8181
          81FF7B7B7BFF4E4E4EFF353535C70C0C0C3D0202020A00000000000000000000
          00000000000000000000000000000000000000000000020202062929298A2A2A
          2A8E0707071F23232380515151FB939393FF9C9C9CFF989898FF959595FF9292
          92FF8E8E8EFF8B8B8BFF8A8A8AFF888888FF878787FF868686FF858585FF8383
          83FF616161FF494949F81C1C1C790606061C0000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000F0F0F354A4A4AE9989898FFA6A6A6FFA0A0A0FF9C9C9CFF989898FF9595
          95FF929292FF8E8E8EFF8C8C8CFF8B8B8BFF898989FF888888FF878787FF7878
          78FF4D4D4DFF313131B408080828010101060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D0D0D2B4A4A4AE3A3A3A3FFAAAAAAFFA4A4A4FFA0A0A0FF9C9C9CFF9898
          98FF949494FF919191FF8F8F8FFF8D8D8DFF8C8C8CFF8A8A8AFF7F7F7FFF5050
          50FF373737C30A0A0A2F02020209000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000022222273575757FFA5A5A5FFA9A9A9FFA5A5A5FFA0A0A0FF9C9C
          9CFF989898FF959595FF919191FF8F8F8FFF8E8E8EFF757575FF4F4F4FFB2F2F
          2FA80A0A0A2A0101010700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002525257B595959FCA8A8A8FFA9A9A9FFA5A5A5FFA0A0
          A0FF9C9C9CFF989898FF898989FF737373FF595959FC393939C41A1A1A610303
          030F010101030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000212121705C5C5CFBAAAAAAFFA8A8A8FFA4A4
          A4FF848484FF4E4E4EF93B3B3BD02727278D1515154A05050513010101030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001F1F1F685F5F5FF6ACACACFFA8A8
          A8FF777777FF414141E918181878070707240000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001D1D1D60616161F4ADAD
          ADFF7D7D7DFF414141E51717176F060606200000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000151515466B6B
          6BF17F7F7FFF3D3D3DD51010104D040404140000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001818
          184F474747DF2828288A05050519010101060000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object cxImageList_16_dis: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 16253704
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000030303082525
          2568404040B34E4E4EDB555555ED555555EF555555EF555555EF4F4F4FDD3E3E
          3EBF2828287A474747A36E6E6ECF020202080707071E010101023E3E3EAF5F5F
          5FFF939393FFBFBFBFFFDADADAFFE6E6E6FFE7E7E7FFDBDBDBFFBCBCBCFF8787
          87FF8E8E8EFFA0A0A0FF9F9F9FFF7D7D7DE0777777E70606061C585858F7BABA
          BAFFE9E9E9FFE7E7E7FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE7E7E7FF9999
          99FF8E8E8EFFABABABFFACACACFD8C8C8CFF696969D600000000585858F7E2E2
          E2FFD5D5D5FFC3C3C3FFBBBBBBFFB7B7B7FFB7B7B7FFBBBBBBFF858585FF8D8D
          8DFF979797FF545454F91616163D979797FD828282FF484848B9585858F7CFCF
          CFFFC3C3C3FFC9C9C9FFCFCFCFFFD3D3D3FFD3D3D3FFCFCFCFFF9B9B9BFFA2A2
          A2FFA7A7A7FF535353FA1919194CA8A8A8FD8A8A8AFA36363690575757F3C3C3
          C3FFE2E2E2FFEBEBEBFFF0F0F0FFF2F2F2FFF2F2F2FFF0F0F0FFEBEBEBFFA3A3
          A3FFA3A3A3FFB5B5B5FFB5B5B5F9A3A3A3FF7D7D7DD900000000575757F3CCCC
          CCFFE8E8E8FFE3E3E3FFDBDBDBFFD5D5D5FFD5D5D5FFDBDBDBFFDEDEDEFFA2A2
          A2FFA1A1A1FFC1C1C1FFBABABAFF767676C6797979D705050518575757F3DEDE
          DEFFCCCCCCFFBEBEBEFFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFFBEBEBEFFCACA
          CAFFDCDCDCFF6F6F6FFA4B4B4BAA000000000303030900000000575757F3CDCD
          CDFFC8C8C8FFCECECEFFD3D3D3FFD6D6D6FFD6D6D6FFD3D3D3FFCECECEFFC8C8
          C8FFCCCCCCFF575757F300000000000000000000000000000000575757F3BBBB
          BBFFE3E3E3FFEBEBEBFFF0F0F0FFF2F2F2FFF2F2F2FFF0F0F0FFECECECFFE3E3
          E3FFBDBDBDFF575757F300000000000000000000000000000000575757F3CCCC
          CCFFE8E8E8FFE3E3E3FFDADADAFFD3D3D3FFD3D3D3FFD9D9D9FFE3E3E3FFE8E8
          E8FFCFCFCFFF575757F500000000000000000000000000000000585858F7DCDC
          DCFFCBCBCBFFBEBEBEFFBBBBBBFFBBBBBBFFBBBBBBFFBCBCBCFFBEBEBEFFCBCB
          CBFFDCDCDCFF585858F700000000000000000000000000000000585858F7CFCF
          CFFFC9C9C9FFCCCCCCFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCCCCCCFFCACA
          CAFFCFCFCFFF585858F700000000000000000000000000000000585858F7B2B2
          B2FFDEDEDEFFDFDFDFFFDFDFDFFFDEDEDEFFDEDEDEFFDFDFDFFFDFDFDFFFDEDE
          DEFFB5B5B5FF585858F7000000000000000000000000000000003C3C3CA75E5E
          5EFF8E8E8EFFBCBCBCFFD8D8D8FFE1E1E1FFE1E1E1FFD9D9D9FFBCBCBCFF9191
          91FF5F5F5FFF3E3E3EAF00000000000000000000000000000000020202062222
          225E3F3F3FB1505050E1555555EF565656F1565656F1565656F1505050E14040
          40B3232323620303030800000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000101010103010101070303030E070707250F0F0F4B1515
          156817171773181818771616166E0F0F0F4C0606061F01010106000000000000
          00000000000000000001010101060303030F0808082611111154313131A04F4F
          4FC44A4A4AC42F2F2FAF1F1F1F9C1B1B1B850F0F0F4B05050518000000000000
          000000000000070707111C1C1C421E1E1E4B2222226A656565D6CECECEFEC7C7
          C7FFB3B3B3FF969696FF4C4C4CEB202020991515156B0A0A0A31000000000000
          00000000000101010105020202090606061F6A6A6AC9E9E9E9FFC0C0C0FFC0C0
          C0FFADADADFF878787FF818181FF424242D31919197F0E0E0E47000000000000
          000101010106030303100606061E1F1F1F6EDBDBDBFFBCBCBCFF8F8F8FFFD5D5
          D5FFC0C0C0FF6B6B6BFF707070FF6D6D6DFE313131B81212125B000000000101
          01031313132F25252553424242827F7F7FF8C7C7C7FFADADADFFB1B1B1FFE7E7
          E7FFD7D7D7FFA0A0A0FF8F8F8FFF777777FF484848DC15151568000000000B0B
          0B1D2929294E2B2B2B57ABABABEC8B8B8BFFABABABFFB5B5B5FFCBCBCBFFEFEF
          EFFFE9E9E9FFCFCFCFFFAAAAAAFF808080FF525252F114141463000000001717
          17332C2C2C4F2E2E2E5AC3C3C3FF9F9F9FFF9B9B9BFF767676FF6B6B6BFFD2D2
          D2FFC2C2C2FF767676FF898989FF8E8E8EFF515151ED1010104F000000001010
          10263A3A3A583F3F3F63C3C3C3FFCFCFCFFF7D7D7DFF767676FF6F6F6FFFC1C1
          C1FFB8B8B8FF8B8B8BFF9F9F9FFF8B8B8BFF676767DA0A0A0A31000000000404
          04092F2F2F4D4D4D4D678D8D8DC0D3D3D3FFC3C3C3FF6B6B6BFF777777FF7F7F
          7FFF8B8B8BFF9B9B9BFF8F8F8FFFBBBBBBFF2929296E03030311000000000000
          000004040409121212251818182E494949706363638A5B5B5B92414141AF5757
          57D8515151D0454545B64B4B4B9B2222225F0303031101010103000000000000
          00000000000000000001010101060303030D0303031003030310030303100303
          03100A0A0A20282828680C0C0C3E0A0A0A340404041300000002000000000000
          000000000000070707111C1C1C421D1D1D451D1D1D461D1D1D461D1D1D461D1D
          1D461D1D1D47686868F0626262E41414143C0202020A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000070707113232327308080817010101050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000202020B050505190303030D0000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000007070723111111550D0D0D420404
          0412000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000555555FF1D1D1D8F1B1B1B890E0E
          0E47040404160000000200000000000000000000000000000000000000000000
          000000000000000000000000000000000000555555FF555555FF272727C21C1C
          1C8D0F0F0F4D0505051A01010104000000000000000000000000000000000000
          000000000000000000000000000000000000555555FFA9A9A9FF555555FF2828
          28C71D1D1D911111115507070721010101070000000100000000000000000000
          000000000000000000000000000000000000555555FFC0C0C0FFA6A6A6FF5555
          55FF2A2A2AD21E1E1E971212125B0606061F0101010400000000000000000000
          000000000000000000000000000000000000555555FFA5A5A5FFA7A7A7FFA1A1
          A1FF555555FF2C2C2CD81B1B1B880A0A0A310101010600000000000000000000
          000000000000000000000000000000000000555555FF919191FF8D8D8DFF9191
          91FF969696FF555555FF1B1B1B86070707210101010300000000000000000000
          000000000000000000000000000000000000555555FF7F7F7FFF7B7B7BFF7D7D
          7DFF555555FF343434BF0A0A0A30020202080000000000000000000000000000
          000000000000000000000000000000000000555555FF696969FF6C6C6CFF5555
          55FF2B2B2BB20707072501010107000000000000000000000000000000000000
          000000000000000000000000000000000000555555FF5E5E5EFF555555FF2323
          23980606061E0101010400000000000000000000000000000000000000000000
          000000000000000000000000000000000000555555FF555555FF212121900606
          061C010101040000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000555555FF1919196B040404140101
          0104000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000202020B070707230909092F0909092F0909092F0909092F0909
          092F0909092F0909092F070707230202020B0000000000000000000000000000
          000000000000070707231515156B1D1D1D8F1D1D1D8F1D1D1D8F1D1D1D8F1D1D
          1D8F1D1D1D8F1D1D1D8F1515156B070707230000000000000000000000000000
          000000000000666666FF666666FF666666FF666666FF666666FF666666FF6666
          66FF666666FF666666FF1D1D1D8F0909092F0000000000000000000000000000
          000000000000666666FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
          A0FFA0A0A0FF666666FF1D1D1D8F0909092F0000000000000000000000000000
          000000000000666666FF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B
          9BFF9C9C9CFF666666FF1D1D1D8F0909092F0000000000000000000000000000
          000000000000666666FF999999FF999999FF999999FF999999FF999999FF9999
          99FF999999FF666666FF1D1D1D8F0909092F0000000000000000000000000000
          000000000000666666FF999999FF979797FF979797FF979797FF979797FF9797
          97FF999999FF666666FF1D1D1D8F0909092F0000000000000000000000000000
          000000000000666666FF949494FF8E8E8EFF8F8F8FFF8F8F8FFF8F8F8FFF8E8E
          8EFF939393FF666666FF1D1D1D8F0909092F0000000000000000000000000000
          000000000000666666FF878787FF848484FF838383FF838383FF828282FF8282
          82FF858585FF666666FF1D1D1D8F0909092F0000000000000000000000000000
          000000000000666666FF7A7A7AFF777777FF757575FF737373FF737373FF7474
          74FF747474FF666666FF1515156B070707230000000000000000000000000000
          000000000000666666FF666666FF666666FF666666FF666666FF666666FF6666
          66FF666666FF666666FF070707230202020B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000001818
          184DA2A2A2EA7F7F7FD95B5B5BBF333333982020207A121212540B0B0B380606
          06200303030E0101010500000000000000000000000000000000000000002020
          205EEEEEEEFFE3E3E3FFDFDFDFFFDFDFDFFFDBDBDBFFA2A2A2F88C8C8CF76060
          60DB474747AD2B2B2B905E5E5EC23131317E0000000000000000000000001F1F
          1F5BE1E1E1FFAEAEAEFFAEAEAEFFB6B6B6FFBBBBBBFF939393FFB0B0B0FF9090
          90FFDFDFDFFFBABABAFFA5A5A5FF7A7A7AE10505051600000000000000001F1F
          1F5BE3E3E3FFB7B7B7FFB5B5B5FFB7B7B7FFACACACFF989898FFB5B5B5FF8B8B
          8BFF9B9B9BFF8E8E8EFFA6A6A6FFB3B3B3FF2727277100000000000000001F1F
          1F5BE3E3E3FFBABABAFFB9B9B9FFBCBCBCFFA9A9A9FFA1A1A1FFCDCDCDFF9797
          97FF9F9F9FFF939393FFBBBBBBFFC3C3C3FF3535358C00000000000000001F1F
          1F5BE3E3E3FFBEBEBEFFBDBDBDFFC1C1C1FFA7A7A7FF9F9F9FFFC7C7C7FF9797
          97FF9B9B9BFF919191FFB5B5B5FFBFBFBFFF414141A000000000000000001F1F
          1F5BE3E3E3FFC2C2C2FFC2C2C2FFC7C7C7FFAFAFAFFFA0A0A0FFAEAEAEFF8B8B
          8BFFBFBFBFFFA8A8A8FF9C9C9CFFB3B3B3FF474747A200000000000000001E1E
          1E5BE5E5E5FFC7C7C7FFC7C7C7FFCBCBCBFFABABABFFAFAFAFFFC7C7C7FF8F8F
          8FFFE7E7E7FFC2C2C2FFABABABFFC9C9C9FF4D4D4DAB00000000000000001E1E
          1E5BE6E6E6FFCCCCCCFFCDCDCDFFD2D2D2FFAAAAAAFFAFAFAFFFC7C7C7FF8B8B
          8BFFD8D8D8FFC1C1C1FFADADADFFC9C9C9FF595959BC00000000000000001E1E
          1E5BE7E7E7FFD2D2D2FFD3D3D3FFD7D7D7FFA6A6A6FFB0B0B0FFCACACAFF8787
          87FFB6B6B6FFB9B9B9FFAFAFAFFFCACACAFF6A6A6AD400000000000000001E1E
          1E5BE8E8E8FFD7D7D7FFD8D8D8FFDCDCDCFFC7C7C7FFAFAFAFFFAFAFAFFFA3A3
          A3FFECECECFFDBDBDBFF696969D4676767B03333336C00000000000000001E1E
          1E5BE8E8E8FFDCDCDCFFDDDDDDFFE3E3E3FFE7E7E7FFEFEFEFFFE3E3E3FFD7D7
          D7FFFFFFFFFFB5B5B5E10D0D0D34000000000000000000000000000000001E1E
          1E5BE9E9E9FFE2E2E2FFE3E3E3FFE8E8E8FFEDEDEDFFF3F3F3FFE7E7E7FFF3F3
          F3FFC4C4C4E91010103B00000000000000000000000000000000000000001E1E
          1E5BEBEBEBFFE7E7E7FFE8E8E8FFF0F0F0FFF7F7F7FFFEFEFEFFFBFBFBFFBCBC
          BCE8131313430000000000000000000000000000000000000000000000001F1F
          1F5DF1F1F1FFFBFBFBFFF8F8F8FFF1F1F1FFEBEBEBFFCACACAF0909090CF1515
          1547000000000000000000000000000000000000000000000000000000001616
          1647999999D76D6D6DB44A4A4A95282828651313134309090924010101050000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000102020208040404160909092B0C0C0C3A0909092B0202020C000000000000
          0000000000000000000000000000000000000000000101010107040404120707
          07230C0C0C3B1313135E2222229F212121A11010105204040416000000000000
          000000000000000000020101010703030311070707220B0B0B37111111531A1A
          1A842C2C2CBF606060EBA0A0A0FF323232D61313136105050519000000000000
          00020303030D0606061F0B0B0B38111111531919197B292929B44A4A4AE28B8B
          8BFCCFCFCFFFF0F0F0FFABABABFF313131D51313136105050519000000000303
          03100E0E0E4418181878272727AD454545DC7E7E7EF9BDBDBDFFE6E6E6FFF2F2
          F2FFEBEBEBFFA6A6A6FF909090FF313131D51313136105050519000000001414
          14543D3D3DC66F6F6FF2AFAFAFFFDDDDDDFFF0F0F0FFE9E9E9FFD9D9D9FFD7D7
          D7FFA4A4A4FF919191FF9E9E9EFF313131D51313136105050519000000008282
          82EDD5D5D5FFECECECFFECECECFFDCDCDCFFCECECEFFC6C6C6FFC8C8C8FFAFAF
          AFFF8D8D8DFFA2A2A2FFA5A5A5FF313131D51313136105050519000000009393
          93F8CECECEFFD1D1D1FFCACACAFFC2C2C2FFBFBFBFFFC0C0C0FFB3B3B3FF9292
          92FF999999FFADADADFFACACACFF323232D51313136105050519000000007D7D
          7DF3898989FF9E9E9EFFB7B7B7FFBBBBBBFFBBBBBBFFB0B0B0FF919191FF9292
          92FFA7A7A7FFB8B8B8FFB4B4B4FF323232D51313136105050518000000008787
          87F39A9A9AFF8A8A8AFF8D8D8DFFA0A0A0FF9F9F9FFFA0A0A0FFABABABFFA5A5
          A5FF9E9E9EFFB9B9B9FFC2C2C2FF323232D31212125804040414000000009595
          95F3ADADADFF949494FFB7B7B7FFC5C5C5FFC0C0C0FFD1D1D1FFE4E4E4FFD9D9
          D9FFC4C4C4FFB7B7B7FFB7B7B7FF2F2F2FC60D0D0D410202020B00000000A0A0
          A0F7AEAEAEFFC5C5C5FFE0E0E0FFE0E0E0FFDEDEDEFFDADADAFFDADADAFFD6D6
          D6FFCECECEFFDEDEDEFFA2A2A2FF1C1C1C850606062001010103000000008181
          81EABDBDBDFFC4C4C4FFC0C0C0FFC0C0C0FFC0C0C0FFBEBEBEFFBBBBBBFFBCBC
          BCFFD0D0D0FFC6C6C6FF3A3A3AB00909092C0202020800000000000000002727
          2755868686EAB1B1B1FFB0B0B0FFAEAEAEFFAEAEAEFFAEAEAEFFB3B3B3FFC8C8
          C8FF8E8E8EF42A2A2A8B09090927010101060000000000000000000000000202
          02040F0F0F203F3F3F838A8A8AF2ADADADFFB0B0B0FFB7B7B7FFADADADFF5656
          56CC1414144F0404041300000002000000000000000000000000000000000000
          000000000000010101020B0B0B1934343470545454AF464646A02020205E0606
          0619010101040000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000010101030505051B0E0E0E46141414641313135D0B0B0B370303030E0000
          0000010101040202020A0303030E0202020B0101010400000001000000000000
          0000030303101E1E1E87333333D3303030DB252525B81515156A070707250303
          0311080808270D0D0D410F0F0F4C0D0D0D40070707230202020A000000020303
          031021212173838383FEB5B5B5FFB8B8B8FF393939EC1D1D1D911212125A1111
          11551F1F1F96262626B9252525B71E1E1E951313135F070707250303030F0F0F
          0F4A353535CD727272FF929292FFB4B4B4FF484848F5262626BE252525B67D7D
          7DE4C0C0C0FEA8A8A8FF737373FB2F2F2FDC1D1D1D920C0C0C3B19191951A2A2
          A2E7BFBFBFFEB1B1B1FFA8A8A8FFA4A4A4FF919191FE777777FCA8A8A8FDD2D2
          D2FF9D9D9DFF999999FF9A9A9AFF7A7A7AFD222222A80D0D0D3FBEBEBEDAC7C7
          C7FFA9A9A9FFA8A8A8FFA4A4A4FFA0A0A0FF9F9F9FFF969696FFDEDEDEFFA0A0
          A0FF969696FF666666FA565656EF535353EB1F1F1F9D0D0D0D3FBDBDBDD8C4C4
          C4FFA6A6A6FFA4A4A4FFA0A0A0FF9C9C9CFF9E9E9EFF929292FFE1E1E1FF9E9E
          9EFF969696FF666666FA5E5E5EF45D5D5DF82020209F0909092F131313209494
          94B6C6C6C6F6BBBBBBFFB7B7B7FFAFAFAFFF969696FD727272E4ACACACF0D6D6
          D6FF9B9B9BFF999999FF9C9C9CFF797979F41111115503030310000000000000
          000039393986848484FF9A9A9AFFAAAAAAFF454545E81010104D0A0A0A1D8D8D
          8DADD0D0D0F8B1B1B1F86E6E6EDC0D0D0D3F0303030D00000001000000000000
          000010101022656565DDA4A4A4FF858585FA222222A00909092E010101040000
          00000A0A0A0B0909090C00000001000000000000000000000000000000000000
          0000000000002B2B2B6ECFCFCFFF3D3D3DE31A1A1A8008080829000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003232327BD9D9D9FF444444E81C1C1C8B0A0A0A32010101050000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000026262680D5D5D5FF525252EF1F1F1F990D0D0D400202020A0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000020202036F6F6FD0F1F1F1FF8A8A8AFC232323AF0D0D0D420202020A0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000030303058F8F8FE3FFFFFFFFA5A5A5FC1D1D1D900808082A010101050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005D5D5DBDCACACAF56B6B6BD60B0B0B370202020C000000010000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000202020B070707230909092F0909092F0909092F0909092F0909092F0909
          092F0909092F0909092F0909092F070707230202020B00000000000000000000
          0000070707231515156B1D1D1D8F1D1D1D8F1D1D1D8F1D1D1D8F1D1D1D8F1D1D
          1D8F1D1D1D8F1D1D1D8F1D1D1D8F1515156B0707072300000000000000000000
          00008B8B8BFF535353FF535353FF535353FF535353FF535353FF535353FF5353
          53FF535353FF535353FF5C5C5CFF1D1D1D8F0909092F00000000000000000000
          0000535353FF6C6C6CFF6B6B6BFF696969FF696969FF686868FF676767FF6767
          67FF666666FF646464FF535353FF1D1D1D8F0909092F00000000000000000000
          0000535353FF757575FF747474FF727272FF717171FF707070FF6F6F6FFF6E6E
          6EFF6D6D6DFF6C6C6CFF535353FF1D1D1D8F0909092F00000000000000000000
          0000535353FF7D7D7DFF7D7D7DFF7C7C7CFF7B7B7BFF7A7A7AFF787878FF7777
          77FF757575FF747474FF535353FF1D1D1D8F0909092F00000000000000000000
          0000535353FF868686FF888888FF8C8C8CFF8A8A8AFF848484FF828282FF8080
          80FF7F7F7FFF7D7D7DFF535353FF1D1D1D8F0909092F00000000000000000000
          0000535353FF888888FF949494FFBBBBBBFFACACACFF929292FF8B8B8BFF8888
          88FF878787FF868686FF535353FF1D1D1D8F0909092F00000000000000000000
          0000535353FF7E7E7EFFA0A0A0FFD1D1D1FFC3C3C3FF9D9D9DFF939393FF9191
          91FF909090FF8F8F8FFF535353FF1D1D1D8F0909092F00000000000000000000
          0000535353FF888888FF878787FFC2C2C2FFB3B3B3FF9E9E9EFF9A9A9AFF9999
          99FF989898FF979797FF535353FF1D1D1D8F0909092F00000000000000000000
          0000535353FF9F9F9FFF979797FFA7A7A7FFA6A6A6FFA3A3A3FFA3A3A3FFA2A2
          A2FFA1A1A1FFA0A0A0FF535353FF1D1D1D8F0909092F00000000000000000000
          0000535353FFA9A9A9FFA9A9A9FFAAAAAAFFAAAAAAFFAAAAAAFFA9A9A9FFA8A8
          A8FFA9A9A9FFA9A9A9FF535353FF1D1D1D8F0909092F00000000000000000000
          0000535353FFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFADADADFFAEAEAEFFAEAE
          AEFFAEAEAEFFADADADFF535353FF1D1D1D8F0909092F00000000000000000000
          0000535353FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1
          B1FFB1B1B1FFB0B0B0FF535353FF1D1D1D8F0909092F00000000000000000000
          0000595959FFAEAEAEFFADADADFFAEAEAEFFAEAEAEFFAFAFAFFFAFAFAFFFB0B0
          B0FFB0B0B0FFB0B0B0FF555555FF1515156B0707072300000000000000000000
          00009E9E9EFF595959FF595959FF585858FF585858FF585858FF585858FF5757
          57FF575757FF565656FF8F8F8FFF070707230202020B00000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000010101030505051816161670232323AD1F1F1F9A151515670909
          092B020202080000000000000000000000000000000000000000000000000000
          000001010103050505171A1A1A7F737373F67B7B7BFF2F2F2FE4212121A41111
          1156040404160000000000000000000000000000000000000000000000000000
          0002040404161919197C6E6E6EF6F4F4F4FFF0F0F0FF797979FF2C2C2CD81616
          1670070707220000000100000000000000000000000000000000000000020404
          041418181876686868F4F0F0F0FFF2F2F2FFE7E7E7FFCBCBCBFF3B3B3BE71919
          197C0808082A01010103000000000000000000000000000000000202020C1515
          156A606060F1ECECECFFF6F6F6FFE4E4E4FFD9D9D9FFC3C3C3FF414141ED1C1C
          1C8E0B0B0B3501010107000000000000000000000000000000000E0E0E445B5B
          5BEAE5E5E5FFF5F5F5FFEAEAEAFFDFDFDFFFCFCFCFFFBDBDBDFF4E4E4EF42020
          20A20E0E0E460303030D00000000000000000000000000000000333333A2D9D9
          D9FFF4F4F4FFECECECFFC0C0C0FF919191FFC6C6C6FFBDBDBDFF5F5F5FFA2525
          25BA1212125B05050517000000000000000000000000000000001B1B1B638D8D
          8DFDE7E7E7FFCACACAFF494949E3414141D3B8B8B8FFB8B8B8FF777777FF2B2B
          2BD3181818770909092B01010104000000000000000000000000000000001C1C
          1C6A7E7E7EFC525252E10F0F0F4C191919618B8B8BFFB4B4B4FF8C8C8CFF3636
          36EA1F1F1F9A0F0F0F4B03030311000000010000000000000000000000000000
          00010D0D0D34080808250101010505050512505050D1A7A7A7FF9B9B9BFF5454
          54FB272727C5171717750909092E010101070000000000000000000000000000
          00000000000000000000000000000000000021212175848484FF9D9D9DFF7979
          79FF343434E9212121A41313135E060606200101010400000000000000000000
          0000000000000000000000000000000000000404040E434343C78D8D8DFF8D8D
          8DFF595959FD2B2B2BD71E1E1E94111111550606061F01010106000000000000
          000000000000000000000000000000000000000000001010103C5A5A5AEB8787
          87FF7E7E7EFF494949F9292929CE1D1D1D901010105205050519000000000000
          00000000000000000000000000000000000000000000000000001515154F5656
          56EA7E7E7EFF797979FF484848F6282828C61717177208080828000000000000
          0000000000000000000000000000000000000000000000000000000000000E0E
          0E353B3B3BB96B6B6BFD777777FF444444E8141414640505051B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002020206171717523232329E252525800606061F01010106}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000020303030F080808260D0D0D401010104F101010520F0F
          0F490A0A0A330505051A01010107000000010000000000000000000000000000
          0000010101050606061C1010104E1E1E1E93282828BB2A2A2AC5262626BD2121
          21A61A1A1A81121212580909092C0303030D0000000100000000000000000101
          0105060606201B1B1B81494949DE858585F8A1A1A1FCA1A1A1FC838383FB4646
          46EF2A2A2AD4212121A51616166D0A0A0A340303030D00000001000000010606
          061E2828289D9C9C9CFEC9C9C9FFB7B7B7FF919191FF989898FFC0C0C0FFD2D2
          D2FF929292FF363636E8232323B11616166D0909092C010101070202020C2424
          2488A6A6A6FFABABABFF868686FF989898FF828282FF838383FF9D9D9DFF8A8A
          8AFFC8C8C8FF9D9D9DFF353535E8212121A411111157050505190D0D0D3A9292
          92FEBABABAFF838383FFA6A6A6FF949494FF888888FF888888FFA0A0A0FFACAC
          ACFF8F8F8FFFDDDDDDFF838383FF2B2B2BD31A1A1A800A0A0A313333339DC4C4
          C4FF858585FF787878FF919191FF838383FF939393FF8F8F8FFF8B8B8BFFA3A3
          A3FF888888FFA9A9A9FFD3D3D3FF3B3B3BED212121A30E0E0E466A6A6ADF9E9E
          9EFF666666FF838383FFA7A7A7FF969696FFA9A9A9FFA7A7A7FF9F9F9FFFB8B8
          B8FF969696FF858585FFD7D7D7FF5F5F5FF9252525BA1010104F878787F87D7D
          7DFF727272FFA3A3A3FFBFBFBFFFAAAAAAFFADADADFFB0B0B0FFB2B2B2FFCCCC
          CCFFB2B2B2FF939393FFC9C9C9FF7E7E7EFC262626BF0F0F0F4C868686F78D8D
          8DFF8B8B8BFFA6A6A6FFADADADFF929292FF979797FFB2B2B2FFA5A5A5FFC0C0
          C0FFB8B8B8FFA9A9A9FFD8D8D8FF7C7C7CFC242424B30C0C0C3C696969DEAFAF
          AFFF7A7A7AFF898989FFA4A4A4FF8F8F8FFF9B9B9BFFC1C1C1FFCBCBCBFFCECE
          CEFFA7A7A7FFA4A4A4FFF1F1F1FF5E5E5EF61C1C1C8C070707243C3C3C94B3B3
          B3FF6E6E6EFF848484FFB5B5B5FFADADADFFB5B5B5FFD2D2D2FFF4F4F4FFEFEF
          EFFFA7A7A7FFBABABAFFDCDCDCFF393939D80F0F0F4D0303030D0F0F0F268C8C
          8CFBADADADFF878787FFB8B8B8FFB0B0B0FFABABABFFD1D1D1FFF9F9F9FFE8E8
          E8FFC0C0C0FFF3F3F3FF878787FE1919197A0505051B00000002000000012C2C
          2C6AA5A5A5FFC1C1C1FF9B9B9BFF9E9E9EFF8E8E8EFFA4A4A4FFCDCDCDFFDBDB
          DBFFFBFBFBFFA7A7A7FF2626269C070707220101010500000000000000000404
          040A2D2D2D6C9B9B9BFCD2D2D2FFD9D9D9FFC9C9C9FFD5D5D5FFF0F0F0FFE3E3
          E3FF9A9A9AFB2525258B0606061E010101050000000000000000000000000000
          0000010101021010102A4444449C818181E5A4A4A4F7A3A3A3F87F7F7FE53939
          39A20E0E0E3D0303030D00000001000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000101010303030310080808280D0D0D4110101052111111561010
          104E0B0B0B390606061F0202020A000000010000000000000000000000000000
          0000010101050606061D1010104F1E1E1E95272727BD292929C9272727C42323
          23AD1B1B1B89141414640B0B0B37040404130000000200000000000000000101
          01040606061F1C1C1C893F3F3FE36F6F6FFC919191FF949494FF7B7B7BFF4C4C
          4CF72F2F2FE1242424B31919197B0D0D0D400303031100000001000000010404
          04142323239E7B7B7BFCC8C8C8FFE0E0E0FFD1D1D1FFD1D1D1FFE4E4E4FFD4D4
          D4FF929292FF3B3B3BF2262626BF181818790A0A0A3202020208010101061B1B
          1B798A8A8AFED0D0D0FFCDCDCDFF969696FF4F4F4FFF4D4D4DFF909090FFD0D0
          D0FFD8D8D8FFA6A6A6FF383838F0222222AC1212125B05050518070707225555
          55E6BDBDBDFFB6B6B6FFB9B9B9FF5F5F5FFF404040FF404040FF595959FFBEBE
          BEFFBBBBBBFFCBCBCBFF797979FF2C2C2CD81919197C0909092C1A1A1A708B8B
          8BFFABABABFFA4A4A4FFA8A8A8FF888888FF565656FF555555FF8B8B8BFFB1B1
          B1FFABABABFFB0B0B0FFA6A6A6FF3A3A3AF11E1E1E980C0C0C3D313131AB9191
          91FF969696FF959595FF989898FF9A9A9AFF6A6A6AFF616161FF747474FF9191
          91FFA0A0A0FF9F9F9FFFA5A5A5FF505050FA222222AB0D0D0D433C3C3CC08888
          88FF898989FF898989FF8D8D8DFF878787FF494949FF434343FF434343FF4D4D
          4DFF848484FF959595FF9B9B9BFF5A5A5AFD232323AE0C0C0C3E383838B87D7D
          7DFF808080FF818181FF858585FF828282FF5D5D5DFF4C4C4CFF464646FF4343
          43FF5D5D5DFF8D8D8DFF919191FF545454FC1F1F1F9B0909092F2727278B7272
          72FF7C7C7CFF696969FF565656FF575757FF6A6A6AFF676767FF454545FF4444
          44FF545454FF858585FF878787FF434343F21616166F0505051B1111113D6060
          60FC7A7A7AFF676767FF444444FF454545FF484848FF4B4B4BFF464646FF4444
          44FF5E5E5EFF868686FF757575FF2D2D2DCB0C0C0C3A0202020A010101033434
          34AD6D6D6DFF737373FF585858FF464646FF454545FF444444FF444444FF4F4F
          4FFF767676FF828282FF4D4D4DF51515156A0404041600000001000000000808
          081E434343D36B6B6BFF707070FF626262FF575757FF555555FF5F5F5FFF7474
          74FF7A7A7AFF595959FA1C1C1C860505051A0101010400000000000000000000
          00000808081F353535B35D5D5DFE696969FF6E6E6EFF6F6F6FFF707070FF6767
          67FF434343E01818186C04040412010101030000000000000000000000000000
          000000000000000000011414144B2D2D2D9E3C3C3CC63E3E3ECC323232B51C1C
          1C75080808240101010600000001000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000010101050606061D1010104F1E1E1E95272727BD292929C92727
          27C4232323AD1B1B1B89141414640B0B0B370404041300000002000000000000
          0000010101040606061F1C1C1C893D3D3DE36C6C6CFC8C8C8CFF8F8F8FFF7979
          79FF4A4A4AF72F2F2FE1242424B31919197B0D0D0D4003030311000000000000
          0001040404142323239E777777FCC5C5C5FFD9D9D9FFDADADAFFDCDCDCFFDDDD
          DDFFD3D3D3FF8F8F8FFF3A3A3AF2262626BF181818790A0A0A32000000000101
          01061B1B1B79848484FECDCDCDFFCBCBCBFFA3A3A3FF515151FF4F4F4FFF6868
          68FFCBCBCBFFD8D8D8FFA3A3A3FF383838F0222222AC1212125B000000000707
          07224F4F4FE6B9B9B9FFB0B0B0FFB6B6B6FF919191FF404040FF404040FF5454
          54FFB9B9B9FFB9B9B9FFC9C9C9FF757575FF2B2B2BD81919197C000000001919
          1970858585FFA5A5A5FF9F9F9FFFA5A5A5FF888888FF434343FF414141FF5656
          56FFA9A9A9FFA9A9A9FFAEAEAEFFA3A3A3FF3A3A3AF11E1E1E98000000002E2E
          2EAB8B8B8BFF919191FF909090FF979797FF7E7E7EFF434343FF424242FF5353
          53FF9A9A9AFF9A9A9AFF9C9C9CFFA3A3A3FF4D4D4DFA222222AB000000003939
          39C0838383FF838383FF858585FF8A8A8AFF757575FF434343FF424242FF5151
          51FF8D8D8DFF8E8E8EFF909090FF999999FF585858FD232323AE000000003535
          35B8787878FF7B7B7BFF7B7B7BFF808080FF6E6E6EFF414141FF414141FF4E4E
          4EFF858585FF868686FF868686FF8F8F8FFF525252FC1F1F1F9B000000002525
          258B6D6D6DFF757575FF757575FF777777FF747474FF5E5E5EFF595959FF6868
          68FF7F7F7FFF808080FF818181FF848484FF414141F21616166F000000001010
          103D5A5A5AFC727272FF707070FF737373FF6F6F6FFF505050FF474747FF5A5A
          5AFF7A7A7AFF7A7A7AFF808080FF727272FF2C2C2CCB0C0C0C3A000000000101
          0103313131AD686868FF6E6E6EFF707070FF616161FF414141FF414141FF4646
          46FF737373FF797979FF7D7D7DFF4B4B4BF51515156A04040416000000000000
          00000808081E3F3F3FD3666666FF6C6C6CFF696969FF525252FF4B4B4BFF5D5D
          5DFF757575FF757575FF555555FA1C1C1C860505051A01010104000000000000
          0000000000000808081F333333B3595959FE646464FF696969FF6A6A6AFF6B6B
          6BFF626262FF414141E01818186C040404120101010300000000000000000000
          00000000000000000000000000011414144B2B2B2B9E393939C63C3C3CCC3131
          31B51C1C1C750808082401010106000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020202020C070707250C0C0C3D0C0C
          0C3A0606061F0202020900000001000000000000000000000000000000000000
          0000000000000000000001010103030303111010103E4C4C4CC0474747BF1515
          156B101010500909092B03030310010101030000000000000000000000000000
          00000000000001010103040404141E1E1E5E6B6B6BF5979797FFACACACFF5F5F
          5FE7222222861212125C0B0B0B39050505190101010600000001000000000000
          0000010101030404041431313184707070FF808080FFB5B5B5FFEAEAEAFFC7C7
          C7FF7A7A7AF7393939AC151515670E0E0E47070707240202020B000000000101
          01030404041431313184707070FF818181FFA1A1A1FFB6B6B6FFE3E3E3FFEAEA
          EAFFE2E2E2FF979797FF4E4E4ECE1C1C1C79111111550909092F000000000303
          030E30303082707070FF818181FFA2A2A2FFB0B0B0FFB3B3B3FF9C9C9CFFCBCB
          CBFFEBEBEBFFEBEBEBFFB7B7B7FF6D6D6DEF2828289011111154000000002E2E
          2E71707070FF828282FF9D9D9DFF828282FF818181FF939393FF888888FF6E6E
          6EFFA2A2A2FFE3E3E3FFEAEAEAFFD1D1D1FF7F7F7FFF2F2F2F8C000000007070
          70FF838383FFA2A2A2FF7B7B7BFFB3B3B3FFF0F0F0FFE9E9E9FFDFDFDFFFB7B7
          B7FF797979FF979797FFD0D0D0FFEBEBEBFF7D7D7DE50F0F0F4C000000007777
          77FFA3A3A3FFABABABFF878787FFE3E3E3FFF3F3F3FFDBDBDBFFF5F5F5FFF5F5
          F5FFACACACFF8B8B8BFFC3C3C3FFB3B3B3FF666666D70A0A0A34000000006C6C
          6CF0ADADADFFB3B3B3FF939393FFF7F7F7FFF7F7F7FF9A9A9AFFF8F8F8FFF8F8
          F8FFD5D5D5FF868686FFC3C3C3FF838383FF3636368B04040412000000001515
          15325B5B5BD1939393FF797979FFE9E9E9FFD7D7D7FFCFCFCFFFFBFBFBFFFBFB
          FBFFACACACFF767676FF6A6A6AE81B1B1B4E0202020B00000002000000000000
          00000000000032323272686868F0A3A3A3FFDFDFDFFFF2F2F2FFF5F5F5FFE2E2
          E2FF878787FF4F4F4FC10C0C0C28010101070000000100000000000000000000
          00000000000000000000232323526F6F6FFF696969F1969696FF959595FF7676
          76F32F2F2F7B0303031101010103000000000000000000000000000000000000
          00000000000000000000000000000000000007070711393939824D4D4DB31818
          183E020202090000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0001010101060606061C0C0C0C3E11111156101010520C0C0C3B070707250404
          04160202020B0101010400000001000000000000000000000000010101060404
          04130909092D191919792B2B2BC42B2B2BC9232323AE1D1D1D8F171717731212
          12590D0D0D3F0808082A0505051B0303030F01010106000000010606061C1010
          104F2B2B2BA56F6F6FFD949494FF9F9F9FFF707070F7414141E72D2D2DD02525
          25B31F1F1F961919197B141414630F0F0F490909092E040404122A2A2A893232
          32C06E6E6EF2969696FF8E8E8EFF9E9E9EFFBABABAFFAAAAAAFF9C9C9CFF7C7C
          7CF8494949EA343434D8292929C0202020A2171717750B0B0B37AFAFAFFFA4A4
          A4FF838383FFB6B6B6FF919191FE727272FE848484FF979797FFA5A5A5FFB8B8
          B8FF9D9D9DFF9E9E9EFF8E8E8EFD616161F1282828B411111154A1A1A1F9B8B8
          B8FF919191FFB5B5B5FFA3A3A3FF989898FF8F8F8FFF929292FF8C8C8CFE8F8F
          8FFF868686FF9D9D9DFFBEBEBEFFD0D0D0FF414141CF1212125B9C9C9CF8B4B4
          B4FF9C9C9CFFAEAEAEFFBBBBBBFFC3C3C3FFB3B3B3FFA0A0A0FF8C8C8CFF8585
          85FF7C7C7CFF909090FEA1A1A1FFB3B3B3FF3F3F3FCD1212125AA6A6A6F8B5B5
          B5FFB3B3B3FFADADADFFBDBDBDFFB4B4B4FFA9A9A9FFA1A1A1FF7B7B7BFF7272
          72FF767676FF949494FE9D9D9DFF9E9E9EFF3D3D3DCC1212125AB2B2B2F7CECE
          CEFFBCBCBCFFBDBDBDFFD4D4D4FFB7B7B7FFB2B2B2FFA7A7A7FF767676FF6767
          67FF707070FF8E8E8EFE9F9F9FFF9E9E9EFF3E3E3ECC1212125AC0C0C0FDEDED
          EDFFDEDEDEFFD0D0D0FFD9D9D9FFC9C9C9FFAAAAAAFFB0B0B0FFA3A3A3FF9898
          98FF858585FF888888FE9A9A9AFFA2A2A2FF3E3E3ECC1212125ABEBEBEFAE7E7
          E7FFEFEFEFFFE9E9E9FFCDCDCDFFC0C0C0FFA7A7A7FFBCBCBCFFC2C2C2FFBDBD
          BDFFA0A0A0FF7F7F7FFE8B8B8BFF9F9F9FFF3D3D3DCC1212125A383838477474
          7494ADADADD5D6D6D6FFD6D6D6FFD9D9D9FFD1D1D1FFC9C9C9FFB6B6B6FFC9C9
          C9FFACACACFF717171FE747474FF919191FF3C3C3CCC1212125B000000000A0A
          0A0D191919213939394B75757594AEAEAED9D7D7D7FFD6D6D6FFB1B1B1FFD2D2
          D2FFB1B1B1FF707070FE636363FF838383FF3D3D3DCA10101052000000000000
          000000000000000000000909090B12121218323232457373738F9F9F9FE4A9A9
          A9FFA7A7A7FF9C9C9CFE949494FF989898FF3C3C3CB40A0A0A34000000000000
          00000000000000000000000000000000000001010101060606074242425A9E9E
          9EF1B4B4B4FFC4C4C4FFC8C8C8FFC1C1C1EC1B1B1B5503030310000000000000
          0000000000000000000000000000000000000000000000000000010101021919
          19225B5B5B748D8D8DBD6B6B6B931919192B0202020900000001}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000101010103010101070202020802020208020202080202
          0208020202090303030F04040416030303110101010600000001000000000000
          00000000000000000001010101060303030D0303031003030310030303100303
          031004040412070707250C0C0C3D0909092F0303030F00000002000000000000
          000000000000070707111C1C1C421D1D1D451D1D1D461D1D1D461D1D1D461D1D
          1D4724242458696969F1434343A70F0F0F380303030E00000002000000000000
          0000000000010101010502020209030303100505051A0606061F060606200707
          07220E0E0E335C5C5CD73030307E0F0F0F380505051902020208000000000000
          000101010106030303100606061E0B0B0B38101010521313135E131313602020
          20771414146213131361131313601212125C0E0E0E4606060620000000000101
          01031313132F2525255342424282AAAAAAF0C2C2C2FFA8A8A8FF9E9E9EFDA2A2
          A2FF787878FD898989FF858585FF5C5C5CDF1B1B1B750D0D0D3F000000000B0B
          0B1D2929294E2B2B2B57ABABABECCFCFCFFFBDBDBDFFABABABFFB3B3B3FF8C8C
          8CFF9C9C9CFF9A9A9AFF9B9B9BFF939393FF525252CC1010104E000000001717
          17332C2C2C4F2E2E2E5AC3C3C3FFCCCCCCFFB0B0B0FFB5B5B5FFB5B5B5FF8383
          83FF9F9F9FFFA0A0A0FFADADADFFB7B7B7FF686868DC0F0F0F49000000001010
          10263A3A3A583F3F3F63C3C3C3FFD3D3D3FFC1C1C1FFBBBBBBFFC8C8C8FF9595
          95FFBBBBBBFFC3C3C3FFD7D7D7FFE8E8E8FF6E6E6ED60A0A0A30000000000404
          04092F2F2F4D4D4D4D678D8D8DC0D3D3D3FFDCDCDCFFB5B5B5FFD3D3D3FFBEBE
          BEFFAEAEAEFFDFDFDFFFEBEBEBFFC7C7C7FF2929296E03030311000000000000
          000004040409121212251818182E494949706363638A5D5D5D8C4343437D4C4C
          4C8B3A3A3A7D4A4A4A924C4C4C992222225F0303031101010103000000000000
          00000000000000000001010101060303030D0303031003030310030303100303
          03100A0A0A20282828680C0C0C3E0A0A0A340404041300000002000000000000
          000000000000070707111C1C1C421D1D1D451D1D1D461D1D1D461D1D1D461D1D
          1D461D1D1D47686868F0626262E41414143C0202020A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000070707113232327308080817010101050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000001010106050505190B0B0B3937373781585858A8262626881919197C1818
          1878171717731616166D151515681313135F0D0D0D4004040414000000000000
          0000030303101313134421212172646464B5DCDCDCFBC7C7C7F1ACACACE18A8A
          8ACC656565B54141419F2525258C1919197B111111570606061C000000000000
          00000A0A0A1E4949498ADEDEDEFEC9C9C9F8E0E0E0FFDDDDDDFFE2E2E2FFE5E5
          E5FFE7E7E7FFE6E6E6FFE4E4E4FEACACACE1121212580606061C000000000000
          0000868686ABC9C9C9F3E1E1E1FFD3D3D3FFE3E3E3FFE0E0E0FFE3E3E3FFE3E3
          E3FFE6E6E6FFE8E8E8FFEFEFEFFFD1D1D1F4111111570606061C000000000000
          0000949494B5D9D9D9FFE3E3E3FFD5D5D5FFE6E6E6FFE3E3E3FFE6E6E6FFE8E8
          E8FFEBEBEBFFECECECFFF0F0F0FFC8C8C8ED111111560505051B000000000000
          0000919191B3DADADAFFE5E5E5FFD7D7D7FFE8E8E8FFE7E7E7FFE9E9E9FFEBEB
          EBFFEDEDEDFFEFEFEFFFF3F3F3FFC7C7C7EC111111560505051B000000000000
          0000929292B3DBDBDBFFE7E7E7FFD8D8D8FFEBEBEBFFEAEAEAFFECECECFFEEEE
          EEFFF0F0F0FFF3F3F3FFF8F8F8FFC2C2C2EB1010105205050519000000000000
          0000939393B3DCDCDCFFEBEBEBFFDADADAFFEDEDEDFFEDEDEDFFEFEFEFFFF1F1
          F1FFF5F5F5FFE6E6E6FFECECECFFC4C4C4E60C0C0C3D03030310000000000000
          0000939393B3DFDFDFFFEDEDEDFFDBDBDBFFEFEFEFFFF0F0F0FFF3F3F3FFF3F3
          F3FFF8F8F8FFE0E0E0FFE7E7E7FFC2C2C2E80505051A01010105000000000000
          0000949494B3E0E0E0FFEFEFEFFFDEDEDEFFF2F2F2FFF3F3F3FFF5F5F5FFF7F7
          F7FFF7F7F7FFE3E3E3FFFCFCFCFF7373739A0101010500000000000000000000
          0000949494B3E2E2E2FFF1F1F1FFDFDFDFFFF3F3F3FFF6F6F6FFF8F8F8FFFBFB
          FBFFFAFAFAFFECECECFF7C7C7C9E010101050000000000000000000000000000
          0000949494B3E3E3E3FFF3F3F3FFE1E1E1FFFAFAFAFFFBFBFBFFF9F9F9FFF5F5
          F5FFEBEBEBFF7C7C7C9E00000001000000000000000000000000000000000000
          0000959595B2E5E5E5FFF9F9F9FFE5E5E5FFE3E3E3FFDFDFDFFFDCDCDCFF9E9E
          9ED01717172A0000000000000000000000000000000000000000000000000000
          0000969696AFE9E9E9FFE7E7E7FFE5E5E5FFDFDFDFFFDDDDDDFF7D7D7DAB0404
          0409000000000000000000000000000000000000000000000000000000000000
          0000888888A7D4D4D4E9AAAAAACC898989A66464647B3B3B3B4E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002424243A1A1A1A2C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000707071421212175383838B3555555D4555555D53E3E3EBC2828
          2887171717420808081005050508050505080303030502020203000000000000
          00001313133B4A4A4ACF909090FFC4C4C4FFD0D0D0FFCDCDCDFFC4C4C4FFA3A3
          A3FF626262E52929298B10101024050505080505050903030305000000001818
          1856646464F2979797FFCFCFCFFFCBCBCBFFD6D6D6FFD6D6D6FFCDCDCDFFD7D7
          D7FFD0D0D0FF959595FF353535AF1313132D04040407040404070707071B6666
          66EB797979FFBABABAFFC6C6C6FFE4E4E4FFE7E7E7FFE5E5E5FF969696FF9797
          97FFDBDBDBFFD0D0D0FFA1A1A1FF333333AB0E0E0E1F03030305272727717777
          77FF888888FFAEAEAEFFDEDEDEFFEDEDEDFFEAEAEAFFECECECFFB9B9B9FFA5A5
          A5FFEAEAEAFFE3E3E3FFCFCFCFFF909090FE2424248004040408505050B77C7C
          7CFF878787FFAFAFAFFFC5C5C5FFD2D2D2FFF1F1F1FFEFEFEFFFEFEFEFFFEFEF
          EFFFECECECFFEAEAEAFFE0E0E0FFC6C6C6FF5C5C5CE31313133A616161CE8787
          87FF818181FFACACACFFA9A9A9FF7D7D7DFFDDDDDDFFF7F7F7FFF5F5F5FFF5F5
          F5FFF4F4F4FFEDEDEDFFEDEDEDFFD5D5D5FF9E9E9EFF232323875C5C5CC29595
          95FF818181FF949494FFCCCCCCFFBFBFBFFFEBEBEBFFF0F0F0FFABABABFFA1A1
          A1FFD3D3D3FFF0F0F0FFE8E8E8FFDBDBDBFFADADADFF424242C5454545979E9E
          9EFF939393FF7B7B7BFFC8C8C8FFE4E4E4FFC5C5C5FF919191FF9D9D9DFFC4C4
          C4FFC0C0C0FFCCCCCCFF848484FFBBBBBBFFB4B4B4FF5F5F5FE21E1E1E459898
          98FFB0B0B0FF7E7E7EFF929292FFE6E6E6FFA3A3A3FFA4A4A4FFDBDBDBFFEAEA
          EAFFEBEBEBFFE2E2E2FFA4A4A4FFBCBCBCFFB3B3B3FF666666EC020202046464
          64C8BDBDBDFFACACACFF707070FFABABABFFEBEBEBFFE9E9E9FFAEAEAEFFB7B7
          B7FFDEDEDEFFDDDDDDFFE1E1E1FFDBDBDBFF9D9D9DFF5B5B5BE3000000001A1A
          1A3D9C9C9CFCD6D6D6FFA9A9A9FF707070FFADADADFFECECECFFA2A2A2FF9696
          96FFE8E8E8FFECECECFFF0F0F0FFC0C0C0FF888888FF3B3B3BB5000000000000
          000031313170B4B4B4FFE8E8E8FFB3B3B3FF6F6F6FFF8A8A8AFFCACACAFFD9D9
          D9FFE9E9E9FFE6E6E6FFBCBCBCFF848484FF747474FC12121248000000000000
          00000000000036363678B5B5B5FEF4F4F4FFD7D7D7FF8B8B8BFF6F6F6FFF7878
          78FF838383FF7C7C7CFF747474FF737373FF2222227000000000000000000000
          000000000000000000002222224F808080D5E2E2E2FFFBFBFBFFDDDDDDFFB3B3
          B3FF9E9E9EFF909090FF737373F12121216B0000000000000000000000000000
          0000000000000000000000000000080808122A2A2A61646464AF949494D39E9E
          9ED9787878C4373737820A0A0A27000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010103030303100808
          082A0C0C0C3E0A0A0A3103030311000000010000000000000000000000000000
          0000000000000000000000000001010101050303031108080828121212582222
          229F212121A2161616700909092B010101070000000200000001000000000000
          00000000000101010106040404130909092C101010512121219B4A4A4AE27070
          70FE505050F2212121A00F0F0F49080808280707072404040413000000010101
          0106040404150A0A0A301313135B242424A44B4B4BE5858585FFC5C5C5FF9B9B
          9BFF626262FC232323AE1A1A1A7E1919197D1616166F0D0D0D410202020A0909
          092B15151560262626A74E4E4EE78B8B8BFFBCBCBCFFE0E0E0FFECECECFF9E9E
          9EFF585858F9313131D6484848E64C4C4CEE2A2A2AC2151515670B0B0B2D2323
          23994F4F4FE78E8E8EFFC0C0C0FFECECECFFF2F2F2FFE1E1E1FFDBDBDBFF9999
          99FF626262FE818181FFB3B3B3FF797979FF464646E916161670434343BA9393
          93FFCACACAFFF3F3F3FFF8F8F8FFE9E9E9FFDCDCDCFFD6D6D6FFD3D3D3FF9797
          97FF6B6B6BFFC7C7C7FFDCDCDCFF727272FE3E3E3EE41616166D8D8D8DFFF5F5
          F5FFF8F8F8FFF5F5F5FFE4E4E4FFDDDDDDFFD7D7D7FFD1D1D1FFCACACAFF9B9B
          9BFF767676FFC5C5C5FFCECECEFF757575FE3B3B3BE21616166D868686F2F8F8
          F8FFF1F1F1FFE6E6E6FFDFDFDFFFDBDBDBFFD6D6D6FFD0D0D0FFC5C5C5FFA3A3
          A3FF7E7E7EFFBBBBBBFFC7C7C7FF7B7B7BFE3D3D3DE31616166D848484F1F6F6
          F6FFEDEDEDFFE7E7E7FFE5E5E5FFDADADAFFC5C5C5FFB5B5B5FF9E9E9EFF9D9D
          9DFF898989FFB5B5B5FFBFBFBFFF838383FE3E3E3EE31616166D878787F1F8F8
          F8FFF0F0F0FFDBDBDBFFC2C2C2FFACACACFFAAAAAAFFA8A8A8FF6E6E6EFFA2A2
          A2FF989898FFB3B3B3FFBFBFBFFF909090FE404040E31616166D828282F1D2D2
          D2FFABABABFF959595FF888888FF939393FFB1B1B1FFA3A3A3FF7C7C7CFF9090
          90FF8C8C8CFFA1A1A1FFA3A3A3FF9E9E9EFE444444E31616166F777777F38F8F
          8FFF848484FF828282FF7E7E7EFF7E7E7EFF7E7E7EFF767676FF707070FF7D7D
          7DFF9B9B9BFF9A9A9AFF6E6E6EFFB3B3B3FE454545DF141414667A7A7AFF7E7E
          7EFF757575FF6C6C6CF86F6F6FFE727272FF767676FF7A7A7AFF808080FFA5A5
          A5FFB7B7B7FF9F9F9FFF7D7D7DFFC0C0C0FF4A4A4AD50D0D0D3F2B2B2B5C2828
          28631E1E1E4E3131317B7E7E7EFF868686FF838383FF808080FF7E7E7EFF7D7D
          7DFF787878FF6F6F6FF75F5F5FE25B5B5BC52020207003030311000000010000
          0001000000011212122B606060C3595959CF555555CD484848B7343434922626
          266A1A1A1A4D1010102F05050511020202060101010300000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000101
          01060606061E0E0E0E46141414651717177217171773141414650E0E0E450707
          07210303030E0303030F04040416030303110101010600000001000000020505
          05170F0F0F493030309A4E4E4EC14A4A4AC32D2D2DA71B1B1B85171717720F0F
          0F4C08080826070707250C0C0C3D0909092F0303030F00000002020202080B0B
          0B31626262C7CDCDCDFECCCCCCFFB8B8B8FF959595FD474747D4282828A02525
          258E27272777696969F1434343A70F0F0F380303030E00000002030303106A6A
          6AC3E8E8E8FFC5C5C5FFA8A8A8FF959595FF8B8B8BFF818181FF414141CD1A1A
          1A84171717675C5C5CD73030307E0F0F0F38050505190202020818181845DBDB
          DBFFBABABAFF969696FF7E7E7EFF707070FF6D6D6DFF6F6F6FFF6D6D6DFE3535
          35CB1C1C1C8B13131361131313601212125C0E0E0E460606062043434390C3C3
          C3FFBCBCBCFFC6C6C6FFBFBFBFFFBEBEBEFFC2C2C2FFA3A3A3FF757575FF5E5E
          5EFF6A6A6AFD898989FF858585FF5C5C5CDF1B1B1B750D0D0D3F4A4A4A9DA9A9
          A9FFD3D3D3FFEEEEEEFFECECECFFECECECFFF1F1F1FFC2C2C2FF7E7E7EFF5C5C
          5CFF909090FF9A9A9AFF9B9B9BFF939393FF525252CC1010104E202020509B9B
          9BFF777777FF6F6F6FFF737373FF797979FF808080FF8A8A8AFF8D8D8DFF5F5F
          5FFF9B9B9BFFA0A0A0FFADADADFFB7B7B7FF686868DC0F0F0F49020202076A6A
          6AE4767676FF737373FF7C7C7CFF868686FF919191FF9F9F9FFF7F7F7FFF8B8B
          8BFFBBBBBBFFC3C3C3FFD7D7D7FFE8E8E8FF6E6E6ED60A0A0A30000000000F0F
          0F2E616161EF777777FF828282FF8F8F8FFF9B9B9BFF838383FFC7C7C7FFBEBE
          BEFFAEAEAEFFDFDFDFFFEBEBEBFFC7C7C7FF2929296E03030311000000000000
          0000060606162A2A2A794B4B4BB95A5A5ACB5B5B5BB15C5C5C8E4343437D4C4C
          4C8B3A3A3A7D4A4A4A924C4C4C992222225F0303031101010103000000000000
          00000000000000000001010101060303030D0303031003030310030303100303
          03100A0A0A20282828680C0C0C3E0A0A0A340404041300000002000000000000
          000000000000070707111C1C1C421D1D1D451D1D1D461D1D1D461D1D1D461D1D
          1D461D1D1D47686868F0626262E41414143C0202020A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000070707113232327308080817010101050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000010101060505
          051B0909092E070707230303030F020202090202020802020208020202080202
          0208020202090303030F04040416030303110101010600000001010101040606
          061E0E0E0E47101010500A0A0A31050505170303031103030310030303100303
          031004040412070707250C0C0C3D0909092F0303030F000000021D1D1D4F5151
          5193121212451717176B2323237F2020205F1E1E1E4A1D1D1D461D1D1D461D1D
          1D4724242458696969F1434343A70F0F0F380303030E000000020C0C0C159090
          90E1A0A0A0F32222226D15151569111111530A0A0A3107070723060606200707
          07220E0E0E335C5C5CD73030307E0F0F0F380505051902020208000000003636
          366DCFCFCFFF949494E21818186D1A1A1A841919197B15151569131313612020
          20771414146213131361131313601212125C0E0E0E4606060620000000000101
          0103666666C3E3E3E3FF787878DF7E7E7EF58E8E8EFF929292FF9A9A9AFDA1A1
          A1FF787878FD898989FF858585FF5C5C5CDF1B1B1B750D0D0D3F000000000B0B
          0B1D2D2D2D58929292EBDDDDDDFF989898FF888888FF838383FFA0A0A0FF8888
          88FF9C9C9CFF9A9A9AFF9B9B9BFF939393FF525252CC1010104E000000001717
          17332C2C2C4F3A3A3A78B9B9B9FFD0D0D0FF888888FF838383FF8E8E8EFF7979
          79FF9F9F9FFFA0A0A0FFADADADFFB7B7B7FF686868DC0F0F0F49000000001010
          10263A3A3A583F3F3F63A6A6A6FFCFCFCFFFB6B6B6FF929292FF9A9A9AFF8585
          85FFBBBBBBFFC3C3C3FFD7D7D7FFE8E8E8FF6E6E6ED60A0A0A30000000000404
          04092F2F2F4D4D4D4D678D8D8DC0A2A2A2FFD2D2D2FF797979FFA9A9A9FFB3B3
          B3FFAEAEAEFFDFDFDFFFEBEBEBFFC7C7C7FF2929296E03030311000000000000
          000004040409121212251818182E4A4A4A729A9A9AE98F8F8FFA595959B84C4C
          4C8C3A3A3A7D4A4A4A924C4C4C992222225F0303031101010103000000000000
          00000000000000000001010101060303030D1C1C1C43262626550909091D0303
          03100A0A0A20282828680C0C0C3E0A0A0A340404041300000002000000000000
          000000000000070707111C1C1C421D1D1D451D1D1D461D1D1D461D1D1D461D1D
          1D461D1D1D47686868F0626262E41414143C0202020A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000070707113232327308080817010101050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020606061C1010104F1313135E0C0C
          0C3A040404120000000200000000000000000000000000000000000000000000
          0000000000000000000101010107050505182A2A2AB12E2E2EDA242424B31818
          18780C0C0C3B0303031100000002000000000000000000000000000000000000
          0000000000010202020A08080828171717754A4A4AED5C5C5CFF323232EA2525
          25B8171717740A0A0A330202020A000000000000000000000000000000000000
          0000010101070C0C0C3A232323A7373737E4636363FC969696FF656565FF3131
          31EA222222AB111111550606061E0202020A0000000200000000000000000000
          0000080808292B2B2BB85F5F5FFF757575FF858585FF9B9B9BFF9C9C9CFF6969
          69FF292929C4141414650F0F0F4B0A0A0A330404041300000001000000000000
          00001E1E1E845F5F5FFD7F7F7FFF888888FF868686FF8B8B8BFF9E9E9EFF7171
          71F82323239F2020209E1F1F1F9D171717710A0A0A340202020A000000000000
          00003C3C3CC7727272FF717171FF565656F85A5A5AF7858585FF696969F52323
          2398232323964A4A4AF1313131E4232323AD1212125B05050519000000000000
          0000484848DD6D6D6DFF4E4E4EF6272727BB434343E3595959F4242424A61414
          14631E1E1E83575757F9464646FE2B2B2BD51818187808080828000000000000
          0000444444D25D5D5DFF333333E21D1D1D93222222902121219B2A2A2AC42020
          20A21C1C1C8B545454F4555555FF323232EA1B1B1B880909092C000000000000
          0000303030A4565656FF363636E61E1E1E9718181877373737D0484848FB2B2B
          2BD5323232DC656565FC595959FF353535EF1919197D07070722000000000000
          000011111144484848EF3E3E3EE72020209E373737D6777777FD5A5A5AFF4141
          41F8616161FD737373FF595959FF303030DE1010104F03030310000000000000
          000001010106111111451C1C1C7E3F3F3FCE848484FD8F8F8FFF7A7A7AFF7474
          74FF7A7A7AFF767676FF484848FF1D1D1D8E0606061F01010104000000000000
          000000000000000000010B0B0B32515151DA9C9C9CFF969696FF909090FF8E8E
          8EFF7F7F7FFF555555FF20202099080808260101010700000000000000000000
          000000000000000000000101010414141452636363ECA0A0A0FF828282FF5858
          58F8373737CF1616166905050517010101040000000000000000000000000000
          000000000000000000000000000001010103111111496D6D6DE7626262FF2525
          25AE0F0F0F460303031000000001000000000000000000000000000000000000
          000000000000000000000000000000000000000000011414144A3B3B3BCF1414
          145D040404120101010300000000000000000000000000000000}
      end>
  end
  object cxImageList_16_normal: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 14156552
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000020202081515
          1568242424B32C2C2CDB2F2F2FED303030EF303030EF303030EF2C2C2CDD2020
          1FBF1414147A452F1CA37B5332CF010100080101011E00000002232323AF3939
          39FF7B7B7BFFB2B2B1FFD2D2D1FFE1E1E0FFE2E2E1FFD3D3D2FFAEAEADFF9D67
          38FFAE7739FFC38E51FFC28E51FF9A6A31E0945724E70101011C313131F7ABAA
          AAFFE6E5E4FFE3E2E2FFDFDDDDFFDDDBDBFFDDDBDBFFDFDDDDFFE3E2E1FFAA83
          58FFB37835FFDE9C50FFDF9E52FDB17532FF81511DD600000000313131F7DCDB
          DBFFCDCACAFFB9B5B6FFAEAAAAFFA9A4A4FFA9A4A5FFAEA9AAFF8A6446FFB77B
          2EFFCC832FFF302D2AF9110D0A3DDC8621FDB57015FF502A09B9313131F7C5C3
          C3FFB9B5B6FFBFBBBBFFC6C2C2FFCAC7C7FFCAC7C7FFC6C3C2FF948173FFC292
          56FFCB9459FF2F2B28FA110D094CDC994BFDBA7A26FA371E0A90313131F3B7B4
          B5FFDCDADAFFE8E7E6FFEEEEEDFFF0F0EFFFF0F0EFFFEEEEEDFFE8E7E6FFAC8E
          71FFB38F69FFC8A47FFFC8A481F9B08D6AFF876647D900000000313131F3C2C1
          C0FFE5E4E3FFDEDDDCFFD4D2D2FFCCCACAFFCCCACAFFD4D2D2FFD7D6D5FFA788
          71FFA68C71FFD1B394FFC8AA8CFF7F6349C6845E44D700000018313131F3D7D5
          D5FFC3BFC0FFB1ADADFFADA9A9FFADA9A9FFADA9A9FFADA9A9FFB1ADADFFC0BD
          BDFFD6D4D4FF5C4B41FA463325AA000000000101010900000000313131F3C4C1
          C1FFBEBABAFFC5C3C1FFCAC8C7FFCECBCBFFCECCCBFFCAC8C7FFC5C3C2FFBEBB
          BAFFC3C0C1FF313131F300000000000000000000000000000000313131F3ACAB
          ABFFDEDDDCFFE8E8E7FFEEEDEDFFF0EFEFFFF0EFEFFFEEEEEDFFE9E8E7FFDFDD
          DCFFB0AEADFF313131F300000000000000000000000000000000313131F3C2C1
          C0FFE4E4E3FFDDDCDBFFD2D0D0FFCBC8C9FFCBC8C9FFD2CFD0FFDDDBDBFFE4E3
          E2FFC5C4C3FF313131F500000000000000000000000000000000313131F7D6D4
          D4FFC2BFBFFFB1AEADFFAFABAAFFAFABAAFFAFABAAFFAFABABFFB1ADADFFC1BD
          BEFFD6D4D5FF313131F700000000000000000000000000000000313131F7C7C4
          C5FFBFBCBBFFC3C0C0FFC4C1C0FFC4C1C0FFC4C1C0FFC4C1C0FFC3C0C0FFC0BC
          BCFFC6C3C4FF313131F700000000000000000000000000000000313131F7A1A0
          A0FFD8D5D5FFD9D6D6FFD8D6D6FFD8D5D6FFD8D5D6FFD8D6D6FFD9D6D6FFD8D5
          D5FFA6A4A4FF313131F700000000000000000000000000000000212121A73737
          37FF747473FFAEACACFFD0CECEFFDBD9D9FFDBDADAFFD1CFCFFFAFADACFF7777
          77FF383838FF232323AF00000000000000000000000000000000010101061313
          135E232323B12D2D2DE1303030EF303030F1303030F1303030F12D2D2DE12424
          24B3141414620202020800000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000100000003000000070000000E000000250000004B0000
          006800000073000000770000006E0000004C0000001F00000006000000000000
          00000000000000000001000000060000000F0000002600020054082408A01D47
          1DC4164216C4031B03AF0001009C000000850000004B00000018000000000000
          00000000000000000A11000026420000254B0002206A33603CD6AFD6AFFE9CD7
          9CFF7AC87AFF4FA951FF0A401EEB000005990000006B00000031000000000000
          00000000000100000005000000090000001F3D6A3DC9D7F2D7FF8FD48FFF8FD3
          8FFF6EC56EFF2AAB2AFF1FA51FFF013D03D30000007F00000047000000000000
          000100000006000000100000001E0217026EC2E5C2FF88D188FF38AF38FFB5E1
          B5FF90D290FF008F00FF019901FF028F03FE002000B80000005B000000000000
          00030102172F03083153181C4D824A7C6DF89AD99AFF6EC56EFF75C875FFD6EF
          D6FFB9E3B9FF57BC58FF37B139FF07A30EFF034606DC00000068000000000000
          0E1D06103A4E010E40577379C4EC4E8F7CFF6AC56AFF7BCB7BFFA3DBA3FFE5F4
          E5FFDAF0DAFFA9DEAAFF65C569FF12B11FFF075026F100000063000000000103
          20330512424F0411425A8491E6FF5E8EB3FF4EB84EFF0D9C0DFF008D00FFB0DF
          B0FF92D695FF00A90DFF1DBC31FF28BD3DFF0A3B4BED0000004F000000000000
          162616214F581A2551638892E2FF92A9F8FF2A9036FF099F09FF009900FF91D4
          92FF7DD182FF1FBF36FF3AD758FF3D9F54FF202978DA00000031000000000000
          050913173C4D2E375F6762669EC0A0ACF1FF95AFD5FF0B8414FF09A20DFF10AE
          1AFF20BE33FF35CF50FF3EA853FF8E95C9FF0000306E00000011000000000000
          000000000509030316250A0A1C2E2F2F51704A4A6A8A3C416192123B31AF105F
          27D80C5727D014373EB61A1B559B0000265F0000001100000003000000000000
          00000000000000000001000000060000000D0000001000000010000000100000
          001000000A20000030680000003E000000340000001300000002000000000000
          00000000000000000A1100002642000026450000264600002646000026460000
          26460000264700008FF0000085E40000133C0000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000A110000437300000A17000000050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000B000000190000000D0000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000002300000055000000420000
          0012000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000560DFF0000008F000000890000
          0047000000160000000200000000000000000000000000000000000000000000
          00000000000000000000000000000000000000560DFF00560DFF000000C20000
          008D0000004D0000001A00000004000000000000000000000000000000000000
          00000000000000000000000000000000000000560DFF5CCB81FF00560DFF0000
          00C7000000910000005500000021000000070000000100000000000000000000
          00000000000000000000000000000000000000560DFF62FFA0FF46D976FF0056
          0DFF000000D2000000970000005B0000001F0000000400000000000000000000
          00000000000000000000000000000000000000560DFF2FEF71FF31F174FF2CE8
          6BFF00560DFF000300D800000088000000310000000600000000000000000000
          00000000000000000000000000000000000000560DFF0EDF4EFF0DD54AFF0FDC
          4EFF0FE951FF00560DFF00000086000000210000000300000000000000000000
          00000000000000000000000000000000000000560DFF00BE30FF00B42DFF00BA
          2EFF00560DFF012207BF00000030000000080000000000000000000000000000
          00000000000000000000000000000000000000560DFF008817FF008E19FF0056
          0DFF001401B20000002500000007000000000000000000000000000000000000
          00000000000000000000000000000000000000560DFF006B0EFF00560DFF000A
          01980000001E0000000400000000000000000000000000000000000000000000
          00000000000000000000000000000000000000560DFF00560DFF000A01900000
          001C000000040000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000560DFF0009016B000000140000
          0004000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000B000000230000002F0000002F0000002F0000002F0000
          002F0000002F0000002F000000230000000B0000000000000000000000000000
          000000000000000000230000006B0000008F0000008F0000008F0000008F0000
          008F0000008F0000008F0000006B000000230000000000000000000000000000
          00000000000000027FFF00027FFF00027FFF00027FFF00027FFF00027FFF0002
          7FFF00027FFF00027FFF0000008F0000002F0000000000000000000000000000
          00000000000000027FFF1313FFFF1313FFFF1212FFFF1212FFFF1212FFFF1212
          FFFF1313FFFF00027FFF0000008F0000002F0000000000000000000000000000
          00000000000000027FFF0505FFFF0505FFFF0505FFFF0505FFFF0505FFFF0505
          FFFF0707FFFF00027FFF0000008F0000002F0000000000000000000000000000
          00000000000000027FFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0001
          FFFF0102FFFF00027FFF0000008F0000002F0000000000000000000000000000
          00000000000000027FFF0000FFFF0000FBFF0000FBFF0000FBFF0000FBFF0000
          FBFF0000FFFF00027FFF0000008F0000002F0000000000000000000000000000
          00000000000000027FFF0001F2FF0000E5FF0000E7FF0000E7FF0001E7FF0000
          E5FF0000F0FF00027FFF0000008F0000002F0000000000000000000000000000
          00000000000000027FFF0002D2FF0002CAFF0002C8FF0001C9FF0001C7FF0002
          C6FF0001CDFF00027FFF0000008F0000002F0000000000000000000000000000
          00000000000000027FFF0008B3FF0007ABFF0005A5FF0004A0FF0004A0FF0005
          A3FF0004A3FF00027FFF0000006B000000230000000000000000000000000000
          00000000000000027FFF00027FFF00027FFF00027FFF00027FFF00027FFF0002
          7FFF00027FFF00027FFF000000230000000B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000130D
          024DC09A62EA876F4BD95B462BBF2A1E0B98140B007A03010054000000380000
          00200000000E0000000500000000000000000000000000000000000000001B12
          065EFFF6D5FFFFE2BAFFFEDEB2FFFDDEB3FFF2D7B2FFB2926AF8A67340F75C45
          28DB423119AD1E1306906D441DC2321D0B7E0000000000000000000000001A12
          065BFFE2B6FFE2A353FFE3A352FFE6AC63FFE7B26FFFA77C4EFFEEA14DFFA774
          43FFF5DEBAFFCEAC84FFDD9142FF986129E10100001600000000000000001A12
          065BFFE3BAFFE6AC64FFE5AA61FFE6AE66FFD49D5DFFC5863AFFE4AF64FFC071
          1FFFBA8A4AFFB8762DFFD7974AFFE9AB59FF2313057100000000000000001A12
          065BFFE4BBFFE7B16CFFE7AF69FFE7B371FFCE965BFFD8963DFFFAD889FFD48B
          2AFFD58C3BFFCF7F23FFEDBD67FFFCCB70FF3A20058C00000000000000001A12
          065BFFE5BCFFE9B574FFE8B473FFE9B97CFFC6915CFFD79439FFF4CD80FFD286
          28FFCC893AFFCA7C23FFE7B460FFF5C069FF4E2A06A000000000000000001A12
          065BFFE6BEFFEABA7DFFEABA7EFFECBF86FFCE9E6BFFD19042FFDDA458FFB76F
          26FFE0B67FFFD09756FFCE8A3AFFE7AB5CFF533110A200000000000000001A11
          055BFFE7C0FFECBF87FFECC089FFEDC592FFC89867FFE3AA53FFF8CE7AFFB378
          34FFF7E4CCFFDDB48BFFE1A74DFFFCD27DFF5E3A0FAB00000000000000001A11
          055BFFE8C2FFEEC593FFEDC795FFEFCD9FFFC89563FFE4AC54FFF9D07BFFB175
          2DFFF2D5ACFFD9B18BFFE3AB50FFFCD27DFF72450FBC00000000000000001A11
          055BFFE9C4FFEFCD9FFFEFCDA1FFF1D3ABFFC78F5AFFE6AE55FFFCD37EFFAE71
          27FFE6B163FFDAA976FFE5AC51FFFBD480FF8D5412D400000000000000001911
          055BFFEAC7FFF1D3AAFFF1D4ADFFF3D9B7FFE0B892FFCE9969FFD09968FFC38F
          57FFF9EBD7FFF0DBB8FF7F4B1ED4815129B04321086C00000000000000001911
          055BFFEBC9FFF3D9B6FFF3DAB9FFF6E0C3FFF7E5CEFFF9EDDDFFF6E2C7FFF2D6
          ABFFFFFFFFFFBDAE99E106040134000000000000000000000000000000001911
          055BFFECCBFFF5DFC2FFF5E0C4FFF7E6D0FFF9EBDAFFFBF3E7FFF7E6CEFFFFF8
          E5FFCABEABE90806033B00000000000000000000000000000000000000001911
          055BFFEDCDFFF7E4CDFFF8E6D0FFFAEFE0FFFDF7EEFFFFFFFDFFFFFFF5FFC8B7
          9BE80B0804430000000000000000000000000000000000000000000000001B12
          045DFFF9DEFFFFFFF5FFFFFFF0FFFFF6DEFFFFECD0FFE3C8A2F0A4885DCF0F09
          034700000000000000000000000000000000000000000000000000000000120C
          0247BA9359D77C623BB44F3B20952A1C09650E08004305030024000000050000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000008000000160000002B0000003A0000002B0000000C000000000000
          0000000000000000000000000000000000000000000100000007000000120000
          00230000003B0000005E0602009F020100A10000005200000016000000000000
          0000000000000000000200000007000000110000002200000037000000530000
          00840F0500BF5F391CEBCD7F43FF120803D60000006100000019000000000000
          00020000000D0000001F00000038010000530000007B0B0501B43C1F0CE2A76B
          39FCEAC19DFFF4EDE5FFE08F4DFF100601D50000006100000019000000000000
          00100201004401000078090502AD311C0EDC8D5B34F9DEAB7CFFF7E0C8FFE6F0
          F7FFD6E8F8FFC58F5BFFD37116FF100801D50000006100000019000000000703
          01542C190BC6764928F2CE9568FFF4D5B6FFEDEDECFFD8E3EFFFCBD4D5FFCBD1
          C9FFBF8D5DFFCB7921FFE08D2DFF100801D5000000610000001900000000A55D
          2AEDEEC8A7FFF3E9DDFFDFE8F0FFCED7DAFFCAC8B9FFCDC1A3FFD4C8A1FFCDA1
          69FFC46F1DFFD9993CFFE4953BFF110801D5000000610000001900000000C473
          30F8CEC3B6FFCDCBBFFFD0C8AAFFD2C093FFD6BC88FFE0BF82FFDEA661FFCA74
          23FFD08B2FFFDFAB53FFE89D47FF120802D5000000610000001900000000B25A
          0BF3C16F17FFC88845FFDDAF6DFFE8B56DFFECB468FFE8A050FFCF701CFFCF7C
          1FFFDCA147FFE5BA69FFEBA657FF120902D5000000610000001800000000BA6D
          20F3CD8F36FFC66E14FFC56C1BFFD5893DFFE0892FFFC8894AFFAE957FFFBC92
          63FFD28B3AFFEBB464FFF6B870FF120903D3000000580000001400000000C27F
          38F3DCA455FFC37B2FFFB2A799FFB5B8B7FFBEAEA4FFBBCCCFFFBBE4FFFFBDD9
          E4FFBFB7ABFFCAA681FFE9A361FF110902C6000000410000000B00000000D287
          42F7D99D5BFFBEBAAFFFB2E3FFFFB1DFFFFFACDAFFFFA2D5FFFFA3D2FFFF98CD
          FFFF84C4FFFFB8E9F4FFB38B64FF040201850000002000000003000000009960
          34EA73B2E7FF6BBCFFFF62AAFFFF63A8FFFF62A9FFFF5CA5FFFF559DFFFF58A7
          FFFF8AD5FFFFB5BBB5FF291C11B00000002C0000000800000000000000003418
          0555686F73EA4B9CF1FF399FFFFF3492FFFF358DFFFF348DFFFF42A2FFFF75BD
          FFFF757674F41A100A8B02010027000000060000000000000000000000000301
          000415090120472A158362727FF24596EEFF3B9FFFFF4CA5FFFF6D9BC6FF403A
          33CC0803014F0100001300000002000000000000000000000000000000000000
          000000000000010100021007001941220A70583D25AF492D17A01E0E035E0302
          0019000000040000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000030000001B00000046000000640000005D000000370000000E0000
          0000000000040000000A0000000E0000000B0000000400000001000000000000
          00000000001008030087170600D30C0400DB000000B80000006A000000250000
          001100000027000000410000004C00000040000000230000000A000000020000
          001019070073CA5300FEEBA95BFFDBA272FF1A0800EC000000910000005A0000
          005502010296020202B9000000B7000000950000005F000000250000000F0000
          004A1C0702CD9D3F00FFAB7C42FFC9AD7BFF311409F5000000BE000003B65050
          78E47576EEFE3B37EFFF0D0E98FB000007DC000000920000003B07070F518185
          A1E79392CCFE817AC0FF6769BEFF5656C5FF3636B8FE0403A8FC6061C4FD9790
          FFFF0A0CFFFF0001FFFF0404FFFF0101B2FD000000A80000003FA09FCEDA7375
          FFFF292CFFFF272AFFFF1C1DFFFF1512FFFF110FFFFF0203F5FFACB1FFFF1211
          FFFF0000F8FF000082FA000061EF000059EB0000009D0000003FA1A0CCD86B6D
          FFFF2023FFFF1C25FFFF1216FFFF090FFFFF0C10FFFF0505E9FFB8B9FDFF0F0D
          FFFF0000F7FF000081FA000071F400006EF80000009F0000002F080818207179
          A5B69D9FD7F6A194C0FF837CCFFF7D6DCAFF463EBAFD0304AAE46C6FCAF09A9E
          FFFF0506FFFF0000FFFF0808FFFF0002B5F40000005500000010000000000000
          00003D160F86CC4700FFED9315FFFBC32EFF3A0D00E80000024D01010A1D6D6F
          9DAD9897F7F84A4EF5F80C0D9ADC0000023F0000000D00000001000000000000
          0000170600228D2F02DDE39B38FFA6622BFA040100A00000002E000000040000
          000008080B0B05050B0C00000001000000000000000000000000000000000000
          0000000000001E17176EB3C7D3FF121017E30000008000000029000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001B23247BCDD2D0FF1B1C1CE80000008B00000032000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000011110F80CDCBC8FF2C2C28EF00000099000000400000000A0000
          0000000000000000000000000000000000000000000000000000000000000000
          000001010103565857D0EDEEEDFF6E6E6EFC000000AF000000420000000A0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000030303057B7B7BE3FFFFFFFF8C918DFC000000900000002A000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000434746BDC1C1BEF5515151D6000000370000000C000000010000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000B000000230000002F0000002F0000002F0000002F0000002F0000
          002F0000002F0000002F0000002F000000230000000B00000000000000000000
          0000000000230000006B0000008F0000008F0000008F0000008F0000008F0000
          008F0000008F0000008F0000008F0000006B0000002300000000000000000000
          0000577186FF002C51FF002C51FF002C51FF002C51FF002C51FF002C51FF002C
          51FF002C51FF002C51FF1C364CFF0000008F0000002F00000000000000000000
          0000002C51FF0A5386FF095285FF085181FF075080FF074F7EFF074E7CFF074D
          7AFF064B79FF054B77FF002C51FF0000008F0000002F00000000000000000000
          0000002C51FF0E5997FF0E5895FF0D5791FF0C578FFF0C568DFF0C568BFF0B55
          89FF0A5487FF095286FF002C51FF0000008F0000002F00000000000000000000
          0000002C51FF1262A9FF1260A7FF135FA4FF125FA2FF115EA0FF105E9EFF0F5D
          9BFF0E5C99FF0E5B96FF002C51FF0000008F0000002F00000000000000000000
          0000002C51FF186CB9FF1E6CB6FF2C72B4FF256FB4FF1968B3FF1566B0FF1466
          ADFF1365ABFF1264A9FF002C51FF0000008F0000002F00000000000000000000
          0000002C51FF1D6BB9FF55799EFFA9AAABFF7998B6FF2D78C0FF1B70C1FF186F
          BEFF186EBCFF176CBAFF002C51FF0000008F0000002F00000000000000000000
          0000002B50FF215E9CFF95887DFFE4C5A7FFB9B4B0FF3F84CBFF2078D1FF1D76
          CEFF1D76CDFF1C75CBFF002C51FF0000008F0000002F00000000000000000000
          0000002B50FF2368B2FF5E6976FFBEB3A9FF7A9FC6FF2E85DDFF247FDFFF227E
          DEFF217DDCFF217DDAFF002C51FF0000008F0000002F00000000000000000000
          0000002C51FF2C85E3FF327CC9FF4B8FD8FF388EE9FF2B8BEDFF2A89EDFF2988
          ECFF2887ECFF2887EAFF002C51FF0000008F0000002F00000000000000000000
          0000002C51FF3696F2FF3595F3FF3596F5FF3395F6FF3294F7FF3194F7FF3092
          F6FF2F91F7FF2F90F7FF002C51FF0000008F0000002F00000000000000000000
          0000002C51FF41A2F3FF3FA1F5FF3DA1F6FF3CA0F7FF3A9FF9FF3A9EFAFF399D
          FAFF389CFBFF379BFBFF002C51FF0000008F0000002F00000000000000000000
          0000002C51FF48ACF3FF47ABF4FF46AAF5FF45A9F6FF43A8F8FF43A7F9FF42A8
          FAFF41A7FBFF3FA5FBFF002C51FF0000008F0000002F00000000000000000000
          0000093357FF46A7EDFF45A6EEFF45A7F0FF44A7F0FF45A8F3FF44A8F4FF44A8
          F5FF43A8F6FF42A7F8FF032D52FF0000006B0000002300000000000000000000
          000070889CFF093357FF093356FF073255FF073255FF073256FF073256FF0631
          55FF063155FF053054FF5D768BFF000000230000000B00000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000030000001800000070000100AD0000009A000000670000
          002B000000080000000000000000000000000000000000000000000000000000
          000000000003000000170002007F406443F6486D4CFF000500E4000000A40000
          0056000000160000000000000000000000000000000000000000000000000000
          0002000000160001007C39603DF6E8FBECFFDDFBE3FF3F7144FF000300D80000
          0070000000220000000100000000000000000000000000000000000000020000
          001400010076335836F4E2F7E5FFE4FBE7FFCAF8D2FF9AE3A5FF071A0AE70000
          007C0000002A00000003000000000000000000000000000000000000000C0000
          006A2B4D2FF1DDF2E1FFEBFEEDFFC9F1D0FFB2EEBCFF8ADE97FF0B210EED0000
          008E000000350000000700000000000000000000000000000000000200442748
          28EAD2EBD6FFE9FEECFFD3F8D8FFBDF3C6FF9FE7ACFF7CDD8CFF133618F40000
          00A2000000460000000D000000000000000000000000000000000B240DA2C0E0
          C5FFE4FFE8FFD1FED9FF95CC9EFF579560FF8DE49DFF74E585FF1E5325FA0000
          00BA0000005B000000170000000000000000000000000000000001120363578B
          5EFDC4FED0FF9BDFA5FF143116E30C2B0FD375D784FF69E47EFF2B8037FF0002
          00D3000000770000002B00000004000000000000000000000000000000000111
          026A3D7E46FC1D4122E10001004C000D0161419C50FF5FE475FF35AB46FF0211
          04EA0000009A0000004B00000011000000010000000000000000000000000000
          000100080034000100250000000500030012154C1CD14DD461FF39CB4FFF0E48
          16FB000000C5000000750000002E000000070000000000000000000000000000
          000000000000000000000000000000000000011704752D9F3DFF34D44BFF1D93
          2CFF010D02E9000000A40000005E000000200000000400000000000000000000
          0000000000000000000000000000000000000002000E093B10C727BB3BFF1FC2
          34FF0B5615FD000100D700000094000000550000001F00000006000000000000
          000000000000000000000000000000000000000000000009013C0E5E19EB17BD
          2CFF10AC23FF05370BF9000000CE000000900000005200000019000000000000
          0000000000000000000000000000000000000000000000000000000C014F095B
          14EA0CAF1FFF08A71AFF04360AF6000200C60000007200000028000000000000
          0000000000000000000000000000000000000000000000000000000000000008
          0135033409B9058815FD06A418FF04340AE8000000640000001B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000010006000F0252022E079E011B05800000001F00000006}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000020000000F00000026000000400000004F000000520000
          0049000000330000001A00000007000000010000000000000000000000000000
          0000000000050000001C0000004E02000093070100BB070100C5010000BD0000
          00A600000081000000580000002C0000000D0000000100000000000000000000
          00050000002003000081391B0EDE8B5C47F8AC806BFCAA7E6BFC885843FB3214
          07EF010000D4000000A50000006D000000340000000D00000001000000010100
          001E1207039DB37356FEE4B094FFCF987BFFAF623CFFB56D48FFD7A78AFFECBC
          A3FFA3664CFF100402E8000000B10000006D0000002C000000070000000C1207
          0488C17C5FFFC58666FFA0542FFFB26D4BFFA14D25FFA45026FFB87751FFA85B
          32FFE1B195FFB17258FF0F0401E8000000A400000057000000190301003AAC63
          43FED29C81FF9E502BFFC2855FFFB56E3FFFA8622DFFAE6127FFC67F4CFFCC91
          63FFB16636FFF3CFB8FF925137FF020000D300000080000000312E0F049DDFA6
          8CFF9F512EFF994114FFB86634FFA95D21FF96905BFFA58142FFBF661EFFD088
          4AFFBA601BFFCB8C5CFFE9BBA7FF1E0401ED000000A3000000467E381DDFB474
          57FF801C00FFA75221FFCD8855FFBF793AFFB8A86FFFC69E5CFFD4863AFFE1A9
          6CFFCC7A2CFFBD5E12FFEEC9AEFF5D2915F9000000BA0000004F9E5638F89947
          22FF92370CFFC48355FFDFAE80FFD79353FFDB9C58FFD6A664FFD6A968FFE6C7
          98FFDCA462FFCB7825FFE9BE90FF864C38FC010000BF0000004C9C5436F7A75D
          3AFFAD5F31FFC98957FFD5985DFFCC7422FFC38838FFA0BA85FFADAE70FFD3C1
          8EFFD5B378FFD69C53FFF3D3ABFF824A35FC010000B30000003C7D391DDEC48E
          73FF9D4214FFB35F25FFD08C4BFFC77521FFBD9447FFA9C89CFFB6D2ABFFCED4
          B0FFBBA766FFCA9B51FFFFF0DDFF5F2710F60100008C0000002448160694C794
          7AFF913102FFAC541EFFDAA46CFFD59F5CFFCDB378FFD7D7B6FFEDF6EEFFE3F4
          E7FFB4AC6EFFD3BE80FFF1C9B7FF230400D80000004D0000000D12040026A25D
          3FFBC58C6DFFAC5926FFDAA573FFD8A462FFC8A765FFD6D7B5FFF5FAF7FFE6EB
          DAFFC9C998FFFFF9E2FF9C5337FE0100007A0000001B00000002000000013510
          046ABA7F64FFD6AA8EFFC17843FFCA8642FFBC7C29FFBFA05BFFD8D0AAFFDDE4
          C0FFFFFFF6FFC17F62FF1103019C000000220000000500000000000000000501
          000A3611066CB17156FCE1BFADFFECD0B4FFE4C495FFE9D7ACFFF5F6E3FFF4D8
          C5FFB46A4FFB1305038B0100001E000000050000000000000000000000000000
          0000010000021405002A511F0A9C95583CE5B77F68F7B77D67F8955235E53814
          06A20401003D0000000D00000001000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000300000010000000280000004100000052000000560000
          004E000000390000001F0000000A000000010000000000000000000000000000
          0000000000050000001D0000004F00000095000100BD000200C9000000C40000
          00AD000000890000006400000037000000130000000200000000000000000000
          00040000001F000200890C210CE3366434FC5A9359FF5F955FFF447341FF142E
          13F7000400E1000000B30000007B000000400000001100000001000000010000
          00140209019E3C7A3CFC90E597FFB1FFBFFFA0EBA9FFA1EAAAFFBBFFC7FFA5EF
          ADFF589758FF081506F2000000BF000000790000003200000008000000060107
          0079479447FE90FA9FFF90F39EFF56A157FF123C0AFF103A08FF529652FF98F1
          A7FFA1FDB1FF66B96AFF061204F0000000AC0000005B0000001800010022194A
          17E66FEA7EFF69DE77FF6CE57CFF1F5618FF022200FF022200FF1A4C14FF75E6
          84FF75E083FF85F796FF357A35FF000200D80000007C0000002C020A007039A4
          3EFF52D962FF4CCF5BFF4FD760FF379E3CFF134A0EFF12490EFF39A33FFF58E3
          6AFF56D666FF5DDD6FFF54CC5FFF061703F1000000980000003D072203AB33B9
          3DFF35C343FF34C243FF37C645FF38C948FF1F6E1DFF1A5E16FF247F27FF33B8
          3FFF3CD44EFF3ED04FFF44DB56FF113E10FA000000AB00000043093206C022B3
          2EFF23B530FF23B52FFF25BC33FF23AF2EFF0B3502FF082800FF072900FF0D3C
          06FF23A72DFF2BCC3CFF2ED641FF135212FD000000AE0000003E082C04B817A4
          21FF18AA23FF18AB24FF1AB427FF19AD25FF105C0CFF0B3C03FF0A3000FF0828
          00FF105B0FFF1FC32FFF21CC31FF0E480EFC0000009B0000002F051C018B108E
          17FF12A61DFF107812FF0E5008FF0E5109FF117914FF107311FF0A2E00FF0A2C
          00FF0D4C08FF17B726FF18BB25FF082B05F20000006F0000001B020B003D0C67
          0CFC0EA419FF0D7610FF0B2B00FF0B2D00FF0B3400FF0B3B02FF0B3100FF0A2A
          00FF0E600CFF14BD23FF129519FF020B00CB0000003A0000000A000100030729
          01AD0A8712FF0C9414FF0B5507FF0B2F00FF0B2D00FF0B2C00FF0B2C00FF0C42
          04FF109818FF12B41EFF093E08F50000006A0000001600000001000000000106
          001E083B04D30A8210FF0A9012FF0B6B0CFF0B5207FF0C4E07FF0C630BFF0E96
          15FF0EA419FF0C580BFA010400860000001A0000000400000000000000000000
          00000106001F072A01B3096209FE09800FFF0A8A10FF0A8D11FF0B8E11FF0C76
          0EFF073404E00106006C00000012000000030000000000000000000000000000
          00000000000000000001030E004B0621019E073102C6073203CC052301B5030C
          0075000100240000000600000001000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000050000001D0000004F00000095000100BD000200C90000
          00C4000000AD0000008900000064000000370000001300000002000000000000
          0000000000040000001F000100890B1D09E331602FFC538C52FF588E57FF4070
          3EFF122C11F7000400E1000000B30000007B0000004000000011000000000000
          0001000000140107019E367436FC8BE394FFA6FAB2FFA9FAB5FFABFCB9FFB0FA
          BBFFA2EEAAFF549455FF071306F2000000BF0000007900000032000000000000
          0006000600793E8D3FFE8AF899FF89F399FF62B767FF133E0CFF113B0BFF2A60
          24FF90EC9EFF9FFFAEFF62B766FF051004F0000000AC0000005B000000000001
          0022154312E666E876FF60D86DFF65E375FF45A64CFF042200FF022000FF1545
          0FFF6FE07EFF70DF7FFF80F792FF317631FF000100D80000007C000000000107
          0070309D35FF49D659FF44CA52FF48D65AFF34A13CFF062800FF062400FF1449
          0FFF50D85FFF52D561FF58DC6AFF4FCA5AFF051603F10000009800000000051C
          02AB2BB334FF2DBE3AFF2CBE3AFF31C940FF24982BFF072800FF062600FF0F46
          0BFF34CE44FF36CC46FF3ACE4AFF40DA51FF0F390EFA000000AB00000000082A
          05C01BAC26FF1CAE28FF1DB027FF1FBB2CFF198D1FFF082800FF072600FF0D45
          08FF22BF30FF23C032FF25C334FF2AD43CFF114E10FD000000AE000000000626
          02B8129C19FF12A21CFF13A21DFF14AE20FF118216FF072400FF072300FF0B3F
          06FF18B625FF19B626FF19B727FF1DCA2DFF0C430CFC0000009B000000000417
          018B0C8411FF0D9915FF0E9716FF0E9E17FF0F9316FF0B610CFF0B560AFF0D78
          11FF12AC1DFF13AE1EFF13B020FF15B720FF062704F20000006F000000000209
          003D095C09FC0A9512FF0B8F12FF0B9513FF0C8A12FF094405FF093102FF0B59
          0AFF0FA319FF0FA419FF10B11CFF0F8F15FF020900CB0000003A000000000000
          0003052301AD087E0CFF098B0FFF0A8F11FF096B0BFF092300FF092300FF0930
          01FF0D9413FF0EA117FF0EAC18FF093B06F50000006A00000016000000000000
          00000105001E063202D307780CFF07880EFF09800EFF094A05FF093A03FF0961
          09FF0B9A13FF0C9A14FF0A5109FA010300860000001A00000004000000000000
          0000000000000105001F052501B3075807FE07730AFF08810DFF08820EFF0984
          0EFF096D0BFF062F04E00105006C000000120000000300000000000000000000
          0000000000000000000000000001020C004B041D019E052B02C6062F02CC051F
          01B5020B00750001002400000006000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000C000000250000003D0000
          003A0000001F0000000900000001000000000000000000000000000000000000
          00000000000000000000000000030000001100060A3E003F60C0003956BF0000
          006B000000500000002B00000010000000030000000000000000000000000000
          000000000000000000030000001400131D5E016090F55287ABFF8099B3FF0053
          7DE7000D13860000005C00000039000000190000000600000001000000000000
          0000000000030000001400263A8402689BFF1A7AABFF8EA4BCFFFFCCCCFFBFB5
          C2FF206D98F700263AAC0000006700000047000000240000000B000000000000
          00030000001400263A8402689BFF1C7BACFF4B9ECAFF80ABCAFFEFC9CCFFFFCC
          CCFFEFC8CCFF508BAFFF004060CE00070A79000000550000002F000000000000
          000E00263A8202689BFF1C7CACFF4C9ECBFF6CACD0FF80A5C2FF618BAAFFBFB9
          C5FFFFCDCDFFFFCFCFFF8FA6BDFF10628CEF00131D9000000054000000000027
          3A7102679BFF1D7BACFF4C97C0FF635D6CFF7B4C4CFF926666FF855555FF5E3A
          3FFF908792FFEFCDD0FFFFCCCCFFCFBFC9FF2075A3FF0020308C000000000167
          9BFF1D7CADFF4D9FCBFF66525DFFB39493FFF7F2E3FFF3ECD6FFE9DBC7FFBD98
          91FF734040FF5F839EFFBFC0CDFFFFCFCFFF406C89E50000004C000000000C6F
          A2FF4D9FCCFF6DA0C1FF845050FFECDECFFFFFFEE6FFE3D8C5FFFFFEE8FFFFFE
          E9FFB18481FF786873FF80C5ECFF77ABCBFF205979D700000034000000000564
          93F05DABD6FF81A6C2FF935F5FFFFFFEECFFFFFEEDFF97726DFFFFFFEFFFFFFF
          F0FFDCC2BBFF755D66FF80C5ECFF1D7CADFF002D448B00000012000000000013
          1D3200537DD1458AB2FF733F3FFFF0E3DAFFD9CCC3FFD0BFB9FFFFFFF6FFFFFF
          F7FFAE8785FF4A4D60FF0A608DE800131D4E0000000B00000002000000000000
          000000000000002D44723A4357F0A77676FFE4D1CDFFF7EAE7FFF9F0EEFFE2D4
          D4FF7B5A5DFF0D405CC100060A28000000070000000100000000000000000000
          0000000000000000000020101052673333FF52404AF1936868FF867379FF4F54
          63F30623347B0000001100000003000000000000000000000000000000000000
          00000000000000000000000000000000000000060A1100334D82004669B30013
          1D3E000000090000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0001000000060000001C0000003E00000056000000520000003B000000250000
          00160000000B0000000400000001000000000000000000000000000000060000
          00130000012D00000179020208C4020205C9000001AE0000008F000000730000
          00590000003F0000002A0000001B0000000F00000006000000010101011C0000
          004F050614A5111187FD1F1FD5FF4242CDFF32326CF70F1221E7020607D00101
          02B3010101960000007B00000063000000490000002E0000001218120E89110E
          0DC0171784F21717E2FF1818CCFF2A2CE2FF5456FFFF4672E3FF3C93CAFF3867
          81F81A2229EA0E0B08D8050302C0010001A20000007500000037D69B61FFC992
          51FF3E3493FF4849FFFF2C2BC2FE060C97FE050FC6FF1C49DEFF2DA1F0FF4FCD
          FFFF6B999EFFC29D4AFF957B4FFD493932F1050404B400000054C68E52F9F8B1
          55FF5948A2FF4749FFFF433CDDFF3538C9FF1725D1FF153BD9FF1665CAFE117F
          D5FF497B87FFE5A726FFFFE45EFFF8D491FF201C1CCF0000005BB48455F8E1AC
          62FF6756B1FF4341F3FF716CEAFF7B80EFFF476DF9FF2368EDFF1A67C4FF0F65
          BEFF356282FFD0691BFEFEA917FFEEC752FF1E1A18CD0000005ABC9168F8D2A9
          74FFC39E7EFFA48DA1FFA08FCCFF6A80D9FF339DF5FF3498E0FF1E4E96FF1147
          8CFF385270FFD46621FEFE8F0DFFEB9921FF1D1615CC0000005AC4A07EF7E3C8
          A1FFD5B482FFDBBA80FFE7CEACFF8FAABBFF50C5EEFF3AA2E9FF144493FF0C36
          76FF30476AFFC55522FEFE7510FFED811EFF1E1817CC0000005ACCB298FDF8F1
          DAFFE9DCC3FFDDC7ABFFE8D4B7FF9BC7DDFF35B4F6FF39BCFFFF3EA2D9FF3392
          CAFF3F708EFFB34D23FEF45D0FFFF7711FFF201A17CC0000005AC9AD96FAEDE1
          D4FFF4EEE3FFEEE5DAFFD4C0ACFF9CB7C6FF43A9DFFF57D3FFFF6DDBFAFF79D5
          E1FF9C9375FFA64619FECD4B10FFF2631DFF1F1714CC0000005A3A342E47796B
          6094B3A093D5DDC9BBFFDDCBBCFFDECFC2FFCBC9C2FFA8C4D0FF8DABBBFFD1D6
          A1FFDA9C56FF863714FE923611FFCF541DFF1E1612CC0000005B000000000B09
          080D1A1614213B332E4B796B6294B8A090D9E3C8B6FFDDC7BBFFB59587FFEADD
          A4FFD89C64FF7D301BFE6A1F0FFFB14016FF1F1915CA00000052000000000000
          000000000000000000000908070B13100E18352D2745766A628FA58579E4CD95
          5AFFEFA735FFD98E2FFEB8753CFFC86634FF231E1BB400000034000000000000
          00000000000000000000000000000000000001010101060505074638325AC98E
          49F1F1C751FFFCDB6FFFF4DA82FFD8B695EC0D0C0C5500000010000000000000
          0000000000000000000000000000000000000000000000000000020101021B15
          142260504974997E6ABD6C5D56931515152B0000000900000001}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000100000003000000070000000800000008000000080000
          0008000000090000000F00000016000000110000000600000001000000000000
          00000000000000000001000000060000000D0000001000000010000000100000
          001000000012000000250000003D0000002F0000000F00000002000000000000
          00000000000000000A1100002742000027450000274600002746000027460000
          274700003058000091F1000056A700000A380000000E00000002000000000000
          0000000000010000000500000009000000100000001A0000001F000000200000
          002200000A3300007ED700003A7E00000A380000001900000008000000000000
          000100000006000000100000001E00000038000000520000005E000000600000
          16770000006200000061000000600000005C0000004600000020000000000000
          00030102172F03093253181D4D827378C1F08390E6FF6265C7FF4453CBFD4053
          D7FF0F12A3FD0C26CDFF021CCDFF000379DF00000A750000003F000000000000
          0E1D06113A4E010E4057747AC4EC89A3FFFF7083ECFF5067DEFF466CFFFF1C2E
          C6FF1846F2FF0336FFFF0537FFFF0931ECFF020466CC0000004E000000000103
          20330512424F0411425A8592E6FF839CFFFF636FD9FF4F73FAFF496EFFFF0E21
          C0FF1041FFFF1544FFFF355EFFFF4D70FFFF0E188DDC00000049000000000000
          162616214F581B2651638993E2FF97ACFFFF838EE3FF677FF1FF7994FFFF323F
          C6FF5879FFFF6C8AFFFF9CB0FFFFC7D2FFFF242786D600000030000000000000
          050913173C4D2E375F6763669EC0A1ADF1FFB0BDFAFF757BD4FF9CADF8FF7E88
          DFFF626BD3FFB3C2FFFFCFD8FFFF9B9CDAFF0000306E00000011000000000000
          000000000509030316250A0A1C2E303052704A4A6B8A3F3F668C1C1C4E7D2020
          5A8B0C0C497D1B1B58921A1A58990000275F0000001100000003000000000000
          00000000000000000001000000060000000D0000001000000010000000100000
          001000000A20000030680000003E000000340000001300000002000000000000
          00000000000000000A1100002742000027450000274600002746000027460000
          274600002747000090F0000086E40000133C0000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000A110000447300000A17000000050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000600000019000000393C2A0F81664C23A81C0F00880000007C0000
          0078000000730000006D000000680000005F0000004000000014000000000000
          0000000000100D09024419100172725730B5F8D8B1FBE3C29AF1C2A581E19980
          5ECC6A553AB53E2F199F180E008C0000007B000000570000001C000000000000
          00000903001E5A401A8AFEDCB1FEF1C78DF8FFDBB4FFFFD7ADFFFFDDB9FFFFE0
          C0FFFFE3C4FFFFE4C3FFFCE1C1FEC5A67BE1000000580000001C000000000000
          0000A38359ABEEC892F3FFDCB6FFFFD096FFFFDFBCFFFFDBB4FFFFDEBBFFFFE0
          BFFFFFE2C3FFFFE4C8FFFFEAD7FFE9CEA7F4000000570000001C000000000000
          0000AE926BB5FFD5A2FFFFDFBBFFFFD299FFFFE2C2FFFFDFBCFFFFE2C3FFFFE4
          C8FFFFE6CDFFFFE8D1FFFFEDDCFFDDC4A1ED000000560000001B000000000000
          0000AC9069B3FFD7A4FFFFE1C1FFFFD49DFFFFE5C7FFFFE2C4FFFFE5CBFFFFE7
          CFFFFFEAD4FFFFECD8FFFFF1E4FFDAC3A2EC000000560000001B000000000000
          0000AC916AB3FFD9A8FFFFE4C6FFFFD6A1FFFFE8CEFFFFE6CCFFFFE9D2FFFFEB
          D6FFFFEDDBFFFFF0E1FFFFF7F0FFD9C09DEB0000005200000019000000000000
          0000AC916BB3FFDBACFFFFE7CDFFFFD8A5FFFFEAD4FFFFEAD3FFFFECD9FFFFEF
          DEFFFFF3E7FFFFE2C3FFFEE8D2FFD4C1A4E60000003D00000010000000000000
          0000AC926DB3FFDCB0FFFFEAD3FFFFDAAAFFFFEDD9FFFFEDDBFFFFF0E1FFFFF2
          E5FFFFF8F0FFFDDBB7FFFBE3CAFFDDBF96E80000001A00000005000000000000
          0000AC926EB3FFDEB4FFFFEDD8FFFFDCAEFFFFF0DFFFFFF1E3FFFFF4E8FFFFF6
          ECFFFFF6EEFFF8E0C4FFFFFEF9FF8E70459A0000000500000000000000000000
          0000AC9370B3FFE0B9FFFFEFDDFFFFDEB2FFFFF3E4FFFFF5EAFFFFF7F0FFFFFB
          F8FFFDF9F6FFFAEBD7FF967B539E000000050000000000000000000000000000
          0000AC9370B3FFE2BDFFFFF2E3FFFFE1B7FFFFF9F3FFFFFAF7FFFFF9F2FFFFF5
          E8FFFEECD0FF9A7B4F9E00000001000000000000000000000000000000000000
          0000AC9371B2FFE5C1FFFFF9F2FFFFE5C0FFFFE2BAFFFFE0B2FFFFDDABFFCB9C
          5AD02513002A0000000000000000000000000000000000000000000000000000
          0000AC9675AFFFE9CAFFFFE7C5FFFFE5C0FFFFDFB1FFFFDEADFFA87D3FAB0601
          0009000000000000000000000000000000000000000000000000000000000000
          0000A6885DA7E9D4B6E9CBAA7ACCA58860A67B63437B4E3B204E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003A24043A2C16002C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000908001418080075340E00B3592811D4592B12D53B1B03BC2013
          0087191700420D0C001008070008080700080504000503030003000000000000
          0000110C003B521100CFB36036FFDCAC90FFE6BDA3FFE5BC9CFFE3B287FFC289
          56FF6C3C16E52116008B16140024080700080908000905040005000000001004
          0056812300F2BB693FFFE0BFA7FFE2B99AFFF0CAA9FFECC8ACFFDAB8A7FFF2CE
          A9FFEBC59DFFB27743FF2D1900AF1916002D07060007070600070301001B8B2F
          00EBA33F0DFFD0A182FFE1B58FFFFBDFC0FFFEE3C5FFF8E1C5FF564EABFF5C51
          A9FFEFCFB7FFECC39EFFC08653FF2A1700AB1311001F05050005290E0071A43B
          06FFAA552BFFCE9866FFFADDB2FFFFEED3FFFCE4CEFFFFF0D1FFA293BCFF766B
          B2FFFEEACCFFF9DCBFFFE8BE9EFFAA6F40FE1A11008007060008672504B7A345
          14FFA9542AFFD89F5FFFC5B1A9FFC9BDD1FFFFF4DDFFFCECDBFFFDEDDBFFFFEC
          D8FFFDE8D2FFFDE5CEFFF6D7BCFFE2B38EFF603414E31311003A7E330DCEAA54
          29FFA54B1FFFD99A56FF98899DFF1716A4FFD7CEDCFFFFFBEBFFFFF4E7FFFFF5
          E6FFFFF3E4FFFCE9D5FFFFECD2FFEDC8A7FFBC7D50FF160A008777310EC2B468
          41FFA54B1EFFBC7238FFDBC7A5FFBCAEA3FFF0E9DCFFF7EBE1FFC58868FFBE79
          55FFE5C2ACFFFBECDEFFEEDDD7FFEED3B8FFD6985DFF391708C55B220697BA74
          52FFB2643EFFA24512FFEAC68BFFFFFFBBFFE9C686FFB36538FFBC774FFFD7AC
          95FFD8A68AFFBDB1CDFF2121AAFFB7A49FFFE4A85FFF632E19E2280D0045B56D
          48FFC78F73FFA34619FFB86E36FFFCF1C3FFC58652FFCB8E50FFFEECA8FFFFFC
          CAFFFFF5CDFFF8ECBEFF8379A1FFBCA99BFFDFA462FF723017EC020100048039
          16C8D1A28AFFC4896CFF9A3500FFCC9562FFFEF8D0FFFFFFC9FF8E88ABFFAAA0
          A5FFFFF8AEFFFEECADFFFFF4B5FFF7E2AEFFC47A45FF65240DE300000000240B
          003DB87451FCE2C4B5FFC28465FF983000FFCE9664FFFBF6D5FF5B5FBCFF4C4B
          AEFFF9F6CDFFFFF9D0FFFFFFDAFFDDB383FFB25523FF381002B5000000000000
          000042160170C99479FFEFDED6FFC99378FF962E00FFB05F2BFFE1C099FFD8CD
          C7FFF3EAD5FFF5EACAFFD7AA81FFAC531FFF9A3A0AFC09030048000000000000
          00000000000047180378C9957DFEF8F1ECFFE3C7B8FFAC5931FF972D00FFA445
          0AFFA9531FFFA44814FF9F3A05FF9E3804FF1D0A007000000000000000000000
          000000000000000000002E0E004F975B3ED5EBD7CCFFFDF9F7FFE6CEC3FFC992
          77FFBB7551FFB55E34FF983C11F11D09006B0000000000000000000000000000
          00000000000000000000000000000A0300123913016177442BAFA57A64D3AD87
          74D9875A43C43C1C0D8206020027000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000003000000100000
          002A0000003E0000003100000011000000010000000000000000000000000000
          0000000000000000000000000001000000050000001100000028020000580601
          009F010101A2000000700000002B000000070000000200000001000000000000
          00000000000100000006000000130000002C000000510500009B441A05E28F38
          09FE421D0DF2010101A000000049000000280000002400000013000000010000
          000600000015000000300200005B080101A4441604E59E582FFFD7BF96FFC777
          3DFF762703FC010101AE0200007E0000007D0000006F000000410000000A0000
          002B050100600C0301A7481B09E7A76236FFCFAF88FFE5E8C8FFFFFACFFFCF7C
          3DFF601D00F90F0301D63C1705E6401A06EE050303C2000000670602002D0B02
          0199471E0DE7A7673DFFD0B692FFE5F4DCFFF1FEE0FFF7EABDFFFDDEA9FFCC78
          33FF752800FE8C5A38FFD2A16EFFAA3905FF331609E900000070451C07BAA471
          4DFFD8C0A3FFE5FBEBFFEEFFF4FFF2F4D4FFF1E1B6FFF4D7A5FFF9D197FFD27B
          29FF863E06FFC6C6ADFFF7E2B0FF9C3601FE270C01E40000006DAE6435FFE7FF
          F8FFEEFFFFFFEDFDE8FFECEECEFFEFE4BCFFF4D9A8FFF6CE95FFF6C184FFDB86
          29FF955313FFD2C09CFFF4C990FFA33F02FE230B00E20000006D9B633DF2EDFF
          FFFFEAFCE0FFE8F0D0FFEEE6C0FFF5DEAFFFF8D6A0FFFBCE8DFFFEC071FFE796
          31FF9D601FFFCDB187FFF3C07FFFB14E04FE260E00E30000006D996039F1E8FF
          F6FFEAF7DBFFF0F3D1FFF9EDC4FFFBDAA6FFF3BC7BFFE9A55EFFC87E43FFD687
          35FFA36B34FFCDA878FFF1B46EFFC1650AFE291301E30000006D9B643EF1EEFF
          FFFFF1FBDDFFEDDEB7FFE3B582FFD4925BFFD19B5AFFBE9666FF5A345FFFC38A
          53FFA97954FFD1A571FFF7B566FFD17F19FE2C1704E30000006D9A5B34F1DBCD
          B3FFD0975DFFC67831FFC36713FFC5842AFFD1C16BFFC3A856FF8B542DFFB870
          31FF9F6040FFCD8C47FFE18D38FFD98C34FE2E1A09E30000006FA7500AF3CC7F
          1AFFC97803FFC77700FFBD6B00FFB1650BFFA3591AFF9B450CFF993700FF9D48
          1CFFB9844BFF966D6DFF662E58FFECAA55FE2D1B10DF00000066B25F01FFBC6D
          00FFA54E00FF933B00F8943801FE9C3E02FFA84B01FFB35A00FFC16400FFCBAA
          54FFDDD26EFFB0965EFF8C562DFFEDB673FF342119D50000003F3518095C320E
          00632309004E3D14007BBB6B00FFCF8800FFC87D00FFC27500FFBD6C00FFB163
          09FFA34F0BFF943E08F7792D03E26E2E13C51409047000000011010000010100
          0001010000011708022B7E4212C3782E00CF6F2400CD581B00B7391000922A0B
          006A1A07004D1105002F04010011020100060000000300000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00060000001E0000004600000065000000720000007300000065000000450000
          00210000000E0000000F00000016000000110000000600000001000000020000
          0017000200490724079A1D461DC1164316C3031C03A700010085000000720000
          004C00000026000000250000003D0000002F0000000F00000002000000080002
          0031346034C7AED5AEFEA6DBA6FF82CC82FF4DA94EFD0A3F13D4000014A00000
          188E00002777000090F1000056A7000009380000000E00000002000000103C6A
          3CC3D7F1D7FF97D797FF65C165FF43B443FF2FAD2FFF1FA51FFF013D01CD0001
          00840000076700007DD70000397E00000938000000190000000802180245C2E5
          C2FF83CF83FF45B445FF1BA31BFF029802FF009300FF019701FF029003FE0021
          08CB0000008B00000061000000600000005C00000046000000201948199094D7
          94FF89D089FF9AD79AFF8ED28EFF8BD18BFF92D492FF5CBF5EFF05A20BFF125B
          3AFF0C0E7FFD0C25CDFF021BCDFF000378DF000009750000003F1A511A9D66C4
          66FFB1E0B1FFE2F3E2FFDEF2DEFFDFF2DEFFE8F6E7FF91D693FF0EAF1CFF0D5B
          40FF143DD6FF0335FFFF0536FFFF0930ECFF020466CC0000004E042304504DB8
          4DFF0D9D0DFF009600FF029E06FF0BA813FF13B021FF1FBB31FF27BC3CFF0B40
          65FF0F3EF6FF1443FFFF345DFFFF4C6FFFFF0E178CDC0000004900030007197E
          1DE4099F09FF049D06FF10A817FF1CB52BFF2AC340FF3AD758FF2D9254FF2C3F
          B0FF5778FEFF6B89FFFF9BAFFFFFC7D2FFFF232685D60000003000000000000F
          042E037B07EF08A20CFF15B121FF26C139FF35CF50FF2F994CFF8FA5E5FF7D87
          DFFF616AD3FFB2C1FFFFCFD8FFFF9A9BDAFF0000306E00000011000000000000
          000000050516032C0F79095812B919642ACB34574BB13D3F648E1B1B4E7D2020
          598B0B0B487D1A1A58921A1A57990000265F0000001100000003000000000000
          00000000000000000001000000060000000D0000001000000010000000100000
          001000000A20000030680000003E000000340000001300000002000000000000
          00000000000000000A1100002642000026450000264600002646000026460000
          26460000264700008FF0000085E40000133C0000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000A110000437300000A17000000050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000060000
          001B0000002E000000230000000F000000090000000800000008000000080000
          0008000000090000000F00000016000000110000000600000001000000040000
          001E000000470000005000000031000000170000001100000010000000100000
          001000000012000000250000003D0000002F0000000F0000000205191D4F155F
          6E9301090B450000066B00001A7F0000225F0000254A00002646000026460000
          264700003058000090F1000056A7000009380000000E00000002020F11152FA9
          CCE13EBEDCF301141D6D00000069000000530000003100000023000000200000
          00220000093300007DD70000397E00000938000000190000000800000000063B
          4C6D9DDCEAFF519BB2E20004066D000000840000007B00000069000000610000
          15770000006200000061000000600000005C0000004600000020000000000000
          0003166A8AC3C8EEF5FF287196DF494C7CF5535B93FF4E51A1FF404EC1FD3F52
          D6FF0F12A2FD0C25CDFF021BCDFF000378DF000009750000003F000000000000
          0E1D06153F583E99BAEBBBE7F1FF447FBAFF455193FF354495FF3A5BD8FF1A2B
          BDFF1745F2FF0335FFFF0536FFFF0930ECFF020466CC0000004E000000000103
          20330512424F0322537874C7DDFFA2DAE9FF39579EFF30479BFF334DB3FF0C1C
          A6FF1040FFFF1443FFFF345DFFFF4C6FFFFF0E178CDC00000049000000000000
          162616214F581A2551635589CBFF9FDBE9FF6FBBDBFF455AA9FF5365B0FF2934
          A5FF5778FFFF6B89FFFF9BAFFFFFC7D2FFFF232685D600000030000000000000
          050913173C4D2E375F6762669EC0479CD0FFC0CEC0FF6D4667FF7274B7FF737C
          CDFF616AD3FFB2C1FFFFCFD8FFFF9A9BDAFF0000306E00000011000000000000
          000000000509030316250A0A1C2E302F5172807A95E92057CAFA111B71B81F1F
          588C0B0B487D1A1A58921A1A57990000265F0000001100000003000000000000
          00000000000000000001000000060000000D07081F43060C2F550001071D0000
          001000000A20000030680000003E000000340000001300000002000000000000
          00000000000000000A1100002642000026450000264600002646000026460000
          26460000264700008FF0000085E40000133C0000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000A110000437300000A17000000050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000001C0000004F0000005E0000
          003A000000120000000200000000000000000000000000000000000000000000
          000000000000000000010000000700000018011004B1000602DA000000B30000
          00780000003B0000001100000002000000000000000000000000000000000000
          0000000000010000000A0000002800000075063E12ED0B5D1AFF010803EA0000
          00B800000074000000330000000A000000000000000000000000000000000000
          0000000000070000003A000301A7011504E4087318FC17E235FF0E6F1EFF0105
          02EA000000AB000000550000001E0000000A0000000200000000000000000000
          000000000029001104B8026B12FF04A119FF05C91EFF0CF72AFF18EF37FF0F78
          1FFF010402C4000000650000004B000000330000001300000001000000000000
          000000090284026E12FD04BC1BFF05CF1EFF05CC1EFF04D91DFF0EFF2EFF0E92
          23F80107029F0002019E0000009D00000071000000340000000A000000000000
          0000023008C7049A18FF049918FF02590FF8036411F704C91DFF048915F5010A
          0298010E0496023D0DF1010803E4000000AD0000005B00000019000000000000
          000002440BDD058C16FF02450DF6000401BB01350AE3036211F4000701A60000
          006300090283035B11F901300BFE000100D50000007800000028000000000000
          000002400BD2036610FF000E03E200000093000D03900004019B000502C40001
          00A20001018B045510F4025210FF000802EA000000880000002C000000000000
          0000012507A402560FFF011505E60000009700000077012107D002350BFB0000
          00D5001003DC057A15FC025E11FF000F03EF0000007D00000022000000000000
          000000080244013C0CEF012507E70000009E011F05D604A919FD036010FF0126
          08F8047112FD059B19FF025C11FF000A02DE0000004F00000010000000000000
          000000010006000802450006027E05320DCE08C520FD05E11EFF05AD1AFF049F
          18FF05AC1AFF04A51BFF00360CFF0001018E0000001F00000004000000000000
          00000000000000000001000201320A5517DA15F132FF0AEF25FF05E420FF06DE
          20FF05B91DFF015410FF00050199000000260000000700000000000000000000
          0000000000000000000000000004000802520E751FEC15FD35FF09BD20FF025D
          12F8012206CF0003016900000017000000040000000000000000000000000000
          000000000000000000000000000000000003000602490F8C23E70A6B1BFF0105
          01AE000200460000001000000001000000000000000000000000000000000000
          00000000000000000000000000000000000000000001010D044A032A0CCF0003
          015D000000120000000300000000000000000000000000000000}
      end>
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton16'
      end>
    ItemOptions.Size = misNormal
    UseOwnFont = False
    Left = 808
    Top = 248
    PixelsPerInch = 120
  end
  object EtranConnect: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 808
    Top = 280
  end
  object DS_Error: TDataSource
    DataSet = ClientDS_Error
    Left = 453
    Top = 288
  end
  object ClientDS_Error: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 452
    Top = 240
    object ClientDS_Errorerror_id: TAutoIncField
      FieldName = 'error_id'
    end
    object ClientDS_Errorerror_date: TDateTimeField
      FieldName = 'error_date'
    end
    object ClientDS_Errorerror_message: TStringField
      FieldName = 'error_message'
      Size = 500
    end
    object ClientDS_Errorerror_name: TStringField
      FieldName = 'error_name'
      Size = 200
    end
    object ClientDS_Errorerror_cod: TStringField
      FieldName = 'error_cod'
    end
  end
  object DS_Monitor: TDataSource
    DataSet = ClientDS_Monitor
    Left = 560
    Top = 286
  end
  object ClientDS_Monitor: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 563
    Top = 236
    object ClientDS_Monitormonitor_id: TAutoIncField
      FieldName = 'monitor_id'
    end
    object ClientDS_Monitorcolor: TIntegerField
      FieldName = 'color'
    end
    object ClientDS_Monitormonitor_type: TStringField
      FieldName = 'monitor_type'
      Size = 200
    end
    object ClientDS_Monitormonitor_date_end: TDateTimeField
      FieldName = 'monitor_date_end'
    end
    object ClientDS_Monitormonitor_date_begin: TDateTimeField
      FieldName = 'monitor_date_begin'
    end
    object ClientDS_Monitormonitor_text: TStringField
      FieldName = 'monitor_text'
      Size = 300
    end
    object ClientDS_Monitormonitor_status: TStringField
      FieldName = 'monitor_status'
      Size = 200
    end
    object ClientDS_Monitormonitor_count: TIntegerField
      FieldName = 'monitor_count'
    end
    object ClientDS_Monitormonitor_font_bold: TBooleanField
      FieldName = 'monitor_font_bold'
    end
  end
  object Query_Connect: TADOQuery
    Connection = EtranConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'#9'view_connect.*, period_end'
      'FROM'#9'view_connect'
      
        #9#9'left join (SELECT connect_id, max(period_end) as period_end FR' +
        'OM etran_query_new GROUP BY connect_id) x1'
      #9#9'on view_connect.connect_id = x1.connect_id')
    Left = 141
    Top = 239
  end
  object DS_Connect: TDataSource
    DataSet = Query_Connect
    Left = 115
    Top = 265
  end
  object DS_Period: TDataSource
    DataSet = Query_Period
    Left = 260
    Top = 254
  end
  object Query_Period: TADOQuery
    Connection = EtranConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'#9'* '
      'FROM'#9'view_query_new'
      'WHERE'#9'query_xml is null'
      #9#9'AND set_load = 1'
      #9#9'AND set_connect_load = 1')
    Left = 286
    Top = 228
  end
  object Query_Docs: TADOQuery
    Connection = EtranConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'#9'* '
      'FROM'#9'view_query_docs_new '
      'WHERE'#9'doc_date_load is null'
      #9#9'AND set_load = 1'
      #9#9'AND set_connect_load = 1')
    Left = 278
    Top = 346
  end
  object DS_Docs: TDataSource
    DataSet = Query_Docs
    Left = 257
    Top = 359
  end
  object Query_Period_Error: TADOQuery
    Connection = EtranConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'query_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM etran_query_error'
      'WHERE query_id = :query_id')
    Left = 198
    Top = 484
  end
  object DS_Period_Error: TDataSource
    DataSet = Query_Period_Error
    Left = 173
    Top = 510
  end
  object Query_Docs_Error: TADOQuery
    Connection = EtranConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'query_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM etran_query_error'
      'WHERE query_id = :query_id')
    Left = 314
    Top = 484
  end
  object DS_Docs_Error: TDataSource
    DataSet = Query_Docs_Error
    Left = 288
    Top = 510
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 7496
    ServerType = stNonBlocking
    OnClientRead = ServerSocket1ClientRead
    Left = 526
    Top = 456
  end
end
