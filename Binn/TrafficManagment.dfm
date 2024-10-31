object fmTrafficManagment: TfmTrafficManagment
  Left = 0
  Top = 0
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1088#1077#1084#1086#1085#1090#1072#1084#1080
  ClientHeight = 753
  ClientWidth = 1232
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl2: TPageControl
    Left = 0
    Top = 26
    Width = 1232
    Height = 727
    ActivePage = TabSheet4
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Style = tsButtons
    TabOrder = 4
    OnChange = PageControl2Change
    object TabSheet2: TTabSheet
      Caption = '1.1 '#1057#1088#1077#1076#1085#1080#1081' '#1087#1088#1086#1089#1090#1086#1081' '#1074' '#1058#1056
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 473
        Width = 1224
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = 8421631
        ParentColor = False
        Visible = False
        ExplicitLeft = 2
        ExplicitTop = 340
        ExplicitWidth = 1026
      end
      object Splitter4: TSplitter
        Left = 849
        Top = 0
        Height = 473
        Color = 8421631
        ParentColor = False
        ExplicitLeft = 0
        ExplicitTop = 366
        ExplicitHeight = 990
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 476
        Width = 1224
        Height = 220
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Visible = False
        object cxLabel4: TcxLabel
          Left = 2
          Top = 15
          Align = alTop
          AutoSize = False
          Caption = #1044#1072#1085#1085#1099#1077' '#1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1080
          ParentColor = False
          ParentFont = False
          Style.Color = 12615680
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 22
          Width = 1220
          AnchorX = 612
          AnchorY = 26
        end
        object cxGrid2: TcxGrid
          Left = 2
          Top = 37
          Width = 1220
          Height = 181
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = ''
          object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu2
            OnKeyPress = cxGrid2DBBandedTableView1KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
            DataController.DataSource = DS_info
            DataController.KeyFieldNames = 'num_vagon;date_breakage'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skAverage
                Position = spFooter
                Column = cxGrid2DBBandedTableView1before_count_stay
              end
              item
                Kind = skAverage
                Column = cxGrid2DBBandedTableView1before_count_stay
              end
              item
                Kind = skAverage
                Position = spFooter
                Column = cxGrid2DBBandedTableView1in_count_stay
              end
              item
                Kind = skAverage
                Column = cxGrid2DBBandedTableView1in_count_stay
              end
              item
                Kind = skAverage
                Position = spFooter
                Column = cxGrid2DBBandedTableView1after_count_stay
              end
              item
                Kind = skAverage
                Column = cxGrid2DBBandedTableView1after_count_stay
              end
              item
                Kind = skSum
                Position = spFooter
                Column = cxGrid2DBBandedTableView1sum_count_stay
              end
              item
                Kind = skSum
                Column = cxGrid2DBBandedTableView1sum_count_stay
              end
              item
                Kind = skCount
                Position = spFooter
                Column = cxGrid2DBBandedTableView1num_vagon
              end
              item
                Kind = skCount
                Column = cxGrid2DBBandedTableView1num_vagon
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'invoice_score_id'
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Kind = skAverage
                Column = cxGrid2DBBandedTableView1before_count_stay
              end
              item
                Kind = skAverage
                Column = cxGrid2DBBandedTableView1in_count_stay
              end
              item
                Kind = skAverage
                Column = cxGrid2DBBandedTableView1after_count_stay
              end
              item
                Kind = skSum
                Column = cxGrid2DBBandedTableView1sum_count_stay
              end
              item
                Kind = skCount
                Column = cxGrid2DBBandedTableView1num_vagon
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            DateTimeHandling.Grouping = dtgByDate
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
            Bands = <
              item
              end>
            object cxGrid2DBBandedTableView1road_name: TcxGridDBBandedColumn
              Caption = #1044#1086#1088#1086#1075#1072' '#1058#1077#1093'.'#1089#1086#1089#1090'.'
              DataBinding.FieldName = 'road_name'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1r_road_operation_name: TcxGridDBBandedColumn
              Caption = #1044#1086#1088#1086#1075#1072' '#1089#1090'. '#1088#1077#1084'.('#1044#1080#1089#1083'.)'
              DataBinding.FieldName = 'r_road_operation_name'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1r_node_operation_name: TcxGridDBBandedColumn
              Caption = #1057#1090'. '#1088#1077#1084#1086#1085#1090#1072'('#1044#1080#1089#1083'.)'
              DataBinding.FieldName = 'r_node_operation_name'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1date_breakage: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1073#1088#1072#1082#1086#1074#1082#1080'('#1042#1059'-23)'
              DataBinding.FieldName = 'date_breakage'
              HeaderAlignmentVert = vaTop
              Styles.Header = fmMain.cxStyle_Bold
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1date_in: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080'('#1091#1089#1083'1)'
              DataBinding.FieldName = 'date_in'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1date_repare_end: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103'('#1042#1059'-36)'
              DataBinding.FieldName = 'date_repare_end'
              HeaderAlignmentVert = vaTop
              Styles.Header = fmMain.cxStyle_Bold
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1date_out: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1091#1073#1086#1088#1082#1080'('#1091#1089#1083'1)'
              DataBinding.FieldName = 'date_out'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1before_count_stay: TcxGridDBBandedColumn
              Caption = #1055#1088#1086#1089#1090#1086#1081' '#1044#1086
              DataBinding.FieldName = 'before_count_stay'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1in_count_stay: TcxGridDBBandedColumn
              Caption = #1055#1088#1086#1089#1090#1086#1081' '#1042
              DataBinding.FieldName = 'in_count_stay'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1after_count_stay: TcxGridDBBandedColumn
              Caption = #1055#1088#1086#1089#1090#1086#1081' '#1055#1086#1089#1083#1077
              DataBinding.FieldName = 'after_count_stay'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1sum_count_stay: TcxGridDBBandedColumn
              Caption = #1055#1088#1086#1089#1090#1086#1081' '#1054#1073#1097'.'
              DataBinding.FieldName = 'sum_count_stay'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1num_vagon: TcxGridDBBandedColumn
              Caption = #8470' '#1042#1072#1075#1086#1085#1072
              DataBinding.FieldName = 'num_vagon'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1date_in_total: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080'('#1088#1072#1089#1095'.)'
              DataBinding.FieldName = 'date_in_total'
              HeaderAlignmentVert = vaTop
              Styles.Header = fmMain.cxStyle_Bold
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1date_out_total: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1091#1073#1086#1088#1082#1080' ('#1088#1072#1089#1095'.)'
              DataBinding.FieldName = 'date_out_total'
              HeaderAlignmentVert = vaTop
              Styles.Header = fmMain.cxStyle_Bold
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1breakage_name: TcxGridDBBandedColumn
              Caption = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'breakage_name'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn
              Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
              DataBinding.FieldName = 'rod_vagon_name'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
              Caption = #1042#1083#1072#1076#1077#1083#1077#1094
              DataBinding.FieldName = 'firm_customer_name'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1type_park_name: TcxGridDBBandedColumn
              Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
              DataBinding.FieldName = 'type_park_name'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBBandedTableView1
          end
        end
      end
      object GroupBox5: TGroupBox
        Left = 852
        Top = 0
        Width = 372
        Height = 473
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object cxLabel5: TcxLabel
          Left = 2
          Top = 15
          Align = alTop
          AutoSize = False
          Caption = #1057#1090#1072#1085#1094#1080#1080' '#1089' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1084' '#1087#1088#1086#1089#1090#1086#1077#1084' '#1074' '#1090#1077#1082#1091#1097#1077#1084' '#1088#1077#1084#1086#1085#1090#1077
          ParentColor = False
          ParentFont = False
          Style.Color = 12615680
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 22
          Width = 368
          AnchorX = 186
          AnchorY = 26
        end
        object cxGrid3: TcxGrid
          Left = 2
          Top = 37
          Width = 368
          Height = 434
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = ''
          object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu3
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
            DataController.DataSource = DS_Info2
            DataController.KeyFieldNames = 'r_node_operation_name'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skAverage
                Position = spFooter
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
                Position = spFooter
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
                Position = spFooter
              end
              item
                Kind = skAverage
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
                Column = cxGrid3DBBandedTableView1r_node_operation_name
              end
              item
                Kind = skCount
                Column = cxGrid3DBBandedTableView1r_node_operation_name
              end
              item
                Format = '#,#0.0'
                Kind = skSum
                Position = spFooter
                Column = cxGrid3DBBandedTableView1in_count_stay
              end
              item
                Format = '#,#0.0'
                Kind = skSum
                Column = cxGrid3DBBandedTableView1in_count_stay
              end
              item
                Format = '#0'
                Kind = skSum
                Position = spFooter
                Column = cxGrid3DBBandedTableView1cnt_vagon
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid3DBBandedTableView1cnt_vagon
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'invoice_score_id'
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skSum
              end
              item
                Kind = skCount
              end
              item
                Kind = skCount
                Column = cxGrid3DBBandedTableView1r_node_operation_name
              end
              item
                Format = #1089#1088#1077#1076#1085'=#,#0.0'
                Kind = skAverage
                Column = cxGrid3DBBandedTableView1in_count_stay
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid3DBBandedTableView1cnt_vagon
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            DateTimeHandling.Grouping = dtgByDate
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            Preview.AutoHeight = False
            OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
            Bands = <
              item
              end>
            object cxGrid3DBBandedTableView1r_node_operation_name: TcxGridDBBandedColumn
              Caption = #1057#1090#1072#1085#1094#1080#1103
              DataBinding.FieldName = 'r_node_operation_name'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentVert = vaTop
              Width = 120
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1r_road_operation_name: TcxGridDBBandedColumn
              Caption = #1044#1086#1088#1086#1075#1072
              DataBinding.FieldName = 'r_road_operation_name'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1in_count_stay: TcxGridDBBandedColumn
              Caption = #1055#1088#1086#1089#1090#1086#1081','#1089#1091#1090'.'
              DataBinding.FieldName = 'in_count_stay'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,#0.0'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid3DBBandedTableView1cnt_vagon: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086' '#1088#1077#1084#1086#1085#1090#1086#1074', '#1096#1090'.'
              DataBinding.FieldName = 'cnt_vagon'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBBandedTableView1
          end
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 849
        Height = 473
        Align = alLeft
        TabOrder = 2
        object cxLabel6: TcxLabel
          Left = 2
          Top = 15
          Align = alTop
          AutoSize = False
          Caption = #1057#1088#1077#1076#1085#1080#1081' '#1087#1088#1086#1089#1090#1086#1081' '#1074' '#1090#1077#1082#1091#1097#1077#1084' '#1088#1077#1084#1086#1085#1090#1077' '#1087#1086' '#1076#1086#1088#1086#1075#1072#1084
          ParentColor = False
          ParentFont = False
          Style.Color = 12615680
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 22
          Width = 845
          AnchorX = 425
          AnchorY = 26
        end
        object cxGrid1: TcxGrid
          Left = 2
          Top = 37
          Width = 845
          Height = 434
          Align = alClient
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BorderWidth = 1
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = ''
          object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu1
            OnKeyPress = cxGrid1DBBandedTableView1KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
            DataController.DataSource = DS_Reps
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1DataControllerFilterChanged
            DataController.KeyFieldNames = 'road_name'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,0'
                Kind = skSum
                Position = spFooter
                Column = cxGrid1DBBandedTableView1count_repair
              end
              item
                Format = '#,0'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1count_repair
              end
              item
                Kind = skCount
                Position = spFooter
                Column = cxGrid1DBBandedTableView1road_name
              end
              item
                Kind = skCount
                Column = cxGrid1DBBandedTableView1road_name
              end
              item
                Format = '#,0'
                Kind = skSum
                Position = spFooter
                Column = cxGrid1DBBandedTableView1sum_count_stay
              end
              item
                Format = '#,0'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1sum_count_stay
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
              end
              item
                Format = '#,0'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1count_repair
              end
              item
                Kind = skCount
                Column = cxGrid1DBBandedTableView1road_name
                VisibleForCustomization = False
              end
              item
                Format = '#,0'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1sum_count_stay
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
            OptionsSelection.CellMultiSelect = True
            OptionsSelection.InvertSelect = False
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            Preview.AutoHeight = False
            OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
            Bands = <
              item
              end
              item
                Caption = #1053#1086#1088#1084#1072' = 2'
              end
              item
                Caption = #1053#1086#1088#1084#1072' = 6'
              end
              item
                Caption = #1053#1086#1088#1084#1072' = 3'
              end
              item
                Caption = #1053#1086#1088#1084#1072' = 11'
              end>
            object cxGrid1DBBandedTableView1road_name: TcxGridDBBandedColumn
              Caption = #1044#1086#1088#1086#1075#1072
              DataBinding.FieldName = 'road_name'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Width = 90
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1count_repair: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086' '#1088#1077#1084#1086#1085#1090#1086#1074','#1096#1090'.'
              DataBinding.FieldName = 'count_repair'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 93
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1sum_count_stay: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072#1088#1085#1099#1081' '#1087#1088#1086#1089#1090#1086#1081','#1089#1091#1090'.'
              DataBinding.FieldName = 'sum_count_stay'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 127
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1before_count_stay: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1080#1081' '#1087#1088#1086#1089#1090#1086#1081' '#1076#1086' '#1088#1077#1084#1086#1085#1090#1072','#1089#1091#1090'.'
              DataBinding.FieldName = 'before_count_stay'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DecimalPlaces = 1
              Properties.DisplayFormat = '#,#0.0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 138
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1in_count_stay: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1080#1081' '#1087#1088#1086#1089#1090#1086#1081' '#1074' '#1088#1077#1084#1086#1085#1090#1077','#1089#1091#1090'.'
              DataBinding.FieldName = 'in_count_stay'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DecimalPlaces = 1
              Properties.DisplayFormat = '#,#0.0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 122
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1after_count_stay: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1080#1081' '#1087#1088#1086#1089#1090#1086#1081' '#1087#1086#1089#1083#1077' '#1088#1077#1084#1086#1085#1090#1072','#1089#1091#1090'.'
              DataBinding.FieldName = 'after_count_stay'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,#0.0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 131
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1total_count_stay: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1080#1081' '#1087#1088#1086#1089#1090#1086#1081' '#1086#1073#1097'.,'#1089#1091#1090
              DataBinding.FieldName = 'total_count_stay'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,#0.0'
              Width = 131
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBBandedTableView1
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '1.2 '#1055#1088#1086#1089#1090#1086#1081' '#1074' '#1058#1054#1056' '#1086#1085#1083#1072#1081#1085
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1224
        Height = 696
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Splitter3: TSplitter
          Left = 1
          Top = 337
          Width = 1222
          Height = 3
          Cursor = crVSplit
          Align = alTop
          Color = 8421631
          ParentColor = False
          ExplicitTop = 217
          ExplicitWidth = 1147
        end
        object cxLabel1: TcxLabel
          Left = 1
          Top = 1
          Align = alTop
          AutoSize = False
          Caption = #1055#1088#1086#1089#1090#1086#1081' '#1074' '#1058#1054#1056' '#1086#1085#1083#1072#1081#1085' ('#1074' '#1088#1077#1084#1086#1085#1090#1077')'
          ParentColor = False
          ParentFont = False
          Style.Color = 12615680
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 22
          Width = 1222
          AnchorX = 612
          AnchorY = 12
        end
        object cxGrid4: TcxGrid
          Left = 1
          Top = 23
          Width = 1222
          Height = 314
          Align = alTop
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = ''
          object cxGrid4DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu4
            OnKeyPress = cxGrid4DBBandedTableView1KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
            DataController.DataSource = DS_Reps
            DataController.KeyFieldNames = 'num_vagon;date_breakage'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skAverage
                Position = spFooter
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
                Position = spFooter
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
                Position = spFooter
              end
              item
                Kind = skAverage
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
                Format = '#,#0.0'
                Kind = skSum
                Position = spFooter
              end
              item
                Format = '#,#0.0'
                Kind = skSum
              end
              item
                Kind = skCount
                Position = spFooter
                Column = cxGrid4DBBandedTableView1num_vagon
              end
              item
                Kind = skCount
                Column = cxGrid4DBBandedTableView1num_vagon
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1count_stay
              end
              item
                Format = '#0'
                Kind = skSum
                Position = spFooter
                Column = cxGrid4DBBandedTableView1count_stay
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'invoice_score_id'
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skSum
              end
              item
                Kind = skCount
              end
              item
                Kind = skCount
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                Kind = skAverage
              end
              item
                Kind = skCount
                Column = cxGrid4DBBandedTableView1num_vagon
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1count_stay
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            DateTimeHandling.Grouping = dtgByDate
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            Preview.AutoHeight = False
            OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
            Bands = <
              item
              end>
            object cxGrid4DBBandedTableView1comment6: TcxGridDBBandedColumn
              Caption = #1055#1086#1083#1080#1075#1086#1085
              DataBinding.FieldName = 'comment6'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1vagon_owner_name: TcxGridDBBandedColumn
              Caption = #1042#1083#1072#1076#1077#1083#1077#1094
              DataBinding.FieldName = 'vagon_owner_name'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1num_vagon: TcxGridDBBandedColumn
              Caption = #8470' '#1042#1072#1075#1086#1085#1072
              DataBinding.FieldName = 'num_vagon'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Agree_bargain_cod
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn
              Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
              DataBinding.FieldName = 'rod_vagon_name'
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1node_name: TcxGridDBBandedColumn
              Caption = #1057#1090#1072#1085#1094#1080#1103' '#1086#1090#1094#1077#1087#1082#1080
              DataBinding.FieldName = 'node_name'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1road_name: TcxGridDBBandedColumn
              Caption = #1044#1086#1088#1086#1075#1072
              DataBinding.FieldName = 'road_name'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1count_stay: TcxGridDBBandedColumn
              Caption = #1055#1088#1086#1089#1090#1086#1081
              DataBinding.FieldName = 'count_stay'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#0'
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1fact_weight: TcxGridDBBandedColumn
              Caption = #1056#1077#1081#1089
              DataBinding.FieldName = 'fact_weight'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1comment12: TcxGridDBBandedColumn
              Caption = #1056#1077#1084#1086#1085#1090' '#1086#1088#1075#1072#1085#1080#1079#1086#1074#1099#1074#1072#1077#1090
              DataBinding.FieldName = 'comment12'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1date_breakage: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1073#1088#1072#1082#1086#1074#1082#1080
              DataBinding.FieldName = 'date_breakage'
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1date_repare_end: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1042#1059'-36'
              DataBinding.FieldName = 'date_repare_end'
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1breakage_name: TcxGridDBBandedColumn
              Caption = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'breakage_name'
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1type_park_name: TcxGridDBBandedColumn
              Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
              DataBinding.FieldName = 'type_park_name'
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1node_begin_name: TcxGridDBBandedColumn
              Caption = #1058#1077#1082'. '#1088#1077#1081#1089' '#1089#1090'. '#1054#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
              DataBinding.FieldName = 'node_begin_name'
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1node_end_name: TcxGridDBBandedColumn
              Caption = #1058#1077#1082'. '#1088#1077#1081#1089' '#1089#1090'. '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1103
              DataBinding.FieldName = 'node_end_name'
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1date_otpr: TcxGridDBBandedColumn
              Caption = #1058#1077#1082'. '#1088#1077#1081#1089' '#1044#1072#1090#1072' '#1086#1090#1087#1088'.'
              DataBinding.FieldName = 'date_otpr'
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1comment13: TcxGridDBBandedColumn
              Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1087#1086' '#1087#1088#1086#1089#1090#1086#1103#1084' ('#8470'13)'
              DataBinding.FieldName = 'comment13'
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
          end
          object cxGrid4Level1: TcxGridLevel
            GridView = cxGrid4DBBandedTableView1
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 340
          Width = 1222
          Height = 355
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 2
          object cxLabel2: TcxLabel
            Left = 1
            Top = 1
            Align = alTop
            AutoSize = False
            Caption = #1055#1088#1086#1089#1090#1086#1081' '#1074' '#1058#1054#1056' '#1086#1085#1083#1072#1081#1085' ('#1087#1086#1089#1083#1077' '#1088#1077#1084#1086#1085#1090#1072')'
            ParentColor = False
            ParentFont = False
            Style.Color = 12615680
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 22
            Width = 1220
            AnchorX = 611
            AnchorY = 12
          end
          object cxGrid5: TcxGrid
            Left = 1
            Top = 23
            Width = 1220
            Height = 331
            Align = alClient
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmClassic
            LookAndFeel.SkinName = ''
            object cxGrid5DBBandedTableView1: TcxGridDBBandedTableView
              PopupMenu = dxBarPopupMenu5
              OnKeyPress = cxGrid5DBBandedTableView1KeyPress
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
              DataController.DataSource = DS_info
              DataController.KeyFieldNames = 'num_vagon;date_breakage'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
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
                  Format = '#,#0.0'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,#0.0'
                  Kind = skSum
                end
                item
                  Kind = skCount
                  Position = spFooter
                  Column = cxGridDBBandedColumn3
                end
                item
                  Kind = skCount
                  Column = cxGridDBBandedColumn3
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn6
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn6
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  FieldName = 'invoice_score_id'
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skCount
                end
                item
                  Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                  Kind = skAverage
                end
                item
                  Kind = skCount
                  Column = cxGridDBBandedColumn3
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn6
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              DateTimeHandling.Grouping = dtgByDate
              OptionsBehavior.CellHints = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.HeaderHeight = 35
              OptionsView.BandHeaders = False
              Preview.AutoHeight = False
              OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGridDBBandedColumn1: TcxGridDBBandedColumn
                Caption = #1055#1086#1083#1080#1075#1086#1085
                DataBinding.FieldName = 'comment6'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn2: TcxGridDBBandedColumn
                Caption = #1042#1083#1072#1076#1077#1083#1077#1094
                DataBinding.FieldName = 'vagon_owner_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn3: TcxGridDBBandedColumn
                Caption = #8470' '#1042#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'num_vagon'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn4: TcxGridDBBandedColumn
                Caption = #1057#1090#1072#1085#1094#1080#1103' '#1086#1090#1094#1077#1087#1082#1080
                DataBinding.FieldName = 'node_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn5: TcxGridDBBandedColumn
                Caption = #1044#1086#1088#1086#1075#1072
                DataBinding.FieldName = 'road_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn6: TcxGridDBBandedColumn
                Caption = #1055#1088#1086#1089#1090#1086#1081
                DataBinding.FieldName = 'count_stay'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn7: TcxGridDBBandedColumn
                Caption = #1056#1077#1081#1089
                DataBinding.FieldName = 'fact_weight'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn8: TcxGridDBBandedColumn
                Caption = #1056#1077#1084#1086#1085#1090' '#1086#1088#1075#1072#1085#1080#1079#1086#1074#1099#1074#1072#1077#1090
                DataBinding.FieldName = 'comment12'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn9: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1073#1088#1072#1082#1086#1074#1082#1080
                DataBinding.FieldName = 'date_breakage'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView1date_repare_end: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1042#1059'-36'
                DataBinding.FieldName = 'date_repare_end'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView1breakage_name: TcxGridDBBandedColumn
                Caption = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
                DataBinding.FieldName = 'breakage_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView1type_park_name: TcxGridDBBandedColumn
                Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
                DataBinding.FieldName = 'type_park_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView1node_begin_name: TcxGridDBBandedColumn
                Caption = #1058#1077#1082'. '#1088#1077#1081#1089' '#1089#1090'. '#1054#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
                DataBinding.FieldName = 'node_begin_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView1node_end_name: TcxGridDBBandedColumn
                Caption = #1058#1077#1082'. '#1088#1077#1081#1089' '#1089#1090'. '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1103
                DataBinding.FieldName = 'node_end_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxGrid5DBBandedTableView1date_otpr: TcxGridDBBandedColumn
                Caption = #1058#1077#1082'. '#1088#1077#1081#1089' '#1044#1072#1090#1072' '#1086#1090#1087#1088'.'
                DataBinding.FieldName = 'date_otpr'
                HeaderAlignmentVert = vaTop
                Width = 80
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
      end
    end
    object TabSheet5: TTabSheet
      Caption = '1.3 '#1047#1072#1090#1088#1072#1090#1099' '#1085#1072' '#1058#1054#1056
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1224
        Height = 696
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Splitter2: TSplitter
          Left = 1
          Top = 370
          Width = 1222
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          Color = 8421631
          ParentColor = False
          Visible = False
          ExplicitTop = 217
          ExplicitWidth = 1147
        end
        object cxLabel3: TcxLabel
          Left = 1
          Top = 1
          Align = alTop
          AutoSize = False
          Caption = #1047#1072#1090#1088#1072#1090#1099' '#1085#1072' '#1058#1054#1056' '#1073#1077#1079' '#1079#1072#1084#1077#1085#1099' '#1079'/'#1095' ('#1089' '#1087#1086#1076#1072#1095#1077#1081'/'#1091#1073#1086#1088#1082#1086#1081')'
          ParentColor = False
          ParentFont = False
          Style.Color = 12615680
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 22
          Width = 1222
          AnchorX = 612
          AnchorY = 12
        end
        object cxGrid6: TcxGrid
          Left = 1
          Top = 23
          Width = 1222
          Height = 347
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = ''
          object cxGrid6DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu6
            OnKeyPress = cxGrid4DBBandedTableView1KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
            DataController.DataSource = DS_Reps
            DataController.Summary.DefaultGroupSummaryItems = <
              item
              end
              item
                Format = 'AVG =#,##0.00'
                Kind = skAverage
                Position = spFooter
                Column = cxGrid6DBBandedTableView1AVG_sum
              end
              item
                Format = 'AVG =#,##0.00'
                Kind = skAverage
                Column = cxGrid6DBBandedTableView1AVG_sum
              end
              item
                Format = '#0'
                Position = spFooter
                Column = cxGrid6DBBandedTableView1rep_count
              end
              item
                Format = '#0'
                Column = cxGrid6DBBandedTableView1rep_count
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'invoice_score_id'
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skSum
              end
              item
                Kind = skCount
              end
              item
                Kind = skCount
              end
              item
                Format = #1089#1088#1077#1076#1085'=#,#0.0'
                Kind = skAverage
              end
              item
                Kind = skCount
              end
              item
                Kind = skSum
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid6DBBandedTableView1rep_count
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid6DBBandedTableView1sum
              end
              item
                Format = #1089#1088#1077#1076#1085'=#,#0.0'
                OnGetText = cxGrid6DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems13GetText
                Column = cxGrid6DBBandedTableView1AVG_sum
              end
              item
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <
              item
                Links = <
                  item
                    Column = cxGrid6DBBandedTableView1rod_vagon_name
                  end
                  item
                    Column = cxGrid6DBBandedTableView1rep_count
                  end
                  item
                    Column = cxGrid6DBBandedTableView1sum
                  end
                  item
                    Column = cxGrid6DBBandedTableView1AVG_sum
                  end
                  item
                  end>
                SummaryItems = <
                  item
                  end>
              end>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            DateTimeHandling.Grouping = dtgByDate
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            Preview.AutoHeight = False
            OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
            Bands = <
              item
              end
              item
                Caption = #1053#1086#1088#1084#1072' = 15000'
              end>
            object cxGrid6DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn
              Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
              DataBinding.FieldName = 'rod_vagon_name'
              HeaderAlignmentVert = vaTop
              MinWidth = 80
              Width = 120
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid6DBBandedTableView1type_park_name: TcxGridDBBandedColumn
              Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
              DataBinding.FieldName = 'type_park_name'
              HeaderAlignmentVert = vaTop
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid6DBBandedTableView1rep_count: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086' '#1088#1077#1084#1086#1085#1090#1086#1074', '#1096#1090
              DataBinding.FieldName = 'rep_count'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid6DBBandedTableView1sum: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072'('#1073#1077#1079' '#1053#1044#1057'), '#1088#1091#1073
              DataBinding.FieldName = 'sum'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              HeaderAlignmentVert = vaTop
              MinWidth = 80
              Width = 91
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid6DBBandedTableView1AVG_sum: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1103#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100', '#1088#1091#1073
              DataBinding.FieldName = 'AVG_sum'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              HeaderAlignmentVert = vaTop
              MinWidth = 80
              Width = 91
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGrid6Level1: TcxGridLevel
            GridView = cxGrid6DBBandedTableView1
          end
        end
        object Panel5: TPanel
          Left = 1
          Top = 373
          Width = 1222
          Height = 322
          Align = alBottom
          Caption = 'Panel3'
          TabOrder = 2
          Visible = False
          object cxLabel7: TcxLabel
            Left = 1
            Top = 1
            Align = alTop
            AutoSize = False
            Caption = #1044#1072#1085#1085#1099#1077' '#1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1080
            ParentColor = False
            ParentFont = False
            Style.Color = 12615680
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 22
            Width = 1220
            AnchorX = 611
            AnchorY = 12
          end
          object cxGrid7: TcxGrid
            Left = 1
            Top = 23
            Width = 1220
            Height = 298
            Align = alClient
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmClassic
            LookAndFeel.SkinName = ''
            object cxGrid7DBBandedTableView1: TcxGridDBBandedTableView
              PopupMenu = dxBarPopupMenu7
              OnKeyPress = cxGrid5DBBandedTableView1KeyPress
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
              DataController.DataSource = DS_info
              DataController.KeyFieldNames = 'fact_repair_table_id'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
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
                  Format = '#,#0.0'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,#0.0'
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
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid7DBBandedTableView1sum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid7DBBandedTableView1sum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  FieldName = 'invoice_score_id'
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skCount
                end
                item
                  Format = 'AVG=#,#0.0'
                  Kind = skAverage
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid7DBBandedTableView1sum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              DateTimeHandling.Grouping = dtgByDate
              OptionsBehavior.CellHints = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.HeaderHeight = 35
              OptionsView.BandHeaders = False
              Preview.AutoHeight = False
              OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGrid7DBBandedTableView1fact_repair_table_id: TcxGridDBBandedColumn
                Caption = #8470' '#1047#1072#1087#1080#1089#1080
                DataBinding.FieldName = 'fact_repair_table_id'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid7DBBandedTableView1score_date: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1057#1060
                DataBinding.FieldName = 'score_date'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid7DBBandedTableView1score_cod: TcxGridDBBandedColumn
                Caption = #8470' '#1057#1060
                DataBinding.FieldName = 'score_cod'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid7DBBandedTableView1depo_name: TcxGridDBBandedColumn
                Caption = #1044#1077#1087#1086
                DataBinding.FieldName = 'depo_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid7DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn
                Caption = #1050#1083#1080#1077#1085#1090'/'#1055#1086#1076#1088#1103#1076#1095#1080#1082
                DataBinding.FieldName = 'firm_customer_name_short'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid7DBBandedTableView1contract_cod: TcxGridDBBandedColumn
                Caption = #8470' '#1044#1086#1075#1086#1074#1086#1088#1072
                DataBinding.FieldName = 'contract_cod'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid7DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn
                Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'rod_vagon_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid7DBBandedTableView1service_name: TcxGridDBBandedColumn
                Caption = #1059#1089#1083#1091#1075#1072
                DataBinding.FieldName = 'service_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid7DBBandedTableView1sum: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072
                DataBinding.FieldName = 'sum'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid7DBBandedTableView1num_vagon: TcxGridDBBandedColumn
                Caption = #8470' '#1042#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'num_vagon'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid7DBBandedTableView1type_park_name: TcxGridDBBandedColumn
                Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
                DataBinding.FieldName = 'type_park_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid7DBBandedTableView1cost_contract_cod: TcxGridDBBandedColumn
                Caption = #1044#1086#1075#1086#1074#1086#1088' '#1088#1072#1089#1093#1086#1076#1099
                DataBinding.FieldName = 'cost_contract_cod'
                HeaderAlignmentVert = vaTop
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid7DBBandedTableView1breakage_name: TcxGridDBBandedColumn
                Caption = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100' ('#1058#1077#1093'. '#1089#1086#1089#1090#1086#1103#1085#1080#1077')'
                DataBinding.FieldName = 'breakage_name'
                Width = 89
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
            end
            object cxGrid7Level1: TcxGridLevel
              GridView = cxGrid7DBBandedTableView1
            end
          end
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = '1.4 '#1047#1072#1090#1088#1072#1090#1099' '#1085#1072' '#1044#1056
      ImageIndex = 3
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1224
        Height = 696
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Splitter5: TSplitter
          Left = 1
          Top = 370
          Width = 1222
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          Color = 8421631
          ParentColor = False
          Visible = False
          ExplicitTop = 217
          ExplicitWidth = 1147
        end
        object cxLabel8: TcxLabel
          Left = 1
          Top = 1
          Align = alTop
          AutoSize = False
          Caption = #1047#1072#1090#1088#1072#1090#1099' '#1085#1072' '#1044#1056' '#1073#1077#1079' '#1079#1072#1084#1077#1085#1099' '#1079'/'#1095' ('#1089' '#1087#1086#1076#1072#1095#1077#1081'/'#1091#1073#1086#1088#1082#1086#1081')'
          ParentColor = False
          ParentFont = False
          Style.Color = 12615680
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 22
          Width = 1222
          AnchorX = 612
          AnchorY = 12
        end
        object cxGrid8: TcxGrid
          Left = 1
          Top = 23
          Width = 1222
          Height = 347
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = ''
          object cxGrid8DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu6
            OnKeyPress = cxGrid4DBBandedTableView1KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
            DataController.DataSource = DS_Reps
            DataController.Summary.DefaultGroupSummaryItems = <
              item
              end
              item
                Format = 'AVG =#,##0.00'
                Kind = skAverage
                Position = spFooter
              end
              item
                Format = 'AVG =#,##0.00'
                Kind = skAverage
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
                Position = spFooter
                Column = cxGrid8DBBandedTableView1avg_sum_dr
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
                Column = cxGrid8DBBandedTableView1avg_sum_dr
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
                Position = spFooter
                Column = cxGrid8DBBandedTableView1avg_sum_pdr
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
                Column = cxGrid8DBBandedTableView1avg_sum_pdr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid8DBBandedTableView1sum_r
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid8DBBandedTableView1sum_r
              end
              item
                Format = '#0'
                Kind = skSum
                Position = spFooter
                Column = cxGrid8DBBandedTableView1rep_count
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid8DBBandedTableView1rep_count
              end
              item
                Kind = skSum
                Position = spFooter
                Column = cxGrid8DBBandedTableView1sum_avg_sum_pdr
              end
              item
                Kind = skSum
                Column = cxGrid8DBBandedTableView1sum_avg_sum_pdr
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
              end
              item
                Format = '#0'
                Kind = skSum
                Position = spFooter
                Column = cxGrid8DBBandedTableView1rep_count_pdr
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid8DBBandedTableView1rep_count_pdr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid8DBBandedTableView1sum_dr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid8DBBandedTableView1sum_dr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid8DBBandedTableView1sum_pdr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid8DBBandedTableView1sum_pdr
              end
              item
                Format = '#0'
                Kind = skSum
                Position = spFooter
                Column = cxGrid8DBBandedTableView1rep_count_dr
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid8DBBandedTableView1rep_count_dr
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'invoice_score_id'
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skSum
              end
              item
                Kind = skCount
              end
              item
                Kind = skCount
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                Kind = skAverage
              end
              item
                Kind = skCount
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                Kind = skAverage
              end
              item
                Kind = skSum
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                OnGetText = cxGrid8DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems15GetText
                Column = cxGrid8DBBandedTableView1avg_sum_dr
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                OnGetText = cxGrid8DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems16GetText
                Column = cxGrid8DBBandedTableView1avg_sum_pdr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid8DBBandedTableView1sum_r
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid8DBBandedTableView1rep_count
              end
              item
                OnGetText = cxGrid8DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems19GetText
                Column = cxGrid8DBBandedTableView1sum_avg_sum_pdr
              end
              item
                Kind = skSum
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid8DBBandedTableView1rep_count_pdr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid8DBBandedTableView1sum_dr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid8DBBandedTableView1sum_pdr
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid8DBBandedTableView1rep_count_dr
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
                  end>
                SummaryItems = <
                  item
                  end>
              end>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            DateTimeHandling.Grouping = dtgByDate
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            Preview.AutoHeight = False
            OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
            Bands = <
              item
                Caption = #1047#1072#1090#1088#1072#1090#1099' '#1085#1072' '#1044#1056' + '#1055#1086#1076#1072#1095#1072'/'#1091#1073#1086#1088#1082#1072' ('#1053#1086#1088#1084#1072' = 63000)'
              end
              item
                Caption = #1053#1086#1088#1084#1072' = 60000'
                Width = 253
              end
              item
                Caption = #1053#1086#1088#1084#1072' = 3000'
                Width = 266
              end>
            object cxGrid8DBBandedTableView1type_park_name: TcxGridDBBandedColumn
              Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
              DataBinding.FieldName = 'type_park_name'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 124
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid8DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn
              Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
              DataBinding.FieldName = 'rod_vagon_name'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 106
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid8DBBandedTableView1avg_sum_dr: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1103#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1044#1056', '#1088#1091#1073
              DataBinding.FieldName = 'avg_sum_dr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Width = 114
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid8DBBandedTableView1avg_sum_pdr: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1103#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1086#1076#1072#1095#1080'/'#1091#1073#1086#1088#1082#1080', '#1088#1091#1073
              DataBinding.FieldName = 'avg_sum_pdr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Width = 134
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid8DBBandedTableView1sum_r: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072#1088#1085#1099#1077' '#1079#1072#1090#1088#1072#1090#1099' '#1085#1072' '#1044#1056', '#1088#1091#1073
              DataBinding.FieldName = 'sum_rep'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 124
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid8DBBandedTableView1rep_count: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'rep_count_dr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid8DBBandedTableView1sum_avg_sum_pdr: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1103#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100', '#1088#1091#1073
              DataBinding.FieldName = 'sum_avg_sum_pdr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Width = 92
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid8DBBandedTableView1sum_dr: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072', '#1088#1091#1073
              DataBinding.FieldName = 'sum_dr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid8DBBandedTableView1rep_count_dr: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'rep_count_dr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid8DBBandedTableView1sum_pdr: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072', '#1088#1091#1073
              DataBinding.FieldName = 'sum_pdr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid8DBBandedTableView1rep_count_pdr: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'rep_count_pdr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGrid8Level1: TcxGridLevel
            GridView = cxGrid8DBBandedTableView1
          end
        end
        object Panel7: TPanel
          Left = 1
          Top = 373
          Width = 1222
          Height = 322
          Align = alBottom
          Caption = 'Panel3'
          TabOrder = 2
          Visible = False
          object cxLabel9: TcxLabel
            Left = 1
            Top = 1
            Align = alTop
            AutoSize = False
            Caption = #1044#1072#1085#1085#1099#1077' '#1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1080
            ParentColor = False
            ParentFont = False
            Style.Color = 12615680
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 22
            Width = 1220
            AnchorX = 611
            AnchorY = 12
          end
          object cxGrid9: TcxGrid
            Left = 1
            Top = 23
            Width = 1220
            Height = 298
            Align = alClient
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmClassic
            LookAndFeel.SkinName = ''
            object cxGrid9DBBandedTableView1: TcxGridDBBandedTableView
              PopupMenu = dxBarPopupMenu7
              OnKeyPress = cxGrid5DBBandedTableView1KeyPress
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
              DataController.DataSource = DS_info
              DataController.KeyFieldNames = 'fact_repair_table_id'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
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
                  Format = '#,#0.0'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,#0.0'
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
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn18
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGridDBBandedColumn18
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  FieldName = 'invoice_score_id'
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skCount
                end
                item
                  Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                  Kind = skAverage
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGridDBBandedColumn18
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              DateTimeHandling.Grouping = dtgByDate
              OptionsBehavior.CellHints = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.HeaderHeight = 35
              OptionsView.BandHeaders = False
              Preview.AutoHeight = False
              OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGridDBBandedColumn10: TcxGridDBBandedColumn
                Caption = #8470' '#1047#1072#1087#1080#1089#1080
                DataBinding.FieldName = 'fact_repair_table_id'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn11: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1057#1060
                DataBinding.FieldName = 'score_date'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn12: TcxGridDBBandedColumn
                Caption = #8470' '#1057#1060
                DataBinding.FieldName = 'score_cod'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn13: TcxGridDBBandedColumn
                Caption = #1044#1077#1087#1086
                DataBinding.FieldName = 'depo_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn14: TcxGridDBBandedColumn
                Caption = #1050#1083#1080#1077#1085#1090'/'#1055#1086#1076#1088#1103#1076#1095#1080#1082
                DataBinding.FieldName = 'firm_customer_name_short'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn15: TcxGridDBBandedColumn
                Caption = #8470' '#1044#1086#1075#1086#1074#1086#1088#1072
                DataBinding.FieldName = 'contract_cod'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn16: TcxGridDBBandedColumn
                Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'rod_vagon_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn17: TcxGridDBBandedColumn
                Caption = #1059#1089#1083#1091#1075#1072
                DataBinding.FieldName = 'service_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn18: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072
                DataBinding.FieldName = 'sum'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn21: TcxGridDBBandedColumn
                Caption = #8470' '#1042#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'num_vagon'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn22: TcxGridDBBandedColumn
                Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
                DataBinding.FieldName = 'type_park_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
            end
            object cxGrid9Level1: TcxGridLevel
              GridView = cxGrid9DBBandedTableView1
            end
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = '1.5 '#1047#1072#1090#1088#1072#1090#1099' '#1085#1072' '#1082#1086#1084#1084#1077#1088#1095#1077#1089#1082#1080#1077' '#1073#1088#1072#1082#1080
      ImageIndex = 4
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1224
        Height = 696
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Splitter6: TSplitter
          Left = 1
          Top = 370
          Width = 1222
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          Color = 8421631
          ParentColor = False
          Visible = False
          ExplicitTop = 217
          ExplicitWidth = 1147
        end
        object cxLabel11: TcxLabel
          Left = 1
          Top = 1
          Align = alTop
          AutoSize = False
          Caption = #1047#1072#1090#1088#1072#1090#1099' '#1085#1072' '#1082#1086#1084#1084#1077#1088#1095#1077#1089#1082#1080#1077' '#1073#1088#1072#1082#1080
          ParentColor = False
          ParentFont = False
          Style.Color = 12615680
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 22
          Width = 1222
          AnchorX = 612
          AnchorY = 12
        end
        object cxGrid10: TcxGrid
          Left = 1
          Top = 23
          Width = 1222
          Height = 347
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = ''
          object cxGrid10DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu6
            OnKeyPress = cxGrid4DBBandedTableView1KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
            DataController.DataSource = DS_Reps
            DataController.Summary.DefaultGroupSummaryItems = <
              item
              end
              item
                Format = 'AVG =#,##0.00'
                Kind = skAverage
                Position = spFooter
              end
              item
                Format = 'AVG =#,##0.00'
                Kind = skAverage
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
                Position = spFooter
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
                Position = spFooter
                Column = cxGridDBBandedColumn24
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
                Column = cxGridDBBandedColumn24
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridDBBandedColumn25
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGridDBBandedColumn25
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
              end
              item
                Format = '#0'
                Kind = skSum
                Position = spFooter
                Column = cxGrid10DBBandedTableView1rep_count
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid10DBBandedTableView1rep_count
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
                Position = spFooter
                Column = cxGrid10DBBandedTableView1avg_sum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid10DBBandedTableView1avg_sum
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'invoice_score_id'
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skSum
              end
              item
                Kind = skCount
              end
              item
                Kind = skCount
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                Kind = skAverage
              end
              item
                Kind = skCount
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                Kind = skAverage
              end
              item
                Kind = skSum
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                Kind = skAverage
              end
              item
                Kind = skCount
                Column = cxGridDBBandedColumn24
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGridDBBandedColumn25
              end
              item
                Kind = skSum
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid10DBBandedTableView1rep_count
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
                OnGetText = cxGridDBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems20GetText
                Column = cxGrid10DBBandedTableView1avg_sum
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
                  end>
                SummaryItems = <
                  item
                  end>
              end>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            DateTimeHandling.Grouping = dtgByDate
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            Preview.AutoHeight = False
            OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
            Bands = <
              item
                Width = 262
              end
              item
                Caption = #1053#1086#1088#1084#1072' = 14500'
              end>
            object cxGridDBBandedColumn20: TcxGridDBBandedColumn
              Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
              DataBinding.FieldName = 'rod_vagon_name'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 106
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn24: TcxGridDBBandedColumn
              Caption = #1057#1090'. '#1088#1077#1084#1086#1085#1090#1072
              DataBinding.FieldName = 'node_name'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Width = 134
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn25: TcxGridDBBandedColumn
              Caption = #1047#1072#1090#1088#1072#1090#1099' '#1041#1077#1079' '#1053#1044#1057', '#1088#1091#1073
              DataBinding.FieldName = 'sum'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 106
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid10DBBandedTableView1rep_count: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'rep_count'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 84
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid10DBBandedTableView1avg_sum: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1103#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100','#1088#1091#1073
              DataBinding.FieldName = 'avg_sum'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Width = 125
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGrid10Level1: TcxGridLevel
            GridView = cxGrid10DBBandedTableView1
          end
        end
        object Panel9: TPanel
          Left = 1
          Top = 373
          Width = 1222
          Height = 322
          Align = alBottom
          Caption = 'Panel3'
          TabOrder = 2
          Visible = False
          object cxLabel12: TcxLabel
            Left = 1
            Top = 1
            Align = alTop
            AutoSize = False
            Caption = #1044#1072#1085#1085#1099#1077' '#1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1080
            ParentColor = False
            ParentFont = False
            Style.Color = 12615680
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 22
            Width = 1220
            AnchorX = 611
            AnchorY = 12
          end
          object cxGrid11: TcxGrid
            Left = 1
            Top = 23
            Width = 1220
            Height = 298
            Align = alClient
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmClassic
            LookAndFeel.SkinName = ''
            object cxGrid11DBBandedTableView1: TcxGridDBBandedTableView
              PopupMenu = dxBarPopupMenu7
              OnKeyPress = cxGrid5DBBandedTableView1KeyPress
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
              DataController.DataSource = DS_info
              DataController.KeyFieldNames = 'fact_repair_table_id'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
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
                  Format = '#,#0.0'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,#0.0'
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
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn34
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGridDBBandedColumn34
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  FieldName = 'invoice_score_id'
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skCount
                end
                item
                  Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                  Kind = skAverage
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGridDBBandedColumn34
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              DateTimeHandling.Grouping = dtgByDate
              OptionsBehavior.CellHints = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.HeaderHeight = 35
              OptionsView.BandHeaders = False
              Preview.AutoHeight = False
              OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGridDBBandedColumn26: TcxGridDBBandedColumn
                Caption = #8470' '#1047#1072#1087#1080#1089#1080
                DataBinding.FieldName = 'fact_repair_table_id'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn27: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1057#1060
                DataBinding.FieldName = 'score_date'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn28: TcxGridDBBandedColumn
                Caption = #8470' '#1057#1060
                DataBinding.FieldName = 'score_cod'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn29: TcxGridDBBandedColumn
                Caption = #1044#1077#1087#1086
                DataBinding.FieldName = 'depo_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn30: TcxGridDBBandedColumn
                Caption = #1050#1083#1080#1077#1085#1090'/'#1055#1086#1076#1088#1103#1076#1095#1080#1082
                DataBinding.FieldName = 'firm_customer_name_short'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn31: TcxGridDBBandedColumn
                Caption = #8470' '#1044#1086#1075#1086#1074#1086#1088#1072
                DataBinding.FieldName = 'contract_cod'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn32: TcxGridDBBandedColumn
                Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'rod_vagon_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn33: TcxGridDBBandedColumn
                Caption = #1059#1089#1083#1091#1075#1072
                DataBinding.FieldName = 'service_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn34: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072
                DataBinding.FieldName = 'sum'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn35: TcxGridDBBandedColumn
                Caption = #8470' '#1042#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'num_vagon'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn36: TcxGridDBBandedColumn
                Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
                DataBinding.FieldName = 'type_park_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid11DBBandedTableView1node_name: TcxGridDBBandedColumn
                Caption = #1057#1090'. '#1088#1077#1084#1086#1085#1090#1072
                DataBinding.FieldName = 'node_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid11DBBandedTableView1cost_contract_cod: TcxGridDBBandedColumn
                Caption = #1044#1086#1075#1086#1074#1086#1088' '#1088#1072#1089#1093#1086#1076#1099
                DataBinding.FieldName = 'cost_contract_cod'
                HeaderAlignmentVert = vaTop
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
            end
            object cxGrid11Level1: TcxGridLevel
              GridView = cxGrid11DBBandedTableView1
            end
          end
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = '1.6 '#1047#1072#1090#1088#1072#1090#1099' '#1085#1072' '#1087#1086#1076#1075#1086#1090#1086#1074#1082#1091' '#1074#1072#1075#1086#1085#1086#1074
      ImageIndex = 5
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1224
        Height = 696
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Splitter7: TSplitter
          Left = 1
          Top = 370
          Width = 1222
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          Color = 8421631
          ParentColor = False
          Visible = False
          ExplicitTop = 217
          ExplicitWidth = 1147
        end
        object cxLabel10: TcxLabel
          Left = 1
          Top = 1
          Align = alTop
          AutoSize = False
          Caption = #1047#1072#1090#1088#1072#1090#1099' '#1085#1072' '#1087#1086#1076#1075#1086#1090#1086#1074#1082#1091' '#1074#1072#1075#1086#1085#1086#1074
          ParentColor = False
          ParentFont = False
          Style.Color = 12615680
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 22
          Width = 1222
          AnchorX = 612
          AnchorY = 12
        end
        object cxGrid12: TcxGrid
          Left = 1
          Top = 23
          Width = 1222
          Height = 347
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = ''
          object cxGrid12DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu12
            OnKeyPress = cxGrid4DBBandedTableView1KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
            DataController.DataSource = DS_Reps
            DataController.Summary.DefaultGroupSummaryItems = <
              item
              end
              item
                Format = 'AVG =#,##0.00'
                Kind = skAverage
                Position = spFooter
              end
              item
                Format = 'AVG =#,##0.00'
                Kind = skAverage
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
                Position = spFooter
                Column = cxGridDBBandedColumn38
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
                Column = cxGridDBBandedColumn38
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
                Position = spFooter
                Column = cxGridDBBandedColumn39
              end
              item
                Format = '#,##0.00'
                Kind = skAverage
                Column = cxGridDBBandedColumn39
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGridDBBandedColumn40
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGridDBBandedColumn40
              end
              item
                Format = '#0'
                Kind = skSum
                Position = spFooter
                Column = cxGridDBBandedColumn41
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGridDBBandedColumn41
              end
              item
                Kind = skSum
                Position = spFooter
                Column = cxGrid12DBBandedTableView1sum_avg_sum_pdr
              end
              item
                Kind = skSum
                Column = cxGrid12DBBandedTableView1sum_avg_sum_pdr
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid12DBBandedTableView1avg_sum_u
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid12DBBandedTableView1avg_sum_u
              end
              item
                Format = '#0'
                Kind = skSum
                Position = spFooter
                Column = cxGrid12DBBandedTableView1rep_count_dr
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid12DBBandedTableView1rep_count_dr
              end
              item
                Format = '#0'
                Kind = skSum
                Position = spFooter
                Column = cxGrid12DBBandedTableView1rep_count_pdr
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid12DBBandedTableView1rep_count_pdr
              end
              item
                Format = '#0'
                Kind = skSum
                Position = spFooter
                Column = cxGrid12DBBandedTableView1rep_count_u
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid12DBBandedTableView1rep_count_u
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid12DBBandedTableView1sum_dr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid12DBBandedTableView1sum_dr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid12DBBandedTableView1sum_pdr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid12DBBandedTableView1sum_pdr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid12DBBandedTableView1sum_u
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid12DBBandedTableView1sum_u
              end
              item
                Kind = skCount
                Position = spFooter
                Column = cxGrid12DBBandedTableView1node_name
              end
              item
                Kind = skCount
                Column = cxGrid12DBBandedTableView1node_name
              end
              item
                Kind = skCount
                Position = spFooter
                Column = cxGrid12DBBandedTableView1cost_firm_customer_name_short
              end
              item
                Kind = skCount
                Column = cxGrid12DBBandedTableView1cost_firm_customer_name_short
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'invoice_score_id'
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skSum
              end
              item
                Kind = skCount
              end
              item
                Kind = skCount
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                Kind = skAverage
              end
              item
                Kind = skCount
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                Kind = skAverage
              end
              item
                Kind = skSum
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                Kind = skAverage
                OnGetText = cxGrid10DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems15GetText
                Column = cxGridDBBandedColumn38
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                Kind = skAverage
                OnGetText = cxGrid10DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems16GetText
                Column = cxGridDBBandedColumn39
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGridDBBandedColumn40
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGridDBBandedColumn41
              end
              item
                OnGetText = cxGrid10DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems19GetText
                Column = cxGrid12DBBandedTableView1sum_avg_sum_pdr
              end
              item
                Kind = skSum
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                Kind = skSum
                OnGetText = cxGrid10DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems21GetText
                Column = cxGrid12DBBandedTableView1avg_sum_u
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid12DBBandedTableView1rep_count_dr
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid12DBBandedTableView1rep_count_pdr
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGrid12DBBandedTableView1rep_count_u
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid12DBBandedTableView1sum_dr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid12DBBandedTableView1sum_pdr
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid12DBBandedTableView1sum_u
              end
              item
                Kind = skCount
                Column = cxGrid12DBBandedTableView1node_name
              end
              item
                Kind = skCount
                Column = cxGrid12DBBandedTableView1cost_firm_customer_name_short
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
                  end>
                SummaryItems = <
                  item
                  end>
              end>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            DateTimeHandling.Grouping = dtgByDate
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsCustomize.BandMoving = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            Preview.AutoHeight = False
            OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
            Bands = <
              item
                Caption = #1047#1072#1090#1088#1072#1090#1099' '#1085#1072' '#1087#1086#1076#1075#1086#1090#1086#1074#1082#1091' + '#1055#1086#1076#1072#1095#1072'/'#1091#1073#1086#1088#1082#1072' + '#1055#1088#1086#1095#1080#1077' '#1091#1089#1083#1091#1075#1080
                Width = 462
              end
              item
                Caption = #1053#1086#1088#1084#1072'=10000'
                Width = 337
              end
              item
                Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1082#1072
                Width = 310
              end
              item
                Caption = #1055#1086#1076#1072#1095#1072'/'#1059#1073#1086#1088#1082#1072
                Width = 310
              end
              item
                Caption = #1055#1088#1086#1095#1080#1077' '#1091#1089#1083#1091#1075#1080
                Width = 310
              end>
            object cxGridDBBandedColumn38: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1103#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1086#1076#1075#1086#1090#1086#1074#1082#1080', '#1088#1091#1073
              DataBinding.FieldName = 'avg_sum_dr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Width = 166
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn39: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1103#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1086#1076#1072#1095#1080'/'#1091#1073#1086#1088#1082#1080', '#1088#1091#1073
              DataBinding.FieldName = 'avg_sum_pdr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Width = 160
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn40: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072#1088#1085#1099#1077' '#1079#1072#1090#1088#1072#1090#1099', '#1088#1091#1073
              DataBinding.FieldName = 'sum_rep'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 101
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn41: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'rep_count_dr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DecimalPlaces = 0
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 116
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid12DBBandedTableView1sum_avg_sum_pdr: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1103#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100', '#1088#1091#1073
              DataBinding.FieldName = 'sum_avg_sum_pdr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Width = 119
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid12DBBandedTableView1node_name: TcxGridDBBandedColumn
              Caption = #1057#1090'. '#1055#1086#1076#1075#1086#1090#1086#1074#1082#1080
              DataBinding.FieldName = 'node_name'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Width = 145
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid12DBBandedTableView1avg_sum_u: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1103#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1088#1086#1095#1080#1093' '#1091#1089#1083#1091#1075', '#1088#1091#1073
              DataBinding.FieldName = 'avg_sum_u'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Width = 102
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid12DBBandedTableView1rep_count_dr: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'rep_count_dr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 61
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid12DBBandedTableView1rep_count_pdr: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'rep_count_pdr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid12DBBandedTableView1rep_count_u: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'rep_count_u'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 45
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid12DBBandedTableView1sum_dr: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072','#1088#1091#1073
              DataBinding.FieldName = 'sum_dr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 82
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid12DBBandedTableView1sum_pdr: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072','#1088#1091#1073
              DataBinding.FieldName = 'sum_pdr'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 79
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid12DBBandedTableView1sum_u: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072','#1088#1091#1073
              DataBinding.FieldName = 'sum_u'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 53
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid12DBBandedTableView1cost_firm_customer_name_short: TcxGridDBBandedColumn
              Caption = #1047#1072#1090#1088#1072#1090#1099' '#1087#1086' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1091
              DataBinding.FieldName = 'cost_firm_customer_name_short'
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Width = 127
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGrid12Level1: TcxGridLevel
            GridView = cxGrid12DBBandedTableView1
          end
        end
        object Panel11: TPanel
          Left = 1
          Top = 373
          Width = 1222
          Height = 322
          Align = alBottom
          Caption = 'Panel3'
          TabOrder = 2
          Visible = False
          object cxLabel13: TcxLabel
            Left = 1
            Top = 1
            Align = alTop
            AutoSize = False
            Caption = #1044#1072#1085#1085#1099#1077' '#1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1080
            ParentColor = False
            ParentFont = False
            Style.Color = 12615680
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 22
            Width = 1220
            AnchorX = 611
            AnchorY = 12
          end
          object cxGrid13: TcxGrid
            Left = 1
            Top = 23
            Width = 1220
            Height = 298
            Align = alClient
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmClassic
            LookAndFeel.SkinName = ''
            object cxGrid13DBBandedTableView1: TcxGridDBBandedTableView
              PopupMenu = dxBarPopupMenu13
              OnKeyPress = cxGrid5DBBandedTableView1KeyPress
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
              DataController.DataSource = DS_info
              DataController.KeyFieldNames = 'fact_repair_table_id'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
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
                  Format = '#,#0.0'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,#0.0'
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
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn50
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGridDBBandedColumn50
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  FieldName = 'invoice_score_id'
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skCount
                end
                item
                  Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                  Kind = skAverage
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGridDBBandedColumn50
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              DateTimeHandling.Grouping = dtgByDate
              OptionsBehavior.CellHints = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.HeaderHeight = 35
              OptionsView.BandHeaders = False
              Preview.AutoHeight = False
              OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGridDBBandedColumn42: TcxGridDBBandedColumn
                Caption = #8470' '#1047#1072#1087#1080#1089#1080
                DataBinding.FieldName = 'fact_repair_table_id'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn43: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1057#1060
                DataBinding.FieldName = 'score_date'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn44: TcxGridDBBandedColumn
                Caption = #8470' '#1057#1060
                DataBinding.FieldName = 'score_cod'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn45: TcxGridDBBandedColumn
                Caption = #1044#1077#1087#1086
                DataBinding.FieldName = 'depo_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn46: TcxGridDBBandedColumn
                Caption = #1050#1083#1080#1077#1085#1090'/'#1055#1086#1076#1088#1103#1076#1095#1080#1082
                DataBinding.FieldName = 'firm_customer_name_short'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn47: TcxGridDBBandedColumn
                Caption = #8470' '#1044#1086#1075#1086#1074#1086#1088#1072
                DataBinding.FieldName = 'contract_cod'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn48: TcxGridDBBandedColumn
                Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'rod_vagon_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn49: TcxGridDBBandedColumn
                Caption = #1059#1089#1083#1091#1075#1072
                DataBinding.FieldName = 'service_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn50: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072
                DataBinding.FieldName = 'sum'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn51: TcxGridDBBandedColumn
                Caption = #8470' '#1042#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'num_vagon'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn52: TcxGridDBBandedColumn
                Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
                DataBinding.FieldName = 'type_park_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid13DBBandedTableView1node_name: TcxGridDBBandedColumn
                Caption = #1057#1090'. '#1088#1077#1084#1086#1085#1090#1072
                DataBinding.FieldName = 'node_name'
                HeaderAlignmentVert = vaTop
                Width = 78
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid13DBBandedTableView1cost_firm_customer_name_short: TcxGridDBBandedColumn
                Caption = #1047#1072#1090#1088#1072#1090#1099' '#1087#1086' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1091
                DataBinding.FieldName = 'cost_firm_customer_name_short'
                HeaderAlignmentVert = vaTop
                Width = 90
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGrid13DBBandedTableView1cost_contract_cod: TcxGridDBBandedColumn
                Caption = #8470' '#1044#1086#1075#1086#1074#1086#1088#1072' '#1079#1072#1090#1088#1072#1090
                DataBinding.FieldName = 'cost_contract_cod'
                HeaderAlignmentVert = vaTop
                Width = 90
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
            end
            object cxGrid13Level1: TcxGridLevel
              GridView = cxGrid13DBBandedTableView1
            end
          end
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = '1.7 '#1057#1088#1077#1076#1085#1080#1081' '#1087#1088#1086#1089#1090#1086#1081' '#1074' '#1044#1056
      ImageIndex = 6
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 1224
        Height = 696
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Splitter8: TSplitter
          Left = 1
          Top = 370
          Width = 1222
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          Color = 8421631
          ParentColor = False
          Visible = False
          ExplicitTop = 217
          ExplicitWidth = 1147
        end
        object cxLabel14: TcxLabel
          Left = 1
          Top = 1
          Align = alTop
          AutoSize = False
          Caption = #1057#1088#1077#1076#1085#1080#1081' '#1087#1088#1086#1089#1090#1086#1081' '#1074' '#1044#1056
          ParentColor = False
          ParentFont = False
          Style.Color = 12615680
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 22
          Width = 1222
          AnchorX = 612
          AnchorY = 12
        end
        object cxGrid16: TcxGrid
          Left = 1
          Top = 23
          Width = 1222
          Height = 347
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = ''
          object cxGrid16DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu16
            OnKeyPress = cxGrid4DBBandedTableView1KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
            DataController.DataSource = DS_Reps
            DataController.KeyFieldNames = 'rod_vagon_name;node_operation_name'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
              end
              item
                Format = 'AVG =#,#0.0'
                Kind = skAverage
                Position = spFooter
                Column = cxGrid16DBBandedavg_rep
              end
              item
                Format = 'AVG =#,#0.0'
                Kind = skAverage
                Column = cxGrid16DBBandedavg_rep
              end
              item
                Format = '#0'
                Position = spFooter
                Column = cxGridDBBandedColumn37
              end
              item
                Format = '#0'
                Column = cxGridDBBandedColumn37
              end
              item
                Kind = skSum
                Position = spFooter
                Column = cxGridDBBandedColumn53
              end
              item
                Kind = skSum
                Column = cxGridDBBandedColumn53
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'invoice_score_id'
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skSum
              end
              item
                Kind = skCount
              end
              item
                Kind = skCount
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                Kind = skAverage
              end
              item
                Kind = skCount
              end
              item
                Kind = skSum
              end
              item
                Format = '#0'
                Kind = skSum
                Column = cxGridDBBandedColumn37
              end
              item
                Format = '#,#0.0'
                Kind = skSum
                Column = cxGridDBBandedColumn53
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                OnGetText = cxGrid16DBBandedTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems13GetText
                Column = cxGrid16DBBandedavg_rep
              end
              item
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <
              item
                Links = <
                  item
                    Column = cxGridDBBandedColumn19
                  end
                  item
                    Column = cxGridDBBandedColumn37
                  end
                  item
                    Column = cxGridDBBandedColumn53
                  end
                  item
                    Column = cxGrid16DBBandedavg_rep
                  end
                  item
                  end>
                SummaryItems = <
                  item
                  end>
              end>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            DateTimeHandling.Grouping = dtgByDate
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            Preview.AutoHeight = False
            OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
            Bands = <
              item
              end>
            object cxGridDBBandedColumn19: TcxGridDBBandedColumn
              Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
              DataBinding.FieldName = 'rod_vagon_name'
              HeaderAlignmentVert = vaTop
              MinWidth = 80
              Width = 120
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn23: TcxGridDBBandedColumn
              Caption = #1057#1090#1072#1085#1094#1080#1103' '#1088#1077#1084#1086#1085#1090#1072
              DataBinding.FieldName = 'node_operation_name'
              HeaderAlignmentVert = vaTop
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn37: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086' '#1088#1077#1084#1086#1085#1090#1086#1074', '#1096#1090
              DataBinding.FieldName = 'rep_count'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              HeaderAlignmentVert = vaTop
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn53: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072#1088#1085#1099#1081' '#1087#1088#1086#1089#1090#1086#1081', '#1089#1091#1090
              DataBinding.FieldName = 'sum_rep'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,#0.0'
              HeaderAlignmentVert = vaTop
              MinWidth = 80
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid16DBBandedavg_rep: TcxGridDBBandedColumn
              Caption = #1057#1088#1077#1076#1085#1080#1081' '#1087#1088#1086#1089#1090#1086#1081', '#1089#1091#1090'. ('#1053#1086#1088#1084#1072' = 8) '
              DataBinding.FieldName = 'avg_rep'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,#0.0'
              HeaderAlignmentVert = vaTop
              MinWidth = 80
              Width = 107
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
          object cxGrid16Level1: TcxGridLevel
            GridView = cxGrid16DBBandedTableView1
          end
        end
        object Panel13: TPanel
          Left = 1
          Top = 373
          Width = 1222
          Height = 322
          Align = alBottom
          Caption = 'Panel3'
          TabOrder = 2
          Visible = False
          object cxLabel15: TcxLabel
            Left = 1
            Top = 1
            Align = alTop
            AutoSize = False
            Caption = #1044#1072#1085#1085#1099#1077' '#1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1080
            ParentColor = False
            ParentFont = False
            Style.Color = 12615680
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 22
            Width = 1220
            AnchorX = 611
            AnchorY = 12
          end
          object cxGrid17: TcxGrid
            Left = 1
            Top = 23
            Width = 1220
            Height = 298
            Align = alClient
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmClassic
            LookAndFeel.SkinName = ''
            object cxGrid17DBBandedTableView1: TcxGridDBBandedTableView
              PopupMenu = dxBarPopupMenu7_1
              OnKeyPress = cxGrid5DBBandedTableView1KeyPress
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
              DataController.DataSource = DS_info
              DataController.KeyFieldNames = 'num_vagon;com3_date_repair_end'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
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
                  Format = '#,#0.0'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,#0.0'
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
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  FieldName = 'invoice_score_id'
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skCount
                end
                item
                  Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                  Kind = skAverage
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              DateTimeHandling.Grouping = dtgByDate
              OptionsBehavior.CellHints = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.HeaderHeight = 35
              OptionsView.BandHeaders = False
              Preview.AutoHeight = False
              OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGridDBBandedColumn56: TcxGridDBBandedColumn
                Caption = #1057#1090#1072#1085#1094#1080#1103' '#1088#1077#1084#1086#1085#1090#1072
                DataBinding.FieldName = 'node_operation_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn57: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080
                DataBinding.FieldName = 'date_in'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn58: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073'. '#1085#1072' '#1089#1090#1072#1085#1094#1080#1102' '#1088#1077#1084#1086#1085#1090#1072
                DataBinding.FieldName = 'disl_date_begin'
                HeaderAlignmentVert = vaTop
                Width = 106
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn59: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1091#1073#1086#1088#1082#1080
                DataBinding.FieldName = 'date_out'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn60: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1044#1056
                DataBinding.FieldName = 'com3_date_repair_end'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn61: TcxGridDBBandedColumn
                Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'rod_vagon_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn62: TcxGridDBBandedColumn
                Caption = #1055#1088#1086#1089#1090#1086#1081
                DataBinding.FieldName = 'count'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn64: TcxGridDBBandedColumn
                Caption = #8470' '#1042#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'num_vagon'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
            end
            object cxGrid17Level1: TcxGridLevel
              GridView = cxGrid17DBBandedTableView1
            end
          end
        end
      end
    end
    object TabSheet10: TTabSheet
      Caption = '1.8 '#1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1085#1099#1093' '#1044#1056','#1050#1056
      ImageIndex = 7
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 1224
        Height = 696
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Splitter9: TSplitter
          Left = 1
          Top = 370
          Width = 1222
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          Color = 8421631
          ParentColor = False
          Visible = False
          ExplicitTop = 217
          ExplicitWidth = 1147
        end
        object Splitter10: TSplitter
          Left = 591
          Top = 1
          Height = 369
          Align = alRight
          Color = 8421631
          ParentColor = False
          ExplicitLeft = 9
          ExplicitTop = 9
          ExplicitHeight = 336
        end
        object Panel15: TPanel
          Left = 1
          Top = 373
          Width = 1222
          Height = 322
          Align = alBottom
          Caption = 'Panel3'
          TabOrder = 0
          Visible = False
          object cxLabel17: TcxLabel
            Left = 1
            Top = 1
            Align = alTop
            AutoSize = False
            Caption = #1044#1072#1085#1085#1099#1077' '#1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1080
            ParentColor = False
            ParentFont = False
            Style.Color = 12615680
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 22
            Width = 1220
            AnchorX = 611
            AnchorY = 12
          end
          object cxGrid19: TcxGrid
            Left = 1
            Top = 23
            Width = 1220
            Height = 298
            Align = alClient
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmClassic
            LookAndFeel.SkinName = ''
            object cxGrid19DBBandedTableView1: TcxGridDBBandedTableView
              PopupMenu = dxBarPopupMenu19
              OnKeyPress = cxGrid19DBBandedTableView1KeyPress
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
              DataController.DataSource = DS_info
              DataController.KeyFieldNames = 'num_vagon;com3_date_repair_end'
              DataController.MasterKeyFieldNames = 'num_vagon;com3_date_repair_end'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
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
                  Format = '#,#0.0'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,#0.0'
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
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skCount
                  Position = spFooter
                  Column = cxGrid19DBBandedTableView1num_vagon
                end
                item
                  Kind = skCount
                  Column = cxGrid19DBBandedTableView1num_vagon
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  FieldName = 'invoice_score_id'
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skCount
                end
                item
                  Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                  Kind = skAverage
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skCount
                  Column = cxGrid19DBBandedTableView1num_vagon
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              DateTimeHandling.Grouping = dtgByDate
              OptionsBehavior.CellHints = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.HeaderHeight = 35
              OptionsView.BandHeaders = False
              Preview.AutoHeight = False
              OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGrid19DBBandedTableView1num_vagon: TcxGridDBBandedColumn
                Caption = #8470' '#1042#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'num_vagon'
                HeaderAlignmentVert = vaTop
                Width = 97
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid19DBBandedTableView1com3_date_repair_end: TcxGridDBBandedColumn
                Caption = #1050#1086#1084#1084'. '#8470'3'
                DataBinding.FieldName = 'com3_date_repair_end'
                HeaderAlignmentVert = vaTop
                Width = 102
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid19DBBandedTableView1comment5: TcxGridDBBandedColumn
                Caption = #1050#1086#1084#1084'. '#8470'5'
                DataBinding.FieldName = 'comment5'
                HeaderAlignmentVert = vaTop
                Width = 95
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid19DBBandedTableView1node_operation_name: TcxGridDBBandedColumn
                Caption = #1057#1090#1072#1085#1094#1080#1103' '#1088#1077#1084#1086#1085#1090#1072
                DataBinding.FieldName = 'node_operation_name'
                HeaderAlignmentVert = vaTop
                Width = 105
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid19DBBandedTableView1depo_name: TcxGridDBBandedColumn
                Caption = #1042#1063#1044#1088
                DataBinding.FieldName = 'depo_name'
                HeaderAlignmentVert = vaTop
                Width = 116
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid19DBBandedTableView1firm_depo_name: TcxGridDBBandedColumn
                Caption = #1042#1056#1055
                DataBinding.FieldName = 'firm_depo_name'
                HeaderAlignmentVert = vaTop
                Width = 151
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid19DBBandedTableView1date_period: TcxGridDBBandedColumn
                Caption = #1055#1077#1088#1080#1086#1076
                DataBinding.FieldName = 'date_period'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'mm.yyyy'
                HeaderAlignmentVert = vaTop
                Width = 85
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid19DBBandedTableView1type_park_name: TcxGridDBBandedColumn
                Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
                DataBinding.FieldName = 'type_park_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid19DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
                Caption = #1042#1083#1072#1076#1077#1083#1077#1094
                DataBinding.FieldName = 'firm_customer_name'
                HeaderAlignmentVert = vaTop
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid19DBBandedTableView1doc_number_emty: TcxGridDBBandedColumn
                Caption = #8470' '#1053#1072#1082#1083#1072#1076#1085#1086#1081' ('#1087#1086#1088#1086#1078'.)'
                DataBinding.FieldName = 'doc_number_emty'
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
            end
            object cxGrid19Level1: TcxGridLevel
              GridView = cxGrid19DBBandedTableView1
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 594
          Top = 1
          Width = 629
          Height = 369
          Align = alRight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object cxGrid20: TcxGrid
            Left = 2
            Top = 37
            Width = 625
            Height = 330
            Align = alClient
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmClassic
            LookAndFeel.SkinName = ''
            object cxGrid20DBBandedTableView1: TcxGridDBBandedTableView
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
              DataController.DataSource = DS_Info2
              DataController.KeyFieldNames = 'type_park_name;firm_customer_name'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                end
                item
                  Format = 'AVG =#,#0.0'
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Format = 'AVG =#,#0.0'
                  Kind = skAverage
                end
                item
                  Format = '#0'
                  Position = spFooter
                end
                item
                  Format = '#0'
                end
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn63
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn65
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn66
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn67
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn68
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn69
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn70
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn71
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn72
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn73
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn74
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn75
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn63
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn65
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn66
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn67
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn68
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn69
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn70
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn71
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn72
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn73
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn74
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn75
                end
                item
                  Kind = skCount
                  Position = spFooter
                  Column = cxGridDBBandedColumn77
                end
                item
                  Kind = skCount
                  Column = cxGridDBBandedColumn77
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGridDBBandedColumn78
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn78
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  FieldName = 'invoice_score_id'
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skCount
                end
                item
                  Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                  Kind = skAverage
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skSum
                end
                item
                  Format = '#0'
                  Kind = skSum
                end
                item
                  Format = '#,#0.0'
                  Kind = skSum
                end
                item
                  Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn63
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn65
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn66
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn67
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn68
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn69
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn70
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn71
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn72
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn73
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn74
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn75
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skCount
                  Column = cxGridDBBandedColumn77
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedColumn78
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
                    end>
                  SummaryItems = <
                    item
                    end>
                end>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              DateTimeHandling.Grouping = dtgByDate
              OptionsBehavior.CellHints = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.HeaderHeight = 35
              OptionsView.BandHeaders = False
              Preview.AutoHeight = False
              OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGridDBBandedColumn63: TcxGridDBBandedColumn
                Caption = #1103#1085#1074#1072#1088#1100
                DataBinding.FieldName = 'm1'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn65: TcxGridDBBandedColumn
                Caption = #1092#1077#1074#1088#1072#1083#1100
                DataBinding.FieldName = 'm2'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn66: TcxGridDBBandedColumn
                Caption = #1084#1072#1088#1090
                DataBinding.FieldName = 'm3'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn67: TcxGridDBBandedColumn
                Caption = #1072#1087#1088#1077#1083#1100
                DataBinding.FieldName = 'm4'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn68: TcxGridDBBandedColumn
                Caption = #1084#1072#1081
                DataBinding.FieldName = 'm5'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn69: TcxGridDBBandedColumn
                Caption = #1080#1102#1085#1100
                DataBinding.FieldName = 'm6'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn70: TcxGridDBBandedColumn
                Caption = #1080#1102#1083#1100
                DataBinding.FieldName = 'm7'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn71: TcxGridDBBandedColumn
                Caption = #1072#1074#1075#1091#1089#1090
                DataBinding.FieldName = 'm8'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn72: TcxGridDBBandedColumn
                Caption = #1089#1077#1085#1090#1103#1073#1088#1100
                DataBinding.FieldName = 'm9'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn73: TcxGridDBBandedColumn
                Caption = #1086#1082#1090#1103#1073#1088#1100
                DataBinding.FieldName = 'm10'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn74: TcxGridDBBandedColumn
                Caption = #1085#1086#1103#1073#1088#1100
                DataBinding.FieldName = 'm11'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn75: TcxGridDBBandedColumn
                Caption = #1048#1090#1086#1075#1086
                DataBinding.FieldName = 'rep_count'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Styles.Content = fmMain.cxStyle_Sum_USD
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn76: TcxGridDBBandedColumn
                Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
                DataBinding.FieldName = 'type_park_name'
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_Agree_bargain_cod
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn77: TcxGridDBBandedColumn
                Caption = #1042#1083#1072#1076#1077#1083#1077#1094
                DataBinding.FieldName = 'firm_customer_name'
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_Agree_bargain_cod
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn78: TcxGridDBBandedColumn
                Caption = #1076#1077#1082#1072#1073#1088#1100
                DataBinding.FieldName = 'm12'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.AssignedValues.DisplayFormat = True
                HeaderAlignmentVert = vaTop
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
            end
            object cxGrid20Level1: TcxGridLevel
              GridView = cxGrid20DBBandedTableView1
            end
          end
          object cxLabel18: TcxLabel
            Left = 2
            Top = 15
            Align = alTop
            AutoSize = False
            Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1085#1099#1093' '#1044#1050', '#1050#1056' '#1087#1086' '#1074#1083#1072#1076#1077#1083#1100#1094#1072#1084' '#1079#1072' '#1075#1086#1076
            ParentColor = False
            ParentFont = False
            Style.Color = 12615680
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 22
            Width = 625
            AnchorX = 315
            AnchorY = 26
          end
        end
        object GroupBox3: TGroupBox
          Left = 1
          Top = 1
          Width = 590
          Height = 369
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object cxGrid18: TcxGrid
            Left = 2
            Top = 37
            Width = 586
            Height = 330
            Align = alClient
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmClassic
            LookAndFeel.SkinName = ''
            object cxGrid18DBBandedTableView1: TcxGridDBBandedTableView
              PopupMenu = dxBarPopupMenu18
              OnKeyPress = cxGrid4DBBandedTableView1KeyPress
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
              DataController.DataSource = DS_Reps
              DataController.KeyFieldNames = 'firm_depo_name;depo_name'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                end
                item
                  Format = 'AVG =#,#0.0'
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Format = 'AVG =#,#0.0'
                  Kind = skAverage
                end
                item
                  Format = '#0'
                  Position = spFooter
                end
                item
                  Format = '#0'
                end
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid18DBBandedTableView1m1
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid18DBBandedTableView1m2
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid18DBBandedTableView1m3
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid18DBBandedTableView1m4
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid18DBBandedTableView1m5
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid18DBBandedTableView1m6
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid18DBBandedTableView1m8
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid18DBBandedTableView1m9
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid18DBBandedTableView1m10
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid18DBBandedTableView1m11
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid18DBBandedTableView1m12
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid18DBBandedTableView1rep_count
                end
                item
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m1
                end
                item
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m2
                end
                item
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m3
                end
                item
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m4
                end
                item
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m5
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m6
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m8
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m9
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m10
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m11
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m12
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1rep_count
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid18DBBandedTableView1m7
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m7
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  FieldName = 'invoice_score_id'
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skCount
                end
                item
                  Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                  Kind = skAverage
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skSum
                end
                item
                  Format = '#0'
                  Kind = skSum
                end
                item
                  Format = '#,#0.0'
                  Kind = skSum
                end
                item
                  Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                end
                item
                  Kind = skSum
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m1
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m2
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m3
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m4
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m5
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m6
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m8
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m9
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m10
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m11
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m12
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1rep_count
                end
                item
                  Kind = skCount
                  Column = cxGrid18DBBandedTableView1firm_depo_name
                end
                item
                  Format = '#0'
                  Kind = skSum
                  Column = cxGrid18DBBandedTableView1m7
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
                    end>
                  SummaryItems = <
                    item
                    end>
                end>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              DateTimeHandling.Grouping = dtgByDate
              OptionsBehavior.CellHints = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.HeaderHeight = 35
              OptionsView.BandHeaders = False
              Preview.AutoHeight = False
              OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGrid18DBBandedTableView1firm_depo_name: TcxGridDBBandedColumn
                Caption = #1042#1056#1055
                DataBinding.FieldName = 'firm_depo_name'
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_Agree_bargain_cod
                Width = 97
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1depo_name: TcxGridDBBandedColumn
                Caption = #1042#1063#1044#1088
                DataBinding.FieldName = 'depo_name'
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_Agree_bargain_cod
                Width = 135
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1m1: TcxGridDBBandedColumn
                Caption = #1103#1085#1074#1072#1088#1100
                DataBinding.FieldName = 'm1'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 44
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1m2: TcxGridDBBandedColumn
                Caption = #1092#1077#1074#1088#1072#1083#1100
                DataBinding.FieldName = 'm2'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 57
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1m3: TcxGridDBBandedColumn
                Caption = #1084#1072#1088#1090
                DataBinding.FieldName = 'm3'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 45
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1m4: TcxGridDBBandedColumn
                Caption = #1072#1087#1088#1077#1083#1100
                DataBinding.FieldName = 'm4'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 45
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1m5: TcxGridDBBandedColumn
                Caption = #1084#1072#1081
                DataBinding.FieldName = 'm5'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 33
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1m6: TcxGridDBBandedColumn
                Caption = #1080#1102#1085#1100
                DataBinding.FieldName = 'm6'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 37
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1m7: TcxGridDBBandedColumn
                Caption = #1080#1102#1083#1100
                DataBinding.FieldName = 'm7'
                HeaderAlignmentVert = vaTop
                Width = 37
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1m8: TcxGridDBBandedColumn
                Caption = #1072#1074#1075#1091#1089#1090
                DataBinding.FieldName = 'm8'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 39
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1m9: TcxGridDBBandedColumn
                Caption = #1089#1077#1085#1090#1103#1073#1088#1100
                DataBinding.FieldName = 'm9'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 45
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1m10: TcxGridDBBandedColumn
                Caption = #1086#1082#1090#1103#1073#1088#1100
                DataBinding.FieldName = 'm10'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 52
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1m11: TcxGridDBBandedColumn
                Caption = #1085#1086#1103#1073#1088#1100
                DataBinding.FieldName = 'm11'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 48
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1m12: TcxGridDBBandedColumn
                Caption = #1076#1077#1082#1072#1073#1088#1100
                DataBinding.FieldName = 'm12'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Width = 49
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxGrid18DBBandedTableView1rep_count: TcxGridDBBandedColumn
                Caption = #1048#1090#1086#1075#1086
                DataBinding.FieldName = 'rep_count'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.DisplayFormat = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentVert = vaTop
                HeaderGlyphAlignmentHorz = taCenter
                Styles.Content = fmMain.cxStyle_Sum_USD
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
            end
            object cxGrid18Level1: TcxGridLevel
              GridView = cxGrid18DBBandedTableView1
            end
          end
          object cxLabel16: TcxLabel
            Left = 2
            Top = 15
            Align = alTop
            AutoSize = False
            Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1085#1099#1093' '#1044#1050', '#1050#1056' '#1087#1086' '#1042#1063#1044#1088' '#1079#1072' '#1075#1086#1076
            ParentColor = False
            ParentFont = False
            Style.Color = 12615680
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 22
            Width = 586
            AnchorX = 295
            AnchorY = 26
          end
        end
      end
    end
    object TabSheet11: TTabSheet
      Caption = '1.9 '#1042#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1077
      ImageIndex = 8
      object Panel16: TPanel
        Left = 0
        Top = 0
        Width = 1224
        Height = 696
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Splitter11: TSplitter
          Left = 1
          Top = 370
          Width = 1222
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          Color = 8421631
          ParentColor = False
          Visible = False
          ExplicitTop = 217
          ExplicitWidth = 1147
        end
        object cxLabel19: TcxLabel
          Left = 1
          Top = 1
          Align = alTop
          AutoSize = False
          Caption = #1042#1086#1079#1085#1072#1075#1088#1072#1078#1076#1077#1085#1080#1077' '#1079#1072' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1102' '#1088#1077#1084#1086#1085#1090#1086#1074
          ParentColor = False
          ParentFont = False
          Style.Color = 12615680
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 22
          Width = 1222
          AnchorX = 612
          AnchorY = 12
        end
        object cxGrid21: TcxGrid
          Left = 1
          Top = 23
          Width = 1222
          Height = 347
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = ''
          object cxGrid21DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu21
            OnKeyPress = cxGrid4DBBandedTableView1KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
            DataController.DataSource = DS_Reps
            DataController.KeyFieldNames = 'cost_firm_customer_name_short'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
              end
              item
                Format = 'AVG =#,#0.0'
                Kind = skAverage
                Position = spFooter
              end
              item
                Format = 'AVG =#,#0.0'
                Kind = skAverage
              end
              item
                Format = '#0'
                Position = spFooter
              end
              item
                Format = '#0'
              end
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1sum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1comis
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1delta
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1sum1
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1comis1
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1sum2
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1comis2
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1sum3
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1comis3
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1sum4
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1comis4
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1sum5
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1comis5
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1sum6
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Position = spFooter
                Column = cxGrid21DBBandedTableView1comis6
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1delta
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum1
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis1
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum2
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis2
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum3
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis3
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum4
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis4
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum5
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis5
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum6
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis6
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                FieldName = 'invoice_score_id'
              end
              item
                Format = '#,##0.00'
                Kind = skSum
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skAverage
              end
              item
                Kind = skSum
              end
              item
                Kind = skCount
              end
              item
                Kind = skCount
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                Kind = skAverage
              end
              item
                Kind = skCount
              end
              item
                Kind = skSum
              end
              item
                Format = '#0'
                Kind = skSum
              end
              item
                Format = '#,#0.0'
                Kind = skSum
              end
              item
                Format = #1089#1088#1077#1076#1085'.=#,#0.0'
              end
              item
                Kind = skSum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1delta
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum1
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis1
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum2
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis2
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum3
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis3
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum4
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis4
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum5
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis5
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1sum6
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid21DBBandedTableView1comis6
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
                  end>
                SummaryItems = <
                  item
                  end>
              end>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            DateTimeHandling.Grouping = dtgByDate
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            Preview.AutoHeight = False
            OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
            Bands = <
              item
              end
              item
                Caption = #1044#1077#1087#1086#1074#1089#1082#1086#1081' '#1088#1077#1084#1086#1085#1090' '
              end
              item
                Caption = #1058#1077#1082#1091#1097#1080#1081' '#1088#1077#1084#1086#1085#1090
              end
              item
                Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1082#1072' '#1087#1086#1076' '#1076#1077#1087'. '#1088#1077#1084#1086#1085#1090' '
              end
              item
                Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1082#1072' '#1087#1086#1076' '#1087#1086#1075#1088#1091#1079#1082#1091
              end
              item
                Caption = #1061#1088#1072#1085#1077#1085#1080#1077' '#1047#1063
              end
              item
                Caption = #1055#1088#1086#1095#1080#1077' '#1091#1089#1083#1091#1075#1080' '
              end>
            object cxGrid21DBBandedTableView1sum1: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1091#1089#1083#1091#1075
              DataBinding.FieldName = 'sum1'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis1: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1074#1086#1079#1085'.'
              DataBinding.FieldName = 'comis1'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis_pct1: TcxGridDBBandedColumn
              Caption = '%'
              DataBinding.FieldName = 'comis_pct1'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 20
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1sum2: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1091#1089#1083#1091#1075
              DataBinding.FieldName = 'sum2'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis2: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1074#1086#1079#1085'.'
              DataBinding.FieldName = 'comis2'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis_pct2: TcxGridDBBandedColumn
              Caption = '%'
              DataBinding.FieldName = 'comis_pct2'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 20
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1sum3: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1091#1089#1083#1091#1075
              DataBinding.FieldName = 'sum3'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis3: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1074#1086#1079#1085'.'
              DataBinding.FieldName = 'comis3'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis_pct3: TcxGridDBBandedColumn
              Caption = '%'
              DataBinding.FieldName = 'comis_pct3'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 20
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1sum4: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1091#1089#1083#1091#1075
              DataBinding.FieldName = 'sum4'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis4: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1074#1086#1079#1085'.'
              DataBinding.FieldName = 'comis4'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis_pct4: TcxGridDBBandedColumn
              Caption = '%'
              DataBinding.FieldName = 'comis_pct4'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 20
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1sum5: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1091#1089#1083#1091#1075
              DataBinding.FieldName = 'sum5'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis5: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1074#1086#1079#1085'.'
              DataBinding.FieldName = 'comis5'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis_pct5: TcxGridDBBandedColumn
              Caption = '%'
              DataBinding.FieldName = 'comis_pct5'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 20
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1sum6: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1091#1089#1083#1091#1075
              DataBinding.FieldName = 'sum6'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis6: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1074#1086#1079#1085'.'
              DataBinding.FieldName = 'comis6'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 70
              Position.BandIndex = 6
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis_pct6: TcxGridDBBandedColumn
              Caption = '%'
              DataBinding.FieldName = 'comis_pct6'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 20
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1sum: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1091#1089#1083#1091#1075
              DataBinding.FieldName = 'sum'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Agree_bargain_cod
              Width = 75
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1074#1086#1079#1085'.'
              DataBinding.FieldName = 'comis'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#,##0.00'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Agree_bargain_cod
              Width = 75
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1comis_pct: TcxGridDBBandedColumn
              Caption = '%'
              DataBinding.FieldName = 'comis_pct'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = '#0'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentVert = vaTop
              Width = 20
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1delta: TcxGridDBBandedColumn
              Caption = '*'
              DataBinding.FieldName = 'delta'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              HeaderAlignmentVert = vaTop
              Width = 20
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid21DBBandedTableView1cost_firm_customer_name_short: TcxGridDBBandedColumn
              Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
              DataBinding.FieldName = 'cost_firm_customer_name_short'
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Agree_bargain_cod
              Width = 158
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
          end
          object cxGrid21Level1: TcxGridLevel
            GridView = cxGrid21DBBandedTableView1
          end
        end
        object Panel17: TPanel
          Left = 1
          Top = 373
          Width = 1222
          Height = 322
          Align = alBottom
          Caption = 'Panel3'
          TabOrder = 2
          Visible = False
          object cxLabel20: TcxLabel
            Left = 1
            Top = 1
            Align = alTop
            AutoSize = False
            Caption = #1044#1072#1085#1085#1099#1077' '#1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1080
            ParentColor = False
            ParentFont = False
            Style.Color = 12615680
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 22
            Width = 1220
            AnchorX = 611
            AnchorY = 12
          end
          object cxGrid22: TcxGrid
            Left = 1
            Top = 23
            Width = 1220
            Height = 298
            Align = alClient
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmClassic
            LookAndFeel.SkinName = ''
            object cxGrid22DBBandedTableView1: TcxGridDBBandedTableView
              OnKeyPress = cxGrid5DBBandedTableView1KeyPress
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
              DataController.DataSource = DS_info
              DataController.KeyFieldNames = 'fact_repair_table_id'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
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
                  Format = '#,#0.0'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,#0.0'
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
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skCount
                  Position = spFooter
                  Column = cxGrid22DBBandedTableView1fact_repair_table_id
                end
                item
                  Kind = skCount
                  Column = cxGrid22DBBandedTableView1fact_repair_table_id
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid22DBBandedTableView1sum
                end
                item
                  Kind = skSum
                  Column = cxGrid22DBBandedTableView1sum
                end
                item
                  Kind = skSum
                  Position = spFooter
                  Column = cxGrid22DBBandedTableView1comis
                end
                item
                  Kind = skSum
                  Column = cxGrid22DBBandedTableView1comis
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  FieldName = 'invoice_score_id'
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skCount
                end
                item
                  Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                  Kind = skAverage
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skCount
                  Column = cxGrid22DBBandedTableView1fact_repair_table_id
                end
                item
                  Kind = skSum
                  Column = cxGrid22DBBandedTableView1sum
                end
                item
                  Kind = skSum
                  Column = cxGrid22DBBandedTableView1comis
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              DateTimeHandling.Grouping = dtgByDate
              OptionsBehavior.CellHints = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.HeaderHeight = 35
              OptionsView.BandHeaders = False
              Preview.AutoHeight = False
              OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGrid22DBBandedTableView1fact_repair_table_id: TcxGridDBBandedColumn
                Caption = #8470' '#1047#1072#1087#1080#1089#1080
                DataBinding.FieldName = 'fact_repair_table_id'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid22DBBandedTableView1score_date: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1057#1060
                DataBinding.FieldName = 'score_date'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid22DBBandedTableView1score_cod: TcxGridDBBandedColumn
                Caption = #8470' '#1057#1060
                DataBinding.FieldName = 'score_cod'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid22DBBandedTableView1num_vagon: TcxGridDBBandedColumn
                Caption = #8470' '#1042#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'num_vagon'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid22DBBandedTableView1service_name: TcxGridDBBandedColumn
                Caption = #1059#1089#1083#1091#1075#1072
                DataBinding.FieldName = 'service_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid22DBBandedTableView1cost_acts_cod: TcxGridDBBandedColumn
                Caption = #8470' '#1054#1090#1095#1077#1090#1072
                DataBinding.FieldName = 'cost_acts_cod'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid22DBBandedTableView1cost_acts_date: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1086#1090#1095#1077#1090#1072
                DataBinding.FieldName = 'cost_acts_date'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid22DBBandedTableView1cost_firm_customer_name_short: TcxGridDBBandedColumn
                Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
                DataBinding.FieldName = 'cost_firm_customer_name_short'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid22DBBandedTableView1sum: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072' '#1091#1089#1083#1091#1075
                DataBinding.FieldName = 'sum'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid22DBBandedTableView1comis: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072' '#1074#1086#1079#1085'.'
                DataBinding.FieldName = 'comis'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid22DBBandedTableView1comis_pct: TcxGridDBBandedColumn
                Caption = '%'
                DataBinding.FieldName = 'comis_pct'
                HeaderAlignmentVert = vaTop
                Width = 37
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
            end
            object cxGrid22Level1: TcxGridLevel
              GridView = cxGrid22DBBandedTableView1
            end
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = '1.10 '#1057#1087#1088#1072#1074#1082#1072' '#1087#1086' '#1088#1077#1084#1086#1085#1090#1072#1084
      ImageIndex = 9
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1224
        Height = 696
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Splitter12: TSplitter
          Left = 1
          Top = 370
          Width = 1222
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          Color = 8421631
          ParentColor = False
          ExplicitTop = 217
          ExplicitWidth = 1147
        end
        object cxLabel21: TcxLabel
          Left = 1
          Top = 1
          Align = alTop
          AutoSize = False
          Caption = #1057#1087#1088#1072#1074#1082#1072' '#1087#1086' '#1088#1077#1084#1086#1085#1090#1072#1084
          ParentColor = False
          ParentFont = False
          Style.Color = 12615680
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = RUSSIAN_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Height = 22
          Width = 1222
          AnchorX = 612
          AnchorY = 12
        end
        object Panel18: TPanel
          Left = 1
          Top = 373
          Width = 1222
          Height = 322
          Align = alBottom
          Caption = 'Panel3'
          TabOrder = 1
          object cxLabel22: TcxLabel
            Left = 1
            Top = 1
            Align = alTop
            AutoSize = False
            Caption = #1044#1072#1085#1085#1099#1077' '#1088#1072#1089#1096#1080#1092#1088#1086#1074#1082#1080
            ParentColor = False
            ParentFont = False
            Style.Color = 12615680
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 22
            Width = 1220
            AnchorX = 611
            AnchorY = 12
          end
          object cxGrid15: TcxGrid
            Left = 1
            Top = 23
            Width = 1220
            Height = 298
            Align = alClient
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.ScrollbarMode = sbmClassic
            LookAndFeel.SkinName = ''
            object cxGrid15DBBandedTableView1: TcxGridDBBandedTableView
              PopupMenu = dxBarPopupMenu_10_2
              OnKeyPress = cxGrid5DBBandedTableView1KeyPress
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
              DataController.DataSource = DS_Reps
              DataController.KeyFieldNames = 'num_vagon'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                  Position = spFooter
                end
                item
                  Kind = skAverage
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
                  Format = '#,#0.0'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,#0.0'
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
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '#,##0.00'
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
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Kind = skSum
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
                  Column = cxGrid15DBBandedTableView1num_vagon
                end
                item
                  Kind = skCount
                  Column = cxGrid15DBBandedTableView1num_vagon
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  FieldName = 'invoice_score_id'
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skAverage
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skCount
                end
                item
                  Format = #1089#1088#1077#1076#1085'.=#,#0.0'
                  Kind = skAverage
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skCount
                  Column = cxGrid15DBBandedTableView1num_vagon
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              DateTimeHandling.Grouping = dtgByDate
              OptionsBehavior.CellHints = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.HeaderHeight = 35
              OptionsView.BandHeaders = False
              Preview.AutoHeight = False
              OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGrid15DBBandedTableView1num_vagon: TcxGridDBBandedColumn
                Caption = #8470' '#1042#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'num_vagon'
                HeaderAlignmentVert = vaTop
                Styles.Content = fmMain.cxStyle_Bold
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
                Caption = #1042#1083#1072#1076#1077#1083#1077#1094
                DataBinding.FieldName = 'firm_customer_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1type_park_name: TcxGridDBBandedColumn
                Caption = #1056#1072#1073'./'#1053#1077' '#1088#1072#1073'. '#1087#1072#1088#1082
                DataBinding.FieldName = 'type_park_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn
                Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
                DataBinding.FieldName = 'rod_vagon_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1type_park_vagon_name: TcxGridDBBandedColumn
                Caption = #1058#1080#1087' '#1087#1072#1088#1082#1072
                DataBinding.FieldName = 'type_park_vagon_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1date_build: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1088#1086#1081#1082#1080
                DataBinding.FieldName = 'date_build'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1next_date_repair: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1089#1083#1077#1076#1091#1102#1097#1077#1075#1086' '#1088#1077#1084#1086#1085#1090#1072
                DataBinding.FieldName = 'next_date_repair'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1date_last_place: TcxGridDBBandedColumn
                Caption = #1044#1077#1087#1086' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1088#1077#1084#1086#1085#1090#1072
                DataBinding.FieldName = 'date_last_place'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1milage_passed: TcxGridDBBandedColumn
                Caption = #1055#1088#1086#1073#1077#1075' '#1087#1088#1086#1081#1076#1077#1085#1085#1099#1081
                DataBinding.FieldName = 'milage_passed'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1milage_rest: TcxGridDBBandedColumn
                Caption = #1055#1088#1086#1073#1077#1075' '#1086#1089#1090#1072#1074#1096#1080#1081#1089#1103
                DataBinding.FieldName = 'milage_rest'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1model_name: TcxGridDBBandedColumn
                Caption = #1052#1086#1076#1077#1083#1100
                DataBinding.FieldName = 'model_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1node_begin_name: TcxGridDBBandedColumn
                Caption = #1057#1090'. '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
                DataBinding.FieldName = 'node_begin_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1road_begin_name: TcxGridDBBandedColumn
                Caption = #1044#1086#1088#1086#1075#1072' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
                DataBinding.FieldName = 'road_begin_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1node_end_name: TcxGridDBBandedColumn
                Caption = #1057#1090'. '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1103
                DataBinding.FieldName = 'node_end_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1date_otpr: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088'.'
                DataBinding.FieldName = 'date_otpr'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1time_otpr: TcxGridDBBandedColumn
                Caption = #1042#1088#1077#1084#1103' '#1086#1090#1087#1088'.'
                DataBinding.FieldName = 'time_otpr'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1fact_weight: TcxGridDBBandedColumn
                Caption = #1042#1077#1089
                DataBinding.FieldName = 'fact_weight'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn
                Caption = #1043#1088#1091#1079
                DataBinding.FieldName = 'kargoETSNG_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1comment6: TcxGridDBBandedColumn
                Caption = #1050#1086#1084#1084#1077#1085#1090' '#8470' 6 ('#1055#1086#1083#1080#1075#1086#1085')'
                DataBinding.FieldName = 'comment6'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 18
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1comment13: TcxGridDBBandedColumn
                Caption = #1050#1086#1084#1084#1077#1085#1090' '#8470' 13'
                DataBinding.FieldName = 'comment13'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 19
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1comment4: TcxGridDBBandedColumn
                Caption = #1050#1086#1084#1084#1077#1085#1090' '#8470' 4'
                DataBinding.FieldName = 'comment4'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 21
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1arenda_firm_name: TcxGridDBBandedColumn
                Caption = #1040#1088#1077#1085#1076#1086#1076#1072#1090#1077#1083#1100
                DataBinding.FieldName = 'arenda_firm_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 20
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1repaire_owner_name: TcxGridDBBandedColumn
                Caption = #1054#1090#1074'. '#1087#1086' '#1088#1077#1084#1086#1085#1090#1091
                DataBinding.FieldName = 'repaire_owner_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 23
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1comment4_type_repare: TcxGridDBBandedColumn
                Caption = #1058#1080#1087' '#1088#1077#1084#1086#1085#1090#1072
                DataBinding.FieldName = 'comment4_type_repare'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 22
                Position.RowIndex = 0
              end
              object cxGrid15DBBandedTableView1node_operation_nam: TcxGridDBBandedColumn
                Caption = #1057#1090'. '#1054#1087#1077#1088#1072#1094#1080#1080
                DataBinding.FieldName = 'node_operation_name'
                HeaderAlignmentVert = vaTop
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 24
                Position.RowIndex = 0
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGrid15DBBandedTableView1
            end
          end
        end
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 1
          Top = 23
          Width = 1222
          Height = 347
          Align = alClient
          DataSource = DS_Reps
          Groups = <>
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = ''
          OptionsPrefilter.Visible = pfvAlways
          OptionsView.ColumnGrandTotalText = #1048#1090#1086#1075#1086':'
          OptionsView.ColumnTotalsLocation = ctlNear
          OptionsView.GrandTotalsForSingleValues = True
          OptionsView.RowGrandTotalText = #1048#1090#1086#1075#1086':'
          OptionsView.RowTotalsLocation = rtlNear
          PopupMenu = dxBarPopupMenu_10_1
          Styles.Total = fmMain.cxStyle_Bold
          TabOrder = 2
          object cxDBPivotGrid1num_vagon: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 4
            IsCaptionAssigned = True
            Caption = #8470' '#1042#1072#1075#1086#1085#1072
            DataBinding.FieldName = 'num_vagon'
            SummaryType = stCount
            SummaryVariation = svAbsolute
            Visible = True
            UniqueName = #8470' '#1042#1072#1075#1086#1085#1072
          end
          object cxDBPivotGrid1rod_vagon_name: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            IsCaptionAssigned = True
            Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
            DataBinding.FieldName = 'rod_vagon_name'
            SummaryType = stCount
            SummaryVariation = svAbsolute
            Visible = True
            UniqueName = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
          end
          object cxDBPivotGrid1repaire_owner_name: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 2
            IsCaptionAssigned = True
            Caption = #1054#1090#1074'. '#1087#1086' '#1088#1077#1084#1086#1085#1090#1091
            DataBinding.FieldName = 'repaire_owner_name'
            SummaryType = stCount
            SummaryVariation = svAbsolute
            Visible = True
            UniqueName = #1054#1090#1074'. '#1087#1086' '#1088#1077#1084#1086#1085#1090#1091
          end
          object cxDBPivotGrid1comment4_type_repare: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = #1058#1080#1087' '#1088#1077#1084#1086#1085#1090#1072
            DataBinding.FieldName = 'comment4_type_repare'
            SummaryType = stCount
            SummaryVariation = svAbsolute
            Visible = True
            UniqueName = #1058#1080#1087' '#1088#1077#1084#1086#1085#1090#1072
          end
          object cxDBPivotGrid1comment4: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 3
            IsCaptionAssigned = True
            Caption = #1050#1086#1084#1084#1077#1085#1090' '#8470'4'
            DataBinding.FieldName = 'comment4'
            SummaryType = stCount
            SummaryVariation = svAbsolute
            Visible = True
            Width = 250
            UniqueName = #1050#1086#1084#1084#1077#1085#1090' '#8470'4'
          end
          object cxDBPivotGrid1cnt: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = #1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'cnt'
            Visible = True
            UniqueName = #1050#1086#1083'-'#1074#1086
          end
          object cxDBPivotGrid1node_operation_name: TcxDBPivotGridField
            AreaIndex = 0
            IsCaptionAssigned = True
            Caption = #1057#1090'. '#1086#1087#1077#1088#1072#1094#1080#1080
            DataBinding.FieldName = 'node_operation_name'
            Visible = True
            UniqueName = #1057#1090'. '#1086#1087#1077#1088#1072#1094#1080#1080
          end
        end
      end
    end
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = cxDBPivotGrid1
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'Anchors'
          'BevelEdges'
          'BevelInner'
          'BevelKind'
          'BevelOuter'
          'BevelWidth'
          'BorderStyle'
          'BorderWidth'
          'Constraints'
          'Cursor'
          'CustomHint'
          'Customization'
          'DataSource'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FieldHeaderImages'
          'Font'
          'GroupHeaderImages'
          'Groups'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'LookAndFeel'
          'Margins'
          'Name'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsData'
          'OptionsDataField'
          'OptionsLockedStateImage'
          'OptionsPrefilter'
          'OptionsSelection'
          'OptionsView'
          'ParentCustomHint'
          'ParentFont'
          'PopupMenu'
          'PopupMenus'
          'ShowHint'
          'Styles'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Touch'
          'Visible'
          'Width')
      end
      item
        Component = cxDBPivotGrid1cnt
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DataVisibility'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortBySummaryInfo'
          'SortOrder'
          'Styles'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = cxDBPivotGrid1comment4
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DataVisibility'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortBySummaryInfo'
          'SortOrder'
          'Styles'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = cxDBPivotGrid1comment4_type_repare
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DataVisibility'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortBySummaryInfo'
          'SortOrder'
          'Styles'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = cxDBPivotGrid1node_operation_name
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DataVisibility'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortBySummaryInfo'
          'SortOrder'
          'Styles'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = cxDBPivotGrid1num_vagon
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DataVisibility'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortBySummaryInfo'
          'SortOrder'
          'Styles'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = cxDBPivotGrid1repaire_owner_name
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DataVisibility'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortBySummaryInfo'
          'SortOrder'
          'Styles'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = cxDBPivotGrid1rod_vagon_name
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DataVisibility'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortBySummaryInfo'
          'SortOrder'
          'Styles'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Top'
          'Width'
          'WindowState')
      end
      item
        Component = GroupBox1
        Properties.Strings = (
          'Width')
      end
      item
        Component = GroupBox2
        Properties.Strings = (
          'Width')
      end
      item
        Component = GroupBox3
        Properties.Strings = (
          'Width')
      end
      item
        Component = GroupBox5
        Properties.Strings = (
          'Width')
      end
      item
        Component = GroupBox6
        Properties.Strings = (
          'Width')
      end>
    StorageName = '\Software\Lis1\TrafficManagment'
    StorageType = stRegistry
    Left = 30
    Top = 191
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
      'Popup_TrackVagon')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = fmMain.cxImageList1
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 90
    Top = 192
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
          ItemName = 'dxBarButton34'
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
    object dxBarButton2: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton2Click
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
    object dxBarButton_FilterRecords1: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton_FilterRecords1Click
    end
    object dxBarButton12: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton12Click
    end
    object dxBarButton20: TdxBarButton
      Caption = #1052#1077#1089#1103#1094
      Category = 0
      Hint = #1052#1077#1089#1103#1094
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton20Click
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
      ImageIndex = 138
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
      Caption = #1056#1072#1089#1096#1080#1092#1088#1086#1074#1082#1072
      Category = 0
      Hint = #1056#1072#1089#1096#1080#1092#1088#1086#1074#1082#1072
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 160
      OnClick = dxBarButton34Click
    end
    object dxBarButton1: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton1Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton3Click
    end
    object dxBarButton5: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton7Click
    end
    object dxBarButton8: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1082#1086#1083#1086#1085#1086#1082
      Category = 0
      Hint = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1082#1086#1083#1086#1085#1086#1082
      Visible = ivAlways
      ImageIndex = 14
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
    end
    object dxBarButton11: TdxBarButton
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1072#1090#1091' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1089#1095#1077#1090#1072' = '#1076#1072#1090#1077' '#1085#1072#1095#1072#1083#1072' '#1088#1077#1081#1089#1072
      Category = 0
      Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1072#1090#1091' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1089#1095#1077#1090#1072' = '#1076#1072#1090#1077' '#1085#1072#1095#1072#1083#1072' '#1088#1077#1081#1089#1072
      Visible = ivAlways
      ImageIndex = 7
    end
    object dxBarButton13: TdxBarButton
      Caption = #1056#1072#1089#1095#1080#1090#1072#1090#1100' '#1088#1072#1089#1089#1090#1086#1103#1085#1080#1077
      Category = 0
      Hint = #1056#1072#1089#1095#1080#1090#1072#1090#1100' '#1088#1072#1089#1089#1090#1086#1103#1085#1080#1077
      Visible = ivAlways
      ImageIndex = 127
    end
    object dxBarButton14: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton14Click
    end
    object dxBarButton15: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1079#1085#1072#1095#1077#1085#1080#1102
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1079#1085#1072#1095#1077#1085#1080#1102
      Visible = ivAlways
      ImageIndex = 44
    end
    object dxBarButton16: TdxBarButton
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1074' '#1076#1080#1089#1083#1086#1082#1072#1094#1080#1102
      Category = 0
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1074' '#1076#1080#1089#1083#1086#1082#1072#1094#1080#1102
      Visible = ivAlways
      ImageIndex = 147
      OnClick = dxBarButton16Click
    end
    object dxBarButton17: TdxBarButton
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1074#1072#1075#1086#1085#1072#1084
      Category = 0
      Hint = #1055#1086#1080#1089#1082' '#1087#1086' '#1074#1072#1075#1086#1085#1072#1084
      Visible = ivAlways
      ImageIndex = 42
      OnClick = dxBarButton17Click
    end
    object dxBarButton18: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
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
    object dxBarButton21: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton21Click
    end
    object dxBarButton22: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton22Click
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
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton27Click
    end
    object dxBarButton30: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton30Click
    end
    object dxBarButton31: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton31Click
    end
    object dxBarButton32: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1074#1077#1088#1085#1091#1090#1086#1081' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1089#1074#1077#1088#1085#1091#1090#1086#1081' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton32Click
    end
    object dxBarButton33: TdxBarButton
      Tag = 1
      Caption = #1055#1077#1095#1072#1090#1100' '#1088#1072#1079#1074#1077#1088#1085#1091#1090#1086#1081' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1088#1072#1079#1074#1077#1088#1085#1091#1090#1086#1081' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton32Click
    end
    object dxBarButton35: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton35Click
    end
    object Excel3: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 1
      Visible = ivAlways
      ImageIndex = 8
      OnClick = Excel3Click
    end
    object N10: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 1
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
        end>
    end
    object N82: TdxBarButton
      Caption = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080' ...'
      Category = 1
      Visible = ivAlways
      ImageIndex = 11
    end
    object N83: TdxBarButton
      Tag = 1
      Caption = #1059#1073#1088#1072#1090#1100' '#1094#1074#1077#1090' '#1079#1072#1087#1080#1089#1080'...'
      Category = 1
      Visible = ivAlways
      ImageIndex = 12
    end
    object N14: TdxBarButton
      Tag = 1
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 1
      Visible = ivAlways
      ImageIndex = 15
      OnClick = N14Click
    end
    object N74: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 1
      Visible = ivAlways
      ImageIndex = 14
      OnClick = N74Click
    end
    object N100: TdxBarButton
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1091#1089#1090#1072#1085#1086#1074#1082#1080
      Category = 1
      Visible = ivAlways
      ImageIndex = 17
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end>
    UseOwnFont = False
    Left = 27
    Top = 406
    PixelsPerInch = 96
  end
  object SP_Reps: TADOStoredProc
    Connection = fmMain.Lis
    ProcedureName = 'sp_Report_traffic_managment'
    Parameters = <>
    Left = 26
    Top = 340
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 59
    Top = 193
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
  end
  object DS_Reps: TDataSource
    DataSet = SP_Reps
    Left = 28
    Top = 370
  end
  object dxBarPopupMenu2: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = False
    Left = 156
    Top = 505
    PixelsPerInch = 96
  end
  object SP_Info: TADOStoredProc
    Connection = fmMain.Lis
    ProcedureName = 'sp_Report_traffic_managment'
    Parameters = <>
    Left = 163
    Top = 340
  end
  object DS_info: TDataSource
    DataSet = SP_Info
    Left = 163
    Top = 370
  end
  object SP_Info2: TADOStoredProc
    Connection = fmMain.Lis
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'sp_Report_traffic_managment'
    Parameters = <>
    Left = 201
    Top = 339
  end
  object DS_Info2: TDataSource
    DataSet = SP_Info2
    Left = 203
    Top = 371
  end
  object dxBarPopupMenu3: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 198
    Top = 475
    PixelsPerInch = 96
  end
  object dxBarPopupMenu4: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton16'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end>
    UseOwnFont = False
    Left = 31
    Top = 500
    PixelsPerInch = 96
  end
  object dxBarPopupMenu5: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end>
    UseOwnFont = False
    Left = 155
    Top = 537
    PixelsPerInch = 96
  end
  object dxBarPopupMenu6: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end>
    UseOwnFont = False
    Left = 30
    Top = 530
    PixelsPerInch = 96
  end
  object dxBarPopupMenu7: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end>
    UseOwnFont = False
    Left = 154
    Top = 568
    PixelsPerInch = 96
  end
  object DS_info3: TDataSource
    DataSet = SP_Info3
    Left = 239
    Top = 370
  end
  object SP_Info3: TADOStoredProc
    Connection = fmMain.Lis
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'sp_Report_traffic_managment'
    Parameters = <>
    Left = 237
    Top = 340
  end
  object SP_Reps1: TADOStoredProc
    Connection = fmMain.Lis
    ProcedureName = 'sp_Report_traffic_managment'
    Parameters = <>
    Left = 79
    Top = 337
  end
  object DS_Reps1: TDataSource
    DataSet = SP_Reps1
    Left = 79
    Top = 364
  end
  object dxBarPopupMenu14: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end>
    UseOwnFont = False
    Left = 71
    Top = 473
    PixelsPerInch = 96
  end
  object dxBarPopupMenu15: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton13'
      end>
    UseOwnFont = False
    Left = 238
    Top = 479
    PixelsPerInch = 96
  end
  object SP_Reps2: TADOStoredProc
    Connection = fmMain.Lis
    ProcedureName = 'sp_Report_traffic_managment'
    Parameters = <>
    Left = 121
    Top = 340
  end
  object DS_Reps2: TDataSource
    DataSet = SP_Reps2
    Left = 121
    Top = 371
  end
  object dxBarPopupMenu19: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton17'
      end>
    UseOwnFont = False
    Left = 154
    Top = 473
    PixelsPerInch = 96
  end
  object dxBarPopupMenu8: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton18'
      end>
    UseOwnFont = False
    Left = 308
    Top = 324
    PixelsPerInch = 96
  end
  object dxBarPopupMenu10: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end>
    UseOwnFont = False
    Left = 30
    Top = 560
    PixelsPerInch = 96
  end
  object dxBarPopupMenu16: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end>
    UseOwnFont = False
    Left = 27
    Top = 590
    PixelsPerInch = 96
  end
  object dxBarPopupMenu18: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton22'
      end>
    UseOwnFont = False
    Left = 27
    Top = 621
    PixelsPerInch = 96
  end
  object dxBarPopupMenu21: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton26'
      end>
    UseOwnFont = False
    Left = 26
    Top = 651
    PixelsPerInch = 96
  end
  object dxBarPopupMenu12: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton27'
      end>
    UseOwnFont = False
    Left = 396
    Top = 316
    PixelsPerInch = 96
  end
  object dxBarPopupMenu13: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton30'
      end>
    UseOwnFont = False
    Left = 316
    Top = 372
    PixelsPerInch = 96
  end
  object dxBarPopupMenu7_1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton31'
      end>
    UseOwnFont = False
    Left = 170
    Top = 624
    PixelsPerInch = 96
  end
  object Query_tmp: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Inf' +
      'o=True;User ID=sa;Initial Catalog=Lis1;Data Source=srv-lis2'
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      #9' DECLARE @users_group_id int'
      #9' SELECT @users_group_id = 158706'
      #9
      #9#9'--'#1044#1072#1085#1085#1099#1077' '#1089#1088#1077#1079' '#1087#1086#1089#1083#1077#1076#1085#1080#1093' '#1080#1079' '#1076#1080#1089#1083#1086#1082#1072#1094#1080#1080
      #9#9' SELECT '
      #9#9#9' CONVERT(int,t.num_vagon) as num_vagon,'
      #9#9#9' t.firm_customer_name,'
      '             t.type_park_name,'
      #9#9#9' t.rod_vagon_name,'
      #9#9#9' t.type_park_vagon_name,'
      #9#9#9' t.date_build,'
      #9#9#9' t.next_date_repair,'
      #9#9#9' t.date_last_place,'
      #9#9#9' t.milage_passed,'
      #9#9#9' t.milage_rest,'#9#9#9#9
      #9#9#9' t.model_name,'
      #9#9#9' t.node_begin_name,'
      #9#9#9' t.road_begin_name,'
      #9#9#9' t.node_end_name,'
      '             t.date_otpr,'
      #9#9#9' CONVERT(time,t.time_otpr) as time_otpr,'
      #9#9#9' fact_weight,'
      '             kargoETSNG_name,'
      #9#9#9' t.vagon_id,'
      
        '          --(SELECT top 1 c.vagon_comment FROM vagon_comment c W' +
        'ITH (NOLOCK) WHERE (c.vagon_id = t.vagon_id) AND (c.vagon_commen' +
        't_type_id = 908730 ) AND (date_query BETWEEN c.date_begin AND IS' +
        'NULL(c.date_end + 0.999 , date_query)))  as comment4,'
      
        #9#9'  (SELECT top 1 c.attached_global_id FROM vagon_comment c WITH' +
        ' (NOLOCK) WHERE (c.vagon_id = t.vagon_id) AND (c.vagon_comment_t' +
        'ype_id = 908730 ) AND (date_query BETWEEN c.date_begin AND ISNUL' +
        'L(c.date_end + 0.999 , date_query)))  as comment4_id,           '
      
        #9#9'  (SELECT top 1 c.vagon_comment FROM vagon_comment c WITH (NOL' +
        'OCK) WHERE (c.vagon_id = t.vagon_id) AND (c.vagon_comment_type_i' +
        'd = 908732 ) AND (date_query BETWEEN c.date_begin AND ISNULL(c.d' +
        'ate_end + 0.999 , date_query)))  as comment6,  '
      
        '          (SELECT top 1 c.vagon_comment FROM vagon_comment c WIT' +
        'H (NOLOCK) WHERE (c.vagon_id = t.vagon_id) AND (c.vagon_comment_' +
        'type_id = 1385291) AND (date_query BETWEEN c.date_begin AND ISNU' +
        'LL(c.date_end + 0.999 , date_query)))  as comment13,  '
      #9#9#9'(SELECT TOP 1 firm_name_short FROM view_vagon_arenda2_upd va '
      #9#9'WHERE va.vagon_id = t.vagon_id AND va.type_arenda = 0'
      #9#9'AND (va.date_begin <= t.date_otpr OR va.date_begin IS NULL) '
      '        AND (va.date_end >= t.date_otpr OR va.date_end IS NULL)'
      #9#9'AND (va.__main_rec IS NOT NULL)) as arenda_firm_name'
      #9#9'into #t9'
      #9#9'FROM  [dbo].[FACT_TRACK_STAT] t'#9'WITH (NOLOCK)'#9#9#9#9#9
      #9'    WHERE t.users_group_id = @users_group_id'
      ''
      #9#9'SELECT t.*,'
      #9#9'inf_obj_name as comment4,'
      #9#9'inf_obj_name_translit as comment4_type_repare,'
      #9#9#9
      
        #9#9'CASE WHEN  inf_obj_cod IN ('#39'5'#39','#39'6'#39','#39'7'#39','#39'8'#39','#39'13'#39','#39'14'#39','#39'15'#39','#39'16'#39 +
        ','#39'23'#39','#39'25'#39') THEN arenda_firm_name ELSE '#39#1057#1086#1073#1089#1090#1074'. '#1079#1072#1090#1088#1072#1090#1099#39' END as ' +
        'repaire_owner_name'
      '        '
      #9
      #9#9'FROM #t9 t'
      #9#9'LEFT JOIN INF_OBJ o ON o.inf_obj_id = t.comment4_id'#9#9
      #9#9'WHERE comment4_id IS NOT NULL'#9#9#9#9
      #9#9'DROP TABLE #t9'
      ''
      '')
    Left = 520
    Top = 482
  end
  object dxBarPopupMenu_10_1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton32'
      end
      item
        Visible = True
        ItemName = 'dxBarButton33'
      end>
    UseOwnFont = False
    Left = 300
    Top = 548
    PixelsPerInch = 96
  end
  object dxBarPopupMenu_10_2: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton35'
      end>
    UseOwnFont = False
    Left = 300
    Top = 604
    PixelsPerInch = 96
  end
end
