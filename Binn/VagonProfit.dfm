object fmVagonProfit: TfmVagonProfit
  Left = 214
  Top = 96
  Caption = #1044#1086#1093#1086#1076#1085#1086#1089#1090#1100' '#1074#1072#1075#1086#1085#1086#1074
  ClientHeight = 644
  ClientWidth = 1128
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 26
    Width = 1128
    Height = 618
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControl1Change
    ClientRectBottom = 618
    ClientRectRight = 1128
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1054#1073#1086#1088#1086#1090#1099' '#1074#1072#1075#1086#1085#1086#1074
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1128
        Height = 594
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu1
          OnKeyPress = cxGrid4DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGrid4DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid4DBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_Cycle
          DataController.Filter.OnChanged = cxGrid4DBBandedTableView1DataControllerFilterChanged
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #1050#1086#1083'-'#1074#1086': 0'
              Kind = skCount
              Column = cxGrid1DBBandedTableView1num_vagon
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1sum_delta
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1sum_dohod
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1sum_rashod
            end
            item
              Format = '#,##0.000'
              Kind = skSum
              Column = cxGrid1DBBandedTableView1fact_weight
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
                  Column = cxGrid1DBBandedTableView1num_vagon
                end
                item
                  Column = cxGrid1DBBandedTableView1firm_customer_name
                end
                item
                  Column = cxGrid1DBBandedTableView1kargoETSNG_name
                end
                item
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
                  Column = cxGrid1DBBandedTableView1num_cycle
                end
                item
                end>
              SummaryItems = <
                item
                  Format = #1050#1086#1083'-'#1074#1086': 0'
                  Kind = skCount
                  Column = cxGrid1DBBandedTableView1num_vagon
                end
                item
                  Format = '  '#1055#1088#1080#1073#1099#1083#1100': #,##0.00  '
                  Kind = skSum
                  Column = cxGrid1DBBandedTableView1sum_delta
                end
                item
                  Format = '  '#1044#1086#1093#1086#1076': #,##0.00  '
                  Kind = skSum
                  Column = cxGrid1DBBandedTableView1sum_dohod
                end
                item
                  Format = '  '#1056#1072#1089#1093#1086#1076': #,##0.00  '
                  Kind = skSum
                  Column = cxGrid1DBBandedTableView1sum_rashod
                end>
            end>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          Filtering.ColumnFilteredItemsList = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = clSilver
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.BandHeaderHeight = 20
          OptionsView.BandHeaderLineCount = 2
          OptionsView.BandHeaders = False
          OnCustomDrawColumnHeader = cxGrid4DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid4DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn
            Caption = #8470' '#1042#1072#1075#1086#1085#1072
            DataBinding.FieldName = 'num_vagon'
            Styles.Content = fmMain.cxStyle_Bold
            Styles.Header = fmMain.cxStyle_Bold
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
            Caption = #1050#1083#1080#1077#1085#1090
            DataBinding.FieldName = 'firm_customer_name'
            Width = 97
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1node_begin_name: TcxGridDBBandedColumn
            Caption = #1057#1090'.'#1054#1090#1087#1088' ('#1075#1088#1091#1078')'
            DataBinding.FieldName = 'node_begin_name'
            Width = 101
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1node_end_name: TcxGridDBBandedColumn
            Caption = #1057#1090'.'#1053#1072#1079#1085' ('#1075#1088#1091#1078')'
            DataBinding.FieldName = 'node_end_name'
            Width = 95
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1079
            DataBinding.FieldName = 'kargoETSNG_name'
            Width = 103
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1date_from_to: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1054#1090#1087#1088'.'
            DataBinding.FieldName = 'date_from_to'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1datpr: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1055#1088#1080#1073'.'
            DataBinding.FieldName = 'datpr'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1fact_weight: TcxGridDBBandedColumn
            Caption = #1060'.'#1074#1077#1089
            DataBinding.FieldName = 'fact_weight'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.###'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1num_cycle: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088' '#1086#1073#1086#1088#1086#1090#1072
            DataBinding.FieldName = 'num_cycle'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1sum_dohod: TcxGridDBBandedColumn
            Caption = #1044#1086#1093#1086#1076
            DataBinding.FieldName = 'sum_dohod'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1sum_rashod: TcxGridDBBandedColumn
            Caption = #1056#1072#1089#1093#1086#1076
            DataBinding.FieldName = 'sum_rashod'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Width = 84
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1sum_delta: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1073#1099#1083#1100
            DataBinding.FieldName = 'sum_delta'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Styles.Content = fmMain.cxStyle_Docs_Status
            Width = 92
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBBandedTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103
      ImageIndex = 1
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 1128
        Height = 594
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid4DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu_VagonProfit
          OnKeyPress = cxGrid4DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGrid4DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid4DBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_VagonProfit
          DataController.Filter.OnChanged = cxGrid4DBBandedTableView1DataControllerFilterChanged
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #1050#1086#1083'-'#1074#1086': 0'
              Kind = skCount
              Column = cxGrid4DBBandedTableView1num_vagon
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid4DBBandedTableView1sum_delta
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid4DBBandedTableView1sum_dohod
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid4DBBandedTableView1sum_rashod
            end
            item
              Format = '#,##0.000'
              Kind = skSum
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
                  Column = cxGrid4DBBandedTableView1num_vagon
                end
                item
                  Column = cxGrid4DBBandedTableView1firm_customer_name
                end
                item
                  Column = cxGrid4DBBandedTableView1kargoETSNG_name
                end
                item
                  Column = cxGrid4DBBandedTableView1kargoETSNG_cod
                end
                item
                  Column = cxGrid4DBBandedTableView1date_from_to
                end
                item
                  Column = cxGrid4DBBandedTableView1datpr
                end
                item
                  Column = cxGrid4DBBandedTableView1node_begin_name
                end
                item
                  Column = cxGrid4DBBandedTableView1node_end_name
                end
                item
                  Column = cxGrid4DBBandedTableView1num_cycle
                end
                item
                  Column = cxGrid4DBBandedTableView1bargain_cod
                end>
              SummaryItems = <
                item
                  Format = #1050#1086#1083'-'#1074#1086': 0'
                  Kind = skCount
                  Column = cxGrid4DBBandedTableView1num_vagon
                end
                item
                  Format = '  '#1055#1088#1080#1073#1099#1083#1100': #,##0.00  '
                  Kind = skSum
                  Column = cxGrid4DBBandedTableView1sum_delta
                end
                item
                  Format = '  '#1044#1086#1093#1086#1076': #,##0.00  '
                  Kind = skSum
                  Column = cxGrid4DBBandedTableView1sum_dohod
                end
                item
                  Format = '  '#1056#1072#1089#1093#1086#1076': #,##0.00  '
                  Kind = skSum
                  Column = cxGrid4DBBandedTableView1sum_rashod
                end>
            end>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          Filtering.ColumnFilteredItemsList = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.HideFocusRectOnExit = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = clSilver
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.BandHeaderHeight = 20
          OptionsView.BandHeaderLineCount = 2
          OptionsView.BandHeaders = False
          OnCustomDrawColumnHeader = cxGrid4DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid4DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid4DBBandedTableView1num_vagon: TcxGridDBBandedColumn
            Caption = #8470' '#1042#1072#1075#1086#1085#1072
            DataBinding.FieldName = 'num_vagon'
            Styles.Content = fmMain.cxStyle_Bold
            Styles.Header = fmMain.cxStyle_Bold
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1vagon_id: TcxGridDBBandedColumn
            Caption = #8470' '#1047#1072#1087#1080#1089#1080' '#1074#1072#1075#1086#1085#1072
            DataBinding.FieldName = 'vagon_id'
            DataBinding.IsNullValueType = True
            Width = 70
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid4DBBandedTableView1bargain_cod: TcxGridDBBandedColumn
            Caption = #8470' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
            DataBinding.FieldName = 'bargain_cod'
            Styles.Content = fmMain.cxStyle_Agree_bargain_cod
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
            Caption = #1050#1083#1080#1077#1085#1090
            DataBinding.FieldName = 'firm_customer_name'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1079
            DataBinding.FieldName = 'kargoETSNG_name'
            Width = 103
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1079' '#1082#1086#1076
            DataBinding.FieldName = 'kargoETSNG_cod'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1date_from_to: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1054#1090#1087#1088'.'
            DataBinding.FieldName = 'date_from_to'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1datpr: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1055#1088#1080#1073'.'
            DataBinding.FieldName = 'datpr'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1fact_weight: TcxGridDBBandedColumn
            Caption = #1060'.'#1074#1077#1089
            DataBinding.FieldName = 'fact_weight'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.###'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1bargain_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
            DataBinding.FieldName = 'bargain_id'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1fact_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1092#1072#1082#1090#1072
            DataBinding.FieldName = 'fact_id'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1node_begin_name: TcxGridDBBandedColumn
            Caption = #1057#1090'.'#1054#1090#1087#1088'.'
            DataBinding.FieldName = 'node_begin_name'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1node_end_name: TcxGridDBBandedColumn
            Caption = #1057#1090'.'#1053#1072#1079#1085'.'
            DataBinding.FieldName = 'node_end_name'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1num_cycle: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088' '#1086#1073#1086#1088#1086#1090#1072
            DataBinding.FieldName = 'num_cycle'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1sum_dohod: TcxGridDBBandedColumn
            Caption = #1044#1086#1093#1086#1076
            DataBinding.FieldName = 'sum_dohod'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1sum_rashod: TcxGridDBBandedColumn
            Caption = #1056#1072#1089#1093#1086#1076
            DataBinding.FieldName = 'sum_rashod'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Width = 84
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1sum_delta: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1073#1099#1083#1100
            DataBinding.FieldName = 'sum_delta'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Styles.Content = fmMain.cxStyle_Docs_Status
            Width = 92
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
        end
        object cxGrid4Level1: TcxGridLevel
          GridView = cxGrid4DBBandedTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1057#1055#1057
      ImageIndex = 2
      object Splitter3: TSplitter
        Left = 0
        Top = 391
        Width = 1128
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = 8421631
        ParentColor = False
        ExplicitTop = 345
      end
      object cxDBPivotGrid1: TcxDBPivotGrid
        Left = 0
        Top = 0
        Width = 1128
        Height = 391
        Align = alClient
        DataSource = DS_Vagon
        Groups = <>
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        OptionsView.ColumnGrandTotalText = #1048#1090#1086#1075#1086
        OptionsView.ColumnGrandTotalWidth = 88
        OptionsView.RowGrandTotalText = #1042#1089#1077#1075#1086':  '
        OptionsView.RowGrandTotalWidth = 88
        PopupMenu = Popup_Vagon
        TabOrder = 0
        object cxDBPivotGrid1vagon_id: TcxDBPivotGridField
          AreaIndex = 0
          DataBinding.FieldName = 'vagon_id'
          UniqueName = 'vagon_id'
        end
        object cxDBPivotGrid1num_vagon: TcxDBPivotGridField
          AreaIndex = 1
          IsCaptionAssigned = True
          Caption = #8470' '#1074#1072#1075#1086#1085#1072
          DataBinding.FieldName = 'num_vagon'
          Visible = True
          UniqueName = #8470' '#1074#1072#1075#1086#1085#1072
        end
        object cxDBPivotGrid1date_build: TcxDBPivotGridField
          AreaIndex = 2
          IsCaptionAssigned = True
          Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1088#1086#1081#1082#1080
          DataBinding.FieldName = 'date_build'
          Visible = True
          UniqueName = #1044#1072#1090#1072' '#1087#1086#1089#1090#1088#1086#1081#1082#1080
        end
        object cxDBPivotGrid1date_remove: TcxDBPivotGridField
          AreaIndex = 3
          IsCaptionAssigned = True
          Caption = #1044#1072#1090#1072' '#1089#1087#1080#1089#1072#1085#1080#1103
          DataBinding.FieldName = 'date_remove'
          Visible = True
          UniqueName = #1044#1072#1090#1072' '#1089#1087#1080#1089#1072#1085#1080#1103
        end
        object cxDBPivotGrid1model_name: TcxDBPivotGridField
          AreaIndex = 4
          IsCaptionAssigned = True
          Caption = #1052#1086#1076#1077#1083#1100
          DataBinding.FieldName = 'model_name'
          Visible = True
          UniqueName = #1052#1086#1076#1077#1083#1100
        end
        object cxDBPivotGrid1comments: TcxDBPivotGridField
          AreaIndex = 5
          DataBinding.FieldName = 'comments'
          UniqueName = 'comments'
        end
        object cxDBPivotGrid1rod_vagon_name: TcxDBPivotGridField
          AreaIndex = 6
          IsCaptionAssigned = True
          Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
          DataBinding.FieldName = 'rod_vagon_name'
          Visible = True
          UniqueName = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
        end
        object cxDBPivotGrid1factory_cod: TcxDBPivotGridField
          AreaIndex = 7
          DataBinding.FieldName = 'factory_cod'
          UniqueName = 'factory_cod'
        end
        object cxDBPivotGrid1factory_name: TcxDBPivotGridField
          AreaIndex = 8
          IsCaptionAssigned = True
          Caption = #1047#1072#1074#1086#1076
          DataBinding.FieldName = 'factory_name'
          Visible = True
          UniqueName = #1047#1072#1074#1086#1076
        end
        object cxDBPivotGrid1FIO_users: TcxDBPivotGridField
          AreaIndex = 9
          IsCaptionAssigned = True
          Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
          DataBinding.FieldName = 'FIO_users'
          Visible = True
          UniqueName = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
        end
        object cxDBPivotGrid1global_color: TcxDBPivotGridField
          AreaIndex = 10
          IsCaptionAssigned = True
          Caption = #1062#1074#1077#1090
          DataBinding.FieldName = 'global_color'
          Visible = True
          UniqueName = #1062#1074#1077#1090
        end
        object cxDBPivotGrid1date_begin: TcxDBPivotGridField
          AreaIndex = 11
          IsCaptionAssigned = True
          Caption = #1053#1072#1095#1072#1083#1086
          DataBinding.FieldName = 'date_begin'
          Visible = True
          UniqueName = #1053#1072#1095#1072#1083#1086
        end
        object cxDBPivotGrid1date_end: TcxDBPivotGridField
          AreaIndex = 12
          IsCaptionAssigned = True
          Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'date_end'
          Visible = True
          UniqueName = #1054#1082#1086#1085#1095#1072#1085#1080#1077
        end
        object cxDBPivotGrid1node_registration_name: TcxDBPivotGridField
          AreaIndex = 13
          IsCaptionAssigned = True
          Caption = #1057#1090#1072#1085#1094#1080#1103' '#1087#1088#1080#1087#1080#1089#1082#1080
          DataBinding.FieldName = 'node_registration_name'
          Visible = True
          UniqueName = #1057#1090#1072#1085#1094#1080#1103' '#1087#1088#1080#1087#1080#1089#1082#1080
        end
        object cxDBPivotGrid1capacity: TcxDBPivotGridField
          AreaIndex = 14
          IsCaptionAssigned = True
          Caption = #1043'/'#1087
          DataBinding.FieldName = 'capacity'
          Visible = True
          UniqueName = #1043'/'#1087
        end
        object cxDBPivotGrid1year_build: TcxDBPivotGridField
          AreaIndex = 15
          IsCaptionAssigned = True
          Caption = #1043#1086#1076' '#1085#1072#1095'. '#1074#1099#1087#1091#1089#1082#1072' '#1084#1086#1076#1077#1083#1080
          DataBinding.FieldName = 'year_build'
          Visible = True
          UniqueName = #1043#1086#1076' '#1085#1072#1095'. '#1074#1099#1087#1091#1089#1082#1072' '#1084#1086#1076#1077#1083#1080
        end
        object cxDBPivotGrid1year_end: TcxDBPivotGridField
          AreaIndex = 16
          IsCaptionAssigned = True
          Caption = #1043#1086#1076' '#1086#1082#1086#1085#1095'. '#1074#1099#1087#1091#1089#1082#1072' '#1084#1086#1076#1077#1083#1080
          DataBinding.FieldName = 'year_end'
          Visible = True
          UniqueName = #1043#1086#1076' '#1086#1082#1086#1085#1095'. '#1074#1099#1087#1091#1089#1082#1072' '#1084#1086#1076#1077#1083#1080
        end
        object cxDBPivotGrid1next_date_repair: TcxDBPivotGridField
          AreaIndex = 17
          IsCaptionAssigned = True
          Caption = #1044#1072#1090#1072' '#1089#1083#1077#1076#1091#1102#1097#1077#1075#1086' '#1088#1077#1084#1086#1085#1090#1072
          DataBinding.FieldName = 'next_date_repair'
          Visible = True
          UniqueName = #1044#1072#1090#1072' '#1089#1083#1077#1076#1091#1102#1097#1077#1075#1086' '#1088#1077#1084#1086#1085#1090#1072
        end
        object cxDBPivotGrid1type_park: TcxDBPivotGridField
          AreaIndex = 18
          DataBinding.FieldName = 'type_park'
          UniqueName = 'type_park'
        end
        object cxDBPivotGrid1owner_name: TcxDBPivotGridField
          Area = faRow
          AreaIndex = 0
          IsCaptionAssigned = True
          Caption = #1042#1083#1072#1076#1077#1083#1077#1094
          DataBinding.FieldName = 'owner_name'
          Visible = True
          UniqueName = #1042#1083#1072#1076#1077#1083#1077#1094
        end
        object cxDBPivotGrid1type_park_name: TcxDBPivotGridField
          Area = faColumn
          AreaIndex = 0
          IsCaptionAssigned = True
          Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
          DataBinding.FieldName = 'type_park_name'
          Visible = True
          UniqueName = #1058#1080#1087' '#1087#1072#1088#1082#1072
        end
        object cxDBPivotGrid1Field1: TcxDBPivotGridField
          Area = faData
          AreaIndex = 0
          IsCaptionAssigned = True
          Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074
          SummaryType = stCount
          Visible = True
          UniqueName = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 394
        Width = 1128
        Height = 200
        Align = alBottom
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = Popup_DrillDown
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DS_DrillDownRoad
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #1050#1086#1083'-'#1074#1086': 0'
              Kind = skCount
              Column = cxGrid2DBBandedTableView1num_vagon
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.BandHeaders = False
          Bands = <
            item
            end>
          object cxGrid2DBBandedTableView1vagon_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'vagon_id'
            DataBinding.IsNullValueType = True
            Width = 53
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1num_vagon: TcxGridDBBandedColumn
            DataBinding.FieldName = #8470' '#1074#1072#1075#1086#1085#1072
            DataBinding.IsNullValueType = True
            Styles.Content = fmMain.cxStyle_Bold
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1date_build: TcxGridDBBandedColumn
            DataBinding.FieldName = #1044#1072#1090#1072' '#1087#1086#1089#1090#1088#1086#1081#1082#1080
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1date_remove: TcxGridDBBandedColumn
            DataBinding.FieldName = #1044#1072#1090#1072' '#1089#1087#1080#1089#1072#1085#1080#1103
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1model_name: TcxGridDBBandedColumn
            DataBinding.FieldName = #1052#1086#1076#1077#1083#1100
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1comments: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            DataBinding.FieldName = 'comments'
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1rod_vagon_cod: TcxGridDBBandedColumn
            DataBinding.FieldName = 'rod_vagon_cod'
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid2DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn
            DataBinding.FieldName = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1factory_cod: TcxGridDBBandedColumn
            Caption = #1047#1072#1074#1086#1076' ('#1050#1086#1076')'
            DataBinding.FieldName = 'factory_cod'
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1factory_name: TcxGridDBBandedColumn
            DataBinding.FieldName = #1047#1072#1074#1086#1076
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1FIO_users: TcxGridDBBandedColumn
            DataBinding.FieldName = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1users_group_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'users_group_id'
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid2DBBandedTableView1global_color: TcxGridDBBandedColumn
            DataBinding.FieldName = #1062#1074#1077#1090
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1date_begin: TcxGridDBBandedColumn
            DataBinding.FieldName = #1053#1072#1095#1072#1083#1086
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1date_end: TcxGridDBBandedColumn
            DataBinding.FieldName = #1054#1082#1086#1085#1095#1072#1085#1080#1077
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1node_registration_name: TcxGridDBBandedColumn
            DataBinding.FieldName = #1057#1090#1072#1085#1094#1080#1103' '#1087#1088#1080#1087#1080#1089#1082#1080
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1capacity: TcxGridDBBandedColumn
            DataBinding.FieldName = #1043'/'#1087
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1year_build: TcxGridDBBandedColumn
            DataBinding.FieldName = #1043#1086#1076' '#1085#1072#1095'. '#1074#1099#1087#1091#1089#1082#1072' '#1084#1086#1076#1077#1083#1080
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1year_end: TcxGridDBBandedColumn
            DataBinding.FieldName = #1043#1086#1076' '#1086#1082#1086#1085#1095'. '#1074#1099#1087#1091#1089#1082#1072' '#1084#1086#1076#1077#1083#1080
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1next_date_repair: TcxGridDBBandedColumn
            DataBinding.FieldName = #1044#1072#1090#1072' '#1089#1083#1077#1076#1091#1102#1097#1077#1075#1086' '#1088#1077#1084#1086#1085#1090#1072
            DataBinding.IsNullValueType = True
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1type_park: TcxGridDBBandedColumn
            DataBinding.FieldName = 'type_park'
            DataBinding.IsNullValueType = True
            Width = 66
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid2DBBandedTableView1owner_name: TcxGridDBBandedColumn
            DataBinding.FieldName = #1042#1083#1072#1076#1077#1083#1077#1094
            DataBinding.IsNullValueType = True
            Width = 102
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1type_park_name: TcxGridDBBandedColumn
            DataBinding.FieldName = #1058#1080#1087' '#1087#1072#1088#1082#1072
            DataBinding.IsNullValueType = True
            Width = 91
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBBandedTableView1
        end
      end
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
      end>
    StorageName = '\Software\Lis1\VagonProfit'
    StorageType = stRegistry
    Left = 331
    Top = 100
  end
  object DS_VagonProfit: TDataSource
    DataSet = ClientDS
    Left = 280
    Top = 132
  end
  object dxBarManager1: TdxBarManager
    Tag = 555
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
    Left = 343
    Top = 123
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
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          BeginGroup = True
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
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end>
      OldName = #1052#1077#1085#1102
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton9: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1072#1075#1086#1085#1099'...'
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1072#1075#1086#1085#1099
      Visible = ivAlways
      ImageIndex = 105
      OnClick = dxBarButton9Click
    end
    object dxBarButton8: TdxBarButton
      Caption = #1059#1073#1088#1072#1090#1100' '#1074#1072#1075#1086#1085
      Category = 0
      Hint = #1059#1073#1088#1072#1090#1100' '#1074#1072#1075#1086#1085
      Visible = ivAlways
      ImageIndex = 106
      OnClick = dxBarButton8Click
    end
    object dxBarButton23: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 5
      ShortCut = 116
    end
    object dxBarButton5: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 6
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = '00.00.0000'
      Category = 0
      Style = fmMain.cxStyle_Bold
      Visible = ivAlways
      ImageIndex = 7
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
    end
    object dxBarButton2: TdxBarButton
      Tag = 3
      Caption = #1055#1077#1088#1080#1086#1076'...'
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton2Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton1Click
    end
    object dxBarSubItem5: TdxBarSubItem
      Tag = 10
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton_FilterRecords1'
        end>
    end
    object dxBarButton16: TdxBarButton
      Caption = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080' ...'
      Category = 0
      Hint = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080' '
      Visible = ivAlways
      ImageIndex = 11
    end
    object dxBarButton17: TdxBarButton
      Tag = 1
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1094#1074#1077#1090
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1094#1074#1077#1090
      Visible = ivAlways
    end
    object dxBarButton18: TdxBarButton
      Tag = 1
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = MenuItem10Click
    end
    object dxBarButton19: TdxBarButton
      Tag = 1
      Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1082#1086#1083#1086#1085#1086#1082
      Category = 0
      Hint = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1082#1086#1083#1086#1085#1086#1082
      Visible = ivAlways
      ImageIndex = 13
    end
    object dxBarButton1: TdxBarButton
      Tag = 1
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton1Click
    end
    object dxBarButton_FilterRecords1: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton_FilterRecords1Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1060#1088#1072#1093#1090#1086#1074#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072
      Category = 0
      Hint = #1060#1088#1072#1093#1090#1086#1074#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072
      Visible = ivAlways
      ImageIndex = 10
      OnClick = dxBarButton3Click
    end
    object dxBarButton7: TdxBarButton
      Caption = #1055#1077#1088#1077#1074#1086#1079#1082#1072
      Category = 0
      Hint = #1055#1077#1088#1077#1074#1086#1079#1082#1072
      Visible = ivAlways
      ImageIndex = 22
      OnClick = dxBarButton7Click
    end
    object dxBarButton4: TdxBarButton
      Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074
      Category = 0
      Hint = #1059#1085#1080#1082#1072#1083#1100#1085#1086#1077' '#1082#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074
      Visible = ivAlways
      ImageIndex = 118
      OnClick = dxBarButton4Click
    end
    object dxBarButton10: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Tag = 2
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 164
      OnClick = dxBarButton12Click
    end
    object dxBarButton12: TdxBarButton
      Tag = 1
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 165
      OnClick = dxBarButton12Click
    end
  end
  object dxBarPopupMenu_VagonProfit: TdxBarPopupMenu
    Tag = 10
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem5'
      end>
    UseOwnFont = False
    Left = 274
    Top = 165
    PixelsPerInch = 96
  end
  object SP_VagonProfit: TADOStoredProc
    Connection = fmMain.Lis
    CommandTimeout = 300
    ProcedureName = 'sp_vagon_profit_get'
    Parameters = <>
    Left = 21
    Top = 96
  end
  object ClientDS: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 261
    Top = 114
    object ClientDSnum_vagon: TIntegerField
      FieldName = 'num_vagon'
    end
    object ClientDSfact_id: TIntegerField
      FieldName = 'fact_id'
    end
    object ClientDSbargain_id: TIntegerField
      FieldName = 'bargain_id'
    end
    object ClientDSbargain_cod: TStringField
      FieldName = 'bargain_cod'
      Size = 50
    end
    object ClientDSkargoETSNG_cod: TStringField
      FieldName = 'kargoETSNG_cod'
    end
    object ClientDSkargoETSNG_name: TStringField
      FieldName = 'kargoETSNG_name'
      Size = 800
    end
    object ClientDSdate_from_to: TDateField
      FieldName = 'date_from_to'
    end
    object ClientDSdatpr: TDateField
      FieldName = 'datpr'
    end
    object ClientDSfact_weight: TCurrencyField
      FieldName = 'fact_weight'
    end
    object ClientDSnode_begin_name: TStringField
      FieldName = 'node_begin_name'
    end
    object ClientDSnode_end_name: TStringField
      FieldName = 'node_end_name'
    end
    object ClientDSfirm_customer_name: TStringField
      FieldName = 'firm_customer_name'
      Size = 200
    end
    object ClientDSnum_cycle: TIntegerField
      FieldName = 'num_cycle'
    end
    object ClientDSsum_dohod: TCurrencyField
      FieldName = 'sum_dohod'
    end
    object ClientDSsum_rashod: TCurrencyField
      FieldName = 'sum_rashod'
    end
    object ClientDSsum_delta: TCurrencyField
      FieldName = 'sum_delta'
    end
  end
  object ClientDS_Cycle: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 48
    Top = 123
    object ClientDS_CycleField1: TIntegerField
      FieldName = 'num_vagon'
    end
    object ClientDS_CycleField7: TStringField
      FieldName = 'kargoETSNG_name'
      Size = 800
    end
    object ClientDS_Cyclenode_begin_name: TStringField
      FieldName = 'node_begin_name'
    end
    object ClientDS_Cyclenode_end_name: TStringField
      FieldName = 'node_end_name'
    end
    object ClientDS_CycleField8: TDateField
      FieldName = 'date_from_to'
    end
    object ClientDS_CycleField9: TDateField
      FieldName = 'datpr'
    end
    object ClientDS_CycleField10: TCurrencyField
      FieldName = 'fact_weight'
    end
    object ClientDS_CycleField6: TStringField
      FieldName = 'firm_customer_name'
      Size = 200
    end
    object ClientDS_CycleField4: TIntegerField
      FieldName = 'num_cycle'
    end
    object ClientDS_CycleField2: TCurrencyField
      FieldName = 'sum_dohod'
    end
    object ClientDS_CycleField3: TCurrencyField
      FieldName = 'sum_rashod'
    end
    object ClientDS_CycleField5: TCurrencyField
      FieldName = 'sum_delta'
    end
  end
  object DS_Cycle: TDataSource
    DataSet = ClientDS_Cycle
    Left = 70
    Top = 144
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem5'
      end>
    UseOwnFont = False
    Left = 63
    Top = 210
    PixelsPerInch = 96
  end
  object Query_Vagon: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    CommandTimeout = 60
    Parameters = <
      item
        Name = 'users_group_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 158706
      end>
    SQL.Strings = (
      'SELECT  vw.*,'
      'dbo.func_GetVagonOwner(vw.vagon_id, getdate()) AS owner_name,'
      
        'CASE type_park WHEN 1 THEN '#39#1057#1086#1073#1089#1090#1074#1077#1085#1085#1099#1081#39' WHEN 2 THEN '#39#1055#1088#1080#1074#1083#1077#1095#1105#1085#1085 +
        #1099#1081#39' WHEN 3 THEN '#39#1055#1088#1086#1095#1080#1081'\'#1056#1077#1084#1086#1085#1090#39' END AS type_park_name'
      'FROM view_vagon vw WITH (NOLOCK)'
      'WHERE  (users_group_id =:users_group_id)'
      
        'AND (getdate() BETWEEN ISNULL(date_begin, getdate()-1 ) AND ISNU' +
        'LL(date_end, getdate()+1 ) )'
      ''
      '')
    Left = 453
    Top = 111
  end
  object DS_Vagon: TDataSource
    DataSet = Query_Vagon
    Left = 473
    Top = 124
  end
  object Popup_Vagon: TdxBarPopupMenu
    Tag = 3
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end>
    UseOwnFont = False
    Left = 495
    Top = 192
    PixelsPerInch = 96
  end
  object cxPivotGridDrillDownDataSet2: TcxPivotGridDrillDownDataSet
    PivotGrid = cxDBPivotGrid1
    SynchronizeData = True
    Left = 399
    Top = 408
  end
  object DS_DrillDownRoad: TDataSource
    DataSet = cxPivotGridDrillDownDataSet2
    Left = 426
    Top = 426
  end
  object Popup_DrillDown: TdxBarPopupMenu
    Tag = 6
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end>
    UseOwnFont = False
    Left = 429
    Top = 462
    PixelsPerInch = 96
  end
end
