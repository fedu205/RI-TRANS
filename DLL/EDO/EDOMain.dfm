object fmEDOMain: TfmEDOMain
  Left = 0
  Top = 0
  Caption = 'fmEDOMain'
  ClientHeight = 588
  ClientWidth = 1087
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 365
    Width = 1087
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    Color = 8421631
    ParentColor = False
    ExplicitTop = 26
    ExplicitWidth = 294
  end
  object Panel1: TPanel
    Left = 0
    Top = 370
    Width = 1087
    Height = 218
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 0
      Width = 1087
      Height = 218
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 218
      ClientRectRight = 1087
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'cxTabSheet1'
        ImageIndex = 0
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 1087
          Height = 194
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu1
            OnDblClick = cxGridDBBandedTableView1DblClick
            OnKeyPress = cxGridDBBandedTableView1KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDBBandedTableView1CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView1FocusedItemChanged
            DataController.DataSource = DS1
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
            DataController.Filter.Active = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView1CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView1CustomDrawColumnHeader
            Bands = <
              item
              end>
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBBandedTableView1
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'cxTabSheet2'
        ImageIndex = 1
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 1087
          Height = 194
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView2: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu2
            OnKeyPress = cxGridDBBandedTableView2KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDBBandedTableView2CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView2FocusedItemChanged
            DataController.DataSource = DS2
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
            DataController.Filter.Active = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
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
      object cxTabSheet3: TcxTabSheet
        Caption = 'cxTabSheet3'
        ImageIndex = 2
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid4: TcxGrid
          Left = 0
          Top = 0
          Width = 1087
          Height = 194
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView3: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu3
            OnKeyPress = cxGridDBBandedTableView3KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDBBandedTableView3CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView3FocusedItemChanged
            DataController.DataSource = DS3
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
            DataController.Filter.Active = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView3CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView3CustomDrawColumnHeader
            Bands = <
              item
              end>
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBBandedTableView3
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'cxTabSheet4'
        ImageIndex = 3
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid5: TcxGrid
          Left = 0
          Top = 0
          Width = 1087
          Height = 194
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView4: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu4
            OnKeyPress = cxGridDBBandedTableView4KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDBBandedTableView4CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView4FocusedItemChanged
            DataController.DataSource = DS4
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
            DataController.Filter.Active = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView4CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView4CustomDrawColumnHeader
            Bands = <
              item
              end>
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBBandedTableView4
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'cxTabSheet5'
        ImageIndex = 4
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid6: TcxGrid
          Left = 0
          Top = 0
          Width = 1087
          Height = 194
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView5: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu5
            OnKeyPress = cxGridDBBandedTableView5KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDBBandedTableView5CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView5FocusedItemChanged
            DataController.DataSource = DS5
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
            DataController.Filter.Active = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView5CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView5CustomDrawColumnHeader
            Bands = <
              item
              end>
          end
          object cxGridLevel5: TcxGridLevel
            GridView = cxGridDBBandedTableView5
          end
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = 'cxTabSheet6'
        ImageIndex = 5
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid7: TcxGrid
          Left = 0
          Top = 0
          Width = 1087
          Height = 194
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView6: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu6
            OnKeyPress = cxGridDBBandedTableView6KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDBBandedTableView6CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView6FocusedItemChanged
            DataController.DataSource = DS6
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
            DataController.Filter.Active = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView6CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView6CustomDrawColumnHeader
            Bands = <
              item
              end>
          end
          object cxGridLevel6: TcxGridLevel
            GridView = cxGridDBBandedTableView6
          end
        end
      end
      object cxTabSheet7: TcxTabSheet
        Caption = 'cxTabSheet7'
        ImageIndex = 6
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid8: TcxGrid
          Left = 0
          Top = 0
          Width = 1087
          Height = 194
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView7: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu7
            OnKeyPress = cxGridDBBandedTableView7KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDBBandedTableView7CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView7FocusedItemChanged
            DataController.DataSource = DS7
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
            DataController.Filter.Active = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView7CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView7CustomDrawColumnHeader
            Bands = <
              item
              end>
          end
          object cxGridLevel7: TcxGridLevel
            GridView = cxGridDBBandedTableView7
          end
        end
      end
      object cxTabSheet8: TcxTabSheet
        Caption = 'cxTabSheet8'
        ImageIndex = 7
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid9: TcxGrid
          Left = 0
          Top = 0
          Width = 1087
          Height = 194
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView8: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu8
            OnKeyPress = cxGridDBBandedTableView8KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDBBandedTableView8CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView8FocusedItemChanged
            DataController.DataSource = DS8
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
            DataController.Filter.Active = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView8CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView8CustomDrawColumnHeader
            Bands = <
              item
              end>
          end
          object cxGridLevel8: TcxGridLevel
            GridView = cxGridDBBandedTableView8
          end
        end
      end
      object cxTabSheet9: TcxTabSheet
        Caption = 'cxTabSheet9'
        ImageIndex = 8
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid10: TcxGrid
          Left = 0
          Top = 0
          Width = 1087
          Height = 194
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView9: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu9
            OnKeyPress = cxGridDBBandedTableView9KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDBBandedTableView9CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView9FocusedItemChanged
            DataController.DataSource = DS9
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
            DataController.Filter.Active = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView9CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView9CustomDrawColumnHeader
            Bands = <
              item
              end>
          end
          object cxGridLevel9: TcxGridLevel
            GridView = cxGridDBBandedTableView9
          end
        end
      end
      object cxTabSheet10: TcxTabSheet
        Caption = 'cxTabSheet10'
        ImageIndex = 9
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid11: TcxGrid
          Left = 0
          Top = 0
          Width = 1087
          Height = 194
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView10: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu10
            OnKeyPress = cxGridDBBandedTableView10KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDBBandedTableView10CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView10FocusedItemChanged
            DataController.DataSource = DS10
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
            DataController.Filter.Active = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView10CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView10CustomDrawColumnHeader
            Bands = <
              item
              end>
          end
          object cxGridLevel10: TcxGridLevel
            GridView = cxGridDBBandedTableView10
          end
        end
      end
      object cxTabSheet11: TcxTabSheet
        Caption = 'cxTabSheet11'
        ImageIndex = 10
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid12: TcxGrid
          Left = 0
          Top = 0
          Width = 1087
          Height = 194
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView11: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu11
            OnKeyPress = cxGridDBBandedTableView11KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDBBandedTableView11CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView11FocusedItemChanged
            DataController.DataSource = DS11
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
            DataController.Filter.Active = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView11CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView11CustomDrawColumnHeader
            Bands = <
              item
              end>
          end
          object cxGridLevel11: TcxGridLevel
            GridView = cxGridDBBandedTableView11
          end
        end
      end
      object cxTabSheet12: TcxTabSheet
        Caption = 'cxTabSheet12'
        ImageIndex = 11
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid13: TcxGrid
          Left = 0
          Top = 0
          Width = 1087
          Height = 194
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView12: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu12
            OnKeyPress = cxGridDBBandedTableView12KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDBBandedTableView12CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView12FocusedItemChanged
            DataController.DataSource = DS12
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
            DataController.Filter.Active = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView12CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView12CustomDrawColumnHeader
            Bands = <
              item
              end>
          end
          object cxGridLevel12: TcxGridLevel
            GridView = cxGridDBBandedTableView12
          end
        end
      end
      object cxTabSheet13: TcxTabSheet
        Caption = 'cxTabSheet13'
        ImageIndex = 12
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid14: TcxGrid
          Left = 0
          Top = 0
          Width = 1087
          Height = 194
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView13: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu13
            OnKeyPress = cxGridDBBandedTableView13KeyPress
            Navigator.Buttons.CustomButtons = <>
            OnCustomDrawCell = cxGridDBBandedTableView13CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView13FocusedItemChanged
            DataController.DataSource = DS13
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
            DataController.Filter.Active = True
            DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView13CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView13CustomDrawColumnHeader
            Bands = <
              item
              end>
          end
          object cxGridLevel13: TcxGridLevel
            GridView = cxGridDBBandedTableView13
          end
        end
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 26
    Width = 1087
    Height = 339
    Align = alClient
    TabOrder = 5
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.ScrollbarMode = sbmClassic
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      PopupMenu = dxBarPopupMenu14
      OnDblClick = cxGrid1DBBandedTableView1DblClick
      OnKeyPress = cxGrid1DBBandedTableView1KeyPress
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
      OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
      OnFocusedRecordChanged = cxGrid1DBBandedTableView1FocusedRecordChanged
      DataController.DataSource = DS_EDO
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
      DataController.Filter.Active = True
      DataController.KeyFieldNames = 'EDO_docs_id'
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid1DBBandedTableView1EDO_docs_id
        end
        item
          Format = '#,##0.00'
          Kind = skSum
        end
        item
        end
        item
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
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.HeaderHeight = 35
      OptionsView.BandHeaders = False
      OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
      OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
      Bands = <
        item
        end>
      object cxGrid1DBBandedTableView1EDO_docs_id: TcxGridDBBandedColumn
        Caption = #8470' '#1079#1072#1087#1080#1089#1080
        DataBinding.FieldName = 'EDO_docs_id'
        HeaderAlignmentVert = vaTop
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object EDO: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    OnExecuteComplete = EDOExecuteComplete
    Left = 48
    Top = 72
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
    Left = 120
    Top = 168
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
          ItemName = 'dxBarButton99'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton98'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton1Click
    end
    object dxBarSubItem2: TdxBarSubItem
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
    end
    object dxBarSubItem3: TdxBarSubItem
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
          BeginGroup = True
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
        end>
    end
    object dxBarButton5: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
    end
    object dxBarButton6: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
    end
    object dxBarButton7: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
    end
    object dxBarButton8: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton9: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
    end
    object dxBarSubItem4: TdxBarSubItem
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
    end
    object dxBarButton11: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
    end
    object dxBarButton12: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
    end
    object dxBarButton13: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton14: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
    end
    object dxBarSubItem5: TdxBarSubItem
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
    end
    object dxBarButton16: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
    end
    object dxBarButton17: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
    end
    object dxBarButton18: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton19: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1088#1077#1084#1086#1085#1090#1072
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '#1088#1077#1084#1086#1085#1090#1072
      Visible = ivAlways
      ImageIndex = 0
    end
    object dxBarButton20: TdxBarButton
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1074' '#1088#1077#1084#1086#1085#1090
      Category = 0
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1074' '#1088#1077#1084#1086#1085#1090
      Visible = ivAlways
      ImageIndex = 19
    end
    object dxBarButton21: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton21Click
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
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
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton25'
        end>
    end
    object dxBarButton22: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton22Click
    end
    object dxBarButton23: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton23Click
    end
    object dxBarButton24: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton24Click
    end
    object dxBarButton25: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
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
    object dxBarSubItem7: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
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
          ItemName = 'dxBarButton29'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton30'
        end>
    end
    object dxBarButton27: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton27Click
    end
    object dxBarButton28: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton28Click
    end
    object dxBarButton29: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton29Click
    end
    object dxBarButton30: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
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
    object dxBarSubItem8: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton33'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton34'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton35'
        end>
    end
    object dxBarButton32: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton32Click
    end
    object dxBarButton33: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton33Click
    end
    object dxBarButton34: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton34Click
    end
    object dxBarButton35: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton35Click
    end
    object dxBarButton36: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton36Click
    end
    object dxBarSubItem9: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton37'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton38'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton39'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton40'
        end>
    end
    object dxBarButton37: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton37Click
    end
    object dxBarButton38: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton38Click
    end
    object dxBarButton39: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton39Click
    end
    object dxBarButton40: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton40Click
    end
    object dxBarButton41: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton41Click
    end
    object dxBarSubItem10: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton42'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton43'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton44'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton45'
        end>
    end
    object dxBarButton42: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton42Click
    end
    object dxBarButton43: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton43Click
    end
    object dxBarButton44: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton44Click
    end
    object dxBarButton45: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton45Click
    end
    object dxBarButton46: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton46Click
    end
    object dxBarSubItem11: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton47'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton48'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton49'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton50'
        end>
    end
    object dxBarButton47: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton47Click
    end
    object dxBarButton48: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton48Click
    end
    object dxBarButton49: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton49Click
    end
    object dxBarButton50: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton50Click
    end
    object dxBarButton51: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton51Click
    end
    object dxBarSubItem12: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton52'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton53'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton54'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton55'
        end>
    end
    object dxBarButton52: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton52Click
    end
    object dxBarButton53: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton53Click
    end
    object dxBarButton54: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton54Click
    end
    object dxBarButton55: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton55Click
    end
    object dxBarButton56: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton56Click
    end
    object dxBarSubItem13: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton57'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton58'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton59'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton60'
        end>
    end
    object dxBarButton57: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton57Click
    end
    object dxBarButton58: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton58Click
    end
    object dxBarButton59: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton59Click
    end
    object dxBarButton60: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton60Click
    end
    object dxBarButton61: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton61Click
    end
    object dxBarSubItem14: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton62'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton63'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton64'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton65'
        end>
    end
    object dxBarButton62: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton62Click
    end
    object dxBarButton63: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton63Click
    end
    object dxBarButton64: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton64Click
    end
    object dxBarButton65: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton65Click
    end
    object dxBarButton66: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton66Click
    end
    object dxBarSubItem15: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton67'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton68'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton69'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton70'
        end>
    end
    object dxBarButton67: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton67Click
    end
    object dxBarButton68: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton68Click
    end
    object dxBarButton69: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton69Click
    end
    object dxBarButton70: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton70Click
    end
    object dxBarButton71: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton71Click
    end
    object dxBarSubItem16: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton72'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton73'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton74'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton75'
        end>
    end
    object dxBarButton72: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton72Click
    end
    object dxBarButton73: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton73Click
    end
    object dxBarButton74: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton74Click
    end
    object dxBarButton75: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton75Click
    end
    object dxBarButton76: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton76Click
    end
    object dxBarSubItem17: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton77'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton78'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton79'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton80'
        end>
    end
    object dxBarButton77: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton77Click
    end
    object dxBarButton78: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton78Click
    end
    object dxBarButton79: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton79Click
    end
    object dxBarButton80: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton80Click
    end
    object dxBarButton81: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton81Click
    end
    object dxBarSubItem18: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton82'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton83'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton84'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton85'
        end>
    end
    object dxBarButton82: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton82Click
    end
    object dxBarButton83: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton83Click
    end
    object dxBarButton84: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton84Click
    end
    object dxBarButton85: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton85Click
    end
    object dxBarButton86: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton86Click
    end
    object dxBarSubItem19: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton87'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton88'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton89'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton90'
        end>
    end
    object dxBarButton87: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton87Click
    end
    object dxBarButton88: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton88Click
    end
    object dxBarButton89: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton89Click
    end
    object dxBarButton90: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton90Click
    end
    object dxBarButton91: TdxBarButton
      Tag = 1
      Caption = #1056#1077#1084#1086#1085#1090
      Category = 0
      Hint = #1056#1077#1084#1086#1085#1090
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton91Click
    end
    object dxBarButton92: TdxBarButton
      Caption = #1055#1077#1088#1077#1081#1090#1080' '#1074' '#1088#1077#1084#1086#1085#1090
      Category = 0
      Hint = #1055#1077#1088#1077#1081#1090#1080' '#1074' '#1088#1077#1084#1086#1085#1090
      Visible = ivAlways
      ImageIndex = 19
      OnClick = dxBarButton92Click
    end
    object dxBarButton93: TdxBarButton
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Category = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Visible = ivAlways
      ImageIndex = 22
      OnClick = dxBarButton93Click
    end
    object dxBarButton94: TdxBarButton
      Caption = #1057#1086#1075#1083#1072#1089#1086#1074#1072#1090#1100' '#1087#1072#1082#1077#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      Category = 0
      Hint = #1057#1086#1075#1083#1072#1089#1086#1074#1072#1090#1100' '#1087#1072#1082#1077#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      Visible = ivAlways
      ImageIndex = 21
      OnClick = dxBarButton94Click
    end
    object dxBarButton95: TdxBarButton
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Category = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Visible = ivAlways
      ImageIndex = 22
      OnClick = dxBarButton95Click
    end
    object dxBarButton96: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Visible = ivAlways
      ImageIndex = 24
      OnClick = dxBarButton96Click
    end
    object dxBarButton97: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Visible = ivAlways
      ImageIndex = 24
      OnClick = dxBarButton97Click
    end
    object dxBarButton98: TdxBarButton
      Tag = 2
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 25
      OnClick = dxBarButton99Click
    end
    object dxBarButton99: TdxBarButton
      Tag = 1
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 26
      OnClick = dxBarButton99Click
    end
    object dxBarButton100: TdxBarButton
      Tag = 2
      Caption = #1061#1088#1072#1085#1077#1085#1080#1077
      Category = 0
      Hint = #1061#1088#1072#1085#1077#1085#1080#1077
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton91Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091' '
      Category = 0
      Visible = ivAlways
      ImageIndex = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton91'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton100'
        end>
    end
  end
  object Query_EDO: TADOQuery
    Connection = EDO
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
      end>
    SQL.Strings = (
      'SELECT'#9'EDO_docid,'
      'EDO_docs.EDO_docs_id,'
      
        #9#9'EDO_xml.value('#39'(/data/formname)[1]'#39','#39'varchar(max)'#39') as formnam' +
        'e,'
      
        #9#9'EDO_xml.value('#39'(/data/asufrrez)[1]'#39','#39'varchar(max)'#39') as asufrre' +
        'z,'
      #9#9'EDO_xml.value('#39'(/data/P_1)[1]'#39','#39'varchar(max)'#39') as P_1,'
      #9#9'EDO_xml.value('#39'(/data/P_1a)[1]'#39','#39'varchar(max)'#39') as P_1a,'
      #9#9'EDO_xml.value('#39'(/data/P_1b)[1]'#39','#39'varchar(max)'#39') as P_1b,'
      #9#9'EDO_xml.value('#39'(/data/P_1_1)[1]'#39','#39'varchar(max)'#39') as P_1_1,'
      #9#9'EDO_xml.value('#39'(/data/P_1_1a)[1]'#39','#39'varchar(max)'#39') as P_1_1a,'
      #9#9'EDO_xml.value('#39'(/data/P_2)[1]'#39','#39'varchar(max)'#39') as P_2,'
      #9#9'EDO_xml.value('#39'(/data/P_3)[1]'#39','#39'varchar(max)'#39') as P_3,'
      #9#9'EDO_xml.value('#39'(/data/P_4)[1]'#39','#39'varchar(max)'#39') as P_4,'
      #9#9'EDO_xml.value('#39'(/data/P_4a)[1]'#39','#39'varchar(max)'#39') as P_4a,'
      #9#9'EDO_xml.value('#39'(/data/P_4b)[1]'#39','#39'varchar(max)'#39') as P_4b,'
      #9#9'EDO_xml.value('#39'(/data/P_4_1)[1]'#39','#39'varchar(max)'#39') as P_4_1,'
      #9#9'EDO_xml.value('#39'(/data/P_4_1a)[1]'#39','#39'varchar(max)'#39') as P_4_1a,'
      #9#9'EDO_xml.value('#39'(/data/P_5)[1]'#39','#39'varchar(max)'#39') as P_5,'
      #9#9'EDO_xml.value('#39'(/data/P_6)[1]'#39','#39'varchar(max)'#39') as P_6,'
      #9#9'EDO_xml.value('#39'(/data/P_7)[1]'#39','#39'varchar(max)'#39') as P_7,'
      #9#9'EDO_xml.value('#39'(/data/P_8)[1]'#39','#39'datetime'#39') as P_8,'
      #9#9'EDO_xml.value('#39'(/data/P_9)[1]'#39','#39'varchar(max)'#39') as P_9,'
      #9#9'EDO_xml.value('#39'(/data/P_9a)[1]'#39','#39'datetime'#39') as P_9a,'
      #9#9'EDO_xml.value('#39'(/data/P_9b)[1]'#39','#39'varchar(max)'#39') as P_9b,'
      #9#9'EDO_xml.value('#39'(/data/P_10v)[1]'#39','#39'varchar(max)'#39') as P_10v,'
      #9#9'EDO_xml.value('#39'(/data/P_10g)[1]'#39','#39'datetime'#39') as P_10g,'
      #9#9'EDO_xml.value('#39'(/data/P_11v)[1]'#39','#39'varchar(max)'#39') as P_11v,'
      #9#9'EDO_xml.value('#39'(/data/P_11g)[1]'#39','#39'datetime'#39') as P_11g,'
      #9#9'EDO_xml.value('#39'(/data/P_12)[1]'#39','#39'varchar(max)'#39') as P_12,'
      #9#9'EDO_xml.value('#39'(/data/P_20)[1]'#39','#39'varchar(max)'#39') as P_20,'
      #9#9'EDO_xml.value('#39'(/data/P_21)[1]'#39','#39'float'#39') as P_21,'
      #9#9'EDO_xml.value('#39'(/data/P_22)[1]'#39','#39'float'#39') as P_22,'
      #9#9'EDO_xml.value('#39'(/data/P_23)[1]'#39','#39'float'#39') as P_23,'
      #9#9'EDO_xml.value('#39'(/data/P_24)[1]'#39','#39'float'#39') as P_24,'
      #9#9'EDO_xml.value('#39'(/data/P_25)[1]'#39','#39'varchar(max)'#39') as P_25,'
      #9#9'EDO_xml.value('#39'(/data/P_25a)[1]'#39','#39'datetime'#39') as P_25a,'
      #9#9'EDO_xml.value('#39'(/data/P_25b)[1]'#39','#39'varchar(max)'#39') as P_25b,'
      #9#9'EDO_xml.value('#39'(/data/P_26)[1]'#39','#39'datetime'#39') as P_26,'
      #9#9'EDO_xml.value('#39'(/data/P_27)[1]'#39','#39'datetime'#39') as P_27,'
      #9#9'EDO_xml.value('#39'(/data/P_28)[1]'#39','#39'varchar(max)'#39') as P_28,'
      #9#9'EDO_xml.value('#39'(/data/P_30)[1]'#39','#39'float'#39') as P_30,'
      #9#9'EDO_xml.value('#39'(/data/P_30a)[1]'#39','#39'varchar(max)'#39') as P_30a,'
      #9#9'EDO_xml.value('#39'(/data/P_31)[1]'#39','#39'float'#39') as P_31,'
      #9#9'EDO_xml.value('#39'(/data/P_31a)[1]'#39','#39'varchar(max)'#39') as P_31a,'
      #9#9'EDO_xml.value('#39'(/data/P_32a)[1]'#39','#39'varchar(max)'#39') as P_32a,'
      #9#9'EDO_xml.value('#39'(/data/P_32v)[1]'#39','#39'varchar(max)'#39') as P_32v,'
      #9#9'EDO_xml.value('#39'(/data/P_33a)[1]'#39','#39'varchar(max)'#39') as P_33a,'
      #9#9'EDO_xml.value('#39'(/data/P_33v)[1]'#39','#39'varchar(max)'#39') as P_33v,'
      #9#9'EDO_xml.value('#39'(/data/P_34)[1]'#39','#39'varchar(max)'#39') as P_34,'
      #9#9'EDO_xml.value('#39'(/data/P_35)[1]'#39','#39'varchar(max)'#39') as P_35,'
      #9#9'EDO_xml.value('#39'(/data/P_36)[1]'#39','#39'varchar(max)'#39') as P_36,'
      #9#9'EDO_xml.value('#39'(/data/P_37)[1]'#39','#39'int'#39') as P_37,'
      #9#9'EDO_xml.value('#39'(/data/P_38)[1]'#39','#39'varchar(max)'#39') as P_38,'
      #9#9'EDO_xml.value('#39'(/data/P_39)[1]'#39','#39'varchar(max)'#39') as P_39,'
      #9#9'EDO_xml.value('#39'(/data/P_40)[1]'#39','#39'varchar(max)'#39') as P_40,'
      #9#9'EDO_xml.value('#39'(/data/kleimo)[1]'#39','#39'varchar(max)'#39') as kleimo,'
      #9#9'EDO_link.fact_repair_id,'
      'EDO_status_name'
      
        'FROM'#9'EDO_docs left join EDO_link on EDO_docs.EDO_docs_id = EDO_l' +
        'ink.EDO_docs_id'
      'WHERE'#9'EDO_type = '#39#1060#1055#1059'-26'#39
      
        '        AND EDO_xml.value('#39'(/data/P_8)[1]'#39','#39'datetime'#39')  between ' +
        ':date1 and :date2'
      '')
    Left = 304
    Top = 200
  end
  object DS_EDO: TDataSource
    DataSet = Query_EDO
    Left = 336
    Top = 136
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 7274722
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
          2000000000000004000000000000000000000000000000000000000000002929
          294D898989FF898989FF898989FF898989FF898989FF898989FF898989FF8989
          89FF898989FF898989FF2929294D000000000000000000000000000000008989
          89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF898989FF000000000000000000000000000000008989
          89FFFFFFFFFFDFDFDFFFDCDCDCFFDDDDDDFF4D5B65FF4D5B65FF4D5B65FF4D5B
          65FFE8E8E8FFFFFFFFFF939393FF000000000000000000000000000000008989
          89FFFFFFFFFFE2E2E2FFE0E0E0FFEAEAEAFF4D5B65FF4D5B65FF81BBBFFF6B92
          99FF4D5B65FFFFFFFFFFB6B6B6FF161616160000000000000000000000008989
          89FFFFFFFFFFE5E5E5FFE3E3E3FFF0F0F0FF4D5B65FF98E5E6FF81BBBFFF81BB
          BFFF4B7B9DFF4D5B65FFC4C4C4FF626262621616161600000000000000008989
          89FFFFFFFFFFE9E9E9FFE6E6E6FFF2F2F2FF4D5B65FF98E5E6FF98E5E6FF4994
          C7FF4994C7FF4B7B9DFF4D5B65FF808080806262626216161616000000008989
          89FFFFFFFFFFECECECFFEAEAEAFFF0F0F0FFF2F2F2FF4D5B65FF47ACF2FF47AC
          F2FF4994C7FF4994C7FF4B7B9DFF4D5B65FF8080808062626262000000008989
          89FFFFFFFFFFEFEFEFFFEDEDEDFFEDEDEDFFF1F1F1FFF3F3F3FF4D5B65FF47AC
          F2FF47ACF2FF4994C7FF4994C7FF4B7B9DFF4D5B65FF80808080000000008989
          89FFFFFFFFFFF2F2F2FFF0F0F0FFEEEEEEFFEEEEEEFFF1F1F1FFF3F3F3FF4D5B
          65FF47ACF2FF47ACF2FF4994C7FF4994C7FF4B7B9DFF4D5B65FF000000008989
          89FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFF1F1F1FFEFEFEFFFF2F2F2FFF4F4
          F4FF4D5B65FF47ACF2FF47ACF2FF4994C7FF4B7B9DFF4D5B65FF000000008989
          89FF898989FF898989FF898989FF959595E8D1D1D1FFF0F0F0FFF0F0F0FFF3F3
          F3FFF4F4F4FF4D5B65FF47ACF2FF47ACF2FF4D5B65FF80808080000000000000
          0000898989FFD1D1D1FFB3B3B3B3898989FFD1D1D1FFF3F3F3FFF1F1F1FFF0F0
          F0FFF4F4F4FFFFFFFFFF4D5B65FF4D5B65FF8080808062626262000000000000
          000000000000898989FFD1D1D1FF898989FFD1D1D1FFF6F6F6FFF4F4F4FFF2F2
          F2FFF0F0F0FFFFFFFFFFC4C4C4FF808080806262626216161616000000000000
          00000000000000000000898989FF898989FFD1D1D1FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF898989FF000000000000000000000000000000000000
          0000000000000000000000000000898989FF898989FF898989FF898989FF8989
          89FF898989FF898989FF2C2C2C52000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00002929294D898989FF898989FF898989FF898989FF898989FF898989FF8989
          89FF898989FF898989FF898989FF2929294D0000000000000000000000000000
          0000898989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF898989FF0000000000000000000000000000
          0000898989FFFFFFFFFFDFDFDFFFDCDCDCFFDADADAFFD8D8D8FF898989FF4747
          47FF898989FFD1D1D1FFFFFFFFFF898989FF0000000000000000000000000000
          0000898989FFFFFFFFFFE2E2E2FFE0E0E0FFDDDDDDFF898989FF474747FF73D9
          6EFF474747FF898989FFFFFFFFFFF3F3F3FF0000000000000000000000000000
          0000898989FFFFFFFFFFE5E5E5FFE3E3E3FF898989FF474747FF73D96EFF73D9
          6EFF73D96EFF474747FF898989FFF3F3F3FF0000000000000000000000000000
          0000898989FFFFFFFFFFE9E9E9FFE6E6E6FF474747FF73D96EFF73D96EFF4747
          47FF73D96EFF73D96EFF474747FF898989FF0000000000000000000000000000
          0000898989FFFFFFFFFFECECECFFEAEAEAFF474747FF73D96EFF474747FF8989
          89FF474747FF73D96EFF73D96EFF474747FF898989FF00000000000000000000
          0000898989FFFFFFFFFFEFEFEFFFEDEDEDFF898989FF474747FF898989FFE4E4
          E4FF898989FF474747FF73D96EFF73D96EFF474747FF898989FF000000000000
          0000898989FFFFFFFFFFF2F2F2FFF0F0F0FFEEEEEEFFECECECFFE9E9E9FFE7E7
          E7FFE5E5E5FF898989FF474747FF73D96EFF73D96EFF474747FF000000000000
          0000898989FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFF1F1F1FFEDEDEDFFEAEA
          EAFFE8E8E8FFE6E6E6FF898989FF474747FF73D96EFF474747FF000000000000
          0000898989FF898989FF898989FF898989FF959595E8D1D1D1FFF0F0F0FFEEEE
          EEFFEBEBEBFFE9E9E9FFFFFFFFFF898989FF474747FF898989FF000000000000
          000000000000898989FFD1D1D1FFB3B3B3B3898989FFD1D1D1FFF3F3F3FFF1F1
          F1FFEFEFEFFFECECECFFFFFFFFFFF3F3F3FF0000000000000000000000000000
          00000000000000000000898989FFD1D1D1FF898989FFD1D1D1FFF6F6F6FFF4F4
          F4FFF2F2F2FFEFEFEFFFFFFFFFFF898989FF0000000000000000000000000000
          0000000000000000000000000000898989FF898989FFD1D1D1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF898989FF0000000000000000000000000000
          000000000000000000000000000000000000898989FF898989FF898989FF8989
          89FF898989FF898989FF898989FF2C2C2C520000000000000000000000000000
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
          00000000000100000002000000080000000C0000000F0000000F0000000D0000
          0007000000040000000700000007000000020000000000000000000000000000
          0001000000050204031C102F2291184A34D31E5C41FF1E5B40FF184732D2112F
          227D0000000E14382995072C1B95000000090000000100000000000000010000
          00080A1C145722674CE723966DFF23B481FF24CA92FF39CF9DFF37886AFF0C21
          185D06100C392A7B5CFB146744FB020C08370000000400000000000000060D25
          1C652E8867FF28B586FF3BDAA8FF59E0B7FF6FE5C2FF5FC6A6FF1F533FBF0000
          00161E523DBF27B786FF1EB07DFF0C3E28BF0000000C00000001040A08223080
          62F62BBA8BFF42DDADFF65CEADFF53AB8EFF3A8B6EFF2F7D60FA07120D360E24
          1B5D2F9671FF28D59EFF28D59EFF1D805AFF051B125C00000005194434903CAC
          88FF2DDAA5FF5ECFAEFF45987CF914362A750409072002050415010302162B73
          57E12ACC98FF29D8A1FF2AD7A0FF26C592FF145438E00001010F2A7258D438C7
          9BFF30DDA9FF5CB699FF194133810000000700000001000000061941328460B8
          9CFF83ECCFFF2BDAA5FF34DBA8FF88EDD0FF479D7FFF0B2A1C77358C6DF250DF
          B6FF61E8C2FF3F9475FF040A081E00000002000000000205040F36896CF4378F
          70FF419A7BFF30DCA8FF38D7A7FF358A6BFF34886AFF317E61EF3B997AFA98ED
          D8FF8DF1D8FF398E6DFF040B0820000000010000000000000002000000070205
          04193F9675FF43E2B3FF4DDAB1FF1D6749F20000000F0000000734856AD398E1
          CFFF9AF4DEFF57A98BFF11382681000000060000000100000001000000051237
          287659B092FF8BF1D7FF6ECEB2FF1E6047D400000006000000002359478A81CF
          BAFFB4F9EAFF82D3BCFF3A8767FB0E352383030C0823030C08230E3222753D8E
          6EF984DFC7FFAAF6E5FF6FB8A0FF1642328C0000000300000000050D0A1855B2
          95F5A5E5D5FFBCFAEDFF94E5D0FF56A386FF2D7B59FF2D7B59FF54A386FF85D4
          BDFFB5F8EAFF9ADAC9FF419477F5030A0719000000010000000000000002173A
          2F5669C6AAFFAAE7D9FFCBFDF3FFC1FBEFFFBAF9ECFFB8F9EBFFBEFBEEFFC7FC
          F2FFA6E5D5FF5CB096FF12302657000000020000000000000000000000000000
          0002122E264453AB90E38AD7C2FFB2EADDFFCEF9F1FFCEF9F1FFB1EADCFF87D4
          BFFF50A78CE40F29204400000002000000000000000000000000000000000000
          0000000000010409070F255D4C813A9076C849B896FC49B795FC399075C8255B
          4A82030907100000000100000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000200000002000000020000
          0001000000000000000000000000000000000000000000000000}
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
      end>
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
    StorageName = '\Software\Lis1\EDOMain'
    StorageType = stRegistry
    Left = 416
    Top = 248
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 128
    Top = 232
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 13565951
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14141181
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object Query1: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EDO_docs_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @xml xml'
      
        'SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_doc' +
        's_id'
      ''
      'SELECT'#9'ref.value('#39'(P_28)[1]'#39','#39'varchar(max)'#39') as P_28,'
      #9#9'ref.value('#39'(P_29)[1]'#39','#39'varchar(max)'#39') as P_29,'
      #9#9'ref.value('#39'(P_30)[1]'#39','#39'varchar(max)'#39') as P_30,'
      #9#9'ref.value('#39'(P_31)[1]'#39','#39'varchar(max)'#39') as P_31'
      'FROM'#9'@xml.nodes('#39'/data/table1/row'#39') as node(ref)')
    Left = 120
    Top = 424
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 424
  end
  object Query2: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EDO_docs_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @xml xml'
      
        'SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_doc' +
        's_id'
      ''
      'SELECT'#9'ref.value('#39'(P_32_1)[1]'#39','#39'varchar(max)'#39') as P_32_1,'
      'ref.value('#39'(P_33_1)[1]'#39','#39'varchar(max)'#39') as P_33_1,'
      'ref.value('#39'(P_34_1)[1]'#39','#39'varchar(max)'#39') as P_34_1,'
      'ref.value('#39'(P_35_1)[1]'#39','#39'varchar(max)'#39') as P_35_1,'
      'ref.value('#39'(P_36_1)[1]'#39','#39'varchar(max)'#39') as P_36_1,'
      'ref.value('#39'(P_37_1)[1]'#39','#39'varchar(max)'#39') as P_37_1'
      'FROM'#9'@xml.nodes('#39'/data/table2/row'#39') as node(ref)')
    Left = 120
    Top = 480
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 160
    Top = 480
  end
  object Query3: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EDO_docs_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @xml xml'
      
        'SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_doc' +
        's_id'
      ''
      'SELECT'#9'ref.value('#39'(P_32_2)[1]'#39','#39'varchar(max)'#39') as P_32_2,'
      'ref.value('#39'(P_33_2)[1]'#39','#39'varchar(max)'#39') as P_33_2,'
      'ref.value('#39'(P_34_2)[1]'#39','#39'varchar(max)'#39') as P_34_2,'
      'ref.value('#39'(P_35_2)[1]'#39','#39'varchar(max)'#39') as P_35_2,'
      'ref.value('#39'(P_36_2)[1]'#39','#39'varchar(max)'#39') as P_36_2,'
      'ref.value('#39'(P_37_2)[1]'#39','#39'varchar(max)'#39') as P_37_2'
      'FROM'#9'@xml.nodes('#39'/data/table3/row'#39') as node(ref)')
    Left = 120
    Top = 536
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 160
    Top = 536
  end
  object Query4: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EDO_docs_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @xml xml'
      
        'SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_doc' +
        's_id'
      ''
      'SELECT'#9'ref.value('#39'(P_23_1)[1]'#39','#39'varchar(max)'#39') as P_23_1,'
      'ref.value('#39'(P_24_1)[1]'#39','#39'varchar(max)'#39') as P_24_1,'
      'ref.value('#39'(P_25_1)[1]'#39','#39'varchar(max)'#39') as P_25_1,'
      'ref.value('#39'(P_26_1)[1]'#39','#39'varchar(max)'#39') as P_26_1,'
      'ref.value('#39'(P_27_1)[1]'#39','#39'varchar(max)'#39') as P_27_1'
      'FROM'#9'@xml.nodes('#39'/data/table4/row'#39') as node(ref)')
    Left = 216
    Top = 424
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 256
    Top = 424
  end
  object Query5: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EDO_docs_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @xml xml'
      
        'SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_doc' +
        's_id'
      ''
      'SELECT'#9'ref.value('#39'(P_23_2)[1]'#39','#39'varchar(max)'#39') as P_23_2,'
      'ref.value('#39'(P_24_2)[1]'#39','#39'varchar(max)'#39') as P_24_2,'
      'ref.value('#39'(P_25_2)[1]'#39','#39'varchar(max)'#39') as P_25_2,'
      'ref.value('#39'(P_26_2)[1]'#39','#39'varchar(max)'#39') as P_26_2,'
      'ref.value('#39'(P_27_2)[1]'#39','#39'varchar(max)'#39') as P_27_2'
      'FROM'#9'@xml.nodes('#39'/data/table5/row'#39') as node(ref)')
    Left = 424
    Top = 432
  end
  object DS5: TDataSource
    DataSet = Query5
    Left = 464
    Top = 432
  end
  object DS6: TDataSource
    DataSet = Query6
    Left = 464
    Top = 488
  end
  object Query6: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EDO_docs_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @xml xml'
      
        'SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_doc' +
        's_id'
      ''
      'SELECT'#9'ref.value('#39'(P_23_3)[1]'#39','#39'varchar(max)'#39') as P_23_3,'
      'ref.value('#39'(P_24_3)[1]'#39','#39'varchar(max)'#39') as P_24_3,'
      'ref.value('#39'(P_25_3)[1]'#39','#39'varchar(max)'#39') as P_25_3,'
      'ref.value('#39'(P_26_3)[1]'#39','#39'varchar(max)'#39') as P_26_3,'
      'ref.value('#39'(P_27_3)[1]'#39','#39'varchar(max)'#39') as P_27_3'
      'FROM'#9'@xml.nodes('#39'/data/table6/row'#39') as node(ref)')
    Left = 424
    Top = 488
  end
  object Query7: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EDO_docs_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @xml xml'
      
        'SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_doc' +
        's_id'
      ''
      'SELECT'#9'ref.value('#39'(P_23_4)[1]'#39','#39'varchar(max)'#39') as P_23_4,'
      'ref.value('#39'(P_24_4)[1]'#39','#39'varchar(max)'#39') as P_24_4,'
      'ref.value('#39'(P_25_4)[1]'#39','#39'varchar(max)'#39') as P_25_4,'
      'ref.value('#39'(P_26_4)[1]'#39','#39'varchar(max)'#39') as P_26_4,'
      'ref.value('#39'(P_27_4)[1]'#39','#39'varchar(max)'#39') as P_27_4'
      'FROM'#9'@xml.nodes('#39'/data/table7/row'#39') as node(ref)')
    Left = 424
    Top = 544
  end
  object DS7: TDataSource
    DataSet = Query7
    Left = 464
    Top = 544
  end
  object Query10: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EDO_docs_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @xml xml'
      
        'SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_doc' +
        's_id'
      ''
      'SELECT'#9'ref.value('#39'(P_23_7)[1]'#39','#39'varchar(max)'#39') as P_23_7,'
      'ref.value('#39'(P_24_7)[1]'#39','#39'varchar(max)'#39') as P_24_7,'
      'ref.value('#39'(P_25_7)[1]'#39','#39'varchar(max)'#39') as P_25_7,'
      'ref.value('#39'(P_26_7)[1]'#39','#39'varchar(max)'#39') as P_26_7,'
      'ref.value('#39'(P_27_7)[1]'#39','#39'varchar(max)'#39') as P_27_7'
      'FROM'#9'@xml.nodes('#39'/data/table10/row'#39') as node(ref)')
    Left = 528
    Top = 544
  end
  object DS10: TDataSource
    DataSet = Query10
    Left = 568
    Top = 544
  end
  object DS9: TDataSource
    DataSet = Query9
    Left = 568
    Top = 488
  end
  object Query9: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EDO_docs_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @xml xml'
      
        'SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_doc' +
        's_id'
      ''
      'SELECT'#9'ref.value('#39'(P_23_6)[1]'#39','#39'varchar(max)'#39') as P_23_6,'
      'ref.value('#39'(P_24_6)[1]'#39','#39'varchar(max)'#39') as P_24_6,'
      'ref.value('#39'(P_25_6)[1]'#39','#39'varchar(max)'#39') as P_25_6,'
      'ref.value('#39'(P_26_6)[1]'#39','#39'varchar(max)'#39') as P_26_6,'
      'ref.value('#39'(P_27_6)[1]'#39','#39'varchar(max)'#39') as P_27_6'
      'FROM'#9'@xml.nodes('#39'/data/table9/row'#39') as node(ref)')
    Left = 528
    Top = 488
  end
  object Query8: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EDO_docs_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @xml xml'
      
        'SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_doc' +
        's_id'
      ''
      'SELECT'#9'ref.value('#39'(P_23_5)[1]'#39','#39'varchar(max)'#39') as P_23_5,'
      'ref.value('#39'(P_24_5)[1]'#39','#39'varchar(max)'#39') as P_24_5,'
      'ref.value('#39'(P_25_5)[1]'#39','#39'varchar(max)'#39') as P_25_5,'
      'ref.value('#39'(P_26_5)[1]'#39','#39'varchar(max)'#39') as P_26_5,'
      'ref.value('#39'(P_27_5)[1]'#39','#39'varchar(max)'#39') as P_27_5'
      'FROM'#9'@xml.nodes('#39'/data/table8/row'#39') as node(ref)')
    Left = 528
    Top = 432
  end
  object DS8: TDataSource
    DataSet = Query8
    Left = 568
    Top = 432
  end
  object Query11: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EDO_docs_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @xml xml'
      
        'SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_doc' +
        's_id'
      ''
      'SELECT'#9'ref.value('#39'(P_23_8)[1]'#39','#39'varchar(max)'#39') as P_23_8,'
      'ref.value('#39'(P_24_8)[1]'#39','#39'varchar(max)'#39') as P_24_8,'
      'ref.value('#39'(P_25_8)[1]'#39','#39'varchar(max)'#39') as P_25_8,'
      'ref.value('#39'(P_26_8)[1]'#39','#39'varchar(max)'#39') as P_26_8,'
      'ref.value('#39'(P_27_8)[1]'#39','#39'varchar(max)'#39') as P_27_8'
      'FROM'#9'@xml.nodes('#39'/data/table11/row'#39') as node(ref)')
    Left = 640
    Top = 432
  end
  object DS11: TDataSource
    DataSet = Query11
    Left = 680
    Top = 432
  end
  object Query12: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EDO_docs_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @xml xml'
      
        'SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_doc' +
        's_id'
      ''
      'SELECT'#9'ref.value('#39'(P_23_9)[1]'#39','#39'varchar(max)'#39') as P_23_9,'
      'ref.value('#39'(P_24_9)[1]'#39','#39'varchar(max)'#39') as P_24_9,'
      'ref.value('#39'(P_25_9)[1]'#39','#39'varchar(max)'#39') as P_25_9,'
      'ref.value('#39'(P_26_9)[1]'#39','#39'varchar(max)'#39') as P_26_9,'
      'ref.value('#39'(P_27_9)[1]'#39','#39'varchar(max)'#39') as P_27_9'
      'FROM'#9'@xml.nodes('#39'/data/table12/row'#39') as node(ref)')
    Left = 640
    Top = 488
  end
  object DS12: TDataSource
    DataSet = Query12
    Left = 680
    Top = 488
  end
  object Query13: TADOQuery
    Connection = EDO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'EDO_docs_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @xml xml'
      
        'SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_doc' +
        's_id'
      ''
      'SELECT'#9'ref.value('#39'(P_23_10)[1]'#39','#39'varchar(max)'#39') as P_23_10,'
      'ref.value('#39'(P_24_10)[1]'#39','#39'varchar(max)'#39') as P_24_10,'
      'ref.value('#39'(P_25_10)[1]'#39','#39'varchar(max)'#39') as P_25_10,'
      'ref.value('#39'(P_26_10)[1]'#39','#39'varchar(max)'#39') as P_26_10,'
      'ref.value('#39'(P_27_10)[1]'#39','#39'varchar(max)'#39') as P_27_10'
      'FROM'#9'@xml.nodes('#39'/data/table12/row'#39') as node(ref)')
    Left = 640
    Top = 544
  end
  object DS13: TDataSource
    DataSet = Query13
    Left = 680
    Top = 544
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton95'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton97'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem6'
      end>
    UseOwnFont = False
    OnPopup = dxBarPopupMenu1Popup
    Left = 600
    Top = 232
    PixelsPerInch = 96
  end
  object dxBarPopupMenu2: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton26'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem7'
      end>
    UseOwnFont = False
    Left = 744
    Top = 16
    PixelsPerInch = 96
  end
  object dxBarPopupMenu3: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton31'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem8'
      end>
    UseOwnFont = False
    Left = 744
    Top = 64
    PixelsPerInch = 96
  end
  object dxBarPopupMenu4: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton36'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem9'
      end>
    UseOwnFont = False
    Left = 744
    Top = 112
    PixelsPerInch = 96
  end
  object dxBarPopupMenu5: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton41'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem10'
      end>
    UseOwnFont = False
    Left = 744
    Top = 168
    PixelsPerInch = 96
  end
  object dxBarPopupMenu6: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton46'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem11'
      end>
    UseOwnFont = False
    Left = 744
    Top = 216
    PixelsPerInch = 96
  end
  object dxBarPopupMenu7: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton51'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem12'
      end>
    UseOwnFont = False
    Left = 904
    Top = 48
    PixelsPerInch = 96
  end
  object dxBarPopupMenu8: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton56'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem13'
      end>
    UseOwnFont = False
    Left = 1016
    Top = 48
    PixelsPerInch = 96
  end
  object dxBarPopupMenu9: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton61'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem14'
      end>
    UseOwnFont = False
    Left = 904
    Top = 104
    PixelsPerInch = 96
  end
  object dxBarPopupMenu10: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton66'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem15'
      end>
    UseOwnFont = False
    Left = 1016
    Top = 104
    PixelsPerInch = 96
  end
  object dxBarPopupMenu11: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton71'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem16'
      end>
    UseOwnFont = False
    Left = 904
    Top = 160
    PixelsPerInch = 96
  end
  object dxBarPopupMenu12: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton76'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem17'
      end>
    UseOwnFont = False
    Left = 1016
    Top = 160
    PixelsPerInch = 96
  end
  object dxBarPopupMenu13: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton81'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem18'
      end>
    UseOwnFont = False
    Left = 904
    Top = 216
    PixelsPerInch = 96
  end
  object dxBarPopupMenu14: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarSubItem1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton92'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton93'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton94'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton86'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem19'
      end>
    UseOwnFont = False
    OnPopup = dxBarPopupMenu14Popup
    Left = 504
    Top = 88
    PixelsPerInch = 96
  end
  object cxImageList2: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 19857610
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
          2000000000000004000000000000000000000000000000000000000000002929
          294D898989FF898989FF898989FF898989FF898989FF898989FF898989FF8989
          89FF898989FF898989FF2929294D000000000000000000000000000000008989
          89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF898989FF000000000000000000000000000000008989
          89FFFFFFFFFFDFDFDFFFDCDCDCFFDDDDDDFF4D5B65FF4D5B65FF4D5B65FF4D5B
          65FFE8E8E8FFFFFFFFFF939393FF000000000000000000000000000000008989
          89FFFFFFFFFFE2E2E2FFE0E0E0FFEAEAEAFF4D5B65FF4D5B65FF81BBBFFF6B92
          99FF4D5B65FFFFFFFFFFB6B6B6FF161616160000000000000000000000008989
          89FFFFFFFFFFE5E5E5FFE3E3E3FFF0F0F0FF4D5B65FF98E5E6FF81BBBFFF81BB
          BFFF4B7B9DFF4D5B65FFC4C4C4FF626262621616161600000000000000008989
          89FFFFFFFFFFE9E9E9FFE6E6E6FFF2F2F2FF4D5B65FF98E5E6FF98E5E6FF4994
          C7FF4994C7FF4B7B9DFF4D5B65FF808080806262626216161616000000008989
          89FFFFFFFFFFECECECFFEAEAEAFFF0F0F0FFF2F2F2FF4D5B65FF47ACF2FF47AC
          F2FF4994C7FF4994C7FF4B7B9DFF4D5B65FF8080808062626262000000008989
          89FFFFFFFFFFEFEFEFFFEDEDEDFFEDEDEDFFF1F1F1FFF3F3F3FF4D5B65FF47AC
          F2FF47ACF2FF4994C7FF4994C7FF4B7B9DFF4D5B65FF80808080000000008989
          89FFFFFFFFFFF2F2F2FFF0F0F0FFEEEEEEFFEEEEEEFFF1F1F1FFF3F3F3FF4D5B
          65FF47ACF2FF47ACF2FF4994C7FF4994C7FF4B7B9DFF4D5B65FF000000008989
          89FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFF1F1F1FFEFEFEFFFF2F2F2FFF4F4
          F4FF4D5B65FF47ACF2FF47ACF2FF4994C7FF4B7B9DFF4D5B65FF000000008989
          89FF898989FF898989FF898989FF959595E8D1D1D1FFF0F0F0FFF0F0F0FFF3F3
          F3FFF4F4F4FF4D5B65FF47ACF2FF47ACF2FF4D5B65FF80808080000000000000
          0000898989FFD1D1D1FFB3B3B3B3898989FFD1D1D1FFF3F3F3FFF1F1F1FFF0F0
          F0FFF4F4F4FFFFFFFFFF4D5B65FF4D5B65FF8080808062626262000000000000
          000000000000898989FFD1D1D1FF898989FFD1D1D1FFF6F6F6FFF4F4F4FFF2F2
          F2FFF0F0F0FFFFFFFFFFC4C4C4FF808080806262626216161616000000000000
          00000000000000000000898989FF898989FFD1D1D1FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF898989FF000000000000000000000000000000000000
          0000000000000000000000000000898989FF898989FF898989FF898989FF8989
          89FF898989FF898989FF2C2C2C52000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00002929294D898989FF898989FF898989FF898989FF898989FF898989FF8989
          89FF898989FF898989FF898989FF2929294D0000000000000000000000000000
          0000898989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF898989FF0000000000000000000000000000
          0000898989FFFFFFFFFFDFDFDFFFDCDCDCFFDADADAFFD8D8D8FF898989FF4747
          47FF898989FFD1D1D1FFFFFFFFFF898989FF0000000000000000000000000000
          0000898989FFFFFFFFFFE2E2E2FFE0E0E0FFDDDDDDFF898989FF474747FF73D9
          6EFF474747FF898989FFFFFFFFFFF3F3F3FF0000000000000000000000000000
          0000898989FFFFFFFFFFE5E5E5FFE3E3E3FF898989FF474747FF73D96EFF73D9
          6EFF73D96EFF474747FF898989FFF3F3F3FF0000000000000000000000000000
          0000898989FFFFFFFFFFE9E9E9FFE6E6E6FF474747FF73D96EFF73D96EFF4747
          47FF73D96EFF73D96EFF474747FF898989FF0000000000000000000000000000
          0000898989FFFFFFFFFFECECECFFEAEAEAFF474747FF73D96EFF474747FF8989
          89FF474747FF73D96EFF73D96EFF474747FF898989FF00000000000000000000
          0000898989FFFFFFFFFFEFEFEFFFEDEDEDFF898989FF474747FF898989FFE4E4
          E4FF898989FF474747FF73D96EFF73D96EFF474747FF898989FF000000000000
          0000898989FFFFFFFFFFF2F2F2FFF0F0F0FFEEEEEEFFECECECFFE9E9E9FFE7E7
          E7FFE5E5E5FF898989FF474747FF73D96EFF73D96EFF474747FF000000000000
          0000898989FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFF1F1F1FFEDEDEDFFEAEA
          EAFFE8E8E8FFE6E6E6FF898989FF474747FF73D96EFF474747FF000000000000
          0000898989FF898989FF898989FF898989FF959595E8D1D1D1FFF0F0F0FFEEEE
          EEFFEBEBEBFFE9E9E9FFFFFFFFFF898989FF474747FF898989FF000000000000
          000000000000898989FFD1D1D1FFB3B3B3B3898989FFD1D1D1FFF3F3F3FFF1F1
          F1FFEFEFEFFFECECECFFFFFFFFFFF3F3F3FF0000000000000000000000000000
          00000000000000000000898989FFD1D1D1FF898989FFD1D1D1FFF6F6F6FFF4F4
          F4FFF2F2F2FFEFEFEFFFFFFFFFFF898989FF0000000000000000000000000000
          0000000000000000000000000000898989FF898989FFD1D1D1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF898989FF0000000000000000000000000000
          000000000000000000000000000000000000898989FF898989FF898989FF8989
          89FF898989FF898989FF898989FF2C2C2C520000000000000000000000000000
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
      end>
  end
end
