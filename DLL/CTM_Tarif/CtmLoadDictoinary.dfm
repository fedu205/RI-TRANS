object fmCtmLoadDictoinary: TfmCtmLoadDictoinary
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' RailTarif'
  ClientHeight = 604
  ClientWidth = 1129
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 713
    Top = 26
    Width = 5
    Height = 578
    Color = 8421631
    ParentColor = False
    ExplicitLeft = 377
  end
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 713
    Height = 578
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 0
      Top = 405
      Width = 713
      Height = 5
      Cursor = crVSplit
      Align = alBottom
      Color = 8421631
      ParentColor = False
      ExplicitLeft = 2
      ExplicitWidth = 373
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 17
      Width = 713
      Height = 388
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.ScrollbarMode = sbmClassic
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        PopupMenu = dxBarPopupMenu1
        OnKeyPress = cxGrid1DBBandedTableView1KeyPress
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
        OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
        OnFocusedRecordChanged = cxGrid1DBBandedTableView1FocusedRecordChanged
        DataController.DataSource = DS_RefBook
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cxGrid1DBBandedTableView1ID
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsCustomize.ColumnsQuickCustomization = True
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
        object cxGrid1DBBandedTableView1ID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Caption: TcxGridDBBandedColumn
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'Caption'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Type: TcxGridDBBandedColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'Type'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1KeyField: TcxGridDBBandedColumn
          Caption = #1050#1083#1102#1095#1077#1074#1086#1077' '#1087#1086#1083#1077
          DataBinding.FieldName = 'KeyField'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1SubKeyField: TcxGridDBBandedColumn
          Caption = #1044#1086#1087'. '#1082#1083#1102#1095#1077#1074#1086#1077' '#1087#1086#1083#1077
          DataBinding.FieldName = 'SubKeyField'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1FieldCount: TcxGridDBBandedColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1087#1086#1083#1077#1081
          DataBinding.FieldName = 'FieldCount'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1TableDesc: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TableDesc'
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1TableDigest: TcxGridDBBandedColumn
          Caption = #1044#1072#1081#1078#1077#1089#1090
          DataBinding.FieldName = 'TableDigest'
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBBandedTableView1
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 410
      Width = 713
      Height = 168
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 17
        Width = 713
        Height = 151
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGridDBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu2
          OnKeyPress = cxGridDBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGridDBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGridDBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_Fields
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGridDBBandedTableView1FilterOnChanged
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsCustomize.ColumnsQuickCustomization = True
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
          OnCustomDrawColumnHeader = cxGridDBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGridDBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGridDBBandedTableView1ID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Width = 85
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1field_name: TcxGridDBBandedColumn
            Caption = #1048#1084#1103' '#1087#1086#1083#1103
            DataBinding.FieldName = 'field_name'
            Width = 124
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1field_caption: TcxGridDBBandedColumn
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'field_caption'
            Width = 147
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBBandedTableView1
        end
      end
      object cxLabel1: TcxLabel
        Left = 0
        Top = 0
        Align = alTop
        Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
        ParentColor = False
        ParentFont = False
        Style.BorderColor = 6553600
        Style.BorderStyle = ebsSingle
        Style.Color = 8924941
        Style.Font.Charset = RUSSIAN_CHARSET
        Style.Font.Color = clWhite
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
    object cxLabel5: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      Caption = #1057#1087#1088#1072#1074#1080#1095#1085#1080#1082#1080
      ParentColor = False
      ParentFont = False
      Style.BorderColor = 6553600
      Style.BorderStyle = ebsSingle
      Style.Color = 8924941
      Style.Font.Charset = RUSSIAN_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
  end
  object Panel3: TPanel
    Left = 718
    Top = 26
    Width = 411
    Height = 578
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    object cxLabel2: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      Caption = #1044#1072#1085#1085#1099#1077
      ParentColor = False
      ParentFont = False
      Style.BorderColor = 6553600
      Style.BorderStyle = ebsSingle
      Style.Color = 8924941
      Style.Font.Charset = RUSSIAN_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxGrid3: TcxGrid
      Left = 0
      Top = 17
      Width = 411
      Height = 561
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.ScrollbarMode = sbmClassic
      object cxGridDBBandedTableView2: TcxGridDBBandedTableView
        PopupMenu = dxBarPopupMenu3
        OnKeyPress = cxGridDBBandedTableView2KeyPress
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = cxGridDBBandedTableView2CustomDrawCell
        OnFocusedItemChanged = cxGridDBBandedTableView2FocusedItemChanged
        DataController.DataSource = DS_RefBookData
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.OnChanged = cxGridDBBandedTableView2FilterOnChanged
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsCustomize.ColumnsQuickCustomization = True
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
        OnCustomDrawColumnHeader = cxGridDBBandedTableView2CustomDrawColumnHeader
        OnCustomDrawFooterCell = cxGridDBBandedTableView2CustomDrawColumnHeader
        Bands = <
          item
          end>
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBBandedTableView2
      end
    end
  end
  object Client_RefBook: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 256
    object Client_RefBookID: TStringField
      FieldName = 'ID'
      Size = 100
    end
    object Client_RefBookCaption: TStringField
      FieldName = 'Caption'
      Size = 200
    end
    object Client_RefBookType: TLargeintField
      FieldName = 'Type'
    end
    object Client_RefBookKeyField: TStringField
      FieldName = 'KeyField'
      Size = 100
    end
    object Client_RefBookSubKeyField: TStringField
      FieldName = 'SubKeyField'
      Size = 100
    end
    object Client_RefBookFieldCount: TIntegerField
      FieldName = 'FieldCount'
    end
    object Client_RefBookTableDesc: TStringField
      FieldName = 'TableDesc'
      Size = 500
    end
    object Client_RefBookTableDigest: TIntegerField
      FieldName = 'TableDigest'
    end
  end
  object DS_RefBook: TDataSource
    DataSet = Client_RefBook
    Left = 280
    Top = 264
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
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
    Left = 488
    Top = 288
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
      FloatLeft = 1014
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
          ItemName = 'dxBarButton22'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton24'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton2: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' LIS'
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' LIS'
      Visible = ivNever
      ImageIndex = 56
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1082#1088#1080#1087#1090' SQL'
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1089#1082#1088#1080#1087#1090' SQL'
      Visible = ivNever
      ImageIndex = 98
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 56
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end>
    end
    object dxBarButton4: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' INF_OBJ'
      Category = 0
      Enabled = False
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' INF_OBJ'
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton5Click
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    object dxBarButton6: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton7Click
    end
    object dxBarButton8: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton10Click
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton14'
        end>
    end
    object dxBarButton11: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton11Click
    end
    object dxBarButton12: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton12Click
    end
    object dxBarButton13: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton13Click
    end
    object dxBarButton14: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton14Click
    end
    object dxBarButton15: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton15Click
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton19'
        end>
    end
    object dxBarButton16: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton16Click
    end
    object dxBarButton17: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton17Click
    end
    object dxBarButton18: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton18Click
    end
    object dxBarButton19: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton19Click
    end
    object dxBarButton20: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
      Visible = ivAlways
      ImageIndex = 85
      OnClick = dxBarButton20Click
    end
    object dxBarButton21: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' LIS2'
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' LIS2'
      Visible = ivNever
      ImageIndex = 56
      OnClick = dxBarButton21Click
    end
    object dxBarButton22: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1056#1086#1076' '#1055#1057
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1056#1086#1076' '#1055#1057
      Visible = ivAlways
      OnClick = dxBarButton22Click
    end
    object dxBarButton23: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1057#1087#1077#1094'. '#1082#1086#1085#1090'.'
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1057#1087#1077#1094'. '#1082#1086#1085#1090'.'
      Visible = ivAlways
      OnClick = dxBarButton23Click
    end
    object dxBarButton1: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1042#1057#1045' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' '#1074' '#1051#1048#1057#1077
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1042#1057#1045' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' '#1074' '#1051#1048#1057#1077
      Visible = ivAlways
      ImageIndex = 56
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton21Click
    end
    object dxBarButton24: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      OnClick = dxBarButton24Click
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 9895994
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
          00010000000D00000020000000220000001C000000140000000C000000050000
          0001000000010000000000000000000000000000000000000000000000000000
          000A0000003A0000007900000083000000700000005A00000045000000320000
          00240000001A0000000F00000003000000000000000000000000000000011E15
          1148A08476FE846E61E446332AC1281C17A9130D0B9C05030299000000930000
          0083000000680000003B0000000D00000000000000000000000000000003513C
          30A2F0E1D7FFD6B3A0FFF2E7E0FFDCD8D6FFB6ABA4FFB39D93FE81695DE24734
          2ABF251C179C0000004D000000100000000000000000000000000201010E9C85
          76EDD4AA93FF873007FF640B00FF2F0500FFE9E8E1FFFFFFFFFFFFFFFFFFEBE5
          E3FF33241EA500000032000000070000000000000000000000001D161145CDBA
          AEFFFFFBF4FFFFFFFFFFFFFFFFFFD4DFF2FF1A1F99FFDCDAEEFFFFFFFFFF9C84
          7BF3050403700000001C000000010000000000000000000000003E2C237EE7D8
          CEFFE3C5B2FFE4C5B4FFE7CBB8FFAEA1C4FF0025E9FF0007A9FFDFDBE9FF4633
          27B90000005E00000016000000010000000000000000000000005B4035ABF6E7
          DBFFE2C4B2FFE3C6B5FFE3C7B7FFF3D3B6FF253AD0FF184CFFFF01079AFF150F
          14A30000007D0000002E000000070000000000000000000000007F6456CEF2DF
          CFFFE2C2AFFFE2C4B2FFE2C5B4FFEED8C6FFD9DFF9FF012BEBFF1243FFFF0D0C
          4DD30101019F0000006500000020000000040000000000000000A18474EBECD4
          C2FFE1C1ADFFE1C2AEFFE1C3B0FFE3C4B1FFF2D2B7FF667EF1FF9DA3B1FF515B
          73FF090934B80000009800000052000000150000000100000000B99988FCE8CD
          B9FFE0BFA9FFE0C0ABFFE0C0ACFFF2E5D8FFFDF9F0FFFFFFF7FF6A6E95FF2859
          F7FF0522D6FE000021A30000008A0000003D0000000B00000000C1A491FFE7C9
          B3FFDFBCA5FFDFBCA6FFDEBCA6FFE7CCBBFFE9D0BFFFEAD7C7FF51403ECA878C
          92FB2351EDFF010FA7F400000B9F000000740000002400000004C4A793FFEFD5
          BFFFEBD1BDFFEFD9C8FFF4E1D0FFF7E8D9FFF6E9DBFFDFCDC0FF3424198D2633
          5C8D848EAAFF1346FFFF000169D1000001970000004A0000000EAF8B77FFC7AD
          9AFFB99A8AFCA88879E98D6E5ED1705245BB594034A34C352C8D1C140E3C0000
          030C9A9A8DBF4563BEFF092EE2FF0000229700000065000000181F161230100C
          0A1F0302010A0000000200000001000000010000000100000001000000000000
          00000D0C0D15848588CF6371A0FF1E1F49B20000005300000017000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000020C0D40455E876B6A64CF0000001700000007}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000999897A8A6A09CCC6B584ACC735F50CC6E5A4BCC000000CC000000CC0000
          00CC000000E7000000FF000000FF000000FF000000F00000000000000000C9C2
          BEE49E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA9586FF634935FFB4AD
          A8E724242427000000000000000000000000000000000000000000000000B08F
          7BF0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
          35FFB2ABA6E41F1F1F210000000000000000000000000000000000000000B399
          87E1F4ECE7FFF1E7E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA791
          81FF634935FFB0A9A4E11C1C1C1E00000000000000000000000000000000B196
          84E1FBFBF9FFFFFFFFFFFDFDFCFFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFFAA95
          86FFA79181FF634935FFADA6A2DE1919191B000000000000000000000000CEC9
          C7E1C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
          FFFFAA9586FFA79181FF634935FFA49D99D20000000000000000000000000000
          0000827E7B90C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
          DBFFFFFFFFFFAA9586FFA79181FF604633F60000000000000000000000000000
          000000000000827E7B90C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
          DEFFEFE2DBFFFFFFFFFFAA9586FF7A5E4AFF0000000000000000000000000000
          0000000000000000000088848096C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EF
          EBFFF0E5DEFFEFE2DBFFFFFFFFFF997C68FF0606060600000000000000000000
          000000000000000000000000000088848096C9AA96FFFFFFFFFFFFFFFFFFFCFA
          F9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF0E0E0E0F00000000000000000000
          0000000000000000000000000000000000008B868399C9AA96FFFFFFFFFFFFFF
          FFFFFCFBFAFFE1D1C8FFAD8873FF989290AB0000000000000000000000000000
          000000000000000000000000000000000000000000008D89859CC9AA96FFC09E
          89FFB28C75FFB89784FFDCD8D5F31919191B0000000000000000000000000000
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
          000000000000000000000000000000000000000000000000000000000000CF92
          92FCC29292EFAA8080DA886464AF6E535392554343743F323257000000000000
          000000000000000000000000000000000000000000000000000000000000D399
          99FED8A2A2FFFFE3E3FFFFD8D8FFFECFCFFFF6C5C5FFECBCBCFFD0ACACFFC8A8
          A8FFC1A3A3FCB29A9AEA9A8A8AD57A7171A85D5858830000000000000000D79E
          9EFEE2BFBFFFDBAFAFFFFFEFEFFFFFE7E7FFFFE3E3FFFFE0E0FFFFDFDFFFFFDC
          DCFFFFDADAFFFFDADAFFE6CBCBFFB8A4A4FF9F9494F50000000000000000D99C
          9CFEFFFFFFFFDAA2A2FFF4DCDCFFFFFFFFFFFFF7F7FFFFF2F2FFFFF0F0FFFFED
          EDFFFFECECFFFFF0F0FFBDA7A7FFEDBDBDFFAC9B9BFA0000000000000000D69E
          9EFEFFFFFFFFFFECECFFD69A9AFFF6E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC19F9FFFEBC3C3FFFFE6E6FFAD9B9BFA0000000000000000D99E
          9EFEFFFFFFFFFFF6F6FFFFF1F2FFDAA1A2FFF7D6D9FFFFFFFFFFFFFFFFFFF8EB
          EBFFC19999FFF9E7E7FFFFF2F2FFFFFCFCFFC49C9CFD0000000000000000DC9E
          9EFEFFFFFFFFFFFFFFFFFFE2EAFFCEA8A2FFBCAD94FFE19FA3FFC19696FFAF8C
          8CFFE0A8A8FFF6DBDEFFFFFFFFFFFFFFFFFFC59C9CFD0000000000000000E0A1
          A1FEFFFFFFFFE2A6AAFF8D9360FF10CB37FF52D269FFFEF1FFFFACB1B2FFB4B8
          B8FFCDD0D3FFA0A885FFD5A29FFFFFF5FEFFD49F9FFC0000000000000000F79C
          9CFED89D9DFFD7CDD2FFA7CCABFF009100FF21C942FFA4D2A4FFCFC2CEFF9998
          99FFA1A0A1FFC9C8C9FF09BF30FF84A874FFD98C9BF40000000000000000D786
          86DFD2C7C7FFD3DBDCFFEFDDEFFF0AAB17FF16B527FF1CC33AFFBAD6B6FFC3B6
          C2FFB7B4B7FFE9D5E6FF3CBC4FFF1DCA4BFF059615E300000000000000000000
          0000C57D7DC9EDAFAFFEE7E3F0FF55BC5DFF1FBF3AFF26C240FF26CE4EFF76C3
          79FFECDDE7FFF6D9EFFF33BF50FF21BC41F50000000000000000000000000000
          00000000000094626296F4A6AAFC99C89BFF20CA49FF2EC74FFF16B127FF37DA
          67FF19C139FF26C54BFF12A026DF000000000000000000000000000000000000
          0000000000000000000000000000DB878DDE0CB728FF16B228FF32CC59FF15AE
          25FF34CD5AFF0F8A1CC400000000000000000000000000000000000000000000
          000000000000000000000000000000000000006A01A9167115B10A8F12DB0045
          0074015801910000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF000080FF000080010000800100008001000080010000800100008001
          0000800100008001000080010000C0030000E0070000F80F0000FC1F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000C0A0950696159EF080E
          0FBF014A659F34A8D7FF046E99BF001A26300000000000000000000000000000
          00000000000000000000000000000000000000000000876C55DFFFE4C5FF2994
          BCFF00E9F8FF2ACBFFFF7BCDFFFF34ABDBFF0047678000000000000000000000
          000000000020000000300000000007010040280C00BF845023FF839A91FF00C0
          EDFF00FEFFFF00EBFFFF44D2FFFF11AEDFFF57BDE3FF0473A0BF000000000000
          00209D8E7FEF645548FF1C0500DF763A03FFCE8B4CFF8A8E76FF00BFF3FF00EB
          FFFF33C2AEFF4CAB8BFF837C46FF09BFE2FF1ABAFAFF12A3E3FF000000000801
          0050F6CAA1FFC58A52FFD39053FFF7DCC1FFFFFFFCFF7AC4D5FF309098FFA361
          11FF836C34FFB08252FFB44500FFB05500FF4A978BFF00AAEDFF0E0904106E41
          16BFD99758FFF9D7B6FFFFF6E8FFFFF7E9FFFFF8EBFF7AC5D4FF7A5731FF9F30
          00FF866546FFB46034FF9E2F00FFA63600FFAF3F00FF457C7BFFD28F4EEFFAD2
          AAFFFFECD4FFFFEDD5FFFFEED6FFFFEED8FFFFEFD9FF8BD3E4FF6C4A32FFBF7A
          57FF84ECF4FFA4C7BFFFAA5023FF972700FF9A2A00FF1B7F9EEFE8A767FFFFE3
          C0FFFFE3C2FFFFE4C4FFFFE5C5FFFFE5C7FFFFE7C8FFE2DBC8FF46D3FFFF11E8
          FFFF00EDFFFF00E8FFFF46EDFFFFB29E8BFF874620FF006E999FEAA969FFFFDB
          B0FFFFDCB1FFFFDCB2FFFFDDB4FFFFDEB5FFFFE1BCFFFFEEDCFFF4AE71FF7AB1
          B0FF00C7FAFF00D7FFFF00DDFFFF00CDFFFF02A9DFDF00171F20F5B97BFFFFD2
          9EFFFFD39FFFFFD3A2FFFFD4A3FFFFE8CAFFFFF3E1FFFFFAF0FFFFF2DFFFFFD4
          AEFFF4AA6BFF7AAFADFF1AA3CAEF004760600000000000000000F6BA7BFFFFCD
          96FFFFD4A4FFFFE5C7FFFFEACDFFFFD8AAFFFFCD96FFFFCD96FFFFE2BFFFFFEA
          CDFFFFEDD7FFFFCC9EFFA1551BBF000000000000000000000000F8C48DFFFFE3
          C1FFFFE0BAFFFFCD96FFFFCD96FFFFCD96FFFFCD96FFFFCD96FFFFCD96FFFFCA
          91FFF6BE86FFECB177FF6E441D80000000000000000000000000936E459FE1AA
          6FEFFAC083FFFFC990FFFFCD96FFFFCD96FFFFCD96FFFBBF83FFEFB06EFF9A6A
          38AF54381D600E09051000000000000000000000000000000000000000000000
          00004A382350936D439FE1A96DEFF4B979FFA17547AF563E23600E0A06100000
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
          000000000000000000000000000000000000000000000000CC00000077000000
          0000C0DCC0000000000000000000222222000000000000000000000000000000
          000000000000000000000000000044444400000000000000CC00000000000000
          000000000000C0DCC000C0DCC000C0DCC0000000000000000000000000000000
          00000000000000000000A4A0A0000000000000005500000000000000CC000000
          5500000099000000CC000000CC00C0DCC000C0DCC00000000000000000000000
          00000000000000000000000055000000CC00000000000000CC000000CC0000FF
          FF00006666000000CC000000CC000000CC000000CC0000000000000000000000
          000000000000000055000000CC00000000000000CC000000CC000000CC000000
          CC000000CC000000CC000000CC0000FFFF000000CC0000000000000000001111
          1100000000000000CC00000000000000CC000000CC000000CC000000CC000000
          CC000000CC000000CC000000CC000000CC000000000000000000000000000000
          000000000000000000000000CC000000CC000000550000000000FFCCCC005555
          5500000000000000BB000000CC00000000000000000000000000000000000000
          CC00000000000000CC000000CC0044444400FF99990000000000FFCCCC00FFCC
          CC00FFCCCC00FF99990022222200000000000000000000000000000000000000
          00000000CC000000CC0033333300FF999900000000000000CC00000077000000
          000099999900FF99990000000000000000000000000000000000000000000000
          CC000000CC0022222200FF999900000000000000CC000000CC000000CC000000
          CC000000CC000000000000000000000000000000000000000000000000000000
          CC000000BB00FF999900000000000000CC000000CC000000CC000000CC000000
          CC00000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000CC000000CC000000CC000000CC000000CC000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FC1F0000F8030000F0010000F0000000F0000000C00000008001
          0000800300008007000080070000800F0000801F0000C03F0000F07F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005555550055555500000000000000000000000000000000000000
          0000000000005555550055555500000000000000000000000000000000000000
          00005555550099999900C0C0C000000000000000000000000000000000000000
          00005555550099999900C0C0C0000000000000000000000000000099FF000000
          000055555500C0C0C00055555500000000000099FF000099FF000099FF000000
          000055555500C0C0C00055555500000000000099FF00000000000099FF000099
          FF00000000000000000000000000000000000099FF000099FF000099FF000099
          FF00000000000000000000000000000000000099FF0000000000444444000099
          FF0099999900999999000099FF000099FF00003366000099FF000099FF000099
          FF000099FF000099FF000099FF000099FF000099FF0000000000444444009999
          99000099FF000099FF00999999000099FF00003366000099FF000099FF000099
          FF000099FF000099FF000099FF000099FF000099FF0000000000444444009999
          99000099FF000099FF0099999900000000000000000000336600003366000033
          660000336600003366000033660000336600003366000000000000000000FFFF
          99000033FF000033FF000033FF00000000000000000000CCFF0000CCFF0000CC
          FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF000000000000000000FFFF
          9900FFFF99000033FF00FFFF9900000000000000000000CCFF0000CCFF0000CC
          FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF000000000000000000FFFF
          99006699FF006699FF00FFFF9900000000000000000000CCFF0000CCFF0000CC
          FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF000000000000000000FFFF
          990000CCFF0000CCFF00FFFF9900000000000000000000CCFF0000CCFF0000CC
          FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF000000000000000000FFFF
          9900FFFF9900FFFF9900FFFF9900000000000000000000CCFF0000CCFF0000CC
          FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000000000000000000000
          0000000000000000000000000000000000000099FF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000099
          FF000099FF000099FF000099FF000099FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C3C300008181000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000008001000081FF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000023A500000395302022D5211110E810B0B
          0B5700000000000000000000000000000000000000000000000000000000001B
          A3B61941EFFF1B48F6FF1B4AFEFF1745FCFF4D69F4FF000FBCFF24254BFF4747
          42FE000000000A0A0A5300000000000000000000000000000000000000000021
          C5D7B1B7F2FF2F56E0FF2C51D7FF2648C0FF6A83ECFF001AD4FF34398AFFA1A1
          B8FF141220E626251DFF2E2E2CFC161616C7000000000000000000000000052C
          DEE44C5F96FF59543EFF504C39FF49442DFF37405CFF0B24C6FF000B97FF0A0C
          60FF1B2358FF2D42B2FFB1AFA9FF73736FFF0E0E189700000000000000001237
          D3F25064A7FF3F5BB8FF3555C1FF2D4FC5FF2A4DC2FF0F27C0FF0011C6FF1B27
          B2FE050C9CFF000ECAFF3A3A33FF747174FF060C6CEE00000000000000000933
          E6EA3067FFFF2D61FFFF3563FFFF3862F9FF3B62F6FF042CE6FF000ED2FF6B73
          A4FE868478FF515688FF1F35B2FF000DB1FE000C83BF0000000000000000002F
          DBDBD8A6A7FFE2A596FFD09487FFC18577FFB97964FF4C53C2FFA07C9BFF6C78
          B2FE82817CFF7D7D79FF7C7A72FF706F6EFE292C3FBD00000000000000000028
          C2C2C697A8FFCB99A0FFBD90A0FFB78B99FFB78994FF3F4CC9FFAD7B86FF7F8A
          BBFF838380FF7E7E7EFF7B7B7BFF7B7B7AFF31302FB900000000000000001530
          8C8C4579FEFF5C91FEFF4A80FEFF3970FEFF2D62FEFF1A4FFEFF0A33EEFFADAF
          B6FF868684FF838383FF818181FF808080FF313131B600000000000000000000
          00000000000012276262949497FDC2C3CAFFBBBCC3FFBDBDBCFFC3C0B6FFBBBB
          B9FF878787FF878787FF878787FF878787FF383838B300000000000000000000
          000000000000000000009B9A9AEEACACAAFFB2B2B1FFCDCCCBFFD5D5D4FFE0E0
          E0FFCDCDCDFFB6B6B6FFA4A4A4FF949494FF393939B700000000000000000000
          000000000000000000000000000000000000000000003D3D3D73494949895353
          539E545454A6525252A64E4E4EA64C4C4CA61E1E1E5500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000F83F0000802F00008003000080010000800100008001
          0000800100008001000080010000E0010000F0010000FE010000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008484840084848400000000000000000084848400848484008484
          8400848484008400840000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF000000FF0000000000848484008484
          8400C6C6C600C6C6C60084008400000000000000000000000000000000000000
          00000000000000008400000084000000FF000000FF000000FF000000FF000000
          FF000000FF000000840000008400000000000000000000000000000000000000
          0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF0000008400000000000000000000000000000000000000
          0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF0000008400000000000000000000000000000000000000
          0000000000000000FF000000FF000000FF000000FF000000FF000000FF00C6C6
          C6000000FF000000FF0000008400000000000000000000000000000000000000
          0000000000000000000000000000848400008484000084840000848400008484
          0000C6C6C6008484000000000000000000000000000000000000000000000000
          0000000000000000000000000000848400008484000084840000848400008484
          0000848400008484000000000000000000000000000000000000000000000000
          0000000000000000FF0084840000848400008484000084840000848400008484
          0000848400008484000000008400000000000000000000000000000000000000
          000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
          0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600848484000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000848484000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F7DF0000E00F0000E0070000E0070000E0070000E0070000E0070000E007
          0000E0070000E0070000E0070000E00F0000F81F0000FEFF0000FEFF0000FB3F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000463B34ED181818183333333300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000473B33ED3E352DFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00006E5C50DE0606060666574BFF594B41FF4C4038FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000007E6B5DFF726154FF66564BFF594B42FF00000000000000000000
          000000000000E0EDF3FF81ACBEFF6490A2FF5D8396FF4A768DFF2F637FE7295B
          76CC4E6F81C0806D5EF07E6B5CFF736154FF66564BFF00000000000000000000
          0000000000006797ADFF51B0D1FF84D5E8FFA1EBF6FF73E4FFFF24BEF3FF039F
          DEFF148BBEFF4A7692FC181818180000000000000000605247F0000000000000
          0000000000004F88A2F34DD7FFFF90EAFAFFA1EBF6FF71D9F4FF24BCF2FF01A7
          E8FF039CDAFF2A6384FF1E1E1E1E000000002D2D2D2D736154FF000000000000
          000000000000528CA6F04ED2FAFF8DE4F4FFA1EBF6FF70D7F2FF24B9EEFF01A7
          E8FF039CDAFF2F6888FF927B6BF6917A6AFF887464FF18181818000000000000
          0000212121215592ACF34FD1FBFF8EE4F5FFA1EBF6FF70D7F2FF24B9EEFF01A7
          E8FF039CDAFF306B8AFF33333333121212120000000000000000000000000F0F
          0F0F43854BFF407D47FF3B7643FF8DE3F5FFA1EBF6FF72D9F2FF24B9EEFF01A7
          E8FF039CDAFF326D8DFF0C0C0C0C000000000000000000000000030303033333
          3333488E50FF89D197FF3F7D47FF8DE3F4FFA1EBF6FF6FD7F2FF1FB7EEFF01A7
          E8FF039CDAFF346F8FFF0F0F0F0F000000000000000000000000509C57F0519E
          58FF4D9554FF90D69EFF43854BFF407E47FF3C7643FF6ED6F2FF1FB7EEFF01A7
          E8FF039CDAFF317092FF1818181800000000000000000000000054A45AF094D8
          A0FF8BD399FF94D8A0FF94D8A0FF8BD399FF407E47FFA6EDF8FF94E7F8FF71D9
          F6FF3CBDE9FF437C97FF1E1E1E1E000000000000000000000000519F57E159AE
          60FF55A65CFF89D197FF4C9653FF478D4FFF44854BFFC5F9FDFFC5F9FDFFC5F9
          FDFFA0DFEAFF6691A2FF27272727000000000000000000000000000000000F0F
          0F0F59AE60FF90D69EFF509E58FF76ABBAFF70A3B3FF6C9DAFFF6B9BAEFF6FA2
          B4FF87B2C2FFC3DBE4FF2D2D2D2D000000000000000000000000000000000000
          00004A9050CC59AE60FF55A75CFF272727270000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008484840000000000000000008484840000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008400
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008484840000000000000000000000000000000000000000008400
          0000840000000000000000000000000000008484840000FFFF0000FFFF000084
          8400008484000000000084848400000000000000000000000000000000008400
          000084000000840000000000000084848400FFFFFF0000FFFF000084840000FF
          FF00008484000084840000000000000000000000000000000000000000008400
          00008400000000000000000000008484840000FFFF0000FFFF0000FFFF000084
          8400008484000000000000000000000000000000000000000000000000008400
          000000000000000000000000000084848400FFFFFF0000FFFF000084840000FF
          FF00008484000084840000000000000000000000000000000000000000000000
          00000000000000000000000000008484840000FFFF0000840000848484000000
          0000008484000000000000000000000000000000000000000000000000000000
          00000000000000000000000000008484840084848400FFFFFF0000FFFF00FFFF
          FF0000FFFF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000084848400FFFFFF0000FFFF00FFFFFF0000FF
          FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
          00000000000000000000000000000000000084848400FFFFFF0000FFFF00FFFF
          FF0000FFFF008484840000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400848484008484
          8400848484000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFF70000FFDB0000FFE10000FFE10000FFFD0000BE0E00009C0600008801
          000098070000B8070000F8070000F8070000F8070000FC0F0000FE1F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000264C
          73BF36699CFF3B6EA1FF4073A6FF4578ABFF497CAFFF4D80B3FF4D80B3FF497C
          AFFF4578ABFF4073A6FF3B6EA1FF36699CFF264C73BF00000000000000003568
          9BFF93B9E0FF6699CCFF6699CCFF6699CCFF6699CCFF6699CCFF6699CCFF6699
          CCFF6699CCFF6699CCFF6699CCFF6699CCFF35689BFF00000000000000000000
          0000396C9FFF96BBE1FF6D9ECFFF6D9ECFFF9DC2E7FF9DC2E7FF9DC2E7FF9DC2
          E7FF9DC2E7FF9DC2E7FF6D9ECFFF6D9ECFFF396C9FFF00000000000000000000
          0000000000003C6FA2FF9ABEE3FF75A5D4FF6797C7FF4A7DAFFF3C6FA2FF3C6F
          A2FF3C6FA2FF4A7DAFFF75A5D4FF75A5D4FF3C6FA2FF00000000000000000000
          000000000000000000004174A7FF9EC2E6FF80ADD9FF709FCCFF4174A7FF0000
          0000000000004174A7FF80ADD9FF80ADD9FF4174A7FF00000000000000000000
          00000000000000000000000000004578ABFFA3C6E9FF8CB6DFFF7AA6D2FF4578
          ABFF000000004578ABFF8CB6DFFF8CB6DFFF4578ABFF00000000000000000000
          0000000000000000000000000000000000004A7DB0FFA9CAECFF99BFE5FF85AE
          D8FF4A7DB0FF4A7DB0FF99BFE5FF99BFE5FF4A7DB0FF00000000000000000000
          000000000000000000000000000000000000000000004F82B5FFAECEEFFFA6C8
          ECFF90B6DEFF6594C3FFA6C8ECFFA6C8ECFF4F82B5FF00000000000000000000
          00000000000000000000000000000000000000000000000000005487BAFFB3D2
          F2FFB2D1F2FF9ABEE4FFB2D1F2FFB2D1F2FF5487BAFF00000000000000000000
          000000000000000000000000000000000000000000000000000000000000588B
          BEFFB8D5F4FFBCD9F7FFBCD9F7FFBCD9F7FF588BBEFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005D90C3FFBCD9F7FFC5E0FCFFC5E0FCFF5D90C3FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000006093C6FFBFDBF8FFCCE5FFFF6093C6FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006497CAFFBFDBF9FF6497CAFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000006699CCFF4C7399BF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A27965CCC9967EFFC5927CFFC18E7AFFBD8A78FFB98676FFB58274FFB17E
          72FFAD7A70FFA9766EFFA5726CFF845B56CC000000000000000000000000A47C
          66CCEEDACEFFF9F9F9FFF9F9F9FFFAFAFAFFFCFCFCFFFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC7C4FF845B56CC0000000000000000D29F
          82FFFFFFFFFFFFF0E1FF0099CCFF0099CCFF0099CCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5726CFF0000000000000000D7A4
          84FFFFFFFFFFFFF0E1FFFFF6ECFFFFFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9766EFF0000000000000000DCA9
          87FFFFFFFFFFFFF0E1FFFFF6ECFF0012BFFF0012BFFF0012BFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE7B70FF0000000000000000E1AE
          8AFFFFFFFFFFFFEEDDFFFFF4E8FFFFF9F3FFFFFDFBFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB38073FF0000000000000000E5B2
          8CFFFFFFFFFFFFEDDAFFFFF2E5FFFFF6ECFFCC6600FFCC6600FFCC6600FFCC66
          00FFCC6600FFCC6600FFCC6600FFFFFFFFFFB78475FF0000000000000000E9B6
          8EFFFFFFFFFFFFEBD6FFFFEEDDFFFFF4E8FFFFF7F0FFFFFBF7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFBA8777FF0000000000000000EDBA
          90FFFFFFFFFFFFE7CEFFFFEBD6FF0012BFFF0012BFFF0012BFFFFFFBF7FFFFFD
          FBFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFBE8B79FF0000000000000000F1BE
          92FFFFFFFFFFFFE4C7FFFFE9D2FFFFEDDAFFFFF0E1FFFFF4E8FFFFF6ECFFFFF9
          F3FFFFFBF7FFFFFBF7FFFFFBF7FFFAFAFAFFC28F7BFF0000000000000000F5C2
          94FFFFFFFFFFFFE0C0FF007E00FF007E00FF007E00FF007E00FF007E00FF007E
          00FF007E00FFFFF6ECFFFFF6ECFFF9F9F9FFC6937DFF0000000000000000F9C6
          96FFFFFFFFFFFFDCB8FFFFE0C0FFFFE4C7FFFFE7CEFFFFEBD6FFFFEDDAFFFFEE
          DDFFFFF0E1FFFFF0E1FFFFF0E1FFF9F9F9FFC9967EFF0000000000000000C299
          75CCFDE8D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEEDACEFF885F58CC00000000000000000000
          0000BE9573CCF9C696FFF5C294FFF1BE92FFEDBA90FFE9B68EFFE5B28CFFE1AE
          8AFFDDAA88FFD9A686FFD5A284FF885F58CC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E3C7C500C8969400B667
          6800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00C7918F00D1BAB400E2E6DD00CB9F
          9C00B6676800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00E3C6C600BB7D7A00D1BAB400E8F6EB00E9F9EE00E9F9
          EE00C48C8A00B6676800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00C48E8D00C1949000E2E6DD00E4EBE100C4999400B9757400C0C3
          C100E9F9EE00C38A8800B6676800FF00FF00FF00FF00FF00FF00FF00FF00DCBA
          B900B87B7900D3C5BE00E9F9EE00D7C7C000C1838100C37D7D00C2757600BA6E
          6D00C7CCC900E9F9EE00C2888700B6676800FF00FF00FF00FF00B3918F00BA93
          9000E6F1E700E4EBE100BF918E00C2858300C9808000C87D7F00C67D7D00C27B
          7D00BA6E6D00C7CCC900E9F9EE00C1878500B6676800FF00FF00B8767400E4E8
          DF00CFBFB900BB7B7900C17F7F00C6838300C8828200C7838300C67F8100C57D
          7C00C37A7B00B96D6C00C7CCC900E9F9EE00C0858300B6676800C1817F00D2AB
          A800C2838100CA908C00CE8D8C00CC8B8A00CC878900C9868700CA828500C981
          8500C67F8000C2797900B96C6B00C7CCC900E9F9EE00C48D8B00D6A19D00D3AA
          A800CC8F8E00DDA19F00D89A9B00D6949700D3919300D28F9100D08C8E00CE8A
          8A00CD888900C8828200BF767700B86B6A00C7CCC900DFE3DC00FF00FF00D6A1
          9D00EFD1D100D1989500E1A9A800E2ABAB00DFA4A600DC9FA000D89B9B00D498
          9700D1919200CC8A8A00C8838400BF737400B86B6A00C6B1AF00FF00FF00FF00
          FF00D6A19D00EDC9C900D1989500E4B0AF00EBB7B700E6B0B000E2A8A900DDA2
          A200D99C9C00D4959500CE8F8F00CB878700BE727300B86D6C00FF00FF00FF00
          FF00FF00FF00D6A19D00EDC9C900D1989500E6B3B200F0BEBF00EBB7B700E8B2
          B100E5AFAE00E1ABAA00DCA2A300D6989800CF8E8E00CE939100FF00FF00FF00
          FF00FF00FF00FF00FF00D6A19D00EDC9C900D1989500E8B6B500F4C5C500F2C0
          C300F0C0C100EDBBBC00E5AFAF00D5A6A400DEB6B600FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00D6A19D00EDC9C900D1989500ECC1C000E4BE
          BD00E1BEBC00D7AAA900DEB4B400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00D6A19D00EDD1D100D9A09F00D6A9
          A800DDB5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00DAA8A800DCB3B300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E9E5E20074574300684D3A0064483600694C39006B4E
          39006C503B006C513D007152400083655400957A6C00AF988B00FFFFFF00FFFF
          FF00FFFFFF00E6E1DD007B594700B87674006D513D005B433200B5676700B667
          6800BB6F6F00BD727100C1767A00C7818300C27D7C009B6C5F00FFFFFF00FFFF
          FF00E3DDD90079584600B8767400E3DAD50098775E00977660009F836E00CABA
          AF00D7CCC300E3DAD500E9E2DE00E6DDD900BF7A7800AE686500FFFFFF00DED7
          D20079584600B8767400CB9B9A00E3DAD50098775E00E5D1C200D9CEC6009B7B
          6600AC918000DDD2CB00E9E1DC00EAE3DF00C5808100B76E6E00FAF9F8007958
          4600B3736F00C8959400F0EBE800E3DAD5009F7A6000DFCABB00E9E3DE00EBE5
          E100D7C2B5009B7B6600DFD4CE00ECE6E000CB878A00BD757500FFFFFF00AD7F
          7700BA7A7800FFFFFF00F0EBE800E3DAD500A17C6200DFCABB00E9E3DE00F7F5
          F300FFFFFF00FFFFFF0097766000F0EBE800CF8D8F00C27A7C00FFFFFF00B77F
          7A00BA7B7800FFFFFF00F0EBE800E3DAD500A87F6800DFCABB00E9E3DE00F7F5
          F300FFFFFF00FFFFFF0097776000EFEAE700D4939500C9848700FFFFFF00C287
          8400BD7C7900FFFFFF00F0EBE800E3DAD500AF866C00DFCABB00E9E3DE00F7F5
          F300FFFFFF00FFFFFF009E7A6400EFE8E500D5969800CD898C00FFFFFF00C48A
          8800BD7E7B00FFFFFF00F0EBE800E3DAD500C2977D00DFCABB00E9E3DE00F7F5
          F300FFFFFF00FFFFFF00A37C6600ECE6E100D7989B00D08D9000FFFFFF00C88D
          8D00C0817D00FFFDFF00F0EBE800E3DAD500C89B8100DFCABB00E9E3DE00F7F5
          F300FFFFFF00FFFFFF00A8806A00EBE1DF00D7989B00D5959800FFFFFF00CF96
          9600C2847F00FFFFFE00F0EBE800E2CEC100DCBAA900E1C4B300E9E3DE00F7F5
          F300FFFFFF00FFFFFF00B98B7100D99C9E00E2A9AC00FDFAFA00FFFFFF00D49D
          9D00C6898100FFFEFE00F0EBE700E5C3AF00FEFEFE00E9D3CA00CAAEA100CAA3
          8E00F6F0EC00FFFFFF00C4917500FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2AF
          B100C9908500FFFEFF00F3EAE500DCB19600FFFFFF00FFFFFF00FFFFFF00E8D5
          CA00C7AC9E00CAA38E00CFA79000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00D5A38D00FFFFFF00DFB69F00F5E9E300FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00DBAD9300F8F0EC00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000012121215525252638A8A8AA7B4B4B4DCCCCCCCFBB1B1
          B1DC868686A74F4F4F6311111115000000000000000000000000000000000000
          0000000000004F474363A9897BE5AE7F6CFFA06955FF9A5F4BFF9E6651FFA977
          64FFB79587FFC8C0BCFF8C8C8CB0353535430000000000000000000000000000
          00007A6458A0AE806BFBB88D7AFFCBA792FFD6B49CFFDCBDA2FFD4B39BFFC7A1
          8FFFB18270FFA6735FFFBEA59BFFA1A1A1C93535354300000000000000006651
          4688B28571FBCBA692FFDCB696FFD6AA86FFD2A47DFFCFA178FFCFA27BFFD1A7
          83FFD7B394FFC29B88FFA77360FFBFA69CFF8D8D8DB011111115221B172CAE84
          6FF3CEAA95FFDCB38FFFD4A47AFFD2A177FFD1A077FFD1A076FFCF9F76FFCE9E
          75FFCE9F77FFD4AD8CFFC29B89FFA77562FFCAC2BEFF50505063816555A9C39D
          87FFE1B998FFD8A77CFFD6A478FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
          FDFFCE9E75FFCEA077FFD7B395FFB38471FFB99889FF888888A7AA856FE6D6B4
          9EFFDEB088FFDAA67AFFD8A479FFD7A478FFECD6C3FFFDFDFDFFF5EAE1FFD1A0
          77FFD1A076FFCF9F76FFD3A884FFC8A490FFAB7C68FFB5B5B5DCB78E75FBE2BF
          A4FFDEAC80FFDBA77AFFDAA67AFFD9A579FFEDD7C3FFFDFDFDFFF5EAE1FFD3A1
          77FFD2A177FFD1A077FFD2A47DFFD7B59CFFA36D57FFD2D2D2FBB78F76FFE9C5
          A8FFE0AC7EFFDDA87BFFDCA77AFFFDFDFDFFFDFDFDFFFDFDFDFFF5EBE1FFD5A3
          78FFD4A277FFD2A177FFD2A27AFFDFBFA3FF9F6752FFBABABADCBB957CFBE4C2
          A6FFE2AE82FFE0AA7CFFDEA97BFFDDA87AFFDBA77AFFDAA67AFFD9A579FFD7A4
          79FFD6A478FFD4A277FFD5A67DFFD9B79EFFA7745EFF8F8F8FA7B3917AE6DBBC
          A4FFE5B58BFFE1AA7CFFE0AA7CFFDFAA7BFFEBCBB0FFFDFDFDFFE9CAB0FFDAA6
          7AFFD8A479FFD7A478FFDAAD87FFCFAC97FFB58975FF5656566389715FA9CEAD
          95FFE9BF9BFFE3AE80FFE1AB7DFFE0AA7CFFFDFDFDFFFDFDFDFFFDFDFDFFDBA7
          7AFFDAA67AFFDAA77CFFE0B998FFBF9681FFB09283E512121215241E1A2CB796
          7EEBDABBA4FFE9BB94FFE3AE80FFE2AC7DFFECCCB1FFFDFDFDFFECCCB0FFDDA8
          7BFFDDAA7DFFE0B690FFD0AD98FFB68C77FB534B476300000000000000006655
          497DC09D85F3DBBCA4FFEAC09CFFE6B68CFFE4B083FFE2AD80FFE2AE82FFE3B3
          8AFFE5BC9AFFD3B19BFFBA927CFB7F6B5FA00000000000000000000000000000
          00006656497DB99880EBD0B098FFDDBEA6FFE6C4A7FFEBC8A9FFE5C3A7FFDAB9
          A2FFC9A58FFFB7907AF36B574B88000000000000000000000000000000000000
          000000000000251F1A2C897261A9B5957DE6C09C81FBBD967EFFBD987EFBB28F
          77E6856B5BA9231D182C00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000464F540099B0D50082A2D6002838580004050800282F3F002A
          354B0E1D223B605957B36E6E6EDF4A4A4AC10D0D0D3500000000000000000000
          00000003040600A5ADB17AFEFEFF00CDE6FF006D85AD00AEC2DF00C4DEFF00BF
          E0FF50ACC0FFD6CBC9FFF0F0F0FFB0B0B0FF413F3FA600000000000000000012
          1A24006A9AE30074A9FF009AC3FF0080AFFF006EA3FD7AFFFFFF29C3C7FF478B
          96FF50898EFFC7B7B6FEC2ABA8FFA89998FE2624245F0000000000000000004E
          6EA00085B8FF008BBEFF008BC0FF008BBFFF0079AEFF0281AFFFEEC3BAFFECE4
          E4FFB39D9BFF347E83FF00CBE3FF00B2D8FF004D6A900000000000000000006B
          95D00092C4FF059BCDFF0FA0D2FF0A9DD0FF0094C7FF007CB2FF5BA0BBFF819D
          A9FF68727FDD0D8386977AFAFBFB00A8C1C5002A36420000000000000000006B
          94CA10A1D3FF3EB3DFFF54BDE7FF48B7E3FF1FA7D6FF0086B9FF007BAFFF006C
          A0FF005683CF0000000000000000000000000000000000000000000000000052
          709834B1DEFF71C9F0FF98D9FEFF82CFF5FF47B8E3FF099DCEFF0080B4FF0070
          A3FF004B70B40000000000000000000000000000000000000000000000000021
          2F3A30AEDDFE86D1F9FFABE1FFFF97D9FDFF53BCE6FF0E9FD1FF008EC2FF006C
          9DF6000C11160000000000000000000000000000000000000000000000000000
          0000015B7B864EBAE8FE85D1F7FF70C7F0FF3CB3E0FF049CCEFF006FA1F50021
          2F3C000000000000000000000000000000000000000000000000000000000000
          000000000000003C525D28A8D9FE29A9D9FF0397CCFF006694DC0011181F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000072DCE4E445DEFEFE5CE6FEFE32515252000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002C8FB2CB0081B7FF00689BFF11506DA8000102030000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000002534390C9BCDFB0081B4FF0075A8FF006294FF005984D70000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000445B65003E5980005781D20073A2E90047669D00141E2D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E1E30000E0010000C00100008001000080030000801F0000801F
          0000C03F0000C07F0000E0FF0000F0FF0000F0FF0000F07F0000E0FF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006E6E6E006E6E6E00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000AAFF0000000000000000006E6E6E00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000565656005656560000AAFF000055FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000AAFF0056565600565656000055FF000055FF0000000000000000000000
          000000000000000000006E6E6E0000000000FF8E8E00FF8E8E00000000000000
          000000AAFF0000AAFF0056565600000000000055FF0000000000000000000000
          000000000000000000000000000000000000FF8E8E00FF8E8E00000000000000
          00005656560000AAFF0000AAFF000000000000000000000000006E6E6E000000
          0000986666000000000098666600000000000000000000000000000000000000
          0000565656005656560000AAFF000055FF000000000000000000000000000000
          000000000000000000009866660000000000FFD4D400FFD4D400000000000000
          000000AAFF0056565600565656000055FF000055FF0000000000000000000000
          000000000000FFD4D4000000000000000000FFD4D400FFD4D400000000000000
          000000AAFF00FFFFFF0086868600868686000055FF0000000000000000000000
          000000000000FFD4D400FFD4D400FF8E8E000000000000000000FFD4D4000000
          00008686860000FFFF0000FFFF00868686008686860000000000000000009866
          6600FF8E8E00FF8E8E00FF8E8E0000000000663333009866660000000000FFD4
          D400000000008686860000FFFF00000000000000000000000000000000009866
          660098666600FF8E8E00FF8E8E00FF8E8E000000000000000000FF8E8E00FFD4
          D400FFD4D4000000000000000000000000000000000000000000000000000000
          00000000000098666600FF8E8E00FF8E8E00FFD4D400FF8E8E00FF8E8E00FF8E
          8E00000000000000000000000000000000000000000000000000000000000000
          000098666600986666009866660000000000FF8E8E00FF8E8E0000000000FFD4
          D400FFD4D4000000000000000000000000000000000000000000000000000000
          000098666600986666000000000000000000FF8E8E00FF8E8E00000000000000
          0000FFD4D400FFD4D40000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFF00000FFC00000FF800000F8000000C000000080000000000000000000
          000000000000000000000001000000030000000300008007000080070000C84F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000002A2E
          333639434F5539434F5539434F5539434F5539434F5539434F5539434F553943
          4F5539434F5539434F5539434F5539434F5537414D5300000000000000002F77
          D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77
          D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB00000000000000002F77
          D1FBD8FDFFFFD8FDFFFFD8FDFFFFD8FDFFFFD8FDFFFFD8FDFFFFD8FDFFFFD8FD
          FFFFD8FDFFFFD8FDFFFFD8FDFFFFD8FDFFFF2F77D1FB00000000000000002F77
          D1FBD8FDFFFFC5FCFFFFC4FBFFFFC4FBFFFFC3FBFFFFC1FAFFFFBFF9FFFFBDF8
          FFFFBCF7FFFFBAF6FFFFB8F5FFFFD8FDFFFF2F77D1FB00000000000000002F77
          D1FBD7FCFFFFC2FAFFFFC0F9FFFFBEF8FFFFBCF7FFFFBAF6FFFFB9F6FFFFB7F5
          FFFFB5F4FFFFB3F3FFFFB1F2FFFFD8FDFFFF2F77D1FB00000000000000002F77
          D1FBD2FAFFFFBBF7FFFFB9F6FFFFAADFE8FFB6F4FFFFB4F3FFFFB2F2FFFFB0F1
          FFFFAEF0FFFFADF0FFFFABEFFFFFD8FDFFFF2F77D1FB00000000000000002F77
          D1FBCEF8FFFFB4F3FFFFB3F3FFFF769095FF82A4ABFFACEFFDFFABEFFFFFAAEE
          FFFFA8EDFFFFA6ECFFFFA4EBFFFFD8FDFFFF2F77D1FB00000000000000002F77
          D1FBCAF5FFFFAEF0FFFFACEFFFFFA6E8F7FF667174FF7B8D92FF9DDEEFFFA3EB
          FFFFA1EAFFFF9FE9FFFF9EE8FFFFD8FDFFFF2F77D1FB00000000000000002F77
          D1FBC5F3FFFFA7EDFFFFA5ECFFFFA4EBFFFF93CEDFFF959797FF8A8F91FF80B3
          CCFF000098FD000098FD73ADE8FFD8FDFFFF2F77D1FB00000000000000002F77
          D1FBC1F1FFFFA1EAFFFF9FE9FFFF9DE8FFFF9BE7FFFF7CA9B7FFA2A0B4FF0000
          98FD6074E8FF6680EFFF000098FDD8FDFFFF2F77D1FB00000000000000002F77
          D1FBC8F2FFFF9AE6FFFF98E5FFFF96E4FFFF95E4FFFF90DEFDFF0B20C8FD3D60
          EEFF1439E8FF1333E0FF000098FD000098FD1E47C1FF00000000000000002F77
          D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB0B20C8FD768EEBFF245C
          FAFF1A44E8FF000098FD2C4CE6FF1134E5FF000098FD00000000000000000000
          00000000000000000000000000000000000000000000000024660B20C8FD3263
          EFFF0B20C8FD345DF1FF163FEBFF0B20C8FD00000E3300000000000000000000
          0000000000000000000000000000000000000000000000000001000008250B20
          C8FD5077F1FF245DFBFF0B20C8FD000032750000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000B20
          C8FD0B20C8FD0B20C8FD00002C66000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A0A
          0B0F3535454F0E0E111500000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF003142
          7B0008214200A58C7B004A2918004A2918004A2918004A2918004A2918004A29
          18004A2918004A2918004A2918004A2918004A2918004A29180031427B00317B
          DE0031427B0008214200EFDEDE00A58C7B00A58C7B00A58C7B00A58C7B00A58C
          7B00A58C7B00A58C7B00A58C7B00A58C7B00A58C7B004A2918002184DE0084CE
          F7002973D60031427B0008214200EFDEDE00E7DED600E7D6CE00DECEC600DECE
          C600D6C6BD00D6BDB500D6BDAD00D6BDAD00A58C7B004A291800FF00FF002184
          DE0084CEF7004A7BBD00847B8400946B6B00946B6B00946B6B00946B6B00DECE
          C600DECEC60000A510000042000000420000A58C7B004A291800FF00FF00FF00
          FF002184DE009C9CA500946B6B006BD694009CE7BD006BD69400FFF7D600946B
          6B00DECEC60000A510004AF7840000420000A58C7B004A291800FF00FF00FF00
          FF00FF00FF00946B6B00EFD6AD006BD694006BD694006BD69400FFFFF700FFFF
          EF00946B6B0000A5100000A5100000A51000A58C7B004A291800FF00FF00FF00
          FF00FF00FF00946B6B00FFE7B500FFD69400FFBD8C00FFEFCE00FFF7DE00FFEF
          CE00946B6B00E7D6CE009C310000DECEC600A58C7B004A291800FF00FF00FF00
          FF00FF00FF00946B6B00F7EFBD00FFDEB500FFBD8C00FFBD8C00FFBD8C00FFBD
          8C00946B6B009C3100009C310000DECEC600A58C7B004A291800FF00FF00FF00
          FF00FF00FF00946B6B00E7D6BD00FFFFFF00FFE7B500FFCE8C00FFBD8C00F7E7
          B500946B6B00EFE7DE00E7DED600E7D6CE00A58C7B004A291800FF00FF00FF00
          FF00FF00FF00A58C7B00946B6B00E7D6C600FFEFBD00FFE7B500EFD6AD00946B
          6B00F7EFEF00EFE7E700EFE7DE00E7DED600A58C7B004A291800FF00FF00FF00
          FF00FF00FF00A58C7B00FFFFFF00946B6B00946B6B00946B6B00946B6B001031
          FF0000087300F7EFEF00EFE7E700A58C7B00A58C7B004A291800FF00FF00FF00
          FF00FF00FF00A58C7B00FFFFFF00FFFFFF00FFFFFF000010AD006373FF00395A
          FF001031FF0000087300A58C7B004A2918004A2918004A291800FF00FF00FF00
          FF00FF00FF00A58C7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF000010AD006373
          FF000010AD00FFF7F700A58C7B00EFE7DE00D6BDAD004A291800FF00FF00FF00
          FF00FF00FF00A58C7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000010
          AD00FFFFFF00FFFFFF00A58C7B00D6BDAD004A291800FF00FF00FF00FF00FF00
          FF00FF00FF00A58C7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00A58C7B004A291800FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00A58C7B00A58C7B00A58C7B00A58C7B00A58C7B00A58C7B00A58C
          7B00A58C7B00A58C7B00A58C7B00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C0B0B00010385000005080000020
          4000181810007070700000000000000000000000000000000000000000000000
          000000000000B8C0B80090888800B8B0A8003060700000A0F80000A0FF000068
          D000201840001810180058585000B0B0B0000000000000000000000000000000
          00007068680050203000A0285800682030002080A00010B8FF0010A0FF000078
          D000403088002010980020202000484848008888880000000000000000000000
          000080385000B0406800C0487000703040002880A00028C0FF0010A8FF000088
          E000483088003028D80030304000B0B0B0000000000000000000000000000000
          000090506800B0486800B8487000784050004080A00048C8FF002098F8000060
          D000503890004030D80080889000000000000000000000000000000000000000
          000098607000B0507800C05880007050600050A8D00050D0FF0040C0FF000058
          D000583898005048E8009090A000000000000000000000000000000000000000
          0000A8708000B8688800D06888008868800060D0F80060D8FF0058D0FF0010A0
          FF002858A800504098008888880000000000000000000000000000000000B8B8
          B800C8789800E088A800E880A000A878900078D0F80078D8FF0060D0FF0040B0
          FF004880B0006848C8003030700000000000000000000000000000000000B8B8
          B800D890A800E8A0B800E890B000B088980088D8F80098E8FF00B0F0FF0078C8
          FF006888B0007860F0003838A80030307000000000000000000000000000C0C0
          C000E0A0B800F0A8C800F0A0C000B090A800A8E0F800A0C8F0004890D80038A0
          F0006890A8009888F0005860A8003838A800000000000000000000000000C8C0
          C000E8B0C800FFD0E800FFE0F000D0C0C80080A0B80030404800181830005068
          8800B090B800C098F0007870A8005860A800000000000000000000000000C8C8
          C800C8B8C0009088900060405000782850004828400090989800A0A098003030
          2800583870008848A00078687800786878000000000000000000000000000000
          00009098900048484800687070004040400048484800E8E8E800C8C8C8002828
          2800404840005858580000000000000000000000000000000000000000000000
          000090909000C8C8C800F8F8F8006060600068686800A0A0A00050505000C0C0
          C000C8C8C8002828280000000000000000000000000000000000000000000000
          0000C8C8C800B0B0B000C0C0C00048484800C0C0C0000000000090909000D0D0
          D000808080006060600000000000000000000000000000000000000000000000
          000000000000C0C0C00088888800C8C8C8000000000000000000000000009090
          9000909090000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FC0F0000E0030000C0010000C0030000C0070000C0070000C00700008007
          000080030000800300008003000080030000C00F0000C00F0000C10F0000E39F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000104870001048700000508000183058004848
          4000888880008888800000000000000000000000000000000000000000000000
          000000000000000000000070A8000070A8000098FF000098FF000050D0003030
          3800585858007070700088888800000000000000000000000000000000000000
          00000000000000000000809090000088D8000098F0000090F0000050D0003038
          4000706868006868680068686800989898000000000000000000000000000000
          000000000000000000009098A0000090D0001098F0000090F0000058D0003038
          4000686868006868680068686800000000000000000000000000000000000000
          0000000000000000000098A0A8001898D80020A0F00018A0F0001868D0004048
          5000686868008888880088888800686868000000000000000000000000000000
          00000000000000000000A8A8A80028A8D80038B8F80028B8F8002870D0004868
          9800000000000000000088888800888888008888880000000000000000000000
          00000000000080A0B00080A0B00048C8F00048D0F80040C0F8004898F8004868
          9800486898000000000000000000888888000000000000000000000000000000
          00000000000080A0B00068A0B80068E0FF0060D0F80058D0F80060A8FF005070
          A000486898000000000000000000000000000000000000000000000000000000
          00000000000068A0B80080B0C00080E8FF0078E0FF0088E0FF0080B8FF006880
          A8006880A8000000000000000000000000000000000000000000000000000000
          00000000000080B0C00090B8C800A0F8FF00B0F0FF0078B8FF003088FF006080
          B0006880A8000000000000000000000000000000000000000000000000000000
          00000000000080B0C000B0C8C80070B0F80030509000003090002060D0008098
          B8006080B0000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000587088005858480030302800505050000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A8A8A000C0C0C00080808000282828000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000E0E0E000D8D8D80080808000787878000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000D8D8D800C0C0C000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F80F0000F0070000F0030000F0070000F0030000F0310000E01B0000E01F
          0000E01F0000E01F0000E01F0000F87F0000F87F0000F87F0000FCFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF00000000000000000000000000000000000000000000000000000000000000
          00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF00000000000000840000000000000000000000000000000000000000000000
          0000000084000000840000008400000084000000840000008400000084000000
          8400000000000000840000008400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000008400000084000000000000000000000000000000
          00007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000FFFFFF0000000000000084000000840000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000FFFFFF00FFFFFF00000000000000840000000000000000000000
          00000000000000000000FFFFFF00FFFFFF007B7B7B0000000000000000000000
          000000000000BDBDBD00BDBDBD00FFFFFF000000000000000000000000000000
          00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF0000000000000000000000
          0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF007B7B7B000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E01F0000C00F000080070000000300000001000080000000C000
          0000E0000000F0000000F8010000F8010000F8010000F8070000F8070000FC7F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000CC993300CC993300CC993300000000000000000000000000000000000000
          000000000000CC993300CC993300CC993300000000000000000000000000CC66
          3300FFFF6600FFECCC00FFECCC00CC9933000000000000000000000000000000
          0000CC663300FFFF6600FFECCC00FFECCC00CC9933000000000000000000CC66
          3300CC993300FFFF6600FFECCC00FFFF66000000000000000000000000000000
          0000CC663300CC993300FFFF6600FFECCC00FFFF66000000000000000000CC66
          3300CC999900CC993300CC999900FF9900000000000000000000000000000000
          0000CC663300CC999900CC993300CC999900FF990000000000005F5F5F000000
          0000CC663300CC663300CC66330000000000000000000000000000000000F1F1
          F10000000000CC663300CC663300CC66330000000000000000005F5F5F00C0C0
          C00000000000000000000000000039393900555555000000000000000000F1F1
          F100C0C0C0000000000000000000000000003939390000000000000000005F5F
          5F00F1F1F100B2B2B2007777770077777700555555000000000000000000F1F1
          F100C0C0C000C0C0C00096969600868686000000000000000000000000005F5F
          5F00F1F1F100B2B2B2008686860077777700555555000000000000000000F1F1
          F100C0C0C000C0C0C00086868600424242000000000000000000000000000000
          00005F5F5F00F1F1F100B2B2B20077777700555555003939390000000000F1F1
          F100C0C0C000C0C0C00077777700000000000000000000000000000000000000
          00005F5F5F00F1F1F100B2B2B20077777700555555004242420000000000C0C0
          C000C0C0C0008686860042424200000000000000000000000000000000000000
          0000000000005F5F5F00F1F1F100B2B2B2000000000000000000000000000000
          0000969696007777770000000000000000000000000000000000000000000000
          0000000000005F5F5F00F1F1F100B2B2B200C0C0C000C0C0C000CCCCCC00CCCC
          CC00868686004242420000000000000000000000000000000000000000000000
          000000000000000000005F5F5F00CCCCCC008686860000000000000000009696
          9600424242000000000000000000000000000000000000000000000000000000
          000000000000000000005F5F5F005F5F5F005F5F5F0000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C7E3000083C10000018000000000000000000000000000000000
          00008001000080010000C0030000C0030000E0070000E0070000F00F0000F18F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000E0E0E0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000262626006B8FFF0032323200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000323232008EABFF00AAAAAA0056565600000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000262626008EABFF00B6B6B6006262620000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001A1A1A008EABFF00AAAAAA00626262000000000000000000000000000000
          0000000000006E6E6E00262626000000000026262600262626006E6E6E006E6E
          6E00CECECE007A7A7A0056565600000000000000000000000000000000000000
          00001A1A1A0092929200CECECE00CECECE00DADADA009E9E9E001A1A1A006262
          62006E6E6E003E3E3E0000000000000000000000000000000000000000002626
          260092929200CECECE00DADADA00CECECE00DADADA00DADADA00C0C0C0001A1A
          1A006E6E6E0000000000000000000000000000000000000000006E6E6E005656
          56009E9E9E00E6E6E600F2F2F200DADADA00CECECE00DADADA00DADADA009292
          92006E6E6E0000000000000000000000000000000000000000003E3E3E007A7A
          7A00B6B6B600E6E6E600E6E6E600C0C0C000CECECE00CECECE00DADADA00C0C0
          C0003E3E3E000000000000000000000000000000000000000000320050009292
          9200C2C2C200E6E6E600B6B6B600A4A0A000B6B6B600C0C0C000AAAAAA00C0C0
          C0000000000000000000000000000000000000000000000000003E3E3E008686
          8600DADADA00E6E6E600B6B6B60086868600868686008686860092929200AAAA
          AA003E3E3E0000000000000000000000000000000000000000006E6E6E006262
          6200B6B6B600F2F2F200E6E6E600A4A0A0009E9E9E009E9E9E00AAAAAA008080
          80007A7A7A000000000000000000000000000000000000000000000000003232
          32007A7A7A00C2C2C200E6E6E600CECECE00B6B6B600C0C0C0009E9E9E002626
          2600000000000000000000000000000000000000000000000000000000000000
          0000323232006E6E6E0086868600AAAAAA00AAAAAA006E6E6E00262626000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000323232003E3E3E00320050003E3E3E0032323200000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFC0000FFF80000FFF00000FFE10000FFC30000E0070000C00F0000801F
          0000001F0000001F0000001F0000001F0000001F0000803F0000C07F0000E0FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000DC8B00FFDC8B
          00FFDC8B00FFDC8B00FFDC8B00FFDC8B00FFDC8B00FF00000000000000000000
          8DFF00008DFF00008DFF00008DFF00008DFF00008DFF00008DFFDC8B00FFFFEF
          B7FFFFEFB7FFFFEFB7FFFFEFB7FFFFEFB7FFDC8B00FF00000000000000000000
          8DFF2E78F3FF378CF7FF378DF8FF2F7AF4FF2F7AF4FF00008DFFDC8B00FFFFDC
          91FFFFDC91FFFFDC91FFFFDC91FFFFDC91FFDC8B00FF00000000000000000000
          8DFF2563EFFF2B70F2FF2B71F2FF2665EFFF2665EFFF00008DFFDC8B00FFFFC8
          6CFFFFC86CFFFFC86CFFFFC86CFFFFC86CFFDC8B00FF00000000000000000000
          8DFF1B49EAFF1F53ECFF1F53ECFF1B4BEAFF1B4BEAFF00008DFFDC8B00FFDC8B
          00FFDC8B00FFDC8B00FFDC8B00FFDC8B00FFDC8B00FF00000000000000000000
          8DFF00008DFF00008DFF00008DFF00008DFF00008DFF00008DFF000000000000
          000000000000606060FF00000000000000000000000000000000000000000000
          00000000000000000000606060FF00000000000000000A0A0B0F000000000000
          000000000000606060FF606060FF606060FF606060FF606060FF606060FF6060
          60FF606060FF606060FF606060FF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000606060FF606060FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000606060FF606060FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000005BCAFF005BCAFF005BCAFF005BCAFF005BCAFF005B
          CAFF005BCAFF005BCAFF00000000000000000000000000000000000000000000
          00000000000000000000005BCAFF5ED6FFFF5ED6FFFF5ED6FFFF5ED6FFFF5ED6
          FFFF5ED6FFFF005BCAFF00000000000000000000000000000000000000000000
          00000000000000000000005BCAFF4AC9FFFF4AC9FFFF4AC9FFFF4AC9FFFF4AC9
          FFFF4AC9FFFF005BCAFF00000000000000000000000000000000000000000000
          00000000000000000000005BCAFF37BCFFFF37BCFFFF37BCFFFF37BCFFFF37BC
          FFFF37BCFFFF005BCAFF00000000000000000000000000000000000000000000
          00000000000000000000005BCAFF005BCAFF005BCAFF005BCAFF005BCAFF005B
          CAFF005BCAFF005BCAFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000505050D353535925F5F5FE02B2B
          2B9A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006A6A6AAAECECECFFA6A6A6FF4646
          46D2000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B9B9B9E4E9E9E9FF9E9E9EFF4C4C
          4CDE000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C5C5C5F4D1D1D1FF919191FF5252
          52EA000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000101010288F8F8FFEB1B1B1FF888888FF5858
          58F90B0B0B210000000000000000000000000000000000000000000000000000
          000000000000000000000707070D868686D5F5F5F5FFD7D7D7FFACACACFF7373
          73FF454545CF0303030A00000000000000000000000000000000000000000000
          00000000000000010809606371B2E9EEF7FFDBDBDCFFD0D0D0FFB1B1B1FF8484
          84FF646464FF393939A600000000000000000000000000000000000000000000
          010105112828303D89A8808DFBFF9EC9F7FFACB6E3FFCECFD5FFB9B9B9FF9191
          91FF727272FF5B5B5BFE2A2A2A73000000000000000000000000000000000003
          171731569AA74F92FBFE5AB1FCFF4698F6FF3D53DBFF7D87B2FF989898FF8686
          86FF666666FF515151FF484848FB16161644000000000000000000000000131D
          4A522A4EE1FA58D9F7FF1CE4FEFF57E9FBFF52A7F2FF81A1DFFFD7DAE1FFF6F6
          F6FFFFFFFFFFFAFAFAFFAEAEAEFF4A4A4AEB0808082000000000000000004E5A
          8FCF3F81DAFF52E8FAFF00CDFFFF3BEBFEFF2C74F1FF6A7BDFFFC9CBD6FFE5E5
          E5FFF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFF535353C700000000000000006371
          8BDD1636B7FF368BECFF60F5FCFF67DBF9FF3169ECFF8696D7FFD0D0D4FFE1E1
          E1FFECECECFFF8F8F8FFFFFFFFFFFFFFFFFF797979E100000000000000002829
          30356672AEE0365DCFFF427FE3FF2D50DEFF7DA4D6FFB3B8CFFFD7D7D7FFE7E7
          E7FFF5F5F5FFFFFFFFFFF2F2F2FF858585DA0B0B0B3600000000000000000000
          00000101090A3F51666E4D5689A9646D97CC888B9BE1A2A2A2EEA0A0A0EE9494
          94E0757575C24242429214141449010101030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FE3F0000FC3F0000FC3F0000FC3F0000FC3F0000F81F0000F00F
          0000E0070000C0070000800300008001000080010000C0030000E00F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000200000007000000100000001B000000280000002C010101380201023E0000
          002A000000270000001B00000010000000070000000200000000000000010000
          000B0000001D0000003100000046000000510D0D0C76818186DC4F559DEF0D0D
          1E8F0000004F00000045000000310000001D0000000B00000001000000010000
          000C0000001F000000340000003F11111179B3B3B2F2D5D5D9FF4C59BFFF4752
          BDFF19193AAB0000003F000000330000001F0000000C00000002000000000000
          00030000000A0000000C08080840BBBBBBF3DADAD9FFCBCBCFFF4E52B8FF3E45
          B7FF4950C4FF13122A84000000060000000A0000000300000000000000000000
          00000000000000000002828282C4DFDFDFFFD5D4D4FFD0D1D3FF5A58BCFF4646
          B8FF4648B9FF4748B9FE0A081344000000000000000000000000000000000000
          00000000000050505073E0E0E0FFD8D8D8FFDADAD9FFD4D5D7FF6664C3FF5553
          BFFF5552BDFF4E4DBDFF453F92CB000000000000000000000000000000000000
          000002020203B3B3B3DBDFDFDFFFDDDDDDFFDFDFDEFFDBDBDDFF7977CCFF6764
          C7FF605EC4FF5C5AC1FF5653BDFF18142B410000000000000000000000000000
          00002727273AE2E2E0FFE3E2E1FFE2E2E1FFE3E3E1FFE1E1E2FF8D8AD5FF817E
          D3FF7874CEFF6563C7FF5B5AC4FF39336EA10000000000000000000000000000
          00003C3958769492D6FF9996D7FF9D9ADAFF9E9CDBFFA29FDCFFCAC9E2FFD2D1
          E4FFD3D2E4FFCBCBE2FFC8C7E0FFA09FB2E20101010300000000000000000000
          0000504A84A8807DD5FF8985D9FF918CDCFF948FDEFF9793DFFFE3E3E9FFEFF0
          EBFFEFEFECFFF2F2EDFFF2F3EFFFDEDED9F90E0E0E1900000000000000000000
          00006D68AED8918DDCFF9A96E0FFA29EE5FFA8A3E7FFAAA5E7FFE4E4ECFFEFEF
          EDFFEEEEEEFFEFEFEFFFF1F1F1FFE9E9E9FF1717172900000000000000000202
          04067B75BDE69A96E1FFA5A0E5FFAFAAEBFFB7B1EEFFBAB4EFFFE9E9F0FFF2F2
          F1FFF1F1F1FFF2F2F2FFF3F3F3FFEFEFEFFF1B1B1B3000000000000000000404
          070A807BC3EAA29EE5FFB5B0EDFFC1BCF3FFC7C0F6FFC8C2F7FFEFEEF4FFF8F8
          F7FFFCFCFCFFFAFAFAFFFDFDFDFFF4F4F4FF1B1B1B3000000000000000000404
          070A8A85CBEE8A86BBD9524E7189746E97AFCAC5EEF8D7D2FEFFF8F7FDFFECEC
          EBF97676769F393939596D6D6D96F1F1F1FF1B1B1B3000000000000000000201
          0304423F617809080D12000000000000000023203241BCB7DEEDF0EFF4FF3232
          32510000000000000000000000002F2F2F500C0C0C1700000000000000000000
          000000000000000000000000000000000000000000002D2A41535252547D0000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000200000007000000100000001B000000280000002C000000380000003E0000
          002A000000270000001B00000010000000070000000200000000000000010000
          000B0000001D00000031000000460000005107070776707572DC3A8D46EF0714
          0A8F0000004F00000045000000310000001D0000000B00000001000000010000
          000C0000001F000000340000003F0A0A0A79A6A5A6F2CBD0CCFF38B145FF33AF
          43FF0F2C15AB0000003F000000330000001F0000000C00000002000000000000
          00030000000A0000000C04040440AEAEAEF3D1D0D1FFBFC4C0FF39A94EFF2BA8
          3EFF35B74AFF0A1F1084000000060000000A0000000300000000000000000000
          00000000000000000002757575C4D7D7D7FFCACACBFFC5C9C5FF43AE5CFF32A9
          4CFF32AA4AFF33AA4CFE050D0844000000000000000000000000000000000000
          00000000000049494973D8D8D8FFCFCFCFFFD1D0D1FFCACECAFF4FB667FF3EB1
          59FF3DAF59FF39AF53FF2D8648CB000000000000000000000000000000000000
          000001010103A9A9ABDBD7D7D7FFD5D5D5FFD7D6D7FFD2D5D3FF62C079FF4FBB
          69FF49B763FF45B360FF3EAF5AFF0F2718410000000000000000000000000000
          00002323233ADBD8DAFFDCDADCFFDBDADBFFDCDADBFFDADBDAFF76CB8DFF69C9
          82FF5FC379FF4EBB67FF45B75FFF256439A10000000000000000000000000000
          00002F523B767FCC92FF83CE97FF87D19BFF89D29CFF8DD3A0FFBDDBC5FFC6DD
          CCFFC8DDCEFFBFDBC6FFBBD8C3FF90A898E20101010300000000000000000000
          00003D7C50A868CB82FF70D089FF78D392FF7BD695FF80D798FFDCE3DDFFECE6
          E9FFEBE7E9FFEEE8EDFFF0EBEDFFD7D1D6F90C0C0C1900000000000000000000
          000056A46DD879D391FF83D89AFF8CDEA3FF91E1A9FF93E1AAFFDDE7E0FFEBE8
          E9FFE9E9E9FFEBEBEBFFEDEDEDFFE3E3E3FF1414142900000000000000000204
          020662B47BE683DA9BFF8EDEA7FF99E6B0FFA1E9B8FFA4EBBCFFE3ECE6FFEEED
          EEFFEDEDEDFFEEEEEEFFF0F0F0FFEBEBEBFF1818183000000000000000000307
          040A69BA80EA8CDEA3FFA0E8B6FFAEF0C3FFB2F3CAFFB5F5CAFFE9F1ECFFF6F5
          F6FFFBFBFBFFF8F8F8FFFCFCFCFFF1F1F1FF1717173000000000000000000307
          040A73C28AEE76B588D9446C5189639173AFBAEBCBF8C8FDDBFFF5FCF7FFE9E7
          E9F96E6E6E9F3232325964646496EDEDEDFF1717173000000000000000000102
          0204355C4178060C081200000000000000001B2F2241AADBBCEDEBF1EDFF2C2C
          2C51000000000000000000000000292929500A0A0A1700000000000000000000
          00000000000000000000000000000000000000000000233D2C534A4B4B7D0000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000003000000090000000F000000140000001A00000020000000200000
          001A000000140000001000000009000000030000000000000000000000000000
          00090000001A000000280000004119100879544131AC726253C0726559C05044
          3AAA160F097600000040000000290000001A0000000800000001000000010000
          00120000001F0F08035E9D806BD6FEEBD7FFFFF5DEFFFFF3DCFFFFFBEAFFFFFF
          F3FFFDECDAFF967962D10C060258000000200000001200000002000000010000
          0000130A034CDEC5AEF1FFE9D0FFFCB57DFFFCA459FFFEA151FFFFAD66FFFFB9
          7DFFFFD0A6FFFFF7E4FFD6BBA2EC0F0803430000000000000001000000000703
          001DD7BBA6EAFAD1B2FFED8639FFF38D3CFFF9A058FFFFDABCFFFEB170FFFD99
          45FFFC9D4FFFFAAF72FFFFEAD5FFC9AF98E10402001300000000000000008856
          3795F8DECDFFE1752AFFE88034FFEE883AFFF4A05FFFFDF7F2FFFABC8AFFF792
          41FFF69446FFF38F41FFF3A66BFFFDE9D9FF7C513285000000000A04000DD9B6
          9FE8E08D57FFDA691DFFE2782EFFE77E32FFEC873CFFF7C59FFFF1944DFFF08A
          3CFFEF8A3FFFEC8639FFE9863EFFF1BA93FFD2AB90DD100802132A140633F4D7
          C4FFD56823FFD4631AFFDB712BFFE17B35FFE89052FFFFFFFFFFF3B990FFE77A
          2DFFE78037FFE47C32FFE0742AFFE48F57FFF2D4BFFE341B0A3E3A1E0C45F3D3
          BEFFDA7839FFE29767FFE49D70FFE39968FFE49561FFF5D5C0FFFFFFFFFFEFB6
          8EFFE07E3BFFDE7936FFD86C26FFD97434FFF4D7C5FF452511523319093DF2D1
          BCFFE49C6DFFECB998FFE8AC86FFEFC3A7FFE6A378FFE19461FFF4D7C5FFFFFF
          FFFFE6A276FFD97739FFD87332FFD97739FFF3D5C2FF3E200D4A160A021BE8C6
          AFF7E5A175FFEDBD9FFFEBB897FFFFFEFEFFF3D5C1FFE19462FFE5A074FFFFFF
          FFFFF0C7AEFFDB7D41FFDA7B3DFFE08D59FFE0BDA8EE1E0E032500000000AA7A
          5EBCEEC1A5FFEBB695FFEDBD9EFFF6E0D1FFFFFFFFFFF7E1D2FFFAEBE2FFFFFF
          FFFFEAB28EFFDF8B56FFDA793AFFEEC3A6FF9B6B4DAD00000000000000003B1D
          0A47F7E3D6FFEBB593FFEFC5AAFFEFC3A7FFF3D2BDFFF8E6DAFFF7E1D3FFEDBD
          9FFFE49E71FFDF8C56FFE6A47BFFF7E1D4FF2F16063900000000000000000000
          000073422386F7E1D3FFECBB9BFFEBB998FFEDBFA0FFECBB9BFFEAB28EFFE7A6
          7CFFE19463FFE8AB85FFF7E3D5FF68391C7A0000000000000000000000000000
          00000000000061361B72EDCDB8FAF4D5C3FFEEC2A5FFEBB796FFEAB38FFFECB9
          98FFF3D5C1FFE8C9B4F6552E1465000000000000000000000000000000000000
          00000000000000000000200E03277A4C2F8CC09478D1D7B097E7D6AF97E6BC91
          76CE74472B861C0D032300000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00009B6D3AC6C88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C
          4BFFC88C4BFFC88C4BFF9B6D3AC69B6D3AC60000000000000000000000000000
          0000CC9356FFFDFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFAF2ECFFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFDEC9FFFFDDC8FFFFDCC5FFFFDBC5FFFFDBC2FFFFDA
          C1FFFFD9C0FFFFD8BDFFFFF0EBFFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFDCC5FFFFDBC3FFFFDAC2FFFFD9C0FFFFD8BEFFFFD7
          BDFFFFD6BBFFFFD3B6FFFFEFE8FFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFE1CCFFFFE0CAFFFFDFC7FFFFDEC7FFFFDDC4FFFFDC
          C4FFFFDBC2FFFFD8BDFFFFF0EAFFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFE3D2FFFFE2D0FFFFE1CDFFFFE0CDFFFFDFCBFFFFDE
          C8FFFFDDC8FFFFDBC3FFFFF2EDFFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFE8D8FFFFE7D6FFFFE6D3FFFFE5D3FFFFE4D1FFFFE3
          CEFFFFE2CEFFFFDFC9FFFFF3EFFFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFEADCFFFFE9DCFFFFE8D9FFFFE7D9FFFFE6D7FFFFE5
          D4FFFFE4D4FFFFE2D0FFFFF5F1FFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFEFE2FFFFEEE2FFFFEDE0FFFFECDDFFFFEBDDFFFFEA
          DAFFFFE9DAFFFFE7D6FFFFF6F3FFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFF1E8FFFFF0E8FFFFEFE6FFFFEEE3FFFFEDE3FFFFEC
          E1FFFFEBDEFFFFE9DCFFFFF8F4FFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFF6EEFFFFF5EEFFFFF4ECFFFFF3E9FFFFF2E9FFFFF1
          E7FFFFF0E4FFFFEEE2FFFFF9F8FFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFF8F4FFFFF7F4FFFFF6F2FFFFF5EFFFFFF4EFFFFFF3
          EDFFFFF5EFFFFFF4EEFFFFFFFFFFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFFDFBFFFFFCFAFFFFFBF8FFFFFAF5FFFFF9F5FFFFFA
          F7FFC88C4BFFC88C4BFFC88C4BFFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFFFFFFFFFFEFEFFFFFEFDFFFFFDFCFFFFFCFBFFFFFE
          FEFFC88C4BFFF7BF86FFC88C4BFF000000000000000000000000000000000000
          0000CF9B64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC88C4BFFC88C4BFF00000000000000000000000000000000000000000000
          0000AF8659D7C88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C
          4BFFC88C4BFF0000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000466A90FF4B7CB2FF4776A9FF4877AAFF4876AAFF4775AAFF4675A9FF4673
          A7FF3669A2FF3A71ADFF3A72B0FF466A90FF0000000000000000000000000000
          00003E638CFFB1CCE7FFE9EDF0FFE1E7EDFFE0E7EDFFE1E8EEFFD1D8DDFFBFC2
          C4FF94A7B9FF2E6BABFF2971BDFF3E628AFF0000000000000000000000000000
          00003A608AFFBED3E7FFFFFAF2FFEFEDECFFEFEEEDFFF0EFEEFFDDDCDBFFBFBF
          BEFFFFFFFFFFA8B6C7FF2F6BADFF3E638BFF0000000000000000000000000000
          00003B618AFFC0D6ECFFFFFFFAFFF4F4F3FFF3F3F3FFF4F4F4FFEDEDEDFFDADA
          DAFFFFFFFFFFFFFFFFFF849EB8FF3C608AFF0000000000000000000000000000
          00003C628AFFC1D7EDFFFFFFFDFFF9FAF8FFF8F8F8FFF8F8F8FFF6F6F6FFF4F4
          F4FFDEDEDEFFD1CECAFF9EB2C8FF3C6089FF0000000000000000000000000000
          00003C628AFFC3D8EFFFFFFFFFFFFEFEFEFFFDFDFDFFFDFDFDFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFBF9FFB5C9E1FF395E87FF0000000000000000000000000000
          00003D618AFFC3D8F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFC0D6EDFF395D86FF0000000000000000000000000000
          00003E628AFFC2D9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBED5ECFF395E86FF0000000000000000000000000000
          00003E638BFFC3D9F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBED4ECFF3A5E86FF0000000000000000000000000000
          00003E638AFFC3DAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBFD4ECFF3A5E86FF0000000000000000000000000000
          00003F638BFFC6DBF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFC1D8F1FF395E86FF0000000000000000000000000000
          0000466A90FFBCCEE4FFA4A09EFFA4A09EFFA4A09EFFA4A09EFFA4A09EFFA4A0
          9EFFA4A09EFFA4A09EFFBFD0E6FF43678EFF0000000000000000000000000000
          0000466A90FF95B8DFFF8FA3B8FF95908CFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFA3A297FF95A6B9FF8DB0D4FF456A8FFF0000000000000000000000000000
          0000466A90FF466A90FF456990FF43586FFF4C4F53FFFFFFFFFFDFE2DBFF474A
          4BFF3E526BFF44688FFF466A90FF466A90FF0000000000000000000000000000
          00000000000000000000000000000000000000000000A4A09EFFA4A09EFF0000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00009B6D3AC6C88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C
          4BFFC88C4BFFC88C4BFF9B6D3AC69B6D3AC60000000000000000000000000000
          0000CC9356FFFDFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFAF2ECFFC88C4BFF000000000000000005346E840A64
          D4FF0A64D4FF0A64D4FF0A64D4FF0A64D4FF0A64D4FF809DCCFFFFDBC2FFFFDA
          C1FFFFD9C0FFFFD8BDFFFFF0EBFFC88C4BFF00000000000000000A64D4FF94FC
          FFFF96FDFFFF96FDFFFF96FDFFFF8FFCFFFF8FFCFFFF0A64D4FFFFD8BEFFFFD7
          BDFFFFD6BBFFFFD3B6FFFFEFE8FFC88C4BFF00000000000000000A64D4FF96FD
          FFFF4CE5FFFF51E7FFFF51E7FFFF4FE7FFFF96FDFFFF0A64D4FFFFDDC4FFFFDC
          C4FFFFDBC2FFFFD8BDFFFFF0EAFFC88C4BFF00000000000000000A64D4FF96FD
          FFFF06CDFFFF0ECFFFFF0ECFFFFF0CCEFFFF96FDFFFF0A64D4FFFFDFCBFFFFDE
          C8FFFFDDC8FFFFDBC3FFFFF2EDFFC88C4BFF00000000000000000A64D4FF8FFC
          FFFF00C6FFFF00C9FFFF00C9FFFF00C8FFFF8FFCFFFF0A64D4FFFFE4D1FFFFE3
          CEFFFFE2CEFFFFDFC9FFFFF3EFFFC88C4BFF000000000000000005346E840A64
          D4FF0A64D4FF0A64D4FF0A64D4FF0A64D4FF0A64D4FF80A3D6FFFFE6D7FFFFE5
          D4FFFFE4D4FFFFE2D0FFFFF5F1FFC88C4BFF0000000000000000000000009F74
          5EFFEBDCD6FFFFFFFFFFFFEFE2FFEBDCD6FF9F745EFFFFECDDFFFFEBDDFFFFEA
          DAFFFFE9DAFFFFE7D6FFFFF6F3FFC88C4BFF0000000000000000000000009F74
          5EFFEBDCD6FFFFFFFFFFFFF1E8FFEBDCD6FF9F745EFFF3E2D7FFFFEDE3FFFFEC
          E1FFFFEBDEFFFFE9DCFFFFF8F4FFC88C4BFF0000000000000000000000009F74
          5EFFEBDCD6FFEBDCD6FFEBDCD6FFEBDCD6FF9F745EFFFFF3E9FFFFF2E9FFFFF1
          E7FFFFF0E4FFFFEEE2FFFFF9F8FFC88C4BFF0000000000000000000000000000
          00009F745EFF9F745EFF9F745EFF9F745EFFFFF6F2FFFFF5EFFFFFF4EFFFFFF3
          EDFFFFF5EFFFFFF4EEFFFFFFFFFFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFFDFBFFFFFCFAFFFFFBF8FFFFFAF5FFFFF9F5FFFFFA
          F7FFC88C4BFFC88C4BFFC88C4BFFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFFFFFFFFFFEFEFFFFFEFDFFFFFDFCFFFFFCFBFFFFFE
          FEFFC88C4BFFF7BF86FFC88C4BFF000000000000000000000000000000000000
          0000CF9B64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC88C4BFFC88C4BFF00000000000000000000000000000000000000000000
          0000AF8659D7C88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C
          4BFFC88C4BFF0000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00009B6D3AC6C88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C
          4BFFC88C4BFFC88C4BFF9B6D3AC69B6D3AC60000000000000000000000000000
          0000CC9356FFF2E7E5FFEDCBAEFFE4BEA7FFEDCBAEFFF3E9E8FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFAF2ECFFC88C4BFF0000000000000000000000000000
          0000A56939FFC55538FFDA7250FFE99375FFDA7250FFC55334FFCCA28EFFFFDA
          C1FFFFD9C0FFFFD8BDFFFFF0EBFFC88C4BFF0000000000000000000000001606
          0449E57E4FFFFBDDD0FFFFEDDAFFFFDEC4FFFFE7D4FFFBDACDFFDD6944FFCC9F
          8AFFFFD6BBFFFFD3B6FFFFEFE8FFC88C4BFF0000000000000000483E3C53BB5C
          31EBFEE8D8FFFFE3C7FF9F7D6FFFFED1ACFFFFCDA5FFFFD4B1FFFBDBCFFFC552
          34FFF3D1BFFFFFD8BDFFFFF0EAFFC88C4BFF000000000000000067585776ECA8
          6BFFFFF4EEFFFFE6CDFFB19489FF856863FFFBD7BAFFFFD5B3FFFFEEDFFFDA72
          4FFFEDC2A0FFFFDBC3FFFFF2EDFFC88C4BFF0000000000000000CCA68DE4FED0
          94FFFFF6F1FFFFECDEFFFFF4E3FF947A74FFD1B6A6FFFFE2CBFFFFECDDFFE994
          77FFE6BEA3FFFFDFC9FFFFF3EFFFC88C4BFF0000000000000000AB896DBCF2B7
          73FFFFFFFFFFFFF8F2FFFFFBF3FF9F8882FFD3BFB5FFFFEEDEFFFFFBF5FFDA72
          50FFEDC4A3FFFFE2D0FFFFF5F1FFC88C4BFF0000000000000000483E3C53C270
          39EBFFF9E6FFFFFFFFFFFFFFFFFF9B8683FFD0C3BFFFFFFDF8FFFDE7DBFFC75A
          38FFF3DACFFFFFE7D6FFFFF6F3FFC88C4BFF0000000000000000000000001605
          0349F9B569FFFFFAE6FFFFFFFFFFECEAEEFFF9FDFFFFFFF2E2FFEA8C56FFCCAE
          A4FFFFEBDEFFFFE9DCFFFFF8F4FFC88C4BFF0000000000000000000000000000
          0000A46938FFD6844EFFF2B972FFFFD799FFEFB070FFD07445FFCCB2AAFFFFF1
          E7FFFFF0E4FFFFEEE2FFFFF9F8FFC88C4BFF0000000000000000000000000000
          0000C88C4BFFF3E9E8FFEDC8ACFFE5BEA6FFF1CFB2FFF3E2DDFFFFF4EFFFFFF3
          EDFFFFF5EFFFFFF4EEFFFFFFFFFFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFFDFBFFFFFCFAFFFFFBF8FFFFFAF5FFFFF9F5FFFFFA
          F7FFC88C4BFFC88C4BFFC88C4BFFC88C4BFF0000000000000000000000000000
          0000C88C4BFFFFFFFFFFFFFFFFFFFFFEFEFFFFFEFDFFFFFDFCFFFFFCFBFFFFFE
          FEFFC88C4BFFF7BF86FFC88C4BFF000000000000000000000000000000000000
          0000CF9B64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC88C4BFFC88C4BFF00000000000000000000000000000000000000000000
          0000AF8659D7C88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C4BFFC88C
          4BFFC88C4BFF0000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000681040006810
          4000681040007018480078205800802858009040700090407000000000000000
          0000000000000000000000000000000000000000000000000000681040006810
          4000701848007820580080286000904070009040700000000000000000000000
          0000000000000000000000000000000000000000000000000000681040007018
          4800782050008030600088306000B07098000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000701848007820
          500080286000883868009040700098487800C080A800B8709800C080A8000000
          0000000000000000000000000000000000000000000000000000782050008028
          5800883868009040700098507800A8588800A8588800B8709800C080A800D8A8
          C000D088B000000000000000000000000000000000000000000078205000B078
          98008838680098487800A0508000B0609000B8709800C078A000C880A800D088
          B000D8A0C0000000000000000000000000000000000000000000A86888000000
          00000000000098487800C080A800B0609000C078A000C880B000D090B800D898
          C000E0A0C800E0A0C80000000000000000000000000000000000A86888000000
          00000000000000000000F8D8D000D098B000D098B000E0A8B800E8B0B000E8A8
          A800E8A8D000E0A0C80000000000000000000000000000000000000000000000
          00000000000000000000F8C8C000F8D8D000F8C8C000F0C0B000F0B0A000E8A0
          9000E8A0A000E8A8D000000000000000000000000000D8786000000000000000
          00000000000000000000F8C8C000F8C8C000F0C0B800F0B0A800E8A89800E898
          8800E0887800E0807000E08070000000000000000000D8786000000000000000
          0000000000000000000000000000F0C8B800E8B0A000E8A09000E8988800E090
          7800E0807000D8705800D8685000D8685000E0887800C8381800000000000000
          000000000000000000000000000000000000F8D8D800F8D0C800E8988800E080
          6800D8786000D8685000D0584000D0503800C8402000C0381800000000000000
          0000000000000000000000000000000000000000000000000000E8A09800E8A0
          9800D0685000D0604800D0583800C8482800C8381800C0300000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000E0907800D0503800C8483000C8402000C0301000C0280000000000000000
          000000000000000000000000000000000000000000000000000000000000D068
          4800D0684800C8483000C8402000C0301000C0280000C0280000000000000000
          0000000000000000000000000000000000000000000000000000D0604800D060
          4800C8503000C8482800C8381800C0280000C0280000C0280000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0000FF000001FF000003FF0000007F0000001F0000001F0000600F0000700F
          0000F00E0000F0060000F8000000FC000000FF000000FFC00000FF800000FF00
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000D140F26121C14430000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000060A0726222D25542C5F39F70A09
          0943000000000000000000000000000000000000000000000000000000000000
          0000446A77AB244C60D1295468D1295468D163A07EF75DAA73FF52A969FF3463
          3DF732525FD1295468D1295468D117394BAB0000000000000000000000000000
          0000538291D10F1F28541621232E1620232E74B18BD995E5AFFF89DFA3FF64A7
          77F72D35314C1620232E283B4154295468D10000000000000000000000000000
          0000538291D1050E132E0000000000000000121A15262532295481C297F71F27
          224300000000000000001620232E295468D10000000000000000000000000000
          0000538291D1050E132E000000000000000000000000101913261C2A21430000
          000000000000000000001620232E295468D100000000000000000608080A151E
          212E538091D90B1C25540F171C26000000000000000000000000000000000000
          000000000000161D1F2626393F542D586DD90D171D2E030506086793A9DB6CB3
          CCFF7DCADDFF27A1D1FF297EA9F7071015260000000000000000000000000000
          000012191D265E9FBBF784C6D8FF52B8DBFF1C8FC2FF275670B35492ADFF75DC
          F4FF8EE3F2FF1DB3ECFF039ADAFF02131C2E0000000000000000000000000000
          000010171B2E4FC2E8FF97E7F3FF59CDF0FF03A5E8FF086390D15897B1FF76DB
          F4FF8CE2F4FF1EB5ECFF039BDCFF02141D2E0000000000000000000000000000
          000011181B2E50C5EAFF97E7F5FF58CDEFFF03A7EAFF096592D15C9CB7FF77DC
          F4FF8DE2F4FF1EB4EDFF039BDCFF02141D2E0000000000000000000000000000
          000012191D2E52C5EBFF98E7F3FF58CCF0FF04A7EAFF096592D160A0BAFF77DB
          F5FF8EE2F4FF1DB4ECFF039BDCFF02141D2E0000000000000000000000000000
          0000131A1D2E52C6ECFF99E7F5FF59CDF0FF03A6E9FF096592D166A5BFFF7EDE
          F4FF96E7F5FF37BFEFFF12A0DBFF03141D2E0000000000000000000000000000
          0000141B1F2E58C9ECFF9FEAF6FF6CD5F2FF1BB0EAFF0E6892D186B4C6FFB9F0
          F6FFC3F7FAFFBCF4FAFFA1DCE7FF121C202E0000000000000000000000000000
          0000151D212EABE1EBFFBFF5F8FFC4F8FCFFB5EEF5FF5F8E9FD1465458659AC7
          D4FF81B0C2FF80AFC0FF82A3AEDB0406060A0000000000000000000000000000
          00000608080A91B3BCDB8CBACAFF7CACBEFF8CB5C7FF313D4152}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FE7F0000FC3F0000C0030000C0030000CC330000CE73000007E0
          000003C0000003C0000003C0000003C0000003C0000003C0000003C0000003C0
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FDFCFCFFFCFE
          FEFFFDFEF8FFFFFBFDFFFFFBFFFFF9FEFAFFF7FEFCFFFCFDFDFFDEE1E1FFFDFE
          FEFFFBFEFDFFFEFFFAFFFCFBFDFFFFFBFFFFFBFCF9FFFAFEFCFFFEFEFAFFF7F9
          FEFFF8FEF8FFD8D6DBFFF5F0F7FFFAFDFEFFF8FDFDFFD8D6DDFF302E40FF4F4C
          68FFD5D5DEFFF0F2F5FFB1B3B6FF707271FFFCFDFEFFFAFDF9FFFDFDFDFFFDFB
          FEFFF4FDFDFF353A70FF27295BFFACB0C0FF4A4B72FF0E1063FF08075CFF1F16
          A2FF0E0B79FF262869FF101038FFC7D0D0FFFCFEFCFFFEFCFEFFFEFEFEFFFFFE
          FBFFF9FCFFFFA2A9D7FF130DB7FF040590FF120EBDFF0B0EC6FF04077DFF0A0E
          DDFF0B0AE8FF0D0AC5FF282863FFEFF3F7FFFEFEFBFFFEFEFDFFF9FDFEFFFEFD
          FAFFFBF8F9FFCED4E8FF1815C3FF0705F6FF0705F5FF0C0DCAFF050671FF0A11
          D8FF0406F1FF080FB3FF4B4A72FFFDF7FFFFFEFCFDFFFBFFFBFFFAFEFFFFFFFF
          F8FFFFFEF7FFF4FCFEFF3230ABFF130AD7FF0B09C2FF050395FF020162FF0706
          A0FF0E0AD3FF060C68FFD0CED5FFFFFDFCFFFEFEFEFFFBFFFEFFFEFEFEFFFFFE
          F8FFFEFFFBFFF6FCFEFFA7A5D7FF07057BFF040969FF131792FF100D86FF171B
          8CFF060678FF292859FFF6F3F7FFFEFEF9FFF7FDF8FFFCFCFCFFFFFDFFFFFCFC
          FFFFFBFAFFFFFDFAFFFFA9A7D8FF111695FF091097FF041C8DFF051E8DFF0B16
          9AFF1816BCFF2C2C73FFF3F0F8FFFCFCFEFFF9FDFEFFFEFAFDFFFFFEFCFFF7F9
          FCFFFCF9FDFFF0EFFAFF292BACFF121793FF1E6AA3FF31D7E3FF24E3E7FF3DB4
          D3FF0D269CFF0E18A1FFB1ADC8FFFDFBFFFFFDFDF9FFFCFEFDFFFFFEFCFFFBFD
          FCFFF8FEF9FFC4CEE2FF1016ADFF061957FF2FDDE0FF0EFDFDFF07FEFBFF22F5
          FCFF1474AAFF0614A8FF323266FFFDFDFEFFFDFEF9FFFCFFFBFFFFFCFEFFFDFE
          FEFFF8FFF9FFC9CAE4FF1117A4FF041A53FF2AE1E1FF0CFDFDFF05FBFAFF1EF9
          FEFF0C71AAFF0718A0FF323460FFFBFCFDFFFFF9FFFFFBFCFEFFFCFFFFFFFEFD
          FEFFFDFDFAFFD8D1E8FF10109CFF081662FF3EBAC2FF29F9F8FF15FBFDFF40E7
          ECFF195CA9FF09159FFF4B4A76FFFFFBFEFFFFFBFFFFF8FDFEFFFDFFFFFFFCFE
          FFFFFFFDFFFFFEFCFDFF4F4EA1FF1018A4FF122E6BFF127496FF097A9AFF1D5F
          87FF0F159EFF21228EFFD4D3E2FFFFFEFEFFFFFFFEFFFEFFFAFFFFFDFFFFFBFF
          FFFFFEFEFEFFFFFFFDFFECF1FAFF434AA9FF16159EFF17178BFF161589FF1213
          95FF101296FFB4B7D4FFFCFEFDFFFEFFFBFFFCFFFCFFFFFEFEFFFFFFFCFFFCFE
          FFFFFEFFFFFFFFFDFFFFF9FAFFFFEBF0F9FFA9A9D6FF323399FF3031A2FF494C
          9BFFD2CEE9FFFAFAFFFFF8FFFAFFFDFFFBFFFDFFFFFFFEFDFFFFFFFFFCFFFFFF
          FEFFFEFFFFFFFFFBFFFFFDFDFEFFFDFDFBFFFEFCFDFFFAF9FDFFFDFAFBFFF8FB
          FCFFFCFBFEFFFFFBFFFFFFFDFFFFFFFFFAFFFFFDFEFFFBFEFFFF}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004588A7D41687BBFE537C8FFFAAA9A8FFA7B7BDFFC5CCCFFFD1CCCAFFB1B0
          AFFFAC9B94FF126088FE157DADFE207EA9FD456E84B4000000000000000041A7
          CADF00ACE0FF00C5FDFF7CA0A9FF41A6C5FF00ADECFF56CFF0FFFFFFFFFFFEFD
          FDFFF7E0D9FF00A1CDFF00D5FFFF43EDFFFF0C7AADFF000000000000000005C2
          F5FF00B5E8FF00BAF1FF7BA9B5FF5096B1FF0091CBFF51B4D2FFEDDCD9FFFDFA
          FAFFFFFDF6FF0095C1FF00C5FDFF3FE0FFFF0577ACFF000000000000000005C9
          FBFF00B2E5FF00B4ECFF7EB2C1FF6696B0FF007FB8FF48A2BEFFD4C0BBFFE8DE
          DBFFFFFFFCFF0097C4FF00C6FDFF43DFFFFF0576A9FF000000000000000005C7
          F9FF00ADE0FF00B2E8FF67B2C8FFBBC3C6FFA7B2B5FF87989DFF7B979EFF81A0
          A8FF9BADB1FF0084A7FF009AC5FF0ED3FFFF0577AAFF000000000000000005C8
          FAFF00ACDFFF00AEE4FF00AFE8FF00B0ECFF00B4F1FF00B6F3FF00B9F6FF00BB
          F8FF00BDF9FF00C1FBFF00C3F9FF00CCFFFF0579ABFF000000000000000005C7
          F9FF00A8DDFF23A9D3FF41A5C3FF3DA5C2FF3BA5C3FF3CA6C3FF3BA6C5FF3BA7
          C5FF39A7C6FF3DA7C6FF22B3D9FF00CBFFFF0577A9FF000000000000000005C6
          F8FF00A4DCFF87AEBBFFFFEAE2FFFDE9E3FFFFECE6FFFDE9E3FFFAE7E1FFF5E1
          DBFFEFDBD5FFF5D7CFFF85A7B0FF00C8FFFF0578AAFF000000000000000005C7
          F9FF009FD8FF80B0BDFFFFF6F3FFD3D5D6FFBBBDBEFFBDBFC0FFBDBFBFFFBDBF
          C0FFC7CACBFFECE1DEFF7DA9B5FF00C7FFFF0578AAFF000000000000000005C6
          F8FF009CD4FF83B2C1FFFFFCF9FFF5F4F4FFEBEBEBFFEDEDEDFFE8E8E8FFE4E4
          E4FFE2E1E1FFEEE4E1FF7FAAB7FF00C6FEFF0577A9FF000000000000000005C5
          F7FF0099D2FF85B5C2FFFFFFFFFFDCDEDFFFC1C4C5FFC3C6C7FFC3C6C7FFC2C5
          C6FFCCCFD0FFF0E6E3FF80ABB8FF00C6FFFF0577A9FF000000000000000005C5
          F8FF0095CDFF88B7C4FFFFFFFFFFFCFBFBFFECECECFFEDEDECFFE7E7E7FFE2E2
          E2FFE3E2E2FFF3E8E5FF80AEBAFF00B7EDFF0580B2FF00000000000000000AC5
          F6FF008EC7FF8BB6C5FFFFFFFFFFE6E8E9FFD0D2D2FFD1D3D4FFCED1D1FFCCCE
          CFFFD4D6D6FFF7ECE9FF82B1BDFF0086AEFF0B94C5FF000000000000000046A6
          BCBC11C6FCFF87C2D0FFD6D5D5FFCDD5D8FFCED5D6FFCAD2D4FFC6CDCFFFBFC7
          CBFFBAC0C3FFBEBEBEFF7EADBBFF11B7EBFF468AA1BC00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C001000080010000800100008001000080010000800100008001
          000080010000800100008001000080010000800100008001000080010000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004423
          2454C36465FFAA5556FFA45253FF9F4F50FF9A4D4DFF944A4AFF8F4747FF8944
          44FF834141FF783B3CFF783B3CFF723939FF6E3637FF0000000000000000CF6B
          6CFFF38E8FFFE68081FFAA4424FF473221FFC3B4ABFFC6BBB3FFCAC1BCFFCEC8
          C4FF564D48FF9E3E33FF9C3D36FF983931FF723939FF0000000000000000D16F
          70FFFF999AFFEC8687FFE68081FF715B4BFF473C34FF8D7868FFEDE0D8FFF1E7
          E0FF8F7F73FFA34135FFA2423CFF9C3D35FF783B3CFF0000000000000000D475
          76FFFF9FA0FFF59091FFEC8687FF715B4BFF000000FF473C34FFE9D9CEFFECDD
          D4FF857467FFAE4B43FFAA4944FFA3423CFF7D3E3EFF0000000000000000D77B
          7CFFFFA9AAFFFB9FA0FFF59394FF715B4BFF715B4BFF715B4BFF715B4BFF7662
          52FF7D6A5BFFBA5654FFB24F4CFFAA4944FF834141FF0000000000000000DB83
          84FFFFB3B4FFFFADAEFFFCA3A4FFF48E8FFFEC8687FFE68081FFDF797AFFD771
          72FFD16B6CFFC15D5CFFBA5654FFB2504CFF894444FF0000000000000000DF8A
          8BFFFFBBBCFFFFB6B7FFC96360FFC45E56FFBE584BFFB8523FFFB34D34FFAD47
          28FFA7411CFFA13B11FFC15D5CFFBA5654FF8F4747FF0000000000000000E291
          92FFFFBDBEFFCC6667FFFFFFFFFFFFFFFFFFFBF8F6FFF6EEEAFFF0E5DEFFEADB
          D2FFE5D1C6FFE1CABDFFA13B11FFC25D5CFF944A4AFF0000000000000000E597
          98FFFFBDBEFFD36D6EFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F6FFF6EEEAFFF0E5
          DEFFEADBD2FFE5D1C6FFA7411CFFCC6767FF9A4D4DFF0000000000000000E99E
          9FFFFFBDBEFFDC7677FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F6FFF6EE
          EAFFF0E5DEFFEADBD2FFAD4728FFD77172FF9F4F50FF0000000000000000EDA6
          A7FFFFBDBEFFE68081FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8
          F6FFF6EEEAFFF0E5DEFFB34D34FFDF797AFFA45253FF0000000000000000F0AC
          ADFFFFBDBEFFEF898AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFBF8F6FFF6EEEAFFB8523FFF673333FFAA5556FF0000000000000000F3B2
          B3FFFFBDBEFFF89293FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFBF8F6FFBE584BFFB05859FFB05859FF0000000000000000F5B6
          B7FFF5B6B7FFF3B2B3FFF1ADAEFFEEA7A8FFEAA1A2FFE79A9BFFE49394FFE08E
          8FFFDD8788FFDA8081FFD67A7BFFD37475FFD16F70FF00000000000000000000
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
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000848400000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000848400008484
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000084840000848400008484000084840000848400008484
          00008484000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000084840000848400008484000084840000848400008484
          0000848400008484000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000084840000848400008484000084840000848400008484
          00008484000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000848400008484
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000848400000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000008484000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000848400008484000000000000000000000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000084840000848400008484000084840000848400008484
          00008484000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000008484000084840000848400008484000084840000848400008484
          00008484000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000084840000848400008484000084840000848400008484
          00008484000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000848400008484000000000000000000000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000008484000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
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
          000003567000005C8000005C8000005C8000005C8000005C8000005C8000005C
          80000000000000000000000000000000000000000000000000000000000005A6
          D500BDFFFF0043FFFF0000FFFF0000EBFF0000D7FF0000C9FC0000BDF00000A2
          D700005C800000000000000000000000000000000000000000000000000005A6
          D500C9FFFF003AFFFF0000FCFF0000E4FF0000D1FF0000C2F50000B5E80000AD
          E100005C800000000000000000000000000000000000000000000000000005A6
          D500C7FFFF0039FFFF0000FCFF0000E4FF0000D1FF0000C2F50000B4E70000AC
          DF00005C800000000000000000000000000000000000000000000000000005A6
          D500C8FFFF003AFFFF0000FEFF0000E6FF0000D2FF0000C2F50000B4E80000AB
          DE00005C800000000000000000000000000000000000000000000000000005A6
          D500CDFFFF0037FEFF0000F0FC0000DBFA0000C9FA0000C0F40000B7EB0000AD
          E100005C800000000000000000000000000000000000000000000000000005A6
          D5001AD8FF0005A6D50005A6D50005A6D50005A6D50005A6D50005A6D5000095
          CA00005C800000000000000000006B6B6B0052525200000000000000000005A6
          D500179FCF0037D7F90037D7F90062EEFF004DEBFF0034D3F60005A6D5003F84
          9400005C80000000000000000000999999005959590000000000000000000000
          0000005C8000005C8000005C8000005C8000005C8000005C8000A59E9C005266
          6F000000000000000000000000009C9C9C005959590000000000000000000000
          0000000000000000000000000000000000000000000000000000A59E9C005D5B
          5A00000000000000000000000000A5A5A5005959590000000000000000000000
          0000000000000000000000000000000000000000000000000000A5A4A4006363
          6300000000000000000000000000A4A4A4005959590000000000000000000000
          0000000000000000000000000000000000000000000000000000AFAFAF006464
          6400000000000000000000000000919191003E3E3E0000000000000000000000
          00000000000000000000000000000000000000000000000000008A8A8A009B9B
          9B007A7A7A007D7D7D00A0A0A000919191003E3E3E0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006A6A
          6A004848480048484800484848003E3E3E000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C03F0000801F0000801F0000801F0000801F0000801F00008019
          000080190000C0390000FF390000FF390000FF390000FF010000FF830000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000455C00006E9800006E9800006E9800006E9800006E
          9800006E980000597B0000000000000000000000000000000000000000000000
          0000000000000789AE00ABFFFF004CFFFF0000FFFF0000EEFF0000D9FF0000B5
          E90000AEE2000096CA0000628B00000000000000000000000000000000000000
          00000000000012ABCD00C6FFFF0043FFFF0000FCFF0000E7FF0000D3FF0000C3
          F60000B6E90000ACDF00007CAC00000000000000000000000000000000000000
          00000000000011ADCF00C5FFFF0043FFFF0000FCFF0000E7FF0000D3FF0000C3
          F60000B6E90000AADD00007CAC00000000000000000000000000000000000000
          00000000000013B1D400C5FFFF0043FFFF0000FCFF0000E7FF0000D3FF0000C3
          F60000B6E90000AADD00007CAC00000000000000000000000000000000000000
          00000000000014B6D700CAFFFF0046FFFF0000FFFF0000EBFF0000D5FF0000C4
          F90000B8EC0000ABDE00007CAC00000000000000000000000000000000000000
          0000000000000BB6DB0045EFFF0019B5DE0019B5DE000AAADA000AAADA000AAA
          DA00019FD3000099CE00007CAC00000000000000000000000000000000000000
          000000000000019FD30019B5DE0051D3E70051D3E7005BECFF004AE7FF003AE6
          FF003AE6FF00019FD300007CAC00000000000000000000000000000000000000
          00000000000000000000AFAFAF006E6E6C0000B8EC0000B8EC00019FD300019F
          D3007878780059504D0000678F00000000000000000000000000000000000000
          00000000000000000000AFAFAF00695A57000000000000000000000000000000
          000075706F005E57550000000000000000000000000000000000000000000000
          00000000000000000000AFAFAF00696260000000000000000000000000000000
          000075706F00635F5E0000000000000000000000000000000000000000000000
          000000000000000000008A8A8A00787878000000000000000000000000000000
          000075706F005E5E5E0000000000000000000000000000000000000000000000
          0000000000000000000000000000787878007878780069646200656060007878
          780075706F000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007878780078787800787878007878
          7800000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F00F0000E0070000E0070000E0070000E0070000E0070000E007
          0000E0070000F0070000F3CF0000F3CF0000F3CF0000F81F0000FC3F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000004000A017305F10B8417F4097A12F506720EF30871
          10F1036A05EF000C001B00000000000000000000000000000000000000000000
          000000000000000000000005000B25A93CFF69F59EFF44E47EFF45E57FFF45E1
          7FFF189230FF000C001A00000000000000000000000000000000000000000000
          000000000000000000000005000B22A737FF77EFA4FF40DC75FF41DB74FF42DB
          79FF188D2BFF000C001800000000000000000000000000000000000000000000
          000000000000000000000006000D25AC3AFF7DF3A9FF42DF77FF43DE77FF45DE
          7CFF18902BFF000D001A00000000000000000000000000000000000000000000
          000000000000000000000007000E26AF3CFF85F6AEFF44E279FF46E079FF48E1
          7EFF1B942EFF000D001C00000000000000000000000000000000000000000001
          00010005000A0005000A000B001828B03AFF8CF8B5FF48E57CFF49E37DFF4AE2
          81FF19932BFF001300290006000D0005000C0001000200000000000000000001
          0004006400B415A723FF1BB02EFF35C955FF63F396FF50EA83FF4DE780FF4BE2
          7FFF249A3DFF129321FF11981EFF006100C00003000700000000000000000000
          00000007000B027A05C89EFFC7FF7DFFADFF53F189FF52EB85FF50E983FF4CE5
          80FF4DE583FF4FEC8AFF04790AD2000900100000000000000000000000000000
          000000000000000E0015018806DAA0FFC5FF62F796FF53EF88FF51EB84FF50EA
          86FF51ED8AFF07860DE20011001C000000000000000000000000000000000000
          00000000000000000000001700230B9913E8A4FFC9FF5CF390FF53EF89FF59F5
          93FF0E9B19EE001C002C00000000000000000000000000000000000000000000
          00000000000000000000000000000023003319AC25F2A4FFCCFF72FEA9FF18AF
          27F70028003E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000031004832C647FA35CC4FFC0038
          0055000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000003E005F0048006E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000F81F0000F81F0000F81F0000F81F0000F81F0000F81F
          0000C0030000E0070000F00F0000F81F0000FC3F0000FE3F0000FE7F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000440066004E00750000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000036004D20AC34FB27B13DFD003F
          005A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000025003719B12AF469FFA3FF56D588FF169F
          23F8002B00420000000000000000000000000000000000000000000000000000
          0000000000000000000000180025109E16EA67FFA2FF5BF690FF57F48DFF4CCB
          7EFF0C9215F0001D002F00000000000000000000000000000000000000000000
          000000000000000F0017068B0ADD63FF9CFF5AF590FF55EF89FF52ED86FF51EC
          86FF45C576FF06840BE50013001E000000000000000000000000000000000000
          00000007000B047D07CA68FFA2FF79FFA9FF6AF39AFF51EB85FF50EA83FF4CE7
          81FF4EEA86FF43C475FF047709D4000900110000000000000000000000000002
          0004016C02CF10941AFE1C9826FE49CA63FF8BF8B1FF4BE87FFF4DE780FF49DD
          7DFF28A946FF0D8818FE0B8814FE016802D70004000800000000000000000001
          00020007000B0006000B00000000199B27FF86F8B0FF47E57CFF49E47DFF4ADF
          7FFF128A1FFF000000000005000B0005000B0001000200000000000000000000
          00000000000000000000000000001A9B29FF83F6AEFF44E279FF46E17AFF47DE
          7CFF138A21FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A9929FF7FF3A9FF41DF76FF43DD77FF44DC
          7BFF138921FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000199626FF76F0A3FF3CDC71FF3FDA73FF41D9
          76FF118720FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000199728FF97FCC2FF6BEC9BFF5BE98FFF4BE2
          84FF128923FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000017505F60D861AFA0A8115FA0C7E14F80E80
          1AF6037007F50000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FE7F0000FE3F0000FC3F0000F81F0000F00F0000E0070000C003
          0000F81F0000F81F0000F81F0000F81F0000F81F0000F81F0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0017170F01812A1C02A32A1C02A32A1C02A32A1C02A32A1C02A32A1C02A32A1C
          02A32A1C02A32B1C02A4514A3BC52A1C03A4130C00780000001100000003291C
          028FB57B0AFDBA8217FFBD861CFFBE861CFFBD861CFFBD861CFFBD861CFFBE86
          1CFFBE861CFFBD851CFFB69C6AFFBC8825FFB7821BFC160E007700000007694B
          0CC387540DFF97600BFFAD740FFFA8710FFF996A1AFF936A21FF986A19FFA771
          0FFFA57010FF9C6B13FFAB9269FF976415FFB9831EFF3C2804AA000000076B4D
          0EC483520FFFAF740AFFBF850EFF9C8556FFBAB6AFFFC3C2BFFFB1ADA6FF9B88
          60FF9A8761FFAEA89CFFACA491FFA16C0FFFB57C11FF3D2804AB000000076B4D
          0EC484520FFFB2760AFFA47D2CFFCDCDCBFFE6E6E6FFB9B1A0FFA69778FFB6B2
          AAFFDFDFDEFFE8E8E8FFBAB09EFFAA730FFFB57C11FF3D2804AB000000076B4D
          0EC484520FFFB47D10FFA68F59FFEBEBEBFFD7D5CDFFAF831FFFC98E0DFFA981
          2BFFD4D2CFFFE8E8E8FFB2A996FFAC740FFFB57C11FF3D2804AB000000076B4D
          0EC484520FFFC1931FFFAF9548FFE3E3E2FFE5E5E2FFAE9754FFBD8F20FFB07F
          14FFC5C0B5FFE6E6E6FFADA390FFAC740FFFB57C11FF3D2804AB000000076D52
          14C4855513FFC69922FFD0AA30FFB5A981FFD9D8D3FFDDDDDCFFD0CDC3FFC3BA
          A9FFDEDDDAFFD6D6D6FFA1998AFF9D752BFFB57D13FF3F2A04AB00000012745E
          2DD2886433FFB99840FFCDAF4BFFC1A64AFFAB9856FFA3976FFFAFAB9CFFC8C7
          C2FFD9D9D8FFC9C9C9FF9D8E6CFF9D8658FFA78133FF4A3B1ABE0000000B745E
          27C98C642BFFC8A53FFFCFB34CFFAF9E64FFACA17DFFC3A94EFFD9BA4CFFBDA4
          4BFFDAD8D0FFD6D6D6FFAEA482FFAB9A6CFFB5882CFF493914B2000000077056
          18C4865716FFCDA530FFCCAF43FFD2CFC5FFF0F0F0FFCAC5AFFFB4A66FFFC1B9
          9BFFF4F4F3FFEAEAE9FFC1BBA6FFBF9C3EFFBA8416FF423007AB000000077057
          1AC4865616FFCEA733FFE3C445FFBBA961FFDFDDD4FFF1F1F1FFF3F3F3FFF4F4
          F4FFECECEAFFC8C1A6FFC1B484FFC69F31FFBB8516FF433108AB000000077058
          1CC3845618FFB99129FFD5B13AFFD0AD39FFB89B3DFFAA934EFFA69259FFA792
          54FFAF9647FFC3A338FFC7B57EFFB48A27FFB88214FF433208AA00000003493E
          249FB38E54FF7E5017FF815316FF815316FF815316FF805216FF7F5216FF7F52
          16FF805316FF815316FFA18B6FFF7E5116FFBE8F19FE271D0486000000000201
          011D5A4E36A9887035CE876E31CE876E31CE876E31CE876E31CE876E31CE876E
          31CE876E31CE876D31CE998C6CE1856C2BCF47360A9F00000016000000000000
          0000000000040000000800000008000000080000000800000008000000080000
          000800000008000000080101011C000000080000000300000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000080000000C001
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001F0F075BE3997BFF0702002A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B3755BD0FFCEBFFF0E06024500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000101000CEFB6A0FFE9AA92FE0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002111085AFFDBD1FF8C5D49BD0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000644232A2FFE5DCFF361E12720000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000D49E87EEF8CCBDFF070301240000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000804012CFAD7CAFFCD9782E700000000000000000000000000001E580000
          45A200003B8C00000B2800000000000000000000000000000000000000000000
          000039211577FFF9F3FF5F3D28990000000000001145000082D50000B8FF0000
          B4FF0000B1FF0000AFFF0000347C000000000000000000000000000000000000
          0000956E58C4C8BCDAFF16097CCF0000AAE30000CEFF0000CDFF0000C8FF0000
          C5FF0000C1FF0000BFFF0000BFFF0000337C0000000000000000000000000000
          0007F3CDB6FF635FCEFF0000F5FF0000EDFF0000E8FF0000E5FF0000E1FF0000
          E0FF0000DFFF0000D2FF0000CFFF0000CAFF1313243D00000000000000001106
          004EFFFFF5FF1211D4FF0000FFFF0000FEFF0000FDFF0000FDFF0000FEFF0000
          93D200001E5D0000082E0000062400000A3C1414284100000000000000005638
          2999E3E2F1FF0000E8FF0000FFFF0000FFFF0000FFFF0000FFFF000080C00000
          000000000000000000000000000000000000000000000000000000000000C39C
          85E48D8FDAFF0000FFFF0000FFFF0000FFFF0000FFFF0000CCF0000002140000
          000000000000000000000000000000000000000000000000000000000000E1BB
          A3FF3F3DC4FF0000F5FF0000FFFF0000EFFF000090D300000421000000000000
          0000000000000000000000000000000000000000000000000000000000002C27
          24321B19192025252F36393946521D1D24290000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000010000000360000025A010103640000004900000023000000060000
          0000000000000000000000000000000000000000000000000000000002080404
          07680C0C30C115155AE6151563F63E3E8BF6252572E408082FC1000002800000
          003E0000000A00000000000000000000000000000000000000002A2A55976464
          C2FF4C4CE4FF2929CDFF16169EFF5656BCFF6E6EF6FF6464F6FF3E3EAFFB1313
          43D70000078D0000003A000000060000000000000000000000006969B6D86B6B
          DEFF4D4DDDFE2222C1FF1C1C9DFF4343B5FF2B2BBAFF5858CBFF7575ECFF6F6F
          F0FF4444ACFA12123DD3000000770000001E00000000000000006C6CAED18181
          D8FF6060D2FF3030D8FF2121AAFF5656C4FF1414E6FF1717CEFF3434B5FF5656
          C1FF6B6BDFFF6262DBFF323285F508081AB400000041000000045D5DA7C98484
          D4FF7979D1FF3D3DD3FF3A3AB0FF5C5CC7FF1010F0FF1C1CFBFF1919EFFF2626
          CEFF3C3CB9FF4D4DC4FF5C5CD3FF4242AFFF0A0A2ECE0000003A484898BC7070
          D5FF8C8CD5FF4444CEFF4848B3FF5656CFFF0000FAFF0E0EFEFF1F1FFAFF302F
          F8FF3A39EBFF3837D5FF1E1EBCFB0E0EB1FD02027DFF000004653B3B8AAD5D5D
          DCFF8282DEFF4848C2FF5D5DB2FF4747DAFF0000F1FF0F0FF0FF1F1FF1FF3032
          F1FF494DE6FF2C31CAFC0000C8F90000B8FB000078FA0000055D32327C9D4747
          E0FF7070EAFF4343BCFF6B6BB3FF3434DDFF0000C5FF0C0B94FF1F2199FF4B44
          A6FF9D718DFF6D497EFB0603C6F60000B6FB00005FEF0000013E2C2C71913535
          E4FF5A5AF1FF3C3CB9FF6868B7FF2F2FCAFF0000A6FF040373FF070B87FF2012
          6FFFB97A74FFC3755BFE180476F60000A1FC000048DE0000002325256D8D1F1F
          E9FF4444F6FF3B3BBAFF6161B8FF4A4ABCFF09098DFF000086FF00009DFF0000
          9AFF5A47A2FF66529FFF00006BFC000065FF00002FC000000010252571900808
          F9FF2727FBFF3636BFFF6868C1FF5B5BB3FF090988FF000097FF00009AFF0000
          99FF000099FF00009AFF0000A1FF000086FF000016AA000000082D2D80A50E0E
          D9FF2727C7FF3131A4FF6868BBFF3838AAFF000091FF000093FF000093FF0000
          96FF000098FF000099FF00009CFF000099FF000016B6000000103F3F8CB97171
          BAFF7F7FB9FF7171BBFF4A4ADAFF2C2CEDFF1616D5FF0000CFFF0000BAFF0000
          A8FF00009EFF000096FF000093FF00009DFF00002BD4000000180202121E0B0B
          415A0E0E68810808899F0807A6BF534DC1D93B3BCDFF0000D8FE0000E1F40000
          EFFF0606D3FF1F1FCBFF0202C3F900009DEE0000179300000004000000000000
          000000000000000000000000050802011318191A8E92171798D000003D8D0000
          61B20605489211104157000036450000192E0000000A00000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C07F0000001F000000070000000300000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000F001
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00C7C7C70092929200BBBBBB00D9D9D900FBFBFB00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8
          F800BCBCBC008E8E8E0079797900707070007171710088888800A3A3A300C9C9
          C900E7E7E700FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D7D7D7008A8A
          8A008A8A8A00BBBBBB0082828200757575007979790076767600727272006E6E
          6E007575750084848400A2A2A200C9C9C900E7E7E700F8F8F800A4A4A4007676
          7600A0A0A000B8B8B8007D7D7D006A6A6A006F6F6F0071717100747373007B74
          710079747200747373006F6F6F006D6D6D006E6E6E009B9B9B00A8A8A8007979
          79009B9B9B00B7B7B700777777005F5F5F0065656500696867005E636600456F
          8100596B76006C6D6E00717170007372720068686800A3A3A300C9C9C9007A7A
          7A0099999900B8B8B80078787800656565006464640065626100454D530004AB
          DB0005BBE8003B7186006C6461006868680062626200D2D2D200DBDBDB007A7A
          7A0096969600B9B9B900828282007373730075757500767271005E6B720039CD
          ED0043F4FF00387A9000625956005C5C5C0057575700D1D1D100D7D7D7007979
          790094949400B7B7B70089898900797979007B7B7B007C7A7900747A7E004B99
          AF004AA9C200518091007A7372006F6F6F0061616100ACACAC00EDEDED008585
          850090909000B5B5B5008F8F8F007F7F7F00818181008080800081808000847B
          79007D7879007E7D7E007E7F7F007E7E7E00767676009B9B9B00FAFAFA008D8D
          8D008D8D8D00B4B4B40095959500868686008888880087878700878787008686
          8600868585008585850084848400848484007B7B7B009E9E9E00F9F9F9008C8C
          8C008B8B8B00B3B3B300999999008D8D8D008E8E8E008E8E8E008D8D8D008D8D
          8D008C8C8C008C8C8C008B8B8B008B8B8B00818181009E9E9E00F9F9F9008C8C
          8C0088888800B2B2B2009C9C9C00959595009595950094949400939393009292
          920092929200919191009191910091919100868686009B9B9B00F9F9F9008A8A
          8A008E8E8E00BFBFBF00BBBBBB00B3B3B300B1B1B100B0B0B000ABABAB00A7A7
          A700A4A4A400A3A3A3009D9D9D009D9D9D008E8E8E00A1A1A100FDFDFD00B9B9
          B90099999900ACACAC00AFAFAF00A8A8A800ADADAD00B7B7B700BCBCBC00C2C2
          C200BCBCBC00ADADAD00C1C1C100B7B7B70089898900CCCCCC00FFFFFF00FFFF
          FF00F5F5F500F3F3F300E9E9E900A5A5A50088888800767676006B6B6B006C6C
          6C00707070007878780092929200A7A7A700BFBFBF00FAFAFA00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00F2F2F200B6B6B600A1A1A1009A9A9A00A5A5
          A500DADADA00F4F4F400F1F1F100FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001B15103F644B37FF634935FF664C38FF2C22
          1A66000000000000000000000000000000000000000000000000000000000000
          00000000000000000000251D165769503CFF1B15103F000000000D0A081E694F
          3BFF1E1711490000000000000000000000000000000000000000000000000000
          000000000000000000006D5440FF15100C30251C1557664C39FF140F0B331611
          0C36644A36FF0000000000000000000000000000000000000000000000000000
          00000000000000000000735A47FF000000006B513EFF2B20196A654B38FF0000
          0000634935FF0000000000000000000000000000000000000000000000000000
          000000000000000000007A614EFF00000000705744FF00000000684F3BFF0000
          0000634935FF0000000000000000000000000000000000000000000000000000
          00000000000000000000816956FF00000000775E4BFF000000006B513EFF0000
          0000674D39FF0000000000000000000000000000000000000000000000000000
          00000000000000000000846C5AFF000000007B624FFF000000006E5441FF0000
          00006B523EFF0000000000000000000000000000000000000000000000000000
          0000000000000000000087705EFF000000007E6553FF00000000745B48FF0000
          00006E5542FF0000000000000000000000000000000000000000000000000000
          000000000000000000008E7765FF00000000846D5AFF000000007B624FFF0000
          0000715845FF0000000000000000000000000000000000000000000000000000
          00000000000000000000947D6CFF000000008B7462FF00000000816A57FF0000
          0000785F4CFF0000000000000000000000000000000000000000000000000000
          00000000000000000000998372FF00000000927B69FF0000000088715FFF0000
          00007F6654FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000097816FFF00000000000000000000
          0000856E5CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000009C8675FF3D352E6400000000362E
          285C947D6BFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003D342E639D8776FF9A8472FF9680
          6EFF352D275A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000809
          083142794AFF3F7447FF396B41FF37663FFF36623DFF335E3BFF305838FF2E56
          37FF2C5234FF2A4F34FF284B30FF1E1008310000000000000000C2C4C4FF2A2D
          2BFF74C487FFF8F5F3FFEFE9E6FFEAE1DDFFE5DBD5FFDFD3CDFFDBCCC4FFD5C5
          BCFFD0BDB4FFCBB8ADFFC7B1A6FF294B31FF0000000000000000959090FFB3B0
          AEFF4C8D53FF3C6D43FF37663FFF35623DFF345F3DFF335C3BFF315939FF3056
          38FF2E5336FF2D5134FFB7A49AFF2C5033FF0000000000000000C3C5C5FF2B2E
          2CFF4A8751FF84CA94FF57AE69FF4DA55CFF47A359FF3E9B4DFF3A994CFF3293
          42FF278B36FF2F5537FF8C4E00FFAA5E00FF391F00460000000076716EFFB3B0
          AEFF4D8D55FF8ACE98FF71C284FF6CBE81FF67BB7CFF62B877FF5CB473FF57B1
          6FFF2F913DFF325939FFE59100FFFFA100FFAA5E00FF00000000C3C5C5FF2B2E
          2CFF509458FF8FD19EFF79C58BFF73C287FF6EBF82FF68BC7EFF64B97AFF5EB5
          75FF389848FF345E3DFFE59100FFFFA100FFAB5E00FF0000000076726FFFB3B0
          AEFF53995BFFA1D8ABFF7FC990FF7AC78CFF75C488FF70C083FF6BBE80FF66BA
          7BFF429E53FF36623FFF006E00FF008500FF002C004600000000C3C5C5FF2B2E
          2CFF569F5EFFA4DBB0FF86CD96FF81CB91FF7DC88EFF77C48AFF73C285FF6DBF
          81FF4FA75FFF3A6742FF39BB66FF3FD072FF008500FF00000000787371FFB3B0
          AFFF5AA461FFA8DEB3FF8CD19BFF87CF97FF83CB93FF7EC98FFF7AC58BFF74C3
          87FF54AA63FF3C6D44FF39BB66FF3FD072FF008500FF00000000C3C5C5FF2B2E
          2CFF5DA964FFACE1B6FF90D59EFF8DD29CFF88CF98FF85CD94FF7FC990FF7BC6
          8DFF59AD67FF3F7247FF006F8EFF0086ACFF001F283100000000696866FFB3B0
          AFFF5FAF66FFB0E2B9FF96D7A3FF92D5A1FF8ED29DFF8AD099FF87CD96FF81CB
          92FF5EB06CFF42774AFF00BCE5FF00D1FFFF0085ACFF00000000C3C5C5FF2B2E
          2CFF62B369FFB2E3BBFF9BDAA7FF97D8A4FF94D6A2FF8FD49EFF8CD09BFF87CE
          97FF6CBA79FF457D4DFF00BCE5FF00D1FFFF0085ACFF00000000645E5EFFBBBA
          B8FF64B76BFFB2E4BBFF9EDCAAFF9CDBA7FF98D9A5FF95D7A2FF91D49EFF8DD2
          9CFF71BE7EFF488250FF00799CFF00799CFF001F283100000000D9D8D9FF3337
          32FF66BB6DFFB2E4BBFFB2E4BBFFB1E3BAFFB1E3BAFFADE1B7FFAADEB5FFA9DD
          B3FF9AD8A7FF4B8753FFB8A59BFF80AB86FF00000000000000000B08061ABBBA
          B8FF68BF6FFF67BB6DFF65B66AFF62B269FF61B067FF5FAB66FF5DA763FF5AA3
          61FF589F5FFF5EAA65FF1F100931000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000066006600000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000066006600660066009300D600800080000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000066006600660066009300D600CC66CC00D6E7E700C0C0C0008000
          8000000000000000000000000000000000000000000000000000000000006600
          6600660066009300D600CC66CC00D6E7E700D6E7E700D6E7E700C0C0C000C0C0
          C000800080000000000000000000000000000000000000000000800080009300
          D600CC66CC00D6E7E700D6E7E700C0C0C000C0C0C000800080009999990090A9
          AD00C0C0C0008000800000000000000000000000000000000000800080009999
          9900D6E7E700C0C0C00090A9AD00800080008000800099009900000000008686
          860099999900C0C0C00080008000000000000000000000000000800080009999
          9900C0C0C0008000800080008000CC00CC00CC00CC00CC00CC00990099000000
          0000666666009999990090A9AD00800080000000000000000000800080008000
          800080008000CC00CC00CC00CC009900990099009900CC00CC00CC00CC009900
          990000000000666666009999990086868600800080000000000080008000FF99
          FF00CC00CC00CC00CC00CC00CC0000FFFF0033CCFF0033669900990099008000
          8000990099000000000066666600999999008000800000000000000000008000
          8000FF99FF00CC00CC00CC00CC00CC00CC00CC00CC0000FFFF0000FFFF0033CC
          FF00336699008000800000000000666666008000800000000000000000000000
          000080008000FF99FF00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC0033CC
          FF0000FFFF006600660080008000000000008000800000000000000000000000
          00000000000080008000FF99FF00CC00CC00CC00CC0000FFFF0000FFFF0000FF
          FF003399CC006600660080008000800080000000000000000000000000000000
          0000000000000000000080008000FF99FF00CC00CC00CC00CC00336699003366
          9900660066008000800080008000660066000000000000000000000000000000
          000000000000000000000000000080008000FF99FF00CC00CC00CC00CC00CC00
          CC00990099006600660000000000000000000000000000000000000000000000
          00000000000000000000000000000000000080008000FF99FF00CC00CC006600
          6600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080008000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE7F0000F83F0000E01F0000800F00000007000000030000000100000000
          00000000000080010000C0010000E0000000F0010000F8070000FC1F0000FE7F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000003B0000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E662A00004B00002A860000005900001A18
          2500000000000000000000000000000000000000000000000000000000000000
          000000000000004F0000004B000038B2000069BC7600C6BFDE00A6A3B4000059
          0000000000000000000000000000000000000000000000000000000000000059
          00000059000038B200004EA94E00B0A3A300A79B9B009E94930081817F007B79
          7900004F00000000000000000000000000000000000000000000007F00003EC7
          000058BE5900C7B8B800BFB0B0009C9C9C0096949600726B010067676700776C
          62007B797900004F000000000000000000000000000000000000007F00008F8F
          8F00D6C7C700AFAFAF009D8D8100026F0300026A0300017A020000000000615F
          61006767670081817F00004F00000000000000000000000000000F870F008F8F
          8F00BDBDBD00017A0200017A020006BE070008B80900CEFC9400007F00000000
          00004E4E50006A686C0076696100004F00000000000000000000178B17000F87
          0F000D870F0006D1060006D10600108F1200108F120015C8160013BF14000F87
          0F00110F1200585559006F70710058585900004F00000000000021901F009CFF
          9B0018D31A0018D51B0018D51B00FF1B2000FF724B00A3765300CEF68E00228D
          250021901F0016141800585859006F7071000059000000000000000000002692
          2600A0FFA0002ED9310032D9340035D93A0043DC4900FF495400FF454F00FF89
          6C00A77A5C00228725001D1A1E00585859000059000000000000000000000000
          000033993800AAFFAB0047DE480056E159005DE164006BE4730072E47D00FF9D
          9000FF4F60004284490026922600161418000D6A0F0000000000000000000000
          00000000000058AB5900BAFFBD0075E87A008AEB9600FF92B400FF99C100FF99
          C100E6B1A80053915C00339938001D811F00110F120000000000000000000000
          000000000000000000007CBC8100D3FFD700B3F4C800D9FBEE00F4EDFA00EEE6
          F80094BAC60069B38300449E4B00247127001614180000000000000000000000
          000000000000000000000000000096CCA400E6FFED00FFFFFF00FFFFFF00F7FF
          FE009ED5CB0072A791004B485A00000000000000000000000000000000000000
          000000000000000000000000000000000000C3E3D300F7FFFE00FFFFFF00E5EF
          F600A3A2C7000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000008AC6AC009294B6000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE7F0000F83F0000E01F0000800F00000007000000030000000100000000
          00000000000080010000C0010000E0000000F0010000F8070000FC1F0000FE7F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000080000000800000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000800000808000C0C0C00000008000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000808000C0C0C00000808000C0C0C000000080000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000008000C0C0C000FFFFFF00FFFFFF0000808000C0C0C0000000
          8000000000000000000000000000000000000000000000000000000000000000
          00000000800000808000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000808000C0C0
          C000000080000000800000000000000000000000000000000000000000000000
          000000808000FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF000080
          8000008080000080800000008000000080000000000000000000000000000000
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000FFFFFF00FFFF
          FF0080808000FFFFFF0000808000008080000000800000008000000080000080
          8000FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF0000808000000000000000
          0000FFFFFF00FFFFFF0000FFFF00FFFFFF00008080000080800000808000FFFF
          FF00FFFFFF008080800080808000C0C0C000FFFFFF00FFFFFF00008080008000
          000000000000FFFFFF00FFFFFF00FFFFFF0000FFFF008080800080808000FFFF
          FF00C0C0C00080808000C0C0C0008080800000FFFF008080800000FFFF00FF00
          0000800000000000000000FFFF00FFFFFF008080800000000000000000008080
          8000FFFFFF00FFFFFF0080808000FFFFFF0080808000C0C0C000FFFFFF00FFFF
          FF00FF0000008000000000000000808080000000000000000000000000000000
          000080808000FFFFFF00FFFFFF0080808000C0C0C000FFFFFF0000FFFF00FFFF
          FF00FFFFFF00FF00000080000000000000000000000000000000000000000000
          00000000000080808000808080008080800080808000FFFFFF00FFFFFF00FFFF
          FF0000FFFF0080808000FF000000800000000000000000000000000000000000
          000000000000000000000000000000000000000000008080800080808000FFFF
          FF00808080000000000000000000FF0000008000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          800000000000000000000000000000000000FF00000080000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F9FF0000F0FF0000E07F0000E03F0000C00F000080030000800000000000
          000000000000000000000001000080030000C0030000E0010000FE180000FFBC
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000104000B040D
          00240410002A0208001700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000105000F0A3205720C6D13D71083
          1CF8158921FB1C8025EB175315A6061501340000000000000000000000000000
          00000000000000000000000000000512012D0C6E16D2038E1BFF008E1AFF0790
          20FF0C9225FF089121FF0B9121FF239635FA173E137B00000000000000000000
          00000000000000000000020900180E771CD800931FFF04881CF00A410C840718
          0339061403300E2D0B5E157321CB1DA23BFF1C3F187600000000040D0022040E
          0027040E0026030A001C0F51129D019B26FF038F21F10825045402070014030A
          001D0000000200000000000200060B1D073E0000000000000000116118B80E93
          28FA069222FA089528F9069F2CFF009E28FF009D28FC009726F4009D28FA00A1
          2AFA05440A8500000000000000000000000000000000000000000A2806581A9C
          37F40D952DF2129E35F600A32BFF00A52FFD099F32F10EA339F214A63FF21BA9
          44F21D9E41E4030D012000000000000000000000000000000000000000000000
          0000000000001A7129B613B445FF01A231F10000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002858
          2A907DDFA1FF69D68FFF59CF81FF40C96EFF2CCA64FF1DCA5DFF13C957FF0EC8
          53FF09CA53FF098C30CE0104000B00000000000000000000000000000000040D
          0120468E57BF48945CC45FCC84F65BD889FF48C071ED388E4FBD349752C43097
          51C4349752C4319E55C8061C053B000100030001000300000000000000000000
          000000000000000000001A4B1F7A72EAA4FF54CC81EF0C2B0C52000000000000
          00000000000000000000020B001C088931C308641EA101060010000000000000
          000000000000000000000103000A499E62C77CF2B0FF6CEBA2FF2C723BA10F2D
          0F560B260A4C0E47177818B451E11BE06FFF0AD85FFF051D043D000000000000
          0000000000000000000000000000010600103E8E56B385FBBCFF7AFAB6FF6BF7
          ADFF5AF5A1FF4AF599FF3BF28FFF1CCC64ED0627084B00000000000000000000
          00000000000000000000000000000000000000000000113213553C8A53AD56BF
          7ED850C37CDD30A158C411542180020C011C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000004
          000B010500100000000100000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000004EBA5EFF4EBA5EFF000000004EBA5EFF4EBA
          5EFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004EBA5EFF4EBA5EFF000000004EBA5EFF4EBA
          5EFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF4EBA
          5EFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000004EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF4EBA
          5EFF4EBA5EFF0000000000000000000000000000000000000000000000000000
          0000000000004EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF000000004EBA5EFF4EBA
          5EFF4EBA5EFF4EBA5EFF00000000000000000000000000000000000000000000
          0000000000004EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF000000004EBA5EFF4EBA
          5EFF4EBA5EFF4EBA5EFF00000000000000000000000000000000000000000000
          0000000000004EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF000000004EBA5EFF4EBA
          5EFF4EBA5EFF4EBA5EFF00000000000000000000000000000000000000000000
          00000000000000000000000000004EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF4EBA
          5EFF4EBA5EFF4EBA5EFF00000000000000000000000000000000000000000000
          00000000000000000000000000004EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF4EBA
          5EFF4EBA5EFF0000000000000000000000000000000000000000000000000000
          000000000000000000004EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF4EBA
          5EFF000000000000000000000000000000000000000000000000000000000000
          0000000000004EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF000000004EBA5EFF4EBA
          5EFF000000000000000000000000000000000000000000000000000000000000
          0000000000004EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF000000004EBA5EFF4EBA
          5EFF4EBA5EFF4EBA5EFF00000000000000000000000000000000000000000000
          0000000000004EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF000000004EBA5EFF4EBA
          5EFF4EBA5EFF4EBA5EFF00000000000000000000000000000000000000000000
          000000000000000000004EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF4EBA
          5EFF4EBA5EFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000004EBA5EFF4EBA5EFF4EBA5EFF4EBA5EFF4EBA
          5EFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004EBA5EFF4EBA5EFF000000004EBA5EFF4EBA
          5EFF000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000017212A0051709D0072A2E80079ACFE0075A8FE006A
          98E80048679C00121B2900000000000000000000000000000000000000000000
          00000000000000496373008DBFFA0090C3FF0090C3FF0098CBFF0091C4FF0071
          A4FF006EA1FF006FA2F9003B5372000000000000000000000000000000000000
          0000004D6874009CD0FE00A1D4FF00A0D3FF00A1D6FF36D0F8FFA1EBFEFF009E
          D3FF0082B5FF006B9EFF0070A3FE003B5472000000000000000000000000001C
          262C0FA4D3FA00AADDFF00A9DCFF00AFE3FF70D8F4FFCFF2FBFFD8F5FDFF7AE3
          FCFF00C0F4FF008FC2FF006B9EFF0071A4F900141E2A00000000000000000066
          85A026BCE6FF00B2E5FF00ABE1FFD4EDF6FFFFFFFDFFFFFDFDFFEDF9FCFFFFFF
          FFFFD7F7FFFF00B6EBFF0082B5FF006FA2FF004A6A9D000000000000000015A4
          CEEB25C5F0FF00BBEFFF0CADDDFFCAE7F2FFDCEEF4FF51C9EDFF4ACBF0FFCAEE
          F8FFFFFFFEFF1FC9F6FF0096C9FF0071A4FF006E9CE9000000000000000025BD
          E8FF2BCEF8FF00C4F8FF00B8EBFF00A6DEFF00A9DFFF92D8EEFFEEF6F9FFFFFC
          FBFFFFFFFCFF06BCECFF009BCEFF0082B5FF007AADFE000000000000000026C1
          EDFF41D9FEFF00D0FFFF00BFF1FF57BDDFFFFFFBF8FFFFFAF8FFFFFBF9FFF6F4
          F5FF4CCAEEFF00A9DEFF00A1D4FF008BBEFF007FB2FE000000000000000015AD
          D8E968E9FFFF00DDFFFF00A9DCFFEDE9ECFFFFF7F5FFC7E2ECFF70CCE8FF00A4
          DFFF00ADE4FF00AEE2FF00A4D7FF0090C3FF0078A7E70000000000000000006E
          8D9C67EAFDFF2DEEFFFF00ACDBFFD9DDE6FFFFF6F3FF9CD2E6FFAFDAE9FFFFF6
          F2FFCFE5EFFF00AEE2FF00A7DAFF0093C6FF0054739A0000000000000000001E
          272823C7EEF975FCFFFF0CE2F5FF1E9ECDFFE9E0E5FFFFF1ECFFFFF2EEFFF2E9
          EBFF39BAE1FF00AFE2FF00A8DBFF0090C3F800171E2600000000000000000000
          000000596D6D38DEF8FE73FFFFFF25E5F8FF00AFDEFF30A6D1FF75C6E2FF00AC
          E2FF00B7EBFF00B2E5FF00A2D5FE0048606B0000000000000000000000000000
          00000000000000586B6B20CBEEF861F3FEFF60F4FFFF34D4F5FF1ECAF6FF19CC
          FAFF17C0EEFF04A5D7F7004A6269000000000000000000000000000000000000
          00000000000000000000001B2324006A899510AAD2E11FC4EEFE1FC0ECFE10A0
          CAE00062809400171E2300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F81F0000E0070000C0030000C003000080010000800100008001
          0000800100008001000080010000C0030000C0030000E0070000F81F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000017212A0051709D0072A2E8007AADFE0076A9FE006A
          98E80048679C00121B2900000000000000000000000000000000000000000000
          00000000000000496373008DBFFA0090C3FF008FC2FF008BBEFF0081B4FF0072
          A5FF006DA0FF006FA2F9003B5372000000000000000000000000000000000000
          0000004D6874009CD0FE00A1D4FF00A0D3FF009FD3FF00A6DAFF00A9DEFF00A7
          DDFF0087BCFF00699CFF0070A3FE003B5472000000000000000000000000001C
          262C0FA4D3FA00AADDFF00A9DCFF00ACE0FF1BC3F0FF96E6FBFFBFF1FEFFB4F1
          FFFF50DEFFFF009BCFFF006A9DFF0071A4F900141E2A00000000000000000066
          85A026BCE7FF00B3E6FF00B2E5FF28C2ECFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFEAFDFFFF00ACE2FF0083B6FF006FA2FF004A6A9D000000000000000015A4
          CEEB25C6F2FF00AFE3FF00AAE2FFD1ECF5FFFFFDFBFFACE5F6FF00B3EDFF0EC0
          F0FF6EDCF9FF00AEE2FF0097CAFF0071A4FF006E9CE9000000000000000025BD
          E8FF2BCFFAFF00AFE5FFD4EAF3FFFFF8F6FFFFFAF9FFFDF9FAFFFFFEFBFF04BB
          ECFF00ACE1FF00ADE0FF009CCFFF0082B5FF007AADFE000000000000000026C1
          EDFF41DBFFFF00B6EAFF83D2EBFFFFF7F4FFFFF6F4FFB0E3F3FFA0E0F3FF0ABA
          EAFF00B1E4FF00A7DAFF00A1D4FF008BBEFF007FB2FE000000000000000015AD
          D8E968EAFFFF00CEF6FF34B0DBFFFCEFEFFFFFF4F2FFC6E2EEFF6CCDEAFF0FB8
          E8FF08B9EAFF00ABDEFF00A4D7FF0090C3FF0078A7E70000000000000000006E
          8D9C67EAFEFF2DECFFFF00D2F3FF81C6E1FFFFF2EEFFFFF0EFFFA8DAEBFFE0E9
          EFFF7AD2ECFF00AFE2FF00A7DAFF0093C6FF0054739A0000000000000000001E
          272823C7EEF975FBFFFF10F7FFFF00B6E1FF90C7E0FFFFECEAFFFFF2EDFFFFF4
          EEFF89D2EAFF00B0E4FF00A8DBFF0090C3F800171E2600000000000000000000
          000000596D6D38DEF8FE74FFFFFF29F8FFFF00C9EEFF00ABE0FF09ADDDFF00AB
          E1FF00B3E6FF00B1E4FF00A2D5FE0048606B0000000000000000000000000000
          00000000000000586B6B20CAEEF861F2FDFF61F2FFFF38E4FFFF1FD7FFFF19CD
          F9FF17C0EEFF04A5D7F7004A6269000000000000000000000000000000000000
          00000000000000000000001B2324006A899510A9D2E11FC3EEFE1FC0ECFE10A0
          CAE00062809400171E2300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F81F0000E0070000C0030000C003000080010000800100008001
          0000800100008001000080010000C0030000C0030000E0070000F81F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000017212A0051709D0072A2E8007AADFE0076A9FE006A
          98E80048679C00121B2900000000000000000000000000000000000000000000
          00000000000000496373008DBFFA0090C3FF008FC2FF008BBEFF0081B4FF0072
          A5FF006C9FFF006FA1F9003B5372000000000000000000000000000000000000
          0000004D6874009CD0FE00A1D4FF00A9DDFF00A1D5FF009DD2FF00A4D9FF00A9
          DFFF0097CBFF006EA2FF006FA2FE003B5472000000000000000000000000001C
          262C0FA4D3FA00A9DDFF00ACE0FF72D8F5FF46CFF3FF42D0F4FF90E5FCFFC0F3
          FFFFA3EEFFFF18D4FFFF006A9EFF0071A4F900141E2A00000000000000000066
          85A026BCE6FF00B2E5FF01B2E4FFFFFFFDFFFFFFFDFFFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFF05BDF0FF0081B4FF006FA2FF004A6A9D000000000000000015A4
          CEEB25C5F0FF00BBEEFF00B7EBFF73D2EDFFFFFCFAFFCAECF7FF27C3EDFF01B8
          EAFF23C6F1FF00A6DAFF0098CBFF0071A4FF006E9CE9000000000000000025BD
          E8FF2BCDF8FF00C6F9FF0AB2E4FF5FC9E9FFFFF9F7FFFDF7F7FF4BC9EEFF1ABF
          EDFF00A7DCFF00A3D6FF009CCFFF0082B5FF007AADFE000000000000000026C1
          EDFF41D9FEFF00D0FFFF28B7E2FFFFF7F3FFFFF4F3FFFFF6F5FFFFFAF6FF5ACD
          EDFF00AFE2FF00A7DAFF00A1D4FF008BBEFF007FB2FE000000000000000015AD
          D8E968E9FFFF00DBFFFF00B7E7FF8ECEE5FFFFF4F1FF91D4EAFF00A9E3FF00AD
          E5FF00B2E6FF00ACDFFF00A4D7FF0090C3FF0078A7E70000000000000000006E
          8D9C67EAFDFF2DECFFFF00CDF0FFABD0E2FFFFF2EEFF99D4E8FF41C1E6FFFFF6
          F2FFCFE7F0FF00AFE4FF00A7DAFF0093C6FF0054739A0000000000000000001E
          272823C7EEF975FCFFFF0CEEFDFF23A6D4FFFFEBE8FFFFF1EBFFFFF2ECFFFFF5
          EEFF63C7E6FF00AFE2FF00A8DBFF0090C3F800171E2600000000000000000000
          000000596D6D38DEF8FE73FFFFFF23DEF3FF00A5D7FF41B0D8FF4AB6DAFF14AE
          DDFF00B2E6FF00B2E6FF00A2D5FE0048606B0000000000000000000000000000
          00000000000000586B6B20CBEEF861F3FFFF5EF4FFFF33E1FFFF1CD2FEFF18CB
          F9FF17C0EEFF04A5D7F7004A6269000000000000000000000000000000000000
          00000000000000000000001B2324006A899510A9D2E11FC4EEFE1FC0ECFE10A0
          CAE00062809400171E2300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F81F0000E0070000C0030000C003000080010000800100008001
          0000800100008001000080010000C0030000C0030000E0070000F81F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000017212A0051709D0072A2E8007AADFE0076A9FE006A
          98E80048679C00121B2900000000000000000000000000000000000000000000
          00000000000000496373008DBFFA0090C3FF008FC2FF008BBEFF0081B4FF0071
          A4FF006DA0FF006FA2F9003B5372000000000000000000000000000000000000
          0000004D6874009CD0FE00A1D4FF00A0D3FF00AADDFF00AEE2FF00B1E5FF00B3
          E7FF0081B4FF00699CFF006FA3FE003B5472000000000000000000000000001C
          262C0FA4D3FA00AADDFF00A8DBFF00A6DCFF00ACE1FFFFFFFFFFFFFFFFFF10BE
          EEFF00AADEFF00AADDFF006EA1FF0071A3F900141E2A00000000000000000066
          85A026BCE6FF00B2E6FF34B7E0FFDAF1F9FFD5F0F9FFFFFFFEFFFFFFFEFFD8F4
          FBFFDAF6FDFF3DD3FAFF0085B9FF006FA2FF004A6A9D000000000000000015A4
          CEEB25C5F0FF00BBEFFF29B0DCFF5CC2E3FF57C2E4FFFFFBFAFFFFFCFBFF5DC6
          E7FF5BC6E7FF2FC9F2FF0099CDFF0071A4FF006E9CE9000000000000000025BD
          E8FF2BCEF8FF00C5FAFF41B4DAFFEFF4F8FFEDF6F9FFFFF9F9FFFFFAF9FFEFF8
          FBFFF2F9FCFF4BCCEFFF009ED1FF0082B5FF007AADFE000000000000000026C1
          EDFF41DAFFFF00CFFFFF1DA2D1FF5BBEE0FFF2EEF1FFFFF7F7FFFFF8F8FFFFF8
          F8FF5CC9EAFF22BCE7FF00A1D5FF008BBEFF007FB2FE000000000000000015AD
          D8E968E9FFFF00DBFFFF00C8F0FF40B1D7FFFFF8F5FFDFE7EDFFCDE2ECFFFFF9
          F7FF58C6E7FF00AADFFF00A4D7FF0090C3FF0078A7E70000000000000000006E
          8D9C67EAFEFF2DEFFFFF00B6E1FFF1E3E6FFFFF5F2FF5DBFE0FF4ABDE2FFFFF8
          F4FFFFF4F4FF00ABDFFF00A7DAFF0093C6FF0054739A0000000000000000001E
          272824C8EFF961F0FAFF46A8CEFFD7D6DFFFCFD3E0FF00B6E7FF00B9EBFFC9D9
          E5FFD9E2E9FF5BC1E1FF00A7DBFF0090C3F800171E2600000000000000000000
          000000596D6D1AC0E8FE2EC8E3FF19C0E3FF00B6E2FF00D5FBFF00CDFEFF00AC
          E2FF00ABE1FF00ABDEFF00A2D6FE0048606B0000000000000000000000000000
          00000000000000586B6B22CFF1F862F5FFFF61F3FFFF38E2FFFF20D6FFFF1ACC
          F9FF17C0EFFF04A6D7F7004A6269000000000000000000000000000000000000
          00000000000000000000001B2324006A899510A9D2E11FC3EEFE1FC0ECFE10A0
          CAE00062809400171E2300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F81F0000E0070000C0030000C003000080010000800100008001
          0000800100008001000080010000C0030000C0030000E0070000F81F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001D1212305C3C3CA5966F6FE6A67E7EF7815B5BDA3A1F
          1F7F080505120000000000000000000000000000000000000000000000000000
          00000000000034202050BA9292F9FFEAEAFFFFF2F2FFFFEEEEFFFFF4F4FFCDAC
          ACFF6D3B3BEF371C1C7401010104000000000000000000000000000000000000
          000004020207A57D7DE9FFF2F2FFFFEAEAFFD2ACACFFF7D9D9FFFFE6E6FFFFEB
          EBFFA26D6DFF895555FF4925259C000000000000000000000000000000000000
          00000D090914976C6CE6D0A0A0FFDFAFAFFEB58484FEFCDEDEFFFFE4E4FFEDD2
          D2FFCB9696FFC79494FF804A4AF1000000000000000000000000000000000000
          000000000000261818418C5D5DF4DEB7B7FFFFE6E6FFFFE3E3FFFFE3E3FFEECE
          CEFFA67373FFC79393FF663939D5000000000000000000000000000000000000
          00001A111128B38686F6FFE5E5FFFFE3E3FFFFE6E6FFD9B5B5FFECC8C8FFFFE7
          E7FFD7B4B4FF976363FF734242F7190C0C380000000000000000000000000000
          0000583A3A89FBD6D6FFFFDEDEFFE1BFBFFF996969FFC09292FFFFDDDDFFFFE2
          E2FFE2C1C1FFB27E7EFFB27F7FFF4826269D0000000000000000000000000000
          000064424298FFDDDDFFFEDBDBFF875555FFEFC8C8FFFFE1E1FFFFDEDEFFFBDD
          DDFFCD9B9BFFC89595FFBF8C8CFF442525910000000000000000000000000000
          00002A1C1C3EC69898FDFFDADAFFFFDDDDFFFFDCDCFFFFE2E2FFE9C6C6FFCD9A
          9AFFCF9C9CFFCC9999FF7E5050E6100808200000000000000000000000000000
          000018101023C89797FCFFD7D7FFFFD9D9FFE1BCBCFFA67777FFA97474FFB783
          83FFA36F6FFF663B3BD00E08081D000000000000000000000000000000000000
          00003D2A2A56E9BABAFFFFD4D4FFEBC6C6FF5B2525FFBA8A8AFFF6CECEFFF0CA
          CAFFA97F7FFF8E5B5BFF815252EF2E1D1D4D0000000000000000000000000000
          0000261A1A31D9A8A8FEFFD4D4FFFFD6D6FFEABDBDFFFFDBDBFFFFD9D9FFFEDF
          DFFFC39090FFBE8B8BFFA77373FF2B1C1C450000000000000000000000000000
          0000000000007C5A5AA4E6B5B5FFFFD6D6FFFFDDDDFFFFDFDFFFFFE3E3FFFED0
          D0FFF7C4C4FFD6A2A2FF714B4BB3000000010000000000000000000000000000
          00000000000002010103473232656A49499E7E5959B9966E6ED4AB8181EEB184
          84F38D6464D1462F2F7703020206000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F83F0000E00F0000E0070000E0070000F0070000E0070000C003
          0000C0030000E0070000E00F0000C0070000E0070000E0070000F00F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400996600009966
          000099660000CC99000096969600969696009696960096969600969696009696
          9600969696009966330099663300996633009966330004040400CC990000FFCC
          6600CC990000CCFFFF00CCFFFF0099CCCC00CCFFFF0099CCCC0099CCCC0090A9
          AD0099CCCC0090A9AD0099663300FFCC66009966330004040400CC990000CC99
          0000CCFFFF00CCFFFF00CCFFFF000404040090A9AD00CCFFFF0099CCCC0099CC
          CC0090A9AD0099CCCC0090A9AD00996633009966330004040400CC990000CCFF
          FF00CCFFFF00CCFFFF0042424200FFFFFF000404040090A9AD00CCFFFF0099CC
          CC0099CCCC0090A9AD0099CCCC0090A9AD00996633000404040090A9AD00CCFF
          FF00CCFFFF0042424200FFFFFF00FFFFFF00FFFFFF000404040090A9AD00CCFF
          FF0099CCCC0099CCCC0090A9AD0099CCCC00969696000404040090A9AD00CCFF
          FF0077777700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000404040090A9
          AD00CCFFFF0099CCCC0099CCCC0090A9AD00969696000404040090A9AD00FFFF
          FF00CCFFFF0096969600FFFFFF00FFFFFF0004040400FFFFFF00FFFFFF000404
          040099CCCC00CCFFFF0090A9AD0099CCCC00969696000404040090A9AD00FFFF
          FF00FFFFFF00CCFFFF0096969600FFFFFF0066999900006699000404040090A9
          AD00CCFFFF0099CCCC00CCFFFF0090A9AD0096969600040404009966000099CC
          CC00FFFFFF00FFFFFF00CCFFFF00969696000099CC0000CCFF00006699000404
          040090A9AD00CCFFFF0099CCCC0099CCCC009966330004040400CC9900009966
          000099CCCC00FFFFFF00FFFFFF00CCFFFF00969696000099CC0099FFFF000066
          99000404040090A9AD00CCFFFF00996633009966000004040400CC990000CC99
          00009966000099CCCC00FFFFFF00FFFFFF00CCFFFF00CCFFFF000099CC0000CC
          FF00006699000404040099663300FFCC66009966000004040400CC990000FFCC
          6600CC9900009966000099CCCC00FFFFFF00FFFFFF00CCFFFF00FFFFFF000099
          CC0099FFFF000066990004040400CC9900009966000004040400CC990000CC99
          0000CC990000CC9900009966000090A9AD0090A9AD0090A9AD0090A9AD0090A9
          AD000099CC0000CCFF00006699000404040090A9AD0004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000099CC00CC99FF00000099000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          040004040400040404005050FF000033CC000404040004040400}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFE30000FFF3
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000E000000180000001A0000001A0000001A0000001A0000
          001A0000001A000000190000000F000000030000000000000000000000000000
          0000000000040000001B000000300000003318060074421000CC421000CC1806
          007400000033000000310000001E000000060000000000000000000000000000
          00000000000000000000000000001505005C3E0E00CCC69074FFC69074FF3E0E
          00CC1505005C0000000000000000000000000000000000000000000000000000
          000000000000000000001A05005C3A0A00CCBD8B6EFF9F735CFF805D4BFF7E5D
          4BFF3A0A00CC1A05005C00000000000000000000000000000000000000000000
          0000000000001704005C340800CC9D7156FF835D47FF30849DFF12ABDEFF0DA4
          E1FF2185B4FF340800CC1704005C000000000000000000000000000000000000
          00001502005C2E0500CC794F1BFF855814FFA07329FF39B6C9FF2EDFFDFF18D4
          FCFF0BB9F7FF78766EFF2E0500CC1502005C0000000000000000000000001201
          005C290200CCAC742EFFCA8611FFDCA22FFFE3B472FF5F8D90FF8BEBFDFF58E6
          FEFF12D5FDFF4F8A98FFA57453FF290200CC1201005C000000001000005C2401
          00CCAD7E5CFF9F6E3EFFD29112FFE4B569FFF6DCB6FF838778FF94BABBFF5F8E
          8EFF39858EFF44899BFF916344FFAD7E5CFF240100CC1000005C180000981F00
          00CA1F0000CA1F0000CABE8624FFE3B872FFE6D1B1FF8D7C6CFF668A74FF7ACD
          B7FF4FC5A2FF319365FF1F0000CA1F0000CA1F0000CA18000098000000000000
          000000000000190000C5385BA0FF305E8EFF296E96FF1B97BFFF74A59BFF7CDF
          CDFF45CDACFF2AAD74FF190000C5000000000000000000000000000000000000
          000000000000130000C0506EAFFF1588E8FF16B8F1FF15C6F5FF547E83FF58D4
          B8FF2BBE92FF2D9C56FF130000C0000000000000000000000000000000000000
          0000000000000D0001BA767C9AFF1357DBFF1881E7FF1593EBFF4477A5FF4EB4
          91FF6A937CFF748F72FF0D0001BA000000000000000000000000000000000000
          000000000000090001B59A9697FF354CB9FF1A49CCFF2159CCFF627BABFF948E
          8BFF918B87FFA29B97FF090001B5000000000000000000000000000000000000
          000000000000040101AFA8A7A6FFA1A09FFFA4A3A2FFA5A4A3FFA5A4A3FFA4A3
          A2FFA1A09FFFA8A7A6FF040101AF000000000000000000000000000000000000
          00000000000002010181010101AC010101AC010101AC010101AC010101AC0101
          01AC010101AC010101AC02010181000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000800000011000000180000001A0000001A0000001A0000
          001A000000190000001200000009000000020000000000000000000000000000
          000000000003000000100000002100000030070000484A3636B34A3636B30700
          0048000000310000002400000012000000040000000000000000000000000000
          00000000000000000000000000000600002F756262D9EBDADAFFEBDADAFF7562
          62D90600002F0000000000000000000000000000000000000000000000000000
          000000000000000000000800002F756262D9E6D5D5FFE6D5D5FFE6D5D5FFE6D5
          D5FF756262D90800002F00000000000000000000000000000000000000000000
          000000000000000000004A3636B3E8D7D7FFC9B8B8FFE4D3D3FFDFCECEFFC9B8
          B8FFE8D7D7FF4A3636B300000000000000000000000000000000000000000000
          00000000000000000000211212734A3636B3756262D9E3D2D2FFD8C7C7FF7562
          62D94A3636B32112127300000000000000000000000000000000000000000000
          0000000000000000000000000000000000004A3636B3E0CFCFFFD2C1C1FF4A36
          36B30000000000000000000000000000000000000000000000000C030334503B
          3BB3503B3BB3503B3BB3503B3BB3503B3BB37B6767D9DECDCDFFCDBCBCFF7B67
          67D9503B3BB3503B3BB3503B3BB34C3838AC2819196E0301010D513D3DA0CDBC
          BCFFD2C1C1FFD2C1C1FFD2C1C1FFD2C1C1FFD2C1C1FFE0CFCFFFD2C1C1FFD2C1
          C1FFD2C1C1FFD2C1C1FFD2C1C1FFD1C0C0FFBFAEAEF83022226E2F222263D3C2
          C2FAF0E2E2FFEADCDCFFDCCBCBFFE0CFCFFFECDEDEFFEFE0E0FFE6D8D8FFDDCC
          CCFFDCCBCBFFE7D7D7FFEEE0E0FFE7D7D7FFD9C8C8FF5643439D070404126553
          53A1DBCDCDFAEEE1E1FFE5D4D4FFF2E7E7FFF5ECECFFF5ECECFFF5ECECFFEBDC
          DCFFE8D7D7FFF5EBEBFFF5ECECFFF4EBEBFFD3C1C1FA33262663000000000805
          051236282862624E4EA08D7A7ACCF6EFEFFFFBF6F6FFFBF6F6FFFBF6F6FFF4E9
          E9FFECDBDBFFF6F0F0FFF6EFEFFFDDD0D0FA695757A108050512000000000000
          00000000000000000000392B2B63E2D9D9FAFFFEFEFFFFFEFEFFFFFEFEFFF3E6
          E6FFDAC8C8FA776464B2655252A0382B2B620906061200000000000000000000
          00000000000000000000090606126E5C5CA1E2DBDBFAFAF7F7FFF4ECECFFDBCA
          CAFA6D5C5CA10906061200000000000000000000000000000000000000000000
          0000000000000000000000000000090606123A2C2C62675353A0675353A03A2C
          2C62090606120000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000120000
          002C040404580909098509090985090909850909098509090985090909850909
          0985090909850909098509090985040404580000002C00000012000000090000
          00161414147A9D9D9DDFDBDBDBFFD6D7D7FFCDCFCFFFC7C8C8FFC4C4C4FFC5C4
          C4FFC9C4C4FFC6BBBBFF908787DF1414147A0000001600000009000000000000
          000019191973E9E9E9FFB0B0B0FF858585FF7E7F7FFF787979FF787777FF7E77
          77FF857777FF66FF66FFD7C8C8FF191919730000000000000000000000000000
          00001D1D1D6EFAFAFAFFF8F8F8FFEFF0F0FFE7E8E8FFE0E1E1FFDDDDDDFFDEDD
          DDFFE2DDDDFFD7CCCCFFE8D9D9FF1D1D1D6E0000000000000000000000000000
          00001C1C1C5DA7A7A7DAD1D1D1FFC8C9C9FFBEC0C0FFB6B7B7FFB3B3B3FFB4B3
          B3FFB9B3B3FFBFB3B3FF9B9090DA1C1C1C5D0000000000000000000000000000
          00000404040D1E1E1E5A22222267222222672222226722222267222222672222
          226722222267222222671E1E1E5A0404040D0000000000000000000000000000
          000000000000000000000000000000000000000000000E0A051F0E0A051F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000381D025C8C4F06D38C4F05D3381D
          025C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003B20045C92560CD4FFC53AFFFFBD20FF9255
          0BD43B20045C0000000000000000000000000000000000000000000000000000
          000000000000000000003E23065C9A5E13D4FECB4DFFFEB714FFFEB102FFFEC0
          2CFF995C11D43E23065C00000000000000000000000000000000000000000000
          00000000000043280A5CA2671DD5FAD171FFF9CC65FFF5B833FFF1A913FFF6BD
          3FFFF7C554FFA0641AD443280A5C000000000000000000000000000000000000
          0000000000006C43138F8C5719B88C5719B89B601BCCEEC26AFFDE9C2CFF9B60
          1BCC8C5719B88C5719B86C43138F000000000000000000000000000000000000
          000000000000000000000000000000000000A56922CCF1CA83FFD89B4AFFA569
          22CC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000925F22ABD0B279D5C79656D5915F
          22AA000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005E3F186A82724F8480643C855E3F
          186A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002F200D3340392840403421402F20
          0D33000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000120000
          002C00162C75013569C3013569C3013569C3013569C3013569C3013569C30135
          69C3013569C3013569C3013569C300162C750000002C00000012000000090000
          001601366BB283B6E5FF7EB1E2FF7EB1E2FF7EB1E2FF7EB1E2FF7EB1E2FF7EB1
          E2FF7EB1E2FF7EB1E2FF83B6E5FF01366BB20000001600000009000000000000
          000001376BA695C8F2FF8CBFECFF8CBFECFFAADDFFFFAADDFFFFAADDFFFFAADD
          FFFF8CBFECFF8CBFECFF95C8F2FF01376BA60000000000000000000000000000
          000002366B9DA9DCFFFFA9DCFFFFA9DCFFFF4C7FB2FF5386B9FF5386B9FF4C7F
          B2FFA9DCFFFFA9DCFFFFA9DCFFFF02366B9D0000000000000000000000000000
          000002366A9699CCF6FF78ABD9FF5588BBFF5D90C3FF6598CBFF6598CBFF5D90
          C3FF5588BBFF78ABD9FF99CCF6FF02366A960000000000000000000000000000
          0000011B354902366A9099CCF6FF99CCF6FF99CCF6FF99CCF6FF99CCF6FF99CC
          F6FF99CCF6FF99CCF6FF02366A90011B35490000000000000000000000000000
          000000000000011B34460235688B0235688B0235688B12385E9912385E990235
          688B0235688B0235688B011B3446000000000000000000000000000000000000
          0000000000000000000000000000000000002A1E125C8C4F06D38C4F05D32A1E
          125C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003B20045C92560CD4FFC53AFFFFBD20FF9255
          0BD43B20045C0000000000000000000000000000000000000000000000000000
          000000000000000000003E23065C9A5E13D4FECB4DFFFEB714FFFEB102FFFEC0
          2CFF995C11D43E23065C00000000000000000000000000000000000000000000
          00000000000043280A5CA2671DD5FAD171FFF9CC65FFF5B833FFF1A913FFF6BD
          3FFFF7C554FFA0641AD443280A5C000000000000000000000000000000000000
          0000000000006C43138F8C5719B88C5719B89B601BCCEEC26AFFDE9C2CFF9B60
          1BCC8C5719B88C5719B86C43138F000000000000000000000000000000000000
          000000000000000000000000000000000000A56922CCF1CA83FFD89B4AFFA569
          22CC000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000925F22ABD0B279D5C79656D5915F
          22AA000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005E3F186A82724F8480643C855E3F
          186A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002F200D3340392840403421402F20
          0D33000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000070000
          001A0000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001A00000007040404520808
          0885080808850808088508080885080808850808088508080885080808850808
          08850808088508080885080808850808088508080885040404521313137B9C9C
          9CDFDDDDDDFFDCDDDDFFD6D7D7FFD0D1D1FFCACBCBFFC6C6C6FFC4C4C4FFC5C4
          C4FFC7C4C4FFCAC4C4FFCDC4C4FFC8BBBBFF8F8686DF1313137B17171776E5E5
          E5FFB1B1B1FF868787FF828383FF7E7F7FFF7A7B7BFF787878FF787777FF7A77
          77FF7E7777FF827777FF867777FF66FF66FFD3C4C4FF1717177619191973EEEE
          EEFFD8D9D9FFD3D4D4FFCDCECEFFC7C8C8FFC1C2C2FFBDBDBDFFBBBBBBFFBCBB
          BBFFBEBBBBFFC1BBBBFFC4BBBBFFC8BBBBFFDCCDCDFF191919731A1A1A6BE6E6
          E6FFFCFCFCFFF7F8F8FFF1F2F2FFEAEBEBFFE4E5E5FFDFE0E0FFDDDDDDFFDEDD
          DDFFE0DDDDFFE3DDDDFFE7DDDDFFEBDDDDFFD5C4C4FF1A1A1A6B17171757AEAE
          AEDCE9E9E9FFD2D2D2FFCBCCCCFFC3C4C4FFBBBDBDFFB5B7B7FFB3B3B3FFB4B3
          B3FFB7B3B3FFBCB3B3FFC0B3B3FFD8C8C8FFA29595DC17171757121212407F7F
          7FBEEDEDEDFFDADADAFFD3D4D4FFCBCCCCFFC3C5C5FFBDBFBFFFBBBBBBFFBCBB
          BBFFBFBBBBFFC4BBBBFFAE7C4EFFC9A488FF777070BE121212400C0C0C295C5C
          5CA0EDEDEDFFDADADAFFD3D4D4FFCBCCCCFFC3C5C5FFBDBFBFFFBBBBBBFFBCBB
          BBFFBFBBBBFFC4BBBBFFAE6F30FFB27334FF684E35BA0C0C0C29060606143131
          3177F1F1F1FFE9E9E9FFE2E3E3FFDBDCDCFFD4D5D5FFCED0D0FFBB8E5DFFBA7D
          3CFFBA7D3CFFBB7D3CFFBC7D3CFFFFC538FF9B5F1EE4462A0C66000000001111
          1134222222672222226722222267222222672222226722222267A36723E1FFE3
          92FFFFD56AFFFFD15DFFFFD15DFFFFD15DFFFFD873FF9C611CCC000000000000
          00000000000000000000000000000000000000000000000000007D501B99A86C
          25CCA86C25CCA86C25CCA86C25CCFFE597FFA86C25CC4B30105C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B2762DCCB2762DCC5035145C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008B5E25995338165C0000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000005E310499381D025C0000000000000000000000060000
          00160000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A864A0BD1864A0BD13A200565000000060014286A0034
          68C8003468C8003468C8003468C8003468C8003468C8003468C869543CEA905F
          28F4905F28F4905F28F4905F28F4FFC538FF905F28F430261A8D01356ABF7EB1
          E3FF7CAFE1FF7CAFE1FF7CAFE1FF7BAEE0FF7BAEE0FF7BAEE0FFB58349FFFFE3
          92FFFFD56AFFFFD15DFFFFD15DFFFFD15DFFFFD873FF9C6C32F301366BB589BC
          E9FF82B5E5FF82B5E5FF82B5E5FF82B5E5FF82B5E5FF82B5E5FFB29977FFC290
          53FFC29053FFC29053FFC29053FFFFE597FFC49254FF475258D001366CAB94C7
          F1FF8ABDEBFF8ABDEBFF8ABDEBFFAADDFFFFAADDFFFFAADDFFFFAADDFFFFAADD
          FFFFAADDFFFF8ABDEBFFCE9C5CFFCE9C5CFFB1B6AFFF01366CAB01376CA69CCF
          F7FF92C5F1FF92C5F1FF92C5F1FF4A7DB0FF4F82B5FF4F82B5FF4F82B5FF4F82
          B5FF4A7DB0FF92C5F1FFC6AD86FFB2B7B1FF9CCFF7FF01376CA602376BA1AADD
          FFFFAADDFFFFAADDFFFFAADDFFFF5184B7FF5E91C4FF5E91C4FF5E91C4FF5E91
          C4FF5184B7FFAADDFFFFAADDFFFFAADDFFFFAADDFFFF02376BA102366B9C8ABE
          E9F670A3D1FF497CAFFF4E81B4FF5A8DC0FF6497CAFF6497CAFF6497CAFF6497
          CAFF5A8DC0FF4E81B4FF497CAFFF70A3D1FF8ABEE9F602366B9C0231618A6296
          C6DD76A9D7FF5487BAFF5E91C4FF679ACDFF6C9FD2FF6C9FD2FF6C9FD2FF6C9F
          D2FF679ACDFF5E91C4FF5487BAFF76A9D7FF6296C6DD0231618A012447634078
          ACCB82B5E3FF5F92C5FF679ACDFF6EA1D4FF72A5D8FF72A5D8FF72A5D8FF72A5
          D8FF6EA1D4FF679ACDFF5F92C5FF82B5E3FF4078ACCB01244763011931433E76
          AAC890C3EEFF689BCEFF6EA1D4FF73A6D9FF76A9DCFF76A9DCFF76A9DCFF76A9
          DCFF73A6D9FF6EA1D4FF689BCEFF90C3EEFF3E76AAC801193143010E1C260C40
          739699CCF6FF99CCF6FF99CCF6FF99CCF6FF99CCF6FF99CCF6FF99CCF6FF99CC
          F6FF99CCF6FF99CCF6FF99CCF6FF99CCF6FF0C407396010E1C26000000000228
          4E680235698B0235698B0235698B0235698B0235698B0235698B0235698B0235
          698B0235698B0235698B0235698B0235698B02284E6800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object Client_Fields: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 456
    object Client_FieldsID: TStringField
      FieldName = 'ID'
      Size = 100
    end
    object Client_Fieldsfield_name: TStringField
      FieldName = 'field_name'
      Size = 30
    end
    object Client_Fieldsfield_caption: TStringField
      FieldName = 'field_caption'
      Size = 200
    end
  end
  object DS_Fields: TDataSource
    DataSet = Client_Fields
    Left = 160
    Top = 480
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton20'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem2'
      end>
    UseOwnFont = False
    Left = 184
    Top = 192
    PixelsPerInch = 96
  end
  object dxBarPopupMenu2: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem3'
      end>
    UseOwnFont = False
    Left = 32
    Top = 480
    PixelsPerInch = 96
  end
  object dxBarPopupMenu3: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem4'
      end>
    UseOwnFont = False
    Left = 968
    Top = 280
    PixelsPerInch = 96
  end
  object Client_RefBookData: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 872
    Top = 256
    object Client_RefBookDataid: TAutoIncField
      FieldName = 'id'
    end
  end
  object DS_RefBookData: TDataSource
    Left = 872
    Top = 312
  end
  object ADOConnect: TADOConnection
    Left = 304
    Top = 128
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = cxGrid1
        Properties.Strings = (
          'Height')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end
      item
        Properties.Strings = (
          'Height')
      end
      item
        Properties.Strings = (
          'Height')
      end
      item
        Properties.Strings = (
          'Height')
      end
      item
        Properties.Strings = (
          'Height')
      end>
    StorageName = '\Software\LIS1\CtmLoadDictionary'
    StorageType = stRegistry
    Left = 359
    Top = 170
  end
end
