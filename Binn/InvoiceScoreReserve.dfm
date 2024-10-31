object fmInvoiceScoreReserve: TfmInvoiceScoreReserve
  Left = 0
  Top = 0
  Caption = #1056#1077#1077#1089#1090#1088' '#1053#1086#1084#1077#1088#1086#1074' '#1089#1095#1077#1090#1086#1074'-'#1092#1072#1082#1090#1091#1088
  ClientHeight = 665
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 26
    Width = 828
    Height = 639
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 828
      Height = 639
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        PopupMenu = dxBarPopupMenu1
        OnDblClick = dxBarButton2Click
        OnKeyPress = cxGrid1DBBandedTableView1KeyPress
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
        OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
        DataController.DataSource = DS_InvoiceScore
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
        DataController.Filter.Active = True
        DataController.KeyFieldNames = 'invoice_score_reserve_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #1050#1086#1083'-'#1074#1086': 0'
            Kind = skCount
            Column = cxGrid1DBBandedTableView1score_cod
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
        object cxGrid1DBBandedTableView1invoice_score_reserve_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'invoice_score_reserve_id'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1score_cod: TcxGridDBBandedColumn
          Caption = #1085#1086#1084#1077#1088' '#1059#1055#1044'/'#1057#1060
          DataBinding.FieldName = 'score_cod'
          HeaderAlignmentVert = vaTop
          Styles.Content = fmMain.cxStyle_Bold
          Styles.Header = fmMain.cxStyle_Bold
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1type_invoice_score: TcxGridDBBandedColumn
          DataBinding.FieldName = 'type_invoice_score'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1score_date: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          DataBinding.FieldName = 'score_date'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1date_enter: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072' '#1088#1077#1079#1077#1088#1074#1072#1094#1080#1080
          DataBinding.FieldName = 'date_enter'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Kind = ckDateTime
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
          DataBinding.FieldName = 'comment'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1set_reserve: TcxGridDBBandedColumn
          Caption = #1056#1077#1079#1077#1088#1074
          DataBinding.FieldName = 'set_reserve'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = #1044#1072
          Properties.DisplayUnchecked = #1053#1077#1090
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1invoice_score_id: TcxGridDBBandedColumn
          Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1059#1055#1044'/'#1057#1060
          DataBinding.FieldName = 'invoice_score_id'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn
          Caption = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
          DataBinding.FieldName = 'FIO_users'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'users_group_id'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBBandedTableView1
      end
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
    Left = 544
    Top = 128
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
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 409
      FloatTop = 280
      FloatClientWidth = 56
      FloatClientHeight = 120
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
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
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
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' ('#1056#1077#1079#1077#1088#1074#1080#1088#1086#1074#1072#1090#1100' '#1085#1086#1084#1077#1088') ...'
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' ('#1056#1077#1079#1077#1088#1074#1080#1088#1086#1074#1072#1090#1100' '#1085#1086#1084#1077#1088') '
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100'...'
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' ('#1054#1089#1074#1086#1073#1086#1076#1080#1090#1100' '#1085#1086#1084#1077#1088')'
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' ('#1054#1089#1074#1086#1073#1086#1076#1080#1090#1100' '#1085#1086#1084#1077#1088')'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton4Click
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = '2015'
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
    object dxBarButton5: TdxBarButton
      Tag = -1
      Caption = '<<'
      Category = 0
      Hint = '<<'
      Visible = ivAlways
      ImageIndex = 165
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Tag = 1
      Caption = '>>'
      Category = 0
      Hint = '>>'
      Visible = ivAlways
      ImageIndex = 164
      OnClick = dxBarButton5Click
    end
    object dxBarButton8: TdxBarButton
      Caption = #1052#1077#1089#1103#1094'...'
      Category = 0
      Hint = #1052#1077#1089#1103#1094
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = #1055#1077#1088#1080#1086#1076'...'
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076
      Visible = ivAlways
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
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end>
    end
    object dxBarButton13: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton13Click
    end
    object dxBarButton14: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton14Click
    end
    object dxBarButton7: TdxBarButton
      Caption = #1042#1099#1073#1086#1088
      Category = 0
      Hint = #1042#1099#1073#1086#1088
      Visible = ivNever
      ImageIndex = 3
      OnClick = dxBarButton7Click
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
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem3'
      end>
    UseOwnFont = False
    Left = 464
    Top = 120
    PixelsPerInch = 96
  end
  object Query_InvoiceScore: TADOQuery
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
        Name = 'reserve_only'
        DataType = ftBoolean
        Size = -1
        Value = False
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM view_invoice_score_reserve'
      'WHERE score_date >= :date1  '
      'AND score_date <= :date2 '
      
        'AND (CASE WHEN :reserve_only = 1 THEN set_reserve ELSE 1 END = 1' +
        ')')
    Left = 324
    Top = 102
  end
  object DS_InvoiceScore: TDataSource
    DataSet = Query_InvoiceScore
    Left = 358
    Top = 156
  end
end
