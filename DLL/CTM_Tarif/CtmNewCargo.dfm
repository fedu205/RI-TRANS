object fmCtmNewCargo: TfmCtmNewCargo
  Left = 0
  Top = 0
  Caption = #1043#1088#1091#1079
  ClientHeight = 513
  ClientWidth = 792
  Color = clBtnFace
  Constraints.MinHeight = 540
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 25
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 169
      Top = 2
      Align = alClient
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1075#1088#1091#1079' "'#1045#1058#1057#1053#1043'"'
      ParentFont = False
      Style.Font.Charset = RUSSIAN_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Times New Roman'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.LabelEffect = cxleExtrude
      AnchorY = 13
    end
    object cxGroupBox3: TcxGroupBox
      Left = 2
      Top = 2
      Align = alLeft
      Style.BorderStyle = ebsNone
      StyleDisabled.BorderStyle = ebsNone
      TabOrder = 1
      Height = 21
      Width = 167
      object cxRadioButton3: TcxRadioButton
        Left = 7
        Top = 3
        Width = 76
        Height = 17
        Caption = #1045#1058#1057#1053#1043
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = cxRadioButton3Click
        LookAndFeel.Kind = lfUltraFlat
      end
      object cxRadioButton4: TcxRadioButton
        Left = 76
        Top = 3
        Width = 63
        Height = 17
        Caption = #1043#1053#1043
        TabOrder = 1
        OnClick = cxRadioButton3Click
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 443
    Width = 792
    Height = 33
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      792
      33)
    object cxLabel7: TcxLabel
      Left = 2
      Top = 2
      Align = alLeft
      Anchors = [akTop, akBottom]
      AutoSize = False
      Caption = #1042#1077#1089' '#1075#1088#1091#1079#1072' '#1074' '#1086#1076#1085#1086#1084' '#1074#1072#1075#1086#1085#1077
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.LabelEffect = cxleExtrude
      Height = 29
      Width = 144
      AnchorX = 146
      AnchorY = 17
    end
    object cxSpinEdit4: TcxSpinEdit
      AlignWithMargins = True
      Left = 152
      Top = 5
      Anchors = [akLeft]
      Properties.Alignment.Horz = taLeftJustify
      Properties.ValueType = vtFloat
      Style.Shadow = False
      TabOrder = 1
      Width = 58
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 25
    Width = 792
    Height = 370
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ExplicitHeight = 366
    ClientRectBottom = 370
    ClientRectRight = 792
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'ETSNG'
      ImageIndex = 0
      ExplicitHeight = 342
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 792
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          792
          29)
        object cxTextEdit1: TcxTextEdit
          Left = 168
          Top = 2
          Margins.Top = 0
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Properties.OnChange = cxTextEdit1PropertiesChange
          Style.Shadow = False
          TabOrder = 0
          OnKeyDown = cxTextEdit1KeyDown
          Height = 21
          Width = 617
        end
        object cxGroupBox2: TcxGroupBox
          Left = 0
          Top = -7
          Style.BorderStyle = ebsNone
          StyleDisabled.BorderStyle = ebsNone
          TabOrder = 1
          Height = 34
          Width = 167
          object cxRadioButton2: TcxRadioButton
            Left = 75
            Top = 13
            Width = 76
            Height = 17
            Caption = #1053#1072#1079#1074#1072#1085#1080#1102
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
          end
          object cxRadioButton1: TcxRadioButton
            Left = 6
            Top = 12
            Width = 63
            Height = 17
            Caption = #1050#1086#1076#1091
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
          end
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 29
        Width = 792
        Height = 317
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        ExplicitTop = 25
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          OnDblClick = cxGrid1DBBandedTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_CargoETSNG
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGrid1DBBandedTableView1KOD
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
          object cxGrid1DBBandedTableView1KOD: TcxGridDBBandedColumn
            Caption = #1050#1086#1076' '#1045#1058#1057#1053#1043
            DataBinding.FieldName = 'KOD'
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1NAME: TcxGridDBBandedColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'NAME'
            Width = 416
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1CLASSN: TcxGridDBBandedColumn
            Caption = #1050#1083#1072#1089#1089' '#1075#1088#1091#1079#1072
            DataBinding.FieldName = 'CLASSN'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1MinNew: TcxGridDBBandedColumn
            Caption = #1052#1042#1053' '#1056#1046#1044
            DataBinding.FieldName = 'MinNew'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1KODGNG8: TcxGridDBBandedColumn
            Caption = #1050#1086#1076' '#1043#1053#1043' 2004'
            DataBinding.FieldName = 'KODGNG8'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1PID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PID'
            Width = 74
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1set_group: TcxGridDBBandedColumn
            DataBinding.FieldName = 'set_group'
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
    object cxTabSheet2: TcxTabSheet
      Caption = 'GNG'
      ImageIndex = 1
      ExplicitHeight = 342
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 792
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          792
          25)
        object cxTextEdit2: TcxTextEdit
          Left = 173
          Top = 2
          Margins.Top = 0
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Properties.OnChange = cxTextEdit2PropertiesChange
          Style.Shadow = False
          TabOrder = 0
          OnKeyDown = cxTextEdit2KeyDown
          Height = 21
          Width = 617
        end
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = -7
          Style.BorderStyle = ebsNone
          StyleDisabled.BorderStyle = ebsNone
          TabOrder = 1
          Height = 34
          Width = 167
          object cxRadioButton5: TcxRadioButton
            Left = 75
            Top = 13
            Width = 76
            Height = 17
            Caption = #1053#1072#1079#1074#1072#1085#1080#1102
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
          end
          object cxRadioButton6: TcxRadioButton
            Left = 6
            Top = 12
            Width = 63
            Height = 17
            Caption = #1050#1086#1076#1091
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
          end
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 25
        Width = 792
        Height = 321
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        ExplicitHeight = 317
        object cxGridDBBandedTableView1: TcxGridDBBandedTableView
          OnDblClick = BitBtn_OkClick
          OnKeyPress = cxGridDBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          OnCustomDrawCell = cxGridDBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGridDBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_CargoGNG
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGridDBBandedTableView1FilterOnChanged
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGridDBBandedTableView1KOD
            end>
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
          OnCustomDrawColumnHeader = cxGridDBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGridDBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGridDBBandedTableView1KOD: TcxGridDBBandedColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'KOD'
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1NAME: TcxGridDBBandedColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'NAME'
            Width = 446
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1classETT: TcxGridDBBandedColumn
            Caption = #1050#1083#1072#1089#1089' '#1045#1058#1058
            DataBinding.FieldName = 'classETT'
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1KODETSNG: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1087#1087#1072' '#1087#1086' '#1045#1058#1057#1053#1043
            DataBinding.FieldName = 'KODETSNG'
            Width = 91
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1PID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PID'
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGridDBBandedTableView1ETNPos: TcxGridDBBandedColumn
            Caption = #1055#1086#1079#1080#1094#1080#1103'('#1080') '#1045#1058#1057#1053#1043' '#1080#1079' '#1090#1077#1083#1077#1075#1088#1072#1084#1084
            DataBinding.FieldName = 'ETNPos'
            Width = 93
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBBandedTableView1
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 395
    Width = 792
    Height = 48
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    ExplicitTop = 394
    object Label1: TLabel
      Left = 10
      Top = 6
      Width = 146
      Height = 13
      Caption = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1075#1088#1091#1079#1086#1074' ('#1043#1053#1043')'
    end
    object cxTextEdit3: TcxTextEdit
      Left = 9
      Top = 22
      Margins.Top = 0
      AutoSize = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 21
      Width = 88
    end
    object cxTextEdit4: TcxTextEdit
      Left = 103
      Top = 22
      Margins.Top = 0
      AutoSize = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 21
      Width = 682
    end
  end
  object Panel18: TPanel
    Left = 0
    Top = 476
    Width = 792
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    DesignSize = (
      792
      37)
    object BitBtn_Ok: TBitBtn
      Left = 630
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = 'OK'
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000610B0000610B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E5005A1E1E00783C3C0096646400C8969600FFC8C800465F
        82005591B9006EB9D7008CD2E600B4E6F000D8E9EC0099A8AC00646F7100E2EF
        F100C56A31000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE180C
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEE2DFEEEEEEEEEEEEEEEEEEEEEEEEEE181212
        0CEEEEEEEEEEEEEEEEEEEEEEEEE28181DFEEEEEEEEEEEEEEEEEEEEEE18121212
        120CEEEEEEEEEEEEEEEEEEEEE281818181DFEEEEEEEEEEEEEEEEEE1812121212
        12120CEEEEEEEEEEEEEEEEE2818181818181DFEEEEEEEEEEEEEEEE1812120C18
        1212120CEEEEEEEEEEEEEEE28181DFE2818181DFEEEEEEEEEEEEEE18120CEEEE
        181212120CEEEEEEEEEEEEE281DFEEEEE2818181DFEEEEEEEEEEEE180CEEEEEE
        EE181212120CEEEEEEEEEEE2DFEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEEEE
        EEEE181212120CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEE
        EEEEEE181212120CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEE
        EEEEEEEE1812120CEEEEEEEEEEEEEEEEEEEEEEEEE28181DFEEEEEEEEEEEEEEEE
        EEEEEEEEEE18120CEEEEEEEEEEEEEEEEEEEEEEEEEEE281DFEEEEEEEEEEEEEEEE
        EEEEEEEEEEEE180CEEEEEEEEEEEEEEEEEEEEEEEEEEEEE2DFEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn_OkClick
    end
    object BitBtn_Cancel: TBitBtn
      Left = 711
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Cancel = True
      Caption = 'Cancel'
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000610B0000610B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E5005A1E1E00783C3C0096646400C8969600FFC8C800465F
        82005591B9006EB9D7008CD2E600B4E6F000D8E9EC0099A8AC00646F7100E2EF
        F100C56A31000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEB46C6C6CEE
        EEEEEEEEB46C6C6CEEEEEEE2DFDFDFEEEEEEEEEEE2DFDFDFEEEEEEB49090906C
        EEEEEEB49090906CEEEEEEE2818181DFEEEEEEE2818181DFEEEEEEEEB4909090
        6CEEB49090906CEEEEEEEEEEE2818181DFEEE2818181DFEEEEEEEEEEEEB49090
        906C9090906CEEEEEEEEEEEEEEE2818181DF818181DFEEEEEEEEEEEEEEEEB490
        909090906CEEEEEEEEEEEEEEEEEEE28181818181DFEEEEEEEEEEEEEEEEEEEEB4
        9090906CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEEEEB490
        909090906CEEEEEEEEEEEEEEEEEEE28181818181DFEEEEEEEEEEEEEEEEB49090
        906C9090906CEEEEEEEEEEEEEEE2818181DF818181DFEEEEEEEEEEEEB4909090
        6CEEB49090906CEEEEEEEEEEE2818181DFEEE2818181DFEEEEEEEEB49090906C
        EEEEEEB49090906CEEEEEEE2818181DFEEEEEEE2818181DFEEEEEEB4B4B4B4EE
        EEEEEEEEB4B4B4B4EEEEEEE2E2E2E2EEEEEEEEEEE2E2E2E2EEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 1
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
    StorageName = '\Software\LIS1\CtmCargo'
    StorageType = stRegistry
    Left = 200
    Top = 176
  end
  object Query_CargoETSNG: TADOQuery
    Connection = fmCtmNewMain.CTMConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'date_from_to'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT '#9'DISTINCT substring(ref_book_key1, 1, 3) sub1 INTO #etsng' +
        ' FROM CTM_REFBOOK2 WHERE ref_book_name = '#39'ETSNG'#39' and substring(r' +
        'ef_book_key1, 4, 2) <> '#39'00'#39
      ''
      ''
      'SELECT '#9
      'ref_book_xml.value('#39'(/ROW/@KOD)[1]'#39','#39'varchar(max)'#39') as KOD,'
      'ref_book_xml.value('#39'(/ROW/@NAME)[1]'#39','#39'varchar(max)'#39') as NAME,'
      
        'ref_book_xml.value('#39'(/ROW/@CLASSN)[1]'#39','#39'varchar(max)'#39') as CLASSN' +
        ','
      
        'ref_book_xml.value('#39'(/ROW/@MinNew)[1]'#39','#39'varchar(max)'#39') as MinNew' +
        ','
      
        'ref_book_xml.value('#39'(/ROW/@KODGNG8)[1]'#39','#39'varchar(max)'#39') as KODGN' +
        'G8,'
      'ref_book_xml.value('#39'(/ROW/@PID)[1]'#39','#39'varchar(max)'#39') as PID,'
      
        'case when substring(ref_book_key1, 4, 2) = '#39'00'#39' then case when e' +
        'xists(SELECT 1 FROM #etsng WHERE #etsng.sub1 = substring(ref_boo' +
        'k_key1, 1, 3)) then 1 else 0 end else 0 end set_group'
      'FROM'#9'CTM_REFBOOK2 '
      'WHERE'#9
      'ref_book_name = '#39'ETSNG'#39
      
        'AND :date_from_to between ref_book_xml.value('#39'(/ROW/@FromDate)[1' +
        ']'#39','#39'datetime'#39') and ref_book_xml.value('#39'(/ROW/@ToDate)[1]'#39','#39'datet' +
        'ime'#39')'
      ''
      'DROP TABLE #etsng')
    Left = 336
    Top = 224
  end
  object DS_CargoETSNG: TDataSource
    DataSet = Query_CargoETSNG
    Left = 336
    Top = 168
  end
  object DS_CargoGNG: TDataSource
    DataSet = Query_CargoGNG
    Left = 496
    Top = 168
  end
  object Query_CargoGNG: TADOQuery
    Connection = fmCtmNewMain.CTMConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'#9
      'ref_book_xml.value('#39'(/ROW/@KOD)[1]'#39','#39'varchar(max)'#39') as KOD,'
      'ref_book_xml.value('#39'(/ROW/@NAME)[1]'#39','#39'varchar(max)'#39') as NAME,'
      
        'ref_book_xml.value('#39'(/ROW/@classETT)[1]'#39','#39'varchar(max)'#39') as clas' +
        'sETT,'
      
        'ref_book_xml.value('#39'(/ROW/@KODETSNG)[1]'#39','#39'varchar(max)'#39') as KODE' +
        'TSNG,'
      'ref_book_xml.value('#39'(/ROW/@PID)[1]'#39','#39'varchar(max)'#39') as PID,'
      'ref_book_xml.value('#39'(/ROW/@ETNPos)[1]'#39','#39'varchar(max)'#39') as ETNPos'
      'FROM'#9'CTM_REFBOOK2 '
      'WHERE'#9'ref_book_name = '#39'GNG2007'#39)
    Left = 496
    Top = 224
  end
  object cxPropertiesStore2: TcxPropertiesStore
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
    StorageName = '\Software\LIS1\CtmNewCargo'
    StorageType = stRegistry
    Left = 399
    Top = 114
  end
end
