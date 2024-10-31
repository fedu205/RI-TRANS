object fmEDO_VRK: TfmEDO_VRK
  Left = 0
  Top = 0
  Caption = 'fmEDO_VRK'
  ClientHeight = 656
  ClientWidth = 1258
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 17
  object Splitter1: TSplitter
    Left = 0
    Top = 360
    Width = 1258
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 366
    Width = 1258
    Height = 290
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    TabOrder = 0
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    OnChange = cxPageControl1Change
    ClientRectBottom = 290
    ClientRectRight = 1258
    ClientRectTop = 29
    object cxTabSheet1: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1044#1086#1075#1086#1074#1086#1088
      ImageIndex = 0
      ExplicitLeft = 5
      ExplicitTop = 30
      ExplicitWidth = 1248
      ExplicitHeight = 255
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1258
        Height = 260
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu8
          OnKeyPress = cxGrid1DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGridDBBandedTableView1FilterOnChanged
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NavigatorOffset = 63
          OptionsView.FixedColumnSeparatorWidth = 3
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.IndicatorWidth = 15
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 3
          Preview.LeftIndent = 25
          Preview.RightIndent = 6
          RowLayout.MinValueWidth = 100
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid3DBBandedTableView1contract_date: TcxGridDBBandedColumn
            Caption = #1044#1086#1075#1086#1074#1086#1088#1054#1090
            DataBinding.FieldName = 'contract_date'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1contract_cod: TcxGridDBBandedColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'contract_cod'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1contract_begin: TcxGridDBBandedColumn
            Caption = #1053#1072#1095#1072#1083#1086#1044#1077#1081#1089#1090#1074#1080#1103
            DataBinding.FieldName = 'contract_begin'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1contract_num: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088
            DataBinding.FieldName = 'contract_num'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1contract_end: TcxGridDBBandedColumn
            Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077#1044#1077#1081#1089#1090#1074#1080#1103
            DataBinding.FieldName = 'contract_end'
            MinWidth = 25
            Width = 111
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1contract_self_cod: TcxGridDBBandedColumn
            Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1050#1086#1076
            DataBinding.FieldName = 'contract_self_cod'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBBandedTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1056#1044#1042
      ImageIndex = 2
      ExplicitLeft = 5
      ExplicitTop = 30
      ExplicitWidth = 1248
      ExplicitHeight = 255
      object Splitter2: TSplitter
        Left = 744
        Top = 0
        Width = 6
        Height = 260
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alRight
        Color = 8421631
        ParentColor = False
      end
      object cxGrid8: TcxGrid
        Left = 0
        Top = 0
        Width = 744
        Height = 260
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid8DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu7
          OnKeyPress = cxGrid1DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGridDBBandedTableView7FilterOnChanged
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NavigatorOffset = 63
          OptionsView.FixedColumnSeparatorWidth = 3
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.IndicatorWidth = 15
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 3
          Preview.LeftIndent = 25
          Preview.RightIndent = 6
          RowLayout.MinValueWidth = 100
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid3DBBandedTableView1rdv_work_cod: TcxGridDBBandedColumn
            Caption = #1056#1072#1073#1086#1090#1072#1050#1086#1076
            DataBinding.FieldName = 'rdv_work_cod'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1rdv_detail_group: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1087#1087#1072#1044#1077#1090#1072#1083#1080
            DataBinding.FieldName = 'rdv_detail_group'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1rdv_cdo_type: TcxGridDBBandedColumn
            Caption = #1050#1086#1076#1055#1088#1086#1090#1086#1090#1080#1087#1072
            DataBinding.FieldName = 'rdv_cdo_type'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1rdv_datail_works: TcxGridDBBandedColumn
            Caption = #1044#1077#1090#1072#1083#1100#1047#1072#1074#1086#1076
            DataBinding.FieldName = 'rdv_datail_works'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1rdv_datail_num: TcxGridDBBandedColumn
            Caption = #1044#1077#1090#1072#1083#1100#1053#1086#1084#1077#1088
            DataBinding.FieldName = 'rdv_datail_num'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1rdv_datail_year: TcxGridDBBandedColumn
            Caption = #1044#1077#1090#1072#1083#1100#1043#1086#1076
            DataBinding.FieldName = 'rdv_datail_year'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1rdv_count: TcxGridDBBandedColumn
            Caption = #1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'rdv_count'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1rdv_name: TcxGridDBBandedColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'rdv_name'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1rdv_sum_not_nds: TcxGridDBBandedColumn
            Caption = #1062#1077#1085#1072#1041#1077#1079#1053#1044#1057
            DataBinding.FieldName = 'rdv_sum_not_nds'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
        object cxGrid8Level1: TcxGridLevel
          GridView = cxGrid8DBBandedTableView1
        end
      end
      object Panel1: TPanel
        Left = 750
        Top = 0
        Width = 508
        Height = 260
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alRight
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 1
        object cxGrid10: TcxGrid
          Left = 0
          Top = 0
          Width = 508
          Height = 260
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGrid10DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu2
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
            OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGridDBBandedTableView9FilterOnChanged
            DataController.Filter.Active = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid3DBBandedTableView1rdv_d_sum_not_nds
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            FilterRow.SeparatorWidth = 8
            FixedDataRows.SeparatorWidth = 8
            NewItemRow.SeparatorWidth = 8
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.NavigatorOffset = 63
            OptionsView.FixedColumnSeparatorWidth = 3
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.IndicatorWidth = 15
            OptionsView.BandHeaders = False
            OptionsView.FixedBandSeparatorWidth = 3
            Preview.LeftIndent = 25
            Preview.RightIndent = 6
            RowLayout.MinValueWidth = 100
            OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
            Bands = <
              item
              end>
            object cxGrid3DBBandedTableView1rdv_d_cod: TcxGridDBBandedColumn
              Caption = #1050#1086#1076
              DataBinding.FieldName = 'rdv_d_cod'
              MinWidth = 25
              Width = 110
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1rdv_d_sum_not_nds: TcxGridDBBandedColumn
              Caption = #1062#1077#1085#1072#1041#1077#1079#1053#1044#1057
              DataBinding.FieldName = 'rdv_d_sum_not_nds'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              MinWidth = 25
              Width = 119
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1rdv_d_count: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'rdv_d_count'
              MinWidth = 25
              Width = 88
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1rdv_d_owner: TcxGridDBBandedColumn
              Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
              DataBinding.FieldName = 'rdv_d_owner'
              MinWidth = 25
              Width = 88
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
          object cxGrid10Level1: TcxGridLevel
            GridView = cxGrid10DBBandedTableView1
          end
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1040#1082#1090#1042#1099#1073#1088#1072#1082#1086#1074#1082#1080
      ImageIndex = 3
      ExplicitLeft = 5
      ExplicitTop = 30
      ExplicitWidth = 1248
      ExplicitHeight = 255
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1258
        Height = 260
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu6
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGridDBBandedTableView2FilterOnChanged
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NavigatorOffset = 63
          OptionsView.FixedColumnSeparatorWidth = 3
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.IndicatorWidth = 15
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 3
          Preview.LeftIndent = 25
          Preview.RightIndent = 6
          RowLayout.MinValueWidth = 100
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid3DBBandedTableView1act_date: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'act_date'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1act_work_cod: TcxGridDBBandedColumn
            Caption = #1056#1072#1073#1086#1090#1072#1054#1089#1085#1086#1074#1072#1085#1080#1077#1050#1086#1076
            DataBinding.FieldName = 'act_work_cod'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1detail_cod: TcxGridDBBandedColumn
            Caption = #1050#1086#1076#1044#1077#1090#1072#1083#1080
            DataBinding.FieldName = 'detail_cod'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1remove_works: TcxGridDBBandedColumn
            Caption = #1057#1085#1103#1090#1072#1047#1072#1074#1086#1076
            DataBinding.FieldName = 'remove_works'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1remove_num: TcxGridDBBandedColumn
            Caption = #1057#1085#1103#1090#1072#1053#1086#1084#1077#1088
            DataBinding.FieldName = 'remove_num'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1remove_year: TcxGridDBBandedColumn
            Caption = #1057#1085#1103#1090#1072#1043#1086#1076
            DataBinding.FieldName = 'remove_year'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1set_works: TcxGridDBBandedColumn
            Caption = #1059#1089#1090#1072#1085#1072#1074#1083#1077#1085#1072#1047#1072#1074#1086#1076
            DataBinding.FieldName = 'set_works'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1set_num: TcxGridDBBandedColumn
            Caption = #1059#1089#1090#1072#1085#1072#1074#1083#1077#1085#1072#1053#1086#1084#1077#1088
            DataBinding.FieldName = 'set_num'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1set_year: TcxGridDBBandedColumn
            Caption = #1059#1089#1090#1072#1085#1072#1074#1083#1077#1085#1072#1043#1086#1076
            DataBinding.FieldName = 'set_year'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1comment: TcxGridDBBandedColumn
            Caption = #1055#1088#1080#1095#1080#1085#1072
            DataBinding.FieldName = 'comment'
            MinWidth = 25
            Width = 88
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
    object cxTabSheet5: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1042#1059'36'#1052
      ImageIndex = 4
      ExplicitLeft = 5
      ExplicitTop = 30
      ExplicitWidth = 1248
      ExplicitHeight = 255
      object cxGrid9: TcxGrid
        Left = 0
        Top = 0
        Width = 1258
        Height = 260
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid9DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu5
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGridDBBandedTableView8FilterOnChanged
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NavigatorOffset = 63
          OptionsView.FixedColumnSeparatorWidth = 3
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.IndicatorWidth = 15
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 3
          Preview.LeftIndent = 25
          Preview.RightIndent = 6
          RowLayout.MinValueWidth = 100
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid3DBBandedTableView1vu36_num: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088
            DataBinding.FieldName = 'vu36_num'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1vu36_cod1: TcxGridDBBandedColumn
            Caption = #1050#1086#1076'1'
            DataBinding.FieldName = 'vu36_cod1'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1vu36_cod2: TcxGridDBBandedColumn
            Caption = #1050#1086#1076'2'
            DataBinding.FieldName = 'vu36_cod2'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1vu36_cod3: TcxGridDBBandedColumn
            Caption = #1050#1086#1076'3'
            DataBinding.FieldName = 'vu36_cod3'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1vu36_cod4: TcxGridDBBandedColumn
            Caption = #1050#1086#1076'4'
            DataBinding.FieldName = 'vu36_cod4'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1vu36_cod5: TcxGridDBBandedColumn
            Caption = #1050#1086#1076'5'
            DataBinding.FieldName = 'vu36_cod5'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1vu36_cod6: TcxGridDBBandedColumn
            Caption = #1050#1086#1076'6'
            DataBinding.FieldName = 'vu36_cod6'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
        object cxGrid9Level1: TcxGridLevel
          GridView = cxGrid9DBBandedTableView1
        end
      end
    end
    object cxTabSheet6: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1052#1061'1'
      ImageIndex = 5
      ExplicitLeft = 5
      ExplicitTop = 30
      ExplicitWidth = 1248
      ExplicitHeight = 255
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 1258
        Height = 260
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid4DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu4
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_EDO_vrk_get
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGridDBBandedTableView3FilterOnChanged
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NavigatorOffset = 63
          OptionsView.FixedColumnSeparatorWidth = 3
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.IndicatorWidth = 15
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 3
          Preview.LeftIndent = 25
          Preview.RightIndent = 6
          RowLayout.MinValueWidth = 100
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid3DBBandedTableView1mx1_num: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088
            DataBinding.FieldName = 'mx1_num'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx1_name: TcxGridDBBandedColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'mx1_name'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx1_weigth: TcxGridDBBandedColumn
            Caption = #1042#1077#1089
            DataBinding.FieldName = 'mx1_weigth'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx1_type: TcxGridDBBandedColumn
            Caption = #1042#1080#1076
            DataBinding.FieldName = 'mx1_type'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx1_detail_works: TcxGridDBBandedColumn
            Caption = #1044#1077#1090#1072#1083#1100#1047#1072#1074#1086#1076
            DataBinding.FieldName = 'mx1_detail_works'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx1_detail_num: TcxGridDBBandedColumn
            Caption = #1044#1077#1090#1072#1083#1100#1053#1086#1084#1077#1088
            DataBinding.FieldName = 'mx1_detail_num'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx1_detail_year: TcxGridDBBandedColumn
            Caption = #1044#1077#1090#1072#1083#1100#1043#1086#1076
            DataBinding.FieldName = 'mx1_detail_year'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx1_work_cod: TcxGridDBBandedColumn
            Caption = #1056#1072#1073#1086#1090#1072#1054#1089#1085#1086#1074#1072#1085#1080#1077#1050#1086#1076
            DataBinding.FieldName = 'mx1_work_cod'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx1_type_metal: TcxGridDBBandedColumn
            Caption = #1058#1080#1087#1052#1077#1090#1072#1083#1083#1072
            DataBinding.FieldName = 'mx1_type_metal'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx1_detail_group: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1087#1087#1072#1044#1077#1090#1072#1083#1080
            DataBinding.FieldName = 'mx1_detail_group'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx1_cod_type: TcxGridDBBandedColumn
            Caption = #1050#1086#1076#1055#1088#1086#1090#1086#1090#1080#1087#1072
            DataBinding.FieldName = 'mx1_cod_type'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx1_count: TcxGridDBBandedColumn
            Caption = #1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'mx1_count'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx1_price: TcxGridDBBandedColumn
            Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            DataBinding.FieldName = 'mx1_price'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object cxGrid4Level1: TcxGridLevel
          GridView = cxGrid4DBBandedTableView1
        end
      end
    end
    object cxTabSheet7: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1052#1061'3'
      ImageIndex = 6
      ExplicitLeft = 5
      ExplicitTop = 30
      ExplicitWidth = 1248
      ExplicitHeight = 255
      object cxGrid5: TcxGrid
        Left = 0
        Top = 0
        Width = 1258
        Height = 260
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid5DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu3
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGridDBBandedTableView4FilterOnChanged
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NavigatorOffset = 63
          OptionsView.FixedColumnSeparatorWidth = 3
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.IndicatorWidth = 15
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 3
          Preview.LeftIndent = 25
          Preview.RightIndent = 6
          RowLayout.MinValueWidth = 100
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid3DBBandedTableView1mx3_num: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088
            DataBinding.FieldName = 'mx3_num'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_name: TcxGridDBBandedColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'mx3_name'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_weigth: TcxGridDBBandedColumn
            Caption = #1042#1077#1089
            DataBinding.FieldName = 'mx3_weigth'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_type: TcxGridDBBandedColumn
            Caption = #1042#1080#1076
            DataBinding.FieldName = 'mx3_type'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_detail_works: TcxGridDBBandedColumn
            Caption = #1044#1077#1090#1072#1083#1100#1047#1072#1074#1086#1076
            DataBinding.FieldName = 'mx3_detail_works'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_detail_num: TcxGridDBBandedColumn
            Caption = #1044#1077#1090#1072#1083#1100#1053#1086#1084#1077#1088
            DataBinding.FieldName = 'mx3_detail_num'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_detail_year: TcxGridDBBandedColumn
            Caption = #1044#1077#1090#1072#1083#1100#1043#1086#1076
            DataBinding.FieldName = 'mx3_detail_year'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_work_cod: TcxGridDBBandedColumn
            Caption = #1056#1072#1073#1086#1090#1072#1054#1089#1085#1086#1074#1072#1085#1080#1077#1050#1086#1076
            DataBinding.FieldName = 'mx3_work_cod'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_detail_group: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1087#1087#1072#1044#1077#1090#1072#1083#1080
            DataBinding.FieldName = 'mx3_detail_group'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_cod_type: TcxGridDBBandedColumn
            Caption = #1050#1086#1076#1055#1088#1086#1090#1086#1090#1080#1087#1072
            DataBinding.FieldName = 'mx3_cod_type'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_count: TcxGridDBBandedColumn
            Caption = #1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'mx3_count'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_price: TcxGridDBBandedColumn
            Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            DataBinding.FieldName = 'mx3_price'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_out_vagon: TcxGridDBBandedColumn
            Caption = #1057#1074#1072#1075#1086#1085#1072
            DataBinding.FieldName = 'mx3_out_vagon'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_remont_end: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072#1054#1082#1086#1085#1095#1072#1085#1080#1103#1056#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'mx3_remont_end'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1mx3_in_vagon: TcxGridDBBandedColumn
            Caption = #1053#1072#1042#1072#1075#1086#1085
            DataBinding.FieldName = 'mx3_in_vagon'
            MinWidth = 25
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
        end
        object cxGrid5Level1: TcxGridLevel
          GridView = cxGrid5DBBandedTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1057#1074#1086#1076
      ImageIndex = 6
      ExplicitLeft = 5
      ExplicitTop = 30
      ExplicitWidth = 1248
      ExplicitHeight = 255
      object cxGrid6: TcxGrid
        Left = 0
        Top = 0
        Width = 1258
        Height = 260
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid6DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu3
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGridDBBandedTableView4FilterOnChanged
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skCount
              Position = spFooter
              Column = cxGrid6DBBandedTableView1num_vagon
            end
            item
              Kind = skCount
              Column = cxGrid6DBBandedTableView1num_vagon
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGrid6DBBandedTableView1sum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid6DBBandedTableView1sum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGrid6DBBandedTableView1sum_nds
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid6DBBandedTableView1sum_nds
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGrid6DBBandedTableView1sum_total
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid6DBBandedTableView1sum_total
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGrid6DBBandedTableView1num_vagon
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid6DBBandedTableView1sum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid6DBBandedTableView1sum_nds
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid6DBBandedTableView1sum_total
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NavigatorOffset = 63
          OptionsView.FixedColumnSeparatorWidth = 3
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.IndicatorWidth = 15
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 3
          Preview.LeftIndent = 25
          Preview.RightIndent = 6
          RowLayout.MinValueWidth = 100
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid6DBBandedTableView1num_vagon: TcxGridDBBandedColumn
            Caption = #8470' '#1042#1072#1075#1086#1085#1072
            DataBinding.FieldName = 'num_vagon'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid6DBBandedTableView1primary_docs: TcxGridDBBandedColumn
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
            DataBinding.FieldName = 'primary_docs'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid6DBBandedTableView1service_name: TcxGridDBBandedColumn
            Caption = #1059#1089#1083#1091#1075#1072' '#1051#1048#1057
            DataBinding.FieldName = 'service_name'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid6DBBandedTableView1detail_name: TcxGridDBBandedColumn
            Caption = #1044#1077#1090#1072#1083#1100' '#1051#1048#1057
            DataBinding.FieldName = 'detail_name'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid6DBBandedTableView1quantity: TcxGridDBBandedColumn
            Caption = #1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'quantity'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid6DBBandedTableView1detail_num: TcxGridDBBandedColumn
            Caption = #8470' '#1044#1077#1090#1072#1083#1080
            DataBinding.FieldName = 'detail_num'
            MinWidth = 25
            Width = 145
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid6DBBandedTableView1sum: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072', '#1041#1077#1079' '#1053#1044#1057
            DataBinding.FieldName = 'sum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid6DBBandedTableView1sum_nds: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
            DataBinding.FieldName = 'sum_nds'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid6DBBandedTableView1sum_total: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1089' '#1053#1044#1057
            DataBinding.FieldName = 'sum_total'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid6DBBandedTableView1Column1: TcxGridDBBandedColumn
            Caption = #1044#1077#1090#1072#1083#1100' '#1042#1056#1050
            DataBinding.FieldName = 'vrk_detail_name'
            MinWidth = 25
            Width = 134
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGrid6DBBandedTableView1
        end
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 32
    Width = 1258
    Height = 328
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.ScrollbarMode = sbmClassic
    ExplicitTop = 33
    ExplicitHeight = 327
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      PopupMenu = dxBarPopupMenu1
      OnKeyPress = cxGrid1DBBandedTableView1KeyPress
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
      OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
      OnFocusedRecordChanged = cxGrid1DBBandedTableView1FocusedRecordChanged
      DataController.DataSource = DS_VRK
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
      DataController.Filter.Active = True
      DataController.KeyFieldNames = 'cod'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid3DBBandedTableView1num
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid3DBBandedTableView1nds
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid3DBBandedTableView1sum_cleaning
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid3DBBandedTableView1sum_not_nds
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1cost_all
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soMultipleSelectedRecords]
      FilterRow.SeparatorWidth = 8
      FixedDataRows.SeparatorWidth = 8
      NewItemRow.SeparatorWidth = 8
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.NavigatorOffset = 63
      OptionsView.FixedColumnSeparatorWidth = 3
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.HeaderHeight = 44
      OptionsView.IndicatorWidth = 15
      OptionsView.BandHeaders = False
      OptionsView.FixedBandSeparatorWidth = 3
      Preview.LeftIndent = 25
      Preview.RightIndent = 6
      RowLayout.MinValueWidth = 100
      OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
      OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
      Bands = <
        item
        end>
      object cxGrid3DBBandedTableView1cod: TcxGridDBBandedColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'cod'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1num: TcxGridDBBandedColumn
        Caption = #1053#1086#1084#1077#1088' '#1074#1072#1075#1086#1085#1072
        DataBinding.FieldName = 'num'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Styles.Content = cxStyle2
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1type_vagon: TcxGridDBBandedColumn
        Caption = #1058#1080#1087#1042#1072#1075#1086#1085#1072
        DataBinding.FieldName = 'type_vagon'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1create_year: TcxGridDBBandedColumn
        Caption = #1043#1086#1076#1042#1099#1087#1091#1089#1082#1072
        DataBinding.FieldName = 'create_year'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1date_system: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072#1042#1074#1086#1076#1072#1042#1089#1080#1089#1090#1077#1084#1091
        DataBinding.FieldName = 'date_system'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1for_repair: TcxGridDBBandedColumn
        Caption = #1048#1079#1053#1080#1093#1047#1072#1056#1077#1084#1086#1085#1090#1050#1055
        DataBinding.FieldName = 'for_repair'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1cod_depo: TcxGridDBBandedColumn
        Caption = #1050#1086#1076' '#1044#1077#1087#1086
        DataBinding.FieldName = 'cod_depo'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1act_num: TcxGridDBBandedColumn
        Caption = #1053#1086#1084#1077#1088#1040#1082#1090#1072#1042#1099#1087#1056#1072#1073#1086#1090
        DataBinding.FieldName = 'act_num'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1sf_num: TcxGridDBBandedColumn
        Caption = #1053#1086#1084#1077#1088' '#1057#1095#1105#1090'-'#1092#1072#1082#1090#1091#1088#1099
        DataBinding.FieldName = 'sf_num'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1sf_date: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1057#1095#1105#1090'-'#1092#1072#1082#1090#1091#1088#1099
        DataBinding.FieldName = 'sf_date'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1plan_date_begin: TcxGridDBBandedColumn
        Caption = #1055#1083#1072#1085#1086#1074#1086#1077#1053#1072#1095#1072#1083#1086#1056#1077#1084#1086#1085#1090#1072
        DataBinding.FieldName = 'plan_date_begin'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1plan_date_end: TcxGridDBBandedColumn
        Caption = #1055#1083#1072#1085#1086#1074#1086#1077#1054#1082#1086#1085#1095#1072#1085#1080#1077#1056#1077#1084#1086#1085#1090#1072
        DataBinding.FieldName = 'plan_date_end'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1fact_date_end: TcxGridDBBandedColumn
        Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1086#1077#1054#1082#1086#1085#1095#1072#1085#1080#1077#1056#1077#1084#1086#1085#1090#1072
        DataBinding.FieldName = 'fact_date_end'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1check: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1074#1077#1088#1082#1072
        DataBinding.FieldName = 'check1'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Styles.Content = cxStyle4
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1EDS: TcxGridDBBandedColumn
        Caption = #1069#1062#1055
        DataBinding.FieldName = 'EDS'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Styles.Content = cxStyle4
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1sum_not_nds: TcxGridDBBandedColumn
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1041#1077#1079' '#1053#1044#1057
        DataBinding.FieldName = 'sum_not_nds'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1sum_cleaning: TcxGridDBBandedColumn
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1059#1073#1086#1088#1082#1080
        DataBinding.FieldName = 'sum_cleaning'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1type_nds: TcxGridDBBandedColumn
        Caption = #1057#1090#1072#1074#1082#1072' '#1053#1044#1057
        DataBinding.FieldName = 'type_nds'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1nds: TcxGridDBBandedColumn
        Caption = #1053#1044#1057
        DataBinding.FieldName = 'nds'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1discount: TcxGridDBBandedColumn
        Caption = #1057#1082#1080#1076#1082#1072
        DataBinding.FieldName = 'discount'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1type_repair: TcxGridDBBandedColumn
        Caption = #1058#1080#1087#1056#1077#1084#1086#1085#1090#1072
        DataBinding.FieldName = 'type_repair'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object cxGrid3DBBandedTableView1type_delete: TcxGridDBBandedColumn
        Caption = #1059#1076#1072#1083#1077#1085
        DataBinding.FieldName = 'type_delete'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1EDO_docs_id: TcxGridDBBandedColumn
        Caption = #8470' '#1079#1072#1087#1080#1089#1080
        DataBinding.FieldName = 'EDO_docs_id'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1depo_name: TcxGridDBBandedColumn
        Caption = #1044#1077#1087#1086' ('#1051#1048#1057')'
        DataBinding.FieldName = 'depo_name'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1fact_repair_id: TcxGridDBBandedColumn
        Caption = #8470' '#1079#1072#1087#1080#1089#1080' ('#1050#1072#1088#1090#1086#1095#1082#1072' '#1088#1077#1084#1086#1085#1090#1072')'
        DataBinding.FieldName = 'fact_repair_id'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Styles.Content = cxStyle2
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn
        Caption = #8470' '#1047#1072#1087#1080#1089#1080' '#1076#1086#1075#1086#1074#1086#1088#1072'  ('#1051#1048#1057')'
        DataBinding.FieldName = 'contract_id'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn
        Caption = #8470' '#1044#1086#1075#1086#1074#1086#1088#1072'  ('#1051#1048#1057')'
        DataBinding.FieldName = 'contract_cod'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn
        Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'  ('#1051#1048#1057')'
        DataBinding.FieldName = 'firm_customer_name_short'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn
        Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072'  ('#1051#1048#1057')'
        DataBinding.FieldName = 'type_park_name'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1cost_all: TcxGridDBBandedColumn
        Caption = #1054#1073#1097#1072#1103' '#1057#1090#1086#1080#1084#1086#1089#1090#1100
        DataBinding.FieldName = 'cost_all'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Styles.Content = cxStyle3
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1klemoDepo: TcxGridDBBandedColumn
        Caption = #1050#1083#1077#1081#1084#1086' '#1076#1077#1087#1086
        DataBinding.FieldName = 'klemoDepo'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1edo_depo_name: TcxGridDBBandedColumn
        Caption = #1044#1077#1087#1086
        DataBinding.FieldName = 'edo_depo_name'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1date_check_self: TcxGridDBBandedColumn
        Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1084
        DataBinding.FieldName = 'date_check_self'
        HeaderAlignmentVert = vaTop
        MinWidth = 25
        Styles.Content = cxStyle4
        Width = 109
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
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
    StorageName = '\Software\Lis1\EDO_VRK'
    StorageType = stRegistry
    Left = 77
    Top = 71
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 134
    Top = 49
    PixelsPerInch = 120
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13565951
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14141181
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 4718698
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000B7A293FF634935FF634935FF634935FF634935FF6349
          35FF634935FF634935FF634935FF634935FF634935FF00000000000000000000
          00000000000000000000B7A293FFFFFFFFFFB7A293FFB7A293FFB7A293FFB7A2
          93FFB7A293FFB7A293FFB7A293FFB7A293FF634935FF00000000000000000000
          00000000000000000000B7A293FFFFFFFFFFFFFFFFFFFCFAF9FFF7F1EEFFF1E7
          E1FFECDDD5FFE6D3C9FFE1CABDFFB7A293FF634935FF00000000000000000000
          00000000000000000000B7A293FFFFFFFFFFFFFFFFFFFEFEFEFFFAF7F5FFF5ED
          E9FFEFE3DCFFEAD9D1FFE4CFC4FFB7A293FF634935FF00000000000000000000
          00000000000000000000B7A293FFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBFFF8F3
          F0FFF2E9E3FFEDDFD8FFE7D5CBFFB7A293FF634935FF00000000000000000000
          00000000000000000000BAA596FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8
          F7FFF6EFEBFFF0E5DFFFEBDBD3FFB7A293FF634935FF00000000000000000000
          00000000000000000000BEA99AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD
          FCFFF9F5F2FFF4EBE6FFEEE1DAFFB7A293FF634935FF00000000000000000000
          00000000000000000000C3AE9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCFAF9FFF7F1EEFFF1E7E1FFB7A293FF634935FF00000000000000000000
          00002CEDFF7C0EDBFF9600AEFFFF1FE4FFFF79EDFFFF9BF4FFFFFFFFFFFFFFFF
          FFFFFEFEFEFFFAF7F5FFF5EDE9FFB7A293FF634935FF00000000000000003EF4
          FFC10079FAFF95FFFFFF009DFFFF02DCFFFF95FFFFFF0079FAFF99FFFFFFFFFF
          FFFFFFFFFFFFFDFCFBFFB7A293FFB7A293FF644A36FF00000000000000004CFC
          FFCB95FFFFFF0079FAFF00A8FFFF00B4FFFF0079FAFF95FFFFFF7FFFFFFFFFFF
          FFFFFFFFFFFFB7A293FF644A36FF644A36FF644A36FF000000000000000000D6
          FFFB13E7FFFE0092FFFF00D3FFFF05DEFFFF00BFFFFF31F8FFFF1CE3FFFFFFFF
          FFFFFFFFFFFFB9A495FFD4C5BAFF644A36FFC9B3A48C0000000000000000008C
          FAFF0095FFFF0091FFFFFFFFFFFFA8FFFFFF00B4FFFF009AFFFF00A8FFFFFFFF
          FFFFFFFFFFFFC0AB9CFF644A36FFC9B3A48B0000000000000000000000000BDB
          FFCD95FFFFFF0079FAFF00A0FFFF00B1FFFF0079FAFF95FFFFFF3BD9F0FFD4BE
          AEFFCFB9A9FFC9B3A4FFC9B3A48B000000000000000000000000000000000DD8
          FFB20079FAFF95FFFFFF00B4FFFF00D6FFFF95FFFFFF0079FAFF3DF5FFAA0000
          0000000000000000000000000000000000000000000000000000000000000000
          000067FFFFF854FFFFD8009BFFFF00D3FFFF4FFEFFDF58FFFFFA000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000CE8642F6DA9859FFDFA66FFFDEA56DFFDEA46CFFDDA26BFFDDA169FFDCA0
          68FFDC9F67FFDB9E65FFD58D4AFFC7782DF60000000000000000000000000000
          0000DD9E60FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFEFCFFFFFDFBFFFFFD
          FBFFFFFCFAFFFFFCF9FFFFFEFDFFD6904EFF0000000000000000000000000000
          0000E3AF7BFFFFFFFEFFFFFCFAFFFFFBF6FFFFF9F2FFFFF7EEFFFFF5EBFFFFF3
          E7FFFFF1E3FFFFEFE0FFFFFBF7FFDDA36CFF0000000000000000000000000000
          0000E5B380FFFFFDFCFFFFF7F0FFFFF6ECFFFFF4E8FFFFF2E5FFFFF0E1FFFFEE
          DDFFFFECD9FFFFEAD6FFFFFAF4FFDFA770FF0000000000000000000000000000
          0000E6B684FFFFFCF9FF0083D2FF60ACD8FFDFE1DCFFFFEDDBFFFFEBD7FFFFE9
          D3FFFFE7CFFFFFE5CCFFFFF8F2FFE1AA75FF0000000000000000000000000000
          0000E8B989FFFFFBF7FF60ABD6FF127BA7FF0090DFFF60A9D2FFEFE0CDFFFFE4
          C9FFFFE2C5FFFFE1C2FFFFF7EFFFE2AD79FF0000000000000000000000000000
          0000EABD8DFFFFFAF4FFDFDBD2FF008BDFFF00C7FFFF00B2F0FF3095CFFFEFD9
          C0FFFFDDBCFFFFDCB8FFFFF6EDFFE4B17DFF0000000000000000000000000000
          0000EBC091FFFFF8F2FFFFE4C8FF60A7CDFF00C2F0FF00DFFFFF00B7F0FF3093
          CDFFEFD3B4FFFFD7AEFFFFF5EAFFE6B482FF0000000000000000000000000000
          0000EDC496FFFFF7EFFFFFDFBEFFEFD7BCFF3094CDFF00C7F0FF00E6FFFF00BC
          F0FF3092CAFFEFCDA7FFFFF3E8FFE7B886FF0000000000000000000000000000
          0000EFC79AFFFFF6EDFFFFDAB4FFFFD8B0FFEFD1AFFF3092CAFF00CBF0FF00EE
          FFFF00C1F0FF3091C8FFEFEBE5FFE9BB8BFF0000000000000000000000000000
          0000F0CA9EFFFFF5EAFFFFD5AAFFFFD3A7FFFFD1A3FFEFCAA2FF3091C8FF00D0
          F0FF00F5FFFF00C5F0FF3098D6FFDCBA93FF0000000000000000000000000000
          0000F2CDA3FFFFF3E8FFFFD0A0FFFFCE9DFFFFCD9AFFFFCC99FFEFC89DFF30A2
          E0FF00D6F3FF00FCFFFF00C2E8FF598295FF0A06061000000000000000000000
          0000F3D1A7FFFFF2E6FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFEFF8
          FDFF30ABE6FF00D4EFFF88A1A1FFCCA4A4FF7F5C68CF0B080810000000000000
          0000F5D4ABFFFFF2E6FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFFF
          FFFFEEF5F6FF6FADBEFFE5CDCDFF3C38B2FF00008FFF000062BF000000000000
          0000F6D4A9FFFFFFFFFFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFEF8
          F1FFF1CB9DFFCEA77CE0C0ADBBEF0000BEFF153FF4FF0000A1FF000000000000
          0000ECC795F6F7D7ACFFF7D9B1FFF7D8B0FFF6D7AFFFF6D6ADFFF5D5ACFFF1C5
          8EFFCEA778DB000000002A262630121F9DBF0419D1FF0000719F}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000736D8EFF777386FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007259
          DDFF2805CBFF331CA2FF6F6A81FF000000000000000000000000000000000000
          00000000000000000000604BC1FF5336CDFF0000000000000000000000007259
          DDFF2900DEFF2400C3FF41347EFF737277FF0000000000000000000000000000
          0000000000005135CCFF2A06CCFF5D45C4FF0000000000000000000000000000
          0000694EDEFF2900E0FF2B0CB9FF544C7AFF939393FF00000000000000000000
          00005033CCFF2803CDFF5D45C4FF000000000000000000000000000000000000
          000000000000694EDEFF2D06DDFF391DAEFF615982FF919193FF000000004E33
          CBFF2601CDFF5D46C3FF00000000000000000000000000000000000000000000
          00000000000000000000694EDEFF2F0ADAFF371CAEFF45348AFF381ABEFF2704
          C6FF5C46C3FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000694EDEFF2600D6FF2300C0FF2500C7FF5747
          A0FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003B1AC8FF2500CCFF2E0BC5FF6053
          9EFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004F33CBFF2700CDFF4629C6FF401ED4FF4224
          C2FF6E63ABFF0000000000000000000000000000000000000000000000000000
          000000000000000000004F33CBFF2700CEFF5D45C4FF00000000000000005739
          DAFF3F1FC8FF6B5DADFF00000000000000000000000000000000000000000000
          0000000000004F33CBFF2600CDFF5A44C4FF0000000000000000000000000000
          00006045DDFF3816CAFF6757AEFF000000000000000000000000000000000000
          00004F33CBFF2600CDFF5A44C4FF000000000000000000000000000000000000
          0000000000005D3FDDFF5133D2FF000000000000000000000000000000005133
          D7FF2600D1FF5035CDFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005133
          D9FF5435DDFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
          7B000000FF000000FF0000000000FF00FF000000FF000000FF000000FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B000000
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF007B7B7B000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF007B7B7B000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF0029313100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002931
          3100006B940029313100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF009463630094636300FF00FF00FF00FF00FF00FF00006B940063CE
          FF0031ADD600006B940029313100FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0094636300DEADAD00F7DEDE00D6848400FF00FF00FF00FF00FF00FF00006B
          940063CEFF0031ADD600006B940029313100FF00FF00FF00FF00FF00FF009463
          6300DEADAD00FFF7F700D6848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00006B940063CEFF0031ADD600006B940029313100FF00FF0094636300DEAD
          AD00FFF7F700D6848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00006B940063CEFF0031ADD600006B940094636300DEADAD00FFF7
          F700D6848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00006B940063CEFF0094636300DEADAD00FFF7F700D684
          8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0094636300DEADAD00FFF7F700D68484002931
          3100FF00FF00FF00FF00FF00FF00D684840094636300FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0094636300DEADAD00FFF7F700D684840031ADD600006B
          940029313100FF00FF00FF00FF00D6848400FFFFFF0094636300FF00FF009463
          63009463630094636300DEADAD00FFF7F700D6848400006B940063CEFF0031AD
          D6009463630094636300846352008C736300D6848400D684840094636300FFF7
          F700EFD6D600DEADAD00F7DEDE00D6848400FF00FF00FF00FF00006B9400D684
          8400EFD6D600DEB5B500DEADAD008C736300FF00FF00FF00FF0094636300D684
          8400D6848400D6848400EFD6D600D6848400FF00FF00FF00FF00FF00FF00D684
          8400FFF7F700EFD6D600DEB5B500D6848400FF00FF00FF00FF0094636300FF00
          FF00FF00FF00D6848400EFD6D600D6848400FF00FF00FF00FF00FF00FF00D684
          8400FFFFFF00FFF7F700D6848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0094636300FFF7F700D6848400FF00FF009463630094636300F7DE
          DE00FFFFFF00D6848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D6848400D6848400D6848400FF00FF00D6848400D6848400D6848400D684
          8400D6848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000753701A8C16312F2C86812FA9041
          05C7491D006B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C76E1AF3FFAE4FFFFFAD48FFFFA73DFFFF97
          2AFFEB7E18FE6B2C00900000000000000000000000000000000000000000AE5F
          10CE9D570DB200000000C46E1BF5FFB763FFFFB259FFD1731DF8672E008B3C18
          00535823007CA54500E8411A005A00000000000000000000000000000000CC81
          33F6FDC285FFB56202EEFFC98EFFFFBE74FFD37A23F800000000000000000000
          000000000000000000005B24007A00000000000000000000000000000000AC68
          1FD5FFE0BDFFFFCF9EFFFFCC96FFECA660FF582B007000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008A4E
          07B3FFE9D1FFFFD2A4FFFFCF9FFFCF8129FD592B007500000000000000000000
          0000000000000000000000000000000000000000000000000000000000006D38
          0091FFF3E5FFFFE2C5FFFFDCB7FFFFD4A1FFFFC37EFF713B0091000000007B39
          039E9E5116C7B5672BE0C08043F8BE743AF73614005200000000000000004222
          0055D99944F8DA9D4CF9CE852BE3B36A16CA945003B00000000069310094FFD9
          A0FFFFE5BCFFFFE4C0FFFFE2BCFFFFE4BAFF561C008F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000005020
          007ACC7D38FEFFD3A0FFFFD1A2FFFFE0B1FF732F04B100000000000000000000
          0000000000000000000000000000000000000000000000000000000000005425
          0072F8B776FFFFCC94FFFFCF98FFFFDFB0FF964C17D300000000000000000000
          000000000000753B00900000000000000000000000000000000000000000D982
          2BF6FFBE75FFFFCA88FFA14800EFFECC9BFFBC6A2AF300000000000000000000
          0000000000004E28005EC37001E76639007700000000703B0089DB8222F6FFB0
          57FFFFC179FFC46C1EF30000000094490EB7A04B10C500000000000000000000
          0000000000000000000084490095F78F1AFEFC952AFFFFA13AFFFFA743FFFFBF
          75FFC96F1BF44921006200000000000000000000000000000000000000000000
          0000000000000000000000000000572E006FAB650FCBD47E1FFDCA7821F78845
          03B9000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002721
          1D3F7F6652FF7C624EFF795F4BFF765C48FF725844FF6F5541FF6B513DFF684E
          3AFF654B37FF634935FF634935FF291E16690000000000000000201B183C947E
          71EDE3CDBEFFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
          93FFB7A293FFB7A293FFB7A293FF634935FF0A07051A0000000054494285A795
          87F6F8EBE2FFFEF4EEFFFEF0E6FFFDE8DCFFF7DBC8FFF3CDB5FFEFC2A5FF00A1
          02FF00A102FF00A102FF715845FF634935FF443225B0000000009D8576EFE0D8
          D2FFFFFCFAFFFFFFFFFFFFFFFFFFFFFCFAFFFBF3EDFFF5E3D8FFEED5C5FF00FF
          0AFF00FFB4FF00A102FF7D6553FF6B523EFF634935FF00000000AA907FFFEBE6
          E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5F2FFF1E7E1FF00FF
          0AFF00FF0AFF00A102FF897160FF775E4CFF634935FF00000000AE9684FFD0C0
          B3FFCBBBAFFFBFAEA1FFB5A294FFAA9586FF9F8A7AFF957E6EFF8B7362FF826A
          58FF7B6250FF745B48FF957E6DFF836B59FF6E5440FF00000000BAA08DFFF8F4
          F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBFFFBF8F6FFF8F3
          F1FFF6EEEAFFF3E9E4FFA18A7BFF8F7766FF7A614DFF00000000322A254F9E88
          78E5CCB3A1FFC2A999FFC9B2A3FFB9A192FFA99181FF9B8271FF8B7260FF7D63
          51FF775D4AFF856C5AFFB49F90FF9B8474FF785E4AFF00000000000000003B32
          2C5AC6AD9BFFD9CABDFFFFFFFFFFFCFAF9FFFCFAF9FFF8F3F1FFF4ECE7FFECE0
          D9FFBBA89AFF7A604DFFA58F7FFFC5AD9DFF7B614DFF00000000000000000000
          000025211D30C6AD9BFFFEFDFCFFECE7E2FFD7CBC2FFD7CBC2FFCABBB0FFD2C2
          B7FFE1D3CAFF846A59FF785E4DF8B19B8CFFB7A293FF00000000000000000000
          0000000000007C6E649CEEE5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF9FFF8F3
          F1FFE8DCD5FFCAB9ADFF785E4BFE32271F6B0000000000000000000000000000
          0000000000001614121BCFB9A9FFFEFDFDFFF2EEEBFFD7CBC2FFD7CBC2FFCABB
          B0FFC6B3A8FFE2D4CBFF866E5CFF715947EF0000000000000000000000000000
          000000000000000000005D534C72D8C9C4F3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCFAF9FFEFE6E1FFC8B7ABFF795F4CFE120E0B2600000000000000000000
          00000000000000000000030303045E544D73D4BEAEFFD4BEAEFFD4BEAEFFD4BE
          AEFFD4BEAEFFD4BEAEFFD4BEAEFFD3BDADFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000B8A394FF6950
          3DFF705946FF765F4EFF765F4EFF745C4AFF6F5745FF6C5340FF6E5643FF745C
          4AFF786251FF786251FF725B49FF6C5340FF654C38FF634935FFB9A596FFFDF8
          F6FFFDF7F5FFE3D9D3FFFDF5F0FFFCF2EBFFD7CAC1FFFAE9DEFFFAE7DBFFD7CA
          C2FFFBEBE0FFFAE9DDFFD2C4BBFFF7D9C6FFF5D1BAFF644A37FFBCA99BFFFEFB
          FAFF878786FF333333FF2D2D2DFF61605FFF837F7DFFFCF2ECFFCAC0BAFF2727
          27FF252525FF212121FF222222FFDFC9BBFFF6D5C0FF654C38FFBDAA9CFFE4DA
          D3FF5F5E5EFF444444FFB1ADABFFF0EAE7FF353535FF767473FFE6DED8FFECE6
          E1FF282828FF242424FFE6DED9FFCDBDB3FFBEAB9EFF644A37FFBDA99BFFFEFE
          FEFFD7D6D6FFC6C0BCFFFEFBFAFFFEFBFAFF3D3D3DFF2F2F2FFFFDF6F2FFEBE4
          E0FF2A2A2AFF242424FFE3DAD4FFF9E0D0FFF6D7C3FF634935FFBDA899FFFEFE
          FEFFFEFEFEFFE4D9D2FFFEFDFCFFBCBBBAFF343434FF2F2F2FFFFDF8F4FFEAE3
          DFFF2C2C2CFF252525FFE2D9D3FFF8E1D2FFF7DAC6FF634935FFBFAA9BFFDECF
          C6FFDFD2C9FFE4DAD3FF8F8C8BFF4B4B4BFF424242FF414141FFE9E1DCFFEBE4
          DFFF313131FF2A2A2AFFE3DAD4FFCBBBB0FFC1ADA1FF634935FFC2AD9EFFFEFE
          FEFFFEFEFEFFE8DED7FFC7C7C7FF5C5C5CFF545454FFE7E6E5FFFEFAF8FFECE6
          E1FF353535FF2D2D2DFFE4DBD6FFFAE7DBFFF8E0D1FF634935FFC6B1A2FFFEFE
          FEFFEAEAEAFFE6DFDAFFFFFFFFFFB5B5B5FF505050FF9C9C9CFFFEFBFAFFF0EA
          E6FF3A3A3AFF303030FFE5DDD7FFFBEBE0FFF9E3D6FF634935FFCAB5A7FFE3D6
          CFFFA29D9BFF666665FFB1AFAEFF676767FF585858FF838281FFC7C1BEFF6D6C
          6BFF464646FF353535FFDAD2CBFFD2C2B8FFC8B6AAFF634935FFCBB6A7FFFEFE
          FEFFFEFEFEFFB9B5B2FF7C7C7CFF6F6F6FFF858483FFFEFEFEFFFEFDFCFFE8E0
          DAFFB2B0B0FF5F5E5EFFDCD1CAFFFBF0E8FFFAEAE0FF634935FFCCB7A8FFFEFE
          FEFFFEFEFEFFE6DBD5FFFEFEFEFFFEFEFEFFE9DFD9FFFEFEFEFFFEFEFEFFDFD3
          CBFFFEFBFAFFFEF9F7FFD9CBC1FFFCF2ECFFFBEEE5FF634935FFEAAA8BFFEAAB
          8CFFEBAD8FFFEBAB8DFFEBA988FFEAA37EFFE89870FFE68C5EFFE4804EFFE47A
          46FFE47B45FFE47C47FFE37841FFE2733BFFE27239FFC8622FFFEAAA8BFFFFC2
          A2FFFEC09FFFFDBE9BFFFCBA97FFFBB692FFFAB18CFFF9AC85FFF8A77DFFF6A2
          77FFF59E72FFF59A6BFFF39565FFF39565FFF39565FFCD6531FFEAAA8BFFEAAA
          8BFFEAAA8BFFEAAA8BFFEAA686FFE9A17FFFE89B76FFE7946CFFE68E62FFE587
          58FFE4814EFFE47B46FFE3763EFFE3763EFFE3763EFFE27239FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000003A734C003A73
          4C003A734C00336D4700336D4700336D47002C6642002C6642002C664200265D
          3800265D3800265D38001E5331001E5331001E5331001A4D2A003A734C006CA6
          7C0066A0770066A077005F9B72005F9B720058966B0058966B0049935F004993
          5F0049935F003D8C57003D8C5700358C4F00358C4F001A4D2A00417B57006CA6
          7C00EBF3EB00E8F1E800E6F0E600E4EFE400E2EEE300DFECDF00DEEBDE00DCEA
          DD00DCEADB00D9E8D900D8E7D800D8E7D800358C4F001A4D2A00417B570071AA
          8100EDF5ED00EBF3EB00EAF1E900E6F0E600E4EFE400E2EEE300DFECDF00DEEB
          DE00DCEADB00DCEADB00DAE9DA00D8E7D8003D8C57001E53310047815D0076AF
          8500EFF6EF00EDF5ED00EBF3EB00E9F2E900E8F1E800E4EFE40081AA8D002C52
          30002C5230002C5230002C523000DAE9DA003D8C57001E5331004D8762007CB5
          8A00F3F8F30055A45A002C5230002C5230002C5230002C5230001D781E006DB6
          750049935F004B964D00265D3800DCEADB0049935F00265D3800558E670081BC
          9000F4F9F400F1F7F10055A45A0063B2760055A45A001D781E007CC185004993
          5F004B964D00265D380081AA8D00DCEADD0049935F00265D380058966B008AB7
          9500F6FAF600F5F9F500F3F8F30055A45A003287350081BC900049935F004B96
          4D00265D38006199640061996400DFECDF0049935F00265D38005F9B720094C7
          9C00F9FBFA00F6FAF600F5F9F5003287350094C79C005CAA650055A45A00336D
          470004690400E6F0E600E2EEE300E1EDE10058966B002C66420066A0770094C7
          9C00FCFDFB00F9FBFA00409347009DD0A7006DB675005CAA65004287490055A4
          5A003287350004690400E6F0E600E4EFE40058966B002C6642006CA67C009DD0
          A700FCFDFC004B964D00AAD6B20073BB7C0073BB7C0049935F0057825A0068B0
          6F0055A45A003287350004690400E6F0E6005F9B7200336D470071AA81009DD0
          A700FEFEFE0068B06F0064AC690064AC6900579A5E00F6F9F600F3F8F3005782
          5A0057825A0057825A0057825A00E9F2E9005F9B7200336D470076AF8500AAD6
          B200FEFEFE00FDFEFD00FDFEFD00FCFDFB00F9FBFA00F8FAF800F6F9F600F4F9
          F400F1F7F100EFF6EF00EDF5ED00EBF3EB0066A077003A734C007CB58A00AAD6
          B200FFFFFF00FFFFFF00FEFFFE00FDFEFD00FCFDFB00F9FBFA00F8FAF800F6FA
          F600F4F9F400F1F7F100EFF6EF00EDF5ED0066A077003A734C007CB58A00AAD6
          B200AAD6B2009DD0A7009DD0A70094C79C0094C79C0094C79C008AB7950081BC
          90007CB58A0076AF850071AA810071AA81006CA67C003A734C0081BC90007CB5
          8A0076AF850071AA81006CA67C0066A077005F9B720058966B00558E67004D87
          62004D87620047815D00417B5700417B57003A734C003A734C00}
        MaskColor = clDefault
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000AF623400AD60
          3200AA5E3000A85B2C00A4582800A05524009C502000984D1D00934919009045
          15008B421000873F0C00843B0900813806007F3503007D340100B8694200EBAE
          9400EBAD9200E9AB9000E6A98F00E4A78B00E0A48800DDA28500D89E8100D59B
          7F00D1997B00CE967700CB947500C8917300C79071007F360300BB6C4500ECB0
          9600FCF6F500FBF4F200FAF3F100FAF1F000F9F0ED00F9EEEC00F8EEEA00F8EC
          E900F8EAE700F7EAE600F6E8E500F6E7E300C891720081380600BE6F4900EDB2
          9A00FCF7F500FCF6F400FBF5F300FBF2F100FAF1F000F9F0EE00F9EFED00F9ED
          EB00F8ECE900F7EAE800F7E9E600F7E8E500CA937400843B0900C3724C00EEB5
          9D00FDF8F700A95126008D4F2900C0B8AB00FAF3F100FAF1F000A9512600583B
          1400B5AB9C00F8ECE900F8EAE800F7E9E700CD967700883F0C00C7765000EFB8
          A100FDFAF900C47B5E00DE7644008D4F2900ECE9E600F5F2EF00CD683F008D4F
          2900583B1400E9DFD900F8ECE900F7EBE800D1987A008B421000CC7B5500F0BB
          A500FDFAFA00C9836900E2957800DE7644008D4F2900E3D6CD00DB7D5800DE76
          44008D4F2900998B7700F9EDEA00F8ECE900D39B7D008F451400D17F5A00F0BE
          A900FEFBFB00D38E7200B77F6500D19B8300DE7644008D4F2900C56E4A00C983
          6900B6623A00583B1400E9DFD900F8EEEB00D79D800093491800D6825E00F2C1
          AD00FEFCFC00D8977E00B77F6500E6BBAC00C9836900DE76440085462400E0AA
          9600D17547008D4F2900A08F7C00F9EFEC00DAA08300984D1C00DB866300F2C4
          B100FEFEFD00DCA08800B77F6500F5E4E000DCA08800E1AC980088492700E2CB
          C200DDB9AB00B6623A00583B1400F5F0ED00DEA286009C512100DF8A6800F4C7
          B500DF967C00E4A89100E4A89100AD7A6500FFFFFF00D186690091503000E2CB
          C200E1AC9800C7816900B6623A00D49A8100E1A58900A0542500E48E6B00F4CA
          B800D8957F00D28C7300D28D7500C8755600DFBBAE00FEFBFA0099573900FCF8
          F700CA755400CB7B5D00CE7A5B00C66C4A00E4A78C00A4582800E7916E00F5CC
          BB00FFFFFF00FFFFFF00FFFEFE00FEFEFE00FEFDFC00FEFCFB00FEFBFA00FDF9
          F900FCF8F700FCF7F600FCF5F400FBF4F300E6AA8E00A75B2D00EB937200F6CE
          BE00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFEFD00FEFDFC00FDFCFB00FEFA
          FA00FDFAF900FCF8F800FCF7F600FBF5F400E9AB9100AA5D2F00ED967400F7CF
          C000F6CEBE00F5CCBC00F4CAB800F4C7B500F2C4B100F2C1AD00F0BEA900F0BB
          A500EFB8A100EDB59D00ECB39A00ECB09600EBAE9400AD603200ED967400ED96
          7400EB947200E8916F00E48F6D00E18C6800DD886500D8846100D4815C00CF7D
          5800CA795300C5755000C1714C00BD6F4800BA6C4500AF623400}
        MaskColor = clBlack
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000008400000084000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000008400000084000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000008400000084000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008484840000008400000084008484
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000008400000084000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FE7F0000FC3F0000FC3F0000FE7F0000FFFF0000FE7F
          0000FC3F0000FC3F0000FC3F0000FC3F0000FC3F0000FC3F0000FC3F0000FE7F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000002F4660058CC3FF0894C9FF068C
          C3FF026997CF00354F7000080B10000000000000000000000000000000000000
          00000000000000000000000000000000000004729ECF15B2DFFF13B0DEFF12AE
          DCFF10ACDBFF0B9FD1FF037BB0EF002639500000000000000000000000000000
          000000000000000000000000000000000000015D84AF17B3E0FF17B5E1FF16B3
          E0FF14B1DFFF13AFDDFF11AEDCFF068EC4FF002E456000000000000000000000
          000000000000000000000000000000000000002A3C5010A4D4FF1BB9E5FF1AB8
          E3FF18B6E2FF17B4E1FF14AFDDFF13ADDCFF058AC1FF0010172000090C100049
          638000486380003E5670001B25300000000000090C1010A4D5FF1FBEE8FF1EBC
          E7FF1CBBE6FF18B1DFFF0FA6DBFF0FA0D6FF0E97CCFF004F739F037CA6CF22C0
          EAFF2CCEF4FF20BDE8FF12A9D9FF0584B1DF0276A1CF1CB6E3FF23C3ECFF22C1
          EBFF20BFE9FF40DEF7FF4BE9FCFF4BE9FCFF23B8E2FF088ABBEF16B2DFFF31D4
          F9FF30D2F8FF2ED1F6FF2DCFF5FF2CCDF4FF2ACBF2FF29CAF1FF27C8F0FF26C6
          EEFF24C4EDFF44D9F1FF77FAF8FF6BF2F6FF2AC5EAFF0FA0D2FF1BBAE5FF35D9
          FDFF34D7FBFF26B7E4FF23B0E0FF2ECDF4FF2ED0F6FF2DCEF5FF2BCDF3FF2ACB
          F2FF28C9F1FF24BEE9FF22BCE7FF24C4ECFF22C2EBFF11A4D4FF12AEDCFF38DC
          FFFF29C3A8FF16AA35FF14A347FF1FA8C2FF32D5FAFF31D3F8FF2FD1F7FF2ED0
          F6FF50BEC7FF879065FF788B6AFF1BA4D6FF26C7EFFF1498C5EF005F7F9F31D4
          F9FF38D47FFF34CD4EFF30C948FF30CBC8FF34D4F9FF20A4D7FF1FA3D6FF30CF
          F6FFCBD39EFFFFC764FFFFB741FF5AB2B4FF2CC7EEFF00587A9F00131A2017AF
          DCFF40DFE6FF44E3BCFF40E0C1FF38DCFFFF166EE7FF001DD2FF0121CCFF22A2
          E1FF81E2E6FFF2EEC0FFCCE0B7FF54D6EAFF16A5D4FF0012192000000000003A
          4D601EB4DFFF44DFFFFF38DCFFFF38DCFFFF1266FBFF002FF6FF002CF1FF2BB5
          F7FF38DBFFFF37DAFEFF4ADEFDFF23B3DDFF00384B6000000000000000000000
          000000304050139DC9EF41D0F2FF4CE0FFFF40D4FFFF2B95FFFF39BFFFFF44DF
          FFFF52E2FFFF47D2F2FF139DC9EF002F40500000000000000000000000000000
          000000000000000A0D1000435A700D86ACCF26B6DFFF33C0E6FF33C0E6FF26B6
          DFFF0D86ACCF00435A70000A0D10000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000D8E9EC00FFFF
          FF00D8E9EC00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0080808000000099000000990000009900D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00808080000000CC000000990000009900000099000000
          9900D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000CC000000CC000000CC0000009900000099000000
          990000009900D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00D8E9
          EC00FFFFFF00D8E9EC000000FF000000CC000000CC000000CC00000099000000
          99000000990000999900D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC000000FF000000FF000000CC000000CC000000CC000000
          99000099990000CCCC0000999900D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC000000FF000000FF000000CC000000CC000099
          990000CCCC0000CCCC0000CCCC0000999900D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000FF000000800000CCCC0000FF
          FF0000FFFF0000CCCC0000CCCC0000CCCC0000999900D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000CCCC0000FFFF00FFFF
          FF00C0C0C00000FFFF0000CCCC0000CCCC0000CCCC0000999900D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000CCCC0000FF
          FF00FFFFFF00C0C0C00000FFFF0000CCCC000099990099330000D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000CC
          CC0000FFFF00FFFFFF0000FFFF0000999900CC66000099330000D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC0000CCCC0000FFFF0000CCCC00CC660000CC660000CC660000D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC0000CCCC00FF990000FF990000CC660000CC660000D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC0099330000FF990000FF990000CC660000D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC0099330000FF990000FF990000}
        MaskColor = 14215660
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000BBA6
          97FF634935FF634935FF634935FF634935FF634935FF00000000000000000000
          000000000000000000000000000000000000000000000000000000000000C2AC
          9DFFFEFDFCFFFCF2EBFFFAE4D8FFF7D8C4FF634935FF00000000000000000000
          000000000000000000000000000000000000000000000000000000000000CCB6
          A7FFFFFFFFFFD8C7BCFFC3B1A6FFFDF2EBFF634935FF00000000000000000000
          000000000000000000000000000000000000000000000805040E31201649CCB6
          A7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFAF8FF634935FF00000000BBA697FF6349
          35FF634935FF634935FF634935FF634935FF2B1D1446BE7B56FE7E553BFCEAAA
          8BFFE9A482FFE89B75FFE69166FFE58756FFDF7844FF00000000C2AC9DFFFEFD
          FCFFFCF2EBFFFAE4D8FFF7D8C4FF634935FF8F6044FE3E281C5B00000000EAAA
          8BFFFFC2A2FFFDB995FFF9AB84FFF69E72FFCD6531FF00000000CCB6A7FFFFFF
          FFFFD8C7BCFFC3B1A6FFFDF2EBFF634935FF0F0907160000000000000000EAAA
          8BFFE9A482FFE89B75FFE79166FFE58757FFE37E4AFF00000000CCB6A7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFAF8FF634935FF2619123E00000000000000000000
          0000000000000000000000000000000000000000000000000000EAAA8BFFE9A4
          82FFE89B75FFE69166FFE58756FFDF7844FFD38057FE754E37E62418103B0000
          0000BBA697FF634935FF634935FF634935FF634935FF634935FFEAAA8BFFFFC2
          A2FFFDB995FFF9AB84FFF69E72FFCD6531FF0402020537241950BC7955FE7A52
          39F4C2AC9DFFFEFDFCFFFCF2EBFFFAE4D8FFF7D8C4FF634935FFEAAA8BFFE9A4
          82FFE89B75FFE79166FFE58757FFE37E4AFF00000000000000000805030B482E
          2065CCB6A7FFFFFFFFFFD8C7BCFFC3B1A6FFFDF2EBFF634935FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000CCB6A7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFAF8FF634935FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EAAA8BFFE9A482FFE89B75FFE69166FFE58756FFDF7844FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EAAA8BFFFFC2A2FFFDB995FFF9AB84FFF69E72FFCD6531FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EAAA8BFFE9A482FFE89B75FFE79166FFE58757FFE37E4AFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B14A00FF9028
          00FF912900FF912900FF902800FFB64800FF38342EFF3E3327FF3E3327FF3F33
          28FF41352AFF3F3328FF3E3327FF3E3327FF3F3328FF5E534AFFCB6200FFFFD1
          71FFFFB237FFFFC366FFFFD89BFFCA5900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD1C7BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF756A62FFC85E00FFFFF5
          D8FFFFAA35FFFFBB66FFFFD19BFFC55500FFFAFCFEFFF7F2EDFFF7F2EDFFF9F4
          F0FFCCC1B8FFF9F4F0FFF7F2EDFFF6F1ECFFFFFFFFFF776D63FFFF9D00FFFF95
          00FFFF9400FFFF9400FFFF9800FFC65800FFD0CECBFFCFC5BBFFCFC5BBFFD0C6
          BCFFD2C9BFFFD0C6BCFFCFC5BBFFCEC5BBFFD5CBC1FF7F736AFFC85E00FFFFF3
          D4FFFFA933FFFFBB66FFFFD19BFFC55500FFFFFFFFFFFCF9F7FFFCF9F7FFFEFC
          F9FFD3C9BFFFFEFCF9FFFCF9F7FFFBF8F6FFFFFFFFFF83786DFFC85E00FFFFF3
          D4FFFFA933FFFFBB66FFFFD19BFFC55500FFFFFFFFFFFCFBF9FFFCFBF9FFFEFD
          FCFFD6CDC3FFFEFDFCFFFCFBF9FFFCFAF9FFFFFFFFFF887E72FFFF9D00FFFF95
          00FFFF9400FFFF9400FFFF9800FFC65700FFDBD9D7FFD8CFC6FFD8CFC6FFD9D0
          C7FFDBD3CAFFD9D0C7FFD8CFC6FFD8CFC6FFDED5CDFF908379FFC85E00FFFFF3
          D4FFFFA933FFFFBB66FFFFD19BFFC55400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFDDD5CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94887BFFC85E00FFFFF3
          D4FFFFA933FFFFBB66FFFFD19BFFC65600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE7E5E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A958CFFFF9D00FFFF95
          00FFFF9400FFFF9400FFFF9700FFC65E00FF881B00FF891B00FF891B00FF8A1B
          00FF8B1D00FF8A1B00FF891B00FF891B00FF8A1C00FFB04300FFC85E00FFFFF3
          D5FFFFA62DFFFFB860FFFFCC98FFFF9800FFFFAB22FFFFAA1EFFFFAA1EFFFFAC
          22FFFF9D00FFFFAC22FFFFAA1EFFFFAA1EFFFFAF24FFCB6400FFC95F00FFFFDF
          9DFFFFEFCBFFFFEFC8FFFFF1D0FFFF9300FFFFF3D6FFFFF0CDFFFFF0CDFFFFF3
          D6FFFF9300FFFFF3D6FFFFF0CDFFFFF1CEFFFFE1AEFFC96000FFCB6400FFC95F
          00FFC85D00FFC85C00FFC55A00FFFF9D00FFC55A00FFC85C00FFC85C00FFC55A
          00FFFF9D00FFC55A00FFC85C00FFC85D00FFC95F00FFCB6400FF000000000000
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
          0047FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
          00FFFF9900FFFF9900FFFF9900FFFF9900FF000000470000000000000000FF99
          00FFDBC5C5FFFFE5E5FF3C6BFFFF7EB6FFFF2051FFFFFFE0E0FFDBBFBFFFFFDB
          DBFFDBB9B9FFFFD4D4FFDBB2B2FFFFCCCCFFFF9900FF0000000000000000FF99
          00FFDBC9C9FFDBC9C9FF4B79FFFF3C6BFFFF1B4DFFFFDBC5C5FFDBC1C1FFDBBF
          BFFFDBBCBCFFDBB8B8FFDBB4B4FFDBB2B2FFFF9900FF0000000000000000FF99
          00FFDBCECEFFFFF0F0FF3C6BFFFF7EB6FFFF2051FFFFFFE8E8FFDBC5C5FFFFE1
          E1FFDBBFBFFFFFD9D9FFDBB8B8FFFFD1D1FFFF9900FF0000000000000000FF99
          00FFDBD2D2FFDBD2D2FF4B79FFFF3C6BFFFF1B4DFFFFDBCCCCFFDBC7C7FFDBC5
          C5FFDBC0C0FFDBBDBDFFDBB9B9FFDBB4B4FFFF9900FF0000000000000000FF99
          00FFDBD8D8FFFFFBFBFF3C6BFFFF7EB6FFFF2051FFFFFFF0F0FFDBCBCBFFFFE6
          E6FFDBC3C3FFFFDEDEFFDBBABAFFFFD4D4FFFF9900FF0000000000000000FF99
          00FFDBDBDBFFDBDBDBFF4B79FFFF3C6BFFFF1B4DFFFFDBD1D1FFDBCCCCFFDBC9
          C9FFDBC5C5FFDBC0C0FFDBBCBCFFDBB8B8FFFF9900FF0000000000000000FF99
          00FFDBDBDBFFFFFFFFFF3C6BFFFF7EB6FFFF2051FFFFFFF5F5FFDBCECEFFFFEA
          EAFFDBC5C5FFFFE0E0FFDBBCBCFFFFD6D6FFFF9900FF0000000000000000FF99
          00FFDBDBDBFFDBDBDBFF4B79FFFF3C6BFFFF1B4DFFFFDBD2D2FFDBCECEFFDBC9
          C9FFDBC5C5FFDBC0C0FFDBBCBCFFDBB8B8FFFF9900FF0000000000000000FF99
          00FFDBDBDBFFFFFFFFFF3C6BFFFF7EB6FFFF2051FFFFFFF5F5FFDBCECEFFFFEA
          EAFFDBC5C5FFFFE0E0FFDBBCBCFFFFD6D6FFFF9900FF0000000000000000FF99
          00FFFFAD3DFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
          00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF0000000000000000FF99
          00FFFFCC99FFEB8500FFEB8500FFEB8500FFEB8500FFEB8500FFEB8500FFEB85
          00FFEB8500FFEB8500FFEB8500FFF79100FFFF9900FF0000000000000000FF99
          00FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
          99FFFFCC99FFFFCC99FFFFCC99FFFFAD3DFFFF9900FF00000000000000000000
          0047FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
          00FFFF9900FFFF9900FFFF9900FFFF9900FF0000004700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000411E1E1E9D292929D2292929EB222222F1151515E70A0A
          0AC8272727BA0000001B00000000000000000000000000000000000000000000
          00000000004D787878FE888888FF717171FF4A4A4AFF343434FF393939FF3636
          36FF2D2D2DFF0A0A0AC200000000000000000000000000000000000000000000
          0000000000215C5C5CD3797979FF5D5D5DFF4A4A4AFF242424FF121212FF3A3A
          3AFE252525D02A2A2A9000000000000000000000000000000000000000000000
          0000000000000000000100000031525252D2616161FF434343FF080808D40000
          0021000000000000000000000000000000000000000000000000000000000000
          000000000002262626781F1F1F912D2D2DC6454545FF353535FF0C0C0CDC0000
          0046000000350000002300000010000000010000000000000000000000000000
          00000000003F686A6AFF53585CFF4F5760FF49525AFF424A51FF3B4349FF343B
          42FF2B3138FF22272EFF1D2125FE0D0D0EDB0000000000000000000000000000
          00001A1A1A646E7277FFAB8055FFE19D54FFDBA161FFDCA56BFFDAA772FFD4A5
          75FFCDA376FFC89F75FFC7B097FF111519F10000000000000000000000000000
          00001F1F1F7E7B8188FFB7844DFFE6963FFFE29645FFE29744FFE19541FFE191
          3AFFE08C31FFE1821FFFD9AB7BFF10151ADC0000000000000000000000000000
          00002E2E2E97838991FFC58F52FFE7A557FFE5A65BFFE5A55CFFE4A459FFE29E
          53FFDF994AFFE29037FFC7A683FF12171CC70000000000000000000000000000
          0000424242AE7C838BFFD99F5CFFECB26AFFECB371FFEBB372FFEAB06EFFE7AC
          65FFE4A45AFFE89D47FFB89E84FF14171AB20000000000000000000000000000
          0000595959C470777FFFF1B46CFFF0BD7FFFF0C285FFF1C486FFEFBE80FFECB7
          76FFE8AC68FFEFA654FFA69784FF1417199D0000000000000000000000000000
          0000717272D96A6D70FFFFC87FFFFBCC91FFFED59EFFFFD69FFFFCCF94FFF7C5
          84FFF2B773FFF8AF5CFF988D82FF151618880000000000000000000000000000
          0000898A8BEF6C6864FFD1A56EFFCBAB80FFCFB791FFD2BB96FFD0B48CFFCCAB
          82FFC9A478FFD0A26DFF73706CFF181819760000000000000000000000000000
          00004B4B4BA4757577F764686DF45C6066F0575A60EE505357EB484C50E74247
          4BE33D4147E0383B40DA343536CA000000370000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000003A5CFF003A5CFF003A5CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000003A5CFF00D3F0FF00D3F0FF00D3F0FF003A
          5CFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000003A5CFF00CCFFFF00FBFFFF00CBEEFF00D3F0FF00CC
          FFFF003A5CFF0000000000000000000000000000000000000000000000000000
          000000000000003A5CFF00CCFFFF0095C9FF00B9E4FF00EEFFFF00C1E4FF00CC
          EAFF00CCFFFF003A5CFF00000000000000000000000000000000000000000000
          0000003A5CFF0095C9FF00D6FFFF00D2FFFF00B4E4FF00B7E2FF00EEFFFF00C2
          E4FF00D1E9FF00CCFFFF003A5CFF00000000000000000000000000000000003A
          5CFF00CCFFFF00D7FFFF00B0E3FF00AFE2FF00D1FFFF00B4E3FF00B8E2FF00F6
          FFFF006DF3FF0096FFFF006699FF000000000000000000000000003A5CFF00CC
          FFFF0092C9FF00B0E4FF00D1FFFF00B0E3FF00AFE2FF00D2FFFF00BCE2FF006A
          F1FF0084FFFF99FFFFFF006699FF00000000000000000000000000598DFFFFFF
          FFFFFFFFFFFF3EC0E6FF00AEE3FF00D1FFFF00B1E3FF00B6E1FF0078FFFF0068
          F0FF91FFFFFF8FDCECFF006699FF00000000000000000000000000000000005D
          93FF00578EFFFFFFFFFF43C2E7FF00AFE2FF00D8FFFF0066F2FF0075FFFF91F6
          FFFF8ED5E9FF005C91FF006699FF000000000000000000000000000000000000
          0000000000001A6D9BFFFFFFFFFF43C5E6FF0064F2FF0074FFFF8FF5FFFF8CD2
          E8FF006298FF00A7DBFF0099CCFF003A5CFF0000000000000000000000000000
          00000000000000000000196C9BFFFFFFFFFF3E79F9FFFFFFFFFFFFFFFFFF0066
          9BFF52D0FBFF00B3E7FF00AADEFF0099CCFF003A5CFF00000000000000000000
          0000000000000000000000000000006699FF006699FF006699FF006699FF0066
          99FF59C2EDFF59D4FFFF00B1E5FF00AADEFF0099CCFF003A5CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000006699FF58C0EBFF59D3FFFF00B2E6FF00B0E5FF003A5CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000006699FF59C2EDFF5EDCFFFF0081B2FF006699FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000006699FF006699FF006699FF00000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000080000
          001F000000270000002700000027000000270000002700000027000000270000
          00270000001F00000008000000000000000000000000000000000000001F0000
          0073000000900000009200000092000000920000009200000092000000920000
          0090000000730000001F000000010000000100000001000000009B7C6BFF9D7E
          6DFF9C7E6DFF9C7E6DFF9C7D6DFF9C7D6CFF9B7C6BFF9B7C6BFF997B68FF9B7C
          6BFF000000990000004600000028000000270000001F000000089B7766FFFFFF
          FFFFFAF4E9FFFAF4E9FFFAF3E8FFFAF3E7FFFAF2E6FFFAF1E4FFF8EDDAFF9779
          67FF000000B10000009A0000009200000090000000730000001FA38070FFFFFF
          FFFFDBC3BBFFDBC2B8FFDBBFB3FFDBBDAFFFDABBAAFFDAB8A5FFFAF3E6FF997A
          6AFFB0818FFF975668FF965364FF975668FF0000009000000027A98778FFFFFF
          FFFFDBC7C2FFDBC4BCFFDBC1B7FFDBBFB2FFDBBCADFFDABAA8FFFBF4E8FF997B
          6BFFE3CFD0FFE3CCCDFFE2C2C2FF935263FF0000009200000027AB897AFFFFFF
          FFFFDBC7C3FFDBC5BEFFDBC2B9FFDBC0B4FFDBBDAFFFDBBAA9FFFBF5EAFF9A7C
          6BFFD4AEB9FFCB90A1FFE3CFCEFF965569FF0000009200000027AF8E7FFFFFFF
          FFFFDCC5C0FFDBC4BDFFDBC2B9FFDBBFB4FFDBBDAFFFDBBAAAFFFBF5ECFF9B7C
          6BFFD5AFBAFFCB91A2FFE4D0D0FF965567FF0000009200000027AF8F80FFFFFF
          FFFFFEFEFEFFFEFDFDFFFEFCFBFFFDFBF8FFFDFAF6FFFCF9F3FFFCF6EDFF9B7C
          6CFFD5B1BCFFCC92A4FFE4D2D2FF975668FF0000009200000027AF8F80FFFFFF
          FFFFDFCECCFFDECAC6FFDEC6C0FFDEC4BAFFDEC1B4FFDEBEADFFF0E8E0FF9F80
          70FFD5B1BCFFCC94A5FFE4D4D5FF975668FF0000009200000027B59586FFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFDFBFFA78270FFA78270FFA78270FFA782
          70FFE5DEDFFFE4DBDBFFE5D5D6FF98576BFF0000009100000027B59586FFFFFF
          FFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFCFAFFA78270FFF5E2D9FFB18E7EFFC39C
          9FFFD4AAB8FFCE98A7FFDBC7CAFF9A5B6EFF0000008200000022B89888FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA78270FFB18E7EFFCFC3BDFFE6E2
          E2FFA25B71FFA25B71FFA25B71FFA25B71FF0000004D00000011B89888FFB898
          88FFB49383FFB08E7DFFB08E7DFFAC8877FFA78270FFCFC3BDFFE6E5E4FFE6E1
          E1FFA25B71FFE0C1CAFFAA697EFF2C191F7A0000001900000003000000000000
          00010000000100000001C194A3FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFA25B71FFAA697EFF2D191F79000000190000000300000000000000000000
          00000000000000000000AF7285FFAF7285FFAC6D80FFA9687CFFA9687CFFA662
          76FFA25B71FF331C246600000011000000030000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000011D
          283501638DD301618EDA012A3C51000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000016E
          96CE399ED1FF1E8DC0FF018CBFFB013C54660000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000481
          ADDE62C0F2FF35B8E7FF01C6FBFF0195C7FE014A667B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000136
          475323AAD1F69DF9FFFF46DFFFFF01C4FAFF019DCFFE01567791010202020000
          0000000000000000000000000000000000000000000000000000000000000000
          000001253033028CB9DD7DE0F4FF67E6FFFF01C4F9FF01A2D6FF015F82A40104
          0505030303091717174A1717174D000000000000000000000000000000000000
          000000000000010C0F0F017599AD4BC6EAFE81EAFFFF01C6F9FF01A8DEFF3F56
          5ED95A5552F56D6D6DFF525252FD1B1B1B580000000000000000000000000000
          0000000000000000000000000000014F696F4AA0BAFD83E6FFFF12CAFCFF02A8
          DAFF81898BFFAEADADFF5F5F5FFF4D4D4DF71313133B00000000000000000000
          0000000000000000000000000000201D1D367A706CFE547A85FF73D4FBFF18C9
          FFFF7596A1FFB9B7B7FF686868FF626262FF444444D500000000000000000000
          0000000000000000000000000000626262A470706FFF787371FF889396FF9AB7
          C0FFCAC4C2FFCDCDCDFF727272FF6B6B6BFF3E3E3EAD00000000000000000000
          0000000000000000000001010101999999F2BCBCBCFFE6E5E5FFDFDDDDFFCDCB
          CBFFBFBFBFFFB7B7B7FFAEAEAEFF727272FF2828286200000000000000000000
          00000000000000000000000000002E2E2E40737373B8ABABABFDCBCBCBFFD8D8
          D8FFC7C7C7FFAFAFAFFF999999FF777777F80C0C0C1800000000000000000000
          000000000000000000000000000000000000000000001D1D1D2B5B5B5B9C8787
          87E8686868C14949498D2D2D2D5A111111200000000000000000000000000000
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
          00000000000000000004000000160000001A0000001800000014000000100000
          000C000000040000000000000000000000000000000000000000000000000000
          00000000000000000008492501A22D1701740000003000000028000000200000
          0018000000070000000000000000000000000000000000000000000000000000
          000000000000000000007E4205CC7E4205CC2B16025C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000824609CCFFBF25FF824609CC3B20045C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000884C0DCCFBB821FFFBBF34FF884C0DCC3E23065C0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008E5212CCEFB339FFEAA41DFFF2BD4AFF8E5212CC4025
          085C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000945816CCE4AE50FFD99934FFD99934FFEABB60FF9458
          16CC43280A5C0000000000000000000000000000000000000000000000000000
          000000000000000000009B5F1BCCE5B466FFCE9244FFCD9143FFCD9143FFE7BC
          6FFF9B5F1BCC0000000000000000000000000000000000000000000000000000
          00000000000000000000A26620CCF5C67AFFE9AD61FFDFA357FFF1CC80FFA266
          20CC492D0E5C0000000000000000000000000000000000000000000000000000
          00000000000000000000A86C25CCF7CB7FFFF1B66AFFFDDC90FFA86C25CC4B30
          105C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000AE7229CCFBD488FFFFE397FFAE7229CC4E33125C0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B3772DCCFFE599FFB3772DCC5035145C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B77B30CCB77B30CC5338165C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008C5F26995439175C0000000000000000000000000000
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
          0000000000000000000000000001000000080000000F00000012000000160000
          00190000001A0000000D00000000000000000000000000000000000000000000
          0000000000000000000000000002000000100000001D000000240000002C2D17
          01734B2601A60000001900000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002B16025C7E42
          05CC7E4205CC0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003B20045C824609CCFFBA
          16FF824609CC0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003E23065C884C0DCCF7BA30FFF6B1
          1DFF884C0DCC0000000000000000000000000000000000000000000000000000
          00000000000000000000000000004025085C8E5212CCECB952FFE09E29FFE5A8
          3AFF8E5212CC0000000000000000000000000000000000000000000000000000
          0000000000000000000043280A5C945816CCE9BD6EFFCF9240FFCF9240FFD9A3
          52FF945816CC0000000000000000000000000000000000000000000000000000
          000000000000000000009B5F1BCCFAD589FFE9AD61FFDFA357FFD5994DFFDCA9
          5DFF9B5F1BCC0000000000000000000000000000000000000000000000000000
          00000000000000000000492D0E5CA26620CCFBD88CFFEEB266FFEEB266FFF4C2
          76FFA26620CC0000000000000000000000000000000000000000000000000000
          00000000000000000000000000004B30105CA86C25CCFDDD91FFF2B96DFFF7CA
          7EFFA86C25CC0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004E33125CAE7229CCFEE195FFFBD4
          88FFAE7229CC0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005035145CB3772DCCFFE4
          98FFB3772DCC0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005338165CB77B
          30CCB77B30CC0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005439
          175C8C5F26990000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000040000
          00130000001E0000002000000020000000200000002100000021000000210000
          002200000022000000220000002300000021000000160000000500000012281E
          16CB37291EFF463A31FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D
          3DFFAD6839FFAB6535FF42362EFF3D3026FF241A13CE00000015000000193B2C
          21FF685C54FF483C34FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B5
          79FFE2B276FFE2B273FF443931FF51433AFF34261DFF0000001E000000183E2F
          24FF6C6057FF4A3F37FFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A6
          6DFFD4A56AFFD4A268FF473B33FF5B4F47FF37291EFF0000001D000000164031
          26FF6F645CFF4C4038FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EF
          EAFFF6EFEAFFF6EFE9FF463B34FF5D5249FF3A2C21FF0000001B000000144434
          29FF73675FFF4F443CFFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1
          EBFFF7F0EBFFF7F0ECFF4A4037FF5F534BFF3D2E23FF00000019000000124637
          2CFF776B63FF50453DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF4E433BFF61544CFF403126FF0000001700000010493A
          2FFF796E66FF50453DFF61564EFF60564EFF60554DFF5F544CFF5E544CFF5E53
          4BFF5D524AFF5C5249FF5B5149FF61554DFF433429FF000000150000000E4C3D
          32FF7C706AFF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B43
          3AFF594139FF584038FF573F37FF63574FFF46362DFF000000130000000D4E3F
          35FF80746DFF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7
          CAFFF3EAE2FFF3E9E2FF5A4139FF645850FF483A2FFF000000110000000B5142
          36FF827770FF70564DFFF9F5F2FFF4EAE4FFF1E6DEFFEBDCD2FFE9D9CCFF4E41
          3DFF60534CFFF3EAE3FF5D453CFF655951FF4C3D32FF0000000F000000095344
          39FF857A73FF755A50FFFAF6F3FFF5EDE7FFF4EDE6FFF4ECE6FFEFE2DAFF493D
          38FF5A4D46FFF4EBE4FF60483FFF655A52FF4F3F34FF0000000D000000075545
          3AFF887D76FF795E54FFFAF6F4FFF5EEE9FFF5EDE7FFF4EDE7FFF4ECE6FF473A
          36FF483D36FFE9D9CDFF644C43FF675A52FF514137FF0000000B000000065748
          3DFF898079FF7C6157FFFAF7F4FFFAF6F4FFFAF6F4FFFAF6F3FFFAF6F3FFFAF5
          F2FFF5EEE9FFF4ECE6FF695046FF82776FFF534439FF00000009000000034235
          2EC058493DFF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E
          64FF82695FFF7D645BFF6E544AFF56453BFF3F332BC200000005000000000000
          0002000000030000000400000004000000040000000400000005000000050000
          0005000000050000000500000006000000060000000400000001}
      end>
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cxImageList1
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 167
    Top = 74
    PixelsPerInch = 120
    DockControlHeights = (
      0
      0
      32
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 915
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
          ItemName = 'dxBarButton47'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton46'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
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
    object dxBarSubItem1: TdxBarSubItem
      Caption = '00.00.0000'
      Category = 0
      Style = cxStyle1
      Visible = ivAlways
      ImageIndex = 7
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end>
    end
    object dxBarButton2: TdxBarButton
      Caption = #1052#1077#1089#1103#1094'...'
      Category = 0
      Hint = #1052#1077#1089#1103#1094
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1055#1077#1088#1080#1086#1076'...'
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076
      Visible = ivAlways
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
    object dxBarSubItem2: TdxBarSubItem
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end>
    end
    object dxBarButton5: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
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
      ImageIndex = 13
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton7Click
    end
    object dxBarButton8: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton9Click
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
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
    end
    object dxBarButton10: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton11Click
    end
    object dxBarButton12: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton12Click
    end
    object dxBarButton13: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton13Click
    end
    object dxBarButton14: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton14Click
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton18'
        end>
    end
    object dxBarButton15: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton15Click
    end
    object dxBarButton16: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton16Click
    end
    object dxBarButton17: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton17Click
    end
    object dxBarButton18: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton18Click
    end
    object dxBarButton19: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton19Click
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton23'
        end>
    end
    object dxBarButton20: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton20Click
    end
    object dxBarButton21: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton21Click
    end
    object dxBarButton22: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton22Click
    end
    object dxBarButton23: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton23Click
    end
    object dxBarButton24: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton24Click
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton27'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton28'
        end>
    end
    object dxBarButton25: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton25Click
    end
    object dxBarButton26: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton26Click
    end
    object dxBarButton27: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton27Click
    end
    object dxBarButton28: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton28Click
    end
    object dxBarButton29: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton29Click
    end
    object dxBarSubItem7: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton30'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton31'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton33'
        end>
    end
    object dxBarButton30: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton30Click
    end
    object dxBarButton31: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton31Click
    end
    object dxBarButton32: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton32Click
    end
    object dxBarButton33: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton33Click
    end
    object dxBarButton34: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton34Click
    end
    object dxBarSubItem8: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton35'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton36'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton37'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton38'
        end>
    end
    object dxBarButton35: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton35Click
    end
    object dxBarButton36: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton36Click
    end
    object dxBarButton37: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton37Click
    end
    object dxBarButton38: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton38Click
    end
    object dxBarButton39: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton39Click
    end
    object dxBarSubItem9: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton40'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton41'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton42'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton43'
        end>
    end
    object dxBarButton40: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton40Click
    end
    object dxBarButton41: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton41Click
    end
    object dxBarButton42: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton42Click
    end
    object dxBarButton43: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton43Click
    end
    object dxBarButton44: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1088#1077#1084#1086#1085#1090#1072
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1088#1077#1084#1086#1085#1090#1072
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton44Click
    end
    object dxBarButton45: TdxBarButton
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1074' '#1088#1077#1084#1086#1085#1090
      Category = 0
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1074' '#1088#1077#1084#1086#1085#1090
      Visible = ivAlways
      ImageIndex = 19
      OnClick = dxBarButton45Click
    end
    object dxBarButton46: TdxBarButton
      Tag = 2
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 20
      OnClick = dxBarButton47Click
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton47: TdxBarButton
      Tag = 1
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 21
      OnClick = dxBarButton47Click
    end
    object dxBarButton48: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' XML...'
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' XML'
      Visible = ivAlways
      ImageIndex = 22
      OnClick = dxBarButton48Click
    end
  end
  object DS_VRK: TDataSource
    DataSet = Query_VRK
    Left = 146
    Top = 142
  end
  object Query_VRK: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'type_vrk'
        Size = -1
        Value = Null
      end
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
      'SELECT'#9'EDO_docs.EDO_docs_id,'
      #9'    edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1086#1076')[1]'#39','#39'bigint'#39') as cod,'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1086#1084#1077#1088')[1]'#39','#39'varchar(max)'#39') as num,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1058#1080#1087#1042#1072#1075#1086#1085#1072')[1]'#39','#39'varchar(max)'#39') as type' +
        '_vagon,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1043#1086#1076#1042#1099#1087#1091#1089#1082#1072')[1]'#39','#39'varchar(max)'#39') as cre' +
        'ate_year,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1044#1072#1090#1072#1042#1074#1086#1076#1072#1042#1089#1080#1089#1090#1077#1084#1091')[1]'#39','#39'datetime'#39') as ' +
        'date_system,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1048#1079#1053#1080#1093#1047#1072#1056#1077#1084#1086#1085#1090#1050#1055')[1]'#39','#39'varchar(max)'#39') a' +
        's for_repair,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1086#1076#1044#1077#1087#1086')[1]'#39','#39'varchar(max)'#39') as cod_de' +
        'po,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1086#1084#1077#1088#1040#1082#1090#1072#1042#1099#1087#1056#1072#1073#1086#1090')[1]'#39','#39'varchar(max)'#39')' +
        ' as act_num,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1086#1084#1077#1088#1057#1060')[1]'#39','#39'varchar(max)'#39') as sf_num' +
        ','
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1044#1072#1090#1072#1057#1060')[1]'#39','#39'varchar(max)'#39') as sf_date' +
        ','
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1055#1083#1072#1085#1086#1074#1086#1077#1053#1072#1095#1072#1083#1086#1056#1077#1084#1086#1085#1090#1072')[1]'#39','#39'varchar(ma' +
        'x)'#39') as plan_date_begin,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1055#1083#1072#1085#1086#1074#1086#1077#1054#1082#1086#1085#1095#1072#1085#1080#1077#1056#1077#1084#1086#1085#1090#1072')[1]'#39','#39'varchar' +
        '(max)'#39') as plan_date_end,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1060#1072#1082#1090#1080#1095#1077#1089#1082#1086#1077#1054#1082#1086#1085#1095#1072#1085#1080#1077#1056#1077#1084#1086#1085#1090#1072')[1]'#39','#39'varc' +
        'har(max)'#39') as fact_date_end,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1055#1088#1086#1074#1077#1088#1082#1072')[1]'#39','#39'varchar(max)'#39') as check' +
        '1,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1055#1088#1086#1074#1077#1088#1082#1072#1057#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1084')[1]'#39','#39'varchar(ma' +
        'x)'#39') as date_check_self,'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1069#1062#1055')[1]'#39','#39'varchar(max)'#39') as EDS,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1086#1080#1084#1086#1089#1090#1100#1041#1077#1079#1053#1044#1057')[1]'#39','#39'money'#39') as sum_n' +
        'ot_nds,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1086#1080#1084#1086#1089#1090#1100#1059#1073#1086#1088#1082#1080')[1]'#39','#39'money'#39') as sum_c' +
        'leaning,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1072#1074#1082#1072#1053#1044#1057')[1]'#39','#39'varchar(max)'#39') as type' +
        '_nds,'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1044#1057')[1]'#39','#39'money'#39') as nds,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1082#1080#1076#1082#1072')[1]'#39','#39'varchar(max)'#39') as discoun' +
        't,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1058#1080#1087#1056#1077#1084#1086#1085#1090#1072')[1]'#39','#39'varchar(max)'#39') as typ' +
        'e_repair,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1059#1076#1072#1083#1077#1085')[1]'#39','#39'varchar(max)'#39') as type_de' +
        'lete,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1083#1077#1081#1084#1086#1044#1077#1087#1086')[1]'#39','#39'varchar(max)'#39') as kle' +
        'moDepo,    '
      '                                '
      #9'    edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1086#1080#1084#1086#1089#1090#1100#1041#1077#1079#1053#1044#1057')[1]'#39','#39'money'#39') +'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1086#1080#1084#1086#1089#1090#1100#1059#1073#1086#1088#1082#1080')[1]'#39','#39'money'#39') +'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1044#1057')[1]'#39','#39'money'#39') as cost_all,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/'#1044#1086#1075#1086#1074#1086#1088'/'#1056#1077#1082#1074#1080#1079#1080#1090#1099#1044#1077#1087#1086'/@'#1054#1050#1055#1054')[1]'#39','#39'varch' +
        'ar(max)'#39') as edo_depo_okpo,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/'#1044#1086#1075#1086#1074#1086#1088'/'#1056#1077#1082#1074#1080#1079#1080#1090#1099#1044#1077#1087#1086'/@'#1055#1086#1083#1085#1086#1077#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085 +
        #1080#1077')[1]'#39','#39'varchar(max)'#39') as edo_depo_name,'
      ''
      '                                depo_name, '
      '                                fact_repair_id,'
      '                                x1.contract_id,'
      '                                x1.contract_cod,'
      '                                x1.firm_customer_name_short,'
      '                                type_park_name'
      'FROM'#9'EDO_docs '
      
        'LEFT JOIN EDO_link ON EDO_docs.EDO_docs_id = EDO_link.EDO_docs_i' +
        'd'
      'LEFT JOIN'
      #9'(SELECT DISTINCT '
      #9'inf_obj_cod,'
      #9'inf_obj_name as depo_name,'
      #9'c.contract_id,'
      #9'contract_cod,'
      #9'firm_customer_name_short,'
      #9'users_group_id,'
      #9'edo_vrk_cod'#9' '
      #9' FROM inf_obj_depo d'
      
        #9'LEFT OUTER JOIN view_contract c ON c.contract_id = d.contract_i' +
        'd'
      #9') x1 ON  '
      
        #9'RIGHT('#39'000'#39' + x1.inf_obj_cod,4) =  edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1083#1077#1081 +
        #1084#1086#1044#1077#1087#1086')[1]'#39','#39'varchar(max)'#39')'
      
        #9'OR x1.[edo_vrk_cod] = edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1086#1076#1044#1077#1087#1086')[1]'#39','#39'var' +
        'char(max)'#39')'
      
        ' left join view_vagon v ON v.users_group_id = x1.users_group_id ' +
        'AND v.num_vagon = edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1086#1084#1077#1088')[1]'#39','#39'int'#39')'
      
        ' left join view_vagon_owner vv ON vv.vagon_id = v.vagon_id AND e' +
        'do_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1044#1072#1090#1072#1042#1074#1086#1076#1072#1042#1089#1080#1089#1090#1077#1084#1091')[1]'#39','#39'datetime'#39') betwee' +
        'n vv.date_begin and ISNULL(vv.date_end, edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@' +
        #1044#1072#1090#1072#1042#1074#1086#1076#1072#1042#1089#1080#1089#1090#1077#1084#1091')[1]'#39','#39'datetime'#39'))'
      ''
      'WHERE'#9'EDO_type = :type_vrk AND'
      
        #9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1044#1072#1090#1072#1042#1074#1086#1076#1072#1042#1089#1080#1089#1090#1077#1084#1091')[1]'#39','#39'datetime'#39') betw' +
        'een :date1 and :date2'
      '')
    Left = 320
    Top = 80
  end
  object EDO: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 72
  end
  object sp_EDO_vrk_get: TADOStoredProc
    Connection = EDO
    ProcedureName = 'sp_EDO_vrk_get'
    Parameters = <>
    Left = 94
    Top = 340
  end
  object DS_EDO_vrk_get: TDataSource
    DataSet = sp_EDO_vrk_get
    Left = 93
    Top = 371
  end
  object sp_EDO_vrk_get_2: TADOStoredProc
    Connection = EDO
    ProcedureName = 'sp_EDO_vrk_get'
    Parameters = <>
    Left = 167
    Top = 338
  end
  object DS_EDO_vrk_get_2: TDataSource
    DataSet = sp_EDO_vrk_get_2
    Left = 167
    Top = 368
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton44'
      end
      item
        Visible = True
        ItemName = 'dxBarButton45'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton48'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem2'
      end>
    UseOwnFont = False
    Left = 186
    Top = 222
    PixelsPerInch = 120
  end
  object dxBarPopupMenu2: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem3'
      end>
    UseOwnFont = False
    Left = 173
    Top = 434
    PixelsPerInch = 120
  end
  object dxBarPopupMenu3: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem4'
      end>
    UseOwnFont = False
    Left = 378
    Top = 400
    PixelsPerInch = 120
  end
  object dxBarPopupMenu4: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem5'
      end>
    UseOwnFont = False
    Left = 326
    Top = 402
    PixelsPerInch = 120
  end
  object dxBarPopupMenu5: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem6'
      end>
    UseOwnFont = False
    Left = 270
    Top = 403
    PixelsPerInch = 120
  end
  object dxBarPopupMenu6: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton29'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem7'
      end>
    UseOwnFont = False
    Left = 225
    Top = 401
    PixelsPerInch = 120
  end
  object dxBarPopupMenu7: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton34'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem8'
      end>
    UseOwnFont = False
    Left = 171
    Top = 403
    PixelsPerInch = 120
  end
  object dxBarPopupMenu8: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton39'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem9'
      end>
    UseOwnFont = False
    Left = 94
    Top = 407
    PixelsPerInch = 120
  end
  object Query_VRK_SYS1: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'type_vrk'
        Size = -1
        Value = Null
      end
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
      'SELECT'#9'EDO_docs.EDO_docs_id,'
      #9'    edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1086#1076')[1]'#39','#39'bigint'#39') as cod,'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1086#1084#1077#1088')[1]'#39','#39'varchar(max)'#39') as num,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1058#1080#1087#1042#1072#1075#1086#1085#1072')[1]'#39','#39'varchar(max)'#39') as type' +
        '_vagon,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1043#1086#1076#1042#1099#1087#1091#1089#1082#1072')[1]'#39','#39'varchar(max)'#39') as cre' +
        'ate_year,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1044#1072#1090#1072#1042#1074#1086#1076#1072#1042#1089#1080#1089#1090#1077#1084#1091')[1]'#39','#39'datetime'#39') as ' +
        'date_system,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1048#1079#1053#1080#1093#1047#1072#1056#1077#1084#1086#1085#1090#1050#1055')[1]'#39','#39'varchar(max)'#39') a' +
        's for_repair,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1086#1076#1044#1077#1087#1086')[1]'#39','#39'varchar(max)'#39') as cod_de' +
        'po,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1086#1084#1077#1088#1040#1082#1090#1072#1042#1099#1087#1056#1072#1073#1086#1090')[1]'#39','#39'varchar(max)'#39')' +
        ' as act_num,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1086#1084#1077#1088#1057#1060')[1]'#39','#39'varchar(max)'#39') as sf_num' +
        ','
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1044#1072#1090#1072#1057#1060')[1]'#39','#39'varchar(max)'#39') as sf_date' +
        ','
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1055#1083#1072#1085#1086#1074#1086#1077#1053#1072#1095#1072#1083#1086#1056#1077#1084#1086#1085#1090#1072')[1]'#39','#39'varchar(ma' +
        'x)'#39') as plan_date_begin,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1055#1083#1072#1085#1086#1074#1086#1077#1054#1082#1086#1085#1095#1072#1085#1080#1077#1056#1077#1084#1086#1085#1090#1072')[1]'#39','#39'varchar' +
        '(max)'#39') as plan_date_end,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1060#1072#1082#1090#1080#1095#1077#1089#1082#1086#1077#1054#1082#1086#1085#1095#1072#1085#1080#1077#1056#1077#1084#1086#1085#1090#1072')[1]'#39','#39'varc' +
        'har(max)'#39') as fact_date_end,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1055#1088#1086#1074#1077#1088#1082#1072')[1]'#39','#39'varchar(max)'#39') as check' +
        '1,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1055#1088#1086#1074#1077#1088#1082#1072#1057#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1084')[1]'#39','#39'varchar(ma' +
        'x)'#39') as date_check_self,'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1069#1062#1055')[1]'#39','#39'varchar(max)'#39') as EDS,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1086#1080#1084#1086#1089#1090#1100#1041#1077#1079#1053#1044#1057')[1]'#39','#39'money'#39') as sum_n' +
        'ot_nds,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1086#1080#1084#1086#1089#1090#1100#1059#1073#1086#1088#1082#1080')[1]'#39','#39'money'#39') as sum_c' +
        'leaning,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1072#1074#1082#1072#1053#1044#1057')[1]'#39','#39'varchar(max)'#39') as type' +
        '_nds,'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1044#1057')[1]'#39','#39'money'#39') as nds,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1082#1080#1076#1082#1072')[1]'#39','#39'varchar(max)'#39') as discoun' +
        't,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1058#1080#1087#1056#1077#1084#1086#1085#1090#1072')[1]'#39','#39'varchar(max)'#39') as typ' +
        'e_repair,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1059#1076#1072#1083#1077#1085')[1]'#39','#39'varchar(max)'#39') as type_de' +
        'lete,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1083#1077#1081#1084#1086#1044#1077#1087#1086')[1]'#39','#39'varchar(max)'#39') as kle' +
        'moDepo,    '
      '                                '
      #9'    edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1086#1080#1084#1086#1089#1090#1100#1041#1077#1079#1053#1044#1057')[1]'#39','#39'money'#39') +'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1086#1080#1084#1086#1089#1090#1100#1059#1073#1086#1088#1082#1080')[1]'#39','#39'money'#39') +'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1044#1057')[1]'#39','#39'money'#39') as cost_all,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/'#1044#1086#1075#1086#1074#1086#1088'/'#1056#1077#1082#1074#1080#1079#1080#1090#1099#1044#1077#1087#1086'/@'#1054#1050#1055#1054')[1]'#39','#39'varch' +
        'ar(max)'#39') as edo_depo_okpo,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/'#1044#1086#1075#1086#1074#1086#1088'/'#1056#1077#1082#1074#1080#1079#1080#1090#1099#1044#1077#1087#1086'/@'#1055#1086#1083#1085#1086#1077#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085 +
        #1080#1077')[1]'#39','#39'varchar(max)'#39') as edo_depo_name,'
      ''
      '                                depo_name, '
      '                                fact_repair_id,'
      '                                x1.contract_id,'
      '                                x1.contract_cod,'
      '                                x1.firm_customer_name_short,'
      '                                type_park_name'
      'FROM'#9'EDO_docs '
      
        'LEFT JOIN EDO_link ON EDO_docs.EDO_docs_id = EDO_link.EDO_docs_i' +
        'd'
      'LEFT JOIN'
      #9'(SELECT DISTINCT '
      #9'inf_obj_cod,'
      #9'inf_obj_name as depo_name,'
      #9'c.contract_id,'
      #9'contract_cod,'
      #9'firm_customer_name_short,'
      #9'users_group_id,'
      #9'edo_vrk_cod'#9' '
      #9' FROM inf_obj_depo d'
      
        #9'LEFT OUTER JOIN view_contract c ON c.contract_id = d.contract_i' +
        'd'
      #9') x1 ON  '
      
        #9'RIGHT('#39'000'#39' + x1.inf_obj_cod,4) =  edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1083#1077#1081 +
        #1084#1086#1044#1077#1087#1086')[1]'#39','#39'varchar(max)'#39')'
      
        #9'OR x1.[edo_vrk_cod] = edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1086#1076#1044#1077#1087#1086')[1]'#39','#39'var' +
        'char(max)'#39')'
      
        ' left join view_vagon v ON v.users_group_id = x1.users_group_id ' +
        'AND v.num_vagon = edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1086#1084#1077#1088')[1]'#39','#39'int'#39')'
      
        ' left join view_vagon_owner vv ON vv.vagon_id = v.vagon_id AND e' +
        'do_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1044#1072#1090#1072#1042#1074#1086#1076#1072#1042#1089#1080#1089#1090#1077#1084#1091')[1]'#39','#39'datetime'#39') betwee' +
        'n vv.date_begin and ISNULL(vv.date_end, edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@' +
        #1044#1072#1090#1072#1042#1074#1086#1076#1072#1042#1089#1080#1089#1090#1077#1084#1091')[1]'#39','#39'datetime'#39'))'
      ''
      'WHERE'#9'EDO_type = :type_vrk AND'
      
        #9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1044#1072#1090#1072#1042#1074#1086#1076#1072#1042#1089#1080#1089#1090#1077#1084#1091')[1]'#39','#39'datetime'#39') betw' +
        'een :date1 and :date2'
      '')
    Left = 320
    Top = 136
  end
  object Query_VRK_SYS2: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'type_vrk'
        Size = -1
        Value = Null
      end
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
      'SELECT'#9'EDO_docs.EDO_docs_id,'
      #9'    edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1086#1076')[1]'#39','#39'bigint'#39') as cod,'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1086#1084#1077#1088')[1]'#39','#39'varchar(max)'#39') as num,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1058#1080#1087#1042#1072#1075#1086#1085#1072')[1]'#39','#39'varchar(max)'#39') as type' +
        '_vagon,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1043#1086#1076#1042#1099#1087#1091#1089#1082#1072')[1]'#39','#39'varchar(max)'#39') as cre' +
        'ate_year,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1044#1072#1090#1072#1042#1074#1086#1076#1072#1042#1089#1080#1089#1090#1077#1084#1091')[1]'#39','#39'datetime'#39') as ' +
        'date_system,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1048#1079#1053#1080#1093#1047#1072#1056#1077#1084#1086#1085#1090#1050#1055')[1]'#39','#39'varchar(max)'#39') a' +
        's for_repair,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1086#1076#1044#1077#1087#1086')[1]'#39','#39'varchar(max)'#39') as cod_de' +
        'po,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1086#1084#1077#1088#1040#1082#1090#1072#1042#1099#1087#1056#1072#1073#1086#1090')[1]'#39','#39'varchar(max)'#39')' +
        ' as act_num,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1086#1084#1077#1088#1057#1060')[1]'#39','#39'varchar(max)'#39') as sf_num' +
        ','
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1044#1072#1090#1072#1057#1060')[1]'#39','#39'varchar(max)'#39') as sf_date' +
        ','
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1055#1083#1072#1085#1086#1074#1086#1077#1053#1072#1095#1072#1083#1086#1056#1077#1084#1086#1085#1090#1072')[1]'#39','#39'varchar(ma' +
        'x)'#39') as plan_date_begin,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1055#1083#1072#1085#1086#1074#1086#1077#1054#1082#1086#1085#1095#1072#1085#1080#1077#1056#1077#1084#1086#1085#1090#1072')[1]'#39','#39'varchar' +
        '(max)'#39') as plan_date_end,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1060#1072#1082#1090#1080#1095#1077#1089#1082#1086#1077#1054#1082#1086#1085#1095#1072#1085#1080#1077#1056#1077#1084#1086#1085#1090#1072')[1]'#39','#39'varc' +
        'har(max)'#39') as fact_date_end,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1055#1088#1086#1074#1077#1088#1082#1072')[1]'#39','#39'varchar(max)'#39') as check' +
        '1,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1055#1088#1086#1074#1077#1088#1082#1072#1057#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1086#1084')[1]'#39','#39'varchar(ma' +
        'x)'#39') as date_check_self,'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1069#1062#1055')[1]'#39','#39'varchar(max)'#39') as EDS,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1086#1080#1084#1086#1089#1090#1100#1041#1077#1079#1053#1044#1057')[1]'#39','#39'money'#39') as sum_n' +
        'ot_nds,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1086#1080#1084#1086#1089#1090#1100#1059#1073#1086#1088#1082#1080')[1]'#39','#39'money'#39') as sum_c' +
        'leaning,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1072#1074#1082#1072#1053#1044#1057')[1]'#39','#39'varchar(max)'#39') as type' +
        '_nds,'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1044#1057')[1]'#39','#39'money'#39') as nds,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1082#1080#1076#1082#1072')[1]'#39','#39'varchar(max)'#39') as discoun' +
        't,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1058#1080#1087#1056#1077#1084#1086#1085#1090#1072')[1]'#39','#39'varchar(max)'#39') as typ' +
        'e_repair,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1059#1076#1072#1083#1077#1085')[1]'#39','#39'varchar(max)'#39') as type_de' +
        'lete,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1083#1077#1081#1084#1086#1044#1077#1087#1086')[1]'#39','#39'varchar(max)'#39') as kle' +
        'moDepo,    '
      '                                '
      #9'    edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1086#1080#1084#1086#1089#1090#1100#1041#1077#1079#1053#1044#1057')[1]'#39','#39'money'#39') +'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1057#1090#1086#1080#1084#1086#1089#1090#1100#1059#1073#1086#1088#1082#1080')[1]'#39','#39'money'#39') +'
      #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1044#1057')[1]'#39','#39'money'#39') as cost_all,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/'#1044#1086#1075#1086#1074#1086#1088'/'#1056#1077#1082#1074#1080#1079#1080#1090#1099#1044#1077#1087#1086'/@'#1054#1050#1055#1054')[1]'#39','#39'varch' +
        'ar(max)'#39') as edo_depo_okpo,'
      
        #9#9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/'#1044#1086#1075#1086#1074#1086#1088'/'#1056#1077#1082#1074#1080#1079#1080#1090#1099#1044#1077#1087#1086'/@'#1055#1086#1083#1085#1086#1077#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085 +
        #1080#1077')[1]'#39','#39'varchar(max)'#39') as edo_depo_name,'
      ''
      '                                depo_name, '
      '                                fact_repair_id,'
      '                                x1.contract_id,'
      '                                x1.contract_cod,'
      '                                x1.firm_customer_name_short,'
      '                                type_park_name'
      'FROM'#9'EDO_docs '
      
        'LEFT JOIN EDO_link ON EDO_docs.EDO_docs_id = EDO_link.EDO_docs_i' +
        'd'
      'LEFT JOIN'
      #9'(SELECT DISTINCT '
      #9'inf_obj_cod,'
      #9'inf_obj_name as depo_name,'
      #9'c.contract_id,'
      #9'contract_cod,'
      #9'firm_customer_name_short,'
      #9'users_group_id,'
      #9'edo_vrk_cod'#9' '
      #9' FROM inf_obj_depo d'
      
        #9'LEFT OUTER JOIN view_contract c ON c.contract_id = d.contract_i' +
        'd'
      #9') x1 ON  '
      
        #9'RIGHT('#39'000'#39' + x1.inf_obj_cod,4) =  edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1083#1077#1081 +
        #1084#1086#1044#1077#1087#1086')[1]'#39','#39'varchar(max)'#39')'
      
        #9'OR x1.[edo_vrk_cod] = edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1050#1086#1076#1044#1077#1087#1086')[1]'#39','#39'var' +
        'char(max)'#39')'
      
        ' left join view_vagon v ON v.users_group_id = x1.users_group_id ' +
        'AND v.num_vagon = edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1053#1086#1084#1077#1088')[1]'#39','#39'int'#39')'
      
        ' left join view_vagon_owner vv ON vv.vagon_id = v.vagon_id AND e' +
        'do_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1044#1072#1090#1072#1042#1074#1086#1076#1072#1042#1089#1080#1089#1090#1077#1084#1091')[1]'#39','#39'datetime'#39') betwee' +
        'n vv.date_begin and ISNULL(vv.date_end, edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@' +
        #1044#1072#1090#1072#1042#1074#1086#1076#1072#1042#1089#1080#1089#1090#1077#1084#1091')[1]'#39','#39'datetime'#39'))'
      ''
      'WHERE'#9'EDO_type = :type_vrk AND'
      
        #9'edo_xml.value('#39'(/'#1042#1072#1075#1086#1085'/@'#1044#1072#1090#1072#1042#1074#1086#1076#1072#1042#1089#1080#1089#1090#1077#1084#1091')[1]'#39','#39'datetime'#39') betw' +
        'een :date1 and :date2'
      '')
    Left = 320
    Top = 216
  end
end
