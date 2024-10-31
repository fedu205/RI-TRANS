object fmCtmNewCars: TfmCtmNewCars
  Left = 0
  Top = 0
  Caption = #1042#1080#1076' '#1087#1086#1076#1074#1080#1078#1085#1086#1075#1086' '#1089#1086#1089#1090#1072#1074#1072
  ClientHeight = 611
  ClientWidth = 692
  Color = clBtnFace
  Constraints.MinHeight = 640
  Constraints.MinWidth = 700
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 315
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 762
    object cxGrid1: TcxGrid
      Left = 2
      Top = 2
      Width = 688
      Height = 311
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.ScrollbarMode = sbmClassic
      ExplicitWidth = 758
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        OnDblClick = BitBtn_OkClick
        OnKeyPress = cxGrid1DBBandedTableView1KeyPress
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
        OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
        OnFocusedRecordChanged = cxGrid1DBBandedTableView1FocusedRecordChanged
        DataController.DataSource = DS_Cars
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cxGrid1DBBandedTableView1CarID
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
        object cxGrid1DBBandedTableView1CarID: TcxGridDBBandedColumn
          Caption = #8470' '#1079#1072#1087#1080#1089#1080
          DataBinding.FieldName = 'CarID'
          Width = 56
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Name: TcxGridDBBandedColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'Name'
          Width = 252
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Model: TcxGridDBBandedColumn
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          DataBinding.FieldName = 'Model'
          Width = 85
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1GP: TcxGridDBBandedColumn
          Caption = #1043#1088#1091#1079#1086#1087#1086#1076#1100#1077#1084#1085#1086#1089#1090#1100
          DataBinding.FieldName = 'GP'
          Width = 117
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Volume: TcxGridDBBandedColumn
          Caption = #1054#1073#1100#1077#1084
          DataBinding.FieldName = 'Volume'
          Width = 54
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Axis: TcxGridDBBandedColumn
          Caption = #1054#1089#1080
          DataBinding.FieldName = 'Axis'
          Width = 41
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1TareW: TcxGridDBBandedColumn
          Caption = #1052#1072#1089#1089#1072' '#1090#1072#1088#1099
          DataBinding.FieldName = 'TareW'
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1CarType: TcxGridDBBandedColumn
          Caption = #1056#1086#1076' '#1074#1072#1075#1086#1085#1072
          DataBinding.FieldName = 'CarType'
          Width = 62
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1GROSS: TcxGridDBBandedColumn
          Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086' '#1082#1086#1085#1090'.'
          DataBinding.FieldName = 'GROSS'
          Width = 109
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Length: TcxGridDBBandedColumn
          Caption = #1044#1083#1080#1085#1072' '#1087#1086' '#1086#1089#1103#1084' '#1072#1074#1090#1086#1089#1094#1077#1087#1086#1082
          DataBinding.FieldName = 'Length'
          Width = 157
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
  object Panel5: TPanel
    Left = 0
    Top = 522
    Width = 692
    Height = 52
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    Visible = False
    ExplicitTop = 524
    ExplicitWidth = 762
    object cxGroupBox3: TcxGroupBox
      Left = 27
      Top = 2
      Align = alLeft
      Enabled = False
      Style.BorderStyle = ebsNone
      StyleDisabled.BorderStyle = ebsNone
      TabOrder = 0
      Height = 48
      Width = 141
      object cxRadioButton3: TcxRadioButton
        Left = 23
        Top = 3
        Width = 106
        Height = 17
        Caption = #1048#1079'-'#1087#1086#1076' '#1074#1099#1075#1088#1091#1079#1082#1080
        Checked = True
        Enabled = False
        TabOrder = 0
        TabStop = True
        LookAndFeel.Kind = lfUltraFlat
      end
      object cxRadioButton4: TcxRadioButton
        Left = 23
        Top = 26
        Width = 106
        Height = 17
        Caption = #1055#1086#1076' '#1087#1086#1075#1088#1091#1079#1082#1091
        Enabled = False
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 2
      Width = 25
      Height = 48
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object cxCheckBox4: TcxCheckBox
        Left = 0
        Top = 0
        Align = alClient
        ParentShowHint = False
        Properties.OnEditValueChanged = cxCheckBox4PropertiesEditValueChanged
        ShowHint = False
        Style.Shadow = False
        TabOrder = 0
        Visible = False
      end
    end
    object cxLabel8: TcxLabel
      Left = 174
      Top = 5
      Caption = #1050#1086#1076' '#1045#1058#1057#1053#1043
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.LabelEffect = cxleExtrude
      AnchorX = 233
      AnchorY = 14
    end
    object cxLabel9: TcxLabel
      Left = 174
      Top = 27
      Caption = #1050#1086#1076' '#1043#1053#1043
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.LabelEffect = cxleExtrude
      AnchorX = 220
      AnchorY = 36
    end
    object cxLabel11: TcxLabel
      AlignWithMargins = True
      Left = 239
      Top = 27
      Cursor = crHandPoint
      Caption = '00000000'
      DragCursor = crHandPoint
      DragKind = dkDock
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.LabelEffect = cxleExtrude
      OnClick = cxLabel10Click
      AnchorX = 299
      AnchorY = 36
    end
    object cxLabel10: TcxLabel
      Left = 239
      Top = 4
      Cursor = crHandPoint
      Caption = '000000'
      DragCursor = crHandPoint
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.LabelEffect = cxleExtrude
      OnClick = cxLabel10Click
      AnchorX = 285
      AnchorY = 13
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 315
    Width = 692
    Height = 43
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    ExplicitWidth = 762
    object cxRadioGroup2: TcxRadioGroup
      Left = 2
      Top = 2
      Align = alClient
      Caption = #1055#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090#1100
      ParentFont = False
      Properties.Columns = 4
      Properties.Items = <
        item
          Caption = #1054#1073#1097#1077#1075#1086' '#1087#1072#1088#1082#1072
          Tag = 1
        end
        item
          Caption = #1055#1088#1080#1074#1083#1077#1095#1077#1085#1085#1099#1081' '#1054#1040#1054' "'#1056#1046#1044'"'
          Tag = 7
        end
        item
          Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1099#1081
          Tag = 2
        end
        item
          Caption = #1040#1088#1077#1085#1076#1086#1074#1072#1085#1085#1099#1081
          Tag = 3
        end>
      ItemIndex = 0
      Style.BorderStyle = ebsNone
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.LookAndFeel.Kind = lfOffice11
      Style.Shadow = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      TabOrder = 0
      ExplicitWidth = 758
      Height = 39
      Width = 688
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 358
    Width = 692
    Height = 79
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    ExplicitTop = 357
    object Label1: TLabel
      Left = 16
      Top = 11
      Width = 100
      Height = 13
      Caption = #1050#1086#1083'-'#1074#1086' '#1055#1057'............'
    end
    object Label2: TLabel
      Left = 16
      Top = 34
      Width = 101
      Height = 13
      Caption = #1050#1086#1083'-'#1074#1086' '#1086#1089#1077#1081'..........'
    end
    object Label3: TLabel
      Left = 236
      Top = 11
      Width = 141
      Height = 13
      Caption = #1042#1072#1075#1086#1085#1086#1074' '#1082' '#1086#1090#1087#1088#1072#1074#1082#1077'..........'
    end
    object Label4: TLabel
      Left = 236
      Top = 34
      Width = 132
      Height = 13
      Caption = #1043#1088#1091#1079#1086#1087#1086#1076#1098#1077#1084#1085#1086#1089#1090#1100'.........'
    end
    object Label5: TLabel
      Left = 236
      Top = 58
      Width = 123
      Height = 13
      Caption = #1052#1072#1089#1089#1072' '#1090#1072#1088#1099'................'
    end
    object cxSpinEdit1: TcxSpinEdit
      AlignWithMargins = True
      Left = 105
      Top = 5
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Coffee'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Coffee'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Coffee'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Coffee'
      TabOrder = 0
      Value = 1
      Width = 78
    end
    object cxSpinEdit3: TcxSpinEdit
      AlignWithMargins = True
      Left = 105
      Top = 28
      Properties.Alignment.Horz = taLeftJustify
      Properties.Increment = 2.000000000000000000
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Coffee'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Coffee'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Coffee'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Coffee'
      TabOrder = 1
      Width = 78
    end
    object cxSpinEdit2: TcxSpinEdit
      AlignWithMargins = True
      Left = 349
      Top = 5
      Properties.Alignment.Horz = taLeftJustify
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Coffee'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Coffee'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Coffee'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Coffee'
      TabOrder = 2
      Value = 1
      Width = 74
    end
    object cxSpinEdit4: TcxSpinEdit
      AlignWithMargins = True
      Left = 349
      Top = 28
      Properties.Alignment.Horz = taLeftJustify
      Properties.ValueType = vtFloat
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Coffee'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Coffee'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Coffee'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Coffee'
      TabOrder = 3
      Width = 74
    end
    object cxSpinEdit5: TcxSpinEdit
      AlignWithMargins = True
      Left = 349
      Top = 52
      Properties.Alignment.Horz = taLeftJustify
      Properties.ValueType = vtFloat
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Coffee'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Coffee'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Coffee'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Coffee'
      TabOrder = 4
      Width = 74
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 437
    Width = 692
    Height = 85
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    ExplicitTop = 439
    ExplicitWidth = 762
    object Label6: TLabel
      Left = 54
      Top = 9
      Width = 110
      Height = 13
      Caption = #1044#1086#1088#1086#1075#1072' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1094#1072
    end
    object Label7: TLabel
      Left = 14
      Top = 34
      Width = 150
      Height = 13
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1089#1087#1077#1094'. '#1082#1086#1085#1090#1077#1081#1085#1077#1088#1072
    end
    object Label8: TLabel
      Left = 35
      Top = 59
      Width = 129
      Height = 13
      Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082' '#1082#1086#1085#1090#1077#1081#1085#1077#1088#1072
    end
    object cxLookupComboBox1: TcxLookupComboBox
      AlignWithMargins = True
      Left = 168
      Top = 5
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'LandId'
      Properties.ListColumns = <
        item
          Caption = #1057#1090#1088#1072#1085#1072
          FieldName = 'Name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_LandOwn
      Properties.MaxLength = 0
      Style.BorderStyle = ebsUltraFlat
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Coffee'
      Style.Shadow = False
      Style.ButtonStyle = btsUltraFlat
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Coffee'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Coffee'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Coffee'
      TabOrder = 0
      Width = 255
    end
    object cxLookupComboBox3: TcxLookupComboBox
      AlignWithMargins = True
      Left = 168
      Top = 55
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'LandId'
      Properties.ListColumns = <
        item
          FieldName = 'Lname'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.MaxLength = 0
      Style.BorderStyle = ebsUltraFlat
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Coffee'
      Style.Shadow = False
      Style.ButtonStyle = btsUltraFlat
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Coffee'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Coffee'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Coffee'
      TabOrder = 1
      Width = 255
    end
    object cxLookupComboBox2: TcxLookupComboBox
      AlignWithMargins = True
      Left = 168
      Top = 30
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'CarID'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_SPCont
      Properties.MaxLength = 0
      Style.BorderStyle = ebsUltraFlat
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Coffee'
      Style.Shadow = False
      Style.ButtonStyle = btsUltraFlat
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Coffee'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Coffee'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Coffee'
      TabOrder = 2
      Width = 255
    end
  end
  object Panel18: TPanel
    Left = 0
    Top = 574
    Width = 692
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 5
    ExplicitTop = 576
    ExplicitWidth = 762
    DesignSize = (
      692
      37)
    object BitBtn_Ok: TBitBtn
      Left = 530
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
      ExplicitLeft = 600
    end
    object BitBtn_Cancel: TBitBtn
      Left = 611
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
      ExplicitLeft = 681
    end
  end
  object DS_Cars: TDataSource
    DataSet = Query_Cars
    Left = 336
    Top = 168
  end
  object Query_Cars: TADOQuery
    Connection = ADOConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '#9
      'ref_book_xml.value('#39'(/ROW/@CarID)[1]'#39','#39'int'#39') as CarID,'
      'ref_book_xml.value('#39'(/ROW/@Name)[1]'#39','#39'varchar(max)'#39') as Name,'
      'ref_book_xml.value('#39'(/ROW/@Model)[1]'#39','#39'varchar(max)'#39') as Model,'
      'ref_book_xml.value('#39'(/ROW/@GP)[1]'#39','#39'varchar(max)'#39') as GP,'
      
        'ref_book_xml.value('#39'(/ROW/@Volume)[1]'#39','#39'varchar(max)'#39') as Volume' +
        ','
      'ref_book_xml.value('#39'(/ROW/@Axis)[1]'#39','#39'varchar(max)'#39') as Axis,'
      'ref_book_xml.value('#39'(/ROW/@TareW)[1]'#39','#39'varchar(max)'#39') as TareW,'
      
        'ref_book_xml.value('#39'(/ROW/@CarType)[1]'#39','#39'varchar(max)'#39') as CarTy' +
        'pe,'
      'ref_book_xml.value('#39'(/ROW/@GROSS)[1]'#39','#39'varchar(max)'#39') as GROSS,'
      'ref_book_xml.value('#39'(/ROW/@Length)[1]'#39','#39'varchar(max)'#39') as Length'
      'FROM'#9'CTM_REFBOOK2 '
      'WHERE'#9'ref_book_name = '#39'cars'#39)
    Left = 336
    Top = 200
  end
  object Query_SPCont: TADOQuery
    Connection = ADOConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT -9 as CarID, '#39#1085#1077' '#1089#1086#1074#1087#1072#1076#1072#1102#1090' '#1089' '#1091#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1099#1084#1080#39' as Name'
      'UNION'
      'SELECT'#9
      'ref_book_xml.value('#39'(/ROW/@CarID)[1]'#39','#39'int'#39') as CarID,'
      'ref_book_xml.value('#39'(/ROW/@Name)[1]'#39','#39'varchar(max)'#39') as Name'
      'FROM'#9'CTM_REFBOOK2 '
      'WHERE'#9'ref_book_name = '#39'spcont'#39)
    Left = 704
    Top = 464
  end
  object DS_SPCont: TDataSource
    DataSet = Query_SPCont
    Left = 688
    Top = 456
  end
  object Query_LandOwn: TADOQuery
    Connection = ADOConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ref_book_key1 as LandId, cast(ref_book_key2 as varchar(20' +
        '0)) as Name'
      'FROM CTM_REFBOOK2 WHERE ref_book_name = '#39'LandOwn'#39)
    Left = 200
    Top = 264
  end
  object DS_LandOwn: TDataSource
    DataSet = Query_LandOwn
    Left = 184
    Top = 256
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
    StorageName = '\Software\LIS1\CtmNewCar'
    StorageType = stRegistry
    Left = 487
    Top = 114
  end
  object ADOConnect: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Left = 136
    Top = 144
  end
end
