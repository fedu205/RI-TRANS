object fmEtrRT: TfmEtrRT
  Left = 0
  Top = 0
  Caption = #1058#1077#1083#1077#1075#1088#1072#1084#1084#1099
  ClientHeight = 828
  ClientWidth = 1253
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxSplitter3: TcxSplitter
    Left = 255
    Top = 142
    Width = 5
    Height = 686
    Control = Panel26
    Color = 8421631
    ParentColor = False
  end
  object GridPanel4: TGridPanel
    Left = 260
    Top = 142
    Width = 993
    Height = 686
    Align = alClient
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Panel27
        Row = 0
      end
      item
        Column = 1
        Control = Panel28
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 1
    object Panel27: TPanel
      Left = 0
      Top = 0
      Width = 496
      Height = 686
      Align = alClient
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        492
        682)
      object cxLabel170: TcxLabel
        Left = 137
        Top = 53
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = #1044#1072#1090#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103': '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Height = 17
        Width = 274
        AnchorX = 411
      end
      object cxLabel120: TcxLabel
        Left = 0
        Top = 27
        Align = alTop
        AutoSize = False
        Caption = #1058#1045#1051#1045#1043#1056#1040#1052#1052#1040
        ParentFont = False
        Style.Font.Charset = RUSSIAN_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Height = 27
        Width = 492
        AnchorX = 246
      end
      object cxLabel121: TcxLabel
        Left = 0
        Top = 0
        Align = alTop
        AutoSize = False
        Caption = #1054#1040#1054' "'#1056#1046#1044'"'
        ParentFont = False
        Style.Font.Charset = RUSSIAN_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Height = 27
        Width = 492
        AnchorX = 246
      end
      object cxLabel122: TcxLabel
        Left = 6
        Top = 80
        Caption = #1043#1088#1091#1079#1086#1086#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100' ...............................................'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit_rtSenderOKPO: TcxTextEdit
        Left = 416
        Top = 75
        Anchors = [akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 1
        Text = 'cxTextEdit_rtSenderOKPO'
        Width = 67
      end
      object cxTextEdit_rtSenderName: TcxTextEdit
        Left = 120
        Top = 75
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 2
        Text = 'cxTextEdit_rtSenderName'
        Width = 292
      end
      object cxGrid15: TcxGrid
        Left = 6
        Top = 608
        Width = 405
        Height = 80
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DS_XML_parser_payer
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1payerNom: TcxGridDBColumn
            DataBinding.FieldName = 'payerNom'
          end
          object cxGrid1DBTableView1payerTypeID: TcxGridDBColumn
            DataBinding.FieldName = 'payerTypeID'
          end
          object cxGrid1DBTableView1payerTypeName: TcxGridDBColumn
            DataBinding.FieldName = 'payerTypeName'
          end
          object cxGrid1DBTableView1payerCode: TcxGridDBColumn
            DataBinding.FieldName = 'payerCode'
          end
          object cxGrid1DBTableView1payerID: TcxGridDBColumn
            DataBinding.FieldName = 'payerID'
          end
          object cxGrid1DBTableView1payerOKPO: TcxGridDBColumn
            DataBinding.FieldName = 'payerOKPO'
          end
          object cxGrid1DBTableView1payerName: TcxGridDBColumn
            DataBinding.FieldName = 'payerName'
          end
          object cxGrid1DBTableView1payerCountryCode: TcxGridDBColumn
            DataBinding.FieldName = 'payerCountryCode'
          end
          object cxGrid1DBTableView1payerCountryName: TcxGridDBColumn
            DataBinding.FieldName = 'payerCountryName'
          end
        end
        object cxGridDBBandedTableView13: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu1
          OnKeyPress = cxGridDBBandedTableView13KeyPress
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGridDBBandedTableView13CustomDrawCell
          OnFocusedItemChanged = cxGridDBBandedTableView13FocusedItemChanged
          DataController.DataSource = DS_XML_parser_payer
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGridDBBandedTableView13FilterOnChanged
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          OnCustomDrawColumnHeader = cxGridDBBandedTableView13CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGridDBBandedTableView13CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid1DBBandedTableView1payerNom: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
            DataBinding.FieldName = 'payerNom'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 71
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1payerTypeName: TcxGridDBBandedColumn
            Caption = #1058#1080#1087' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
            DataBinding.FieldName = 'payerTypeName'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1payerOKPO: TcxGridDBBandedColumn
            Caption = #1054#1050#1055#1054
            DataBinding.FieldName = 'payerOKPO'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1payerName: TcxGridDBBandedColumn
            Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
            DataBinding.FieldName = 'payerName'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 137
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1payerCountryName: TcxGridDBBandedColumn
            Caption = #1057#1090#1088'. '#1086#1090#1087#1088'.'
            DataBinding.FieldName = 'payerCountryName'
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object cxGridLevel13: TcxGridLevel
          GridView = cxGridDBBandedTableView13
        end
      end
      object cxLabel127: TcxLabel
        Left = 6
        Top = 104
        Caption = #1055#1077#1088#1080#1086#1076' '#1087#1077#1088#1077#1074#1086#1079#1082#1080' .........................'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit_rtFinishDate: TcxTextEdit
        Left = 220
        Top = 99
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 4
        Text = 'cxTextEdit_rtFinishDate'
        Width = 100
      end
      object cxTextEdit_rtStartDate: TcxTextEdit
        Left = 120
        Top = 99
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 5
        Text = 'cxTextEdit_rtStartDate'
        Width = 100
      end
      object cxLabel128: TcxLabel
        Left = 6
        Top = 128
        Caption = #1057#1090#1088'. '#1086#1090#1087#1088'. ...............................................'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel129: TcxLabel
        Left = 6
        Top = 152
        Caption = #1057#1090'. '#1086#1090#1087#1088'. ...............................................'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit_rtFromCountryName: TcxTextEdit
        Left = 120
        Top = 123
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 7
        Text = 'cxTextEdit_rtFromCountryName'
        Width = 292
      end
      object cxTextEdit_rtFromStationName: TcxTextEdit
        Left = 120
        Top = 147
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 8
        Text = 'cxTextEdit_rtFromStationName'
        Width = 292
      end
      object cxTextEdit_rtFromCountryCode: TcxTextEdit
        Left = 416
        Top = 123
        Anchors = [akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 9
        Text = 'cxTextEdit_rtFromCountryCode'
        Width = 67
      end
      object cxTextEdit_rtFromStationCode: TcxTextEdit
        Left = 416
        Top = 147
        Anchors = [akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 10
        Text = 'cxTextEdit_rtFromStationCode'
        Width = 67
      end
      object cxLabel130: TcxLabel
        Left = 6
        Top = 176
        Caption = #1057#1090'. '#1074#1093#1086#1076#1072' '#1074' '#1056#1060' ...............................................'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit_rtEnterStationName: TcxTextEdit
        Left = 120
        Top = 171
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 12
        Text = 'cxTextEdit_rtEnterStationName'
        Width = 292
      end
      object cxTextEdit_rtEnterStationCode: TcxTextEdit
        Left = 416
        Top = 171
        Anchors = [akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 13
        Text = 'cxTextEdit_rtEnterStationCode'
        Width = 67
      end
      object cxLabel144: TcxLabel
        Left = 6
        Top = 584
        Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082' ...............................................'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit_rtPayerOKPO: TcxTextEdit
        Left = 382
        Top = 579
        Anchors = [akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 19
        Text = 'cxTextEdit_rtPayerOKPO'
        Width = 63
      end
      object cxTextEdit_rtPayerName: TcxTextEdit
        Left = 120
        Top = 579
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 20
        Text = 'cxTextEdit_rtPayerName'
        Width = 262
      end
      object cxLabel169: TcxLabel
        Left = 6
        Top = 53
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077':'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxPageControl3: TcxPageControl
        Left = 6
        Top = 204
        Width = 484
        Height = 366
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 23
        Properties.ActivePage = cxTab_Otpr1
        Properties.CustomButtons.Buttons = <>
        Properties.ShowFrame = True
        ClientRectBottom = 365
        ClientRectLeft = 1
        ClientRectRight = 483
        ClientRectTop = 26
        object cxTab_Otpr1: TcxTabSheet
          Caption = #1054#1090#1087#1088#1072#1074#1082#1072' '#8470'1'
          ImageIndex = 0
          ExplicitTop = 24
          ExplicitHeight = 341
          DesignSize = (
            482
            339)
          object cxLabel156: TcxLabel
            Left = 3
            Top = 247
            Caption = 
              #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1074#1086#1076#1085#1080#1082#1086#1074' .............................................' +
              '..'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel155: TcxLabel
            Left = 3
            Top = 223
            Caption = #1057#1086#1087#1088#1086#1074#1086#1078#1076#1077#1085#1080#1077' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel187: TcxLabel
            Left = 3
            Top = 7
            Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel188: TcxLabel
            Left = 3
            Top = 31
            Caption = #1042#1080#1076' '#1087'. '#1089'. ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel189: TcxLabel
            Left = 3
            Top = 55
            Caption = #1058#1080#1087' '#1057#1055#1057' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel190: TcxLabel
            Left = 3
            Top = 79
            Caption = #1043#1088#1091#1079' '#1087#1086' '#1045#1058#1057#1053#1043' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel191: TcxLabel
            Left = 3
            Top = 103
            Caption = #1043#1088#1091#1079' '#1087#1086' '#1043#1053#1043' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel192: TcxLabel
            Left = 3
            Top = 129
            Caption = #1042#1077#1089' '#1075#1088#1091#1079#1072' '#1074' '#1090#1085'. ...................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel193: TcxLabel
            Left = 3
            Top = 151
            Caption = #1057#1090#1088'. '#1085#1072#1079#1085'. ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel194: TcxLabel
            Left = 3
            Top = 175
            Caption = #1057#1090'. '#1085#1072#1079#1085'. ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel195: TcxLabel
            Left = 3
            Top = 199
            Caption = #1057#1090'. '#1074#1099#1093#1086#1076#1072' '#1080#1079' '#1056#1060' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel196: TcxLabel
            Left = 3
            Top = 272
            Caption = #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel197: TcxLabel
            Left = 3
            Top = 295
            Caption = #1050#1086#1076' '#1080#1089#1082#1083'. '#1090#1072#1088#1080#1092#1072' ..........................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit36: TcxTextEdit
            Left = 133
            Top = 290
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 11
            Width = 345
          end
          object cxTextEdit35: TcxTextEdit
            Left = 133
            Top = 266
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 12
            Width = 282
          end
          object cxTextEdit33: TcxTextEdit
            Left = 133
            Top = 194
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 13
            Width = 282
          end
          object cxTextEdit32: TcxTextEdit
            Left = 133
            Top = 170
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 14
            Width = 282
          end
          object cxTextEdit29: TcxTextEdit
            Left = 133
            Top = 146
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 15
            Width = 282
          end
          object cxTextEdit28: TcxTextEdit
            Left = 133
            Top = 122
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 16
            Width = 345
          end
          object cxTextEdit21: TcxTextEdit
            Left = 133
            Top = 98
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 17
            Width = 282
          end
          object cxTextEdit19: TcxTextEdit
            Left = 133
            Top = 74
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 18
            Width = 282
          end
          object cxTextEdit18: TcxTextEdit
            Left = 133
            Top = 50
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 19
            Width = 345
          end
          object cxTextEdit17: TcxTextEdit
            Left = 133
            Top = 26
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 20
            Width = 345
          end
          object cxTextEdit16: TcxTextEdit
            Left = 133
            Top = 2
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 21
            Width = 345
          end
          object cxTextEdit20: TcxTextEdit
            Left = 415
            Top = 74
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 22
            Width = 63
          end
          object cxTextEdit27: TcxTextEdit
            Left = 415
            Top = 98
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 23
            Width = 63
          end
          object cxTextEdit30: TcxTextEdit
            Left = 415
            Top = 146
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 24
            Width = 63
          end
          object cxTextEdit31: TcxTextEdit
            Left = 415
            Top = 170
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 25
            Width = 63
          end
          object cxTextEdit34: TcxTextEdit
            Left = 415
            Top = 194
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 26
            Width = 63
          end
          object cxTextEdit37: TcxTextEdit
            Left = 415
            Top = 266
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 27
            Width = 63
          end
          object cxTextEdit100: TcxTextEdit
            Left = 133
            Top = 218
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 28
            Width = 345
          end
          object cxTextEdit101: TcxTextEdit
            Left = 133
            Top = 242
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 29
            Width = 345
          end
          object cxLabel230: TcxLabel
            Left = 3
            Top = 319
            Caption = #1055#1088#1086#1074#1086#1079#1085#1072#1103' '#1087#1083#1072#1090#1072'..........................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit92: TcxTextEdit
            Left = 133
            Top = 314
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 33
            Width = 345
          end
        end
        object cxTab_Otpr2: TcxTabSheet
          Caption = #1054#1090#1087#1088#1072#1074#1082#1072' '#8470'2'
          ImageIndex = 1
          ExplicitTop = 24
          ExplicitHeight = 341
          DesignSize = (
            482
            339)
          object cxLabel136: TcxLabel
            Left = 3
            Top = 103
            Caption = #1043#1088#1091#1079' '#1087#1086' '#1043#1053#1043' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel132: TcxLabel
            Left = 3
            Top = 7
            Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit38: TcxTextEdit
            Left = 133
            Top = 2
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 1
            Width = 289
          end
          object cxLabel133: TcxLabel
            Left = 3
            Top = 31
            Caption = #1042#1080#1076' '#1087'. '#1089'. ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit39: TcxTextEdit
            Left = 133
            Top = 26
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 3
            Width = 289
          end
          object cxLabel134: TcxLabel
            Left = 3
            Top = 55
            Caption = #1058#1080#1087' '#1057#1055#1057' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit40: TcxTextEdit
            Left = 133
            Top = 50
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 5
            Width = 289
          end
          object cxLabel135: TcxLabel
            Left = 3
            Top = 79
            Caption = #1043#1088#1091#1079' '#1087#1086' '#1045#1058#1057#1053#1043' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit41: TcxTextEdit
            Left = 133
            Top = 74
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 7
            Width = 227
          end
          object cxTextEdit42: TcxTextEdit
            Left = 359
            Top = 74
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 8
            Width = 63
          end
          object cxTextEdit43: TcxTextEdit
            Left = 359
            Top = 98
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 9
            Width = 63
          end
          object cxTextEdit44: TcxTextEdit
            Left = 133
            Top = 98
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 10
            Width = 227
          end
          object cxLabel137: TcxLabel
            Left = 3
            Top = 129
            Caption = #1042#1077#1089' '#1075#1088#1091#1079#1072' '#1074' '#1090#1085'. ...................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit45: TcxTextEdit
            Left = 133
            Top = 122
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 13
            Width = 289
          end
          object cxLabel138: TcxLabel
            Left = 3
            Top = 151
            Caption = #1057#1090#1088'. '#1085#1072#1079#1085'. ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit46: TcxTextEdit
            Left = 133
            Top = 146
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 15
            Width = 227
          end
          object cxTextEdit47: TcxTextEdit
            Left = 359
            Top = 146
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 16
            Width = 63
          end
          object cxLabel139: TcxLabel
            Left = 3
            Top = 175
            Caption = #1057#1090'. '#1085#1072#1079#1085'. ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit48: TcxTextEdit
            Left = 133
            Top = 170
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 18
            Width = 227
          end
          object cxTextEdit49: TcxTextEdit
            Left = 359
            Top = 170
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 19
            Width = 63
          end
          object cxLabel140: TcxLabel
            Left = 3
            Top = 199
            Caption = #1057#1090'. '#1074#1099#1093#1086#1076#1072' '#1080#1079' '#1056#1060' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit50: TcxTextEdit
            Left = 133
            Top = 194
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 21
            Width = 227
          end
          object cxTextEdit51: TcxTextEdit
            Left = 359
            Top = 194
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 22
            Width = 63
          end
          object cxLabel142: TcxLabel
            Left = 3
            Top = 272
            Caption = #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit52: TcxTextEdit
            Left = 133
            Top = 266
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 24
            Width = 227
          end
          object cxLabel143: TcxLabel
            Left = 3
            Top = 295
            Caption = #1050#1086#1076' '#1080#1089#1082#1083'. '#1090#1072#1088#1080#1092#1072' ..........................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit53: TcxTextEdit
            Left = 133
            Top = 290
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 26
            Width = 289
          end
          object cxTextEdit86: TcxTextEdit
            Left = 359
            Top = 266
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 27
            Width = 63
          end
          object cxLabel222: TcxLabel
            Left = 3
            Top = 223
            Caption = #1057#1086#1087#1088#1086#1074#1086#1078#1076#1077#1085#1080#1077' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel223: TcxLabel
            Left = 3
            Top = 247
            Caption = 
              #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1074#1086#1076#1085#1080#1082#1086#1074' .............................................' +
              '..'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit201: TcxTextEdit
            Left = 133
            Top = 242
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 30
            Width = 289
          end
          object cxTextEdit200: TcxTextEdit
            Left = 133
            Top = 218
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 31
            Width = 289
          end
          object cxLabel231: TcxLabel
            Left = 3
            Top = 319
            Caption = #1055#1088#1086#1074#1086#1079#1085#1072#1103' '#1087#1083#1072#1090#1072'..........................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit93: TcxTextEdit
            Left = 133
            Top = 314
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 33
            Width = 289
          end
        end
        object cxTab_Otpr3: TcxTabSheet
          Caption = #1054#1090#1087#1088#1072#1074#1082#1072' '#8470'3'
          ImageIndex = 2
          ExplicitTop = 24
          ExplicitHeight = 341
          DesignSize = (
            482
            339)
          object cxLabel202: TcxLabel
            Left = 3
            Top = 103
            Caption = #1043#1088#1091#1079' '#1087#1086' '#1043#1053#1043' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel198: TcxLabel
            Left = 3
            Top = 7
            Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit54: TcxTextEdit
            Left = 133
            Top = 2
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 1
            Width = 289
          end
          object cxLabel199: TcxLabel
            Left = 3
            Top = 31
            Caption = #1042#1080#1076' '#1087'. '#1089'. ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit55: TcxTextEdit
            Left = 133
            Top = 26
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 3
            Width = 289
          end
          object cxLabel200: TcxLabel
            Left = 3
            Top = 55
            Caption = #1058#1080#1087' '#1057#1055#1057' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit56: TcxTextEdit
            Left = 133
            Top = 50
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 5
            Width = 289
          end
          object cxLabel201: TcxLabel
            Left = 3
            Top = 79
            Caption = #1043#1088#1091#1079' '#1087#1086' '#1045#1058#1057#1053#1043' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit57: TcxTextEdit
            Left = 133
            Top = 74
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 7
            Width = 227
          end
          object cxTextEdit58: TcxTextEdit
            Left = 359
            Top = 74
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 8
            Width = 63
          end
          object cxTextEdit59: TcxTextEdit
            Left = 359
            Top = 98
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 9
            Width = 63
          end
          object cxTextEdit60: TcxTextEdit
            Left = 133
            Top = 98
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 10
            Width = 227
          end
          object cxLabel203: TcxLabel
            Left = 3
            Top = 129
            Caption = #1042#1077#1089' '#1075#1088#1091#1079#1072' '#1074' '#1090#1085'. ...................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit61: TcxTextEdit
            Left = 133
            Top = 122
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 13
            Width = 289
          end
          object cxLabel204: TcxLabel
            Left = 3
            Top = 151
            Caption = #1057#1090#1088'. '#1085#1072#1079#1085'. ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit62: TcxTextEdit
            Left = 133
            Top = 146
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 15
            Width = 227
          end
          object cxTextEdit63: TcxTextEdit
            Left = 359
            Top = 146
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 16
            Width = 63
          end
          object cxLabel205: TcxLabel
            Left = 3
            Top = 175
            Caption = #1057#1090'. '#1085#1072#1079#1085'. ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit64: TcxTextEdit
            Left = 133
            Top = 170
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 18
            Width = 227
          end
          object cxTextEdit65: TcxTextEdit
            Left = 359
            Top = 170
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 19
            Width = 63
          end
          object cxLabel206: TcxLabel
            Left = 3
            Top = 199
            Caption = #1057#1090'. '#1074#1099#1093#1086#1076#1072' '#1080#1079' '#1056#1060' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit66: TcxTextEdit
            Left = 133
            Top = 194
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 21
            Width = 227
          end
          object cxTextEdit67: TcxTextEdit
            Left = 359
            Top = 194
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 22
            Width = 63
          end
          object cxLabel207: TcxLabel
            Left = 3
            Top = 272
            Caption = #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit68: TcxTextEdit
            Left = 133
            Top = 266
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 24
            Width = 227
          end
          object cxLabel208: TcxLabel
            Left = 3
            Top = 295
            Caption = #1050#1086#1076' '#1080#1089#1082#1083'. '#1090#1072#1088#1080#1092#1072' ..........................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit69: TcxTextEdit
            Left = 133
            Top = 290
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 26
            Width = 289
          end
          object cxTextEdit87: TcxTextEdit
            Left = 359
            Top = 266
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 27
            Width = 63
          end
          object cxLabel224: TcxLabel
            Left = 3
            Top = 223
            Caption = #1057#1086#1087#1088#1086#1074#1086#1078#1076#1077#1085#1080#1077' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel225: TcxLabel
            Left = 3
            Top = 247
            Caption = 
              #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1074#1086#1076#1085#1080#1082#1086#1074' .............................................' +
              '..'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit301: TcxTextEdit
            Left = 133
            Top = 242
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 30
            Width = 289
          end
          object cxTextEdit300: TcxTextEdit
            Left = 133
            Top = 218
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 31
            Width = 289
          end
          object cxLabel232: TcxLabel
            Left = 3
            Top = 319
            Caption = #1055#1088#1086#1074#1086#1079#1085#1072#1103' '#1087#1083#1072#1090#1072'..........................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit94: TcxTextEdit
            Left = 133
            Top = 314
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 33
            Width = 289
          end
        end
        object cxTab_Otpr4: TcxTabSheet
          Caption = #1054#1090#1087#1088#1072#1074#1082#1072' '#8470'4'
          ImageIndex = 3
          ExplicitTop = 24
          ExplicitHeight = 341
          DesignSize = (
            482
            339)
          object cxLabel213: TcxLabel
            Left = 3
            Top = 103
            Caption = #1043#1088#1091#1079' '#1087#1086' '#1043#1053#1043' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel209: TcxLabel
            Left = 3
            Top = 7
            Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit70: TcxTextEdit
            Left = 133
            Top = 2
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 1
            Width = 289
          end
          object cxLabel210: TcxLabel
            Left = 3
            Top = 31
            Caption = #1042#1080#1076' '#1087'. '#1089'. ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit71: TcxTextEdit
            Left = 133
            Top = 26
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 3
            Width = 289
          end
          object cxLabel211: TcxLabel
            Left = 3
            Top = 55
            Caption = #1058#1080#1087' '#1057#1055#1057' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit72: TcxTextEdit
            Left = 133
            Top = 50
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 5
            Width = 289
          end
          object cxLabel212: TcxLabel
            Left = 3
            Top = 79
            Caption = #1043#1088#1091#1079' '#1087#1086' '#1045#1058#1057#1053#1043' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit73: TcxTextEdit
            Left = 133
            Top = 74
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 7
            Width = 227
          end
          object cxTextEdit74: TcxTextEdit
            Left = 359
            Top = 74
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 8
            Width = 63
          end
          object cxTextEdit75: TcxTextEdit
            Left = 359
            Top = 98
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 9
            Width = 63
          end
          object cxTextEdit76: TcxTextEdit
            Left = 133
            Top = 98
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 10
            Width = 227
          end
          object cxLabel214: TcxLabel
            Left = 3
            Top = 129
            Caption = #1042#1077#1089' '#1075#1088#1091#1079#1072' '#1074' '#1090#1085'. ...................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit77: TcxTextEdit
            Left = 133
            Top = 122
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 13
            Width = 289
          end
          object cxLabel215: TcxLabel
            Left = 3
            Top = 151
            Caption = #1057#1090#1088'. '#1085#1072#1079#1085'. ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit78: TcxTextEdit
            Left = 133
            Top = 146
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 15
            Width = 227
          end
          object cxTextEdit79: TcxTextEdit
            Left = 359
            Top = 146
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 16
            Width = 63
          end
          object cxLabel216: TcxLabel
            Left = 3
            Top = 175
            Caption = #1057#1090'. '#1085#1072#1079#1085'. ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit80: TcxTextEdit
            Left = 133
            Top = 170
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 18
            Width = 227
          end
          object cxTextEdit81: TcxTextEdit
            Left = 359
            Top = 170
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 19
            Width = 63
          end
          object cxLabel217: TcxLabel
            Left = 3
            Top = 199
            Caption = #1057#1090'. '#1074#1099#1093#1086#1076#1072' '#1080#1079' '#1056#1060' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit82: TcxTextEdit
            Left = 133
            Top = 194
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 21
            Width = 227
          end
          object cxTextEdit83: TcxTextEdit
            Left = 359
            Top = 194
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 22
            Width = 63
          end
          object cxLabel218: TcxLabel
            Left = 3
            Top = 272
            Caption = #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit84: TcxTextEdit
            Left = 133
            Top = 266
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 24
            Width = 227
          end
          object cxLabel219: TcxLabel
            Left = 3
            Top = 295
            Caption = #1050#1086#1076' '#1080#1089#1082#1083'. '#1090#1072#1088#1080#1092#1072' ..........................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit85: TcxTextEdit
            Left = 133
            Top = 290
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 26
            Width = 289
          end
          object cxTextEdit88: TcxTextEdit
            Left = 359
            Top = 266
            Anchors = [akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 27
            Width = 63
          end
          object cxLabel226: TcxLabel
            Left = 3
            Top = 223
            Caption = #1057#1086#1087#1088#1086#1074#1086#1078#1076#1077#1085#1080#1077' ...............................................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel227: TcxLabel
            Left = 3
            Top = 247
            Caption = 
              #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1074#1086#1076#1085#1080#1082#1086#1074' .............................................' +
              '..'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit401: TcxTextEdit
            Left = 133
            Top = 242
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 30
            Width = 289
          end
          object cxTextEdit400: TcxTextEdit
            Left = 133
            Top = 218
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 31
            Width = 289
          end
          object cxLabel233: TcxLabel
            Left = 3
            Top = 319
            Caption = #1055#1088#1086#1074#1086#1079#1085#1072#1103' '#1087#1083#1072#1090#1072'..........................'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit95: TcxTextEdit
            Left = 133
            Top = 314
            Anchors = [akLeft, akTop, akRight]
            Properties.ReadOnly = True
            Style.Color = clBtnFace
            Style.Shadow = True
            TabOrder = 33
            Width = 289
          end
        end
      end
    end
    object Panel28: TPanel
      Left = 496
      Top = 0
      Width = 497
      Height = 686
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        497
        686)
      object cxLabel131: TcxLabel
        Left = 6
        Top = 391
        Caption = #1057#1090'. '#1074#1093#1086#1076#1072' '#1074' '#1057#1053#1043' ...............................................'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxTextEdit_rtEnterSngStationName: TcxTextEdit
        Left = 150
        Top = 385
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 1
        Text = 'cxTextEdit_rtEnterSngStationName'
        Width = 277
      end
      object cxTextEdit_rtEnterSngStationCode: TcxTextEdit
        Left = 426
        Top = 385
        Anchors = [akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 2
        Text = 'cxTextEdit_rtEnterSngStationCode'
        Width = 67
      end
      object cxLabel141: TcxLabel
        Left = 6
        Top = 415
        Caption = 
          #1057#1090'. '#1074#1099#1093#1086#1076#1072' '#1080#1079' '#1057#1053#1043' ..............................................' +
          '.'
      end
      object cxTextEdit_otprExitSngStationName: TcxTextEdit
        Left = 150
        Top = 409
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 4
        Text = 'cxTextEdit_otprExitSngStationName'
        Width = 277
      end
      object cxTextEdit_otprExitSngStationCode: TcxTextEdit
        Left = 426
        Top = 409
        Anchors = [akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 5
        Text = 'cxTextEdit_otprExitSngStationCode'
        Width = 67
      end
      object cxLabel145: TcxLabel
        Left = 6
        Top = 343
        Caption = #1050#1086#1076' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072' ...............................................'
      end
      object cxTextEdit_rtPayerCode: TcxTextEdit
        Left = 150
        Top = 337
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 7
        Text = 'cxTextEdit_rtPayerCode'
        Width = 343
      end
      object cxLabel152: TcxLabel
        Left = 6
        Top = 271
        Caption = 
          #1055#1086#1076#1082#1086#1076' '#1101#1082#1089#1087#1077#1076#1080#1090#1086#1088#1072'  ............................................' +
          '...'
      end
      object cxTextEdit_otprSubCodeExp: TcxTextEdit
        Left = 150
        Top = 265
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 9
        Text = 'cxTextEdit_otprSubCodeExp'
        Width = 343
      end
      object cxLabel153: TcxLabel
        Left = 6
        Top = 295
        Caption = 
          #1055#1088#1080#1079#1085#1072#1082' '#1086#1090#1087#1088#1072#1074#1082#1080'  ..............................................' +
          '.'
      end
      object cxTextEdit_otprSendKindName: TcxTextEdit
        Left = 150
        Top = 289
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 11
        Text = 'cxTextEdit_otprSendKindName'
        Width = 343
      end
      object cxLabel154: TcxLabel
        Left = 6
        Top = 319
        Caption = #1053#1086#1074#1099#1081' '#1074#1080#1076' '#1087'. '#1089'. ...............................................'
      end
      object cxTextEdit_otprCarTypeCODEName: TcxTextEdit
        Left = 150
        Top = 313
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 13
        Text = 'cxTextEdit_otprCarTypeCODEName'
        Width = 343
      end
      object cxLabel157: TcxLabel
        Left = 6
        Top = 367
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077'  ...............................................'
      end
      object cxTextEdit_AgrRemark: TcxTextEdit
        Left = 150
        Top = 361
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 15
        Text = 'cxTextEdit_AgrRemark'
        Width = 343
      end
      object cxLabel158: TcxLabel
        Left = 6
        Top = 7
        Caption = 'ID '#1090#1077#1083#1077#1075#1088#1072#1084#1084#1099' ...............................................'
      end
      object cxTextEdit_rtID: TcxTextEdit
        Left = 150
        Top = 1
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 17
        Text = 'cxTextEdit_rtID'
        Width = 343
      end
      object cxLabel159: TcxLabel
        Left = 6
        Top = 31
        Caption = 
          #8470' '#1089#1082#1086#1088#1088'. '#1090#1077#1083#1077#1075#1088#1072#1084#1084#1099' ............................................' +
          '...'
      end
      object cxTextEdit_rtParentNumber: TcxTextEdit
        Left = 150
        Top = 25
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 19
        Text = 'cxTextEdit_rtParentNumber'
        Width = 343
      end
      object cxLabel160: TcxLabel
        Left = 6
        Top = 55
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1079#1072#1103#1074#1082#1080' ...............................................'
      end
      object cxTextEdit_rtState: TcxTextEdit
        Left = 150
        Top = 49
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 21
        Text = 'cxTextEdit_rtState'
        Width = 343
      end
      object cxLabel161: TcxLabel
        Left = 6
        Top = 79
        Caption = 
          #1044#1072#1090#1072' '#1087#1086#1089#1083#1077#1076#1085#1077#1081' '#1086#1087#1077#1088#1072#1094#1080#1080' ........................................' +
          '.......'
      end
      object cxTextEdit_rtLastOper: TcxTextEdit
        Left = 150
        Top = 73
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 23
        Text = 'cxTextEdit_rtLastOper'
        Width = 343
      end
      object cxLabel162: TcxLabel
        Left = 6
        Top = 103
        Caption = #1042#1080#1076' '#1089#1086#1086#1073#1097#1077#1085#1080#1103' ...............................................'
      end
      object cxTextEdit_rtMsgKindName: TcxTextEdit
        Left = 150
        Top = 97
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 25
        Text = 'cxTextEdit_rtMsgKindName'
        Width = 343
      end
      object cxLabel163: TcxLabel
        Left = 6
        Top = 127
        Caption = 
          #8470' '#1090#1077#1083#1077#1075#1088'. '#1086#1090' '#1101#1082#1089#1087#1077#1076#1080#1090#1086#1088#1072' .......................................' +
          '........'
      end
      object cxTextEdit_rtNomExp: TcxTextEdit
        Left = 150
        Top = 121
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 27
        Text = 'cxTextEdit_rtNomExp'
        Width = 343
      end
      object cxLabel164: TcxLabel
        Left = 6
        Top = 151
        Caption = #8470' '#1090#1077#1083#1077#1075#1088'. '#1062#1060#1058#1054#1054#1044' ...............................................'
      end
      object cxTextEdit_rtNomStr: TcxTextEdit
        Left = 150
        Top = 145
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 29
        Text = 'cxTextEdit_rtNomStr'
        Width = 343
      end
      object cxLabel165: TcxLabel
        Left = 6
        Top = 175
        Caption = 
          #1044#1072#1090#1072' '#1074#1074#1086#1076#1072' '#1090#1077#1083#1077#1075#1088#1072#1084#1084#1099' ..........................................' +
          '.....'
      end
      object cxTextEdit_rtAgrDate: TcxTextEdit
        Left = 150
        Top = 169
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 31
        Text = 'cxTextEdit_rtAgrDate'
        Width = 343
      end
      object cxLabel166: TcxLabel
        Left = 6
        Top = 199
        Caption = 
          #1044#1086#1083#1078#1085#1086#1089#1090#1100' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103' ..........................................' +
          '.....'
      end
      object cxTextEdit_rtAgrPost: TcxTextEdit
        Left = 150
        Top = 193
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 33
        Text = 'cxTextEdit_rtAgrPost'
        Width = 343
      end
      object cxLabel167: TcxLabel
        Left = 6
        Top = 223
        Caption = #1060#1048#1054' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103' ...............................................'
      end
      object cxTextEdit_rtAgrPerson: TcxTextEdit
        Left = 150
        Top = 217
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 35
        Text = 'cxTextEdit_rtAgrPerson'
        Width = 343
      end
      object cxLabel168: TcxLabel
        Left = 6
        Top = 247
        Caption = 
          #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103' ........................................' +
          '.......'
      end
      object cxTextEdit_rtAgrOrgName: TcxTextEdit
        Left = 150
        Top = 241
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 37
        Text = 'cxTextEdit_rtAgrOrgName'
        Width = 343
      end
      object cxLabel146: TcxLabel
        Left = 6
        Top = 452
        Caption = #1055#1088#1080#1084'. '#1082' '#1090#1077#1083#1077#1075#1088'. ...............................................'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit_rtPrim: TcxTextEdit
        Left = 150
        Top = 446
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 39
        Text = 'cxTextEdit_rtPrim'
        Width = 343
      end
      object cxLabel147: TcxLabel
        Left = 6
        Top = 476
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100' ...............................................'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit_AgrPost: TcxTextEdit
        Left = 150
        Top = 470
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 41
        Text = 'cxTextEdit_AgrPost'
        Width = 343
      end
      object cxLabel148: TcxLabel
        Left = 6
        Top = 500
        Caption = #1060#1048#1054' ...............................................'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit_AgrPerson: TcxTextEdit
        Left = 150
        Top = 494
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 43
        Text = 'cxTextEdit_AgrPerson'
        Width = 343
      end
      object cxLabel149: TcxLabel
        Left = 6
        Top = 524
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' ...............................................'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit_AgrOrgName: TcxTextEdit
        Left = 150
        Top = 518
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 45
        Text = 'cxTextEdit_AgrOrgName'
        Width = 343
      end
      object cxLabel150: TcxLabel
        Left = 6
        Top = 548
        Caption = #1044#1072#1090#1072' '#1089#1086#1075#1083'. ...............................................'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxTextEdit_AgrDate: TcxTextEdit
        Left = 150
        Top = 542
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Shadow = True
        TabOrder = 47
        Text = 'cxTextEdit_AgrDate'
        Width = 343
      end
    end
  end
  object Panel25: TPanel
    Left = 0
    Top = 35
    Width = 1253
    Height = 107
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 0
      Top = 26
      Width = 83
      Height = 81
      Align = alLeft
      Caption = ' '#1060#1080#1083#1100#1090#1088' '
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 14
        Top = 18
        Width = 54
        Height = 54
        LookAndFeel.Kind = lfStandard
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D362400000000000036000000280000003000000030000000010020000000
          000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9
          F9FFAFAFAFFF6A6A6AFF4C4C4CFF4E4E4EFF767676FFC5C5C5FFFEFEFEFFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDEDFF6F6F
          6FFF4E4E4FFF5D5F60FF6E7172FF707273FF5B5C5DFF343536FF757575FFF2F2
          F2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F8FF777878FF585A
          5BFF7E736EFFAC8772FFB98A70FFB78C74FFAD9283FF949494FF49494AFF5D5D
          5DFFF4F4F4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFCFF969696FF5E6061FF8C77
          6AFFD29D78FFD29F7AFFD19E7AFFD09D7AFFCE9976FFC59576FFA8A19CFF4446
          47FF808080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E8E8E8FFABABABFF949494FF999999FFC8C8C8FFFCFC
          FCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FEFEFEFF969696FF6D6E6EFF716964FFE1AC
          82FFE1AE86FFE5B289FFE4B488FFE3B387FFDFAD84FFD9A680FFD09F7CFF9593
          90FF353536FFD5D5D5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FAFAFAFFA0A0A0FF4A4A4AFF4C4D4DFF565758FF515252FF39393AFF5858
          58FFD2D2D2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00A3A3A3FF545454FF737476FFB39174FFF0BE
          90FFF4C392FFF8C795FFF9C896FFF8C795FFF3C293FFECBB8EFFE3AF86FFCBA6
          8BFF5C5E60FF7C7C7CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
          FBFF8A8A8AFF535455FF696969FF968377FFA3887AFFA28F85FF969796FF6566
          67FF383939FFC1C1C1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00AEAEAEFF454545FF6F6F6FFF6F6F71FFEEBD8DFFFECD
          9BFFFED0A0FFFED2A5FFFED1A5FFFED2A3FFFED09FFFFCCB99FFF3C291FFEBB6
          89FF87827EFF434344FFFAFAFAFFFFFFFF00FFFFFF00FFFFFF00FAFAFAFF8D8D
          8DFF5D5F5FFF796D67FFC89676FFCE9A77FFCD9977FFCB9775FFC69273FFB09E
          95FF787B7DFF3D3D3DFFDEDEDEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00B9B9B9FF434343FF656565FF838484FF7F7977FFFECD9BFFFED3
          A8FFFED6AEFFFED8B2FFFED8B5FFFED8B3FFFED5AEFFFED3A7FFFECE9CFFF7C4
          92FFB59F8CFF3B3D3EFFDBDBDBFFFFFFFF00FFFFFF00FCFCFCFF888888FF6666
          67FF6A6865FFD8A680FFDFAD83FFE1B085FFE0B087FFDFAE84FFDAA780FFD49F
          79FFB6A496FF5E5F60FF686868FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C6C6C6FF444444FF646464FF7C7C7CFF8E8E8EFF888180FFF7C89FFFFEDA
          B5FFFEDEBDFFFEDFC2FFFEE0C2FFFEDFC0FFFEDCBAFFFED9B3FFFED4A7FFFECE
          9DFFCEAE90FF424547FFC4C4C4FFFFFFFF00FCFCFCFF878787FF4F4F4FFF7475
          77FFAC8F75FFEEBD8FFFF2C291FFF5C594FFF6C594FFF3C392FFEEBD8EFFE5B4
          88FFDCA981FF9B9895FF3B3C3CFFD4D4D4FFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFEFFA3A3
          A3FF464646FF606060FF7F7F7FFF878787FF969696FF908E8EFFE0B698FFFEDE
          C0FFFEE4CAFFFEE6CFFFFEE7D1FFFEE6CEFFFEE2C8FFFEDDBEFFFED7B2FFFED3
          A5FFD9B491FF454749FF464646FF686868FF707070FF494949FF7D7D7DFF7476
          79FFE8B98AFFFECD9BFFFED0A1FFFED0A3FFFED2A3FFFED0A1FFFDCD9CFFF7C6
          95FFEDBA8CFFC3A68FFF57595AFF999999FFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFDFF999999FF4343
          43FF5F5F5FFF828282FF898989FF939393FF9E9E9EFFA9AAABFFB99582FFF2D4
          BBFFFEEAD6FFFEEEDEFFFEF0E1FFFEEEDDFFFEE9D3FFFEE1C7FFFEDCB8FFFED7
          ACFFC7AA8DFF434547FF676767FF474747FF424242FF808080FF8D8D8DFF8380
          80FFFECB9AFFFED4A9FFFED6AEFFFED8B2FFFED8B4FFFED8B0FFFED5ABFFFED1
          A1FFFBCB97FFE7B98FFF696C6EFF6F6F6FFFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFDFF959595FF434343FF4C4C
          4CFF858585FF8D8D8DFF959595FF9F9F9FFFA8A8A8FFB6B7B7FFA6938CFFDAB9
          A8FFF5E2D3FFFEF6ECFFFEF7F1FFFEF4E9FFFEEDDAFFFEE4CDFFFEDEBEFFFEDC
          B1FF9D8B7BFF474849FF494949FF3D3D3DFF818181FF949494FF989898FF8E8C
          8BFFF6C8A1FFFEDBB6FFFEDDBEFFFEDFC1FFFEE1C2FFFEDEC0FFFEDAB7FFFED7
          AFFFFED1A2FFFECC97FF737271FF5E5E5EFFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FCFCFCFF909090FF424242FF464646FF5A5A
          5AFF909090FF979797FFA1A1A1FFABABABFFB4B4B4FFBEBEBEFFB5B5B5FFB390
          86FFD8C0B5FFF0E4DEFFFEFAFAFFFEF8F0FFFEEEDEFFFEE6CFFFFEE0C0FFFED9
          B0FF5D5B5BFF474747FF363636FF818181FF969696FF9D9D9DFFA4A4A4FF9998
          9AFFE1B89BFFFEE0C1FFFEE5CCFFFEE7D2FFFEE7D1FFFEE5CEFFFEE0C5FFFEDB
          B9FFFED4ACFFFED3A0FF74716EFF5E5E5EFFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FCFCFCFF8C8C8CFF424242FF515151FF4F4F4FFF5B5B
          5BFF989898FFA3A3A3FFADADADFFB6B6B6FFC0C0C0FFCACACAFFC5C6C6FFA69D
          9BFFB39188FFCFB7B0FFE0CEC9FFEDDCD2FFF5DFD0FFF7DCC3FFFED8B9FF9884
          75FF545657FF3C3C3CFF828282FF989898FFA1A1A1FFA9A9A9FFB2B2B2FFA9AA
          ABFFC3A392FFF5D8C0FFFEECD9FFFEF0E1FFFEEFE2FFFEEDDBFFFEE7CFFFFEDF
          C2FFFED9B3FFFED6A6FF616262FF747474FFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FCFCFCFF848484FF424242FF505050FF5D5D5DFF5F5F5FFF4D4D
          4DFF9A9A9AFFB1B1B1FFBABABAFFC2C2C2FFCCCCCCFFD5D5D5FFDEDEDEFFBBBC
          BCFF999090FF9F7F79FFBE9D95FFCAABA0FFD2B1A2FFD4AD99FF92786CFF5B5B
          5DFF4B4B4BFF4F4F4FFF9F9F9FFFA2A2A2FFABABABFFB5B5B5FFBFBFBFFFB6B6
          B6FFB2A39FFFDABCAAFFF8E6D9FFFEF8F0FFFEF9F2FFFEF2E5FFFEEBD7FFFEE2
          C6FFFEDCB7FFE7C39DFF525557FF9D9D9DFFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F6F6F6FF7C7C7CFF3F3F3FFF424242FF727272FF717171FF6F6F6FFF4A4A
          4AFF818181FFB7B7B7FFC5C5C5FFCFCFCFFFD7D7D7FFE1E1E1FFEBEBEBFFF3F3
          F3FFBABBBBFF949596FF837775FF86706CFF826C68FF6A6162FF686969FF6060
          60FF505050FF2B2B2BFF929292FFB0B0B0FFB7B7B7FFC0C0C0FFCACACAFFCCCC
          CCFFC0C1C0FFB7998FFFD9C2B7FFF1E8E3FFFDF9F7FFFEF4EAFFFEECD9FFFEE4
          C9FFFEE2BDFF9A897AFF575859FFDCDCDCFFFFFFFF00FFFFFF00FFFFFF00EAEA
          EAFF5F5F5FFF3F3F3FFF414141FFB0B0B0FFDBDBDBFFB4B4B4FF707070FF7474
          74FF505050FFA7A7A7FFCACACAFFDBDBDBFFE4E4E4FFEEEEEEFFF7F7F7FFFEFE
          FEFFFEFEFEFFDEDEDEFFAFB0B0FF7F8181FF797A7BFF717272FF696969FF6363
          63FF5E5E5EFF353535FF7A7A7AFFBCBCBCFFC2C2C2FFCCCCCCFFD5D5D5FFE0E0
          E0FFCDCDCDFFB6B2B2FFB09189FFCDB3ADFFDDCBC3FFEAD6CAFFF1D8C5FFF5D4
          B9FFC7A68FFF595A5BFF909191FFFFFFFF00FFFFFF00FFFFFF00FDFDFDFF6A6A
          6AFF3D3D3DFF3D3D3DFFAAAAAAFFE3E3E3FFEAEAEAFF898989FF8A8A8AFFA8A8
          A8FF666666FF5F5F5FFFB5B5B5FFD7D7D7FFECECECFFFAFAFAFFFEFEFEFFFAFA
          FAFFFAFAFAFFCFCFCFFF686868FF545454FF5B5B5BFF777777FF707070FF6A6A
          6AFF656565FF3B3B3BFF7A7A7AFFC9C9C9FFCECECEFFD7D7D7FFE1E1E1FFEBEB
          EBFFF5F5F5FFC9CACAFFA6A4A5FF9F8480FFB18E86FFC29F93FFBF9A8BFF997D
          71FF636363FF7E7E7EFFF3F3F3FFFFFFFF00FFFFFF00FFFFFF00C2C2C2FF3B3B
          3BFF414141FF565656FFE6E6E6FFF4F4F4FFC6C6C6FF686868FFA9A9A9FFB3B3
          B3FFBFBFBFFF6E6E6EFF5B5B5BFFA6A6A6FFD5D5D5FFDEDEDEFFE0E0E0FFD6D6
          D6FF838383FF4D4D4DFF474747FF484848FF535353FF777777FF7B7B7BFF7373
          73FF676767FF303030FFA2A2A2FFD3D3D3FFD9D9D9FFE3E3E3FFECECECFFF6F6
          F6FFFEFEFEFFFEFEFEFFD2D2D2FFA3A4A5FF929090FF867E7DFF7B7776FF7778
          79FF9B9B9BFFEEEEEEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7FFF4040
          40FF434343FF616161FFDCDCDCFF9F9F9FFF5E5E5EFFA8A8A8FFB6B6B6FFC1C1
          C1FFCCCCCCFFCDCDCDFF8C8C8CFF575757FF747474FF9A9A9AFF919191FF5353
          53FF494949FF404040FF4D4D4DFF5C5C5CFF5B5B5BFF555555FF686868FF6666
          66FF444444FF4F4F4FFFC9C9C9FFDDDDDDFFE6E6E6FFEEEEEEFFF8F8F8FFFDFD
          FDFFFAFAFAFFF5F5F5FFF9F9F9FFEFEFEFFF777777FF585858FF838383FFDBDB
          DBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00656565FF4949
          49FF424242FF676767FF545454FF7B7B7BFFAFAFAFFFB9B9B9FFC4C4C4FFCBCB
          CBFFC7C7C7FFC4C4C4FFC3C3C3FFB5B5B5FF848484FF616161FF5A5A5AFF5959
          59FF4F4F4FFF535353FF5D5D5DFF5E5E5EFF505050FF454545FF454545FF4242
          42FF4F4F4FFF909090FFB9B9B9FFDFDFDFFFF6F6F6FFFEFEFEFFFEFEFEFFFEFE
          FEFFFBFBFBFFF6F6F6FF9C9C9CFF373737FF555555FFC2C2C2FFFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006D6D6DFF5050
          50FF444444FF727272FFABABABFFB2B2B2FFBBBBBBFFC6C6C6FFCACACAFFC7C7
          C7FFC2C2C2FFBFBFBFFFBBBBBBFFB8B8B8FFB7B7B7FFB5B5B5FFA2A2A2FF8B8B
          8BFF787878FF656565FF555555FF4F4F4FFF4E4E4EFF454545FF3E3E3EFF3C3C
          3CFF535353FF656565FF7F7F7FFF9E9E9EFFBCBCBCFFC6C6C6FFB6B6B6FFA2A2
          A2FF808080FF393939FF414141FFADADADFFFBFBFBFFFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8DFF5151
          51FF555555FF464646FF9C9C9CFFC3C3C3FFC9C9C9FFC9C9C9FFC5C5C5FFC1C1
          C1FFBEBEBEFFBABABAFFB7B7B7FFB3B3B3FFB0B0B0FFAEAEAEFFAAAAAAFFA8A8
          A8FFA6A6A6FFA4A4A4FF9F9F9FFF929292FF868686FF7B7B7BFF707070FF6666
          66FF5D5D5DFF525252FF474747FF3E3E3EFF373737FF393939FF363636FF2F2F
          2FFF363636FF949494FFF4F4F4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCCFF4F4F
          4FFF5F5F5FFF575757FF494949FF9A9A9AFFD0D0D0FFC6C6C6FFC0C0C0FFBDBD
          BDFFB9B9B9FFB6B6B6FFB2B2B2FFAFAFAFFFACACACFFA9A9A9FFA5A5A5FFA2A2
          A2FF9F9F9FFF9C9C9CFF999999FF9A9A9AFF9A9A9AFF9B9B9BFF9C9C9CFF9C9C
          9CFF9D9D9DFF9D9D9DFF9F9F9FFFA0A0A0FFA4A4A4FF757575FF3C3C3CFF6F6F
          6FFFE2E2E2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFEFF8383
          83FF555555FF676767FF606060FF4D4D4DFF6C6C6CFFA7A7A7FFC2C2C2FFBCBC
          BCFFB6B6B6FFB3B3B3FFAEAEAEFFABABABFFA8A8A8FFA5A5A5FFA1A1A1FF9E9E
          9EFF9B9B9BFF999999FF999999FF999999FF999999FF999999FF999999FF9999
          99FF999999FF9A9A9AFF9C9C9CFF898989FF484848FF494949FFBBBBBBFFFEFE
          FEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1
          F1FF747474FF585858FF646464FF6A6A6AFF5C5C5CFF565656FF676767FF8888
          88FFA1A1A1FFAFAFAFFFAEAEAEFFAAAAAAFFA6A6A6FFA2A2A2FF9F9F9FFF9A9A
          9AFF999999FF999999FF999999FF999999FF999999FF999999FF999999FF9A9A
          9AFF9C9C9CFF9A9A9AFF636363FF393939FF8D8D8DFFF2F2F2FFFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F7F7F7FFAFAFAFFF707070FF5C5C5CFF666666FF949494FFB8B8B8FF8E8E
          8EFF696969FF606060FF6A6A6AFF787878FF848484FF909090FF999999FF9C9C
          9CFF9D9D9DFF9C9C9CFF9C9C9CFF9C9C9CFF9B9B9BFF9C9C9CFF9C9C9CFF9F9F
          9FFF7C7C7CFF424242FF616161FFD6D6D6FFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FEFEFEFFF8F8F8FFFBFBFBFFFFFFFF00FFFFFF00FFFF
          FF00F9F9F9FFDBDBDBFFB9B9B9FF979797FF787878FF5B5B5BFF545454FF5757
          57FF606060FF6B6B6BFF707070FF767676FF787878FF757575FF6B6B6BFF4C4C
          4CFF464646FFADADADFFFBFBFBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F8FFDFDFDFFF9B9B
          9BFF535353FF505050FF4C4C4CFF494949FF464646FF525252FF808080FFA5A5
          A5FFEEEEEEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00CECECEFF898989FF6C6C6CFF737373FFA0A0A0FFEFEFEFFFFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        TabOrder = 0
        OnClick = cxButton1Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 83
      Top = 26
      Width = 1170
      Height = 81
      Align = alClient
      Caption = ' '#1040#1090#1088#1080#1073#1091#1090#1099' '#1092#1080#1083#1100#1090#1088#1072' '
      TabOrder = 1
      DesignSize = (
        1170
        81)
      object cxLabel110: TcxLabel
        Left = 6
        Top = 16
        Caption = #8470' '#1090#1077#1083#1077#1075#1088#1072#1084#1084#1099' .........'
      end
      object cxLabel116: TcxLabel
        Left = 6
        Top = 37
        Caption = #8470' '#1090#1077#1083'. '#1101#1082#1089#1087'. .........'
      end
      object cxLabel111: TcxLabel
        Left = 6
        Top = 57
        Caption = #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1077' '#1089' ....'
      end
      object cxDateEdit5: TcxDateEdit
        Tag = 3
        Left = 93
        Top = 56
        Properties.ReadOnly = True
        Properties.SaveTime = False
        Style.Color = clBtnFace
        TabOrder = 3
        Width = 80
      end
      object cxLabel113: TcxLabel
        Left = 177
        Top = 57
        Caption = #1087#1086
      end
      object cxDateEdit6: TcxDateEdit
        Tag = 3
        Left = 194
        Top = 56
        Properties.ReadOnly = True
        Properties.SaveTime = False
        Style.Color = clBtnFace
        TabOrder = 5
        Width = 80
      end
      object cxTextEdit24: TcxTextEdit
        Left = 93
        Top = 35
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 6
        Width = 181
      end
      object cxTextEdit4: TcxTextEdit
        Left = 93
        Top = 14
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 7
        Width = 181
      end
      object cxLabel114: TcxLabel
        Left = 285
        Top = 16
        Caption = #1057#1090'. '#1086#1090#1087#1088'. ........'
      end
      object cxLabel115: TcxLabel
        Left = 285
        Top = 37
        Caption = #1057#1090'. '#1085#1072#1079#1085'. .........'
      end
      object cxLabel117: TcxLabel
        Left = 285
        Top = 57
        Caption = #1043#1088#1091#1079' '#1045#1058#1057#1053#1043'......'
      end
      object cxTextEdit25: TcxTextEdit
        Left = 362
        Top = 56
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 11
        Width = 737
      end
      object cxTextEdit5: TcxTextEdit
        Left = 362
        Top = 35
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 12
        Width = 737
      end
      object cxTextEdit6: TcxTextEdit
        Left = 362
        Top = 14
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 13
        Width = 737
      end
      object cxTextEdit22: TcxTextEdit
        Left = 1099
        Top = 14
        Anchors = [akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 14
        Width = 61
      end
      object cxTextEdit23: TcxTextEdit
        Left = 1099
        Top = 35
        Anchors = [akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 15
        Width = 61
      end
      object cxTextEdit26: TcxTextEdit
        Left = 1099
        Top = 56
        Anchors = [akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 16
        Width = 61
      end
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 0
      Top = 0
      Width = 1253
      Height = 26
      Align = dalTop
      BarManager = dxBarManager1
    end
  end
  object Panel26: TPanel
    Left = 0
    Top = 142
    Width = 255
    Height = 686
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 3
    object cxGrid14: TcxGrid
      Left = 0
      Top = 0
      Width = 255
      Height = 686
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
      object cxGrid14DBBandedTableView1: TcxGridDBBandedTableView
        PopupMenu = dxBarPopupMenu2
        OnKeyPress = cxGrid14DBBandedTableView1KeyPress
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = cxGrid14DBBandedTableView1CustomDrawCell
        OnFocusedItemChanged = cxGrid14DBBandedTableView1FocusedItemChanged
        OnFocusedRecordChanged = cxGrid14DBBandedTableView1FocusedRecordChanged
        DataController.DataSource = DS_RT
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.OnChanged = cxGrid14DBBandedTableView1FilterOnChanged
        DataController.Filter.Active = True
        DataController.KeyFieldNames = 'rt_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'rt_number_str'
            Column = cxGrid14DBBandedTableView1rt_number_str
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
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
        OptionsView.BandHeaders = False
        OnCustomDrawColumnHeader = cxGrid14DBBandedTableView1CustomDrawColumnHeader
        OnCustomDrawFooterCell = cxGrid14DBBandedTableView1CustomDrawColumnHeader
        Bands = <
          item
          end>
        object cxGrid14DBBandedTableView1rt_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'rt_id'
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid14DBBandedTableView1rt_number_str: TcxGridDBBandedColumn
          Caption = #8470' '#1090#1077#1083#1077#1075#1088#1072#1084#1084#1099
          DataBinding.FieldName = 'rt_number_str'
          Width = 72
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid14DBBandedTableView1rt_number_exp: TcxGridDBBandedColumn
          Caption = #8470' '#1090#1077#1083'. '#1101#1082#1089#1087'.'
          DataBinding.FieldName = 'rt_number_exp'
          Width = 83
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid14DBBandedTableView1rt_state_name: TcxGridDBBandedColumn
          Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
          DataBinding.FieldName = 'rt_state_name'
          Width = 74
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid14DBBandedTableView1rt_date_agreement: TcxGridDBBandedColumn
          Tag = -1
          Caption = #1044#1072#1090#1072' '#1089#1086#1075#1083'.'
          DataBinding.FieldName = 'rt_date_agreement'
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid14DBBandedTableView1node_begin_cod: TcxGridDBBandedColumn
          Caption = #1050#1086#1076' '#1089#1090'. '#1086#1090#1087#1088'.'
          DataBinding.FieldName = 'node_begin_cod'
          Width = 74
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid14DBBandedTableView1node_begin_name: TcxGridDBBandedColumn
          Caption = #1057#1090'. '#1086#1090#1087#1088'.'
          DataBinding.FieldName = 'node_begin_name'
          Width = 53
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGrid14DBBandedTableView1node_end_cod: TcxGridDBBandedColumn
          Caption = #1050#1086#1076' '#1089#1090'. '#1085#1072#1079#1085'.'
          DataBinding.FieldName = 'node_end_cod'
          Width = 73
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGrid14DBBandedTableView1node_end_name: TcxGridDBBandedColumn
          Caption = #1057#1090'. '#1085#1072#1079#1085'.'
          DataBinding.FieldName = 'node_end_name'
          Width = 52
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGrid14DBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn
          Caption = #1050#1086#1076' '#1045#1058#1057#1053#1043
          DataBinding.FieldName = 'kargoETSNG_cod'
          Width = 63
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGrid14DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn
          Caption = #1045#1058#1057#1053#1043
          DataBinding.FieldName = 'kargoETSNG_name'
          Width = 106
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cxGrid14DBBandedTableView1amount_units: TcxGridDBBandedColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074
          DataBinding.FieldName = 'amount_units'
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid14DBBandedTableView1fact_weight: TcxGridDBBandedColumn
          Caption = #1042#1077#1089' '#1075#1088#1091#1079#1072
          DataBinding.FieldName = 'fact_weight'
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid14DBBandedTableView1vid_transfer: TcxGridDBBandedColumn
          Caption = #1042#1080#1076' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
          DataBinding.FieldName = 'vid_transfer'
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid14DBBandedTableView1rtLastOper: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072' '#1087#1086#1089#1083#1077#1076#1085#1077#1081' '#1086#1087#1077#1088#1072#1094#1080#1080
          DataBinding.FieldName = 'rtLastOper'
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
      end
      object cxGrid14Level1: TcxGridLevel
        GridView = cxGrid14DBBandedTableView1
      end
    end
  end
  object Panel29: TPanel
    Left = 0
    Top = 0
    Width = 1253
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel29'
    Color = clBtnShadow
    TabOrder = 4
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 32
      Height = 35
      Align = alLeft
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F987000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
        80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
        0AEE00000AEE01AF3168AC00000C25494441546843C558097014651AEDE15815
        C50B587551C40B3C105CB6446A75AD5DD7554802018580490867B85D3C8A9555
        B9098759251C6A24AE52021A2D44494408E188E43E81248490845C643233B966
        32C9E49849F2F6FBFEEE9EE9C441971928BBF2EAEFE9EE74BFF7DDDD927495B6
        8303249F9383A5EC5383A5FAE88152D29A7E5208DDFA1642EFABF4886B779BF8
        41D2B3171EECEDB03E2AC1384C42E5031292EF92BAC2FA499FD153EF21F4BD76
        4FF7E0CE26229478A7E4736490B4F4CBDBA5A0B8E1FD4F5A1EEF8DCA0725140F
        95907FB784337F907062A084B97DA56DF488A1843E1E3CCAEB7FD1D11DBA21F5
        0E6944EEC3D715353E7333F0971B611B21C1E4F7002AEE935074AF845C229F75
        A784A44112126E97F0DF9BA4D621923487EE7307A197723FAF89FDEA0D66BC1E
        85E0D7A210B42C0A81CB7609CC58F221D29FBA07983E8C301CF01F02CC1A092C
        7C12C5F7E97076B0840C229F48963F769B841FFB4BF8EE06094B46FF15D31645
        60D6D28D058F3D31E6717AF80DD75C48C09248981A3B61B43868B5C364B1A37C
        DF1EB4FB9180054F01AF3E0B848E01A63C00BC381095A36F46DAEF259C1A20E1
        E8AD12626F92B09FC847F795B063D830E8CD0E842E8FC28CC55BCCF70F1BF102
        09E87F4D45042CF908B5563BDA1D1D68B33B68ED44C5DB4B8180FB81F96381D7
        FE263CD035A60F6A1F96D0F1FC209C24ABC7DD222186C87F73BD843D7D288474
        12C2FADD80163BB0FBDB44042C8B44F0E24DD607878D9AA854290ED1ABBEE9A6
        2EFE18B58DEDE8ECEC426757273A3A818A158B00DF3B49C44340D023B03FDD0F
        D50F49C8BE8B92F6DEDEA87944C2817E12BEBE4EC217443E8AC87F2A4908BF67
        085A1D5D48CA2E46D0EAAFB070771602E76FB23D3672EC946B25423775E927A8
        6BB2137912204474A162DB1660ECEF80BFDF0AFC63005AC65C8F540A1BB67824
        118DA1D0E1F817E4E93793FF98F0ED5B2BC8039DC8CC2B43C8BB7B1096D984D0
        9D27313D7443CB43C347BD742D44E8A6510ED4530875117146714909766CDE84
        52AA328E2774B0FF5187B65112A82A61275B99B092B08EACFE5EDF5E08EBD31B
        DB070F460C916F6A6EA5302401B9A598B7722FA2729BB13EC58285BB52F04A68
        98EDE19163A75E6D11BA8025BBD0D04C81AB6C9BB76CC1FB9FECC2BE51435046
        E5F22295CDC221143A54797EA06AF3612F091124E03DF6C4EBCBD0DE6E879DF2
        A6CDDE81D67602C560060958B4661F0E96B42032A70161A9662CA6709A366F43
        EBE3A39F0D2411B75DADC4D605BCFA092C4D0EA780E5CB9763D9EB6F20342418
        0728597F22C453C27E7FA384BD14321F295E58D54B878AC4247410613B410820
        B4D3AD58C03FD77D8974A30307CE5B1195DD808D69662CDA958C80B961EDA3C6
        3CCFFDE276A55F7895D8C203669B4B40444404FCFDFD31CE6F0296070560DFE0
        01F894ACCE31CE96DF4C584D885DB040E44B07E58D8304701563016D94C46967
        2E62F9C6AF506AED4462A50DDF159208F2C46612B164772602E685B53F3AF2CF
        3C43792D42E480B9D925E0F8F1E3080F0F0787527474344A4FE7206EE902EC18
        7A3736F6EF876D23472075E70E67CE70E2CB02642FD01FBE8FCB46E4DE63E0C0
        2CA5FE925EDD86D8121B3ECFB3223CAB09CBBECE1322463EF9DC5C1231C01B4F
        5015EA2E202F2F0FFBF7EF173874E81092939361B3D99C21A6DDE1A46701EC05
        550039007B0E24E2CDF57B11139F857DB169D8F56D0A3E884EC6FA2F12B1E2D3
        9FF0C6171908DD7A0453E76E768C7EDA6F09091848F0689AD505501FD07AA0AE
        AE0E09090902292929387BF62C2A2B2B85C57B6E42801246AA005E93B38BF0F9
        370988FAF20422F71CC3CEDD47B0FDB3C388888AC5D6C818AC793F1AA16FEEC4
        E4399B181D7F7AC6EF0D6586BA6211BA29D489B539D0D9D989828202E4E7E7A3
        B0B010E5E5E5605176BBAB52A942DC0968230176D24A9104AAA8A22A596DEDA8
        B1D850656A44A9BE0E17CA8C2828D1E3644609566F3D889767AF6D26013E4A89
        BDA2A4D64D59F461B72AC4E42C160B0C06036A6B6B61B55AE170B872E4D74288
        13B985CA69739B03CDAD1D686A75C04AF385B9B99D3A7E0B1A488CC9D282AABA
        26E45C30E187A4324C9AB311C47A1561E815B1E75A3C65F1CF05B065D9E21D1D
        6CC7CB6FAE1C7025B12C80C8930041BED58E461640C4CD363BF59C36D4939892
        6A2B52CF197124BD0A7E33D6B1002A72D2F02B16F0F2821D686CFE65A2EE2468
        1398AB509B5246D9FA36B6BE102093B7107116D040C4EB9BDA5047225840FAF9
        1A1C3F6DC2045900BF10B1802B1AFA742F2DDC4EEEFD797CFFAAE5353D40DBC8
        D8FA2C406B7DAD803A1640D00AF095056CF74CC0FCED68503AB1BB4AF34B9587
        BB305B9F470935F66DDAF021EBCB1E50AC4F1EE829E00479C03764ADE702262F
        D8063309502B8A3AD4B923AE0D1B2D792E9D6AECABE1A3C67EF7F09105D4122E
        2A21748C05047B21E0A5D0089A464980D290D4915A15A2AEEAB8AD8E0EAAE5D5
        FADF3DF65DC9CBD6E70AC4892BC85B59403B8A0D8D2207BC163069FE56D4D138
        ED50460226A84288D1FC765A5D091B953C5BBF5BE8B84D5E8D006B2B4AF48D48
        2BA0243EC31E58E379084D9AB795EA338DC4CA54C996BD1CC435142E4C5C7E05
        95073867DD572A0FD77D77B1CFD6AF1168459122203EC74865D40B0193E77E80
        1A7AA59449C9330D93145044B948BB886BC9BBAC6F174DCB6DE954C2A7A6B115
        2612505CDD8854F2C03112E013E48500FF79FFA1CED82EEA389312A07DB6B06A
        69D5DA2A69D5EA6AC9546BBE5BF29AD867EB9B5800E142150B30E1A810B0DA8B
        109A130EA3B9DD190A4CEEB2A026C5E1221256A9F7CE8EEBCEF26EC81B89BCB1
        B10D455556A49C3321FE340908F642C0C4B9EFC1D8D0265E0799145B5525D973
        5549ABA5B2E7B8D0AD64AA5D571B3A4CDEC2025A5058651102E2B28DF00D5CE5
        B907FC6787434F02C4F0A58009BA837A9EBBACDA69B509EB1C17340D4B24AE12
        364CDE20D082F37A0B921501E3BD113061D61654D5B7A1495410797A14D00892
        CFA9A044A532A912FF59C2F624AFC4BD4ABEDADC826A125078C982A47CCE0103
        C607AEF4DC0313676FC6A5BA562729262608BA8312E74C5A252E1A9573507375
        5AB964CA09AB25AF27017A732B0A2E35920023E2B24840901702FC666E422509
        10847A1054893A092B93A54A5A25EE9C32D5787713366C79265FD5C0AB0DE7AA
        CC48240187B30DF079E55DCF3D3061D64694D7C82F1A4CE4FF018F05F5340E88
        D15881DAA084C5DD589D895735D870A99E40EBB94B669CCA33E2C74C03C67923
        C0376413CA4CAD62566142829832BB745B0561D734E99C6B94EEAAD6776DA26A
        ADAE92AF240195F52DC8ABB0E0A73C030E651A312EF01DCF3DE037330C653536
        E794A85AD4DDCA53A418C614C856979B5337AB53926AC9B3C5D9F24CBEA28E50
        DF8CDCCA0624E41AF0635635C64FF74280CF8C0D2831B6D040A7CE29F2EA8EA8
        4A582D8B4EAB93002E8F5C5D54E26ABC3379D9EA32F9F2BA6681B3E5B2801F32
        AA2984DEF6DC03BE21EB69B46DA6F9C4D5E65562975B556BBBC285C82B49AA12
        D7864C85202F132FAB259090DC0A334E9EAD466C260998E68D80E07528AA6E76
        8680E894A25B6AA01E733622574312755D536104F1CB589DC9970A34E14C593D
        4E908098744AE269FFF6DC033E4124C060936B3593A136CFAD9EE7155908ADCA
        3103AD7C8D0A113204BD521AABA83CAA55A6928E5592C539DECB89B4B03E59BE
        B4A6498838535E4FEF02E4810C3D5E9CEE8D007A9D2BD437E3A2896E6CB43A71
        91F6B5D09E2B51CF99AC2831C82836368A11B988416F5B17F456BAAF0585D516
        9CA7B9E71CCDFF05543AB97CE6D3EFECD27A1C3B63C0C1341210B0C2730F8C0F
        5C83D3A5166416D5214B4531EDF784728EAF93512B90C1B8508B74056985B548
        2BAC412A835E19531424D3E89CA4209166A0C4022309A8C6C1F46ABC38ED5F9E
        0BF0A551F6547E0D4ED2CD5C30D0BE01090A78BFFB79F9DA138CD3328E0BE8E9
        1D9790A347BC82A3D97A1CCDAEA2A9939055852384C38C4C79FD9E3CF0C2D4B7
        BC11B006F1671B1097534B0FA9E986A3F49BD1F3785C0E1DA3EB8FE49870245B
        C661BA4E20AB866A3BC3444D8A3E1D2A88A535969A566C86113184830C4AE098
        CC5A8C0BF0DC03D2A4D961983C7B03FC67AD87FF4C775847C709B3D661628816
        6BE9B782996BE9EBDA1A1921AB3181BCEA27B08ADE770941ABE04B039B6FF04A
        F804BE4B6F608C77E8980C3F82A79F16F953E4BD8437951BF0D7B1DF02FC5D94
        3930972BDEAE57FE91BF4BFE9660F2CCC5EDF63FEECDA99BE657A78B00000000
        49454E44AE426082}
      Proportional = True
      Stretch = True
    end
    object cxLabel123: TcxLabel
      Left = 32
      Top = 0
      Align = alClient
      AutoSize = False
      Caption = '   '#1058#1045#1051#1045#1043#1056#1040#1052#1052#1067
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnShadow
      Style.Font.Charset = RUSSIAN_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -21
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Height = 35
      Width = 1221
      AnchorY = 18
    end
  end
  object ADOEtran: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 193
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
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
      end
      item
        Properties.Strings = (
          'Width')
      end
      item
        Properties.Strings = (
          'Width')
      end
      item
        Properties.Strings = (
          'Height')
      end
      item
        Properties.Strings = (
          'Width')
      end
      item
        Properties.Strings = (
          'Width')
      end>
    StorageName = '\Software\Lis1\EtranMain'
    StorageType = stRegistry
    Left = 56
    Top = 192
  end
  object DS_RT: TDataSource
    DataSet = Query_RT
    Left = 24
    Top = 256
  end
  object Query_RT: TADOQuery
    Connection = ADOEtran
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ('
      'SELECT  '
      #9'rt.rt_id, rtID,'
      #9'rtNomExp as rt_number_exp,'
      #9'rtNomStr as rt_number_str,'
      #9'rtState  as rt_state_name,'
      
        #9'(SELECT TOP 1 agrDate FROM rtAgreement WHERE rt.rt_id = rtAgree' +
        'ment.rt_id) as  rt_date_agreement,'
      #9'rtFromStationCode as node_begin_cod,'
      #9'rtFromStationName as node_begin_name,'
      
        #9'(SELECT TOP 1 otprToStationCode FROM rtOtpr WHERE rt.rt_id = rt' +
        'Otpr.rt_id) as node_end_cod,'
      
        #9'(SELECT TOP 1 otprToStationName FROM rtOtpr WHERE rt.rt_id = rt' +
        'Otpr.rt_id) as node_end_name,'
      
        #9'(SELECT TOP 1 otprFreightCode '#9'FROM rtOtpr WHERE rt.rt_id = rtO' +
        'tpr.rt_id) as kargoETSNG_cod,'
      
        #9'(SELECT TOP 1 otprFreightName '#9'FROM rtOtpr WHERE rt.rt_id = rtO' +
        'tpr.rt_id) as kargoETSNG_name,'
      
        #9'(SELECT TOP 1 otprCarCount'#9#9'FROM rtOtpr WHERE rt.rt_id = rtOtpr' +
        '.rt_id) as amount_units,'
      
        #9'(SELECT TOP 1 otprFreightWeight FROM rtOtpr WHERE rt.rt_id = rt' +
        'Otpr.rt_id) as fact_weight,'
      #9'rtMsgKindName as vid_transfer, rtLastOper as rtLastOper'
      'FROM'#9'rt '
      
        #9#9'inner join etran_global_id on rt.rt_id = etran_global_id.globa' +
        'l_id'
      
        'WHERE'#9'users_owner_id in (SELECT users2.users_id FROM etran_users' +
        ' users1 inner join etran_users users2 on users1.users_group_id =' +
        ' users2.users_group_id WHERE users1.users_name = system_user)) x' +
        '1 WHERE '
      '1=0')
    Left = 56
    Top = 256
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 56
    Top = 320
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object DS_XML_parser_payer: TDataSource
    DataSet = SP_XML_parser_payer
    Left = 376
    Top = 776
  end
  object SP_XML_parser_payer: TADOStoredProc
    Connection = ADOEtran
    CursorType = ctStatic
    ProcedureName = 'sp_ETRAN_XML_parser;1'
    Parameters = <
      item
        Name = '@xml_reply_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 14
      end
      item
        Name = '@doc_type_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 29
      end
      item
        Name = '@doc_sub'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 472
    Top = 760
  end
  object DS_XML_parser_view: TDataSource
    DataSet = SP_XML_parser_view
    Left = 789
    Top = 765
  end
  object SP_XML_parser_view: TADOStoredProc
    Connection = ADOEtran
    CursorType = ctStatic
    ProcedureName = 'sp_ETRAN_XML_parser'
    Parameters = <
      item
        Name = '@xml_reply_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 43628
      end
      item
        Name = '@doc_type_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@doc_sub'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 6
      end>
    Left = 882
    Top = 757
  end
  object SP_XML_parser: TADOStoredProc
    Connection = ADOEtran
    ProcedureName = 'sp_ETRAN_XML_parser'
    Parameters = <
      item
        Name = '@xml_reply_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@doc_type_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@doc_sub'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 882
    Top = 672
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 464
    Top = 8
    object ClientDataSet1rtID: TStringField
      FieldName = 'rtID'
      Size = 10
    end
    object ClientDataSet1rtNumber: TStringField
      FieldName = 'rtNumber'
      Size = 30
    end
    object ClientDataSet1rtParentID: TStringField
      FieldName = 'rtParentID'
      Size = 30
    end
    object ClientDataSet1rtParentNumber: TStringField
      FieldName = 'rtParentNumber'
      Size = 30
    end
    object ClientDataSet1rtStateID: TStringField
      FieldName = 'rtStateID'
      Size = 30
    end
    object ClientDataSet1rtState: TStringField
      FieldName = 'rtState'
      Size = 250
    end
    object ClientDataSet1rtLastOper: TDateTimeField
      FieldName = 'rtLastOper'
    end
    object ClientDataSet1rtRegDate: TDateTimeField
      FieldName = 'rtRegDate'
    end
    object ClientDataSet1rtStartDate: TDateTimeField
      FieldName = 'rtStartDate'
    end
    object ClientDataSet1rtFinishDate: TDateTimeField
      FieldName = 'rtFinishDate'
    end
    object ClientDataSet1rtPayerCode: TStringField
      FieldName = 'rtPayerCode'
      Size = 30
    end
    object ClientDataSet1rtPayerID: TStringField
      FieldName = 'rtPayerID'
      Size = 30
    end
    object ClientDataSet1rtPayerOKPO: TStringField
      FieldName = 'rtPayerOKPO'
      Size = 30
    end
    object ClientDataSet1rtPayerName: TStringField
      FieldName = 'rtPayerName'
      Size = 250
    end
    object ClientDataSet1rtSenderID: TStringField
      FieldName = 'rtSenderID'
      Size = 30
    end
    object ClientDataSet1rtSenderOKPO: TStringField
      FieldName = 'rtSenderOKPO'
      Size = 30
    end
    object ClientDataSet1rtSenderName: TStringField
      FieldName = 'rtSenderName'
      Size = 255
    end
    object ClientDataSet1rtMsgKindID: TStringField
      FieldName = 'rtMsgKindID'
      Size = 30
    end
    object ClientDataSet1rtMsgKindName: TStringField
      FieldName = 'rtMsgKindName'
      Size = 255
    end
    object ClientDataSet1rtFromCountryCode: TStringField
      FieldName = 'rtFromCountryCode'
      Size = 30
    end
    object ClientDataSet1rtFromCountryName: TStringField
      FieldName = 'rtFromCountryName'
      Size = 255
    end
    object ClientDataSet1rtFromStationCode: TStringField
      FieldName = 'rtFromStationCode'
      Size = 30
    end
    object ClientDataSet1rtFromStationName: TStringField
      FieldName = 'rtFromStationName'
      Size = 250
    end
    object ClientDataSet1rtEnterStationCode: TStringField
      FieldName = 'rtEnterStationCode'
      Size = 30
    end
    object ClientDataSet1rtEnterStationName: TStringField
      FieldName = 'rtEnterStationName'
      Size = 250
    end
    object ClientDataSet1rtEnterSngStationCode: TStringField
      FieldName = 'rtEnterSngStationCode'
      Size = 30
    end
    object ClientDataSet1rtEnterSngStationName: TStringField
      FieldName = 'rtEnterSngStationName'
      Size = 250
    end
    object ClientDataSet1rtRegNum: TStringField
      FieldName = 'rtRegNum'
      Size = 30
    end
    object ClientDataSet1rtNomExp: TStringField
      FieldName = 'rtNomExp'
      Size = 30
    end
    object ClientDataSet1rtNomStr: TStringField
      FieldName = 'rtNomStr'
      Size = 30
    end
    object ClientDataSet1rtPrim: TStringField
      FieldName = 'rtPrim'
      Size = 4000
    end
    object ClientDataSet1rtAgrDate: TDateTimeField
      FieldName = 'rtAgrDate'
    end
    object ClientDataSet1rtAgrPost: TStringField
      FieldName = 'rtAgrPost'
      Size = 250
    end
    object ClientDataSet1rtAgrPerson: TStringField
      FieldName = 'rtAgrPerson'
      Size = 250
    end
    object ClientDataSet1rtAgrOrgId: TStringField
      FieldName = 'rtAgrOrgId'
      Size = 30
    end
    object ClientDataSet1rtAgrOrgName: TStringField
      FieldName = 'rtAgrOrgName'
      Size = 250
    end
    object ClientDataSet1AgrDate: TDateTimeField
      FieldName = 'AgrDate'
    end
    object ClientDataSet1AgrPost: TStringField
      FieldName = 'AgrPost'
      Size = 250
    end
    object ClientDataSet1AgrPerson: TStringField
      FieldName = 'AgrPerson'
      Size = 250
    end
    object ClientDataSet1AgrOrgId: TStringField
      FieldName = 'AgrOrgId'
      Size = 30
    end
    object ClientDataSet1AgrOrgName: TStringField
      FieldName = 'AgrOrgName'
      Size = 250
    end
    object ClientDataSet1AgrRemark: TStringField
      FieldName = 'AgrRemark'
      Size = 4000
    end
    object ClientDataSet1otprNom: TStringField
      FieldName = 'otprNom'
      Size = 30
    end
    object ClientDataSet1otprSubCodeExp: TStringField
      FieldName = 'otprSubCodeExp'
      Size = 30
    end
    object ClientDataSet1otprIxTariffCode: TStringField
      FieldName = 'otprIxTariffCode'
    end
    object ClientDataSet1otprFreightCode: TStringField
      FieldName = 'otprFreightCode'
    end
    object ClientDataSet1otprFreightName: TStringField
      FieldName = 'otprFreightName'
      Size = 250
    end
    object ClientDataSet1otprFreightGNGID: TStringField
      FieldName = 'otprFreightGNGID'
    end
    object ClientDataSet1otprFreightGNGCode: TStringField
      FieldName = 'otprFreightGNGCode'
    end
    object ClientDataSet1otprFreightGNGName: TStringField
      FieldName = 'otprFreightGNGName'
      Size = 1000
    end
    object ClientDataSet1otprToCountryCode: TStringField
      FieldName = 'otprToCountryCode'
      Size = 10
    end
    object ClientDataSet1otprToCountryName: TStringField
      FieldName = 'otprToCountryName'
      Size = 250
    end
    object ClientDataSet1otprToStationCode: TStringField
      FieldName = 'otprToStationCode'
      Size = 10
    end
    object ClientDataSet1otprToStationName: TStringField
      FieldName = 'otprToStationName'
      Size = 40
    end
    object ClientDataSet1otprExitStationCode: TStringField
      FieldName = 'otprExitStationCode'
      Size = 10
    end
    object ClientDataSet1otprExitStationName: TStringField
      FieldName = 'otprExitStationName'
      Size = 250
    end
    object ClientDataSet1otprExitSngStationCode: TStringField
      FieldName = 'otprExitSngStationCode'
      Size = 10
    end
    object ClientDataSet1otprExitSngStationName: TStringField
      FieldName = 'otprExitSngStationName'
      Size = 250
    end
    object ClientDataSet1otprRecipID: TStringField
      FieldName = 'otprRecipID'
      Size = 10
    end
    object ClientDataSet1otprRecipOKPO: TStringField
      FieldName = 'otprRecipOKPO'
      Size = 30
    end
    object ClientDataSet1otprRecipName: TStringField
      FieldName = 'otprRecipName'
      Size = 250
    end
    object ClientDataSet1otprCarOwnerTypeID: TStringField
      FieldName = 'otprCarOwnerTypeID'
      Size = 10
    end
    object ClientDataSet1otprCarOwnerTypeName: TStringField
      FieldName = 'otprCarOwnerTypeName'
      Size = 255
    end
    object ClientDataSet1otprCarContOwnerTypeID: TStringField
      FieldName = 'otprCarContOwnerTypeID'
      Size = 10
    end
    object ClientDataSet1otprCarContOwnerTypeName: TStringField
      FieldName = 'otprCarContOwnerTypeName'
      Size = 255
    end
    object ClientDataSet1otprSendKindID: TStringField
      FieldName = 'otprSendKindID'
      Size = 10
    end
    object ClientDataSet1otprSendKindName: TStringField
      FieldName = 'otprSendKindName'
      Size = 255
    end
    object ClientDataSet1otprCarTypeID: TStringField
      FieldName = 'otprCarTypeID'
      Size = 10
    end
    object ClientDataSet1otprCarTypeName: TStringField
      FieldName = 'otprCarTypeName'
      Size = 255
    end
    object ClientDataSet1otprCarTypeCODE: TStringField
      FieldName = 'otprCarTypeCODE'
      Size = 10
    end
    object ClientDataSet1otprCarTypeCODEName: TStringField
      FieldName = 'otprCarTypeCODEName'
      Size = 255
    end
    object ClientDataSet1otprFreightWeight: TStringField
      FieldName = 'otprFreightWeight'
      Size = 10
    end
    object ClientDataSet1otprCarCount: TStringField
      FieldName = 'otprCarCount'
      Size = 10
    end
    object ClientDataSet1otprAccompId: TStringField
      FieldName = 'otprAccompId'
      Size = 10
    end
    object ClientDataSet1otprAccompName: TStringField
      FieldName = 'otprAccompName'
      Size = 255
    end
    object ClientDataSet1otprGuideCount: TStringField
      FieldName = 'otprGuideCount'
      Size = 10
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
    ImageOptions.Images = cxImageList2
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 240
    Top = 168
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1279
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
          ItemName = 'dxBarButton2'
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
    object dxBarButton2: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1077#1083#1077#1075#1088#1072#1084#1084#1099
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1077#1083#1077#1075#1088#1072#1084#1084#1099
      Visible = ivAlways
      ImageIndex = 6
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton3Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end>
    end
    object dxBarButton4: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
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
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
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
        end>
    end
    object dxBarButton9: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton11Click
    end
    object dxBarButton12: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton12Click
    end
  end
  object cxImageList2: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 12517562
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
          20000000000000040000000000000000000000000000000000000000000F0000
          00170000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A000000170000000F0000001E0000
          00B7000000E71313028A1313028A1313028A1313028A1313028A1313028A1313
          028A1313028A1313028A1313028A000000E7000000B70000001E000000000000
          00DB646464FFFAFAEAFFF4F4E4FFF4F4E4FFF4F4E4FFF4F4E4FFF4F4E4FFF4F4
          E4FFF4F4E4FFF4F4E4FFFAFAEAFF646464FF000000DB00000000000000000101
          01CE626262FFF6F6E9FFECECDFFFECECDFFFECECDFFFECECDFFFECECDFFFECEC
          DFFFECECDFFFECECDFFFF6F6E9FF626262FF010101CE00000000000000000101
          01C9646464FFF8F8EFFFF1F1E7FFF1F1E7FFF1F1E7FFF1F1E7FFF1F1E7FFF1F1
          E7FFF1F1E7FFF1F1E7FFF8F8EFFF646464FF010101C900000000000000000101
          01C5676767FFFBFBF5FFF6F6F0FFF6F6F0FFF6F6F0FFF6F6F0FFF6F6F0FFF6F6
          F0FFF6F6F0FFF6F6F0FFFBFBF5FF676767FF010101C500000000000000000101
          01C16B6B6BFFFEFEFBFFFBFBF8FFFBFBF8FFFBFBF8FFFBFBF8FFFBFBF8FFFBFB
          F8FFFBFBF8FFFBFBF8FFFEFEFBFF6B6B6BFF010101C100000000000000000101
          01BE6E6E6EFFD9D9D9FFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFD9D9D9FF6E6E6EFF010101BE00000000000000000101
          01BB727272FF696969FF696969FF696969FF696969FF696969FF696969FF6969
          69FF696969FF696969FF696969FF727272FF010101BB00000000000000000101
          01B8757575FF393939FF393939FF393939FF393939FF393939FF393939FF3939
          39FF393939FF393939FF393939FF757575FF010101B800000000000000000101
          01B5797979FF434343FF5A5A5AFF434343FFCABCBCFFC6B8B8FFC6B8B8FFCEC0
          C0FFCEC0C0FFCABCBCFF434343FF797979FF010101B500000000000000000101
          01B27C7C7CFF505050FF646464FF505050FFCBC2C2FFC2B9B9FFC2B9B9FF5050
          50FF505050FFCBC2C2FF505050FF7C7C7CFF010101B200000000000000000101
          01B07E7E7EFF5C5C5CFF6E6E6EFF5C5C5CFFD1CCCCFFC8C3C3FFC8C3C3FF5C5C
          5CFF5C5C5CFFD1CCCCFF5C5C5CFF828282FF010101B000000000000000000101
          01AE848484FF656565FF7E7E7EFF656565FFD9D8D8FFD4D3D3FFD4D3D3FF6565
          65FF656565FFD9D8D8FF464646EB010101AE0000003E00000000000000000101
          0181010101AC010101AC010101AC010101AC2222226622222266222222662222
          22662222226622222266010101AC0000003C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
      end>
    UseOwnFont = False
    Left = 176
    Top = 304
    PixelsPerInch = 96
  end
  object dxBarPopupMenu2: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton8'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem2'
      end>
    UseOwnFont = False
    Left = 176
    Top = 360
    PixelsPerInch = 96
  end
end
