object frStatFrame: TfrStatFrame
  Left = 0
  Top = 0
  Width = 420
  Height = 200
  TabOrder = 0
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 420
    Height = 200
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 18
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.ScrollbarMode = sbmClassic
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      OnMouseLeave = cxGrid1DBBandedTableView1MouseLeave
      OnMouseMove = cxGrid1DBBandedTableView1MouseMove
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = cxGrid1DBBandedTableView1CellClick
      OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
      DataController.DataSource = DataSource1
      DataController.DetailKeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsBehavior.DragHighlighting = False
      OptionsBehavior.DragOpening = False
      OptionsBehavior.DragScrolling = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnHorzSizing = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsCustomize.BandMoving = False
      OptionsCustomize.BandSizing = False
      OptionsCustomize.ColumnVertSizing = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.FocusRect = False
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1type: TcxGridDBBandedColumn
        DataBinding.FieldName = 'type'
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1name: TcxGridDBBandedColumn
        DataBinding.FieldName = 'name'
        OnGetCellHint = cxGrid1DBBandedTableView1valueGetCellHint
        Width = 260
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1cod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'cod'
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1value: TcxGridDBBandedColumn
        DataBinding.FieldName = 'value'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        OnGetCellHint = cxGrid1DBBandedTableView1valueGetCellHint
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1stat_decryption: TcxGridDBBandedColumn
        DataBinding.FieldName = 'stat_decryption'
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
    end
    object cxGrid1DBBandedTableView2: TcxGridDBBandedTableView
      OnMouseLeave = cxGrid1DBBandedTableView2MouseLeave
      OnMouseMove = cxGrid1DBBandedTableView2MouseMove
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = cxGrid1DBBandedTableView2CellClick
      OnCustomDrawCell = cxGrid1DBBandedTableView2CustomDrawCell
      DataController.DataSource = DataSource1
      DataController.DetailKeyFieldNames = 'rod_vagon_id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.BandHeaderHints = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnHorzSizing = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsCustomize.ColumnsQuickCustomizationShowCommands = False
      OptionsCustomize.BandMoving = False
      OptionsCustomize.BandSizing = False
      OptionsCustomize.BandsQuickCustomizationShowCommands = False
      OptionsCustomize.ColumnVertSizing = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideSelection = True
      OptionsView.FocusRect = False
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      Bands = <
        item
          Caption = '  '#1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100
          HeaderAlignmentHorz = taLeftJustify
          Options.Moving = False
          Options.Sizing = False
          Styles.Header = cxStyle_BandName
        end>
      object cxGrid1DBBandedTableView2rod_vagon_name: TcxGridDBBandedColumn
        Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
        DataBinding.FieldName = 'rod_vagon_name'
        HeaderAlignmentVert = vaTop
        Styles.Content = cxStyle2
        Styles.Header = cxStyle1
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView2vagon_count: TcxGridDBBandedColumn
        Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075'.'
        DataBinding.FieldName = 'vagon_count'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '#,##0'
        Properties.UseDisplayFormatWhenEditing = True
        HeaderAlignmentVert = vaTop
        Styles.Content = cxStyle2
        Styles.Header = cxStyle1
        Width = 45
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView2rate_val_avg: TcxGridDBBandedColumn
        Caption = #1072#1088#1077#1085#1076#1072'/ '#1083#1080#1079#1080#1085#1075', '#1088#1091#1073'./'#1089#1091#1090'.'
        DataBinding.FieldName = 'rate_val_avg'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Properties.UseDisplayFormatWhenEditing = True
        HeaderAlignmentVert = vaTop
        Styles.Content = cxStyle2
        Styles.Header = cxStyle1
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView2cost_repair: TcxGridDBBandedColumn
        Caption = #1088#1077#1084#1086#1085#1090#1099' '#1080' '#1055#1055#1057', '#1088#1091#1073'./'#1089#1091#1090'.'
        DataBinding.FieldName = 'cost_repair'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Properties.UseDisplayFormatWhenEditing = True
        HeaderAlignmentVert = vaTop
        Styles.Content = cxStyle2
        Styles.Header = cxStyle1
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView2stand_cost: TcxGridDBBandedColumn
        Caption = 'c'#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1088#1086#1089#1090#1086#1077#1074', '#1088#1091#1073'./'#1089#1091#1090'.'
        DataBinding.FieldName = 'stand_cost'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Properties.UseDisplayFormatWhenEditing = True
        HeaderAlignmentVert = vaTop
        Styles.Content = cxStyle2
        Styles.Header = cxStyle1
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView2total: TcxGridDBBandedColumn
        Caption = #1048#1058#1054#1043#1054', '#1088#1091#1073'./'#1089#1091#1090'.'
        DataBinding.FieldName = 'total'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Properties.UseDisplayFormatWhenEditing = True
        HeaderAlignmentVert = vaTop
        Styles.Content = cxStyle2
        Styles.Header = cxStyle1
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView2rod_vagon_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'rod_vagon_id'
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView2
    end
  end
  object ADOStoredProc1: TADOStoredProc
    AutoCalcFields = False
    CacheSize = 10
    Connection = fmMain.Lis
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'sp_Stat'
    Parameters = <>
    Left = 240
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = ADOStoredProc1
    Left = 280
    Top = 160
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 24
    Top = 80
    PixelsPerInch = 96
    object cxStyle_BandName: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 18
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 12
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
end
