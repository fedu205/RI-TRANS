object fmUsersRole: TfmUsersRole
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1088#1072#1074' '#1076#1086#1089#1090#1091#1087#1072
  ClientHeight = 652
  ClientWidth = 1035
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001000800680500001600000028000000100000002000
    000001000800000000004001000000000000000000000001000000000000FFFF
    FF00C0C0C0000070A800183058003050900000309000D8D8D8004898F8003088
    FF000050800010487000F8F8F800303840001898D80028A8D80068A0B80080B0
    C00090B8C800B0C8C800587088008080800060A8FF000098FF00484840006868
    68004048500098A0A8002870D000486898005070A000B0F0FF00A0F8FF00F8F0
    F000505050007878780070B0F800707070005858580030303800989898000050
    D0000088D800809090000090F0001098F0000090D0009098A0001868D0008890
    980028B8F80038B8F80040C0F80048D0F80048C8F00080A0B00068E0FF00F0F0
    E8006880A80088E0FF0078E0FF0080E8FF00F8F0E8006080B0008098B8002060
    D000303028005858480028282800FFF8F800FFFFF80088888000B8B8C000B8B8
    B800706868000098F000888888000058D00018A0F00020A0F000A8A8A80058D0
    F80060D0F80080B8FF0078B8FF00F8F8F000E0E0E800F0F0F000A8A8A000E0E0
    E000000000000000000000000000000000000000000000000000000000000000
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
    0000000000000000000000000000000000000000000000000000000000008080
    8080800A0A0903174646808080808080808002021616282625244B8080808080
    80802A294A2B280C491818278080808080802E2D2C2B4C0C1818188080808080
    80801A0D4E4D2F19184B4B188080808080804F0E32311B1C80804B4B4B808080
    803636353433071C1C80804B8080808080360F375150151D1C80808080808080
    800F103C3B3A523939808080808080808010111F1E53083E3980808080808080
    801012230405403F3E8080808080808080808013424121808080808080808080
    8080805701144380808080808080808080808058061422808080808080808080
    808080800601808080808080808080808080808080808080808080808080F80F
    FFFFF007FFFFF003FFFFF007FFFFF003FFFFF031FFFFE01BFFFFE01FFFFFE01F
    FFFFE01FFFFFE01FFFFFF87FFFFFF87FFFFFF87FFFFFFCFFFFFFFFFFFFFF}
  Position = poDefault
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object cxPageControl2: TcxPageControl
    Left = 0
    Top = 78
    Width = 1035
    Height = 574
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    LookAndFeel.ScrollMode = scmClassic
    OnChange = cxPageControl2Change
    ClientRectBottom = 574
    ClientRectRight = 1035
    ClientRectTop = 24
    object cxTabSheet2: TcxTabSheet
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      ImageIndex = 0
      object Splitter1: TSplitter
        Left = 313
        Top = 0
        Height = 550
        Color = 8421631
        ParentColor = False
        ExplicitHeight = 475
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 313
        Height = 550
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 2
          Top = 2
          Width = 309
          Height = 546
          Align = alClient
          Constraints.MinHeight = 100
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.SkinName = 'Office2007Black'
          object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopup_User
            OnDblClick = dxBarButton6Click
            OnKeyPress = cxGrid1DBBandedTableView1KeyPress
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
            OnFocusedItemChanged = cxGrid2DBBandedTableView1FocusedItemChanged
            OnFocusedRecordChanged = cxGrid1DBBandedTableView1FocusedRecordChanged
            OnSelectionChanged = cxGrid1DBBandedTableView1SelectionChanged
            DataController.DataSource = DS_Users
            DataController.KeyFieldNames = 'users_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGrid1DBBandedTableView1FIO_users
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GridLineColor = clGray
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGrid2DBBandedTableView1CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGrid2DBBandedTableView1CustomDrawColumnHeader
            Bands = <
              item
              end>
            object cxGrid1DBBandedTableView1users_id: TcxGridDBBandedColumn
              Caption = #8470' '#1079#1072#1087#1080#1089#1080
              DataBinding.FieldName = 'users_id'
              DataBinding.IsNullValueType = True
              HeaderAlignmentVert = vaTop
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1users_name: TcxGridDBBandedColumn
              Caption = #1051#1086#1075#1080#1085
              DataBinding.FieldName = 'users_name'
              DataBinding.IsNullValueType = True
              HeaderAlignmentVert = vaTop
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn
              Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
              DataBinding.FieldName = 'FIO_users'
              DataBinding.IsNullValueType = True
              HeaderAlignmentVert = vaTop
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1users_cod: TcxGridDBBandedColumn
              Caption = #1050#1086#1076
              DataBinding.FieldName = 'users_cod'
              DataBinding.IsNullValueType = True
              Visible = False
              HeaderAlignmentVert = vaTop
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1users_group_name: TcxGridDBBandedColumn
              Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
              DataBinding.FieldName = 'users_group_name'
              DataBinding.IsNullValueType = True
              HeaderAlignmentVert = vaTop
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1users_group_cod: TcxGridDBBandedColumn
              DataBinding.FieldName = 'users_group_cod'
              DataBinding.IsNullValueType = True
              HeaderAlignmentVert = vaTop
              Width = 65
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'users_group_id'
              DataBinding.IsNullValueType = True
              HeaderAlignmentVert = vaTop
              Width = 65
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid1DBBandedTableView1set_group_users: TcxGridDBBandedColumn
              Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088' '#1075#1088#1091#1087#1087#1099
              DataBinding.FieldName = 'set_group_users'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxCheckBoxProperties'
              HeaderAlignmentVert = vaTop
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
              DataBinding.FieldName = 'date_begin'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.ReadOnly = True
              Properties.ShowTime = False
              HeaderAlignmentVert = vaTop
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
              DataBinding.FieldName = 'date_end'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.ReadOnly = True
              Properties.ShowTime = False
              HeaderAlignmentVert = vaTop
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1users_comment: TcxGridDBBandedColumn
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
              DataBinding.FieldName = 'users_comment'
              DataBinding.IsNullValueType = True
              HeaderAlignmentVert = vaTop
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1users_stack_num: TcxGridDBBandedColumn
              Caption = 'Stack '#1085#1086#1084#1077#1088
              DataBinding.FieldName = 'users_stack_num'
              DataBinding.IsNullValueType = True
              HeaderAlignmentVert = vaTop
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1personID: TcxGridDBBandedColumn
              Caption = 'personID ('#1090#1077#1083'.'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082')'
              DataBinding.FieldName = 'personID'
              DataBinding.IsNullValueType = True
              HeaderAlignmentVert = vaTop
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBBandedTableView1
          end
        end
      end
      object Panel2: TPanel
        Left = 316
        Top = 0
        Width = 719
        Height = 550
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object cxPageControl1: TcxPageControl
          Left = 2
          Top = 54
          Width = 715
          Height = 494
          Align = alClient
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Properties.ActivePage = cxTabSheet6
          Properties.CustomButtons.Buttons = <>
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          LookAndFeel.ScrollMode = scmClassic
          OnChange = cxPageControl1Change
          ClientRectBottom = 494
          ClientRectRight = 715
          ClientRectTop = 24
          object cxTabSheet1: TcxTabSheet
            Caption = #1054#1053' '#1074#1080#1076#1080#1090
            ImageIndex = 0
            object cxGrid2: TcxGrid
              Left = 0
              Top = 0
              Width = 715
              Height = 470
              Align = alClient
              TabOrder = 0
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.ScrollbarMode = sbmClassic
              LookAndFeel.SkinName = 'Office2007Black'
              object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
                PopupMenu = dxBarPopup_page_0
                OnKeyPress = cxGrid1DBBandedTableView1KeyPress
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                OnCustomDrawCell = cxGrid2DBBandedTableView1CustomDrawCell
                OnFocusedItemChanged = cxGrid2DBBandedTableView1FocusedItemChanged
                OnSelectionChanged = cxGrid2DBBandedTableView1SelectionChanged
                DataController.DataSource = DS_Users_Users
                DataController.KeyFieldNames = 'users_detail_id'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skCount
                    Column = cxGrid2DBBandedTableView1user_detail_name
                  end>
                DataController.Summary.SummaryGroups = <>
                DataController.Summary.Options = [soMultipleSelectedRecords]
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.MultiSelect = True
                OptionsSelection.HideFocusRectOnExit = False
                OptionsSelection.UnselectFocusedRecordOnExit = False
                OptionsView.Footer = True
                OptionsView.GridLineColor = clGray
                OptionsView.GroupByBox = False
                OptionsView.HeaderFilterButtonShowMode = fbmButton
                OptionsView.BandHeaders = False
                OnCustomDrawColumnHeader = cxGrid2DBBandedTableView1CustomDrawColumnHeader
                OnCustomDrawFooterCell = cxGrid2DBBandedTableView1CustomDrawColumnHeader
                Bands = <
                  item
                  end>
                object cxGrid2DBBandedTableView1users_master_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'users_master_id'
                  DataBinding.IsNullValueType = True
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGrid2DBBandedTableView1users_detail_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'users_detail_id'
                  DataBinding.IsNullValueType = True
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGrid2DBBandedTableView1user_master_name: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'user_master_name'
                  DataBinding.IsNullValueType = True
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGrid2DBBandedTableView1user_detail_name: TcxGridDBBandedColumn
                  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
                  DataBinding.FieldName = 'user_detail_name'
                  DataBinding.IsNullValueType = True
                  Width = 171
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGrid2DBBandedTableView1rights: TcxGridDBBandedColumn
                  Caption = #1044#1086#1089#1090#1091#1087
                  DataBinding.FieldName = 'rights'
                  DataBinding.IsNullValueType = True
                  Width = 115
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGrid2DBBandedTableView1rights_name: TcxGridDBBandedColumn
                  Caption = #1044#1086#1089#1090#1091#1087
                  DataBinding.FieldName = 'rights_name'
                  DataBinding.IsNullValueType = True
                  Width = 54
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGrid2DBBandedTableView1set_group_users_detail: TcxGridDBBandedColumn
                  Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088' '#1075#1088#1091#1087#1087#1099
                  DataBinding.FieldName = 'set_group_users_detail'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Width = 73
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGrid2DBBandedTableView1users_group_name_detail: TcxGridDBBandedColumn
                  Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
                  DataBinding.FieldName = 'users_group_name_detail'
                  DataBinding.IsNullValueType = True
                  Width = 132
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGrid2DBBandedTableView1users_detail_date_end: TcxGridDBBandedColumn
                  Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
                  DataBinding.FieldName = 'users_detail_date_end'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.ReadOnly = True
                  Properties.ShowTime = False
                  Width = 90
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
          object cxTabSheet4: TcxTabSheet
            Tag = 16
            Caption = #1045#1043#1054' '#1074#1080#1076#1103#1090
            ImageIndex = 3
            object cxGrid3: TcxGrid
              Left = 0
              Top = 0
              Width = 715
              Height = 470
              Align = alClient
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.ScrollbarMode = sbmClassic
              LookAndFeel.SkinName = 'Office2007Black'
              object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
                PopupMenu = dxBarPopup_page_1
                OnKeyPress = cxGrid1DBBandedTableView1KeyPress
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                OnCustomDrawCell = cxGrid3DBBandedTableView1CustomDrawCell
                OnFocusedItemChanged = cxGrid2DBBandedTableView1FocusedItemChanged
                OnSelectionChanged = cxGrid3DBBandedTableView1SelectionChanged
                DataController.DataSource = DS_open_users
                DataController.KeyFieldNames = 'users_master_id'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skCount
                    Column = cxGrid3DBBandedTableView1user_master_name
                  end>
                DataController.Summary.SummaryGroups = <>
                DataController.Summary.Options = [soMultipleSelectedRecords]
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.MultiSelect = True
                OptionsSelection.HideFocusRectOnExit = False
                OptionsSelection.UnselectFocusedRecordOnExit = False
                OptionsView.Footer = True
                OptionsView.GridLineColor = clGray
                OptionsView.GroupByBox = False
                OptionsView.HeaderFilterButtonShowMode = fbmButton
                OptionsView.BandHeaders = False
                OnCustomDrawColumnHeader = cxGrid2DBBandedTableView1CustomDrawColumnHeader
                OnCustomDrawFooterCell = cxGrid2DBBandedTableView1CustomDrawColumnHeader
                Bands = <
                  item
                  end>
                object cxGrid3DBBandedTableView1users_master_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'users_master_id'
                  DataBinding.IsNullValueType = True
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGrid3DBBandedTableView1users_detail_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'users_detail_id'
                  DataBinding.IsNullValueType = True
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGrid3DBBandedTableView1user_master_name: TcxGridDBBandedColumn
                  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
                  DataBinding.FieldName = 'user_master_name'
                  DataBinding.IsNullValueType = True
                  Width = 171
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGrid3DBBandedTableView1user_detail_name: TcxGridDBBandedColumn
                  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
                  DataBinding.FieldName = 'user_detail_name'
                  DataBinding.IsNullValueType = True
                  Width = 171
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGrid3DBBandedTableView1rights: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'rights'
                  DataBinding.IsNullValueType = True
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGrid3DBBandedTableView1rights_name: TcxGridDBBandedColumn
                  Caption = #1044#1086#1089#1090#1091#1087
                  DataBinding.FieldName = 'rights_name'
                  DataBinding.IsNullValueType = True
                  Width = 45
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGrid3DBBandedTableView1set_group_users_master: TcxGridDBBandedColumn
                  Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088' '#1075#1088#1091#1087#1087#1099
                  DataBinding.FieldName = 'set_group_users_master'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Width = 38
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGrid3DBBandedTableView1users_group_name_master: TcxGridDBBandedColumn
                  Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
                  DataBinding.FieldName = 'users_group_name_master'
                  DataBinding.IsNullValueType = True
                  Width = 132
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGrid3DBBandedTableView1users_master_date_end: TcxGridDBBandedColumn
                  Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
                  DataBinding.FieldName = 'users_master_date_end'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.ReadOnly = True
                  Properties.ShowTime = False
                  Width = 89
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
              end
              object cxGrid3Level1: TcxGridLevel
                GridView = cxGrid3DBBandedTableView1
              end
            end
          end
          object cxTabSheet5: TcxTabSheet
            Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1092#1091#1085#1082#1094#1080#1103#1084
            ImageIndex = 4
            object cxGrid6: TcxGrid
              Left = 0
              Top = 0
              Width = 715
              Height = 470
              Align = alClient
              TabOrder = 0
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.ScrollbarMode = sbmClassic
              LookAndFeel.SkinName = 'Office2007Black'
              object cxGrid6DBBandedTableView1: TcxGridDBBandedTableView
                PopupMenu = dxBarPopup_page_4
                OnKeyPress = cxGrid1DBBandedTableView1KeyPress
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                OnCellDblClick = cxGrid6DBBandedTableView1CellDblClick
                OnCustomDrawCell = cxGrid6DBBandedTableView1CustomDrawCell
                OnFocusedItemChanged = cxGrid2DBBandedTableView1FocusedItemChanged
                DataController.DataSource = DS_Functions
                DataController.KeyFieldNames = 'functions_id'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                DataController.Summary.Options = [soMultipleSelectedRecords]
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.MultiSelect = True
                OptionsView.CellAutoHeight = True
                OptionsView.GridLineColor = clGray
                OptionsView.GroupByBox = False
                OptionsView.HeaderFilterButtonShowMode = fbmButton
                OptionsView.BandHeaders = False
                OnCustomDrawColumnHeader = cxGrid2DBBandedTableView1CustomDrawColumnHeader
                OnCustomDrawFooterCell = cxGrid2DBBandedTableView1CustomDrawColumnHeader
                Bands = <
                  item
                  end>
                object cxGrid6DBBandedTableView1functions_id: TcxGridDBBandedColumn
                  Caption = #1053#1086#1084#1077#1088' '#1079#1072#1087#1080#1089#1080
                  DataBinding.FieldName = 'functions_id'
                  DataBinding.IsNullValueType = True
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGrid6DBBandedTableView1functions_name: TcxGridDBBandedColumn
                  Caption = #1048#1084#1103' '#1092#1091#1085#1082#1094#1080#1080
                  DataBinding.FieldName = 'functions_name'
                  DataBinding.IsNullValueType = True
                  Width = 130
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGrid6DBBandedTableView1functions_descriptions: TcxGridDBBandedColumn
                  Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1092#1091#1085#1082#1094#1080#1080
                  DataBinding.FieldName = 'functions_descriptions'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxRichEditProperties'
                  Width = 252
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGrid6DBBandedTableView1users_rights: TcxGridDBBandedColumn
                  Caption = #1044#1086#1089#1090#1091#1087
                  DataBinding.FieldName = 'users_rights'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ReadOnly = False
                  Width = 50
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
              end
              object cxGrid6Level2: TcxGridLevel
                GridView = cxGrid6DBBandedTableView1
              end
            end
          end
          object cxTabSheet6: TcxTabSheet
            Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1091
            ImageIndex = 5
            object cxGrid7: TcxGrid
              Left = 0
              Top = 0
              Width = 715
              Height = 470
              Align = alClient
              TabOrder = 0
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.ScrollbarMode = sbmClassic
              LookAndFeel.ScrollMode = scmClassic
              LookAndFeel.SkinName = 'Office2007Black'
              object cxGrid7DBBandedTableView1: TcxGridDBBandedTableView
                PopupMenu = dxBarPopup_page_5
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                OnFocusedItemChanged = cxGrid2DBBandedTableView1FocusedItemChanged
                DataController.DataSource = DS_UsersModuleRights
                DataController.KeyFieldNames = 'id'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                DataController.Summary.Options = [soMultipleSelectedRecords]
                OptionsBehavior.FocusCellOnTab = True
                OptionsData.Appending = True
                OptionsData.Deleting = False
                OptionsSelection.MultiSelect = True
                OptionsView.GridLineColor = clGray
                OptionsView.GroupByBox = False
                OptionsView.HeaderFilterButtonShowMode = fbmButton
                OptionsView.Indicator = True
                OptionsView.BandHeaders = False
                OnCustomDrawColumnHeader = cxGrid2DBBandedTableView1CustomDrawColumnHeader
                OnCustomDrawFooterCell = cxGrid2DBBandedTableView1CustomDrawColumnHeader
                Bands = <
                  item
                  end>
                object cxGrid7DBBandedTableView1Column1: TcxGridDBBandedColumn
                  Caption = #1053#1086#1084#1077#1088' '#1079#1072#1087#1080#1089#1080
                  DataBinding.FieldName = 'module_rights_id'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGrid7DBBandedTableView1Column2: TcxGridDBBandedColumn
                  Caption = #1052#1086#1076#1091#1083#1100
                  DataBinding.FieldName = 'module_name'
                  Width = 130
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGrid7DBBandedTableView1Column3: TcxGridDBBandedColumn
                  Caption = #1050#1086#1084#1087#1086#1085#1077#1085#1090
                  DataBinding.FieldName = 'component_name'
                  Width = 131
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGrid7DBBandedTableView1Column4: TcxGridDBBandedColumn
                  Caption = #1047#1085#1072#1095#1077#1085#1080#1077
                  DataBinding.FieldName = 'component_properties_value'
                  Width = 58
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGrid7DBBandedTableView1Column5: TcxGridDBBandedColumn
                  Caption = #1057#1074#1086#1081#1089#1090#1074#1086
                  DataBinding.FieldName = 'component_properties_name'
                  Width = 83
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGrid7DBBandedTableView1id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'id'
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
              end
              object cxGrid7Level1: TcxGridLevel
                GridView = cxGrid7DBBandedTableView1
              end
            end
          end
        end
        object Panel3: TPanel
          Left = 2
          Top = 2
          Width = 715
          Height = 52
          Align = alTop
          BevelOuter = bvNone
          Color = clGrayText
          TabOrder = 1
          object cxLabel1: TcxLabel
            Left = 122
            Top = 12
            ParentColor = False
            ParentFont = False
            Style.Color = clBtnShadow
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -19
            Style.Font.Name = 'Verdana'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            AnchorY = 26
          end
          object cxImage3: TcxImage
            Left = 0
            Top = 0
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
              0000003008060000005702F987000000017352474200AECE1CE9000000046741
              4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
              80E8000075300000EA6000003A98000017709CBA513C00000D6A494441546843
              ED5A6954555796DE955292742A31E554C62A2D8D5A31892907D4440D31155B63
              A74DCA18A754629C454114905910502619028A200A0848109964101441410413
              9C501187000A22A0C84C640A72BFDEFBBDFBD2B56A55AFEEB202D68FDE6BED75
              DF39F7BE73BE6FEF6FEF73DF02FA7F63DBB78EFA26D9D2C2385B3A106F4BF931
              56541A6B4DA531D6742ECE9ABE396C4D2619F634467DFC5FCBF2769241A21D95
              327825D59990EEAAF5E32E041927DA13E26C08D156A41C75A00BA79C6991A323
              3DA37EFDE95AAE3BBD1F6F4DED02F85B7F42DE2E42CED7842C2FC2C99D840C77
              2D99633B08479D089C1D1CB22025CE9CF2321DE9557599DE37914CE6765A1767
              45152718E4B940C2D9DD8433BE84D33E84539E844C0FC209376D26D2B66B09A4
              386A33126DC1BE856A4F38D30C75C9DEB3A258D23B624BC7E3ED481180F9015A
              F0B97EDAE8677BFFCF0492B769091CD9AA2511B599EA537B3B13E9CE64237A17
              C908789D7474D1FFBF1048B0D3CAE91B33429235A5AB4BF7BC152D22BD781BAA
              146D4BD405B8445EC0EBA2FFF7F42FC52CF24972D0465FC07397C2614BC24113
              EA3EE64C53D42D7AD6D25C6872B425293AD03AE07F0BFE7F938F8E00B75B446C
              E28C5891A7BA45CFDA896D64289B0B60918B4E323A17E9E8A2AFCBC05F17B064
              40E4236D55C04B1D680858528ABA45CF5ABA13ED100012699D0B68B90A01918A
              00136D0B30F148532D5089B87C57A77F9D84428DF8B339ED55B7E8594BB5A73D
              0240A22CC0751117B9846C20F8AF1080BF6742FAECEFB084C623C67A04F619BE
              08AFA504D70504F785A4F9ECF305C17B1913DCD0B73160050D53B7E8593B664F
              7B257AA271918648440804AFE7B1D3ABC04517A0C80FB8E10FDC0A60DF0B1407
              01DF0702D7FDA0E43BA125C3040F12BEC2FDD8CFD116BF04CABE492DCAAED1CF
              AA5BF4ACA56E253F49BD0017D007376B65B39B238FF3CE4CC00DB8BC13B8EACB
              8099C40D26215719CBFC851D40BE2370D60E3863019C34861230415142A60F55
              B7E8593B6A470EA2712191643B10C1864C82351E6331480BF0A22B70C51328DC
              05DCE4E87F1FA2BDCAB880E72F7086BE730072AD816C33E0D42660EF04280727
              8F53B7E8594BB5A17552A0612684D2D05948B3FF1D762DE76EE43911B8C4E024
              C2054CA45064241262F9C8F51A8F65FE22DFFF89803990B519089A04254A7FAA
              BA45CF5A822DCD96CE12C4916F885B84EA43F3E1BE98703FE14BE01C4BE31CCB
              E8920767C1471BF56BEC7295B1CCCBFD6F99C0192BE0B49A81DE2490684D230E
              6C2425700D6BFED84A8E2203C862CFB361675DE76FD366E1923B4B8A2573D94B
              7B95B146FF7C3FCF16C861FD0BF84C2396D044289153DF50B7E8598323F509DD
              4875319BFA00899F0127D673219A68E5205195E2E44E83F3DBB57A979A90AB8C
              655E53BCFC9C46FFFCBD636BA0048DEF5262DEE8AF6ED1F3C635909E633BA019
              E133810C43762621604EEB486C6599D86BA32D1D47AE3296798D74F839793E73
              030741D3462B3830BDF703E7A41DFDB6297094BEB27F522792BFE02CAC63120C
              46404964451E52A41A59B15CE42A6399D7455E9E17E287E6B2FEA724A84BF7AE
              B16EC31066001C5FFDDF244E6ED47616012A913EBD457B95B1CCCB7D794E9E4F
              5F0304BF2D05FC95BA64EF9A923879981234B111B1F399C42AF6B50C4C242544
              8CB5607F721E6B80F37D79EE183F1FF76728FB27D42991A35F5297EC7D5312DF
              F98B123449C191C540DA0A76EE4C9291740699CE51D6445A9CC7322FF7D39603
              29DC76F74F81123DCD425DEAE9997264FA76659FBE828405402A83D3B98690EA
              323E2ABE0C9ABA099D0125744A9674357599A76BCAC1D1D64AE0A8C788E49A48
              5AA20529514E51AF32168FFB0408790B4AF0ABF94AC4D001EAD79FA2052BA369
              97E24E9E4AC9AB3B0B955B01F300FF115C9C9381C80F80988FB42E9F83DE0202
              476187A72BC8AEA5801CDA8D280CCFA92BF5B2856108F92BA1E4D1F2E39BA12D
              5810D78A016100EDEC026AAFA22BC71DDDFC7AF1D865343A5DC7A2D16E1C3A0B
              A3907EE90EFA79FF80B101B520E76AD0D6EADBE48BF9EAAABD6491CAA7E4DD51
              F77BFF3AB8E676C229BB0DDB4FB7616B7607836A41E6AD167403A8C8CDC34D3D
              42FEAFF8F7301FE2776AEB109F731D6FEEA9C35F12EAB120A616C3F6301187EA
              6E726E0A269F8AE7D51D7AD0221473F2697F4C4E35482AEAC0DE8B5D703DD309
              E7D31DF0CCEDC0B8880EBC61148E2BE7CF2223E70CAECED647465F7EE57EEF6D
              4425C42335BF185382EA99401DFE33BA0E13C21A416EEC36E520ABBBD9E4817E
              EA4E3D6011CA5AFABAAD7B59722B26785DC710B73B18ED5F8BFF887E84C86B80
              575E17ACB31F834CAFE254722C8A8A4BD07CF332BA7EC7BF998D16A1EED10F38
              56700F3343EAB124BE1EE4DAC4B5701B2FAF8DC39B56F178615B19C8E276162D
              EF89BA0857A692776BFB9F635B6073B20D56690FB12E200B6BBD1230C4341D56
              273BE0F75D17F65DEA869E7B13BC83A3D1DAD18EDAE309681A4AC8993418756D
              AD38985B8EB9E10D5896588F41BE751CF5128CDF7D171F46D76346F87DF4B12E
              06D9DEDFA7EEFA339923F4C8ABAD705C6833B6A4B7C03CFD1193688773EE63D8
              9FEEC600B7FB08BFA260CF7905C117800F0FB743DF2C1A9D3FB6E1C1370178C0
              048A5F211495DF815F4619164635696A6029FB30DF1A906539C60756C120A21A
              E3F7DE036DBED54D8E8F3E5277FF192C4059FF4BEF46C528AD1926692D306302
              D699AD1ADDCF8DA887F1D14708BAD08D8073DD08BCA0C0ED6C3768DD5954DE2B
              41A59F13CA8670010F2014A4C6C1EA481996C7B760294B68516C1D0CC29880F5
              5D8C72BB8E7739036F8756E115B752D0C61BC53F8F941CB3FB906767C9B48846
              18A536C388099832012B26E0C804CC8EB761B8DB5D1C2A02FCF21F6B3CF0A282
              671DAB1077EA3B546E33C2CDC1841B0309571D4DB024A21C46475B3535B09833
              30F2EBFBA00D67F18E5B9686C094904A4C08AEC433A6D7585E15AB5514FF84ED
              55669347A3B232B9116B8E3661432A1338FE032C325AB135AB0D1EDF3EC6EB66
              C998155A8F9002059E677F840FCFFD7B78133EDF5F804AA385B8C2E02F3389C2
              79FAD0DF7D0FB6A73A3404661FE416BAF13AFE689B8459517598165A0D7D063F
              7EFF3D0CDEC1B5B0F9722177DF5FA8489ED0FC95A061010D5895DC8095C94D30
              3CDA8C8DC77EF849460EDCFB1D52ABD07F752CE64534C09F25B423A71336599D
              78CEA608E50B67E07C7F3E0B063109AE85813BEEF2BD7626D080672C8AF19A65
              2AE67201CF8CB88F77583E9318FC5B4115F843C05DCECC4585ACEF8C57913CA1
              ED526E4F0FABC797471AB03C91B390D2ACC9C226C9C2092E6626B12DE747D824
              9561E0AAC3981D5C079FEF1E633B9F0D7DB73F44F28431C87B99BB1093B8F81C
              61B063198C397BAFB89461B8793A3E8EA9C7ACC81ABC1B568DA9215598B8EF1E
              DEDC5B81B1ECCF9A158236955BA9489EC0429541E4DED8F5F1E13A2C61BD0A89
              95494D58CB5930E65AD8CC24B630098B8C36D872C46D8FD76284F1114CF4AE80
              DBB75D782FF211564D5B895C3E89335F221C1AF8225E0B6CC6A43D9CB14D5998
              7FB80673BEA9C1FB1CFDE9079800CB670267E0F5C0BB18CD19E8B7F53AC8A48C
              0FF127355FBC4F6EB558185B8BCFB86348E758C6595895D284154C641D6743E4
              2444CCD35BB18589D89C6AC334A76C0C65F998657761E817C9C8E94348E7E89B
              BE3E07637637E039A35CCC8FAAC447D1B59875F0010CC2AB35F2D10FAEC26B7E
              65181B588151FEE518E8F23DC8B8B84445F304B61B2B9EDFF9109FC63CE46831
              91B83A7C9ED080155C0B1F843D8461AAB62644529211E3E32D1A42A699ED5878
              E00E5EDAC29D646B3542FBF5430657A3FEDCAFF10BD342CC0B2FC33C7E8D981D
              F94013FD191C7DE93E13F7576284672946FADEC1C8DDE518ECC185BCFE720BCD
              E44EF844E6A358BEEC5D838FA36B30EF904A22BE0E5F2636E0F55D5558CD44A4
              B0577346D67236445AE26B525AB08E09AD4E69C4AF1DCB3179A6339298001916
              C120B0149FB0EEE744D5E003066FC0DAD7449FC1FF91F53F7C67098670E487EF
              2EC3606F3E0FD69CEF24CB9B2FAA88FE41F3552CFBBA883E1FE01326F1493467
              83492C8EABC760970A2C4F6AD4D485C84A0A5CC6E25FF167995B26632634C6F7
              3EFA2F4E447F87522C6019CE65DD8B74DEE3BE3FED4015264BEB94E2DD578141
              CEB7D0DFF12686EF29C70B765C036B0BDA688BF2828AE81F342FFEA257A70F39
              3EECF8B54735A6873EE0F7FE5ACCE1AEF1824319BE38C287119391DA1069E97C
              29B748CD41C5F744764B931A30D6AB9C8BB7021F712675E0A570DF0EAD843ECB
              47A23F8E893C6F76057A9BAFE01969A1EB2F7F4F1635735434FF84F92963C8AD
              2D88EC2B5BF41C2BF01BB70A3E256F6BC02D61490901E9528B0534FB42F6CF62
              B5EFFBF3B9837DCACFBD6C7D031F463D64E93CC49F3800EF318919FCEE236D73
              A4572906D8DF809EC9157E0529784C26C579B4F9EE5734B7F867FE9B81BCABBB
              3C5A414E4D297CC034926589F26F9C89575CCBF1079F0A4C0CB887A941557837
              A41A067CAACE643708E122E5FEAEC7AF06E3FCCA31C2BD04BFD9760B2F5A16E1
              974605ACF1730A1915D690C99D0432B96D4CD60DC3D5DD7AD81CD187CC8B2792
              59F14A322FF120D362067023973615DD22A36BD5B4B1B08E0CAF36D386AB4D2C
              8507ECB7C9B0E012ADBD9CC6510E62B7A1D5E73FA68DB746F262FF1AFF37F174
              8CE8BF00A43861C6A3B2A79B0000000049454E44AE426082}
            Properties.GraphicClassName = 'TdxSmartImage'
            Properties.ShowFocusRect = False
            Style.BorderStyle = ebsNone
            TabOrder = 1
            Transparent = True
            Height = 52
            Width = 61
          end
          object cxMemo2: TcxMemo
            Left = 61
            Top = 0
            Align = alClient
            Lines.Strings = (
              '_')
            ParentFont = False
            Properties.Alignment = taLeftJustify
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            Properties.VisibleLineCount = 2
            Style.Color = clGrayText
            Style.Font.Charset = RUSSIAN_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.Color = clGrayText
            StyleDisabled.TextColor = clWhite
            TabOrder = 2
            Width = 654
          end
        end
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = #1060#1091#1085#1082#1094#1080#1080
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 385
        Top = 0
        Width = 2
        Height = 550
        Color = clRed
        ParentColor = False
        ExplicitLeft = 602
        ExplicitTop = -3
        ExplicitHeight = 475
      end
      object cxGrid5: TcxGrid
        Left = 0
        Top = 0
        Width = 385
        Height = 550
        Align = alLeft
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.ScrollMode = scmClassic
        LookAndFeel.SkinName = 'Office2007Black'
        object cxGrid5DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopup_Func
          OnKeyPress = cxGrid1DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid2DBBandedTableView1FocusedItemChanged
          OnFocusedRecordChanged = cxGrid5DBBandedTableView1FocusedRecordChanged
          DataController.DataSource = DS_Func
          DataController.KeyFieldNames = 'functions_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGrid5DBBandedTableView1functions_name
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GridLineColor = clGray
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.BandHeaders = False
          OnCustomDrawColumnHeader = cxGrid2DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid2DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid5DBBandedTableView1functions_id: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088' '#1079#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'functions_id'
            DataBinding.IsNullValueType = True
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1functions_name: TcxGridDBBandedColumn
            Caption = #1048#1084#1103' '#1092#1091#1085#1082#1094#1080#1080
            DataBinding.FieldName = 'functions_name'
            DataBinding.IsNullValueType = True
            Width = 130
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1functions_descriptions: TcxGridDBBandedColumn
            Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1092#1091#1085#1082#1094#1080#1080
            DataBinding.FieldName = 'functions_descriptions'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxRichEditProperties'
            Width = 231
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGrid5Level1: TcxGridLevel
          GridView = cxGrid5DBBandedTableView1
        end
      end
      object cxGrid8: TcxGrid
        Left = 387
        Top = 0
        Width = 648
        Height = 550
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.ScrollMode = scmClassic
        LookAndFeel.SkinName = 'Office2007Black'
        object cxGrid8DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopup_Users_Func
          OnKeyPress = cxGrid1DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellDblClick = cxGrid8DBBandedTableView1CellDblClick
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid2DBBandedTableView1FocusedItemChanged
          OnSelectionChanged = cxGrid8DBBandedTableView1SelectionChanged
          DataController.DataSource = DS_Func_Users
          DataController.KeyFieldNames = 'users_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGrid8DBBandedTableView1FIO_users
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.BandHeaders = False
          OnCustomDrawColumnHeader = cxGrid2DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid2DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid8DBBandedTableView1users_id: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088' '#1079#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'users_id'
            DataBinding.IsNullValueType = True
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid8DBBandedTableView1FIO_users: TcxGridDBBandedColumn
            Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
            DataBinding.FieldName = 'FIO_users'
            DataBinding.IsNullValueType = True
            Width = 170
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid8DBBandedTableView1users_rights: TcxGridDBBandedColumn
            Caption = #1044#1086#1089#1090#1091#1087
            DataBinding.FieldName = 'users_rights'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ReadOnly = False
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid8DBBandedTableView1date_end: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
            DataBinding.FieldName = 'date_end'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ReadOnly = True
            Properties.ShowTime = False
            Width = 91
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid8DBBandedTableView1users_name: TcxGridDBBandedColumn
            Caption = #1051#1086#1075#1080#1085
            DataBinding.FieldName = 'users_name'
            DataBinding.IsNullValueType = True
            Width = 97
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object cxGrid8Level1: TcxGridLevel
          GridView = cxGrid8DBBandedTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' OnLine'
      ImageIndex = 2
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 1035
        Height = 550
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.ScrollMode = scmClassic
        LookAndFeel.SkinName = 'Office2007Black'
        object cxGrid4DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu1
          OnKeyPress = cxGrid4DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = cxGrid4DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid4DBBandedTableView1FocusedItemChanged
          OnFocusedRecordChanged = cxGrid4DBBandedTableView1FocusedRecordChanged
          OnSelectionChanged = cxGrid4DBBandedTableView1SelectionChanged
          DataController.DataSource = DS_UsersActive
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGrid4DBBandedTableView1spid
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
          OptionsView.GridLineColor = clGray
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.HeaderHeight = 35
          OptionsView.BandHeaders = False
          OnCustomDrawColumnHeader = cxGrid4DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid4DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid4DBBandedTableView1loginame: TcxGridDBBandedColumn
            Caption = #1051#1086#1075#1080#1085
            DataBinding.FieldName = 'loginame'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1hostname: TcxGridDBBandedColumn
            Caption = #1050#1086#1084#1087#1100#1102#1090#1077#1088
            DataBinding.FieldName = 'hostname'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 116
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1fio_users: TcxGridDBBandedColumn
            Caption = #1060'.'#1048'.'#1054'.'
            DataBinding.FieldName = 'FIO_users'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1login_time: TcxGridDBBandedColumn
            Caption = #1042#1093#1086#1076' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
            DataBinding.FieldName = 'login_time'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 121
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1last_batch: TcxGridDBBandedColumn
            Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1100
            DataBinding.FieldName = 'last_batch'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1spid: TcxGridDBBandedColumn
            Caption = 'SPID'
            DataBinding.FieldName = 'spid'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 46
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1lis_version: TcxGridDBBandedColumn
            Caption = #1042#1077#1088#1089#1080#1103' '#1051#1048#1057
            DataBinding.FieldName = 'lis_version'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1lis_datetime: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1092#1072#1081#1083#1072' '#1051#1048#1057
            DataBinding.FieldName = 'lis_datetime'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 128
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1ver_name: TcxGridDBBandedColumn
            Caption = #1042#1077#1088#1089#1080#1103' '#1085#1072' '#1057#1077#1088#1074#1077#1088#1077
            DataBinding.FieldName = 'ver_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 73
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1ver_datetime: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1092#1072#1081#1083#1072' '#1085#1072' '#1089#1077#1088#1074#1077#1088#1077
            DataBinding.FieldName = 'ver_datetime'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 122
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid4DBBandedTableView1personID: TcxGridDBBandedColumn
            Caption = 'PersonID'
            DataBinding.FieldName = 'personID'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGrid4DBBandedTableView1
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 26
    Width = 1035
    Height = 52
    Align = alTop
    BevelOuter = bvNone
    Color = clGrayText
    TabOrder = 5
    object cxLabel5: TcxLabel
      Left = 122
      Top = 12
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnShadow
      Style.Font.Charset = RUSSIAN_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -19
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      AnchorY = 26
    end
    object cxImage1: TcxImage
      Left = 0
      Top = 0
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F987000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
        80E8000075300000EA6000003A98000017709CBA513C00000D6A494441546843
        ED5A6954555796DE955292742A31E554C62A2D8D5A31892907D4440D31155B63
        A74DCA18A754629C454114905910502619028A200A0848109964101441410413
        9C501187000A22A0C84C640A72BFDEFBBDFBD2B56A55AFEEB202D68FDE6BED75
        DF39F7BE73BE6FEF6FEF73DF02FA7F63DBB78EFA26D9D2C2385B3A106F4BF931
        56541A6B4DA531D6742ECE9ABE396C4D2619F634467DFC5FCBF2769241A21D95
        327825D59990EEAAF5E32E041927DA13E26C08D156A41C75A00BA79C6991A323
        3DA37EFDE95AAE3BBD1F6F4DED02F85B7F42DE2E42CED7842C2FC2C99D840C77
        2D99633B08479D089C1D1CB22025CE9CF2321DE9557599DE37914CE6765A1767
        45152718E4B940C2D9DD8433BE84D33E84539E844C0FC209376D26D2B66B09A4
        386A33126DC1BE856A4F38D30C75C9DEB3A258D23B624BC7E3ED481180F9015A
        F0B97EDAE8677BFFCF0492B769091CD9AA2511B599EA537B3B13E9CE64237A17
        C908789D7474D1FFBF1048B0D3CAE91B33429235A5AB4BF7BC152D22BD781BAA
        146D4BD405B8445EC0EBA2FFF7F42FC52CF24972D0465FC07397C2614BC24113
        EA3EE64C53D42D7AD6D25C6872B425293AD03AE07F0BFE7F938F8E00B75B446C
        E28C5891A7BA45CFDA896D64289B0B60918B4E323A17E9E8A2AFCBC05F17B064
        40E4236D55C04B1D680858528ABA45CF5ABA13ED100012699D0B68B90A01918A
        00136D0B30F148532D5089B87C57A77F9D84428DF8B339ED55B7E8594BB5A73D
        0240A22CC0751117B9846C20F8AF1080BF6742FAECEFB084C623C67A04F619BE
        08AFA504D70504F785A4F9ECF305C17B1913DCD0B73160050D53B7E8593B664F
        7B257AA271918648440804AFE7B1D3ABC04517A0C80FB8E10FDC0A60DF0B1407
        01DF0702D7FDA0E43BA125C3040F12BEC2FDD8CFD116BF04CABE492DCAAED1CF
        AA5BF4ACA56E253F49BD0017D007376B65B39B238FF3CE4CC00DB8BC13B8EACB
        8099C40D26215719CBFC851D40BE2370D60E3863019C34861230415142A60F55
        B7E8593B6A470EA2712191643B10C1864C82351E6331480BF0A22B70C51328DC
        05DCE4E87F1FA2BDCAB880E72F7086BE730072AD816C33E0D42660EF04280727
        8F53B7E8594BB5A17552A0612684D2D05948B3FF1D762DE76EE43911B8C4E024
        C2054CA45064241262F9C8F51A8F65FE22DFFF89803990B519089A04254A7FAA
        BA45CF5A822DCD96CE12C4916F885B84EA43F3E1BE98703FE14BE01C4BE31CCB
        E8920767C1471BF56BEC7295B1CCCBFD6F99C0192BE0B49A81DE2490684D230E
        6C2425700D6BFED84A8E2203C862CFB361675DE76FD366E1923B4B8A2573D94B
        7B95B146FF7C3FCF16C861FD0BF84C2396D044289153DF50B7E8598323F509DD
        4875319BFA00899F0127D673219A68E5205195E2E44E83F3DBB57A979A90AB8C
        655E53BCFC9C46FFFCBD636BA0048DEF5262DEE8AF6ED1F3C635909E633BA019
        E133810C43762621604EEB486C6599D86BA32D1D47AE3296798D74F839793E73
        030741D3462B3830BDF703E7A41DFDB6297094BEB27F522792BFE02CAC63120C
        46404964451E52A41A59B15CE42A6399D7455E9E17E287E6B2FEA724A84BF7AE
        B16EC31066001C5FFDDF244E6ED47616012A913EBD457B95B1CCCB7D794E9E4F
        5F0304BF2D05FC95BA64EF9A923879981234B111B1F399C42AF6B50C4C242544
        8CB5607F721E6B80F37D79EE183F1FF76728FB27D42991A35F5297EC7D5312DF
        F98B123449C191C540DA0A76EE4C9291740699CE51D6445A9CC7322FF7D39603
        29DC76F74F81123DCD425DEAE9997264FA76659FBE828405402A83D3B98690EA
        323E2ABE0C9ABA099D0125744A9674357599A76BCAC1D1D64AE0A8C788E49A48
        5AA20529514E51AF32168FFB0408790B4AF0ABF94AC4D001EAD79FA2052BA369
        97E24E9E4AC9AB3B0B955B01F300FF115C9C9381C80F80988FB42E9F83DE0202
        476187A72BC8AEA5801CDA8D280CCFA92BF5B2856108F92BA1E4D1F2E39BA12D
        5810D78A016100EDEC026AAFA22BC71DDDFC7AF1D865343A5DC7A2D16E1C3A0B
        A3907EE90EFA79FF80B101B520E76AD0D6EADBE48BF9EAAABD6491CAA7E4DD51
        F77BFF3AB8E676C229BB0DDB4FB7616B7607836A41E6AD167403A8C8CDC34D3D
        42FEAFF8F7301FE2776AEB109F731D6FEEA9C35F12EAB120A616C3F6301187EA
        6E726E0A269F8AE7D51D7AD0221473F2697F4C4E35482AEAC0DE8B5D703DD309
        E7D31DF0CCEDC0B8880EBC61148E2BE7CF2223E70CAECED647465F7EE57EEF6D
        4425C42335BF185382EA99401DFE33BA0E13C21A416EEC36E520ABBBD9E4817E
        EA4E3D6011CA5AFABAAD7B59722B26785DC710B73B18ED5F8BFF887E84C86B80
        575E17ACB31F834CAFE254722C8A8A4BD07CF332BA7EC7BF998D16A1EED10F38
        56700F3343EAB124BE1EE4DAC4B5701B2FAF8DC39B56F178615B19C8E276162D
        EF89BA0857A692776BFB9F635B6073B20D56690FB12E200B6BBD1230C4341D56
        273BE0F75D17F65DEA869E7B13BC83A3D1DAD18EDAE309681A4AC8993418756D
        AD38985B8EB9E10D5896588F41BE751CF5128CDF7D171F46D76346F87DF4B12E
        06D9DEDFA7EEFA339923F4C8ABAD705C6833B6A4B7C03CFD1193688773EE63D8
        9FEEC600B7FB08BFA260CF7905C117800F0FB743DF2C1A9D3FB6E1C1370178C0
        048A5F211495DF815F4619164635696A6029FB30DF1A906539C60756C120A21A
        E3F7DE036DBED54D8E8F3E5277FF192C4059FF4BEF46C528AD1926692D306302
        D699AD1ADDCF8DA887F1D14708BAD08D8073DD08BCA0C0ED6C3768DD5954DE2B
        41A59F13CA8670010F2014A4C6C1EA481996C7B760294B68516C1D0CC29880F5
        5D8C72BB8E7739036F8756E115B752D0C61BC53F8F941CB3FB906767C9B48846
        18A536C388099832012B26E0C804CC8EB761B8DB5D1C2A02FCF21F6B3CF0A282
        671DAB1077EA3B546E33C2CDC1841B0309571D4DB024A21C46475B3535B09833
        30F2EBFBA00D67F18E5B9686C094904A4C08AEC433A6D7585E15AB5514FF84ED
        55669347A3B232B9116B8E3661432A1338FE032C325AB135AB0D1EDF3EC6EB66
        C998155A8F9002059E677F840FCFFD7B78133EDF5F804AA385B8C2E02F3389C2
        79FAD0DF7D0FB6A73A3404661FE416BAF13AFE689B8459517598165A0D7D063F
        7EFF3D0CDEC1B5B0F9722177DF5FA8489ED0FC95A061010D5895DC8095C94D30
        3CDA8C8DC77EF849460EDCFB1D52ABD07F752CE64534C09F25B423A71336599D
        78CEA608E50B67E07C7F3E0B063109AE85813BEEF2BD7626D080672C8AF19A65
        2AE67201CF8CB88F77583E9318FC5B4115F843C05DCECC4585ACEF8C57913CA1
        ED526E4F0FABC797471AB03C91B390D2ACC9C226C9C2092E6626B12DE747D824
        9561E0AAC3981D5C079FEF1E633B9F0D7DB73F44F28431C87B99BB1093B8F81C
        61B063198C397BAFB89461B8793A3E8EA9C7ACC81ABC1B568DA9215598B8EF1E
        DEDC5B81B1ECCF9A158236955BA9489EC0429541E4DED8F5F1E13A2C61BD0A89
        95494D58CB5930E65AD8CC24B630098B8C36D872C46D8FD76284F1114CF4AE80
        DBB75D782FF211564D5B895C3E89335F221C1AF8225E0B6CC6A43D9CB14D5998
        7FB80673BEA9C1FB1CFDE9079800CB670267E0F5C0BB18CD19E8B7F53AC8A48C
        0FF127355FBC4F6EB558185B8BCFB86348E758C6595895D284154C641D6743E4
        2444CCD35BB18589D89C6AC334A76C0C65F998657761E817C9C8E94348E7E89B
        BE3E07637637E039A35CCC8FAAC447D1B59875F0010CC2AB35F2D10FAEC26B7E
        65181B588151FEE518E8F23DC8B8B84445F304B61B2B9EDFF9109FC63CE46831
        91B83A7C9ED080155C0B1F843D8461AAB62644529211E3E32D1A42A699ED5878
        E00E5EDAC29D646B3542FBF5430657A3FEDCAFF10BD342CC0B2FC33C7E8D981D
        F94013FD191C7DE93E13F7576284672946FADEC1C8DDE518ECC185BCFE720BCD
        E44EF844E6A358BEEC5D838FA36B30EF904A22BE0E5F2636E0F55D5558CD44A4
        B0577346D67236445AE26B525AB08E09AD4E69C4AF1DCB3179A6339298001916
        C120B0149FB0EEE744D5E003066FC0DAD7449FC1FF91F53F7C67098670E487EF
        2EC3606F3E0FD69CEF24CB9B2FAA88FE41F3552CFBBA883E1FE01326F1493467
        83492C8EABC760970A2C4F6AD4D485C84A0A5CC6E25FF167995B26632634C6F7
        3EFA2F4E447F87522C6019CE65DD8B74DEE3BE3FED4015264BEB94E2DD578141
        CEB7D0DFF12686EF29C70B765C036B0BDA688BF2828AE81F342FFEA257A70F39
        3EECF8B54735A6873EE0F7FE5ACCE1AEF1824319BE38C287119391DA1069E97C
        29B748CD41C5F744764B931A30D6AB9C8BB7021F712675E0A570DF0EAD843ECB
        47A23F8E893C6F76057A9BAFE01969A1EB2F7F4F1635735434FF84F92963C8AD
        2D88EC2B5BF41C2BF01BB70A3E256F6BC02D61490901E9528B0534FB42F6CF62
        B5EFFBF3B9837DCACFBD6C7D031F463D64E93CC49F3800EF318919FCEE236D73
        A4572906D8DF809EC9157E0529784C26C579B4F9EE5734B7F867FE9B81BCABBB
        3C5A414E4D297CC034926589F26F9C89575CCBF1079F0A4C0CB887A941557837
        A41A067CAACE643708E122E5FEAEC7AF06E3FCCA31C2BD04BFD9760B2F5A16E1
        974605ACF1730A1915D690C99D0432B96D4CD60DC3D5DD7AD81CD187CC8B2792
        59F14A322FF120D362067023973615DD22A36BD5B4B1B08E0CAF36D386AB4D2C
        8507ECB7C9B0E012ADBD9CC6510E62B7A1D5E73FA68DB746F262FF1AFF37F174
        8CE8BF00A43861C6A3B2A79B0000000049454E44AE426082}
      Properties.GraphicClassName = 'TdxSmartImage'
      Properties.ShowFocusRect = False
      Style.BorderStyle = ebsNone
      TabOrder = 1
      Transparent = True
      Height = 52
      Width = 61
    end
    object cxImage2: TcxImage
      Left = 61
      Top = 0
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F987000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
        80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
        0B0C00000B0C013F4022C800000F64494441546843ED98795494579AC62B69E3
        BEC7BD13319A684C8376C7A841113B9D9EE93E3D3D996492D6246A9231C74977
        8F5B14714B628C4B3446836C1150904576048CA2026EB451446AAFA2BE2A0A8A
        1D850245596579E67D6FD567974C6606E8CCFC3167EE39CFF9AA2A65F83DF7BE
        F7DEE72DC5FFF9E19D52F7C6A2A8E29C45D1457748158B628A8C8B628AF3BC63
        8ACED3FB1452D4A2E8E243F49D3D5E51D6CDDEB1C5FFEA155DB49C3EFF07AF48
        CB62AF58EB1CEFA8D267E646E826CC8D6C1AECFCDFFEEF8C5F9F6DDDE91D63EB
        5A1C530CEFBF4164A68B4C76799FB075BC72B2B6E59593F6BA5752EDD65FA6D8
        D58B4FDAAF7A27D79EF24EB1C77927D7852C4AA8D9BF20BE66BB775CEDDF290E
        E8FB39517A3F1627DA177BC79674CA105EAC68C7935640C815B227E289203342
        5E5145581065C3C2A8622C386E15F28CB0E2E5705244113FBB3C238AB55EC9CD
        D39D48BD1B5412D1F21F5E40E0AB322AF1D1D94ABC935E8ED7524AF16A9C4D98
        997BBC082FD21F9C43CF9748FC7E5EA443F3492F13A010BDF624684FFE8C3437
        BA1C2B0E65C03B5C2270012C34FF9815F38E160ACD0D13CF32F7130DA39D583D
        1FB4E46686E7997E9BA0FFABD1DADE85FAE60E9436B4A1A0B605372B9B71A9B4
        11A72CF7105F7007A12A3B0EE6DEC6E757AAE093558155E7AAF1C7B0BFA0C35D
        01EFE03C78865B3097C0678516C223A410B3482F11FC4BF47E4E8805738E98F7
        3BB17A3EC8C02D36B090667F6D56B513B58FA3AB03E86843675B0BDA49ADB7CB
        D0366F105A662A101B1B0D7B75252ACB4A612D2A825EB2203B5FC2CB61044EF0
        2F1EB1E017472C9213ABE7C3D5C0EA4C8781AEAE2E747676A2A3A303EDEDED78
        F0E081505B5B1B5A5B5BFF83F8F3E6E666A17BF7EEE12EA9BEB109F657DD50FB
        9C02F6190A1C8D8A417979396CC5C5B01616C22C49B04946AC4C94303B98E0BF
        B5E0E7C1E6062756CFC70F19E80E2F8337B7B4A089201B1B1B71FFFE7D07ECDD
        BBB873E70EEAEBEB515757875ABB1D35F49DAA95BF45E51405AAC840E58CC770
        EC442C2A2B2B51565686D2525A05AB1585057ABC1F6F82475021C3635690F4E3
        18F821F896D636345695A3B1AE064D64844D3434343C62C04EF0769AF9CAC0BD
        2899A840E954929B02A9BBB6233A2EFEA181929212582C1698746ABC175B00F7
        4082277904FE880664F88765D3D1097B6A0CACAFCE80BDB955AC84BC0A6CA49E
        4DD0EB5B37AFC1325E01F36405AC931448FFCC1711B171282A2A46454585987D
        3650486564D428B1FC84113F0BB0C083E41EF02319E0D97F08CEB34F33DED205
        54ECF28161B802391FBE0995C90C83D10883C100233D259A51B3CD06D3EC3130
        10B8699C02E73E5A46A5132766BBAAAAEA61F9B001B3D90CBDEA2696C518C880
        04777F093FF333F5DD005F5EB2019EFD87E024DE9C6CC0B4F4D7503DA98076B4
        025F7FF00E0E0707E3F0E1C3247FF8858421E337F3A11E43FF9D5620ED453784
        C6C442ABD5E2D6AD5B6203BB1A906813B38177A30D78DE8FE00F4B78E19BBFC1
        C002BA7CD664560A033CFBF2A9C26A6A6A42EB8376A4478423970CDC1CABC0F7
        937E028D56833A2A9D1A92947C02378629904733FFBDDB40AC5AB50AA969E9A8
        A9A911A5E36A806532991C06A20C98F18D192FF89931F3501F0C5058ABE22B9F
        6FCED5E7AB1E1A6068166F5616AF44120125ADFF23AE0EA1321AA140E66F16A2
        81F6466B473BAEBB0D430EADCC553211B7F70BFC79ED3AE8F57A5457573F6280
        67DFC6A5E634F04EA411D30F99F03C69C6C182DE1BA06429715EF1A468B0F274
        8530C0E52383F34665F14A242527233D2B1BC60FDF46D66005B2079091B81818
        577F28DE5F206367DE7D1D5189893878E890281FAEFDEEE5E36A6059A45E1898
        71D084E95F9B9A9C583D1F0B23ADD242CE2D14B0FEE53B4794E0D9964F1859BC
        1A494949483B750A9DF49DCC49439141D067A68C46C620053286D26BB791484C
        4B834AAD46606020D4F4FC21032CD9C07BD17A4C3B20117C019E3B50D0EAC4EA
        F9F03C6E95381DCEA780F5C12987019E6D3E1A5DC5AB9148339B4A803C2A4EA7
        2359419B954CA4D1CCA73DAE408ADF215CBC7245DC0BBCB9D980EBE525CF7E31
        DDC6F2265E1E69C0D4AF043CA6ED37F6DEC0CB118512A7C3978E5AF17EBAA384
        D8005F50B21888574418484D15DFE155C8F9A7DF2281C01349C9AFFD0E29A74F
        E33E19E54B8D0DA854AA1F34C02A28287094D0711D9ED9CFF00598BAAF0F06E6
        87174AF38F511AA454F85E5A9980E3726168590CC465E46AA09DE246139D3091
        B40A3183FA21993E371214C7108E14B28172BEBC2AAB50CAF0249EFD220A738E
        12CAC7BB113A4CD96762783CF3A5A1F706E685154A9CC9E750A45D91EA30C0E5
        C2D072BE617119B181F4F474F19D4E0A7C3CF2D6AD4592CF46645DBC28DE7310
        E4EF3A0CA8516EA709D8B31A1537725048E07209F1E5C7069685EBE1F625C31B
        E1B6B70F06E6865A24CEE32F52365F7ED2B107B85C185A641BA7B894D8404242
        82D8980C514C3056BA512F5EBE8CEBD7AF8B78C0A5919F9F0FFF8000288D26DC
        8EF4C383A7688F44854347B736FF3B0E72B2817722B4787A8F1153F61A31794F
        1F0C501697388F5316C732EAC06403B5B5B58F884DDCBC7913FEFEFE62766589
        F724D7CFF975747C3C2AAE9CC7DD6715689A46713AD09F4ACC24CA4736CA06DE
        3EA6C553BB0BE0B6C780A777F7C1003512123713B328932F4F7618E012E01BD4
        55B76FDF1626F848E4CDC833C9E5C040FC9437283F4BA9EEAB6C56D478F4470D
        C5E97A8AD5A1414130D1C9C3DFE715E00CC506961ED5E2A7BB089EF4D417FADE
        1BA04642E266C223885620C9B10778E332B02CCE322CD7D77CC3B2B89CF8A461
        396E5CDAB4F63A94FDCE1D15045EF90C053BCF49080A0D154727CF3E873B6140
        9D8F25615A4CFA82E10DF8E9CE3E18F87990459A1D641699FCEDA412C2EF149B
        B73BA880ADA6F7045C4D9F3F0A5DFED7CBAAC60EDBCE8F5144FD4031F502A6D9
        23117224445C803CFB0CCF4954EC0132B034548B893B8D0C8F899FEB7A6F6076
        A059E266C23DC08C25F164A0B34D940ACFEC2322E80A6D3E0A5F9B0FDBAD1A32
        E3C838B20961840CDA2E9E834461CF4C1BD7443D41F837079174F2A4D8F00C2F
        8B73121BF843A80EE377E831E9733D26ECE88381590166C983E067529C5D126F
        A303BE456C5A79866555D5D4C21617011DDDBA973F78032AC92C22435E5E1E72
        7373F1FDB56BC8B99E0B83FB18E868F68D944A13B76DC0716A25B9E659F2EC8B
        5B980C18C8C05B211A8CFBCC8009A4F19FF6C180BBBF59E2668233F99B278A29
        8A36895A9767F5A168234B5B56239F12A76A940207572C81FF9123E2C4112710
        F503DFFDDE1B4AEA07D4047F7CA107F6FB07404FB5DE1D9E2F319D4E270CBC79
        4483B19FD22A90C67DA2EDBD016A24246E269EFFC661A0BDF99EA877B9AEE5DA
        AEA0F2B8702410D72846E75289FC85402F9DCD10A55545E64A2E9C432E45E95C
        FAFCEA0BE3B0F24F7F4602DD1B7C5A7587E7235436F0CFDF6AF0E47686D761EC
        F63E1878C14F926612FC0C8AB4AF53AC7ED07857940C43CB1986C5AB907A2603
        091FBD8F1C673F706EDE7494D5D5E33EB5A0D7668CC395918ECF1303FCF0F1A6
        4DB874E992D8B8DDE1F9C9515B18085663F4363DC3E3C96D7D30F0FC2149E266
        E2B9AFD98015CD0D7601EB1A7D59BC12691423626843EAA81FC8A4089D45FD40
        C6AE1D28F8720732E975F6606AE257BC85044AAC0174135FB870411C9BAEF02C
        3E8164036F7EABC6C8AD044F1ABD45F3C089D5F331FD6081C4CDC4B3074C78ED
        78211AEFD48A99E74BC955FC19E7A0E89818B450C796397914CE9089D3D4179C
        A646FF0CC17FE7361A279252C48515441757565696281F199EC1597C0768341A
        616069881A23B630BC16A3366B3A9D583D1FD40519B899984699FCEFC32C68A8
        AD16B32FB28E8BF8334EA23164E00105B6CAAB3948A1249A4A2652093EF53105
        92F67D89F3D917444BCA2B909D9D2DCAA73B3C9F400F0DD00A0CDFAC63788CDC
        D40703CF7D65D23F4BF053298FBF1A62C69DDB9562C6B9765DC59FA551694447
        473B7E76A12BEFDA07CB104726127E4275BF7801954EBAF87D883B3A36909999
        29CA470697E1790373B3C30696D01E18EA43F0BE1A8CF051F7DEC0B3FB8D7A6E
        26B8A9F8558884BAEA72012C9FDD2CAE635E859354FFB28116EA9B9B5B9A1133
        E071447353131B0B2DC1C9BF27B1012E212E1F195C86E7FA970DFC214885211B
        35184E26866FEC838169FB8C7A6E26DC28CEBE126C426D95F3774B8296730B8B
        4D7109B1011EFCDB11776505C1C1885FB1021999598FFC28CC06CE9F3F2FCAA7
        3B3C970F373BC240A00A833768316C23ADC40655EF0D5023A1E766623265F2C5
        64E056D95FCF6D57B1A9949414B107B844F8B6E66E8B23424E4E0E32CE9EC58D
        1B3770997A83B3F49A0D5CA42687679FC15DE179F665036FD10A0CDAC0F06A0C
        59DF070353F61AF4DC4C3CBDDB08EF80025495580530D7AEABD8140331987CFB
        CAE2CFF85788605A8D504A9D111111E2C4924B87C1D9800CCF4FA5520983868E
        D1402506ACD360C8C76A0C5ED707036EBB0DFAC9BB29CE521EF70A30A2A2D871
        EC75179B6063DC795DB97205D728FBF08CF34C32246F54D7735E0697679BC5D0
        2CEED894CA7C9874F978C39F0DD02A38D4E1C4EAF998BCCBA017CD0469A19F01
        A516070043BB1E7BAE27886B29B06428014652119C9AA4A1864547E2D4C9B36D
        2431B489522DBF3F7D391FA37C541848F003D7AA3060ADAAC489D5F3F1F41706
        3D37131329CE2E200336B34100F28CC940AE505A572852018114D0D348506AFA
        3CE75A3E522FE5E3E81925F6A528B139468995614A31D35EFB5498B94385B1BE
        04BB5E85C7FE4D85FE042EE0D7D0EB35AA002756CF0735122A4733A1C7ACFD7A
        945B74B018D4028C21F36EE623F36A3EE2B39508FA4E89DD492AAC8F56E1FD30
        157EEFAFC682AFD498BE538DB15BD518E4A3463FAAE57EEBB52435FA3BF5C43A
        350193B84C085C9EF187E0AB957862B5FA9662B534D189D5F33171873E9C04D6
        984FF5F03CA8C3BC035A4CDBA5C5D84FB4184A57FC605F7A6ED662083D87D173
        A8AF0EC336D1B94D97CF707E9246F093CE723E0E1D47229D2A64466C4E826671
        9D77071FB046D9D56F8DAAA8BF4FE92F9C48BD1B137617CD9FB8C3D831E13347
        261FCBB196348622EE986D5A210E5A8EB0C579456416C7CDF99F80CBF00C4D47
        63D7E0B5AA4E9AF9D6019BCC35037D0A35FD375AB307F8149EE8BFC1F2F5E3EB
        0B972AFED431D089D3B731E1C0ED4FC67FAAEF1A2F32790FC07DD55D237DB59D
        23B65B9B866FB7D9866D2BCA1BB6CD7A6AE856EBB1A15B8BF70CF22D5E3F708B
        65D9802D965F3DB1C1E2A1D85C3A5EB1BCBEBFF3CFFDCF8C313B4BFE91A0CF13
        B0956418BD557B89E26DE2A82D5AFF919B359F8DF0D5AE1AB149FDFA501FF5C2
        91EBF553156B95A39CFFF4FFC77F3F148A7F078EA4EF9DD93A20E30000000049
        454E44AE426082}
      Properties.ShowFocusRect = False
      Style.BorderStyle = ebsNone
      TabOrder = 2
      Transparent = True
      Visible = False
      Height = 52
      Width = 61
    end
    object cxMemo1: TcxMemo
      Left = 122
      Top = 0
      Align = alClient
      Lines.Strings = (
        '_')
      ParentFont = False
      Properties.Alignment = taLeftJustify
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      Properties.VisibleLineCount = 2
      Style.Color = clGrayText
      Style.Font.Charset = RUSSIAN_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.Color = clGrayText
      StyleDisabled.TextColor = clWhite
      TabOrder = 3
      Width = 913
    end
  end
  object ADOUsersRole: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    OnExecuteComplete = ADOUsersRoleExecuteComplete
    Left = 308
    Top = 60
  end
  object Query_Users: TADOQuery
    Connection = ADOUsersRole
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT v.* FROM view_users v INNER JOIN view_users_group vug ON ' +
        'v.users_id = vug.users_id'
      'WHERE (date_end IS NULL)'
      'ORDER BY fio_users')
    Left = 21
    Top = 124
  end
  object Query_Users_Users: TADOQuery
    Connection = ADOUsersRole
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'users_master_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM view_users_users WHERE users_master_id = :users_ma' +
        'ster_id'
      'AND users_detail_date_end IS NULL')
    Left = 408
    Top = 424
  end
  object DS_Users: TDataSource
    DataSet = Query_Users
    Left = 19
    Top = 152
  end
  object DS_Users_Users: TDataSource
    DataSet = Query_Users_Users
    Left = 409
    Top = 449
  end
  object Query1: TADOQuery
    Connection = ADOUsersRole
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM users')
    Left = 394
    Top = 54
  end
  object cxImageList_16: TcxImageList
    SourceDPI = 96
    BlendColor = clWindow
    BkColor = clWhite
    FormatVersion = 1
    DesignInfo = 3866902
    ImageInfo = <
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
          2000000000000004000000000000000000000000000000000000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C0C0C00000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C00000000000FFFF
          FF0000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
          00000000000000000000000000000000000000000000C0C0C00000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000FFFF000000000000C0C0C00000000000FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000000000000000000000C0C0C00000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF00FFFFFF00FFFFFF000000000000FFFF0000000000C0C0C00000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF000000
          000000000000FFFFFF00000000000000000000000000C0C0C00000000000FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF000000000000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000C0C0C00000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF000000
          000000000000FFFFFF00000000000000000000000000C0C0C00000000000FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000000000FF0000000000C0C0C000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF0000000000C0C0C00000000000FFFF
          FF00FFFFFF00FFFFFF00000000000000000000000000C0C0C000C0C0C000C0C0
          C00000000000000000000000000000000000C0C0C000C0C0C000C0C0C0000000
          0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
        MaskColor = clSilver
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
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000262626002626
          2600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000001950002626260000000000001950003232
          3200000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000500000319600808080000000B900003D
          B900323232000019500032323200000000000000000000000000000000000000
          0000626262000000000000005000000096000000DC002525FF002525FF000000
          B900003196000000800000005000000000000000000000000000000000000000
          00005656560000005000000096000000DC002525FF0000000000000000000000
          00000000DC000000B90000005000565656003E3E3E0000000000000000003232
          32003E3E3E00000096000000DC002525FF006B6BFF0000FFFF0000FFFF000000
          00000000DC000000DC000000B900000073003E3E3E00000000003E3E3E000000
          5000000096000000DC002525FF006B6BFF00B1B1FF00FFFFFF00FFFFFF00003D
          B9002525FF002525FF000000B900000073000000000000000000000000000000
          0000003DB9002525FF006B6BFF006B6BFF00B1C7FF0000000000000000000000
          0000B1B1FF008E8EFF002525FF00000080000000000000000000000000000019
          5000003196002525FF006B6BFF006B6BFF00B1C7FF0000FFFF0000FFFF000000
          0000B1B1FF008E8EFF004848FF000000B9000000730056565600262626000000
          50000000B9000000DC004848FF006B6BFF00B1B1FF0000FFFF0000FFFF000000
          0000B1B1FF006B6BFF002525FF00002573003232320000000000000000000000
          0000565656000000B9000000FE004848FF004848FF0000FFFF0000FFFF000000
          00006B6BFF002525FF000000DC00003196000000000000000000000000000000
          000026262600000073000000B9000000B9002525FF0000FFFF0000FFFF000000
          00002525FF000000DC0000009600000073002626260000000000000000003232
          32000019500032323200000050000000B9000000FE0000FFFF0000FFFF002525
          FF000000DC000000960000005000000000002626260000000000000000000000
          0000000000000000000000000000000073000000B9000000B9002525FF002525
          FF00003196000000730000000000000000000000000000000000000000000000
          00000000000000000000262626000025730000000000565656000000B9005656
          5600000000002626260032323200000000000000000000000000000000000000
          0000000000000000000032323200000000000000000000000000808080000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF3F0000F93F0000F8070000C0070000C001000080010000000300008001
          00008000000000010000C0030000C001000080010000F00F0000F0270000F77F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000C0C0C000C0C0
          C000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000080000000800000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF00FFFFFF000080000000800000008000000080
          000000800000FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000080000000800000FFFF
          FF00FFFFFF0000800000FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFF
          FF00FFFFFF0000800000FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF0000800000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000800000FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF0000800000FFFFFF00FFFFFF0000800000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF0000800000FFFFFF00FFFFFF00008000000080
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF00FFFFFF000080000000800000008000000080
          000000800000FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008000000080
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFF
          FF00FFFFFF0000000000000000000000000000000000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0
          C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000}
        MaskColor = clSilver
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
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000293131000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002931
          3100006B94002931310000000000000000000000000000000000000000000000
          0000000000009463630094636300000000000000000000000000006B940063CE
          FF0031ADD600006B940029313100000000000000000000000000000000000000
          000094636300DEADAD00F7DEDE00D6848400000000000000000000000000006B
          940063CEFF0031ADD600006B9400293131000000000000000000000000009463
          6300DEADAD00FFF7F700D6848400000000000000000000000000000000000000
          0000006B940063CEFF0031ADD600006B9400293131000000000094636300DEAD
          AD00FFF7F700D684840000000000000000000000000000000000000000000000
          000000000000006B940063CEFF0031ADD600006B940094636300DEADAD00FFF7
          F700D68484000000000000000000000000000000000000000000000000000000
          00000000000000000000006B940063CEFF0094636300DEADAD00FFF7F700D684
          8400000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000094636300DEADAD00FFF7F700D68484002931
          3100000000000000000000000000D68484009463630000000000000000000000
          0000000000000000000094636300DEADAD00FFF7F700D684840031ADD600006B
          9400293131000000000000000000D6848400FFFFFF0094636300000000009463
          63009463630094636300DEADAD00FFF7F700D6848400006B940063CEFF0031AD
          D6009463630094636300846352008C736300D6848400D684840094636300FFF7
          F700EFD6D600DEADAD00F7DEDE00D68484000000000000000000006B9400D684
          8400EFD6D600DEB5B500DEADAD008C736300000000000000000094636300D684
          8400D6848400D6848400EFD6D600D6848400000000000000000000000000D684
          8400FFF7F700EFD6D600DEB5B500D68484000000000000000000946363000000
          000000000000D6848400EFD6D600D6848400000000000000000000000000D684
          8400FFFFFF00FFF7F700D6848400000000000000000000000000000000000000
          00000000000094636300FFF7F700D6848400000000009463630094636300F7DE
          DE00FFFFFF00D684840000000000000000000000000000000000000000000000
          0000D6848400D6848400D684840000000000D6848400D6848400D6848400D684
          8400D68484000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        MaskColor = clBlack
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
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009BCA9E0093C59700FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2DAB4008CCB980061C178009BCE
          A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00A1D5A700C9E7D400FFFBFE0062DA86003DD1
          72008BC89400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C3E5C600ABDBB500FFFFFF00E3EEDE001FAE390010BC
          310018A22C00ADD8B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0086CD9600FFFFFF00FFFFFF00CEECCC0024B33E0001A2
          0F00007F000021832200F3F9F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00A2DFAF00E6F3E900FFFFFF00FDFFFD00BBE7B7006CD37C006DE9
          9A0029C153000D8F1D0086C28D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0091D9A300FFFFFF00F2FFF200F8FFF700B6EAB3003DC254004AD0
          6D0035CC620027CA53003AB14800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C6EED400CAEACF00FFFFFF00EAFFEA00F2FFF100B9F1B80003AF2A00009C
          080000880000028904000D8F1800C0E0C500FFFFFF00FFFFFF00FFFFFF00FFFF
          FF009DE2B500FFFCFC00FEFFFC00E5FFE500EBFFEA00ADEEAC0055CF6B004BCD
          660013A91F0000820000005F00007DBB8300FFFFFF00FFFFFF00FFFFFF00E4F8
          EA009CE5B200FFFFFF00F0FFF000E2FFE200E6FFE4009FE9A2009AE59F00C3FF
          D60076EDA7003CD7750014A32C004DA55300E2F1E400FFFFFF00FFFFFF00C0F1
          D000A7E9BD00FFFFFF00EDFFED00E0FFE000E5FFE200AAF0AF003AC65C0040C5
          590038BC490031C056002AD259002FB24400B5D6B800FFFFFF00FFFFFF00B0EB
          C400B9EDCB00FFFFFF00ECFFEC00E0FFE000E6FFE200AFF4B5000DB93F00009F
          0A00008500000074000000780100118A1C009ECCA300FFFFFF00FFFFFF00A3E9
          BA00CAF4D800FFFFFF00EDFFED00E2FFE200F1FFE7008CE79E0068DE8500A0EF
          A8004ECB60001CAD2F00007C03000063010083BB8900FFFFFF00FFFFFF009FE8
          B700DEF8E700FFFFFF00FFFFFF00FCFFF700FFFFF6008CE6A4008EE3A600FBFF
          F300BEFFD30093F7BC0054E58B0018AD3A0070B97A00FFFFFF00FFFFFF0090E5
          AB009FEAB800ADECC2009BE8B4009DE6B300A2E3B500A0E1B2009FDEAE009EDB
          AC0095D6A2008ACE940077CE8D0043BD5F006BBA7800FFFFFF00FFFFFF00B8ED
          CA009AE5B600D5F6E100F0FCF300FEFFFE00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F1F9F200D6ECD90092C89800ABD4B100FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009A9DE8009095E000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B1B2F2008794E4007086E4009C9F
          EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00A0A4F500C2CDF100FFFCF60084A3F3006894
          FE008A93EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C3C3FC00A5B1F100FFFFFF00DDDBF2000621E1001544
          F4002A4BDC00ABB0F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00818DF800FFFFFE00FFFFFF00BFC6F1000D30E5000010
          E0000002B7001D20B800F3F3FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009BABFE00E5E8FC00FFFFFF00E8F1FF009DABEF00829AEB009BBF
          FF004D74F7001A37CB008487E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF008D9EFE00FFFFFF00E4EBFF00DAE7FF0095A6F2003151EA005277
          FB005982FC00568FFF004365EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C6CAFF00C8D4FF00FFFFFF00D5E0FF00CCDEFF0091AAF5000006EA000000
          E1000000C500071AC2001532D100BDC2F400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0097ACFF00FDFEFF00F3F7FF00CCD9FF00BFD3FF007D97F5004B6AF1004E70
          F7001C3BE000000CBB00000090007A80DF00FFFFFF00FFFFFF00FFFFFF00E3EB
          FF0099B3FF00FFFFFF00E0E9FF00C5D3FF00B6CCFF006583F500A0B3F400E8FD
          FF009EC4FF006997FF002F53E2004A58DA00E1E3FB00FFFFFF00FFFFFF00BECE
          FF00A5BBFF00FFFFFF00DBE5FF00C0D0FF00B4CAFF00708FF9001B42F3003758
          F2004361E9005072F3005B95FF003E65F000B3B7EE00FFFFFF00FFFFFF00B2C4
          FF00BBCCFF00FFFFFF00DAE3FF00BFCFFF00B4CAFF007195FB000011F3000000
          E5000000CA000000B100050BAE00162DC9009CA4E900FFFFFF00FFFFFF00A8BD
          FF00CBD8FF00FFFFFF00DBE4FF00C1D1FF00BBD1FF004E6FFB005A73FA00A9C0
          FB005E7BF1002E4CE0000511B30000009B007D85DC00FFFFFF00FFFFFF00A9BE
          FF00E0E8FF00FFFFFF00FFFFFF00E7EDFF00DFEAFF005D7BFE007A93FE00FFFF
          FF00CCE4FF00B3D4FF0088B5FF00375EEC006E7CE200FFFFFF00FFFFFF0096AF
          FF00A0B8FF00ADC3FF009AB4FF0099B1FF009BB2FF0095ADFF008FA7FF008FA4
          FF008A9AFD008190F600758DF6004D70F500697AE600FFFFFF00FFFFFF00BBCB
          FF009DB7FF00D6E1FF00F0F3FF00FEFEFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F1F2FE00D2D6FA008B92E700A7AEEB00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009AC6D80090BFD800FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2D4E50088C8D9004DBEE0009BC9
          E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00A0CBE200C8E4ED00FFFCFC003EDDF60007D0
          F90084C2DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C3DEEE00A9D3E400FFFFFF00CEEEF30004AEE10000C3
          F90002A5D700ABD3E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0084C2DA00FFFFFF00F0FFFF009DECF20008B5E50000AB
          E100008CC0001D80AE00F3F9FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009CD1E900E9F0F400FEFFFF00C1FFFF007AE6EF0059D1EC0045E9
          FF0000C5F8000092C30084BFDB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF008FC8E000FFFFFF00C9FFFF00A7FFFF0063E2F20024BFEA002CD2
          FA0008CCFC0000D1FF0028ACDA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C6E8F000C9DCEE00FFFFFF00B0FFFF0090FFFF0051DEF60000AEEB0000A5
          E2000092C7000093C6000091C400BDDCE900FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0093D2E600FDFDFE00DDFFFF00A1FFFF007AF9FF003AD6F5003ECEF20039D2
          F70007B0E100008CBF00006698007AB3D100FFFFFF00FFFFFF00FFFFFF00E3F2
          F9008DCCE800FFFFFF00C4FFFF0095FEFF0069F3FF001FCEF60091E4F500B5FF
          FF0045EAFF0003D6FF0000ABDF0048A0C800E1EFF600FFFFFF00FFFFFF00B3E1
          F2009AD6EB00FFFFFF00BCFFFF008EFDFF0061EFFF0024D3FA001BC6F30031C9
          F10027C0E9000BC1F10000D8FF001AB0DF00B3D3E700FFFFFF00FFFFFF00A0D7
          EA00AFDDED00FFFFFF00B9FFFF008BFCFF005FEDFF0023D7FD0000BBF60000A6
          E5000091CB00007FB4000081B3000689BB0099C8DE00FFFFFF00FFFFFF008FD2
          E900C2E8F300FFFFFF00B9FFFF008BFFFF005DF1FF0006D2FF0065E5FF009DF3
          FD003ED0F4000BB2E3000084B900006396007DB4CE00FFFFFF00FFFFFF008DD1
          E800D8F2F800FFFFFF00F1FFFF00C2FFFF00A0FBFF0032DAFF0081E6FF00F5FF
          FF00A0FDFF0065F6FF001CEBFF0000B0E6006BB3D200FFFFFF00FFFFFF0079CA
          E5008BD4EA0098D7ED008ACFEA008ED0E90092D1E90092D1E8008CCEE6008CCB
          E50088C7DF007DC3DA005DC2E40022B5E1005EB3D300FFFFFF00FFFFFF00A7DB
          ED0087C9E500D0EBF600EFF8FC00FEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F1F8FA00D4E7F1008CC1D300A6CFE000FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000001A00400A560FAF219332EF2FAE46FF30B049FF2496
          34EF0B5710AF001A004000000000000000000000000000000000000000000000
          000000060010045407BF2EB445FF50E979FF57F083FF5EF78EFF63FC95FF5FF8
          8EFF58F184FF33B94CFF045507BF000600100000000000000000000000000006
          00100B6811CF3ED35CFF48E16DFF4FE877FF55EE80FF5BF489FF5EF78DFF5BF4
          89FF56EF81FF4FE877FF44DA66FF0D6913CF0006001000000000000000000353
          04BF35CB50FF3FD85FFF46DF69FF4CE572FF51EA7AFF55EE80FF57F082FF55EE
          80FF51EA7AFF4CE572FF46DF69FF3CD25AFF045305BF00000000001A00401EA4
          2DFF36CF51FF3CD55AFF42DB63FF4FE271FF58E67BFF5DEA82FF5EEB83FF5AE9
          7FFF53E677FF47E06BFF42DB63FF3CD55AFF22A834FF001A0040055108AF2CC5
          42FF32CB4BFF41D35CFF5ADC74FF62E17DFF65E482FF67E685FF67E786FF67E6
          85FF65E482FF5FE17BFF47D864FF38D154FF32CB4CFF055208AF0D8014EF28C1
          3CFF3ECB53FF63D876FF67DC7CFF6ADF80FF6CE184FF6EE286FF6EE387FF6EE3
          87FF6CE184FF6ADF81FF67DC7CFF43D05BFF2EC745FF108217EF108F18FF28BE
          3AFF65D374FF6CD87DFF6FDB81FF72DD84FF74DF87FF75E089FF75E18AFF75E0
          89FF74DF88FF72DD85FF6FDB81FF69D779FF2EC442FF13921CFF0E8D14FF3EC2
          4BFF73D57FFF76D883FF78DA87FF7ADC8AFF7CDE8CFF7DDE8DFF7DDF8EFF7DDF
          8DFF7CDE8CFF7BDC8AFF79DA87FF76D883FF42C652FF109018FF087C0DEF4AC3
          54FF7ED687FF80D88AFF82DA8DFF84DC8FFF85DD91FF86DE92FF86DE93FF86DE
          92FF85DD91FF84DC8FFF82DA8DFF80D88AFF4EC65AFF0A7D10EF024F03AF4DC1
          55FF89D78FFF8AD992FF8CDB94FF8DDC96FF8EDD98FF8FDD98FF8FDE99FF8FDE
          98FF8EDD98FF8DDC96FF8CDB94FF8AD992FF50C459FF035004AF001A00402298
          26FF93D997FF95DA9AFF96DC9BFF97DD9DFF98DE9EFF98DE9FFF98DE9FFF98DE
          9FFF98DE9EFF97DD9DFF96DC9CFF95DA9AFF249A29FF001A0040000000000150
          01BF79CA7BFFA0DDA3FFA1DEA5FFA2DEA6FFA2DFA7FFA3E0A7FFA3E0A8FFA3E0
          A7FFA2DFA7FFA2DFA6FFA1DEA5FF7ACB7EFF015101BF00000000000000000006
          00100B610CCF8CD08EFFAEE1B0FFAEE1B1FFAFE2B1FFAFE2B2FFAFE2B2FFAFE2
          B2FFAFE2B1FFAEE1B1FF8ED190FF0C620DCF0006001000000000000000000000
          000000060010015001BF5CAC5DFFAEE0AFFFBAE5BCFFBBE5BCFFBBE6BCFFBBE5
          BCFFAFE0B0FF5DAC5DFF0B540BBF000600100000000000000000000000000000
          00000000000000000000001A0040004D01AF258225EF319432FF319432FF2582
          25EF014D01AF001A004000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000002640000073AF0000AFEF0000C6FF0000C8FF0000
          B2EF000074AF0000264000000000000000000000000000000000000000000000
          000000000A10000077BF0707C7FF2A2AEBFF5050F4FF5858F9FF5858FCFF5050
          FAFF2A2AF4FF0707CDFF000077BF00000A100000000000000000000000000000
          0A10000087CF1717D8FF4F4FEAFF5555EFFF5555F4FF5555F8FF5555FBFF5555
          FAFF5555F6FF4F4FF0FF1717E1FF000089CF00000A1000000000000000000000
          76BF0F0FD0FF3030DFFF3030E4FF3030EAFF3030EFFF3030F3FF3030F5FF3030
          F4FF3030F0FF3030ECFF3030E6FF0F0FD8FF000076BF00000000000026400000
          B7FF0909D0FF0B0BD6FF0F0FDDFF1919E4FF2121E9FF2424EDFF2424EEFF2121
          EDFF1919EAFF0F0FE4FF0B0BDFFF0909D8FF0000BCFF0000264000006EAF0000
          C4FF0000CBFF1313D4FF2C2CDEFF2E2EE2FF2E2EE6FF2E2EE8FF2E2EE9FF2E2E
          E9FF2E2EE7FF2C2CE3FF1313DBFF0000D3FF0000CDFF00006FAF00009DEF0000
          C1FF1919CCFF3F3FD9FF3F3FDDFF3F3FE0FF3F3FE3FF3F3FE5FF3F3FE6FF3F3F
          E5FF3F3FE4FF3F3FE1FF3F3FDEFF1919D3FF0000C9FF00009FEF0000A9FF0505
          BEFF4A4AD4FF4F4FD8FF4F4FDCFF4F4FDFFF4F4FE1FF4F4FE2FF4F4FE3FF4F4F
          E2FF4F4FE1FF4F4FDFFF4F4FDDFF4A4AD9FF0505C5FF0000ADFF0000A6FF2A2A
          C3FF6060D6FF6060D9FF6060DBFF6060DEFF6060DFFF6060E0FF6060E1FF6060
          E1FF6060E0FF6060DEFF6060DCFF6060DAFF2A2AC9FF0000AAFF000098EF3838
          C3FF6F6FD7FF6F6FD9FF6F6FDBFF6F6FDDFF6F6FDEFF6F6FDFFF6F6FE0FF6F6F
          E0FF6F6FDFFF6F6FDEFF6F6FDCFF6F6FDAFF3838C8FF00009BEF00006BAF3F3F
          C1FF7F7FD8FF7F7FDAFF7F7FDCFF7F7FDDFF7F7FDEFF7F7FDFFF7F7FDFFF7F7F
          DFFF7F7FDFFF7F7FDEFF7F7FDDFF7F7FDBFF3F3FC6FF00006CAF000026401111
          A8FF8D8DDAFF8D8DDBFF8D8DDDFF8D8DDEFF8D8DDFFF8D8DDFFF8D8DE0FF8D8D
          E0FF8D8DDFFF8D8DDEFF8D8DDDFF8D8DDCFF1111ACFF00002640000000000000
          73BF5757C3FF9D9DDEFF9D9DDFFF9D9DE0FF9D9DE1FF9D9DE1FF9D9DE1FF9D9D
          E1FF9D9DE1FF9D9DE0FF9D9DDFFF5757C6FF000074BF00000000000000000000
          0A1000007ECF6B6BC8FFADADE2FFADADE2FFADADE3FFADADE3FFADADE4FFADAD
          E4FFADADE3FFADADE3FF6B6BCAFF00007FCF00000A1000000000000000000000
          000000000A10000073BF3939B2FF7F7FCFFFBBBBE6FFBBBBE7FFBBBBE7FFBBBB
          E7FF7F7FD0FF3939B3FF000073BF00000A100000000000000000000000000000
          000000000000000000000000264000006AAF000091EF2525A9FF1919A5FF0000
          91EF00006AAF0000264000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000005112540194373AF397EB3EF4B99CAFF4D99CAFF3D7F
          B3EF1B4373AF0511254000000000000000000000000000000000000000000000
          000001040910133C76BF4CAAD7FF8BEFFFFFA9F4FFFFB4F7FFFFB7F7FFFFB2F7
          FFFF9AF3FFFF59AED7FF153C76BF010409100000000000000000000000000104
          09101C548CCF66DDF8FF9AF0FFFFA9F4FFFFB4F7FFFFBEF9FFFFC3FBFFFFC1FA
          FFFFB8F8FFFFAAF4FFFF7AE2F8FF20548CCF010409100000000000000000123B
          76BF53D8F8FF7CEAFFFF8BEEFFFF99F2FFFFA8F6FFFFB7FAFFFFC3FDFFFFBCFB
          FFFFAEF7FFFF9FF4FFFF90F0FFFF69DEF8FF133C76BF00000000051125402DA2
          D7FF51E2FFFF64E6FFFF77EBFFFF8DF0FFFFA1F5FFFFB0F9FFFFB9FBFFFFB3FA
          FFFFA3F6FFFF8EF1FFFF7CECFFFF69E8FFFF3CA7D7FF05112540104073AF36DB
          FFFF47DFFFFF65E6FFFF83ECFFFF92F0FFFF9FF4FFFFA9F6FFFFAFF8FFFFACF7
          FFFFA3F5FFFF96F1FFFF7AECFFFF5FE6FFFF4EE1FFFF134173AF1875B3EF30D9
          FFFF53E1FFFF7CE9FFFF88ECFFFF93EFFFFF9DF2FFFFA4F4FFFFA7F5FFFFA6F4
          FFFFA0F3FFFF97F0FFFF8DEEFFFF68E6FFFF47DFFFFF2278B3EF188BCAFF2DD8
          FFFF72E6FFFF81E9FFFF8BECFFFF93EEFFFF9BF0FFFFA0F2FFFFA2F2FFFFA1F2
          FFFF9DF1FFFF96EFFFFF8EEDFFFF81EAFFFF42DDFFFF238ECAFF148ACAFF44DB
          FFFF7CE7FFFF85E9FFFF8DECFFFF94EDFFFF9AEFFFFF9EF0FFFFA0F0FFFF9FF0
          FFFF9CEFFFFF97EEFFFF90ECFFFF88EAFFFF55E0FFFF1E8DCAFF0F72B3EF47DB
          FFFF83E7FFFF8AEAFFFF91EBFFFF96EDFFFF9BEEFFFF9DEFFFFF9FEFFFFF9EEF
          FFFF9CEEFFFF98EDFFFF93ECFFFF8CEAFFFF56DFFFFF1675B3EF0C3E73AF45DA
          FFFF89E8FFFF8FEAFFFF95ECFFFF99EDFFFF9DEEFFFF9FEEFFFFA0EEFFFF9FEE
          FFFF9EEEFFFF9BEDFFFF96ECFFFF92EAFFFF52DEFFFF0E3F73AF05112540199C
          D7FF90E9FFFF95EAFFFF9AECFFFF9DEDFFFFA0EDFFFFA1EEFFFFA2EEFFFFA2EE
          FFFFA0EEFFFF9EEDFFFF9BECFFFF97EBFFFF209ED7FF05112540000000000D3A
          76BF59D5F8FF9EECFFFFA1EDFFFFA4EDFFFFA6EEFFFFA7EEFFFFA8EEFFFFA8EE
          FFFFA7EEFFFFA5EDFFFFA2EDFFFF5CD6F8FF0E3A76BF00000000000000000104
          09100D508CCF6CD9F8FFADEEFFFFADEFFFFFAFEFFFFFB0EFFFFFB0F0FFFFB0F0
          FFFFAFEFFFFFAEEFFFFF6DD9F8FF0D508CCF0104091000000000000000000000
          0000010409100D3A76BF41A4D7FF7FE5FFFFBBF2FFFFBBF2FFFFBBF2FFFFBBF2
          FFFF7FE5FFFF41A4D7FF0D3A76BF010409100000000000000000000000000000
          00000000000000000000051125400C3E73AF0B71B3EF2F8ECAFF238CCAFF0B71
          B3EF0C3E73AF0511254000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000DEDFF800828A
          DC00D4D4F500FFFFFF00F1F1FB009C9CE100F9F9FD00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008592F2002059
          F2001636D0009493D2004859D2001048E800373ED500FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BABDD700255F
          FF002A6EFF002147DB00255EFF00084FFF001833CA008B867C00C2C2BC00DADA
          DB00CCCCCC00E6E6E600FFFFFF00FFFFFF00FFFFFF00FFFFFF00BCBAB0007175
          AB003B68F8002D71FF000E49F9004454DA00C6BBAC007B7969004C4B4E003C3B
          3B003B3A3A00484747009B9B9B00FFFFFF00FFFFFF00FFFFFF00A3A19200C0B3
          AC004B6DF7001F60FF000848FD003248C700E9E0E100E9E5D600C6C4C600A3A1
          A1005F5E5E00413F3F0046454500B1B1B100FFFFFF00FFFFFF00CCC8BB007B8F
          E500175CFF003952D3003A58CF000037FB006374D800B8B2B200B3B0A800CDCA
          CA00CDCBCB00605F5F006765650066656500FCFCFC00FFFFFF00FCFBFB0098A8
          DD001447F600B1B2DA00ECDDC6003761F600072FDE00A7A3BB00716E5E007F7F
          7F00FFFEFE0098969600D0CDCD0094929200B2B2B200FFFFFF00FFFFFF00FFFF
          FF00EDECF400C7C7C700CFCCBA00C7C1CE00BEBCCF00E4E1DA007C7A7B005352
          5200D1CFCF00DFDFDF00EEEDED00CFCCCC005D5C5C00FEFEFE00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00DFDFDC00C3C1BA00E5E3E400DAD7D7006060
          6000FFFFFF00FFFFFF00FFFEFE00F2EEEE007E7C7C00B9B9B900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFBEBE00FFFFFF008584
          8400F6F6F600FFFFFF00FFFFFF00FFFFFF00BBB8B80084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEB00E7E4E400DEDB
          DB0084848400FFFFFF00FFFFFF00FFFFFF00B9B6B60085848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C4C400FFFE
          FE007A797900D3D3D300EDECEC00CDCCCC008B898900A6A6A600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3F300C6C4
          C400E2DFDF007271710058575700817E7E006D6C6C00F0F0F000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D7D7
          D700C3C1C100B2AFAF008A89890071707000D6D6D600FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00D8D8D800B6B5B500AEAEAE00C8C8C800FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWindow
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C6C6C6008D8D8D007D7D7D0089898900B0B0B000ECECEC00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3B3
          B30054535300535252005A595900515050004644440078787800C0C0C000DBDB
          DB00CCCCCC00E6E6E600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3C3C3005C5B
          5B00B0ADAD00EDE9E900F6F4F400CECCCC00A09E9E00777575004F4E4E003C3B
          3B003B3A3A00484747009B9B9B00FFFFFF00FFFFFF00FFFFFF008C8B8B00D3D0
          D000DCD9D900DAD9D900F7F7F700FDFDFD00FFFEFE00D4D1D100C7C4C400A3A1
          A1005F5E5E00413F3F0046454500B1B1B100FFFFFF00FFFFFF00BABABA00F2EE
          EE00BCB9B900747474009E9E9E00EBEAEA00FFFFFF00A9A8A800B1AEAE00CDCA
          CA00CDCBCB00605F5F006765650066656500FCFCFC00FFFFFF00FBFBFB00B8B8
          B800DEDBDB00E6E2E200C8C5C5007E7C7C0060606000ADACAB006A6867007F7F
          7F00FFFEFE0098969600D0CDCD0094929200B2B2B200FFFFFF00FFFFFF00FFFF
          FF00D6D6D600C9C9C900CBCAC900E6DFD000DDD4B500E6E1D20087817D005550
          4900D5D2B400E2E0DA00F0EEEE00CFCBCC005D5C5C00FEFEFE00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00DFE0E200AFB3D600B1AFE500B5B6D1005C68
          9200FFFFFF00FFFFFF00FFFFFE00F3F0ED007E7C7C00B9B9B900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B4C8FE003757F00075A9FF004368
          D600BEBFFD00FFFFFF00FFFFFF00FFFFFF00BBB8B80084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00BDC3FF00417EFF004ACDFF004CE0FF004398
          F700406FE800FAFAFF00FFFFFF00FFFFFF00B9B6B60085848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF008B9AFF004597FF002EF7FF0000E2FF0056E4
          FF003C73E200A8B1E900E8E9F000D4D0BE008B898900A6A6A600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00A1B6FF004492FF0039D9FF0039FFFF004EC9
          FF003954F0005D5E7C006B645000807E7E006D6C6C00F0F0F000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00E7EBFF00707EFF004591FF004A9CFF00467F
          FE007B95DB00AAA3A400918E850071707100D6D6D600FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7ECFF00A1B8FF008C9EFF00C6CB
          FF00E2E7F800D7D5CC00D2D2D100F6F6F600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F4FF00EFF2FF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F6FAF60069B56F0062B86C0093C39400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F6F6F600CBCBCB00BEBEBE00C7C7C700EBEBEB00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0041C25E0057FF9A004DA85300FFFFFF00FFFFFF00FFFFFF00B3B3
          B30054535300535252005A595900515050004644440079727800BFC2BF007DC9
          82005CB4650048CE6A0054F3900034AE460060AF690093C39400C3C3C3005C5B
          5B00B0ADAD00EDE9E900F6F4F400CECCCC00A09E9E0073677100575A4D0058E1
          7B005AFFA1004FEF870047DC770050F08C0052FF94003EA74A008C8B8B00D3D0
          D000DCD9D900DAD9D900F7F7F700FDFDFD00FFFEFE00DACED600BCC2B60063D8
          73005AD67A0059E381004EEC86004ED271004DCE690068B56D00BABABA00F2EE
          EE00BCB9B900747474009E9E9E00EBEAEA00FFFFFF00ABA8A900B0AFAF00BCBA
          B800A6A895005ADF790044FF8D0043994B00EFF1EE00F5F9F500FBFBFB00B8B8
          B800DEDBDB00E6E2E200C8C5C5007E7C7C0060606000ACABAB0069676800907D
          8E00F4F2EE0058CC680044D568004F9D5800CDBFCB00FFFFFF00FFFFFF00FFFF
          FF00D6D6D600C9C9C900CAC8C800E0DDDD00D0CDCD00DAD7D7007D7B7B005250
          5100D6D6D600D3D5D200DAD7D300CDCFC90063636300FEFEFE00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00DCDDDD00BEBEBE00E8E6E600D9D6D6006060
          6000FFFFFF00FFFFFF00FFFFFF00F6EBF1007A7A7800BAB9B900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BFBEBE00FFFFFF008584
          8400F6F6F600FFFFFF00FFFFFF00FFFFFF00BBB8B80084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEB00E7E4E400DEDB
          DB0084848400FFFFFF00FFFFFF00FFFFFF00B9B6B60085848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5C4C400FFFE
          FE007A797900D3D3D300EDECEC00CDCCCC008B898900A6A6A600FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3F3F300C6C4
          C400E2DFDF007271710058575700817E7E006D6C6C00F0F0F000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D7D7
          D700C3C1C100B2AFAF008A89890071707000D6D6D600FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00D8D8D800B6B5B500AEAEAE00C8C8C800FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F5D9BC00DE8A3600DF9D5A00E7AD7400F0BE8E00EADBCA00F4F5
          F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FAD0A500F2B37400EFAC6800E7A15A00E58C3300D5A06D00B1BB
          C600B4B4B500BCBCBC00C7C7C700CFCFCF00FAFAFA00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F9D8B000F3AE6A00F5B37000F0AA6200EE973D00E2B17D00CED9
          E500CBCBCB00CCCCCC00C3C3C300C5C5C500AEAEAE00FFFFFF00FFFFFF00FFFF
          FF00FFFDFC00F9D09D00C2631A00C8713000D17A3000D67A2700E1B07F00CDD8
          E300C0C0C000B4B4B400ACACAC00CCCCCC00B6B6B600FFFFFF00FCF5EA00EEB9
          8200D87D2800F3C07F00D1712600BE5C0F00D2863500C95A0000E4BD9800CDD7
          DF00BDBDBD00C8C8C800C9C9C900D6D6D600B5B5B500FFFFFF00FBE7D200EFB1
          7700F19D5B00FFCC84009FA593003E89B90083BDE200D6B59500FCD7B200C3C7
          CB00B6B6B600DEDEDE00F9F9F900FCFCFC00BBBBBB00FFFFFF00FEE8D500EBAF
          6D00DA974900FFCA7C00417C9700098BE7006DD3FF00AAD4E500FFD5AA00DEE1
          E500D5D5D500CACACA00C4C4C400FAFAFA00C6C6C600FFFFFF00FFE5D500BEAC
          4B004EC13700FFD88F0095A9B100007ECF000086DA0091BAD800FFE3BA00DDE6
          EE00CED4DB00CCD1D500C7CACE00ECEEF000C2C4C600FFFFFF00FFE3CF00E0B5
          710081E57D00EFD98C00FFBB7B00AFAA89007C957D00DAB47E00FFCE9F00DDD6
          D200CFCAC400D1CECA00CECFCE00D4DADF00B4B8BA00FFFFFF00FEE4C700FFC9
          8C0090B0B400B2CFC100FFDF8D00FFC77100FFC06400FDAB4D00F6A95C00FDB4
          6800FFB56800FEB36700FEBB7400FCC48B00E6A86B00FFFFFF00FFECCF00FFD8
          96003F475000004478005291A800E8C9B100F8D2AF00E3D4C700E3C8AD00E4C2
          9F00E4BE9600E3B98D00E2B18000FBC08300EECFB000FFFFFF00FFE8CA00FFD1
          9400A5927B001B242500173F5400E4CBB100F5DDC100CAE9FF00C2D6EB00BED4
          E900B8CEE400BFD7EF00A7B6C400FFFFFF00FFFFFF00FFFFFF00FDE8D300F9C4
          8700F9BB6900FAB36500F7B05E00EAA35100E8A56300E8B07800E1A66A00DCA3
          6700D79E6500DAA36E00CEAA7D00FFFFFF00FFFFFF00FFFFFF00F8F6F300F8E3
          CD00FEC99600FFCB9900FBC58D00F1BA8300ECB07200ECA55F00ECA45D00ECA2
          5700EB9C4E00E9974100FCD9BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F6FAF60069B56F0062B86C0093C39400FFFFFF00FFFFFF00FFFCFA00F2C9
          9F00E3B38400ECCBAD00F6E5D300FDFAF600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0041C25E0057FF9A004DA85300FFFFFF00FFFFFF00FCDDBF00F0B1
          7000F0AD6900E99E5400E0904100DF904300E79C5400DBC0B100D1D9DC0070BE
          76005BB4640048CE6A0054F3900034AE460060AF690093C39400FBD9B600EFAE
          6E00EEAA6600ECA86300ECA76100E8A15900E7903700E5B99F00B6C6C70056DF
          790054FF9B004FEE870048DD78004FF08B0043FA85003DA74900FBDCBF00F4B5
          7100F9BA7700F3B06C00EFAA6200EFA85C00E8913500E5B99D00C1D5D7005ED3
          6E0063DF830059E481004DED850046CE6A0052C971006DB97300FEE7C900D278
          2900BA612800CF813E00D07B3300D7874300E1873100E3C19F00C8D5E200BDBC
          B900A5A9950056DB740030FE790048AB5000E0C7D100BEC0BD00FFEFD200CA74
          2700A22E0000D76A0C00DE882F00B4540000CD6E1B00EFD5B600D4DEEA00E4D0
          E400CDCDC80058CC680041D1640065B66E00FCE1F700C0BAC000FFE1C200FCCB
          9000B57C5100917A5700CBD6C700CE7A2900E8AC7200EFD2B500D3DEE800C9C8
          C900CFD0D000D2D9CE00D7D3CE00D7DAD500E8E7E800BEBEBE00FFE5C200E2C1
          8C001E83BB001F93E40056B9FF009DC7E800FFE2BF00EEC59D00CED8E300BFC0
          BF00C7C6C700EFE6EF00F8EFF700F0EAF000EEEFEE00BEBEBE00FFF1CE00A798
          6E00005AA60055B0EA00A4E3FF0082D7FF00E8CDB400F7CBA000D9E2E700D0D0
          D000CFCFCF00C4C4C400BCBCBC00DFDFDF00FBFBFB00C0C0C000FFEBCE00E8BA
          84000F83C1000079BF00108DD0003FA5E200F5D2B900FBD2A900EDF7F900E6E6
          E600E5E6E600E2E2E200DDDDDD00EBEBEB00FFFFFF00C2C2C200FFEAD300FBC2
          7A00B6C5C5004592AE002C86AB0087B8CB00F6D0AB00FEDCB900DAE9F900C7D2
          DC00CCD7E200CBD7E200CCD8E400C3D0DC00D8E3EF00BEC6CE00FEEFE100F4B0
          6200FFBD6B00FFBE6D00FFB96900FFBC6D00EBAA5E00F2BA8200F9D0A800F8D2
          AB00F3CFAC00EECEAC00E9CCAE00E3C9AF00EAD2BA00CAB7A300FEFCFA00FFD6
          B100FEC08500FDBE8200FBB97A00F7B26F00F4B06E00EEA86200EC9F5100EB9C
          4C00EB9B4A00EB9A4800EB994700EC9A4800F3A24C00E6B88900FFFFFF00FCFD
          FD00FCF6F100FDF5EE00FDF4EA00FCF1E600FCEEE100FCECDD00FCEAD800FBE6
          D200FBE4CD00FBE1C700FBDEC100FBDDBA00F9D4B500F7F5F500FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000E3E3F900828A
          DC00D5D6F600FFFFFF00F1F1FB009C9CE100F9F9FD00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008A97EB001C57
          F5001C3BD2009C98D1004C5CD200124AE8003737CF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC8DD000246
          FF00246AFF001B40D700245CFF000450FF002A34C700C9B8AF00DDDED900E6E6
          E700F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFE4B600A689
          9D002F5CEC002A70FF000B4CFF003C45C600FBA03B00F6C98500BFCDDF00BCBC
          BC00BABABA00BEBEBE00C2C2C200D0D0D000E6E6E600FFFFFF00FFE5B200FBB2
          6C004060E9001A64FF00044FFF003145C200EA913B00F4C58500C8D7E800CBCB
          CB00CDCDCD00CACACA00C4C4C400C0C0C000B2B2B200D2D2D200FFECBA00817B
          B500065CFF004756D1004B56C1000042FF00363BAA00E8C5A500D1D7D600BFBF
          BF00BEBEBE00BBBBBB00BCBCBC00BFBFBF00E3E3E300B5B5B500FFEBC000938A
          B0001448F000C1775C00FFA436002D52E000082BDB00C8B9C200E8E9DC00D0D0
          D000CECECE00C4C4C400C1C1C100BBBBBB00D9D9D900BDBDBD00FFE0BF00FFCE
          8700AD868400927E5D00D9D7A700C57D4C00D8AC9600F7D6AE00D2DCE700C8C8
          C800CECECE00E7E7E700E2E2E200D5D5D500E4E4E400BEBEBE00FFE5C400E2BE
          86002A81A0002393DD0053B7FF00AAC9D400FFE6AE00EDC49E00CDD8E400BFBF
          BF00C6C6C600E3E3E300ECECEC00EBEBEB00F1F1F100BEBEBE00FFF1CE00A798
          6E00005AA50055B0EA00A4E3FF0082D7FF00E8CDB400F7CBA000D9E2E700D0D0
          D000CFCFCF00C4C4C400BCBCBC00DFDFDF00FBFBFB00C0C0C000FFEBCE00E8BA
          84000F83C1000079BF00108DD0003FA5E200F5D2B900FBD2A900EDF7F900E6E6
          E600E5E6E600E2E2E200DDDDDD00EBEBEB00FFFFFF00C2C2C200FFEAD300FBC2
          7A00B6C5C5004592AE002C86AB0087B8CB00F6D0AB00FEDCB900DAE9F900C7D2
          DC00CCD7E200CBD7E200CCD8E400C3D0DC00D8E3EF00BEC6CE00FEEFE100F4B0
          6200FFBD6B00FFBE6D00FFB96900FFBC6D00EBAA5E00F2BA8200F9D0A800F8D2
          AB00F3CFAC00EECEAC00E9CCAE00E3C9AF00EAD2BA00CAB7A300FEFCFA00FFD6
          B100FEC08500FDBE8200FBB97A00F7B26F00F4B06E00EEA86200EC9F5100EB9C
          4C00EB9B4A00EB9A4800EB994700EC9A4800F3A24C00E6B88900FFFFFF00FCFD
          FD00FCF6F100FDF5EE00FDF4EA00FCF1E600FCEEE100FCECDD00FCEAD800FBE6
          D200FBE4CD00FBE1C700FBDEC100FBDDBA00F9D4B500F7F5F500FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = 14935033
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCFA00F2C9
          9F00E3B38400ECCBAD00F6E5D300FDFAF600FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCDDBF00F0B1
          7000F0AD6900E99E5400E0904100DF904300E79C5400D5BEA900D5DBE000E7E7
          E700F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBD9B600EFAE
          6E00EEAA6600ECA86300ECA76100E8A15900E7903700DBB89400C4D0DE00BCBC
          BC00BABABA00BEBEBE00C2C2C200D0D0D000E6E6E600FFFFFF00FBDCBF00F4B5
          7100F9BA7700F3B06C00EFAA6200EFA85C00E8913500DCB99400CCD9E600CBCB
          CB00CDCDCD00CACACA00C4C4C400C0C0C000B2B2B200D2D2D200FEE7C900D278
          2900BA612800CF813E00D07B3300D7874300E1873100E3C29F00C7D3DF00BFBF
          BF00BEBEBE00BBBBBB00BCBCBC00BFBFBF00E3E3E300B5B5B500FFEFD200CA74
          2700A22E0000D76A0C00DE882F00B4540000CD6E1B00EFD5B700D4DFE900D0D0
          D000CECECE00C4C4C400C1C1C100BBBBBB00D9D9D900BDBDBD00FFE1C200FCCB
          9000B57C5100917A5700CBD6C700CE7A2900E8AC7200EFD2B500D3DDE900C8C8
          C800D3D2CD00F1EFE600ECE8E000DAD8D400E3E4E400BEBEBE00FFE5C200E2C1
          8C001E83BB001F93E40056B9FF009DC7E800FFE2BF00EEC59D00CED9E300C6C3
          BF00CDCAC800D9D7E300DCDDEA00F0F0EA00F9F6F000BEBEBE00FFF1CE00A798
          6E00005AA60055B0EA00A4E3FF0082D7FF00E8CDB400F8CBA000DEE3E500CCD5
          D0008899DF004B5EE7005C84EB0093A2ED00F3F3FA00C5C4BF00FFEBCE00E8BA
          84000F83C1000079BF00108DD0003FA5E200F5D2B900FFD7A800F1F6FA0098AB
          F300448AFE0045AEFF0046AFFD002E5FFC00ABBEFF00C5C5C200FFEAD300FBC2
          7A00B6C5C5004592AE002C86AB0087B8CB00F6D0AC00FFE5B900CDE0FA003B51
          EC003CA7FF001CF9FF0022E8FF0047B1FF006590FF00B1B9D200FEEFE100F4B0
          6200FFBD6B00FFBE6D00FFB96900FFBC6D00EBAB5D00FBC07D00E7C5AE006684
          EA0044B9FF0012E8FF0026FBFF00389AFE005460E700C0AEA900FEFCFA00FFD6
          B100FEC08500FDBE8200FBB97A00F7B26F00F4B06E00F5AA5C00F09D5300A586
          92005274D90060C7F7005DC1F3006093E100A77F8D00E5B68800FFFFFF00FCFD
          FD00FCF6F100FDF5EE00FDF4EA00FCF1E600FCEEE100FCECDD00FFF1D400E0CF
          D6008896E700648AF6005661F0008A94E600E4CCC100F8F6F400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00EFF3FF00FBFCFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0077BA790075B87700FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0045A9490015B02C0012AE270046A54900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0044AA4A0019B234001BB635000FB1270009AA1F0047A54A00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0045AD4A001DB63C0019B938001DB538004CC460002CBD430003A7190047A6
          4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F8F00041B0
          490021B9440022C047001EB93E003DA7440061B2640065CD78002CBF450002A8
          190047A64A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006BBE6E0046CB
          6B0020C24B0023BC480031A93B00FFFFFF00FFFFFF004EAF520068CE7B002CC0
          450003A81A0047A64A00FFFFFF00FFFFFF00FFFFFF00FFFFFF009DD39E0057C9
          710052D178002EA93900EFF8EF00FFFFFF00FFFFFF00FDFEFD004EAC530067CF
          7B002CC0460004A91C0047A74A00FFFFFF00FFFFFF00FFFFFF00FFFFFF009BD7
          9C006EBF7200EEF7EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE004EAE
          530067CF7C002CC0480004A91D0048A74B00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFF
          FE004FAD530067CE7C002DC1480004A91D0048A84C00F2F8F200FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FEFEFE004FAD530066CE7B0035C5500011B12B0067B26900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF004DAE52005FCF770023B138009FCDA000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF006DB970009DCF9D00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FDFEFF00D1ED
          F70094D0E80074C4E0007CC3DD00A3D1E200F5F9FC00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A8E0F20038BA
          E30003B5E60003C6F30000BEEE000DA7D00067A9CD00AFB0E000D7D7F100FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005BD4F90014CE
          FB0051EFFF004AF3FF0002E2FF0000D8FF00028DCC001335BF000A12BD00676F
          BC00B5DBBB00B1DBB400CDE5CF00FEFEFE00FFFFFF00FFFFFF00BDD4DB002ECF
          F30085FFFF0098F5FC005CD5F10000D1F5000078D000214BCF000515D900194F
          800056E7390046C6470036BA380036A03B0081BC8300D6E9D700FFFFFF00D2F5
          FE0036C4E4005A97B6006A9EB300088BDF00809BCB007466A200000EAC0057B8
          71007FFF690066DF650056D854003CC43B001FA621005FAB6100FFFFFF00FFFF
          FF001B85B500006DA500006A9D000963AF007DB6EE00598FDD004AA87E0092FF
          6C0064E66C0068E6690063D962004CD34A0028AD290088C18C00E8E8E8005A6B
          850000A0DD0000ABE800009BD6000081B20059AEF20067C3FF0067D9CF0082F1
          6E00AED4A60080D377005ADF570053D4510055B15C00E7F3E800A4A2A1001F1D
          1500144D6300006F95000061880014628500A1DAFD0091D1FF0051BCDE0061CD
          6C00F0DEFF00A9C3CD003DC52F0048BA3100E5F2E500FFFFFF00D8D8D8006260
          5F007761590035241E00010000000800000030A1CE002890C10050A4D40068BB
          DD0053AEFF005AADFF004CA9BD00F7FBF900FFFFFF00FFFFFF00FFFFFF00EEEE
          EE00909090006D6B6A004B565C000C6D9500007FB900166E9200509ED80073BD
          FF006CBEFF006CBDFF0063B2FF00C0E2FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00EBF8FE00CFE7EE00EEF7FA008ECFFE0098D1
          FF0099D6FF0088CDFF0079C2FF0072BCFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0085C2FF0073BF
          EA007EC2EA0097CFF90095CFFF0074BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005AADE30000A4
          CC00009ED0001CA2D20040AADC001E87BE00F1F6F800FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0076C2E00000BD
          EB0000CAFD0000B6EB0000A0D300278AB400F8F9FA00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6FCFE0057C8
          EC0000C0F30000B5E8002BA9D100D9ECF500FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8F7
          FC008AD3EC0078C8E200C2E3EF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWindow
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000DEDFF8008182
          DF00D3D3F100FCFAF600E1DFF2009C9CE600EBEAF400F9F6F400F6F4F300F7F4
          F300F6F4F300F6F4F300F6F4F300F7F5F500FFFFFF00FFFFFF008290F0001D56
          F2001838CA00837099004151CA000429E9001E32BB00C9B2A800D8C4AB00D0BB
          AB00D0BAAA00CEB8A600D5BCA500B4988600FFFFFF00FFFFFF00B5B8D6002C66
          FF002D71FF000935E7001C57FF000048FF001E3AD600EAD4CF00FFEFD500F9E2
          D000F6DDC900FAE2CD00FFFFFF00D3BAA300FFFFFF00FFFFFF00FFFFFF00AAB0
          FB003862E8003477FF000B48FA003D4BCE00EFCDB700E7C5A800D5B2A200D5B1
          9E00D2A99200DAB59E00FFFFF800CDB7A700FFFFFF00FFFFFF00FFFFFF00FFFF
          FF003A5BE4002A6BFE000143F9003148C500E2C4B700F0D1B300D8BBB000DBBC
          AB00D7B3A000DEBDA900FFFFFB00CDB8A800FFFFFF00FFFFFF00FFFFFF008493
          F5002C6EFF004961E2005671E7000033F9003349C800E3C8BC00E4C6B100DBBC
          AD00D8B5A200DEBEAB00FFFFFC00CEB9AA00FFFFFF00FFFFFF00FFFFFF0090A8
          FF002151F300CCCAE900FDE5C9002951E8000933E400C1ADBF00EECFB200DBBD
          AF00D8B5A300DFBFAC00FFFFFF00CEBAAB00FFFFFF00FFFFFF00FFFFFF00FEFE
          FE00C4BACF00FFFFFF00EDD4B900C7ADB500C4AEBC00E0C2B100D4B5A900D5B3
          A400D2AA9700DAB5A200FFFFFF00CFBBAD00FFFFFF00FFFFFF00FFFFFF00FAF6
          F300EDDBC400FFFFFF00E9DEDF00FBEAD900FDECD900EBDDD800ECDDD600ECDB
          D200EAD7CB00EEDCCF00FFFFFF00CFB9AB00FFFFFF00FFFFFF00FFFFFF00F8F5
          F300DCCEC700FFFFFF00F7F4F400F6F2F200F6F2F100F6F0EE00F6EFEA00F5ED
          E600F4E9E100F6ECE300FFFFFF00D2BCAE00FFFFFF00FFFFFF00FFFFFF00F8F5
          F400DFD3CB00FFFFFF00DECCCB00D9C5C300DCC6C200DBC3BC00DABEB400DEC1
          B400DDBCAB00DFC0B300FFFFFF00CEB9AC00FFFFFF00FFFFFF00FFFFFF00F8F5
          F400DECFC800FFFFFF00FDFBFB00FCFBFB00FDFBFB00FCFAFA00FCFAF800EEE7
          E100D0C1BC00DDCEBE00D1B89D00B9A19600FFFFFF00FFFFFF00FFFFFF00F8F5
          F400DECFC800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2DB
          DA00DEC9B100F3D79C00BF9F8600FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F5
          F400E2D5CF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4F1
          EE00DBB58200CFB29900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F4
          F200D8C7BE00F9F7F600F8F6F400F8F6F400F8F5F300F8F5F200F9F6F500E4DA
          CF00BDA39400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBF9
          F800CFBAB000D4C0B700D3C0B700D2C0B700D2BFB700D1BEB600D0BEB700CAB9
          AD00F7F5F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWindow
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00D8CDC700D7CAC400D6C9C400D6C9C400D6C9C300D5C9C300D7C7C300E5D5
          D600AFD1AD005F9F5F00689C5D00AFCBA900FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C2A69500F4E0CE00E7D3C200E8D3C400E7D3C300E9D4C500FBD6D6005FA6
          51000092000008A2100000880000267802006E9F6100FFFFFF00FFFFFF00FFFF
          FF00D5C4B800FFFFFF00ECDACD00EAD6C900EBD7CA00FFDDDF00B2CDA2000099
          000088D49200FFFFFF0027BD3C00008A000026750000B0CBAC00FFFFFF00FFFF
          FF00D6C5B900FFFFFF00DABEB300D5B7AA00D8B8AB00F2BABB0050AE4F004DBA
          5A00EEE3E600C7E9C900FFFFFF002DBC3F0000810000649C5300FFFFFF00FFFF
          FF00D6C6BA00FFFFFF00DDC7BF00D9C1B800DBC1B800EFC1C0007BC37C003FC5
          640030B74C0000A91400B2E1B700FFFFFF004BB95200579A5400FFFFFF00FFFF
          FF00D7C7BC00FFFFFF00DDCAC700D9C4BF00DBC4BD00F0C2C400B7C4A00033D2
          68001DD0600018C04A0000A71800A3E1AF0079CD7F00B2D3B200FFFFFF00FFFF
          FF00D8C9C000FFFFFF00DDCBC800D9C4C000DBC5BF00DEC2BB00E9BFBA0097C9
          910042D8770023CD5E0000B32800019B01006AB86A00FFFFFF00FFFFFF00FFFF
          FF00DACBC300FFFFFF00D9C1BC00D4B9B300D6BBB400D4B9AE00DEB5AF00E3B3
          A900ADB58A0081BD7A0088DA920093A07E00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00DBCBC300FFFFFF00EEE3DF00ECDFDB00EDE0DC00EDDFD900EADDD500EEDA
          D300FFD6D600FFDEDB00FFFFFF00E2B4B300FAF7F700FFFFFF00FFFFFF00FFFF
          FF00DBCCC400FFFFFF00F7F4F400F6F2F200F6F2F100F6F0EE00F6EFEA00F5ED
          E700F4EAE100F8EDE400FFFFFC00CBB1A200F7F4F300FFFFFF00FFFFFF00FFFF
          FF00DECFC700FFFFFF00DECCCB00D9C5C300DCC6C200DBC3BC00DABEB400DEC1
          B400DEBCAB00E0C2B400FFFFFF00CAB1A300F6F4F300FFFFFF00FFFFFF00FFFF
          FF00DCCCC400FFFFFF00FDFBFB00FCFBFB00FDFBFB00FCFBFA00FCF9F800EEE5
          E000D1C1BC00DDCDBD00D2B69C00B59F9400FDFDFC00FFFFFF00FFFFFF00FFFF
          FF00DDCCC400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E1D9
          D900DEC9B000F4D59900B89A8200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00E1D2CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4EF
          ED00DCB37D00C9AF9500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00D5C1B500F9F7F600F6F1ED00F6F1ED00F6F0EC00F6EFEA00F9F6F400E3D4
          C700B69F9100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00CEB8AD00D4C0B700D2BDB300D1BDB300D0BCB200D0BBB100D0BEB400C7B5
          AB00F0EEED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E200D0D0D200878F
          E5005757D5005A5ACF005A5AC5005A5AC2005757BC00ABABDD00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00EFEEEE009D9898007B605600A88C8F002342
          EE004966EF006079E7000018DD008EA0F1003747CC004343B300FFFFFF00FFFF
          FF00FFFFFF00F6F4F400BBAFAF00A2868600937474009D706500A2878D00234B
          FB00B6C3ED00FFFFE700CAD6FC00FFFFFF009BAFF7005959C100FFFFFF00FDFC
          FC00C8BABA00A98D8D00C5A5A500F0D6D600BDAAAA0063473D00836F6E002B61
          FF001049FF00F3F1E600FFFFFA00D1DCFF000115DA005A5CC600EAE1E100BDA2
          A200CAB0B000E3CDCD00F6ECEC00FBFCFC00D6D4D400886F6500A58D93004470
          F7007991E400FFFFE700FFFEF400FFFFFF00677BF0005A5ACF00D1BDBD00DCCF
          CF00FDFDFD00FFFFFF00ECE6E600C3B1B100BA999900E7B8AE00F1D0D9004380
          F90087A4D8009AA9E2002D5AFA00D2DAFF006B85F800484AD100F2E6E600E6CD
          CD00F0E6E600DDCDCD00B89F9F00CFA6A600E7C2C200EBC9C100E3C7CC0080AC
          FB004180FF003567FF001D50FB00274CF6001735E5007D88E200FFFFFF00FEFB
          FB00F7EEEE00FFFFFF00D1C6C600E7CCCC00E6CDCD00E6CFCF00E8D3D100FBE7
          EA00C4B7B500F5F6FB00F4F6FF00F3F5FF00F1F3FE00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00D8CBCB00E3D0D000EFDDDD00ECDBDC00EEE0E000FFFF
          FC00C7B2A300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00CFC7C700F3E2E200F9EEEE00F3E9E900F5EEEE00FFFF
          FF00D1C4C500FFFFFF00F8F7F700C5C1B800FDFDFC00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3DBDB00EDE0E000FFFEFE00FBF8F800FDFCFC00FFFF
          FF00E1E0E000A29292008E737300DEC0C100B09E9E00FDFDFC00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00F4EEEE00E4DBDB00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F5F9F900AF8B8B00B17E7E00FFF0F000DCAEAE00F1F0F000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FEFDFD00E1D3D300FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E8E6E600AB848400B8868600AE9B9B00FEFEFE00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00DCC6C600FFFFFF00FFFFFF00FFFFFF00FBFD
          FD00DDD4D400C9BFBF00BCB0B000D5D0D000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00F1E8E800E1D1D100E7E1E100CFBCBC00D1BD
          BD00E4D9D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2C4C400D0C7C700E8DDDD00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE0E000D0C8CF00FCFC
          FC00B8DCB8005FA15F006C9E5D00B1CEAD00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00EFEEEE009D9898007A606200AB7588004F97
          4A00009B00000BA31000008800002477000070A16300FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F6F4F400BBAFAF00A286860093747400AA6D7F0081936C0000A8
          00008DD69800FFFFFF0027BC3C00008B000027760000B0CBAC00FFFFFF00FDFC
          FC00C8BABA00A98D8D00C5A5A500F0D6D600BBA7A700754959002D8F35005ACA
          6800EEE2E600C7E9C900FFFFFF002DBC3F0000810000649C5300EAE1E100BDA2
          A200CAB0B000E3CDCD00F6ECEC00FBFCFC00D4D2D20097707C005EA461004BD0
          6C0030B84C0000A91400B2E1B700FFFFFF004BB95200579A5400D1BDBD00DCCF
          CF00FDFDFD00FFFFFF00ECE6E600C3B1B100BA9A9A00F3B5C400BEC3A60030D0
          62001DD0600018C04A0000A81800A7E2B2007ACD8000B2D3B200F2E6E600E6CD
          CD00F0E6E600DDCDCD00B89F9F00CFA6A600E7C2C200E8C7C900EEC5CD0096C6
          930047DB760045DB7A0028C3500000A20D006BB66B00FFFFFF00FFFFFF00FEFB
          FB00F7EEEE00FFFFFF00D1C6C600E7CCCC00E6CDCD00E4CFCE00F2D4DB00FFDF
          EB00A2BA9B007DCC860074D47B00B5D8B500FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00D8CBCB00E3D0D000EFDDDD00ECDCDC00EDE0DE00FFFF
          FF00D5ADC200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00CFC7C700F3E2E200F9EEEE00F3E9E900F5EEEE00FFFF
          FF00D3C2C300FFFFFF00F9F8F900C6BFC400FDFDFD00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E3DBDB00EDE0E000FFFEFE00FBF8F800FDFCFC00FFFF
          FF00E1E1E000A39192008F727400DEC0C000B09E9E00FDFDFD00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00F4EEEE00E4DBDB00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F5F9F900AF8B8B00B17E7E00FFF0F000DCAEAE00F1F0F000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FEFDFD00E1D3D300FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E8E6E600AB848400B8868600AE9B9B00FEFEFE00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00DCC6C600FFFFFF00FFFFFF00FFFFFF00FBFD
          FD00DDD4D400C9BFBF00BCB0B000D5D0D000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00F1E8E800E1D1D100E7E1E100CFBCBC00D1BD
          BD00E4D9D900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2C4C400D0C7C700E8DDDD00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A7ABAF007C808500CDCFD000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00E4E5E6007D767500806D650086898D00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00F8F8F80077767400EABB8D00FFD19600C1A08700ACAF
          B200FFFFFF00F3F4F4008D8C8E007F777700ABAEB100FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F6F6F60073798000B5A49100FFF6BE00FFE8B900FFE8AE00958E
          8A00E4E6E7007F7F7C00E5B48600FFD19A00A68E7E00B4B7BA00FFFFFF00FFFF
          FF00F4F4F40076747400898F9300AFA09700F8E4D100FFFFFE00FFFFD6007564
          560036425100B7A79400FFF4BB00FFEBB600FFDAA6007A797A00FFFFFF00E8E8
          E8005151510071717100CBCCCC00C2C3C400BCAAAC00F4DCD600BDAD99004546
          460099A0A500BBAEA600EFDBCD00FFFFFF00FFF1C20080797400E1E1E1007878
          7800B8B8B80061616100A8A7A700FFFFFF00E2E2E300736662004F4B4E005356
          5900D9D8D700DFDEE000D3C3C500EFE3D800AFA19000C2C4C5005E5E5E008484
          8400D6D6D600BEBEBE009A9A9A00A5A5A500666868003237390036383A006A69
          6900FBFBFA00FFFFFF00BFC0C0007F787700DCDCDD00FFFFFF00747474005C5C
          5C00C2C2C200EAEAEA00CECECE00999999008382820080807F00666565008B8B
          8B009494940073737300ADADAD00FFFFFF00FFFFFF00FFFFFF00E7E7E7008383
          830070707000A5A5A5009E9E9E009E9E9E00A5A5A500ACACAC00B5B5B5008B8B
          8B008F8F8F00F5F5F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
          FE00F1F1F100FBFBFB00DFDFDF00BEBEBE00787878006363630091919100D3D3
          D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00F9F9F900B2B2B2008C8C8C00D0D0D000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6B5B5001039520000528400006BD6000707
          0700070707000707070007070700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00BDC6BD00948C8C00BDB5AD003163730000A5FF0000A5FF00007BD6000707
          070007F76D0007F76D0007070700FFFFFF00FFFFFF00FFFFFF00FFFFFF00736B
          6B0052213100A5295A006B2131002184A40010BDFF0010A0F7000170C3000707
          070007F76D0007F76D00070707008C8C8C00FFFFFF00FFFFFF00FFFFFF008439
          5200B5426B00C64A7300733142002984A5000707070007070700070707000707
          070007F76D0007F76D0007070700070707000707070007070700FFFFFF009452
          6B00B54A6B00BD4A73007B4252004284A4000707070007F36D0007F36D0007F7
          6D0007F76D0007F76D0007F76D0007F76D0007F76D0007070700FFFFFF009C63
          7300B5527B00C65A84007352630052ADD6000707070007F36D0007F76D0007F7
          6D0007F76D0007F76D0007F76D0007F76D0007F76D0007070700FFFFFF00AD73
          8400BD6B8C00D66B8C008C6B840063D5FE000707070007070700070707000707
          070007F76D0007F76D0007070700070707000707070007070700BDBDBD00CE7B
          9C00E78CAD00EF84A500AD7B94007BD6FF007BDEFF0063D6FF007BCEFF000707
          070007F76D0007F76D0007070700FFFFFF00FFFFFF00FFFFFF00BDBDBD00DE94
          AD00EFA5BD00EF94B500B58C9C008CDEFF009CEFFF00B5F7FF0039A5F7000707
          070007F76D0007F76D0007070700FFFFFF00FFFFFF00FFFFFF00C6C6C600E7A5
          BD00F7ADCE00F7A5C600B594AD00ADE7FF00A5CEF7004A94DE00526B8C000707
          0700070707000707070007070700FFFFFF00FFFFFF00FFFFFF00CEC6C600EFB5
          CE00FFD6EF00FFE7F700D6C6CE0084A5BD0031424A0018183100526B8C00B594
          BD00C69CF7007B73AD005A63AD00FFFFFF00FFFFFF00FFFFFF00CECECE00CEBD
          C600948C9400634252007B2952004A294200949C9C00A5A59C00313129005A39
          73008C4AA5007B6B7B007B6B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00949C
          94004A4A4A006B737300424242004A4A4A00EFEFEF00CECECE0029292900424A
          42005A5A5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009494
          9400CECECE00FFFFFF00636363006B6B6B00A5A5A50052525200C6C6C600CECE
          CE0029292900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
          CE00B5B5B500C6C6C6004A4A4A00C6C6C600FFFFFF0094949400D6D6D6008484
          840063636300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C6C6C6008C8C8C00CECECE00FFFFFF00FFFFFF00FFFFFF00949494009494
          9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6B5B5001039520008080800080808000808
          080008080800FFFFFF0008080800080808000808080008080800FFFFFF00FFFF
          FF00BDC6BD00948C8C00BDB5AD003163730000A5FF0008080800073FF400073F
          F400080808000808080008080800073FF400073FF40008080800FFFFFF00736B
          6B0052213100A5295A006B2131002184A50010BDFF0008080800073FF400073F
          F400073FF40008080800073FF400073FF400073FF40008080800FFFFFF008439
          5200B5426B00C64A7300733142002984A50029C6FF000808080008080800073F
          F400073FF400073FF400073FF400073FF4000808080008080800FFFFFF009452
          6B00B54A6B00BD4A73007B4252004284A5004ACEFF00219CFF00080808000808
          0800073FF400073FF400073FF4000808080008080800FFFFFF00FFFFFF009C63
          7300B5527B00C65A84007352630052ADD60052D6FF000808080008080800073F
          F400073FF400073FF400073FF400073FF4000808080008080800FFFFFF00AD73
          8400BD6B8C00D66B8C008C6B840063D6FF0063DEFF0008080800073FF400073F
          F400073FF40008080800073FF400073FF400073FF40008080800BDBDBD00CE7B
          9C00E78CAD00EF84A500AD7B94007BD6FF007BDEFF0008080800073FF400073F
          F400080808000808080008080800073FF400073FF40008080800BDBDBD00DE94
          AD00EFA5BD00EF94B500B58C9C008CDEFF009CEFFF0008080800080808000808
          0800080808003939AD0008080800080808000808080008080800C6C6C600E7A5
          BD00F7ADCE00F7A5C600B594AD00ADE7FF00A5CEF7004A94DE0039A5F7006B94
          AD009C8CF7005A63AD003939AD00FFFFFF00FFFFFF00FFFFFF00CEC6C600EFB5
          CE00FFD6EF00FFE7F700D6C6CE0084A5BD0031424A0018183100526B8C00B594
          BD00C69CF7007B73AD005A63AD00FFFFFF00FFFFFF00FFFFFF00CECECE00CEBD
          C600948C9400634252007B2952004A294200949C9C00A5A59C00313129005A39
          73008C4AA5007B6B7B007B6B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00949C
          94004A4A4A006B737300424242004A4A4A00EFEFEF00CECECE0029292900424A
          42005A5A5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009494
          9400CECECE00FFFFFF00636363006B6B6B00A5A5A50052525200C6C6C600CECE
          CE0029292900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
          CE00B5B5B500C6C6C6004A4A4A00C6C6C600FFFFFF0094949400D6D6D6008484
          840063636300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C6C6C6008C8C8C00CECECE00FFFFFF00FFFFFF00FFFFFF00949494009494
          9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6B5B5001039520000528400002142001818
          100073737300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00BDC6BD00948C8C00BDB5AD003163730000A5FF0000A5FF00006BD6002118
          4200181018005A5A5200B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00736B
          6B0052213100A5295A006B2131002184A50010BDFF0010A5FF00007BD6004231
          8C0021109C00212121004A4A4A008C8C8C00FFFFFF00FFFFFF00FFFFFF008439
          5200B5426B00C64A7300733142002984A50029C6FF0010ADFF00008CE7004A31
          8C003129DE0031314200B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF009452
          6B00B54A6B00BD4A73007B4252004284A5004ACEFF00219CFF000063D6005239
          94004231DE00848C9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C63
          7300B5527B00C65A84007352630052ADD60052D6FF0042C6FF00005AD6005A39
          9C00524AEF009494A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD73
          8400BD6B8C00D66B8C008C6B840063D6FF0063DEFF005AD6FF0010A5FF00295A
          AD0052429C008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CE7B
          9C00E78CAD00EF84A500AD7B94007BD6FF007BDEFF0063D6FF0042B5FF004A84
          B5006B4ACE0031317300FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00DE94
          AD00EFA5BD00EF94B500B58C9C008CDEFF009CEFFF00B5F7FF007BCEFF006B8C
          B5007B63F7003939AD0031317300FFFFFF00FFFFFF00FFFFFF00C6C6C600E7A5
          BD00F7ADCE00F7A5C600B594AD00ADE7FF00A5CEF7004A94DE0039A5F7006B94
          AD009C8CF7005A63AD003939AD00FFFFFF00FFFFFF00FFFFFF00CEC6C600EFB5
          CE00FFD6EF00FFE7F700D6C6CE0084A5BD0031424A0018183100526B8C00B594
          BD00C69CF7007B73AD005A63AD00FFFFFF00FFFFFF00FFFFFF00CECECE00CEBD
          C600948C9400634252007B2952004A294200949C9C00A5A59C00313129005A39
          73008C4AA5007B6B7B007B6B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00949C
          94004A4A4A006B737300424242004A4A4A00EFEFEF00CECECE0029292900424A
          42005A5A5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009494
          9400CECECE00FFFFFF00636363006B6B6B00A5A5A50052525200C6C6C600CECE
          CE0029292900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECE
          CE00B5B5B500C6C6C6004A4A4A00C6C6C600FFFFFF0094949400D6D6D6008484
          840063636300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C6C6C6008C8C8C00CECECE00FFFFFF00FFFFFF00FFFFFF00949494009494
          9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0008080800080808000808
          080008080800FFFFFF0008080800080808000808080008080800FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0008080800073FF400073F
          F400080808000808080008080800073FF400073FF40008080800B0A090007060
          5000705840006050400060483000604830006048300008080800073FF400073F
          F400073FF40008080800073FF400073FF400073FF40008080800B0A09000F0E0
          D000F0D8D000E0D0C000E0C8B000E0C0B000E0C0B0000808080008080800073F
          F400073FF400073FF400073FF400073FF4000808080008080800C0A89000FFF0
          F000B0B8C0001058C0001050B0000040900020509000B0A0A000080808000808
          0800073FF400073FF400073FF400080808000808080060483000C0A8A000E0E8
          F0002060C00070A8F0004088E0000048A0001068D0000808080008080800073F
          F400073FF400073FF400073FF400073FF4000808080008080800C0B0A000F0F0
          F0003070C00070A8E0002058B0002070E0001050B00008080800073FF400073F
          F400073FF40008080800073FF400073FF400073FF40008080800C0B0A000FFF8
          FF00E0E0E00030509000A09890008088A0003050900008080800073FF400073F
          F400080808000808080008080800073FF400073FF40008080800C0B8A000FFFF
          FF006068600030282000B0B8B000808080006068700008080800080808000808
          080008080800FFE8E00008080800080808000808080008080800D0B8B000FFF8
          FF005050500050485000E0E0E000C0C8C00080787000E0D8E000FFF8F000FFC8
          A000FFB89000FFB08000FFA88000F0A07000D0C0B00060483000D0B8B000FFFF
          FF007068700070787000A098A0009098900080788000E0E0E000FFFFFF00FFF8
          F000FFF8FF00FFF8F000FFF8F000FFF8F000D0C8C00060504000D0C0B000FFFF
          FF00E0E0E000707870008088800070787000C0C8C000FFF8FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFF8F000FFF8F000D0C8C00070584000D0C0B000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFF8FF00FFF8FF00FFFFFF0080685000D0C0B000D0C0
          B000D0C0B000D0C0B000D0B8B000D0B8B000C0B8A000C0B0A000C0B0A000C0A8
          A000C0A8A000C0A89000B0A09000B0A09000B0A09000B0A09000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000707
          0700070707000707070007070700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000707
          070007F76D0007F76D0007070700FFFFFF00FFFFFF00FFFFFF00B0A090007060
          5000705840006050400060483000604830006048300060483000604830000707
          070007F76D0007F76D0007070700604830006048300060483000B0A09000F0E0
          D000F0D8D000E0D0C000E0C8B000E0C0B0000707070007070700070707000707
          070007F76D0007F76D0007070700070707000707070007070700C0A89000FFF0
          F000B0B8C0001058C0001050B000004090000707070007F36D0007F36D0007F7
          6D0007F76D0007F76D0007F76D0007F76D0007F76D0007070700C0A8A000E0E8
          F0002060C00070A8F0004088E0000048A0000707070007F36D0007F76D0007F7
          6D0007F76D0007F76D0007F76D0007F76D0007F76D0007070700C0B0A000F0F0
          F0003070C00070A8E0002058B0002070E0000707070007070700070707000707
          070007F76D0007F76D0007070700070707000707070007070700C0B0A000FFF8
          FF00E0E0E00030509000A09890008088A00030509000D0D8E000FFF0F0000707
          070007F76D0007F76D0007070700C0908000D0C0B00060483000C0B8A000FFFF
          FF006068600030282000B0B8B0008080800060687000FFF8FF00FFF8F0000707
          070007F76D0007F76D0007070700FFE0D000D0C0B00060483000D0B8B000FFF8
          FF005050500050485000E0E0E000C0C8C00080787000E0D8E000FFF8F0000707
          0700070707000707070007070700F0A07000D0C0B00060483000D0B8B000FFFF
          FF007068700070787000A098A0009098900080788000E0E0E000FFFFFF00FFF8
          F000FFF8FF00FFF8F000FFF8F000FFF8F000D0C8C00060504000D0C0B000FFFF
          FF00E0E0E000707870008088800070787000C0C8C000FFF8FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFF8F000FFF8F000D0C8C00070584000D0C0B000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFF8FF00FFF8FF00FFFFFF0080685000D0C0B000D0C0
          B000D0C0B000D0C0B000D0B8B000D0B8B000C0B8A000C0B0A000C0B0A000C0A8
          A000C0A8A000C0A89000B0A09000B0A09000B0A09000B0A09000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0A090007060
          5000705840006050400060483000604830006048300060483000604830006048
          3000604830006048300060483000604830006048300060483000B0A09000F0E0
          D000F0D8D000E0D0C000E0C8B000E0C0B000E0C0B000E0C0B000E0C0A000E0B8
          A000E0B8A000E0B8A000E0B09000E0B09000E0B0900060483000C0A89000FFF0
          F000B0B8C0001058C0001050B0000040900020509000B0A0A000FFE0D000F0E0
          D000F0D8C000F0D8C000F0D8C000F0D8C000E0B0900060483000C0A8A000E0E8
          F0002060C00070A8F0004088E0000048A0001068D00000409000FFE8E000E0B8
          B000C0A09000C0988000C0988000C0908000E0B8A00060483000C0B0A000F0F0
          F0003070C00070A8E0002058B0002070E0001050B0002058A000FFF0E000FFE0
          D000FFE0D000F0E0D000F0D8C000F0D8C000E0B8A00060483000C0B0A000FFF8
          FF00E0E0E00030509000A09890008088A00030509000D0D8E000FFF0F000F0D0
          C000C0A09000C0988000C0988000C0908000D0C0B00060483000C0B8A000FFFF
          FF006068600030282000B0B8B0008080800060687000FFF8FF00FFF8F000FFF0
          F000FFF0E000FFE8E000FFE8E000FFE0D000D0C0B00060483000D0B8B000FFF8
          FF005050500050485000E0E0E000C0C8C00080787000E0D8E000FFF8F000FFC8
          A000FFB89000FFB08000FFA88000F0A07000D0C0B00060483000D0B8B000FFFF
          FF007068700070787000A098A0009098900080788000E0E0E000FFFFFF00FFF8
          F000FFF8FF00FFF8F000FFF8F000FFF8F000D0C8C00060504000D0C0B000FFFF
          FF00E0E0E000707870008088800070787000C0C8C000FFF8FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFF8F000FFF8F000D0C8C00070584000D0C0B000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFF8FF00FFF8FF00FFFFFF0080685000D0C0B000D0C0
          B000D0C0B000D0C0B000D0B8B000D0B8B000C0B8A000C0B0A000C0B0A000C0A8
          A000C0A8A000C0A89000B0A09000B0A09000B0A09000B0A09000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0A090007060
          5000705840006050400060483000604830006048300060483000604830006048
          3000604830006048300060483000604830006048300060483000B0A09000F0E0
          D000F0D8D000E0D0C000E0C8B000E0C0B000E0C0B000E0C0B000E0C0A000E0B8
          A000E0B8A000E0B8A000E0B09000E0B09000E0B0900060483000C0A89000FFF0
          F000B0B8C0001058C0001050B0000040900020509000B0A0A000FFE0D000F0E0
          D000F0D8C000F0D8C000F0D8C000F0D8C000E0B0900060483000C0A8A000E0E8
          F0002060C00070A8F0004088E0000048A0001068D00000409000FFE8E0000505
          05000505050005050500C0988000C0908000E0B8A00060483000C0B0A000F0F0
          F0003070C00070A8E0002058B0002070E0001050B0002058A000FFF0E0000505
          050006F4F10005050500F0D8C000F0D8C000E0B8A00060483000C0B0A000FFF8
          FF00E0E0E00030509000A09890008088A0003050900005050500050505000505
          050006F4F100050505000505050005050500D0C0B00060483000C0B8A000FFFF
          FF006068600030282000B0B8B00080808000606870000505050006F4F1000505
          050006F4F1000505050006F4F10005050500D0C0B00060483000D0B8B000FFF8
          FF005050500050485000E0E0E0000505050005050500050505000505050006F4
          F10006F4F10006F4F10005050500050505000505050005050500D0B8B000FFFF
          FF007068700070787000A098A0000505050006F4F10006F4F10006F4F10006F4
          F10006F4F10006F4F10006F4F10006F4F10006F4F10005050500D0C0B000FFFF
          FF00E0E0E00070787000808880000505050005050500050505000505050006F4
          F10006F4F10006F4F10005050500050505000505050005050500D0C0B000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000505050006F4F1000505
          050006F4F1000505050006F4F10005050500FFFFFF0080685000D0C0B000D0C0
          B000D0C0B000D0C0B000D0B8B000D0B8B000C0B8A00005050500050505000505
          050006F4F100050505000505050005050500B0A09000B0A09000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000505
          050006F4F10005050500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000505
          05000505050005050500FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000020171339A08476FE8F7769E25A4136AF3D2B227B241914470A0706140000
          0000000000000000000000000000000000000000000000000000000000000000
          00005740339CF0E1D7FFD6B3A0FFF2E7E0FFDCD8D6FFB6ABA4FFB49E94FE8D73
          66DF5C4337AC3A2B236600000000000000000000000000000000000000000201
          01049F8778EDD4AA93FF873007FF640B00FF2F0500FFE9E8E1FFFFFFFFFFFFFF
          FFFFEBE5E3FF4532288500000000000000000000000000000000000000001F17
          123ACDBAAEFFFFFBF4FFFFFFFFFFFFFFFFFFD4DFF2FF1A1F99FFDCDAEEFFFFFF
          FFFFA2897FF3090705110000000000000000000000000000000000000000412F
          2576E7D8CEFFE3C5B2FFE4C5B4FFE7CBB8FFAEA1C4FF0025E9FF0007A9FFDFDB
          E9FF5C4233A30000000000000000000000000000000000000000000000005E43
          37A7F6E7DBFFE2C4B2FFE3C6B5FFE3C7B7FFF3D3B6FF253AD0FF184CFFFF0107
          9AFF251A235B0000000000000000000000000000000000000000000000008367
          58CDF2DFCFFFE2C2AFFFE2C4B2FFE2C5B4FFEED8C6FFD9DFF9FF012BEBFF1243
          FFFF0F0E5ACB010102090000000000000000000000000000000000000000A386
          76EBECD4C2FFE1C1ADFFE1C2AEFFE1C3B0FFE3C4B1FFF2D2B7FF667EF1FF9DA3
          B1FF515B73FF0C0C479E0000000000000000000000000000000000000000B999
          88FCE8CDB9FFE0BFA9FFE0C0ABFFE0C0ACFFF2E5D8FFFDF9F0FFFFFFF7FF6A6E
          95FF2859F7FF0522D7FE0000396100000000000000000000000000000000C1A4
          91FFE7C9B3FFDFBCA5FFDFBCA6FFDEBCA6FFE7CCBBFFE9D0BFFFEAD7C7FF5E4B
          48C1888D93FB2351EDFF010FACF400001829000000000000000000000000C4A7
          93FFEFD5BFFFEBD1BDFFEFD9C8FFF4E1D0FFF7E8D9FFF6E9DBFFDFCDC0FF402D
          1F742A386582848EAAFF1346FFFF000179CA000001020000000000000000AF8B
          77FFC7AD9AFFBA9B8BFCAB8B7AE9917161D0745547B85D43369F4F372E871E16
          0F2F000003039B9B8EBE4563BEFF092EE2FF0000345C00000000000000001F16
          122F110D0B1B0302010500000000000000000000000000000000000000000000
          0000000000000D0C0D1486878ACF6371A0FF222253A800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000020C0C414660866D6C65CE00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00069610000696100006961000069610000696
          100006961000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000696100037CA640035C6610034C45F0032C3
          5E0006961000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00069610004DDA79003DD26C003DD26C0037CC
          660006961000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000696100057E081003FD56F003ED46E0039CD
          670006961000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000696100060E5890041D8720040D670003DCF
          690006961000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00069610000696
          10000696100006961000069610000696100051E17E0044DA740042D973003ED2
          6C00069610000696100006961000069610000696100006961000069610008CF4
          A70051E27F004EE27C004DDF7B004BDF7A004BE07B0046DD770045DB750042DA
          74003ED36D003CD06A003ACE680038CB650031C15B0006961000069610008FF5
          A90062EB8D005EE98A005AE8870056E6840052E3800050E27F0047DE780045DB
          750042D9730040D670003ED46E003DD26C0033C25D00069610000696100091F7
          AA006CEF940065ED8F0061EC8C005EEA8A0057E7850054E4810050E27E0046DD
          770044DA740041D872003FD56F003DD26C0034C56000069610000696100096F9
          AE008EF6A9008FF6A8008DF5A8008BF4A50078EF9A0057E7850052E380004AE0
          7B0059E5850066E78B005CE2850052DD7D0037CA640006961000069610000696
          1000069610000696100006961000069610008AF4A6005EEA8A0056E6840047DC
          7600069610000696100006961000069610000696100006961000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00069610008CF5A60061EC8C005AE8870048DC
          760006961000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00069610008EF6A90065ED8F005EE98A0049DF
          780006961000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00069610008EF6A9006CEF940063EB8D004BDF
          7A0006961000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000696100097F9AE0094F7AC008FF5A9008EF5
          A80006961000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00069610000696100006961000069610000696
          100006961000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
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
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0008F0080008F0080008F0
          080008F00800FFFFFF0008F0080008F0080008F0080008F00800FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0008F00800073FF400073F
          F40008F0080008F0080008F00800073FF400073FF40008F00800FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0008F00800073FF400073F
          F400073FF40008F00800073FF400073FF400073FF40008F00800FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0008F0080008F00800073F
          F400073FF400073FF400073FF400073FF40008F0080008F00800000000000000
          000000000000000000000000000000000000000000000000000008F0080008F0
          0800073FF400073FF400073FF40008F0080008F00800FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000008F0080008F00800073F
          F400073FF400073FF400073FF400073FF40008F0080008F0080000000000FFFF
          FF0000000000000000000000000000000000FFFFFF0008F00800073FF400073F
          F400073FF40008F00800073FF400073FF400073FF40008F0080000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF000000000008F00800073FF400073F
          F40008F0080008F0080008F00800073FF400073FF40008F0080000000000FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF0008F0080008F0080008F0
          080008F00800FFFFFF0008F0080008F0080008F0080008F0080000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF00FFFFFF00FFFFFF000000000000FFFF0000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF000000
          000000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF000000000000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF000000
          000000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000000000FF0000000000FFFFFF00000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F008
          0800F0080800F0080800F0080800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F008
          080007F76D0007F76D00F0080800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F008
          080007F76D0007F76D00F0080800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0080800F0080800F0080800F008
          080007F76D0007F76D00F0080800F0080800F0080800F0080800000000000000
          000000000000000000000000000000000000F008080007F36D0007F36D0007F7
          6D0007F76D0007F76D0007F76D0007F76D0007F76D00F008080000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F008080007F36D0007F76D0007F7
          6D0007F76D0007F76D0007F76D0007F76D0007F76D00F008080000000000FFFF
          FF0000000000000000000000000000000000F0080800F0080800F0080800F008
          080007F76D0007F76D00F0080800F0080800F0080800F008080000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00F008
          080007F76D0007F76D00F0080800FFFF000000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFFFF00F008
          080007F76D0007F76D00F00808000000000000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000F008
          0800F0080800F0080800F008080000FFFF0000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF000000
          000000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF000000000000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF000000
          000000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000000000FF0000000000FFFFFF00000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F02E0800F02E0800F02E
          0800F02E0800FFFFFF00F02E0800F02E0800F02E0800F02E0800FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F02E0800073FF400073F
          F400F02E0800F02E0800F02E0800073FF400073FF400F02E0800FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F02E0800073FF400073F
          F400073FF400F02E0800073FF400073FF400073FF400F02E0800FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F02E0800F02E0800073F
          F400073FF400073FF400073FF400073FF400F02E0800F02E0800000000000000
          0000000000000000000000000000000000000000000000000000F02E0800F02E
          0800073FF400073FF400073FF400F02E0800F02E0800FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F02E0800F02E0800073F
          F400073FF400073FF400073FF400073FF400F02E0800F02E080000000000FFFF
          FF0000000000000000000000000000000000FFFFFF00F02E0800073FF400073F
          F400073FF400F02E0800073FF400073FF400073FF400F02E080000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000F02E0800073FF400073F
          F400F02E0800F02E0800F02E0800073FF400073FF400F02E080000000000FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF00F02E0800F02E0800F02E
          0800F02E0800FFFFFF00F02E0800F02E0800F02E0800F02E080000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF00FFFFFF00FFFFFF000000000000FFFF0000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF000000
          000000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF000000000000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF000000
          000000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000000000FF0000000000FFFFFF00000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00DFDFDF008E8E8E00D7D7D700F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF009B9B9B002B2B2B006D6D6D00B3B3B300FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF003F3F3F004949490070707000343434002B2B2B003636360080808000B9B9
          B900E3E3E300F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF003434340095959500EFEFEF00E8E8E800BCBCBC007E7E7E00515151002626
          260032323200434343007A7A7A00CECECE00EBEBEB00FFFFFF00FFFFFF00E9E9
          E90037373700A8A8A800DCDCDC00F4F4F400FAFAFA00FFFFFF00FFFFFF00DADA
          DA00A9A9A9007979790051515100414141002D2D2D00DADADA00FFFFFF009B9B
          9B003C3C3C00BDBDBD00EFEFEF00F6F6F600FAFAFA00DBDBDB00D1D1D100FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00E8E8E8006363630048484800FFFFFF008181
          810057575700D3D3D300FAFAFA00FBFBFB00FBFBFB003737370096969600FFFF
          FF00FFFFFF00C6C6C600CACACA00F8F8F800FFFFFF0062626200FEFEFE007474
          740060606000EFEFEF00FDFDFD00FFFFFF00A5A5A5003C3C3C00B8B8B8006767
          6700949494002020200081818100FDFDFD00EDEDED0071717100EFEFEF004444
          440085858500FFFFFF00F9F9F900FFFFFF0051515100969696009F9F9F004545
          45004040400000000000AAAAAA00FFFFFF009B9B9B00BEBEBE00C5C5C5004242
          4200B3B3B200FFFFFF00D1D1D0005252520040404000E6E6E600ACACAC007E7E
          7E00696969007E7E7E00F8F8F800DEDEDE0077777700E4E4E400CFCFCF00403F
          3C00F3F1E900FDFDFF00EDEDEA0086857A0088877900FFFFFF00EEEEE8002828
          280024242500E6E6E700FFFFFF00C4C4C40077777700FFFFFF00ACACAB00403F
          40008799FF0096A3FA00ABB5FA00DBE0FF00D2D6F500ECEEF500FFFFFF00B5B3
          9900B1B09900FFFFFB00FFFFFF0085858500C6C6C600FFFFFF0066635700535B
          86004464FF0093A4FF009AA7FF00909DFF005768F2003040DB005B65DB008C93
          EE00A8ABF100C5C7E700EBECF90056565700FFFFFF00FFFFFF0097958D002327
          43002F43AF002F46CE003F53DD004B59D2003747D1000015DE00000EEB000003
          E3000006D2000F1ADD001D1C90009C9C9600FFFFFF00FFFFFF00FFFFFF00C2C1
          BE00C4C2BA0085858000616165004142620050569100343E8F00242E9900060E
          8C0000018F000000D10000005800D6D5CE00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00F8F8F900FAF9F100D6D5CA00B9B8B2009594
          8F009695B00067668F00696A7600E0E0DE00FFFFFF00FFFFFF00}
        MaskColor = clWhite
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
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001C0C0025763701A8C16312F2C96812FA9041
          05C7491D006B0000000000000000000000000000000000000000000000000000
          0000000000000000000036190042C76E1AF3FFAE4EFFFFAD47FFFFA73CFFFF97
          29FFEB7E18FE6B2C00900000000000000000000000000000000000000000AE5E
          10CE9D560DB220100029C56E1BF5FFB762FFFFB258FFD1731DF8672E008B3C17
          00535823007CA54400E8411A005A00000000000000000000000000000000CC81
          32F6FDC285FFB56202EEFFC98EFFFFBE73FFD37A22F83016003B000000000000
          0000000000001508001C5B24007A00000000000000000000000000000000AC68
          1FD5FFE0BDFFFFCF9EFFFFCC96FFECA65FFF582B007000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008B4E
          07B3FFE9D1FFFFD2A4FFFFCF9FFFCF8229FD592A00750F080012000000000000
          0000000000000000000001000001040100070000000000000000000000006D38
          0091FFF3E5FFFFE2C5FFFFDCB7FFFFD4A1FFFFC37DFF713B0091240E00317C39
          039E9E5016C7B6672AE0C08042F8BF7339F73714005200000000000000004221
          0055D99A43F8DA9D4BF9CE852BE3B36A16CA944F03B02816003169310094FFD9
          A0FFFFE5BCFFFFE4C0FFFFE2BCFFFFE4BAFF571C008F00000000000000000000
          000009040009020100020000000000000000000000000000000010060014511F
          007ACC7D38FEFFD3A0FFFFD1A2FFFFE0B1FF742F04B100000000000000000000
          0000000000000000000000000000000000000000000000000000000000005424
          0072F8B775FFFFCC94FFFFCF98FFFFDFB0FF964C17D300000000000000000000
          000000000000753B0090180D00190000000000000000000000003118003BD982
          2BF6FFBE74FFFFCA88FFA14700EFFECC9BFFBC6A2AF300000000000000000000
          0000000000004E28005EC36F01E7663900774323004F703A0089DC8222F6FFB0
          56FFFFC178FFC46C1EF31D0B002994480EB7A04B10C500000000000000000000
          0000000000000000000084480095F78F1AFEFC9529FFFFA139FFFFA742FFFFBF
          74FFCA6F1BF44921006200000000000000000000000000000000000000000000
          0000000000000000000000000000572D006FAC660FCBD47D1FFDCA7721F78845
          03B93518004B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object Query_Open_Users: TADOQuery
    Connection = ADOUsersRole
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'users_detail_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM view_users_users WHERE users_detail_id = :users_de' +
        'tail_id'
      'AND users_master_date_end IS NULL')
    Left = 600
    Top = 416
  end
  object DS_open_users: TDataSource
    DataSet = Query_Open_Users
    Left = 604
    Top = 444
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = cxGrid5
        Properties.Strings = (
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
      end
      item
        Component = Panel1
        Properties.Strings = (
          'Width')
      end>
    StorageName = '\Software\Lis1\UsersRole'
    StorageType = stRegistry
    Left = 220
    Top = 56
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ButtonArrowWidth = 24
    Categories.Strings = (
      'Default1'
      #1054#1085' '#1074#1080#1076#1080#1090
      #1045#1075#1086' '#1074#1080#1076#1103#1090)
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.Images = cxImageList_16
    LargeButtonArrowWidth = 24
    LookAndFeel.Kind = lfUltraFlat
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsOffice11
    UseSystemFont = True
    Left = 195
    Top = 54
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar
      Tag = 10
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton29'
        end>
      OldName = #1054#1089#1085#1086#1074#1085#1086#1081
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = True
      UseRecentItems = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton5: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' ...'
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '
      Visible = ivAlways
      ImageIndex = 36
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' ...'
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton6Click
    end
    object dxBarButton1: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Category = 0
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Visible = ivAlways
      ImageIndex = 37
      OnClick = dxBarButton1Click
    end
    object dxBarButton8: TdxBarButton
      Caption = #1055#1086#1083#1085#1099#1081' '#1076#1086#1089#1090#1091#1087' (Full)'
      Category = 0
      Hint = #1055#1086#1083#1085#1099#1081' '#1076#1086#1089#1090#1091#1087' (Full)'
      Visible = ivAlways
      ImageIndex = 11
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Tag = 1
      Caption = #1058#1086#1083#1100#1082#1086' '#1095#1090#1077#1085#1080#1077' (Read)'
      Category = 0
      Hint = #1058#1086#1083#1100#1082#1086' '#1095#1090#1077#1085#1080#1077' (Read)'
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton8Click
    end
    object dxBarButton19: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1092#1091#1085#1082#1094#1080#1080
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1092#1091#1085#1082#1094#1080#1080
      Visible = ivAlways
      ImageIndex = 36
      OnClick = dxBarButton19Click
    end
    object dxBarButton20: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1092#1091#1085#1082#1094#1080#1080
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1092#1091#1085#1082#1094#1080#1080
      Visible = ivAlways
      ImageIndex = 37
      OnClick = dxBarButton20Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 6
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton_FilterRecords1'
        end>
    end
    object dxBarButton23: TdxBarButton
      Tag = 100
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton23Click
    end
    object dxBarButton22: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      OnClick = dxBarButton22Click
    end
    object dxBarButton24: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton24Click
    end
    object dxBarButton25: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090
      Visible = ivAlways
      ImageIndex = 43
      OnClick = dxBarButton25Click
    end
    object dxBarButton26: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 36
      OnClick = dxBarButton26Click
    end
    object dxBarButton27: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 37
      OnClick = dxBarButton27Click
    end
    object dxBarButton28: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1089#1090#1091#1087' c '#1076#1088#1091#1075#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' ...'
      Category = 0
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1089#1090#1091#1087' c '#1076#1088#1091#1075#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '
      Visible = ivAlways
      ImageIndex = 33
      OnClick = dxBarButton28Click
    end
    object dxBarButton29: TdxBarButton
      Caption = #1040#1082#1090#1080#1074#1085#1099#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      Category = 0
      Hint = #1040#1082#1090#1080#1074#1085#1099#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      ImageIndex = 3
      OnClick = dxBarButton29Click
    end
    object dxBarButton_FilterRecords1: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton_FilterRecords1Click
    end
    object dxBarButton_AddFunc: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1092#1091#1085#1082#1094#1080#1080
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1092#1091#1085#1082#1094#1080#1080
      Visible = ivAlways
      ImageIndex = 36
      OnClick = dxBarButton_AddFuncClick
    end
    object dxBarButton_DelFunc: TdxBarButton
      Tag = 2
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1092#1091#1085#1082#1094#1080#1080
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1092#1091#1085#1082#1094#1080#1080
      Visible = ivAlways
      ImageIndex = 37
      OnClick = dxBarButton_AddFuncClick
    end
    object dxBarButton15: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '#1080#1079' '#1076#1088#1091#1075#1086#1081' '#1075#1088#1091#1087#1087#1099
      Category = 0
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '#1080#1079' '#1076#1088#1091#1075#1086#1081' '#1075#1088#1091#1087#1087#1099
      Visible = ivAlways
      ImageIndex = 30
      OnClick = dxBarButton15Click
    end
    object dxBarButton16: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1092#1091#1085#1082#1094#1080#1080' '#1086#1090' '#1076#1088#1091#1075#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' ...'
      Category = 0
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1092#1091#1085#1082#1094#1080#1080' '#1086#1090' '#1076#1088#1091#1075#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' '
      Visible = ivAlways
      ImageIndex = 33
      OnClick = dxBarButton16Click
    end
    object dxBarButton10: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton10Click
    end
    object dxBarButton17: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 43
      OnClick = dxBarButton17Click
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 6
      ItemLinks = <>
    end
    object dxBarButton18: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton18Click
    end
    object dxBarButton21: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      OnClick = dxBarButton21Click
    end
    object dxBarButton30: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 4
    end
    object dxBarButton31: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 5
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 6
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          Visible = True
          ItemName = 'dxBarButton33'
        end>
    end
    object dxBarButton32: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 7
    end
    object dxBarButton33: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1102' '#1080#1079' '#1075#1088#1091#1087#1087#1099' ...'
      Category = 1
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1102' '#1080#1079' '#1075#1088#1091#1087#1087#1099'... '
      Visible = ivAlways
      ImageIndex = 36
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1086#1090' '#1076#1088#1091#1075#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' ...'
      Category = 1
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1086#1090' '#1076#1088#1091#1075#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' ...'
      Visible = ivAlways
      ImageIndex = 33
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1102
      Category = 1
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1102
      Visible = ivAlways
      ImageIndex = 37
      OnClick = dxBarButton4Click
    end
    object dxBarButton7: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082#1086' '#1074#1089#1077#1084' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103#1084' '#1080#1079' '#1075#1088#1091#1087#1087#1099
      Category = 1
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1082#1086' '#1074#1089#1077#1084' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103#1084' '#1080#1079' '#1075#1088#1091#1087#1087#1099
      Visible = ivAlways
      ImageIndex = 34
      OnClick = dxBarButton7Click
    end
    object dxBarButton11: TdxBarButton
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1076#1083#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' ...'
      Category = 2
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1076#1083#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' ...'
      Visible = ivAlways
      ImageIndex = 36
      OnClick = dxBarButton11Click
    end
    object dxBarButton12: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1089#1090#1091#1087' c '#1076#1088#1091#1075#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' ...'
      Category = 2
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1089#1090#1091#1087' c '#1076#1088#1091#1075#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'... '
      Visible = ivAlways
      ImageIndex = 33
      OnClick = dxBarButton12Click
    end
    object dxBarButton13: TdxBarButton
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1074#1089#1077#1084' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103#1084' '#1075#1088#1091#1087#1087#1099
      Category = 2
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1074#1089#1077#1084' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103#1084' '#1075#1088#1091#1087#1087#1099
      Visible = ivAlways
      ImageIndex = 34
      OnClick = dxBarButton13Click
    end
    object dxBarButton14: TdxBarButton
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1076#1083#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Category = 2
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1076#1083#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Visible = ivAlways
      ImageIndex = 37
      OnClick = dxBarButton14Click
    end
    object dxBarGroup1: TdxBarGroup
      Items = (
        'dxBarButton5'
        'dxBarButton6'
        'dxBarButton1')
    end
  end
  object TdxBarSeparator
    Category = -1
    Visible = ivAlways
  end
  object dxBarPopup_User: TdxBarPopupMenu
    Tag = 10
    BarManager = dxBarManager1
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
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
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
      end>
    UseOwnFont = False
    OnPopup = dxBarPopup_UserPopup
    Left = 15
    Top = 182
    PixelsPerInch = 96
  end
  object dxBarPopup_page_0: TdxBarPopupMenu
    Tag = 11
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
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
      end>
    UseOwnFont = False
    OnPopup = dxBarPopup_UserPopup
    Left = 412
    Top = 479
    PixelsPerInch = 96
  end
  object dxBarPopup_page_1: TdxBarPopupMenu
    Tag = 12
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
        ItemName = 'dxBarButton8'
      end
      item
        Visible = True
        ItemName = 'dxBarButton9'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        Visible = True
        ItemName = 'dxBarButton12'
      end
      item
        Visible = True
        ItemName = 'dxBarButton13'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
      end>
    UseOwnFont = False
    OnPopup = dxBarPopup_UserPopup
    Left = 607
    Top = 471
    PixelsPerInch = 96
  end
  object Query_Functions: TADOQuery
    Connection = ADOUsersRole
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'users_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        '  SELECT i.inf_obj_id AS functions_id, i. inf_obj_name AS functi' +
        'ons_name, i.inf_obj_name_full AS functions_descriptions, CAST ( ' +
        'CASE WHEN (u.users_id IS NULL) THEN 0 ELSE 1 END  AS bit) AS use' +
        'rs_rights FROM inf_obj i'
      
        '  LEFT JOIN (SELECT * FROM users_functions WHERE users_id = :use' +
        'rs_id) u ON i.inf_obj_id = u.functions_id'
      '   WHERE type_inf_id = 36  ')
    Left = 691
    Top = 412
  end
  object DS_Functions: TDataSource
    DataSet = Query_Functions
    Left = 693
    Top = 437
  end
  object dxBarPopup_page_4: TdxBarPopupMenu
    Tag = 15
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
        ItemName = 'dxBarButton19'
      end
      item
        Visible = True
        ItemName = 'dxBarButton20'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton16'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
      end>
    UseOwnFont = False
    OnPopup = dxBarPopup_UserPopup
    Left = 693
    Top = 470
    PixelsPerInch = 96
  end
  object Query_UsersModuleRights: TADOQuery
    Connection = ADOUsersRole
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'users_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM users_module_rights WHERE users_id = :users_id')
    Left = 603
    Top = 124
  end
  object DS_UsersModuleRights: TDataSource
    DataSet = Client_UsersModuleRights
    Left = 573
    Top = 153
  end
  object dxBarPopup_page_5: TdxBarPopupMenu
    Tag = 16
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
        ItemName = 'dxBarButton26'
      end
      item
        Visible = True
        ItemName = 'dxBarButton27'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton28'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
      end>
    UseOwnFont = False
    OnPopup = dxBarPopup_UserPopup
    Left = 575
    Top = 184
    PixelsPerInch = 96
  end
  object Client_UsersModuleRights: TClientDataSet
    Aggregates = <>
    Filter = 'action<2'
    Filtered = True
    Params = <>
    AfterInsert = Client_UsersModuleRightsAfterInsert
    BeforePost = Client_UsersModuleRightsBeforePost
    Left = 571
    Top = 124
    object Client_UsersModuleRightsid: TAutoIncField
      FieldName = 'id'
    end
    object Client_UsersModuleRightsaction: TIntegerField
      FieldName = 'action'
    end
    object Client_UsersModuleRightsmodule_rights_id: TIntegerField
      FieldName = 'module_rights_id'
    end
    object Client_UsersModuleRightsusers_id: TIntegerField
      FieldName = 'users_id'
    end
    object Client_UsersModuleRightsmodule_name: TStringField
      FieldName = 'module_name'
      Size = 100
    end
    object Client_UsersModuleRightscomponent_name: TStringField
      FieldName = 'component_name'
      Size = 100
    end
    object Client_UsersModuleRightscomponent_properties_name: TStringField
      FieldName = 'component_properties_name'
      Size = 100
    end
    object Client_UsersModuleRightscomponent_properties_value: TStringField
      DisplayWidth = 100
      FieldName = 'component_properties_value'
    end
  end
  object cxLocalizer1: TcxLocalizer
    Active = True
    StorageType = lstResource
    Left = 250
    Top = 57
  end
  object DS_Func: TDataSource
    DataSet = Query_Func
    Left = 81
    Top = 161
  end
  object Query_Func: TADOQuery
    Connection = ADOUsersRole
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        '  SELECT inf_obj_id AS functions_id, inf_obj_name AS functions_n' +
        'ame, inf_obj_name_full AS functions_descriptions FROM inf_obj '
      '  WHERE type_inf_id = 36  ')
    Left = 78
    Top = 133
  end
  object DS_Func_Users: TDataSource
    DataSet = Query_Func_Users
    Left = 461
    Top = 185
  end
  object Query_Func_Users: TADOQuery
    Connection = ADOUsersRole
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'functions_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        '  SELECT u.users_id, u.FIO_users, CAST(case uf.rights WHEN 0 THE' +
        'N 1 ELSE 0 END AS BIT) AS users_rights, u.date_end, u.users_name' +
        ', u.personID'
      '  FROM users u'
      '  INNER JOIN view_users_group vug ON u.users_id = vug.users_id'
      
        '  LEFT JOIN users_functions uf ON u.users_id = uf.users_id AND f' +
        'unctions_id = :functions_id'
      ' WHERE date_end IS NULL')
    Left = 461
    Top = 155
  end
  object dxBarPopup_Func: TdxBarPopupMenu
    Tag = 17
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
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
      end>
    UseOwnFont = False
    OnPopup = dxBarPopup_UserPopup
    Left = 77
    Top = 183
    PixelsPerInch = 96
  end
  object dxBarPopup_Users_Func: TdxBarPopupMenu
    Tag = 18
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton_AddFunc'
      end
      item
        Visible = True
        ItemName = 'dxBarButton_DelFunc'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
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
      end>
    UseOwnFont = False
    OnPopup = dxBarPopup_UserPopup
    Left = 462
    Top = 214
    PixelsPerInch = 96
  end
  object Query_UsersActive: TADOQuery
    Connection = ADOUsersRole
    CursorType = ctStatic
    CommandTimeout = 100
    Parameters = <
      item
        Name = 'file_date'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'users_group_id'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT rtrim(loginame) AS loginame, hostname, FIO_users' +
        ', MIN(login_time) AS login_time, MAX(last_batch) AS last_batch, ' +
        'MIN(spid) AS spid,'
      #9#9'('
      '      SELECT'#9'top 1 new_value'
      '      FROM'#9'MONITOR_EVENT_SERVER'
      
        '      WHERE'#9'global_id = -9 AND base_objects_id = 888 AND compute' +
        'r_name = hostname COLLATE SQL_Latin1_General_CP1251_CI_AS'
      '      ORDER BY monitor_event_server_id DESC'
      #9#9') lis_version,'
      #9#9'('
      '      SELECT'#9'top 1 old_value'
      '      FROM'#9'MONITOR_EVENT_SERVER'
      
        '      WHERE'#9'global_id = -9 AND base_objects_id = 888 AND compute' +
        'r_name = hostname COLLATE SQL_Latin1_General_CP1251_CI_AS'
      '      ORDER BY monitor_event_server_id DESC'
      #9#9') lis_datetime,'
      
        #9#9'(SELECT top 1 ver_name FROM ver ORDER BY ver_id DESC) ver_name' +
        ', :file_date as ver_datetime, personID'
      'FROM'#9'master.dbo.sysprocesses'
      
        #9#9'INNER JOIN view_users ON loginame = CAST(users_name AS varchar' +
        '(50)) COLLATE SQL_Latin1_General_CP1251_CI_AS'
      'WHERE'#9'spid >= 0 AND spid <= 32767'
      #9#9'AND loginame NOT LIKE '#39'%admin%'#39
      #9#9'AND loginame NOT LIKE '#39'%1c%'#39
      #9#9'AND loginame NOT LIKE '#39'%etran%'#39
      #9#9'AND users_group_id = :users_group_id'
      
        'GROUP BY loginame, hostname, users_group_name, users_group_cod, ' +
        'FIO_users, personID'
      '')
    Left = 140
    Top = 133
  end
  object DS_UsersActive: TDataSource
    DataSet = Query_UsersActive
    Left = 139
    Top = 161
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton10'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem2'
      end>
    UseOwnFont = False
    Left = 136
    Top = 190
    PixelsPerInch = 96
  end
end
