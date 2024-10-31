object fmUsersContract: TfmUsersContract
  Left = 372
  Top = 41
  Caption = #1042#1099#1073#1086#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
  ClientHeight = 597
  ClientWidth = 955
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    00000000000000000000000000000000000000000000C00C0000000000000000
    0000000000C00FF0C00000000000000000000000C00FF00F0C00000000000000
    000000C00FF00FF0F0C00000000000000000C00FF00FFFFB0F0C000000000000
    00C00FF00FFFFFFFF0F0C00000000000000FF00FFFFBF88FFF0F0C0000000000
    00000FFFFFF88FFFFFF0F0C000000000000FFFFBF88FFFFB88FF0F0C00000000
    0000FFF88FFFFF88FFFFF0F0C000000000000FFFFFFB88FFFFFBFF0F0C000000
    000000FFFF88FFFFFF77FFF0F0C000C0C000000BF8FFFFFB70FFFFFB0F0C0C0C
    00000000000FFF700FFFF77FF0F00CC008800FFFFFF000010FF77FFFFF000CC0
    8FFFFFFFFFF88800F77FFF7077F00CC0FFFFFFFFF00000077FFFFFF0F0000C10
    FFFFFFFF8000B00FFFFFFFF000000CC0FFFFFFFF800B080F7077F00000700000
    0FFFFFFF80B08F0FF0F0000700000000000FFFFF0B08F00BF000000000000000
    0000FFF0B0FF000000007000000000000000000B0FF000000700000000000000
    000000B000000000000000000000000000000B00000000000000000000000000
    0000B000000000000000000000000000000B0000000000000000000000000000
    00B000000000000000000000000000000B000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFF0FFFFFFC07FFFFF003FFFFC001FFFF0000FFFC00007FFC00003FFC00
    001FFC00000FFE000007FF000003C380000181C0000001800000000000000000
    000000000001000200050000000D80000063F800017FFE00637FFF00F8FFFF81
    FFFFFF1FFFFFFE3FFFFFFC7FFFFFF8FFFFFFF1FFFFFFF3FFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 955
    Height = 571
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 2
      Top = 24
      Width = 951
      Height = 545
      Align = alClient
      TabOrder = 0
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        PopupMenu = dxBarPopup_contract
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = DBBandedTableView1CustomDrawCell
        OnFocusedItemChanged = DBBandedTableView1FocusedItemChanged
        DataController.DataSource = DS_Contract
        DataController.KeyFieldNames = 'contract_id'
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'contract_id'
            Column = cxGrid1DBBandedTableView1firm_customer_name
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.BandHeaders = False
        OnCustomDrawColumnHeader = DBBandedTableView1CustomDrawColumnHeader
        OnCustomDrawFooterCell = DBBandedTableView1CustomDrawColumnHeader
        Bands = <
          item
          end>
        object cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn
          Caption = #8470' '#1079#1072#1087#1080#1089#1080
          DataBinding.FieldName = 'contract_id'
          Visible = False
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn2: TcxGridDBBandedColumn
          Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
          DataBinding.FieldName = 'contract_cod'
          Width = 73
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn
          DataBinding.FieldName = 'type_contract'
          Width = 65
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1072#1083#1086
          DataBinding.FieldName = 'date_begin'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 89
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn
          Caption = #1050#1086#1085#1077#1094
          DataBinding.FieldName = 'date_end'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 74
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn
          Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1072#1103
          DataBinding.FieldName = 'firm_self_name'
          Width = 152
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
          Caption = #1050#1083#1080#1077#1085#1090
          DataBinding.FieldName = 'firm_customer_name'
          Width = 175
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1firm_self_right_form_name: TcxGridDBBandedColumn
          DataBinding.FieldName = 'firm_self_right_form_name'
          Width = 65
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1firm_customer_right_form_name: TcxGridDBBandedColumn
          Caption = #1060#1086#1088#1084#1072
          DataBinding.FieldName = 'firm_customer_right_form_name'
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1note: TcxGridDBBandedColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'note'
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn
          Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
          DataBinding.FieldName = 'FIO_users_owner'
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1self_original_name: TcxGridDBBandedColumn
          Caption = #1052#1099
          DataBinding.FieldName = 'self_original_name'
          Width = 63
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1customer_original_name: TcxGridDBBandedColumn
          Caption = #1050#1083#1080#1077#1085#1090'/'#1055#1086#1076#1088#1103#1076#1095#1080#1082
          DataBinding.FieldName = 'customer_original_name'
          Width = 63
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1date_long: TcxGridDBBandedColumn
          Caption = #1055#1088#1086#1076#1083#1105#1085' '#1076#1086
          DataBinding.FieldName = 'date_long'
          Width = 65
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGridDBBandedColumn6: TcxGridDBBandedColumn
          DataBinding.FieldName = 'global_color'
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
      Left = 2
      Top = 2
      Width = 951
      Height = 22
      Align = alTop
      Style = 2
      TabIndex = 0
      TabOrder = 1
      Tabs.Strings = (
        #1044#1086#1075#1086#1074#1086#1088#1072' '#1089' '#1082#1083#1080#1077#1085#1090#1072#1084#1080
        #1044#1086#1075#1086#1074#1086#1088#1072' '#1089' '#1089#1091#1073#1087#1086#1076#1088#1103#1076#1095#1080#1082#1072#1084#1080)
      OnChange = cxTabControl1Change
      ClientRectBottom = 23
      ClientRectRight = 951
      ClientRectTop = 23
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonArrowWidth = 24
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LargeButtonArrowWidth = 24
    LookAndFeel.Kind = lfUltraFlat
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsXP
    UseSystemFont = True
    Left = 267
    Top = 99
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = #1054#1089#1085#1086#1074#1085#1086#1081
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 461
      FloatTop = 238
      FloatClientWidth = 23
      FloatClientHeight = 274
      ItemLinks = <
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
          ItemName = 'dxBarButton16'
        end>
      OldName = #1054#1089#1085#1086#1074#1085#1086#1081
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton5: TdxBarButton
      Caption = #1055#1086#1080#1089#1082' '#1076#1086#1075#1086#1074#1086#1088#1072
      Category = 0
      Hint = #1055#1086#1080#1089#1082' '#1076#1086#1075#1086#1074#1086#1088#1072' '#1087#1086' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      Visible = ivAlways
      ImageIndex = 42
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088
      Category = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1086#1075#1086#1074#1086#1088
      Visible = ivAlways
      ImageIndex = 2
      OnClick = dxBarButton6Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Category = 0
      Visible = ivAlways
      ImageIndex = 6
      ItemLinks = <>
    end
    object dxBarButton16: TdxBarButton
      Caption = #1044#1077#1081#1089#1090#1074#1091#1102#1097#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072
      Category = 0
      Hint = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1076#1077#1081#1089#1090#1074#1091#1102#1097#1080#1077' '#1076#1086#1075#1086#1074#1086#1088#1072
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      ImageIndex = 3
      OnClick = dxBarButton16Click
    end
  end
  object Query_Contract: TADOQuery
    Connection = fmUsersRole.ADOUsersRole
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'type_contract'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM view_contract'
      'WHERE type_contract=:type_contract'
      'AND date_end >= GETDATE()'
      'ORDER BY firm_customer_name'
      '')
    Left = 30
    Top = 84
  end
  object DS_Contract: TDataSource
    DataSet = Query_Contract
    Left = 42
    Top = 99
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = cxGrid1DBBandedTableView1contract_id
        Properties.Strings = (
          'Position.ColIndex'
          'Width')
      end
      item
        Component = cxGrid1DBBandedTableView1customer_original_name
        Properties.Strings = (
          'Position.ColIndex'
          'Width')
      end
      item
        Component = cxGrid1DBBandedTableView1date_begin
        Properties.Strings = (
          'Position.ColIndex'
          'Width')
      end
      item
        Component = cxGrid1DBBandedTableView1date_end
        Properties.Strings = (
          'Position.ColIndex'
          'Width')
      end
      item
        Component = cxGrid1DBBandedTableView1FIO_users_owner
        Properties.Strings = (
          'Position.ColIndex'
          'Width')
      end
      item
        Component = cxGrid1DBBandedTableView1firm_customer_name
        Properties.Strings = (
          'Position.ColIndex'
          'Width')
      end
      item
        Component = cxGrid1DBBandedTableView1firm_customer_right_form_name
        Properties.Strings = (
          'Position.ColIndex'
          'Width')
      end
      item
        Component = cxGrid1DBBandedTableView1firm_self_name
        Properties.Strings = (
          'Position.ColIndex'
          'Width')
      end
      item
        Component = cxGrid1DBBandedTableView1note
        Properties.Strings = (
          'Position.ColIndex'
          'Width')
      end
      item
        Component = cxGrid1DBBandedTableView1self_original_name
        Properties.Strings = (
          'Position.ColIndex'
          'Width')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width'
          'WindowState')
      end>
    StorageName = '\Software\Lis1\UsersContract'
    StorageType = stRegistry
    Left = 168
    Top = 80
  end
  object ActionList1: TActionList
    Left = 169
    Top = 156
    object Action1: TAction
      Caption = #1042#1099#1093#1086#1076
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
  object dxBarPopup_contract: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
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
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end>
    UseOwnFont = False
    Left = 246
    Top = 135
  end
end
