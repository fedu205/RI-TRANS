object fmCtmNewMain: TfmCtmNewMain
  Left = 0
  Top = 0
  Caption = #1056#1072#1089#1095#1105#1090' '#1090#1072#1088#1080#1092#1072' '#1074' Rail-'#1057#1077#1088#1074#1077#1088
  ClientHeight = 1224
  ClientWidth = 1833
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 120
  TextHeight = 17
  object GridPanel1: TGridPanel
    Left = 0
    Top = 190
    Width = 1833
    Height = 90
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 125.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Panel3
        Row = 0
      end
      item
        Column = 2
        Control = Panel2
        Row = 0
      end
      item
        Column = 1
        Control = Panel17
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 0
    ExplicitTop = 193
    ExplicitWidth = 1463
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 852
      Height = 86
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 0
      OnClick = Panel3Click
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 666
      ExplicitHeight = 85
      DesignSize = (
        852
        86)
      object cxLabel2: TcxLabel
        Left = 14
        Top = 1
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1057#1090#1072#1085#1094#1080#1103' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -14
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = Panel3Click
        ExplicitWidth = 151
        ExplicitHeight = 27
      end
      object cxLabel3: TcxLabel
        Left = 186
        Top = 1
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        AutoSize = False
        Caption = '000000'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = Panel3Click
        Height = 23
        Width = 63
      end
      object cxLabel4: TcxLabel
        Left = 256
        Top = 1
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1090#1072#1085#1094#1080#1080
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = Panel3Click
      end
      object cxLabel5: TcxLabel
        Left = 123
        Top = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1057#1090#1088#1072#1085#1072':'
        Transparent = True
        OnClick = Panel3Click
        ExplicitWidth = 151
        ExplicitHeight = 26
      end
      object cxLabel6: TcxLabel
        Left = 186
        Top = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1057#1090#1088#1072#1085#1072
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -14
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = Panel3Click
        ExplicitWidth = 152
        ExplicitHeight = 26
      end
      object cxLabel7: TcxLabel
        Left = 123
        Top = 38
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1044#1086#1088#1086#1075#1072':'
        Transparent = True
        OnClick = Panel3Click
        ExplicitWidth = 151
        ExplicitHeight = 26
      end
      object cxLabel8: TcxLabel
        Left = 186
        Top = 38
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1044#1086#1088#1086#1075#1072' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1094#1072
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -14
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = Panel3Click
        ExplicitWidth = 152
        ExplicitHeight = 26
      end
      object cxLabel21: TcxLabel
        Left = 36
        Top = 56
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1057#1090#1088#1072#1085#1072' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103':'
        Transparent = True
        OnClick = Panel3Click
        ExplicitWidth = 152
        ExplicitHeight = 27
      end
      object cxLabel22: TcxLabel
        Left = 186
        Top = 56
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1057#1090#1088#1072#1085#1072' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1103
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -14
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = Panel3Click
        ExplicitWidth = 152
        ExplicitHeight = 27
      end
    end
    object Panel2: TPanel
      Left = 979
      Top = 2
      Width = 852
      Height = 86
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 1
      OnClick = Panel2Click
      ExplicitLeft = 794
      ExplicitTop = 3
      ExplicitWidth = 666
      ExplicitHeight = 85
      DesignSize = (
        852
        86)
      object cxLabel11: TcxLabel
        Left = 35
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1057#1090#1072#1085#1094#1080#1103' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1103' '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -14
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = Panel2Click
        ExplicitWidth = 151
        ExplicitHeight = 26
      end
      object cxLabel12: TcxLabel
        Left = 208
        Top = 1
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '000000'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = Panel2Click
        ExplicitWidth = 151
        ExplicitHeight = 27
      end
      object cxLabel13: TcxLabel
        Left = 278
        Top = 1
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1090#1072#1085#1094#1080#1080
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = Panel2Click
        ExplicitWidth = 151
        ExplicitHeight = 27
      end
      object cxLabel14: TcxLabel
        Left = 140
        Top = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1057#1090#1088#1072#1085#1072':'
        Transparent = True
        OnClick = Panel2Click
        ExplicitWidth = 151
        ExplicitHeight = 26
      end
      object cxLabel15: TcxLabel
        Left = 208
        Top = 19
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1057#1090#1088#1072#1085#1072
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -14
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = Panel2Click
        ExplicitWidth = 151
        ExplicitHeight = 26
      end
      object cxLabel16: TcxLabel
        Left = 140
        Top = 38
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1044#1086#1088#1086#1075#1072':'
        Transparent = True
        OnClick = Panel2Click
        ExplicitWidth = 151
        ExplicitHeight = 26
      end
      object cxLabel17: TcxLabel
        Left = 208
        Top = 38
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1044#1086#1088#1086#1075#1072
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -14
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = Panel2Click
        ExplicitWidth = 151
        ExplicitHeight = 26
      end
      object cxLabel23: TcxLabel
        Left = 63
        Top = 56
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1057#1090#1088#1072#1085#1072' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1103':'
        Transparent = True
        OnClick = Panel2Click
        ExplicitWidth = 151
        ExplicitHeight = 27
      end
      object cxLabel24: TcxLabel
        Left = 208
        Top = 56
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1057#1090#1088#1072#1085#1072' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1103
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -14
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
        OnClick = Panel2Click
        ExplicitWidth = 151
        ExplicitHeight = 27
      end
    end
    object Panel17: TPanel
      Left = 854
      Top = 2
      Width = 125
      Height = 86
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      ExplicitLeft = 669
      ExplicitTop = 3
      ExplicitHeight = 85
      object cxLabel25: TcxLabel
        Left = 24
        Top = 5
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077
        Transparent = True
      end
      object cxLabel_distanc: TcxLabel
        Left = 8
        Top = 34
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -14
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taCenter
        Height = 21
        Width = 110
        AnchorX = 63
      end
    end
  end
  object GridPanel2: TGridPanel
    Left = 0
    Top = 50
    Width = 1833
    Height = 35
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ColumnCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 106.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 125.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 75.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 75.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 131.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 250.000000000000000000
      end
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 1
        Control = cxDateEdit1
        Row = 0
      end
      item
        Column = 0
        Control = cxLabel1
        Row = 0
      end
      item
        Column = 7
        Control = ToolBar1
        Row = 0
      end
      item
        Column = 2
        Control = cxLabel19
        Row = 0
      end
      item
        Column = 3
        Control = cxButton2
        Row = 0
      end
      item
        Column = 4
        Control = cxLabel20
        Row = 0
      end
      item
        Column = 5
        Control = cxSpinEdit4
        Row = 0
      end
      item
        Column = 6
        Control = cxComboBox2
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 2
    ExplicitTop = 53
    ExplicitWidth = 1463
    DesignSize = (
      1833
      35)
    object cxDateEdit1: TcxDateEdit
      Left = 108
      Top = 3
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akLeft]
      AutoSize = False
      EditValue = 36942d
      Properties.InputKind = ikRegExpr
      Properties.ShowTime = False
      Properties.OnEditValueChanged = cxDateEdit1PropertiesEditValueChanged
      Style.Shadow = False
      TabOrder = 0
      Height = 28
      Width = 124
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 7
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akRight]
      Caption = #1044#1072#1090#1072' '#1088#1072#1089#1095#1077#1090#1072
      ExplicitLeft = 34
      ExplicitTop = 9
    end
    object ToolBar1: TToolBar
      Left = 714
      Top = 2
      Width = 723
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      ButtonHeight = 28
      ButtonWidth = 29
      Caption = 'ToolBar1'
      TabOrder = 2
      ExplicitLeft = 715
      ExplicitTop = 3
      ExplicitHeight = 30
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Width = 18
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'ToolButton1'
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 18
        Top = 0
        Hint = #1056#1072#1089#1095#1080#1090#1072#1090#1100' '#1089#1090#1072#1074#1082#1091
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'ToolButton5'
        ImageIndex = 5
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
      object ToolButton8: TToolButton
        Left = 47
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = #1042#1099#1079#1086#1074' '#1082#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1072
        ImageIndex = 6
      end
    end
    object cxLabel19: TcxLabel
      Left = 243
      Top = 7
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akRight]
      Caption = #1050#1091#1088#1089#1099' '#1074#1072#1083#1102#1090
      ExplicitLeft = 261
      ExplicitTop = 9
    end
    object cxButton2: TcxButton
      Left = 340
      Top = 5
      Width = 86
      Height = 24
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = #1057#1073#1086#1088#1099
      OptionsImage.Spacing = 5
      TabOrder = 4
      OnClick = cxButton2Click
    end
    object cxLabel20: TcxLabel
      Left = 433
      Top = 7
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akLeft]
      Caption = #1088#1091#1073'. '#1079#1072' 1$'
      ExplicitTop = 9
    end
    object cxSpinEdit4: TcxSpinEdit
      Left = 508
      Top = 3
      Hint = #1042#1077#1089' '#1075#1088#1091#1079#1072' '#1074' '#1086#1076#1085#1086#1084' '#1074#1072#1075#1086#1085#1077' '#1074' '#1090'.'
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akLeft, akTop, akBottom]
      AutoSize = False
      ParentShowHint = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.ValueType = vtFloat
      ShowHint = True
      Style.Shadow = False
      TabOrder = 6
      Height = 28
      Width = 67
    end
    object cxComboBox2: TcxComboBox
      Left = 583
      Top = 3
      Hint = #1042#1099#1073#1086#1088' '#1074#1072#1083#1102#1090#1099' '#1076#1083#1103' '#1088#1072#1089#1095#1077#1090#1072
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akLeft, akTop, akBottom]
      AutoSize = False
      ParentShowHint = False
      Properties.ButtonGlyph.SourceDPI = 96
      Properties.ButtonGlyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        00000000000074120000741200000000000000000000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000808080FF000000FF000000FF000000FF8080
        80FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080FF0000
        00FF000000FF000000FF808080FF000000FFFFFFFFFF00FFFFFF00FFFFFF0000
        00FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FFFFFF
        FFFF00FFFFFF00FFFFFF000000FF808080FF000000FF000000FF000000FF8080
        80FF000000FF808080FFC0C0C000C0C0C000C0C0C000C0C0C000808080FF0000
        00FF000000FF000000FF808080FFC0C0C000C0C0C000000000FFC0C0C000C0C0
        C000C0C0C000000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FF008080FF0080
        80FF008080FF000000FFC0C0C000C0C0C000C0C0C000000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FFC0C0C000C0C0
        C000C0C0C000000000FF000000FF000000FFC0C0C000000000FF008000FF0080
        00FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FF008080FF0080
        80FF008080FF000000FF008000FF000000FFC0C0C000000000FF008000FFC0C0
        C000C0C0C000C0C0C000C0C0C000000000FF000000FF000000FFFFFFFFFF00FF
        FFFF00FFFFFF000000FF008000FF000000FFC0C0C000000000FFC0C0C000C0C0
        C000C0C0C000C0C0C000000000FFC0C0C000C0C0C000000000FF000000FF0000
        00FF000000FFC0C0C000C0C0C000000000FFC0C0C000000000FFC0C0C000C0C0
        C000C0C0C000C0C0C000000000FFC0C0C000C0C0C000C0C0C000000000FFC0C0
        C000C0C0C000C0C0C000C0C0C000000000FFC0C0C000000000FF008000FFC0C0
        C000C0C0C000C0C0C000C0C0C000000000FF000000FF000000FFC0C0C000C0C0
        C000C0C0C000C0C0C000008000FF000000FFC0C0C000000000FF008000FF0080
        00FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000008000FF008000FF000000FFC0C0C000000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FFC0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediateUpdateText = True
      Properties.Items.Strings = (
        #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
        'USD'
        'EUR'
        'RUB'
        'CHF')
      Properties.OnChange = cxComboBox2PropertiesChange
      ShowHint = True
      Style.Shadow = False
      TabOrder = 7
      Text = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      Height = 28
      Width = 131
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 280
    Width = 1833
    Height = 7
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    AlignSplitter = salTop
    DragThreshold = 4
    PositionAfterOpen = 38
    MinSize = 83
    Control = GridPanel1
    Color = 8421631
    ParentColor = False
    ExplicitTop = 283
    ExplicitWidth = 1463
  end
  object Panel18: TPanel
    Left = 0
    Top = 1178
    Width = 1833
    Height = 46
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    Visible = False
    ExplicitTop = 924
    ExplicitWidth = 1463
    DesignSize = (
      1833
      46)
    object BitBtn_Ok: TBitBtn
      Left = 1630
      Top = 8
      Width = 94
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      ExplicitLeft = 1260
    end
    object BitBtn_Cancel: TBitBtn
      Left = 1731
      Top = 8
      Width = 94
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      ExplicitLeft = 1361
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 287
    Width = 1833
    Height = 891
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ExplicitTop = 290
    ExplicitWidth = 1463
    ExplicitHeight = 634
    ClientRectBottom = 891
    ClientRectRight = 1833
    ClientRectTop = 0
    object cxTabSheet1: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1054#1089#1085#1086#1074#1085#1086#1081' '#1088#1072#1089#1095#1077#1090
      ImageIndex = 0
      ExplicitWidth = 1463
      ExplicitHeight = 634
      object cxSplitter3: TcxSplitter
        Left = 361
        Top = 0
        Width = 8
        Height = 891
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DragThreshold = 4
        PositionAfterOpen = 38
        MinSize = 250
        ResizeUpdate = True
        Control = cxPageControl2
        Color = 8421631
        ParentColor = False
        ExplicitLeft = 288
        ExplicitHeight = 634
      end
      object Panel14: TPanel
        Left = 369
        Top = 0
        Width = 1464
        Height = 891
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        ExplicitWidth = 1094
        ExplicitHeight = 634
        object Panel1: TPanel
          Left = 2
          Top = 2
          Width = 1460
          Height = 887
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 3
          ExplicitTop = 3
          ExplicitWidth = 1088
          ExplicitHeight = 628
          object Splitter1: TSplitter
            Left = 1
            Top = 154
            Width = 1458
            Height = 2
            Cursor = crVSplit
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Color = 8421631
            Constraints.MaxHeight = 3
            MinSize = 100
            ParentColor = False
            ExplicitWidth = 1087
          end
          object cxGrid1: TcxGrid
            Left = 1
            Top = 1
            Width = 1458
            Height = 153
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.ScrollbarMode = sbmClassic
            ExplicitWidth = 1087
            object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
              PopupMenu = dxBarPopupMenu1
              OnKeyPress = cxGrid1DBBandedTableView1KeyPress
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Filter.Enabled = False
              Navigator.Buttons.Filter.Visible = False
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
              OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
              DataController.DataSource = DS_Result
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
              DataController.Filter.Active = True
              DataController.KeyFieldNames = 'id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0'
                  Kind = skSum
                  Column = cxGrid1DBBandedTableView1Distance
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid1DBBandedTableView1PerT
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid1DBBandedTableView1TotalPrice
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGrid1DBBandedTableView1PerT_PP
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.Summary.Options = [soMultipleSelectedRecords]
              FilterRow.SeparatorWidth = 8
              FixedDataRows.SeparatorWidth = 8
              NewItemRow.SeparatorWidth = 8
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.NavigatorOffset = 63
              OptionsView.ShowEditButtons = gsebAlways
              OptionsView.FixedColumnSeparatorWidth = 3
              OptionsView.Footer = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.HeaderHeight = 43
              OptionsView.IndicatorWidth = 15
              OptionsView.BandHeaders = False
              OptionsView.FixedBandSeparatorWidth = 3
              Preview.LeftIndent = 25
              Preview.RightIndent = 6
              RowLayout.MinValueWidth = 100
              Styles.Header = cxStyle3
              OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
              OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGrid1DBBandedTableView1LandName: TcxGridDBBandedColumn
                Caption = #1057#1090#1088#1072#1085#1072
                DataBinding.FieldName = 'LandName'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 75
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1Direction: TcxGridDBBandedColumn
                Caption = #1053#1072#1087#1088'.'
                DataBinding.FieldName = 'Direction'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 51
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid1DBBandedTableView1Direction_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Direction_id'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid1DBBandedTableView1LandId: TcxGridDBBandedColumn
                DataBinding.FieldName = 'LandId'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid1DBBandedTableView1CalcDsc: TcxGridDBBandedColumn
                Caption = #1042#1048#1044
                DataBinding.FieldName = 'CalcDsc'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 56
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1BasePrice: TcxGridDBBandedColumn
                Caption = #1055#1088#1086#1074'. '#1087#1083'.'
                DataBinding.FieldName = 'BasePrice'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 105
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1TotalPrice: TcxGridDBBandedColumn
                Caption = #1048#1090#1086#1075#1086
                DataBinding.FieldName = 'TotalPrice'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 83
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1NDS: TcxGridDBBandedColumn
                Caption = #1053#1044#1057
                DataBinding.FieldName = 'NDS'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 74
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1GuardNDS: TcxGridDBBandedColumn
                Caption = #1053#1044#1057' '#1079#1072' '#1086#1093#1088#1072#1085#1091
                DataBinding.FieldName = 'GuardNDS'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 100
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid1DBBandedTableView1PerT: TcxGridDBBandedColumn
                Caption = ' '#1079#1072' 1'#1090'.'
                DataBinding.FieldName = 'PerT'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 76
                Position.BandIndex = 0
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'id'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid1DBBandedTableView1ABBR: TcxGridDBBandedColumn
                Caption = #1042#1072#1083'.'
                DataBinding.FieldName = 'ABBR'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1RecId: TcxGridDBBandedColumn
                DataBinding.FieldName = 'RecId'
                Visible = False
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Sorting = False
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid1DBBandedTableView1CurrencyID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CurrencyID'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Sorting = False
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid1DBBandedTableView1PerT_PP: TcxGridDBBandedColumn
                Caption = #1079#1072' 1 '#1090'.             '#1055#1088#1086#1074'. '#1087#1083'.'
                DataBinding.FieldName = 'PerT_PP'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 109
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1Distance: TcxGridDBBandedColumn
                Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077
                DataBinding.FieldName = 'Distance'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 93
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1Vohr: TcxGridDBBandedColumn
                Caption = #1054#1093#1088#1072#1085#1072
                DataBinding.FieldName = 'Vohr'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.OnEditValueChanged = cxGrid1DBBandedTableView1VohrPropertiesEditValueChanged
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Filtering = False
                Options.Sorting = False
                Width = 54
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1GuardPrice: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072' '#1086#1093#1088#1072#1085#1099
                DataBinding.FieldName = 'GuardPrice'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 75
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1ShemaNo: TcxGridDBBandedColumn
                Caption = #1042#1048#1044
                DataBinding.FieldName = 'ShemaNo'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 75
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid1DBBandedTableView1SoprPrice: TcxGridDBBandedColumn
                Caption = #1057#1086#1087#1088'.'
                DataBinding.FieldName = 'SoprPrice'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Width = 51
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1AddDues: TcxGridDBBandedColumn
                Caption = #1044#1086#1087'. '#1089#1073#1086#1088#1099
                DataBinding.FieldName = 'AddDues'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Width = 59
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1TotalPriceWoNDS: TcxGridDBBandedColumn
                Caption = #1048#1090#1086#1075#1086' '#1073#1077#1079' '#1053#1044#1057
                DataBinding.FieldName = 'TotalPriceWoNDS'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Width = 83
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1PerTwoNDS: TcxGridDBBandedColumn
                Caption = #1079#1072' 1 '#1090'. ('#1073#1077#1079' '#1053#1044#1057')'
                DataBinding.FieldName = 'PerTwoNDS'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Width = 75
                Position.BandIndex = 0
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn
                Caption = #1053#1072#1087#1088'.'
                DataBinding.FieldName = 'Direction_id'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = cxImageList_16
                Properties.Items = <
                  item
                    ImageIndex = 11
                    Value = 1
                  end
                  item
                    ImageIndex = 10
                    Value = 2
                  end>
                Properties.ReadOnly = False
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.ShowEditButtons = isebNever
                Width = 49
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1FromNewCode: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FromNewCode'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid1DBBandedTableView1ToNewCode: TcxGridDBBandedColumn
                DataBinding.FieldName = 'ToNewCode'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGrid1DBBandedTableView1KIT: TcxGridDBBandedColumn
                Caption = #1050#1048#1058
                DataBinding.FieldName = 'KIT_name'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Hint = #1042#1099#1073#1088#1072#1090#1100' '#1050#1048#1058
                    Kind = bkEllipsis
                  end>
                Properties.ReadOnly = True
                Properties.OnButtonClick = cxGrid1DBBandedTableView1KITPropertiesButtonClick
                Visible = False
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Options.Sorting = False
                Width = 88
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn
                Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1086#1087'. '#1089#1073#1086#1088#1099
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Caption = #1044#1086#1087'. '#1089#1073#1086#1088#1099
                    Default = True
                    Kind = bkText
                  end>
                Properties.ViewStyle = vsButtonsOnly
                Properties.OnButtonClick = cxGrid1DBBandedTableView1Column3PropertiesButtonClick
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Width = 96
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn
                DataBinding.FieldName = 'set_distance'
                HeaderAlignmentVert = vaTop
                MinWidth = 25
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBBandedTableView1
            end
          end
          object Panel4: TPanel
            Left = 1
            Top = 156
            Width = 1458
            Height = 730
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 1
            ExplicitWidth = 1087
            ExplicitHeight = 472
            object Splitter4: TSplitter
              Left = 2
              Top = 465
              Width = 1454
              Height = 3
              Cursor = crVSplit
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alBottom
              Color = 8421631
              Constraints.MaxHeight = 3
              MinSize = 100
              ParentColor = False
              Visible = False
              ExplicitLeft = 3
              ExplicitTop = 206
              ExplicitWidth = 1081
            end
            object cxGrid2: TcxGrid
              Left = 2
              Top = 35
              Width = 1454
              Height = 430
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              TabOrder = 0
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.ScrollbarMode = sbmClassic
              ExplicitLeft = 3
              ExplicitTop = 36
              ExplicitWidth = 1081
              ExplicitHeight = 170
              object cxGridDBBandedTableView1: TcxGridDBBandedTableView
                PopupMenu = dxBarPopupMenu2
                OnKeyPress = cxGridDBBandedTableView1KeyPress
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                OnCustomDrawCell = cxGridDBBandedTableView1CustomDrawCell
                OnFocusedItemChanged = cxGridDBBandedTableView1FocusedItemChanged
                DataController.DataSource = DS_LandTaxes
                DataController.Filter.Options = [fcoCaseInsensitive]
                DataController.Filter.OnChanged = cxGridDBBandedTableView1FilterOnChanged
                DataController.Filter.Active = True
                DataController.KeyFieldNames = 'id_Taxes'
                DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '0'
                    Kind = skCount
                    FieldName = 'bargain_id'
                  end
                  item
                    Format = '#,##0.000'
                    Kind = skSum
                    FieldName = 'quantity'
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    FieldName = 'quantity_units'
                  end
                  item
                    Format = '#,##0.00'
                    Kind = skSum
                    FieldName = 'bargain_sum'
                  end
                  item
                    Format = '#,##0.000'
                    Kind = skSum
                    FieldName = 'amount_fact'
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    FieldName = 'amount_units_fact'
                  end
                  item
                    Format = '#,##0.00'
                    Kind = skSum
                    FieldName = 'bargain_sum_fact'
                  end
                  item
                    Format = '#,##0.00'
                    Kind = skSum
                    FieldName = 'bargain_sum_fact_USD'
                  end
                  item
                    Format = '#,##0.00'
                    Kind = skSum
                    FieldName = 'bargain_comiss_USD'
                  end
                  item
                    Format = '#,##0.000'
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
                    Format = '#,##0.00'
                    Kind = skSum
                    Column = cxGridDBBandedTableView1Value
                  end
                  item
                    Kind = skCount
                    Column = cxGridDBBandedTableView1id
                  end
                  item
                    Kind = skCount
                    Column = cxGridDBBandedTableView1Description
                  end>
                DataController.Summary.SummaryGroups = <>
                DataController.Summary.Options = [soMultipleSelectedRecords]
                FilterRow.SeparatorWidth = 8
                FixedDataRows.SeparatorWidth = 8
                NewItemRow.SeparatorWidth = 8
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.MultiSelect = True
                OptionsSelection.HideFocusRectOnExit = False
                OptionsSelection.UnselectFocusedRecordOnExit = False
                OptionsView.NavigatorOffset = 63
                OptionsView.FixedColumnSeparatorWidth = 3
                OptionsView.Footer = True
                OptionsView.GridLineColor = clSilver
                OptionsView.GroupByBox = False
                OptionsView.HeaderFilterButtonShowMode = fbmButton
                OptionsView.IndicatorWidth = 15
                OptionsView.BandHeaders = False
                OptionsView.FixedBandSeparatorWidth = 3
                Preview.LeftIndent = 25
                Preview.RightIndent = 6
                RowLayout.MinValueWidth = 100
                OnCustomDrawColumnHeader = cxGridDBBandedTableView1CustomDrawColumnHeader
                OnCustomDrawFooterCell = cxGridDBBandedTableView1CustomDrawColumnHeader
                Bands = <
                  item
                  end>
                object cxGridDBBandedTableView1Column1: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'State'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = cxImageList_16
                  Properties.Items = <
                    item
                      ImageIndex = 12
                      Value = 6
                    end
                    item
                      ImageIndex = 13
                      Value = 5
                    end>
                  MinWidth = 25
                  Options.Editing = False
                  Options.Filtering = False
                  Width = 31
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                  IsCaptionAssigned = True
                end
                object cxGridDBBandedTableView1id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'id'
                  MinWidth = 25
                  Options.Filtering = False
                  Width = 50
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGridDBBandedTableView1State: TcxGridDBBandedColumn
                  Caption = #1057#1090#1088#1072#1085#1072
                  DataBinding.FieldName = 'State'
                  MinWidth = 25
                  Options.Filtering = False
                  Width = 63
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGridDBBandedTableView1Type: TcxGridDBBandedColumn
                  Caption = #1058#1080#1087
                  DataBinding.FieldName = 'Type'
                  MinWidth = 25
                  Options.Filtering = False
                  Width = 63
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGridDBBandedTableView1Stavka: TcxGridDBBandedColumn
                  Caption = #1057#1090#1072#1074#1082#1072
                  DataBinding.FieldName = 'Stavka'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,##0.0000'
                  MinWidth = 25
                  Options.Filtering = False
                  Width = 75
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedTableView1Description: TcxGridDBBandedColumn
                  Caption = #1054#1087#1080#1089#1072#1085#1080#1077
                  DataBinding.FieldName = 'Description'
                  MinWidth = 25
                  Options.Filtering = False
                  Width = 621
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedTableView1Value: TcxGridDBBandedColumn
                  Caption = #1057#1091#1084#1084#1072
                  DataBinding.FieldName = 'Value'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DisplayFormat = '#,##0.00'
                  MinWidth = 25
                  Options.Filtering = False
                  Width = 75
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedTableView1ABBR: TcxGridDBBandedColumn
                  Caption = #1042#1072#1083#1102#1090#1072
                  DataBinding.FieldName = 'ABBR'
                  MinWidth = 25
                  Options.Filtering = False
                  Width = 63
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGridDBBandedTableView1Document: TcxGridDBBandedColumn
                  Caption = #1044#1086#1082#1091#1084#1077#1085#1090
                  DataBinding.FieldName = 'Document'
                  MinWidth = 25
                  Options.Filtering = False
                  Width = 188
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object cxGridDBBandedTableView1id_Result: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'id_Result'
                  MinWidth = 25
                  Options.Filtering = False
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGridDBBandedTableView1id_Taxes: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'id_Taxes'
                  MinWidth = 25
                  Options.Filtering = False
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGridDBBandedTableView1CategoryId: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'CategoryId'
                  MinWidth = 25
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGridDBBandedTableView1VisibleState: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'VisibleState'
                  MinWidth = 25
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxGridDBBandedTableView1
              end
            end
            object GroupBox1: TGroupBox
              Left = 2
              Top = 468
              Width = 1454
              Height = 260
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alBottom
              Caption = #1040#1085#1072#1083#1080#1079' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
              TabOrder = 1
              Visible = False
              ExplicitLeft = 3
              ExplicitTop = 209
              ExplicitWidth = 1081
              object Panel5: TPanel
                Left = 2
                Top = 19
                Width = 1450
                Height = 107
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                ExplicitLeft = 3
                ExplicitWidth = 1076
                object Panel6: TPanel
                  Left = 0
                  Top = 0
                  Width = 341
                  Height = 107
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alLeft
                  BevelInner = bvRaised
                  BevelOuter = bvLowered
                  TabOrder = 0
                  ExplicitHeight = 108
                  object cxCheckBox2: TcxCheckBox
                    Left = 3
                    Top = 19
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = #1042#1077#1089' '#1075#1088#1091#1079#1072
                    Enabled = False
                    Properties.Alignment = taLeftJustify
                    Properties.OnChange = cxCheckBox2PropertiesChange
                    Style.BorderStyle = ebsUltraFlat
                    Style.LookAndFeel.Kind = lfOffice11
                    Style.Shadow = False
                    StyleDisabled.LookAndFeel.Kind = lfOffice11
                    StyleFocused.LookAndFeel.Kind = lfOffice11
                    StyleHot.LookAndFeel.Kind = lfOffice11
                    TabOrder = 0
                  end
                  object cxSpinEdit1: TcxSpinEdit
                    AlignWithMargins = True
                    Left = 105
                    Top = 19
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Enabled = False
                    Properties.Alignment.Horz = taLeftJustify
                    Style.Shadow = False
                    Style.TransparentBorder = True
                    TabOrder = 1
                    Value = 50
                    Width = 75
                  end
                  object cxLabel9: TcxLabel
                    Left = 106
                    Top = 0
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = #1052#1080#1085#1080#1084#1091#1084
                  end
                  object cxLabel10: TcxLabel
                    Left = 256
                    Top = 0
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = #1064#1072#1075
                  end
                  object cxSpinEdit2: TcxSpinEdit
                    AlignWithMargins = True
                    Left = 256
                    Top = 19
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Enabled = False
                    Properties.Alignment.Horz = taLeftJustify
                    Style.Shadow = False
                    Style.TransparentBorder = True
                    TabOrder = 4
                    Value = 1
                    Width = 75
                  end
                  object cxLabel18: TcxLabel
                    Left = 181
                    Top = 0
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = #1052#1072#1082#1089#1080#1084#1091#1084
                  end
                  object cxSpinEdit3: TcxSpinEdit
                    AlignWithMargins = True
                    Left = 181
                    Top = 19
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Enabled = False
                    Properties.Alignment.Horz = taLeftJustify
                    Style.Shadow = False
                    Style.TransparentBorder = True
                    TabOrder = 6
                    Value = 60
                    Width = 75
                  end
                  object cxCheckBox1: TcxCheckBox
                    Left = 3
                    Top = 49
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077
                    Enabled = False
                    Properties.Alignment = taLeftJustify
                    Properties.OnChange = cxCheckBox1PropertiesChange
                    Style.BorderStyle = ebsUltraFlat
                    Style.LookAndFeel.Kind = lfOffice11
                    Style.Shadow = False
                    StyleDisabled.LookAndFeel.Kind = lfOffice11
                    StyleFocused.LookAndFeel.Kind = lfOffice11
                    StyleHot.LookAndFeel.Kind = lfOffice11
                    TabOrder = 7
                  end
                  object cxSpinEdit5: TcxSpinEdit
                    AlignWithMargins = True
                    Left = 105
                    Top = 49
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Enabled = False
                    Properties.Alignment.Horz = taLeftJustify
                    Style.Shadow = False
                    Style.TransparentBorder = True
                    TabOrder = 8
                    Width = 75
                  end
                  object cxSpinEdit6: TcxSpinEdit
                    AlignWithMargins = True
                    Left = 181
                    Top = 49
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Enabled = False
                    Properties.Alignment.Horz = taLeftJustify
                    Style.Shadow = False
                    Style.TransparentBorder = True
                    TabOrder = 9
                    Value = 3500
                    Width = 75
                  end
                  object cxSpinEdit7: TcxSpinEdit
                    AlignWithMargins = True
                    Left = 256
                    Top = 49
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Enabled = False
                    Properties.Alignment.Horz = taLeftJustify
                    Style.Shadow = False
                    Style.TransparentBorder = True
                    TabOrder = 10
                    Value = 500
                    Width = 75
                  end
                  object cxCheckBox3: TcxCheckBox
                    Left = 3
                    Top = 78
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = #1055#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090#1100
                    Enabled = False
                    Properties.Alignment = taLeftJustify
                    Properties.OnChange = cxCheckBox1PropertiesChange
                    Style.BorderStyle = ebsUltraFlat
                    Style.LookAndFeel.Kind = lfOffice11
                    Style.Shadow = False
                    StyleDisabled.LookAndFeel.Kind = lfOffice11
                    StyleFocused.LookAndFeel.Kind = lfOffice11
                    StyleHot.LookAndFeel.Kind = lfOffice11
                    TabOrder = 11
                  end
                end
                object Panel7: TPanel
                  Left = 341
                  Top = 0
                  Width = 163
                  Height = 107
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alLeft
                  BevelInner = bvRaised
                  BevelOuter = bvLowered
                  TabOrder = 1
                  ExplicitHeight = 108
                  object cxCheckListBox1: TcxCheckListBox
                    Left = 2
                    Top = 2
                    Width = 159
                    Height = 103
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Align = alClient
                    Enabled = False
                    Items = <
                      item
                        Text = '1 '#1074#1072#1075#1086#1085
                      end
                      item
                        Text = '2 '#1074#1072#1075#1086#1085#1072
                      end
                      item
                        Text = '3-5 '#1074#1072#1075#1086#1085#1086#1074
                      end
                      item
                        Text = '6-20 '#1074#1072#1075#1086#1085#1086#1074
                      end
                      item
                        Text = #1041#1086#1083#1100#1096#1077' 20'
                      end>
                    Style.Edges = []
                    Style.Shadow = False
                    TabOrder = 0
                    OnClickCheck = cxCheckListBox1ClickCheck
                    ExplicitLeft = 3
                    ExplicitTop = 3
                    ExplicitWidth = 157
                    ExplicitHeight = 102
                  end
                end
                object Panel8: TPanel
                  Left = 504
                  Top = 0
                  Width = 162
                  Height = 107
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alLeft
                  BevelInner = bvRaised
                  BevelOuter = bvLowered
                  TabOrder = 2
                  ExplicitHeight = 108
                  object cxCheckListBox2: TcxCheckListBox
                    Left = 2
                    Top = 2
                    Width = 158
                    Height = 103
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Align = alClient
                    Enabled = False
                    Items = <
                      item
                        State = cbsChecked
                        Text = #1047#1072' 1 '#1090'.'
                      end
                      item
                        Text = #1047#1072' 1'#1090'. '#1087#1088#1086#1074'. '#1087#1083
                      end
                      item
                        Text = #1047#1072' 1 '#1090'.('#1073#1077#1079' '#1053#1044#1057')'
                      end
                      item
                        Text = #1048#1090#1086#1075#1086' '#1073#1077#1079' '#1053#1044#1057
                      end
                      item
                        Text = #1055#1088#1086#1074#1086#1079#1085#1072#1103' '#1087#1083#1072#1090#1072
                      end>
                    Style.Edges = []
                    TabOrder = 0
                    OnClickCheck = cxCheckListBox2ClickCheck
                    ExplicitLeft = 3
                    ExplicitTop = 3
                    ExplicitWidth = 157
                    ExplicitHeight = 102
                  end
                end
                object Panel9: TPanel
                  Left = 829
                  Top = 0
                  Width = 621
                  Height = 107
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alClient
                  BevelInner = bvRaised
                  BevelOuter = bvLowered
                  TabOrder = 3
                  ExplicitWidth = 247
                  ExplicitHeight = 108
                  object cxButton3: TcxButton
                    Left = 206
                    Top = 25
                    Width = 167
                    Height = 31
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080' '#1074' Lis'
                    Enabled = False
                    Kind = cxbkDropDown
                    LookAndFeel.Kind = lfUltraFlat
                    OptionsImage.Spacing = 5
                    TabOrder = 0
                  end
                  object cxButton4: TcxButton
                    Left = 8
                    Top = 25
                    Width = 191
                    Height = 31
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Caption = #1056#1072#1089#1095#1077#1090' '#1076#1083#1103' '#1075#1088#1091#1087#1087#1099' '#1074#1072#1075#1086#1085#1086#1074' '
                    OptionsImage.Spacing = 5
                    TabOrder = 1
                    OnClick = cxButton4Click
                  end
                end
                object Panel12: TPanel
                  Left = 666
                  Top = 0
                  Width = 163
                  Height = 107
                  Margins.Left = 4
                  Margins.Top = 4
                  Margins.Right = 4
                  Margins.Bottom = 4
                  Align = alLeft
                  BevelInner = bvRaised
                  BevelOuter = bvLowered
                  TabOrder = 4
                  ExplicitHeight = 108
                  object cxCheckListBox3: TcxCheckListBox
                    Left = 2
                    Top = 2
                    Width = 159
                    Height = 103
                    Margins.Left = 4
                    Margins.Top = 4
                    Margins.Right = 4
                    Margins.Bottom = 4
                    Align = alClient
                    Enabled = False
                    Items = <>
                    Style.Edges = []
                    TabOrder = 0
                    ExplicitLeft = 3
                    ExplicitTop = 3
                    ExplicitWidth = 157
                    ExplicitHeight = 102
                  end
                end
              end
              object cxGrid8: TcxGrid
                Left = 2
                Top = 126
                Width = 1450
                Height = 132
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alClient
                TabOrder = 1
                LookAndFeel.Kind = lfUltraFlat
                LookAndFeel.ScrollbarMode = sbmClassic
                ExplicitLeft = 3
                ExplicitWidth = 1076
                object cxGridDBBandedTableView5: TcxGridDBBandedTableView
                  PopupMenu = dxBarPopupMenu4
                  OnKeyPress = cxGrid1DBBandedTableView1KeyPress
                  Navigator.Buttons.CustomButtons = <>
                  Navigator.Buttons.Filter.Enabled = False
                  Navigator.Buttons.Filter.Visible = False
                  ScrollbarAnnotations.CustomAnnotations = <>
                  OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
                  OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
                  DataController.DataSource = DS_Account
                  DataController.Filter.Options = [fcoCaseInsensitive]
                  DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
                  DataController.Filter.Active = True
                  DataController.KeyFieldNames = 'id'
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '0'
                      Kind = skCount
                      Column = cxGridDBBandedTableView5id
                    end>
                  DataController.Summary.SummaryGroups = <>
                  FilterRow.SeparatorWidth = 8
                  FixedDataRows.SeparatorWidth = 8
                  NewItemRow.SeparatorWidth = 8
                  OptionsBehavior.CopyCaptionsToClipboard = False
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsSelection.MultiSelect = True
                  OptionsSelection.CellMultiSelect = True
                  OptionsSelection.InvertSelect = False
                  OptionsView.NavigatorOffset = 63
                  OptionsView.FixedColumnSeparatorWidth = 3
                  OptionsView.Footer = True
                  OptionsView.GridLineColor = clSilver
                  OptionsView.GroupByBox = False
                  OptionsView.HeaderFilterButtonShowMode = fbmButton
                  OptionsView.HeaderHeight = 43
                  OptionsView.IndicatorWidth = 15
                  OptionsView.BandHeaders = False
                  OptionsView.FixedBandSeparatorWidth = 3
                  Preview.LeftIndent = 25
                  Preview.RightIndent = 6
                  RowLayout.MinValueWidth = 100
                  Styles.Header = cxStyle3
                  OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
                  OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
                  Bands = <
                    item
                    end>
                  object cxGridDBBandedTableView5PerT: TcxGridDBBandedColumn
                    Caption = #1047#1072' 1 '#1090'.'
                    DataBinding.FieldName = 'PerT'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '#,##0.00'
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = 0
                    Position.ColIndex = 6
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView5BasePrice: TcxGridDBBandedColumn
                    Caption = #1055#1088#1086#1074#1086#1079#1085#1072#1103' '#1087#1083#1072#1090#1072
                    DataBinding.FieldName = 'BasePrice'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '#,##0.00'
                    Visible = False
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = 0
                    Position.ColIndex = 10
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView5TotalPrice: TcxGridDBBandedColumn
                    Caption = #1048#1090#1086#1075#1086
                    DataBinding.FieldName = 'TotalPrice'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '#,##0.00'
                    Visible = False
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = 0
                    Position.ColIndex = 9
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView5PerTwoNDS: TcxGridDBBandedColumn
                    Caption = #1079#1072' 1 '#1090'. ('#1073#1077#1079' '#1053#1044#1057')'
                    DataBinding.FieldName = 'PerTwoNDS'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '#,##0.00'
                    Visible = False
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = 0
                    Position.ColIndex = 8
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView5BasePerT: TcxGridDBBandedColumn
                    Caption = #1079#1072' 1 '#1090'. '#1055#1088#1086#1074'. '#1087#1083'.'
                    DataBinding.FieldName = 'BasePerT'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '#,##0.00'
                    Visible = False
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = 0
                    Position.ColIndex = 7
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView5inf_obj_cod: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'inf_obj_cod'
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = -1
                    Position.ColIndex = -1
                    Position.RowIndex = -1
                  end
                  object cxGridDBBandedTableView5Weight: TcxGridDBBandedColumn
                    Caption = #1042#1077#1089' '#1074' '#1090'.'
                    DataBinding.FieldName = 'Weight'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '#,##0'
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = 0
                    Position.ColIndex = 5
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView5LandId: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'LandId'
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = -1
                    Position.ColIndex = -1
                    Position.RowIndex = -1
                  end
                  object cxGridDBBandedTableView5LandName: TcxGridDBBandedColumn
                    Caption = #1057#1090#1088#1072#1085#1072
                    DataBinding.FieldName = 'LandName'
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView5Kol_vag: TcxGridDBBandedColumn
                    Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074
                    DataBinding.FieldName = 'Kol_vag'
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = 0
                    Position.ColIndex = 4
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView5distance: TcxGridDBBandedColumn
                    Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077
                    DataBinding.FieldName = 'distance'
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView5OwnerID: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OwnerID'
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = -1
                    Position.ColIndex = -1
                    Position.RowIndex = -1
                  end
                  object cxGridDBBandedTableView5OwnerName: TcxGridDBBandedColumn
                    Caption = #1055#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090#1100
                    DataBinding.FieldName = 'OwnerName'
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView5id: TcxGridDBBandedColumn
                    Caption = #8470' '#1079#1072#1087#1080#1089#1080
                    DataBinding.FieldName = 'id'
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object cxGridDBBandedTableView5TotalPriceWoNDS: TcxGridDBBandedColumn
                    Caption = #1048#1090#1086#1075#1086' '#1073#1077#1079' '#1053#1044#1057
                    DataBinding.FieldName = 'TotalPriceWoNDS'
                    PropertiesClassName = 'TcxCurrencyEditProperties'
                    Properties.DisplayFormat = '#,##0.00'
                    Visible = False
                    HeaderAlignmentVert = vaTop
                    MinWidth = 25
                    Width = 125
                    Position.BandIndex = 0
                    Position.ColIndex = 11
                    Position.RowIndex = 0
                  end
                end
                object cxGridLevel5: TcxGridLevel
                  GridView = cxGridDBBandedTableView5
                end
              end
            end
            object FlowPanel1: TFlowPanel
              Left = 2
              Top = 2
              Width = 1454
              Height = 33
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Color = clBtnShadow
              FlowStyle = fsRightLeftTopBottom
              Padding.Top = 3
              Padding.Bottom = 1
              TabOrder = 2
              ExplicitLeft = 3
              ExplicitTop = 3
              ExplicitWidth = 1081
              object Panel10: TPanel
                Left = 924
                Top = 5
                Width = 160
                Height = 23
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alRight
                BevelOuter = bvNone
                Color = clBtnShadow
                TabOrder = 0
              end
            end
          end
        end
      end
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 0
        Width = 361
        Height = 891
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alLeft
        TabOrder = 2
        Properties.ActivePage = cxTabSheet4
        Properties.CustomButtons.Buttons = <>
        Properties.HideTabs = True
        ExplicitHeight = 634
        ClientRectBottom = 891
        ClientRectRight = 361
        ClientRectTop = 0
        object cxTabSheet4: TcxTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'cxTabSheet4'
          ImageIndex = 1
          ExplicitHeight = 634
          object cxDBTreeList1: TcxDBTreeList
            Left = 0
            Top = 0
            Width = 361
            Height = 639
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Bands = <
              item
                MinWidth = 25
              end>
            DataController.DataSource = DS_MainTree
            DataController.ImageIndexField = 'node_image_id'
            DataController.ParentField = 'parent_id'
            DataController.KeyField = 'id'
            Images = cxImageList1
            Navigator.Buttons.CustomButtons = <>
            OptionsBehavior.CopyCaptionsToClipboard = False
            OptionsData.Editing = False
            OptionsData.AnsiSort = True
            OptionsData.Deleting = False
            OptionsView.Buttons = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.FixedSeparatorWidth = 3
            OptionsView.Headers = False
            OptionsView.IndicatorWidth = 15
            OptionsView.NavigatorOffset = 63
            OptionsView.ShowRoot = False
            Preview.LeftIndent = 6
            Preview.RightIndent = 6
            RootValue = -1
            ScrollbarAnnotations.CustomAnnotations = <>
            TabOrder = 0
            OnClick = cxDBTreeList1Click
            OnCollapsing = cxDBTreeList1Collapsing
            OnCustomDrawDataCell = cxDBTreeList1CustomDrawDataCell
            object cxDBTreeList1id: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'id'
              MinWidth = 25
              Width = 49
              Position.ColIndex = 2
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1parent_id: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'parent_id'
              MinWidth = 25
              Width = 83
              Position.ColIndex = 3
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1node_name: TcxDBTreeListColumn
              DataBinding.FieldName = 'node_name'
              MinWidth = 25
              Width = 200
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1node_value: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'node_value'
              MinWidth = 25
              Width = 211
              Position.ColIndex = 1
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1node_cod: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'node_cod'
              MinWidth = 25
              Width = 125
              Position.ColIndex = 4
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxDBTreeList1node_image_id: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'node_image_id'
              MinWidth = 25
              Width = 125
              Position.ColIndex = 5
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1084#1072#1088#1096#1088#1091#1090#1072
      ImageIndex = 1
      ExplicitWidth = 1463
      ExplicitHeight = 634
      object cxGrid6: TcxGrid
        Left = 0
        Top = 465
        Width = 1463
        Height = 174
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid6cxGridDBBandedTableView3: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu9
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DS_FullRoutes
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'bargain_id'
            end
            item
              Format = '#,##0.000'
              Kind = skSum
              FieldName = 'quantity'
            end
            item
              Format = '0'
              Kind = skSum
              FieldName = 'quantity_units'
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'bargain_sum'
            end
            item
              Format = '#,##0.000'
              Kind = skSum
              FieldName = 'amount_fact'
            end
            item
              Format = '0'
              Kind = skSum
              FieldName = 'amount_units_fact'
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'bargain_sum_fact'
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'bargain_sum_fact_USD'
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'bargain_comiss_USD'
            end
            item
              Format = '#,##0.000'
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
              Kind = skCount
              Column = cxGrid6cxGridDBBandedTableView3NewCode
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NavigatorOffset = 63
          OptionsView.FixedColumnSeparatorWidth = 3
          OptionsView.Footer = True
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 15
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 3
          Preview.LeftIndent = 25
          Preview.RightIndent = 6
          RowLayout.MinValueWidth = 100
          Bands = <
            item
            end>
          object cxGrid6cxGridDBBandedTableView3Direction_id: TcxGridDBBandedColumn
            Caption = #1055#1053
            DataBinding.FieldName = 'Direction_id'
            MinWidth = 25
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid6cxGridDBBandedTableView3PID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PID'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid6cxGridDBBandedTableView3Code: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Code'
            MinWidth = 25
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid6cxGridDBBandedTableView3NewCode: TcxGridDBBandedColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'NewCode'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid6cxGridDBBandedTableView3Name: TcxGridDBBandedColumn
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'Name'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 278
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid6cxGridDBBandedTableView3Distance: TcxGridDBBandedColumn
            Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077
            DataBinding.FieldName = 'Distance'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 81
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid6cxGridDBBandedTableView3LandId: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LandId'
            MinWidth = 25
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid6cxGridDBBandedTableView3LandName: TcxGridDBBandedColumn
            Caption = #1057#1090#1088#1072#1085#1072
            DataBinding.FieldName = 'LandName'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 121
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid6cxGridDBBandedTableView3LandABBR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LandABBR'
            MinWidth = 25
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid6cxGridDBBandedTableView3RegionID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RegionID'
            MinWidth = 25
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid6cxGridDBBandedTableView3RoadId: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RoadId'
            MinWidth = 25
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid6cxGridDBBandedTableView3RoadName: TcxGridDBBandedColumn
            Caption = #1044#1086#1088#1086#1075#1072
            DataBinding.FieldName = 'RoadName'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 171
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid6cxGridDBBandedTableView3RoadABBR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RoadABBR'
            MinWidth = 25
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid6cxGridDBBandedTableView3NewParaT: TcxGridDBBandedColumn
            Caption = #1055#1072#1088#1072#1075#1088#1072#1092#1099
            DataBinding.FieldName = 'NewParaT'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 218
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid6cxGridDBBandedTableView3DP: TcxGridDBBandedColumn
            Caption = #1053#1054#1044
            DataBinding.FieldName = 'DP'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 131
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
        object cxGrid6cxGridLevel3: TcxGridLevel
          GridView = cxGrid6cxGridDBBandedTableView3
        end
      end
      object GridPanel3: TGridPanel
        Left = 0
        Top = 314
        Width = 1463
        Height = 149
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
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
            Control = cxGrid4
            Row = 0
          end
          item
            Column = 1
            Control = cxGrid5
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 1
        object cxGrid4: TcxGrid
          Left = 0
          Top = 0
          Width = 731
          Height = 149
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGrid4DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu7
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DS_Routes
            DataController.DetailKeyFieldNames = 'id'
            DataController.Filter.Active = True
            DataController.KeyFieldNames = 'id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 8
            FixedDataRows.SeparatorWidth = 8
            NewItemRow.SeparatorWidth = 8
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.NavigatorOffset = 63
            OptionsView.FixedColumnSeparatorWidth = 3
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.IndicatorWidth = 15
            OptionsView.FixedBandSeparatorWidth = 3
            Preview.LeftIndent = 25
            Preview.RightIndent = 6
            RowLayout.MinValueWidth = 100
            Styles.Header = cxStyle3
            Bands = <
              item
                Caption = #1055#1088#1103#1084#1086#1081' '#1084#1072#1088#1096#1088#1091#1090
                Styles.Header = cxStyle3
              end>
            object cxGrid4DBBandedTableView1id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'id'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid4DBBandedTableView1Direction_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Direction_id'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid4DBBandedTableView1PID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PID'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid4DBBandedTableView1Code: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Code'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid4DBBandedTableView1NewCode: TcxGridDBBandedColumn
              Caption = #1050#1086#1076
              DataBinding.FieldName = 'NewCode'
              MinWidth = 25
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 53
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1Name: TcxGridDBBandedColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'Name'
              MinWidth = 25
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 276
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1Distance: TcxGridDBBandedColumn
              Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077
              DataBinding.FieldName = 'Distance'
              MinWidth = 25
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 83
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1LandId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'LandId'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid4DBBandedTableView1LandName: TcxGridDBBandedColumn
              Caption = #1057#1090#1088#1072#1085#1072
              DataBinding.FieldName = 'LandName'
              MinWidth = 25
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 81
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1LandABBR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'LandABBR'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid4DBBandedTableView1RegionID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RegionID'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid4DBBandedTableView1RoadId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RoadId'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid4DBBandedTableView1RoadName: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RoadName'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid4DBBandedTableView1RoadABBR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RoadABBR'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGrid4Level1: TcxGridLevel
            GridView = cxGrid4DBBandedTableView1
          end
        end
        object cxGrid5: TcxGrid
          Left = 731
          Top = 0
          Width = 732
          Height = 149
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGridDBBandedTableView4: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu8
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DS_BackRoutes
            DataController.Filter.Active = True
            DataController.KeyFieldNames = 'id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.SeparatorWidth = 8
            FixedDataRows.SeparatorWidth = 8
            NewItemRow.SeparatorWidth = 8
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.NavigatorOffset = 63
            OptionsView.FixedColumnSeparatorWidth = 3
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            OptionsView.IndicatorWidth = 15
            OptionsView.FixedBandSeparatorWidth = 3
            Preview.LeftIndent = 25
            Preview.RightIndent = 6
            RowLayout.MinValueWidth = 100
            Styles.Header = cxStyle3
            Bands = <
              item
                Caption = #1054#1073#1088#1072#1090#1085#1099#1081' '#1084#1072#1088#1096#1088#1091#1090
                Styles.Header = cxStyle3
              end>
            object cxGridDBBandedColumn1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Direction_id'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedColumn2: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PID'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedColumn3: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Code'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedColumn17: TcxGridDBBandedColumn
              Caption = #1050#1086#1076
              DataBinding.FieldName = 'NewCode'
              MinWidth = 25
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 53
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn18: TcxGridDBBandedColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'Name'
              MinWidth = 25
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 276
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn19: TcxGridDBBandedColumn
              Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077
              DataBinding.FieldName = 'Distance'
              MinWidth = 25
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 83
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn20: TcxGridDBBandedColumn
              DataBinding.FieldName = 'LandId'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedColumn21: TcxGridDBBandedColumn
              Caption = #1057#1090#1088#1072#1085#1072
              DataBinding.FieldName = 'LandName'
              MinWidth = 25
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 81
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn22: TcxGridDBBandedColumn
              DataBinding.FieldName = 'LandABBR'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedColumn23: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RegionID'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedColumn24: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RoadId'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedColumn25: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RoadName'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedColumn26: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RoadABBR'
              MinWidth = 25
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBBandedTableView4
          end
        end
      end
      object GridPanel4: TGridPanel
        Left = 0
        Top = 158
        Width = 1463
        Height = 153
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
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
            Control = Panel15
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 2
        object Panel15: TPanel
          Left = 0
          Top = 0
          Width = 731
          Height = 154
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object FlowPanel2: TFlowPanel
            Left = 630
            Top = 0
            Width = 101
            Height = 154
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alRight
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 0
            object cxButton5: TcxButton
              Left = 3
              Top = 3
              Width = 93
              Height = 31
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              OptionsImage.Spacing = 5
              TabOrder = 0
              OnClick = cxButton5Click
            end
            object cxButton6: TcxButton
              Left = 3
              Top = 34
              Width = 93
              Height = 31
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = #1059#1076#1072#1083#1080#1090#1100
              OptionsImage.Spacing = 5
              TabOrder = 1
              OnClick = cxButton6Click
            end
            object cxButton7: TcxButton
              Left = 3
              Top = 65
              Width = 93
              Height = 31
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = #1042#1074#1077#1088#1093
              OptionsImage.Spacing = 5
              TabOrder = 2
            end
            object cxButton8: TcxButton
              Left = 3
              Top = 96
              Width = 93
              Height = 32
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = #1042#1085#1080#1079
              OptionsImage.Spacing = 5
              TabOrder = 3
            end
          end
          object cxGrid3: TcxGrid
            Left = 0
            Top = 0
            Width = 630
            Height = 154
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.ScrollbarMode = sbmClassic
            object cxGridDBBandedTableView2: TcxGridDBBandedTableView
              PopupMenu = dxBarPopupMenu6
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = DS_Stations
              DataController.DetailKeyFieldNames = 'id'
              DataController.Filter.Active = True
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.SeparatorWidth = 8
              FixedDataRows.SeparatorWidth = 8
              NewItemRow.SeparatorWidth = 8
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.NavigatorOffset = 63
              OptionsView.FixedColumnSeparatorWidth = 3
              OptionsView.GridLineColor = clSilver
              OptionsView.GroupByBox = False
              OptionsView.IndicatorWidth = 15
              OptionsView.FixedBandSeparatorWidth = 3
              Preview.LeftIndent = 25
              Preview.RightIndent = 6
              RowLayout.MinValueWidth = 100
              Styles.Header = cxStyle3
              Bands = <
                item
                  Caption = #1059#1090#1086#1095#1085#1077#1085#1080#1077' '#1084#1072#1088#1096#1088#1091#1090#1072' '#1089#1083#1077#1076#1086#1074#1072#1085#1080#1103
                  Styles.Header = cxStyle3
                end>
              object cxGridDBBandedTableView2id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'id'
                MinWidth = 25
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView2cod: TcxGridDBBandedColumn
                Caption = #1050#1086#1076
                DataBinding.FieldName = 'cod'
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 53
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView2SecondCode: TcxGridDBBandedColumn
                Caption = #1050#1086#1076' '#1087#1086#1075#1088#1072#1085'-'#1087#1077#1088#1077#1093#1086#1076#1072
                DataBinding.FieldName = 'SecondCode'
                MinWidth = 25
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView2Activ: TcxGridDBBandedColumn
                Caption = #1055#1086#1075#1088#1072#1085'-'#1087#1077#1088#1077#1093#1086#1076
                DataBinding.FieldName = 'Activ'
                MinWidth = 25
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView2name: TcxGridDBBandedColumn
                Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'name'
                MinWidth = 25
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 275
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBBandedTableView2
            end
          end
        end
      end
      object cxSplitter2: TcxSplitter
        Left = 0
        Top = 123
        Width = 1463
        Height = 8
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        AlignSplitter = salTop
        DragThreshold = 4
        PositionAfterOpen = 38
        MinSize = 1
        Control = cxGrid7
        Color = clRed
        ParentColor = False
      end
      object cxSplitter4: TcxSplitter
        Left = 0
        Top = 463
        Width = 1463
        Height = 7
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        AlignSplitter = salTop
        DragThreshold = 4
        PositionAfterOpen = 38
        MinSize = 1
        Control = GridPanel3
        Color = clRed
        ParentColor = False
      end
      object cxGrid7: TcxGrid
        Left = 0
        Top = 0
        Width = 1463
        Height = 155
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        TabOrder = 5
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGridDBBandedTableView3: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu5
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DS_Result
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              FieldName = 'bargain_id'
            end
            item
              Format = '#,##0.000'
              Kind = skSum
              FieldName = 'quantity'
            end
            item
              Format = '0'
              Kind = skSum
              FieldName = 'quantity_units'
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'bargain_sum'
            end
            item
              Format = '#,##0.000'
              Kind = skSum
              FieldName = 'amount_fact'
            end
            item
              Format = '0'
              Kind = skSum
              FieldName = 'amount_units_fact'
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'bargain_sum_fact'
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'bargain_sum_fact_USD'
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'bargain_comiss_USD'
            end
            item
              Format = '#,##0.000'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGridDBBandedColumn36
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGridDBBandedColumn33
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGridDBBandedColumn41
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.SeparatorWidth = 8
          FixedDataRows.SeparatorWidth = 8
          NewItemRow.SeparatorWidth = 8
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NavigatorOffset = 63
          OptionsView.FixedColumnSeparatorWidth = 3
          OptionsView.Footer = True
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 43
          OptionsView.IndicatorWidth = 15
          OptionsView.BandHeaders = False
          OptionsView.FixedBandSeparatorWidth = 3
          Preview.LeftIndent = 25
          Preview.RightIndent = 6
          RowLayout.MinValueWidth = 100
          Styles.Header = cxStyle3
          Bands = <
            item
            end>
          object cxGridDBBandedColumn27: TcxGridDBBandedColumn
            Caption = #1057#1090#1088#1072#1085#1072
            DataBinding.FieldName = 'LandName'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn28: TcxGridDBBandedColumn
            Caption = #1053#1072#1087#1088'.'
            DataBinding.FieldName = 'Direction'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 51
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGridDBBandedColumn29: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Direction_id'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGridDBBandedColumn30: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LandId'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGridDBBandedColumn31: TcxGridDBBandedColumn
            Caption = #1042#1048#1044
            DataBinding.FieldName = 'CalcDsc'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 56
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn32: TcxGridDBBandedColumn
            Caption = #1055#1088#1086#1074'. '#1087#1083'.'
            DataBinding.FieldName = 'BasePrice'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 105
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn33: TcxGridDBBandedColumn
            Caption = #1048#1090#1086#1075#1086
            DataBinding.FieldName = 'TotalPrice'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn34: TcxGridDBBandedColumn
            Caption = #1053#1044#1057
            DataBinding.FieldName = 'NDS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn35: TcxGridDBBandedColumn
            Caption = #1053#1044#1057' '#1079#1072' '#1086#1093#1088#1072#1085#1091
            DataBinding.FieldName = 'GuardNDS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGridDBBandedColumn36: TcxGridDBBandedColumn
            Caption = ' '#1079#1072' 1'#1090'.'
            DataBinding.FieldName = 'PerT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn37: TcxGridDBBandedColumn
            Caption = #1042#1072#1083'.'
            DataBinding.FieldName = 'ABBR'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn38: TcxGridDBBandedColumn
            DataBinding.FieldName = 'id'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGridDBBandedColumn39: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RecId'
            Visible = False
            MinWidth = 25
            Options.Editing = False
            Options.Sorting = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGridDBBandedColumn40: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CurrencyID'
            MinWidth = 25
            Options.Editing = False
            Options.Sorting = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGridDBBandedColumn41: TcxGridDBBandedColumn
            Caption = #1079#1072' 1 '#1090'.             '#1055#1088#1086#1074'. '#1087#1083'.'
            DataBinding.FieldName = 'PerT_PP'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 109
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn42: TcxGridDBBandedColumn
            Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077
            DataBinding.FieldName = 'Distance'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 93
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn43: TcxGridDBBandedColumn
            Caption = #1054#1093#1088#1072#1085#1072
            DataBinding.FieldName = 'Ochrana'
            PropertiesClassName = 'TcxCheckBoxProperties'
            MinWidth = 25
            Options.Filtering = False
            Options.Sorting = False
            Width = 54
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn44: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1086#1093#1088#1072#1085#1099
            DataBinding.FieldName = 'GuardPrice'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn45: TcxGridDBBandedColumn
            Caption = #1042#1048#1044
            DataBinding.FieldName = 'ShemaNo'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Options.Sorting = False
            Width = 75
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGridDBBandedColumn46: TcxGridDBBandedColumn
            Caption = #1057#1086#1087#1088'.'
            DataBinding.FieldName = 'SoprPrice'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Width = 51
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn47: TcxGridDBBandedColumn
            Caption = #1044#1086#1087'. '#1089#1073#1086#1088#1099
            DataBinding.FieldName = 'AddDues'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Width = 59
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn48: TcxGridDBBandedColumn
            Caption = #1048#1090#1086#1075#1086' '#1073#1077#1079' '#1053#1044#1057
            DataBinding.FieldName = 'TotalPriceWoNDS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Width = 83
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn49: TcxGridDBBandedColumn
            Caption = #1079#1072' 1 '#1090'. ('#1073#1077#1079' '#1053#1044#1057')'
            DataBinding.FieldName = 'PerTwoNDS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn50: TcxGridDBBandedColumn
            Caption = #1053#1072#1087#1088'.'
            DataBinding.FieldName = 'Direction_id'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                ImageIndex = 11
                Value = 1
              end
              item
                ImageIndex = 10
                Value = 0
              end>
            MinWidth = 25
            Options.Editing = False
            Options.Filtering = False
            Width = 49
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBBandedTableView3
        end
      end
      object cxSplitter5: TcxSplitter
        Left = 0
        Top = 311
        Width = 1463
        Height = 8
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        AlignSplitter = salTop
        DragThreshold = 4
        PositionAfterOpen = 38
        MinSize = 1
        Control = GridPanel4
        Color = clRed
        ParentColor = False
      end
    end
  end
  object Panel16: TPanel
    Left = 0
    Top = 120
    Width = 1833
    Height = 70
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -14
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    ExplicitTop = 123
    ExplicitWidth = 1463
    object cxMemo2: TcxMemo
      Left = 2
      Top = 2
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Enabled = False
      Lines.Strings = (
        #1042#1085#1080#1084#1072#1085#1080#1077'!'
        #1044#1083#1103' '#1076#1072#1085#1085#1086#1081' '#1087#1077#1088#1077#1074#1086#1079#1082#1080' '#1089#1091#1097#1077#1089#1090#1074#1091#1102#1090' '#1080#1089#1082#1083#1102#1095#1080#1090#1077#1083#1100#1085#1099#1077' '#1090#1072#1088#1080#1092#1099'.'
        
          #1044#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072' '#1090#1072#1088#1080#1092#1086#1074' "'#1082#1083#1080#1082#1085#1080#1090#1077'" '#1076#1074#1072' '#1088#1072#1079#1072' '#1084#1099#1096#1082#1086#1081' '#1085#1072' '#1085#1091#1078#1085#1086#1081' '#1089#1090#1088#1072#1085 +
          #1077' '#1074' '#1089#1090#1086#1083#1073#1094#1077' "'#1050#1048#1058'"')
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clYellow
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -14
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.Shadow = True
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = clYellow
      StyleDisabled.TextColor = clWindowText
      StyleHot.BorderColor = clWindowFrame
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 1457
      ExplicitHeight = 65
      Height = 66
      Width = 1829
    end
  end
  object Panel13: TPanel
    Left = 0
    Top = 85
    Width = 1833
    Height = 35
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 10
    Visible = False
    ExplicitTop = 88
    ExplicitWidth = 1463
    object cxMemo1: TcxMemo
      Left = 3
      Top = 3
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Enabled = False
      Style.BorderStyle = ebsUltraFlat
      Style.Color = 13630916
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.Shadow = True
      StyleDisabled.BorderColor = clWindowFrame
      StyleDisabled.Color = 13630916
      StyleDisabled.TextColor = clWindowText
      TabOrder = 0
      Height = 31
      Width = 1829
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = cxImageList_16
    ImageOptions.LargeImages = cxImageList_32
    ImageOptions.StretchGlyphs = False
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 488
    Top = 240
    PixelsPerInch = 120
    DockControlHeights = (
      0
      0
      50
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 978
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton14'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem1'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1088#1072#1089#1095#1077#1090
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1088#1072#1089#1095#1077#1090
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
      AutoGrayScale = False
      LargeImageIndex = 16
      ShowCaption = False
      SyncImageIndex = False
      ImageIndex = 16
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1088#1072#1089#1095#1077#1090
      Category = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1088#1072#1089#1095#1077#1090
      Visible = ivAlways
      OnClick = dxBarLargeButton2Click
      AutoGrayScale = False
      LargeImageIndex = 17
      ShowCaption = False
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1088#1072#1089#1095#1077#1090
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1088#1072#1089#1095#1077#1090
      Visible = ivAlways
      OnClick = dxBarLargeButton3Click
      AutoGrayScale = False
      LargeImageIndex = 21
      ShowCaption = False
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = #1047#1072#1076#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1082' '#1088#1072#1089#1095#1077#1090#1091
      Category = 0
      Hint = #1047#1072#1076#1072#1090#1100' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1082' '#1088#1072#1089#1095#1077#1090#1091
      Visible = ivNever
      OnClick = dxBarLargeButton4Click
      AutoGrayScale = False
      LargeImageIndex = 19
      ShowCaption = False
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = #1056#1072#1089#1095#1080#1090#1072#1090#1100' '#1089#1090#1072#1074#1082#1091
      Category = 0
      Hint = #1056#1072#1089#1095#1080#1090#1072#1090#1100' '#1089#1090#1072#1074#1082#1091
      Visible = ivAlways
      OnClick = dxBarLargeButton5Click
      AutoGrayScale = False
      LargeImageIndex = 20
      ShowCaption = False
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = #1054#1082#1085#1086' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1084#1072#1088#1096#1088#1091#1090#1072
      Category = 0
      Hint = #1054#1082#1085#1086' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1084#1072#1088#1096#1088#1091#1090#1072
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarLargeButton6Click
      AutoGrayScale = False
      LargeImageIndex = 22
      ShowCaption = False
      SyncImageIndex = False
      ImageIndex = 22
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = #1040#1085#1072#1083#1080#1079' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
      Category = 0
      Hint = #1040#1085#1072#1083#1080#1079' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarLargeButton7Click
      AutoGrayScale = False
      LargeImageIndex = 9
      ShowCaption = False
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Caption = #1056#1072#1089#1095#1077#1090' '#1074#1077#1089#1072' '#1085#1072#1083#1080#1074#1085#1086#1075#1086' '#1075#1088#1091#1079#1072
      Category = 0
      Hint = #1056#1072#1089#1095#1077#1090' '#1074#1077#1089#1072' '#1085#1072#1083#1080#1074#1085#1086#1075#1086' '#1075#1088#1091#1079#1072
      Visible = ivNever
      AutoGrayScale = False
      LargeImageIndex = 5
      ShowCaption = False
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Caption = #1054#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1074#1072#1075#1086#1085#1072' '#1087#1086' '#1085#1086#1084#1077#1088#1091
      Category = 0
      Hint = #1054#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1074#1072#1075#1086#1085#1072' '#1087#1086' '#1085#1086#1084#1077#1088#1091
      Visible = ivNever
      AutoGrayScale = False
      LargeImageIndex = 6
      ShowCaption = False
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1088#1072#1089#1095#1077#1090#1072' '#1074' Excel'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1088#1072#1089#1095#1077#1090#1072' '#1074' Excel'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = dxBarPopupMenu3
      OnClick = dxBarLargeButton10Click
      AutoGrayScale = False
      LargeImageIndex = 13
      ShowCaption = False
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1084#1072#1088#1096#1088#1091#1090
      Category = 0
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1084#1072#1088#1096#1088#1091#1090
      Visible = ivAlways
      OnClick = dxBarLargeButton11Click
      AutoGrayScale = False
      LargeImageIndex = 12
      ShowCaption = False
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Caption = #1047#1072#1087#1091#1089#1082' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' Rail-Info'
      Category = 0
      Hint = #1047#1072#1087#1091#1089#1082' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' Rail-Info'
      Visible = ivAlways
      OnClick = dxBarLargeButton12Click
      AutoGrayScale = False
      LargeImageIndex = 23
      ShowCaption = False
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Caption = #1057#1087#1080#1089#1086#1082' '#1076#1086#1089#1090#1091#1087#1085#1099#1093' '#1074' Rail-'#1058#1072#1088#1080#1092'-'#1057#1077#1088#1074#1077#1088' '#1082#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1086#1074
      Category = 0
      Hint = #1057#1087#1080#1089#1086#1082' '#1076#1086#1089#1090#1091#1087#1085#1099#1093' '#1074' Rail-'#1058#1072#1088#1080#1092'-'#1057#1077#1088#1074#1077#1088' '#1082#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088#1086#1074
      Visible = ivAlways
      OnClick = dxBarLargeButton13Click
      AutoGrayScale = False
      LargeImageIndex = 15
      ShowCaption = False
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = #1042#1099#1093#1086#1076
      Visible = ivAlways
      OnClick = dxBarLargeButton14Click
      AutoGrayScale = False
      LargeImageIndex = 14
      ShowCaption = False
    end
    object dxBarButton1: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1072#1089#1089#1090#1086#1103#1085#1080#1077
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1088#1072#1089#1089#1090#1086#1103#1085#1080#1077
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 20
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 20
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1088#1072#1089#1095#1077#1090#1072' '#1074' Excel'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1088#1072#1089#1095#1077#1090#1072' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 20
    end
    object dxBarButton5: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1090#1072#1074#1086#1082' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1089#1090#1072#1074#1086#1082' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 20
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 20
      OnClick = dxBarButton6Click
    end
    object dxBarButton7: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 20
      OnClick = dxBarButton7Click
    end
    object dxBarButton10: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 20
      OnClick = dxBarButton10Click
    end
    object dxBarButton13: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 20
      OnClick = dxBarButton13Click
    end
    object dxBarButton16: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 20
      OnClick = dxBarButton16Click
    end
    object dxBarButton19: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 20
      OnClick = dxBarButton19Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1058#1077#1089#1090#1086#1074#1099#1077' '#1079#1072#1087#1088#1086#1089#1099' '#1082' Rail-Server'
      Category = 0
      Visible = ivNever
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton24'
        end>
    end
    object dxBarButton8: TdxBarButton
      Caption = #1042#1099#1074#1077#1089#1090#1080' '#1074#1089#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
      Category = 0
      Hint = #1042#1099#1074#1077#1089#1090#1080' '#1074#1089#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
      Visible = ivAlways
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = #1042#1099#1074#1077#1089#1090#1080' '#1074#1089#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1083#1103' '#1076#1072#1085#1085#1086#1075#1086' '#1088#1072#1089#1095#1077#1090#1072
      Category = 0
      Hint = #1042#1099#1074#1077#1089#1090#1080' '#1074#1089#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1083#1103' '#1076#1072#1085#1085#1086#1075#1086' '#1088#1072#1089#1095#1077#1090#1072
      Visible = ivAlways
      OnClick = dxBarButton9Click
    end
    object dxBarButton11: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1077#1088#1077#1074#1086
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1077#1088#1077#1074#1086
      Visible = ivAlways
      OnClick = dxBarButton11Click
    end
    object dxBarButton14: TdxBarButton
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' XML'
      Category = 0
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' XML'
      Visible = ivAlways
      OnClick = dxBarButton14Click
    end
    object dxBarButton12: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1088#1072#1089#1095#1077#1090
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1088#1072#1089#1095#1077#1090
      Visible = ivAlways
      OnClick = dxBarButton12Click
    end
    object dxBarButton15: TdxBarButton
      Caption = #1056#1072#1089#1095#1077#1090' '#1089#1091#1090#1086#1082
      Category = 0
      Hint = #1056#1072#1089#1095#1077#1090' '#1089#1091#1090#1086#1082
      Visible = ivAlways
      OnClick = dxBarButton15Click
    end
    object dxBarButton17: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      OnClick = dxBarButton17Click
    end
    object dxBarButton18: TdxBarButton
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1076#1077#1088#1077#1074#1086
      Category = 0
      Hint = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1076#1077#1088#1077#1074#1086
      Visible = ivAlways
      OnClick = dxBarButton18Click
    end
    object dxBarButton20: TdxBarButton
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
      Category = 0
      Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
      Visible = ivAlways
    end
    object dxBarButton21: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1088#1072#1089#1095#1077#1090
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1088#1072#1089#1095#1077#1090
      Visible = ivAlways
      OnClick = dxBarButton21Click
    end
    object dxBarButton22: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      OnClick = dxBarButton22Click
    end
    object dxBarButton23: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 21
      OnClick = dxBarButton23Click
    end
    object dxBarButton24: TdxBarButton
      Caption = 'FindStationsAround '
      Category = 0
      Hint = 'FindStationsAround '
      Visible = ivAlways
      OnClick = dxBarButton24Click
    end
  end
  object cxImageList_32: TcxImageList
    SourceDPI = 96
    DrawingStyle = dsTransparent
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 721843
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
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
          000083D7FAFF96DFFEFF83D7FAFF83D7FAFF96DFFEFF83D7FAFF83D7FAFF83D7
          FAFF83D7FAFF83D7FAFF83D7FAFF83D7FAFF83D7FAFF83D7FAFF83D7FAFF83D7
          FAFF83D7FAFF83D7FAFF61C0EEFF61C0EEFF61C0EEFF61C0EEFF61C0EEFF61C0
          EEFF61C0EEFF61C0EEFF61C0EEFF83D7FAFF0000000000000000000000000000
          0000BBDAEAFFC3EDFEFFC3EDFEFFC3EDFEFFC3EDFEFFC3EDFEFFC3EDFEFFC3ED
          FEFFC3EDFEFFB6E7FCFFB6E7FCFFB6E7FCFFA9E4FDFFA9E4FDFFA9E4FDFFA9E4
          FDFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF83D7
          FAFF83D7FAFF83D7FAFF83D7FAFF99DADEFF0000000000000000000000000000
          0000B4CAD1FFC3EDFEFFC3EDFEFFC3EDFEFFC3EDFEFFC3EDFEFFC3EDFEFFB6E7
          FCFFB6E7FCFFB6E7FCFFB6E7FCFFA9E4FDFFA9E4FDFFA9E4FDFFA9E4FDFF96DF
          FEFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF83D7FAFF83D7
          FAFF83D7FAFF83D7FAFF83D7FAFFA4C7D9FF0000000000000000000000000000
          0000BDC0C6FFC3EDFEFFCCF0FEFFC3EDFEFFC3EDFEFFC3EDFEFFC3EDFEFFC3ED
          FEFFC3EDFEFFC3EDFEFFB6E7FCFFB6E7FCFFA9E4FDFFA9E4FDFFA9E4FDFFA9E4
          FDFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF83D7FAFF83D7FAFF83D7
          FAFF83D7FAFF83D7FAFF83D7FAFF000000000000000000000000000000000000
          000000000000BBDAEAFFCCF0FEFFCCF0FEFFCCF0FEFFCCF0FEFFC3EDFEFFC3ED
          FEFFC3EDFEFFC3EDFEFFB6E7FCFFB6E7FCFFB6E7FCFFB6E7FCFFA9E4FDFFA9E4
          FDFFA9E4FDFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF83D7
          FAFF83D7FAFF83D7FAFF83D7FAFF000000000000000000000000000000000000
          000000000000BBDAEAFFD4F2FEFFCCF0FEFFCCF0FEFFCCF0FEFFCCF0FEFFCCF0
          FEFFC3EDFEFFCCF0FEFFC3EDFEFFC3EDFEFFB6E7FCFFB6E7FCFFB6E7FCFFA9E4
          FDFFA9E4FDFFA9E4FDFFA9E4FDFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF96DF
          FEFF96DFFEFF83D7FAFFA4C7D9FF000000000000000000000000000000000000
          000000000000C0D2D5FFD4F2FEFFD4F2FEFFD4F2FEFFD4F2FEFFD4F2FEFFCCF0
          FEFFCCF0FEFFC3EDFEFFC3EDFEFFC3EDFEFFB6E7FCFFB6E7FCFFB6E7FCFFA9E4
          FDFFA9E4FDFFA9E4FDFFA9E4FDFF96DFFEFF96DFFEFF96DFFEFF96DFFEFF96DF
          FEFF96DFFEFF83D7FAFFB4CAD1FF000000000000000000000000000000000000
          000000000000BDC0C6FFD4F2FEFFDCF4FEFFDCF4FEFFDCF4FEFFD4F2FEFFD4F2
          FEFFD4F2FEFFCCF0FEFFCCF0FEFFC3EDFEFFC3EDFEFFC3EDFEFFB6E7FCFFB6E7
          FCFFA9E4FDFFA9E4FDFFA9E4FDFFA9E4FDFFA9E4FDFFA9E4FDFF96DFFEFF96DF
          FEFF96DFFEFF96DFFEFF00000000000000000000000000000000000000000000
          00000000000000000000CBE5EDFFDCF4FEFFDCF4FEFFDCF4FEFFDCF4FEFFDCF4
          FEFFD4F2FEFFD4F2FEFFCCF0FEFFCCF0FEFFC3EDFEFFC3EDFEFFC3EDFEFFB6E7
          FCFFB6E7FCFFB6E7FCFFA9E4FDFFA9E4FDFFA9E4FDFF96DFFEFFA9E4FDFF96DF
          FEFF96DFFEFFAAD8ECFF00000000000000000000000000000000000000000000
          00000000000000000000BBDAEAFFE4FEFEFFDCFDFEFFDCFDFEFFDCF4FEFFDCF4
          FEFFDCF4FEFFD4F2FEFFD4F2FEFFCCF0FEFFCCF0FEFFC3EDFEFFC3EDFEFFB6E7
          FCFFB6E7FCFFB6E7FCFFB6E7FCFFA9E4FDFFA9E4FDFFA9E4FDFFA9E4FDFF96DF
          FEFF96DFFEFFB2CFE1FF00000000000000000000000000000000000000000000
          00000000000000000000C0D2D5FFE4FEFEFFE4FEFEFFE4FEFEFFDCFDFEFFDCFD
          FEFFDCF4FEFFDCF4FEFFD4F2FEFFD4F2FEFFCCF0FEFFCCF0FEFFC3EDFEFFC3ED
          FEFFC3EDFEFFB6E7FCFFB6E7FCFFB6E7FCFFA9E4FDFFA9E4FDFFA9E4FDFFA9E4
          FDFFA9E4FDFFBDC0C6FF00000000000000000000000000000000000000000000
          00000000000000000000C1C6C7FFE4FEFEFFE4FEFEFFE4FEFEFFE4FEFEFFDCFD
          FEFFE4F6FEFFDCF4FEFFDCF4FEFFD4F2FEFFD4F2FEFFCCF0FEFFCCF0FEFFC3ED
          FEFFC3EDFEFFC3EDFEFFB6E7FCFFB6E7FCFFB6E7FCFFB6E7FCFFA9E4FDFFA9E4
          FDFFA4E8EAFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000DAF5F5FFECFCFDFFE4FEFEFFE4FEFEFFE4FE
          FEFFE4FEFEFFDCF4FEFFDCF4FEFFDCF4FEFFD4F2FEFFD4F2FEFFCCF0FEFFCCF0
          FEFFC3EDFEFFC3EDFEFFC3EDFEFFC3EDFEFFB6E7FCFFB6E7FCFFB6E7FCFFA9E4
          FDFFB2CFE1FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000CBE5EDFFEEF4F6FFECFCFDFFECFCFDFFE4FE
          FEFFE4FEFEFFE4FEFEFFDCFDFEFFDCF4FEFFDCF4FEFFD4F2FEFFD4F2FEFFCCF0
          FEFFCCF0FEFFCCF0FEFFC3EDFEFFC3EDFEFFC3EDFEFFB6E7FCFFB6E7FCFFB6E7
          FCFFB4CAD1FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C6C6C6FFF4F5F5FFEEF4F6FFECFCFDFFECFC
          FDFFE4FEFEFFE4FEFEFFE4FEFEFFDCFDFEFFDCF4FEFFDCF4FEFFDCF4FEFFD4F2
          FEFFD4F2FEFFCCF0FEFFCCF0FEFFC3EDFEFFC3EDFEFFC3EDFEFFC3EDFEFFB6E7
          FCFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F4F5F5FFEEF4F6FFEEF4F6FFECFC
          FDFFECFCFDFFE4FEFEFFE4FEFEFFE4FEFEFFDCFDFEFFDCF4FEFFDCF4FEFFDCF4
          FEFFD4F2FEFFD4F2FEFFD4F2FEFFCCF0FEFFCCF0FEFFC3EDFEFFC3EDFEFFBBDA
          EAFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000EDEDEEFFF4F5F5FFEEF4F6FFEEF4
          F6FFECFCFDFFE4FEFEFFE4FEFEFFE4FEFEFFE4FEFEFFDCFDFEFFDCFDFEFFDCF4
          FEFFDCF4FEFFDCF4FEFFD4F2FEFFD4F2FEFFD4F2FEFFCCF0FEFFCCF0FEFFB4CA
          D1FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000E0E0E1FFF4F5F5FFF4F5F5FFEEF4
          F6FFECFCFDFFECFCFDFFE4FEFEFFE4FEFEFFE4FEFEFFE4FEFEFFE4FEFEFFDCFD
          FEFFDCFDFEFFE4F6FEFFDCF4FEFFDCF4FEFFDCF4FEFFD4F2FEFFCCF0FEFFBDC0
          C6FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000CBCCCCFFF4F5F5FFF4F5F5FFF3FC
          FDFFEEF4F6FFECFCFDFFECFCFDFFE4FEFEFFE4FEFEFFE4FEFEFFE4FEFEFFE4FE
          FEFFE4FEFEFFDCFDFEFFDCFDFEFFDCFDFEFFDCF4FEFFDCF4FEFFCBE5EDFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C6C6C6FFF4F5F5FFEEF4F6FFEEF4
          F6FFEEF4F6FFEEF4F6FFECFCFDFFECFCFDFFECFCFDFFECFCFDFFECFCFDFFE4FE
          FEFFE4FEFEFFE4FEFEFFE4FEFEFFE4FEFEFFDCFDFEFFE4FEFEFFB5D9DCFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F4F5F5FFF4F5F5FFF3FC
          FDFFEEF4F6FFF3FCFDFFF4F5F5FFEEF4F6FFECFCFDFFEEF4F6FFECFCFDFFECFC
          FDFFE4F9F8FFECFCFDFFECFCFDFFE4FEFEFFE4FEFEFFE4FEFEFFC0D2D5FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000E4F9F8FFEEF4F6FFEEF4
          F6FFEEF4F6FFEEF4F6FFEEF4F6FFF4F5F5FFF4F5F5FFF4F5F5FFEEF4F6FFEEF4
          F6FFE4FEFEFFE4FEFEFFDAF5F5FFDAF5F5FFDAF5F5FFD9EAEBFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DAF5F5FFEDEDEEFFEEF4
          F6FFECFCFDFFE4F9F8FFD9EAEBFFCBE5EDFFC9DCDFFFC0D2D5FFC2C2C2FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C9DCDFFFD1D4D1FFC0D2
          D5FF000000000000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C1C6C7FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003BBDB2FF028747FFB3C1C0FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003BBDB2FF069D9FFF069D9FFF028504FF75AE88FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003BBDB2FF069D9FFF069D9FFF03B3B3FF028747FF02630AFF51895CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C0D2
          D5FF45EEF3FF069D9FFF03B3B3FF03B3B3FF03B3B3FF03631DFF02630AFF2478
          2DFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000A9F7
          F8FFC6FEFEFF03B3B3FF069D9FFF03B3B3FF03B3B3FF028747FF02630AFF0263
          0AFF02630AFFA2BAA7FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C1C6C7FFB9FD
          FDFFFFFFFFFF45EEF3FF03B3B3FF03B3B3FF03B3B3FF03B3B3FF028504FF0263
          0AFF02630AFF034B07FF75AE88FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000A4E8EAFFE4FE
          FEFFFAFCFDFFA9F7F8FF03B3B3FF03B3B3FF03B3B3FF03C8D0FF028747FF0263
          0AFF02630AFF02630AFF034B07FF336D45FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C2C2C2FFA9F7F8FFF3FC
          FDFFECFCFDFFE4FEFEFF30D5DCFF03B3B3FF03C8D0FF03C8D0FF03B3B3FF0263
          0AFF02630AFF02630AFF034B07FF034B07FF03631DFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000A4E8EAFFDCFDFEFFF3FC
          FDFFE4FEFEFFFAFCFDFF6FF8FCFF03B3B3FF03B3B3FF03C8D0FF03C8D0FF0287
          47FF02630AFF02630AFF02630AFF034B07FF034B07FF033804FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000A9F7F8FFFAFCFDFFECFC
          FDFFE4FEFEFFE4FEFEFFC6FEFEFF03C8D0FF03C8D0FF03C8D0FF03C8D0FF03B3
          B3FF02630AFF02630AFF03631DFF02630AFF034B07FF033804FF51895CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B5D9DCFFD2FDFEFFF3FCFDFFECFC
          FDFFE4FEFEFFE4FEFEFFE4FEFEFF6FF8FCFF03C8D0FF03C8D0FF02DDE0FF02DD
          E0FF028747FF02630AFF02630AFF02630AFF034B07FF034B07FF033804FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000A9F7F8FFF3FCFDFFF3FCFDFFECFC
          FDFFE4FEFEFFE4FEFEFFE4FEFEFFA9F7F8FF02DDE0FF03C8D0FF02DDE0FF02DD
          E0FF03B3B3FF02630AFF03631DFF02630AFF034B07FF034B07FF033804FF5189
          5CFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C6FEFEFFFAFCFDFFECFCFDFFECFC
          FDFFE4FEFEFFDCFDFEFFDCFDFEFFDCFDFEFF45EEF3FF03C8D0FF02DDE0FF02DD
          E0FF02DDE0FF028747FF02630AFF03631DFF02630AFF02630AFF034B07FF0338
          04FFBCBCBDFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A9F7F8FFF3FCFDFFF3FCFDFFECFCFDFFE4FE
          FEFFE4FEFEFFDCFDFEFFD2FDFEFFDCFDFEFF6FF8FCFF02DDE0FF02DDE0FF02DD
          E0FF02F8FDFF03B3B3FF02630AFF03631DFF03631DFF034B07FF034B07FF0338
          04FF336D45FF0000000000000000000000000000000000000000000000000000
          00000000000000000000C1C6C7FFB9FDFDFFFAFCFDFFECFCFDFFECFCFDFFE4FE
          FEFFE4FEFEFFDCFDFEFFD2FDFEFFD2FDFEFFB9FDFDFF19FAF8FF02DDE0FF02DD
          E0FF02F8FDFF02DDE0FF028747FF02630AFF03631DFF02630AFF034B07FF034B
          07FF033804FFB2B4B6FF00000000000000000000000000000000000000000000
          00000000000000000000A4E8EAFFECFCFDFFF3FCFDFFECFCFDFFE4FEFEFFE4FE
          FEFFDCFDFEFFD2FDFEFFD2FDFEFFC6FEFEFFD2FDFEFF45EEF3FF02DDE0FF04E7
          F8FF04E7F8FF02F8FDFF069D9FFF02630AFF03631DFF03631DFF02630AFF034B
          07FF034B07FF114725FF00000000000000000000000000000000000000000000
          00000000000000000000B9FDFDFFFAFCFDFFF3FCFDFFECFCFDFFE4FEFEFFE4FE
          FEFFDCFDFEFFD2FDFEFFD2FDFEFFC6FEFEFFB9FDFDFFA9F7F8FF02F8FDFF04E7
          F8FF02F8FDFF02F8FDFF04E7F8FF028747FF03631DFF03631DFF03631DFF034B
          07FF034B07FF033804FFA2BAA7FF000000000000000000000000000000000000
          000000000000B5D9DCFFE4FEFEFFF3FCFDFFECFCFDFFE4FEFEFFE4FEFEFFDCFD
          FEFFD2FDFEFFD2FDFEFFC6FEFEFFB9FDFDFFB9FDFDFFB9FDFDFF45EEF3FF04E7
          F8FF02F8FDFF02F8FDFF02F8FDFF03B3B3FF02630AFF03631DFF03631DFF0363
          1DFF034B07FF034B07FF114725FF000000000000000000000000000000000000
          000000000000A9F7F8FFFAFCFDFFECFCFDFFECFCFDFFE4FEFEFFDCFDFEFFDCFD
          FEFFD2FDFEFFC6FEFEFFC6FEFEFFB9FDFDFFB9FDFDFFA9F7F8FF6FF8FCFF02F8
          FDFF02F8FDFF02F8FDFF02F8FDFF02F8FDFF028747FF02630AFF03631DFF0363
          1DFF034B07FF034B07FF033804FF6F9397FF0000000000000000000000000000
          0000B5D9DCFFD2FDFEFFF3FCFDFFECFCFDFFE4FEFEFFDCFDFEFFDCFDFEFFD2FD
          FEFFD2FDFEFFC6FEFEFFB9FDFDFFB9FDFDFFA9F7F8FFA9F7F8FFC9DCDFFF45EE
          F3FF02F8FDFF02F8FDFF02F8FDFF02F8FDFF03B3B3FF02630AFF03631DFF0363
          1DFF03631DFF034B07FF033804FF033804FF0000000000000000000000000000
          0000A9F7F8FFF3FCFDFFE4FEFEFFE4FEFEFFE4FEFEFFDCFDFEFFDCFDFEFFC6FE
          FEFFCCF0FEFFD1D4D1FF00000000C2C2C2FF000000000000000000000000B5D9
          DCFF02F8FDFF02F8FDFF02F8FDFF02F8FDFF02F8FDFF028747FF03631DFF0363
          1DFF03631DFF034B07FF034B07FF336D45FF000000000000000000000000C2C2
          C2FFB9FDFDFFEDEDEEFFE0E0E1FFD1D4D1FFC6C6C6FFC2C2C2FF000000000000
          00005056C4FFAAACDBFF00000000000000000000000000000000000000000000
          000019FAF8FF02F8FDFF02F8FDFF02F8FDFF0AFDFBFF069D9FFF03631DFF0363
          1DFF03631DFF03631DFFA2BAA7FF000000000000000000000000000000000000
          00008185DAFF9A9CBFFF00000000000000000000000000000000000000000000
          0000585DEFFF0204E9FF0202F5FF1B1EF7FF1B1EF7FF3E41F4FF000000000000
          000099DADEFF02F8FDFF02F8FDFF0AFDFBFF0AFDFBFF02F8FDFF03631DFF0363
          1DFF207F68FF0000000000000000000000000000000000000000000000000000
          0000656AD0FF0202A0FF7288BBFF000000000000000000000000000000000000
          00009499E3FF0204E9FF0202F5FF0202FEFF0202FEFF585DEFFF000000000000
          0000C2C2C2FF0AFDFBFF02F8FDFF02F8FDFF0AFDFBFF02F8FDFF069D9FFF75AE
          88FF000000000000000000000000000000000000000000000000000000000000
          000000000000656AD0FF0307C5FF0307C5FF656AD0FF9499E3FFB1B1C6FF9499
          E3FF585DEFFF0202F5FF0202FEFF0202FEFF0202FEFFAAACDBFF000000000000
          0000000000006FF8FCFF02F8FDFF0AFDFBFF19FAF8FF99DADEFFC1C6C7FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000009A9CBFFF0307C5FF0307C5FF0307C5FF0204E9FF0204
          E9FF0202F5FF0202F5FF0202FEFF0202FEFF0608FAFF00000000000000000000
          000000000000C0D2D5FF6FF8FCFFB5D9DCFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000009499E3FF656AD0FF3439D9FF3E41
          F4FF656AD0FF3E41F4FF0202FEFF0202FEFF585DEFFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000AAACDBFF0202FEFF0202FEFFBDC0C6FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000BDC0C6FF0202FEFF585DEFFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000585DEFFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000B2B4
          B6FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008697A9FF0D126FFF080C52FF030D
          2CFF8697A9FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BDC0C6FFC8C8
          D8FFC8C8D8FFEAECFBFFFAFCFDFFFAFCFDFF9A9CBFFF080C52FF080C52FF080C
          52FF8697A9FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C1C6C7FFC8C8D8FFC8C8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEDEDEEFFC6C6C6FFFFFFFFFFC8C8D8FF0D126FFF9A9CBFFF9A9C
          BFFF7D8487FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000BCBCBDFFBDC0C6FF00000000C8C8D8FFFAFC
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E1FFD8D8D9FFD8D8D9FFD8D8
          D9FFE0E0E1FFF4F5F5FFFFFFFFFFFFFFFFFFCED1FCFF121D7EFF8697A9FF6B70
          A3FF6B70A3FF0000000000000000000000000000000000000000000000000000
          000000000000000000000D126FFF2E3275FFE7E8E8FFFAFCFDFFE0E0E1FFCBCC
          CCFFCBCCCCFFC6C6C6FFC6C6C6FFE0E0E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAECFBFF121D7EFF121D7EFF0D12
          6FFF6B70A3FF0000000000000000000000000000000000000000000000000000
          0000000000000000000036398FFF5055A4FF00000000CBCCCCFFE7E8E8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCFDFF1A2298FF121D7EFF121D
          7EFF6B70A3FF0000000000000000000000000000000000000000000000000000
          0000000000000000000036398FFF6B70A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E1FFD1D4D1FFD8D8D9FFE0E0
          E1FFE7E8E8FFEDEDEEFFFFFFFFFFFFFFFFFFFFFFFFFF1A2298FF1A2298FF1A22
          98FF5055A4FF0000000000000000000000000000000000000000000000000000
          000000000000000000000D126FFF5055A4FFE7E8E8FFD1D4D1FFCBCCCCFFD1D4
          D1FFD1D4D1FFD8D8D9FFD8D8D9FFF4F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C24A6FF1A2298FF1A22
          98FF5055A4FF0000000000000000000000000000000000000000000000000000
          000000000000000000000D126FFF5055A4FFE7E8E8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C24A6FF1C24A6FF1A22
          98FF5055A4FF0000000000000000000000000000000000000000000000000000
          000000000000000000000D126FFF6B70A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEEFFD8D8D9FFD1D4D1FFD8D8
          D9FFE0E0E1FFE0E0E1FFE0E0E1FFFFFFFFFFFFFFFFFF242BACFF1C24A6FF1C24
          A6FF3A3EB6FF0000000000000000000000000000000000000000000000000000
          000000000000000000000D126FFF6B70A3FFB6E7FCFF96DFFEFF6FF8FCFF6FF8
          FCFFDCFDFEFFD8D8D9FFE0E0E1FFF4F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF242BACFF1C24A6FF1C24
          A6FF2F37ADFF0000000000000000000000000000000000000000000000000000
          00000000000000000000121D7EFF51895CFF83D7FAFFA9E4FDFFB9FDFDFF6FF8
          FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F37ADFF1C24A6FF1C24
          A6FF2F37ADFF0000000000000000000000000000000000000000000000000000
          000000000000BCBCBDFF121D7EFF51895CFFA9E4FDFFFFFFFFFFFFFFFFFFA9F7
          F8FFFAFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F5F5FFE7E8
          E8FFE0E0E1FFE0E0E1FFE0E0E1FFFFFFFFFFFFFFFFFF2930B7FF242BACFF1C24
          A6FF2F37ADFF0000000000000000000000000000000000000000000000000000
          000000000000B2B4B6FF121D7EFF5C8D82FF24E4F4FF6FF8FCFFD2FDFEFF45EE
          F3FFDBE9F3FFE0E0E1FFE0E0E1FFEDEDEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F37ADFF1C24A6FF242B
          ACFF2F37ADFF0000000000000000000000000000000000000000000000000000
          000000000000B1B1C6FF121D7EFF5C8D82FFB9FDFDFFC6FEFEFFECFCFDFF6FF8
          FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F37ADFF252CB3FF242B
          ACFF2930B7FF0000000000000000000000000000000000000000000000000000
          000000000000B2B4B6FF121D7EFF479F9EFFA9F7F8FFF3FCFDFFDCFDFEFF61C0
          EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3EB6FF1C24A6FF252C
          B3FF2930B7FF0000000000000000000000000000000000000000000000000000
          0000000000009A9CBFFF121D7EFF8ED2A9FF6FF8FCFF6FF8FCFF83D7FAFF96DF
          FEFFFAFCFDFFE7E8E8FFEEF4F6FFE7E8E8FFE7E8E8FFE7E8E8FFE7E8E8FFF4F5
          F5FFF2F4FEFFFAFCFDFFFAFCFDFFFFFFFFFFFFFFFFFF3A3EB6FF252CB3FF252C
          B3FF252CB3FF0000000000000000000000000000000000000000000000000000
          0000000000009A9CBFFF0D126FFF6B70A3FF9499E3FF9499E3FF9499E3FF9499
          E3FF9499E3FF9499E3FF8185DAFF8185DAFF8185DAFF8185DAFF8185DAFF656A
          D0FF656AD0FF656AD0FF656AD0FF656AD0FF5056C4FF2930B7FF252CB3FF252C
          B3FF252CB3FF0000000000000000000000000000000000000000000000000000
          0000000000008697A9FF0D126FFF121D7EFF0D126FFF121D7EFF121D7EFF121D
          7EFF121D7EFF1A2298FF121D7EFF1A2298FF1A2298FF1A2298FF1A2298FF1C24
          A6FF1A2298FF1C24A6FF1C24A6FF1C24A6FF1C24A6FF252CB3FF252CB3FF252C
          B3FF2930B7FF0000000000000000000000000000000000000000000000000000
          0000000000008697A9FF0D126FFF121D7EFF121D7EFF121D7EFF121D7EFF121D
          7EFF121D7EFF121D7EFF1A2298FF1A2298FF1A2298FF1A2298FF1A2298FF1C24
          A6FF1C24A6FF1C24A6FF252CB3FF252CB3FF252CB3FF252CB3FF2930B7FF2930
          B7FF252CB3FFBDC0C6FF00000000000000000000000000000000000000000000
          0000000000007288BBFF0D126FFF121D7EFF121D7EFF121D7EFF8185DAFF9499
          E3FF8185DAFF656AD0FF656AD0FF656AD0FF8185DAFF8185DAFF8185DAFF8185
          DAFF8185DAFF3A3EB6FF242BACFF242BACFF252CB3FF252CB3FF252CB3FF2930
          B7FF252CB3FFBDC0C6FF00000000000000000000000000000000000000000000
          0000000000006B70A3FF0D126FFF121D7EFF0D126FFF36398FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAACFCFF9499E3FFAAAC
          FCFFFFFFFFFFAAACFCFF1A2298FF252CB3FF252CB3FF252CB3FF2930B7FF2930
          B7FF252CB3FFBDC0C6FF00000000000000000000000000000000000000000000
          0000000000006B70A3FF080C52FF0D126FFF0D126FFF36398FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5056C4FF121D7EFF1C24
          A6FFFFFFFFFFAAACFCFF1C24A6FF252CB3FF252CB3FF252CB3FF252CB3FF2930
          B7FF252CB3FFB1B1C6FF00000000000000000000000000000000000000000000
          0000000000006B70A3FF0D126FFF0D126FFF0D126FFF36398FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF656AD0FF1A2298FF242B
          ACFFF2F4FEFF9499E3FF1C24A6FF242BACFF252CB3FF2930B7FF2930B7FF2930
          B7FF252CB3FFB1B1C6FF00000000000000000000000000000000000000000000
          000000000000494D84FF080C52FF0D126FFF0D126FFF36398FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5056C4FF1A2298FF242B
          ACFFEAECFBFF9499E3FF1C24A6FF252CB3FF252CB3FF2930B7FF2930B7FF2930
          B7FF252CB3FFB1B1C6FF00000000000000000000000000000000000000000000
          000000000000494D84FF080C52FF0D126FFF080C52FF36398FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF656AD0FF1A2298FF242B
          ACFFFFFFFFFFAAACFCFF1C24A6FF252CB3FF252CB3FF2930B7FF252CB3FF2930
          B7FF252CB3FFB1B1C6FF00000000000000000000000000000000000000000000
          0000000000002E3275FF080C52FF080C52FF080C52FF494D84FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5056C4FF1A2298FF242B
          ACFFFFFFFFFFAAACFCFF1A2298FF252CB3FF252CB3FF252CB3FF2930B7FF2930
          B7FF1C24A6FF9A9CBFFF00000000000000000000000000000000000000000000
          0000000000000D2D54FF030D2CFF080C52FF080C52FF36398FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5056C4FF1A2298FF1C24
          A6FFF2F4FEFFAAACFCFF1C24A6FF242BACFF242BACFF242BACFF252CB3FF242B
          ACFF1C24A6FFB1B1C6FF00000000000000000000000000000000000000000000
          00000000000000000000BCBCBDFF00000000B2B4B6FF9A9CBFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5056C4FF1A2298FF1A22
          98FFCED1FCFF9499E3FF1A2298FF242BACFF1C24A6FF242BACFF1C24A6FF1C24
          A6FF9A9CBFFF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C2C2
          C2FFC6C6C6FFD1D4D1FFD8D8D9FFE7E8E8FFEDEDEEFFEEF4F6FFCED1FCFFAAAC
          FCFFEAECFBFFAAACFCFF2F37ADFF1A2298FF1A2298FF1A2298FF1A2298FFB1B1
          C6FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C2C2
          C2FFC6C6C6FFC2C2C2FF0000000000000000B1B1C6FF7288BBFFB1B1C6FF0000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
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
          0000B2CFE1FFAAD8ECFFB2CFE1FFB5D9DCFFB2CFE1FFB2CFE1FFA4C7D9FFA4C7
          D9FFA4C7D9FFA4C7D9FFA4C7D9FFA4C7D9FFA4C7D9FFA4C7D9FFB4CAD1FFA4C7
          D9FFA4C7D9FF9DB9C8FF9DB9C8FF9DB9C8FF9DB9C8FF9DB9C8FF9DB9C8FFA8BB
          C0FF9DB9C8FF9DB9C8FF9DB9C8FFA8BBC0FF0000000000000000000000000000
          0000C9DCDFFFDCF4FEFFDCF4FEFFD4F2FEFFD4F2FEFFD4F2FEFFD4F2FEFFD4F2
          FEFFCCF0FEFFCCF0FEFFC3EDFEFFC3EDFEFFC3EDFEFFB6E7FCFFB6E7FCFFB6E7
          FCFFB6E7FCFFAAD8ECFFA9E4FDFFBBDAEAFFA9E4FDFFAAD8ECFFAAD8ECFFAAD8
          ECFFAAD8ECFFAAD8ECFFAAD8ECFFB4CAD1FF0000000000000000000000000000
          000000000000D4F2FEFFD4F2FEFFD4F2FEFFD4F2FEFFD4F2FEFFD4F2FEFFCCF0
          FEFFCCF0FEFFCCF0FEFFC3EDFEFFC3EDFEFFC3EDFEFFB6E7FCFFB6E7FCFFBBDA
          EAFFB6E7FCFFA9E4FDFFB6E7FCFFA9E4FDFFAAD8ECFFAAD8ECFFAAD8ECFFAAD8
          ECFFAAD8ECFFA4C7D9FFAAD8ECFFC1C6C7FF0000000000000000000000000000
          0000C1C6C7FFD4F2FEFFDCF4FEFFDCF4FEFFDCF4FEFFD4F2FEFFD4F2FEFFD4F2
          FEFFD4F2FEFFCCF0FEFFCCF0FEFFC3EDFEFFC3EDFEFFC3EDFEFFB6E7FCFFB6E7
          FCFFB6E7FCFFA9E4FDFFBBDAEAFFAAD8ECFFA9E4FDFFAAD8ECFFAAD8ECFFAAD8
          ECFFAAD8ECFFAAD8ECFFAAD8ECFF000000000000000000000000000000000000
          000000000000CBE5EDFFE4F6FEFFDCF4FEFFDCF4FEFFDCF4FEFFDCF4FEFFDCF4
          FEFFD4F2FEFFD4F2FEFFCCF0FEFFCCF0FEFFC3EDFEFFC3EDFEFFC3EDFEFFB6E7
          FCFFB6E7FCFFB6E7FCFFAAD8ECFFB6E7FCFFAAD8ECFFAAD8ECFFAAD8ECFFAAD8
          ECFFAAD8ECFFAAD8ECFFB2CFE1FF000000000000000000000000000000000000
          000000000000C9DCDFFFE4F6FEFFE4F6FEFFE4F6FEFFE4F6FEFFE4F6FEFFDCF4
          FEFFDCF4FEFFD4F2FEFFD4F2FEFFCCF0FEFFCCF0FEFFC3EDFEFFC3EDFEFFC3ED
          FEFFB6E7FCFFB6E7FCFFB6E7FCFFAAD8ECFFA4C7D9FFA4C7D9FFA4C7D9FF99DA
          DEFFAAD8ECFFAAD8ECFF00000000000000000000000000000000000000000000
          000000000000C0D2D5FFECFCFDFFE4F6FEFFBBDAEAFF7FA2CCFF7FA2CCFF7FA2
          CCFF7FA2CCFF7FA2CCFF7FA2CCFF8FB3DCFFCCF0FEFFCCF0FEFFC3EDFEFFC3ED
          FEFFC3EDFEFFB6E7FCFFAAD8ECFF8DCACCFF78AFB0FF7FA2CCFF8DB5BEFFA4C7
          D9FFAAD8ECFFAAD8ECFFC1C6C7FF000000000000000000000000000000000000
          000000000000C1C6C7FFE4F6FEFFECFCFDFFDBE9F3FFBBDAEAFFB2CFE1FFBBDA
          EAFFB2CFE1FFB2CFE1FFAAD8ECFFBBDAEAFFD4F2FEFFCCF0FEFFCCF0FEFFC3ED
          FEFFC3EDFEFFB6E7FCFF99DADEFF585DEFFF3439D9FF2968B7FF7288BBFF8DB5
          BEFFAAD8ECFFAAD8ECFFC2C2C2FF000000000000000000000000000000000000
          00000000000000000000DBE9F3FFF3FCFDFFF3FCFDFFF3FCFDFFECFCFDFFECFC
          FDFFE4F6FEFFE4F6FEFFE4F6FEFFDCF4FEFFD4F2FEFFD4F2FEFFCCF0FEFFCCF0
          FEFFC3EDFEFFB6E7FCFF585DEFFF0202FEFF0202FEFF0202FEFF6B70A3FF7FA2
          CCFF99DADEFFB4CAD1FF00000000000000000000000000000000000000000000
          00000000000000000000CBE5EDFFFAFCFDFFF3FCFDFFECFCFDFFF2F4FEFFF2F4
          FEFFF2F4FEFFECFCFDFFEAECFBFFDCF4FEFFDCF4FEFFD4F2FEFFCCF0FEFFD4F2
          FEFFCCF0FEFFC3EDFEFF3234F0FF0202FEFF0202FEFF0202FEFF5056C4FF8DCA
          CCFFAAD8ECFF0000000000000000000000000000000000000000000000000000
          00000000000000000000C0D2D5FFF3FCFDFFFAFCFDFF7FA2CCFF7FA2CCFFA4C7
          D9FFB2CFE1FFA4C7D9FFA4C7D9FFA4C7D9FFA4C7D9FFA4C7D9FFA4C7D9FF8FB3
          DCFF8FB3DCFF8FB3DCFF585DEFFF0202FEFF0202FEFF0608FAFF7288BBFFAAD8
          ECFFAAD8ECFFC2C2C2FF00000000000000000000000000000000000000000000
          0000000000000000000000000000FAFCFDFFFAFCFDFFECFCFDFF7FA2CCFF9DB9
          C8FF8FB3DCFF8FB3DCFF8FB3DCFF8FB3DCFF8FB3DCFF8FB3DCFF8FB3DCFF8FB3
          DCFF8FB3DCFF7FA2CCFF7FA2CCFF656AD0FF3439D9FF7288BBFF7FA2CCFFAAD8
          ECFFBBDAEAFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000ECFCFDFFFAFCFDFFFAFCFDFFFAFCFDFFFAFC
          FDFFF3FCFDFFF3FCFDFFF3FCFDFFF2F4FEFFECFCFDFFE4F6FEFFE4F6FEFFDCF4
          FEFFDCF4FEFFD4F2FEFFCCF0FEFFBBDAEAFF9499E3FF8FB3DCFFB2CFE1FFB6E7
          FCFFC0D2D5FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D9EAEBFFFFFFFFFFFAFCFDFFFAFCFDFFFAFC
          FDFFFAFCFDFFFAFCFDFFFAFCFDFFF3FCFDFFECFCFDFFF2F4FEFFE4F6FEFFE4F6
          FEFFDCF4FEFFDCF4FEFFCCF0FEFF8FB3DCFF3234F0FF9DB9C8FFA4C7D9FFBBDA
          EAFFC1C6C7FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D8D8D9FFFFFFFFFFFAFCFDFFAAACDBFF7FA2
          CCFF7FA2CCFF7FA2CCFF7FA2CCFF7FA2CCFF7FA2CCFF7FA2CCFF7FA2CCFF7FA2
          CCFF7FA2CCFF7FA2CCFF7FA2CCFF5056C4FF0202F5FF8697A9FF9DB9C8FFB2CF
          E1FFBCBCBDFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000CBCCCCFFFFFFFFFFFFFFFFFFCBE5EDFFB2CF
          E1FFBBDAEAFFB2CFE1FFBBDAEAFFB2CFE1FFB2CFE1FFB2CFE1FFB2CFE1FFB2CF
          E1FFB2CFE1FFB2CFE1FFA4C7D9FF3E41F4FF0202F5FF7288BBFF8DB5BEFF9DB9
          C8FFBCBCBDFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C6C2C6FFFAFCFDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFAFCFDFFFAFCFDFFFAFCFDFFF3FCFDFFF3FCFDFFF3FCFDFFF3FCFDFFECFC
          FDFFF2F4FEFFF2F4FEFFD9EAEBFF3234F0FF0202FEFF5056C4FF8697A9FF9A9C
          BFFFBCBCBDFF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000EDEDEEFFFFFFFFFFFFFFFFFFDBE9
          F3FFDBE9F3FFDBE9F3FFDBE9F3FFDBE9F3FFDBE9F3FFD4F2FEFFDBE9F3FFDBE9
          F3FFDBE9F3FFCBE5EDFFB5D9DCFF0608FAFF0202FEFF3439D9FF8697A9FF9BA0
          A1FFB2B4B6FF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000E0E0E1FFFFFFFFFFFAFCFDFF7FA2
          CCFF7288BBFF7288BBFF7288BBFF7288BBFF7288BBFF7288BBFF7288BBFF7288
          BBFF5E9DC0FF7288BBFF5056C4FF0202FEFF0202FEFF151AEAFF6F9397FF8D91
          91FFB2B4B6FF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000D1D4D1FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFAFCFDFFFAFCFDFFFAFCFDFFFAFCFDFFFAFCFDFFFAFCFDFFFAFC
          FDFFFAFCFDFFEEF4F6FF8185DAFF0202FEFF0202FEFF0202FEFF636E76FF8697
          A9FFAAACACFFBCBCBDFF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000CBCCCCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFAFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCFDFFFFFF
          FFFFFAFCFDFFEEF4F6FF585DEFFF0202FEFF0202FEFF0202FEFF5055A4FF7D84
          87FFAAACACFFBCBCBDFF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000C2C2C2FFFAFCFDFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFC
          FDFFFAFCFDFFE7F0F2FF3234F0FF0202FEFF0202FEFF0202FEFF5055A4FF8697
          A9FFAAACACFFBCBCBDFF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000C2C2C2FFEEF4F6FFFFFFFFFFFFFF
          FFFFFAFCFDFFF3FCFDFFE7F0F2FFE0E0E1FFD8D8D9FFD1D4D1FFCBCCCCFFC6C6
          C6FFC6C6C6FF000000003234F0FF0202FEFF0202FEFF0202FEFF5055A4FF9BA0
          A1FFB2B4B6FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C9DCDFFFE0E0E1FFD1D4
          D1FF00000000C2C2C2FF00000000000000000000000000000000000000000000
          000000000000BCBCBDFF656AD0FF0202FEFF0202FEFF0608FAFF9BA0A1FFAAAC
          ACFFBCBCBDFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BCBCBDFF8185DAFF5056C4FF9A9CBFFFB2B4B6FFBCBC
          BDFFBCBCBDFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000BCBCBDFFBCBCBDFFBCBCBDFF0000
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
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000BCBCBDFF5D5D5DFF5D5D5DFF7D8487FFAAACACFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000585D15FF365008FF2F3504FF2F3504FF1A0F04FF080907FF0318
          03FF1F1E1DFF5D5D5DFF7D8487FFB2B4B6FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000C9C5B9FFBDC44EFF607E10FF607E10FF486C04FF486C04FF486C04FF3650
          08FF365008FF2F3504FF12290BFF12290BFF1A0F04FF1F1E1DFF5D5D5DFF8D91
          91FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B2B08DFF9A9A33FF9A9A33FF607E10FF5E9E15FF2F7C05FF607E10FF607E
          10FF607E10FF486C04FF486C04FF486C04FF486C04FF486C04FF486C04FF3650
          08FF2F3504FF282B26FF7D7673FFBCBCBDFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A4A06BFF2F7C05FF757F30FF39FDADFF32CF7BFF7CA64DFF926110FF7E91
          13FF5E9E15FF5E9E15FF7E9113FF607E10FF486C04FF486C04FF486C04FF486C
          04FF486C04FF607E10FF585D15FF2F3504FF2F3504FF5D5D5DFFBCBCBDFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A4A06BFF2F7C05FF65C66AFF0EFEDDFF0CE999FF0FFEBBFF21FED5FF65C6
          6AFF9C811EFF757F30FF757F30FF7E9113FF5E9E15FF7E9113FF7E9113FF607E
          10FF607E10FF486C04FF486C04FF607E10FF607E10FF585D15FF2F3504FF383A
          36FF9BA0A1FF0000000000000000000000000000000000000000000000000000
          0000A4A06BFF607E10FF7CA64DFF56F48DFF0CE999FF0CE999FF19FAF8FF7CA6
          4DFF65C66AFF19FAF8FF21FED5FF39FDADFF65C66AFF9C811EFF7E9113FF5E9E
          15FF5E9E15FF7E9113FF7E9113FF607E10FF486C04FF486C04FF607E10FF486C
          04FF2F3504FF282B26FF9BA0A1FF000000000000000000000000000000000000
          00009A9A33FF607E10FF757F30FF7CA64DFF757F30FF7CA64DFF65C66AFF9C81
          1EFF56F48DFF19FAF8FF21FED5FF19FAF8FF21FED5FF757F30FF32CF7BFF32CF
          7BFF65C66AFF757F30FF9A9A33FF9A9A33FF9A9A33FF9A9A33FFBDC44EFFBDC4
          4EFF607E10FF486C04FF2F3504FF383A36FFBCBCBDFF00000000000000000000
          0000757F30FF607E10FF39FDADFF21FED5FF39FDADFF56F48DFF7CA64DFF7E91
          13FF9A9A33FF7CA64DFF65C66AFF56F48DFF65C66AFF7CA64DFF0CE999FF0CE9
          99FF0CE999FF21FED5FF757F30FF365008FF585D15FFC4E09AFFFFFFFFFFFFFF
          FFFFFAF7CCFF9A9A33FF7E9113FF486C04FF12290BFF00000000000000000000
          0000757F30FF7E9113FF56F48DFF0FFEBBFF0FFEBBFF0AFDFBFF56F48DFF7CA6
          4DFF39FDADFF56F48DFF65C66AFF9A9A33FF5E9E15FF9A9A33FF7CA64DFF65C6
          6AFF32CF7BFF56F48DFF02630AFF263750FF384F51FF282B26FF415E5EFFFAF7
          CCFF65C66AFF9A9A33FF9A9A33FF9C811EFF607E10FFA4A06BFF000000000000
          00007E9113FF7E9113FF757F30FF757F30FF7CA64DFF65C66AFF9A9A33FF65C6
          6AFF0FFEBBFF069D9FFF0EFEDDFF39FDADFF7CA64DFF39FDADFF65C66AFF7CA6
          4DFF9A9A33FFBE9819FF9C811EFF607E10FF24782DFF384F51FF5E9E15FF32CF
          7BFF6FF8FCFF45EEF3FF30D5DCFF0DB227FF9C811EFF00000000000000000000
          0000607E10FF757F30FF0FFEBBFF32CF7BFF32CF7BFF7CA64DFF7E9113FF757F
          30FF7CA64DFF7CA64DFF56F48DFF7CA64DFF56F48DFF0EFEDDFF0CE999FF19FA
          F8FF56F48DFF02630AFF365008FF607E10FF5E9E15FF7E9113FF9A9A33FF18D9
          2EFF5AD8C0FF6FF8FCFF6FF8FCFF02D716FFC5C0AFFF00000000000000000000
          00007E9113FF757F30FF56F48DFF32CF7BFF0EFEDDFF0FFEBBFF757F30FF0FFE
          BBFF32CF7BFF32CF7BFF7CA64DFF7E9113FF9A9A33FF7CA64DFF7CA64DFF56F4
          8DFF757F30FF020F13FF384F51FF1F1E1DFF020F13FF5E9E15FF365008FF486C
          04FF7E9113FF5E9E15FF5E9E15FFB2B08DFF0000000000000000000000000000
          00005E9E15FF757F30FF65C66AFF65C66AFF7CA64DFF9A9A33FF9A9A33FF56F4
          8DFF32CF7BFF0EFEDDFF56F48DFF65C66AFF0FFEBBFF3BB84AFF65C66AFF9A9A
          33FF5E9E15FF7E9113FF7E9113FF486C04FF607E10FF2F7C05FF020F13FF282B
          26FF000000FF365008FFD2BD7EFF000000000000000000000000000000000000
          00002F7C05FF65C66AFF0EFEDDFF0FFEBBFF21FED5FF7CA64DFF7CA64DFF5189
          5CFF7CA64DFF7CA64DFF9C811EFF65C66AFF32CF7BFF0CE999FF21FED5FF9261
          10FF092625FF336D45FF034B07FF7E9113FF9A9A33FF7E9113FF607E10FF607E
          10FF365008FFBDC44EFF0000000000000000000000000000000000000000C5C0
          AFFF7E9113FF585D15FF51895CFF51895CFF56F48DFF9A9A33FF39FDADFF0CE9
          99FF0FFEBBFF56F48DFF7CA64DFF32CF7BFF7CA64DFF7CA64DFF9A9A33FF5E9E
          15FF486C04FF51895CFF034B07FF5E9E15FF033804FF263750FF033804FF486C
          04FFBDC44EFF000000000000000000000000000000000000000000000000C5C0
          AFFF7E9113FF585D15FF114725FF114725FF028504FF365008FF365008FF757F
          30FF7CA64DFF7CA64DFF65C66AFF0CE999FF0FFEBBFF39FDADFF5E9E15FF5189
          5CFF7CA64DFF5E9E15FF9A9A33FF7E9113FF486C04FF5E9E15FF365008FF9A9A
          33FF00000000000000000000000000000000000000000000000000000000B2B0
          8DFF607E10FF585D15FF585D15FF607E10FF7E9113FF585D15FF365008FF2F7C
          05FF02630AFF052605FF2F3504FF7E9113FF585D15FF757F30FF7E9113FFD2BD
          7EFF75AE88FF5E9E15FF757F30FF6F9397FF51895CFF607E10FF9A9A33FFC9C5
          B9FF00000000000000000000000000000000000000000000000000000000B2B0
          8DFF7E9113FF585D15FF365008FF585D15FF607E10FF585D15FF365008FF7E91
          13FF585D15FF607E10FF7E9113FF607E10FF365008FF033804FF7E9113FF3650
          08FF2F3504FF607E10FF757F30FF9A9A33FF7CA64DFF9A9A33FFC5C0AFFF0000
          000000000000000000000000000000000000000000000000000000000000A4A0
          6BFF607E10FF365008FF365008FF607E10FF585D15FF585D15FF607E10FF9261
          10FF365008FF2F3504FF7E9113FF757F30FF585D15FF7E9113FF7E9113FF607E
          10FF607E10FF7E9113FF585D15FF2F3504FF607E10FFD6D9ABFF000000000000
          0000000000000000000000000000000000000000000000000000000000009A9A
          33FF757F30FF5C8D82FF4A4A4BFF7E9113FF585D15FF585D15FF607E10FF607E
          10FF585D15FF607E10FF7E9113FF585D15FF607E10FF9A9A33FF585D15FF585D
          15FF7E9113FF607E10FF607E10FF7E9113FFD2BD7EFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000009A9A
          33FF757F30FF8EBF99FF8EBF99FF51895CFF5056C4FF5055A4FF607E10FF585D
          15FF585D15FF7E9113FF757F30FF585D15FF607E10FFBE9819FF9A9A33FF607E
          10FF9C811EFF9A9A33FF607E10FFA4A06BFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007E91
          13FFBE9819FF9A9A33FFBE9819FFBE9819FFA4A06BFFBDC44EFF7E9113FF9261
          10FF607E10FF7E9113FF585D15FF607E10FF7E9113FF486C04FF607E10FF7E91
          13FF486C04FF7E9113FFBDC44EFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BCBCBDFF607E
          10FF7E9113FF757F30FF9C811EFFBE9819FF9A9A33FFBE9819FFBDC44EFFBDC4
          4EFFEFBA39FFBDC44EFFBE9819FFD89A30FFD89A30FFBE9819FF607E10FF7E91
          13FFBE9819FF9A9A33FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B5BFA9FF3650
          08FF926110FFBE9819FFBE9819FF9C811EFF9C811EFF9C811EFF9C811EFF9C81
          1EFF9C811EFF9C811EFFBE9819FFBDC44EFF9A9A33FFBDC44EFFEFBA39FFBDC4
          4EFFBE9819FFC9C5B9FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B2B08DFF2F7C
          05FF9C811EFFFEF033FFFEF033FFFEF033FFFEF033FFFEF033FFFEF033FFFEF0
          33FFEFBA39FFFEF033FFD89A30FFBE9819FFBE9819FFBE9819FF9C811EFF9C81
          1EFFD2BD7EFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000A4A06BFF3650
          08FF9C811EFFFEF033FFFEF033FFFEF033FFFEF033FFFEF033FFFEF033FFFEF0
          33FFFEF033FFFEF033FFFEF033FFFEF033FFFEF033FFD89A30FF2F7C05FFBDC4
          4EFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000A4A06BFF3650
          08FF926110FFBE9819FFBE9819FFEFBA39FFEFBA39FFFEF033FFFEF033FFFEF0
          33FFFEF033FFFEF033FFFEF033FFFEF033FFFEF033FF7E9113FF7E9113FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000BCBCBDFFB2B08DFFA4A06BFF9A9A33FF9C811EFF9C811EFF7E9113FF9C81
          1EFFBE9819FFBE9819FFFCB503FFEFBA39FF7E9113FF607E10FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000BCBCBDFFB5BFA9FFB2B08DFFA4A06BFFA4A06BFFBCBCBDFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
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
          00000000000000000000000000000000000000000000AAACACFF7D8487FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000009BA0A1FF1F1E1DFF4A4A4BFF0000
          0000000000004A4A4BFF060202FF7D8487FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000007D7673FF282B26FF5D5D5DFF8D9191FF0000
          00008D9191FF000000FF000000FF000000FF00000000C6C6C6FFBCBCBDFFBCBC
          BDFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000005D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF7D8487FF7D76
          73FF4A4A4BFF383A36FF000000FF000000FF1F1E1DFF121212FF636E76FF4A4A
          4BFF7D8487FF9BA0A1FF8D9191FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000BCBCBDFF636E76FF282B26FF8D9191FF383A36FF636E76FFBCBCBDFF7D84
          87FF0000000000000000000000FF000000FF000000FF020202FFCBCCCCFF383A
          36FF121212FF020202FF000000FF9BA0A1FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00007D7673FF4A4A4BFF5D5D5DFF5D5D5DFF5D5D5DFF8D9191FF060202FF0000
          00FF121212FF080907FF000000FF000000FF000000FF000000FF1F1E1DFF1F1E
          1DFF7D7673FF282B26FF000000FF282B26FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B2B4B6FF5D5D5DFF121212FF1F1E1DFF5D5D5DFF4A4A4BFF383A36FF0809
          07FF000000FF000000FF000000FF020202FF000000FF000000FF000000FF4A4A
          4BFFE0E0E1FF8D9191FF000000FF383A36FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008D9191FF000000FF000000FF4A4A4BFF9BA0A1FF636E76FF12290BFF0526
          05FF031803FF020A02FF000000FF282B26FF5D5D5DFF020202FF000000FF0602
          02FF060202FF8D9191FF9BA0A1FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009BA0
          A1FF060202FF000000FF383A36FF8D9191FF2B4B3AFF034B07FF034B07FF0338
          04FF052605FF031803FF020A02FF020A02FF121212FF020202FF080907FF636E
          76FFBCBCBDFF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000009BA0A1FF000000000000000000000000383A
          36FF000000FF000000FF031803FF034B07FF02630AFF02630AFF034B07FF034B
          07FF033804FF052605FF031803FF020A02FF000000FF000000FFBCBCBDFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000007D7673FF7D8487FF0000000000000000000000000000
          0000383A36FF031803FF034B07FF028504FF028504FF028504FF02630AFF0263
          0AFF034B07FF033804FF052605FF031803FF020A02FF000000FF5D5D5DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000007D7673FF7D7673FFCBCCCCFFD8D8D9FF000000007D7673FF2B4B
          3AFF033804FF02630AFF03970BFF03970BFF03970BFF028504FF02630AFF0263
          0AFF02630AFF034B07FF033804FF052605FF031803FF000000FF000000FFB2B4
          B6FF000000000000000000000000000000000000000000000000000000000000
          0000BCBCBDFF5D5D5DFF8D9191FFE7E8E8FFFAFCFDFF7D8487FF052605FF034B
          07FF028504FF03970BFF02B512FF02B512FF03970BFF03970BFF03970BFF0285
          04FF02630AFF02630AFF034B07FF033804FF031803FF020A02FF000000FF4A4A
          4BFF000000000000000000000000000000000000000000000000000000000000
          0000B2B4B6FF020202FF282B26FF5D5D5DFF052605FF052605FF02630AFF0285
          04FF03970BFF02B512FF02D716FF02B512FF02B512FF02B512FF03970BFF0397
          0BFF028504FF02630AFF02630AFF034B07FF033804FF031803FF020202FF0202
          02FF000000000000000000000000000000000000000000000000000000000000
          00001F1E1DFF000000FF282B26FF12290BFF034B07FF028504FF03970BFF02B5
          12FF02D716FF02D716FF02FC24FF02D716FF02B512FF02B512FF02B512FF0397
          0BFF03970BFF028504FF02630AFF02630AFF034B07FF052605FF031803FF0000
          00FF9BA0A1FF000000000000000000000000000000000000000000000000C2C2
          C2FF7D8487FF000000FF052605FF034B07FF028504FF03970BFF02B512FF02D7
          16FF02FC24FF02FC24FF20F85CFF02FC24FF02D716FF02B512FF02B512FF02B5
          12FF02B512FF03970BFF028504FF02630AFF034B07FF033804FF031803FF0000
          00FF7D8487FF0000000000000000000000000000000000000000000000000000
          00002B4B3AFF033804FF02630AFF03970BFF02B512FF02D716FF02D716FF02FC
          24FF02FC24FF02FA03FF56F48DFF56F48DFF02D716FF02D716FF02D716FF02B5
          12FF02B512FF02B512FF03970BFF028504FF02630AFF034B07FF052605FF020A
          02FF7D7673FF0000000000000000000000000000000000000000000000009BA0
          A1FF033804FF02630AFF03970BFF02B512FF02D716FF02D716FF02FC24FF02FC
          24FF02FC24FF02FC24FF56F48DFFD2FEEAFF02FC24FF02D716FF02D716FF02D7
          16FF02B512FF02B512FF03970BFF028504FF02630AFF034B07FF033804FF0318
          03FF7D7673FF0000000000000000000000000000000000000000000000005189
          5CFF02630AFF03970BFF02B512FF02D716FF02D716FF02FC24FF02FC24FF02FC
          24FF02FC24FF02FC24FF02FC24FFFAFCFDFF56F48DFF02D716FF02D716FF02D7
          16FF02B512FF02B512FF03970BFF03970BFF02630AFF02630AFF033804FF0318
          03FFB2B4B6FF0000000000000000000000000000000000000000000000002478
          2DFF03970BFF02B512FF02D716FF02D716FF02FC24FF02FC24FF02FC24FF02FC
          24FF02FC24FF02FC24FF02FC24FF56F48DFFFAFCFDFF02FC24FF02D716FF02D7
          16FF02D716FF02B512FF02B512FF03970BFF028504FF02630AFF034B07FF0338
          04FF000000000000000000000000000000000000000000000000000000003BB8
          4AFF03970BFF02B512FF02D716FF02FC24FF02FC24FF02FC24FF02FC24FF02FC
          24FF02FC24FF02FC24FF02FC24FF02FC24FFC6FEE6FFA1FCD1FF02FA03FF02D7
          16FF02D716FF02B512FF02B512FF03970BFF028504FF02630AFF033804FF7D84
          87FF000000000000000000000000000000000000000000000000000000008EBF
          99FF02B512FF02D716FF02D716FF02FC24FF02FC24FF02FC24FF02FC24FF02FC
          24FF02FC24FF02FC24FF02FC24FF02FC24FF02FC24FFA1FCD1FF56F48DFF02D7
          16FF02D716FF02D716FF02B512FF03970BFF028504FF02630AFF336D45FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000DB227FF02B512FF02D716FF02FC24FF02FC24FF02FC24FF02FC24FF02FC
          24FF02FC24FF02FC24FF02FC24FF02FC24FF02FC24FF02FC24FF20F85CFF02FC
          24FF02D716FF02B512FF02B512FF03970BFF028504FF2E9839FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000DB227FF02B512FF02D716FF02D716FF02FC24FF02FA03FF02FC
          24FF02FC24FF02FC24FF02FC24FF02FA03FF02FC24FF02FC24FF02FC24FF02FC
          24FF02FC24FF18D92EFF18D92EFF3BB84AFF8EBF99FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000065C66AFF0DB227FF03970BFF0DB227FF0DB227FF20F8
          5CFFD2FEEAFF02B512FF3BB84AFF8EBF99FF8EBF99FFA2BAA7FFA2BAA7FFB3C1
          C0FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B3C1C0FF56F4
          8DFFDAF5F5FF18D92EFFAAACACFF000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000BCBCBDFFAAACACFFAAACACFFAAACACFFBCBCBDFF0000
          0000000000000000000000000000BCBCBDFFAAACACFFAAACACFFAAACACFFAAAC
          ACFFBCBCBDFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000AAACACFF8D9191FF7D7673FF8D9191FFAAACACFF0000
          0000000000000000000000000000AAACACFF8D9191FF7D7673FF7D7673FF8D91
          91FFAAACACFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF7D7673FFAAACACFF0000
          00000000000000000000BCBCBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D76
          73FFAAACACFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF7D7673FFAAACACFF0000
          00000000000000000000AAACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D76
          73FFAAACACFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF7D7673FFAAACACFF0000
          000000000000BCBCBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF636E
          76FF9BA0A1FF0000000000000000000000000000000000000000AAACACFF383A
          36FFBCBCBDFF0000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF7D7673FFAAACACFF0000
          000000000000AAACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1212
          12FF1F1E1DFFAAACACFF8DB5BEFFAAACACFF00000000000000007D8487FF1212
          12FF7D8487FF0000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF7D7673FFAAACACFF0000
          0000BCBCBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF282B
          26FF263750FF1F53B0FF1A2298FF263750FF8697A9FF7D8487FF9BA0A1FF7D76
          73FF383A36FFBCBCBDFF00000000000000000000000000000000000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF7D7673FFAAACACFF0000
          0000AAACACFFFFFFFFFFFFFFFFFF7D8487FFFFFFFFFFFFFFFFFFFFFFFFFF163A
          6CFF1F53B0FF1F53B0FF1E488CFF0D2D54FF263750FF636E76FFB2B4B6FF8D91
          91FF4A4A4BFF0000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF7D7673FFAAACACFFBCBC
          BDFFFFFFFFFFFFFFFFFFFFFFFFFF9BA0A1FFFFFFFFFFFFFFFFFFFFFFFFFF163A
          6CFF25579FFF1F53B0FF1E488CFF0D2D54FF0D2D54FF0D2D54FF7D8487FFAAAC
          ACFFBCBCBDFF000000007D7673FF7D7673FF0000000000000000000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF7D7673FF7D7673FF8D91
          91FFFFFFFFFFFFFFFFFF636E76FF2968B7FFFFFFFFFFFFFFFFFFFFFFFFFF163A
          6CFF1E488CFF1E488CFF163A6CFF0C233FFF0C233FFF0C233FFF0C233FFF5D5D
          5DFFAAACACFFAAACACFF7D7673FF282B26FFBCBCBDFF00000000000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF282B26FF121212FFFFFF
          FFFFFFFFFFFFFFFFFFFF25579FFF2D77D7FFFFFFFFFFFFFFFFFFFFFFFFFF1E48
          8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF030D
          2CFF415E5EFF7D8487FFAAACACFF383A36FFAAACACFF00000000000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF1F1E1DFF163A6CFFFFFF
          FFFFFFFFFFFF0D2D54FF2968B7FF3788EBFFFFFFFFFFFFFFFFFFFFFFFFFF1E48
          8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C23
          3FFF0D2D54FF636E76FF00000000AAACACFFBCBCBDFF00000000000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF163A6CFFFFFFFFFFFFFF
          FFFFFFFFFFFF163A6CFF2968B7FF2D77D7FFFFFFFFFFFFFFFFFFFFFFFFFF1E48
          8CFF2968B7FF1F53B0FFFFFFFFFFFFFFFFFFFFFFFFFF0C233FFF0C233FFF0C23
          3FFF0C233FFF2B486BFF00000000000000000000000000000000000000000000
          000000000000BCBCBDFFFFFFFFFFFFFFFFFFFFFFFFFF163A6CFFFFFFFFFFFFFF
          FFFF163A6CFF1E488CFF2D77D7FF3788EBFFFFFFFFFFFFFFFFFFFFFFFFFF1E48
          8CFF25579FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C233FFF0C23
          3FFF0D2D54FF263750FFBCBCBDFF000000000000000000000000000000000000
          0000000000006B70A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF1E488CFF1E488CFF2D77D7FF3788EBFFFFFFFFFFFFFFFFFFFFFFFFFF1E48
          8CFFFFFFFFFFFFFFFFFF1E488CFF163A6CFF0D2D54FFFFFFFFFFFFFFFFFF0C23
          3FFF0D2D54FF0D2D54FFB2B4B6FF000000000000000000000000000000000000
          0000000000003F6989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2557
          9FFF25579FFF25579FFF2D77D7FF388AD0FFFFFFFFFFFFFFFFFFFFFFFFFF2557
          9FFFFFFFFFFFFFFFFFFF1E488CFF163A6CFF0D2D54FFFFFFFFFFFFFFFFFF0C23
          3FFF0D2D54FF0D2D54FFAAACACFF000000000000000000000000000000000000
          0000000000003F6989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2968
          B7FF1F53B0FF25579FFF388AD0FF388AD0FFFFFFFFFFFFFFFFFFFFFFFFFF2557
          9FFFFFFFFFFFFFFFFFFF1E488CFF0D2D54FF0C233FFFFFFFFFFFFFFFFFFF0D2D
          54FF0D2D54FF0D2D54FF9BA0A1FF000000000000000000000000000000000000
          0000BCBCBDFF25579FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF25579FFF2D77
          D7FF2968B7FF25579FFF388AD0FF3788EBFFFFFFFFFFFFFFFFFFFFFFFFFF2968
          B7FF2D77D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF163A6CFF0D2D
          54FF0D2D54FF0D2D54FF8697A9FF000000000000000000000000000000000000
          0000A8BBC0FF1E488CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D77D7FF3676
          E9FF2968B7FF25579FFF388AD0FF3788EBFFFFFFFFFFFFFFFFFFFFFFFFFF3676
          E9FF3788EBFF3676E9FFFFFFFFFFFFFFFFFFFFFFFFFF163A6CFF163A6CFF163A
          6CFF263750FF0D2D54FF7D8487FF000000000000000000000000000000000000
          0000AAACACFF1E488CFF2D77D7FF388AD0FF3788EBFF3788EBFF3788EBFF3676
          E9FF25579FFF1E488CFF3788EBFF38A8EFFF3788EBFF3676E9FF3676E9FF3788
          EBFF3676E9FF1F53B0FF121D7EFF0D2D54FF030D2CFF0C233FFF0D2D54FF0D2D
          54FF0D2D54FF163A6CFF636E76FF000000000000000000000000000000000000
          00009BA0A1FF1E488CFF2D77D7FF3788EBFF3788EBFF3788EBFF3788EBFF3676
          E9FF1E488CFF1E488CFF3788EBFF3788EBFF2D77D7FF1F53B0FF1F53B0FF2557
          9FFF1E488CFF3F6989FF8697A9FFB3C1C0FF636E76FF0C233FFF0C233FFF030D
          2CFF0C233FFF0D2D54FF494D84FF000000000000000000000000000000000000
          00008697A9FF25579FFF2D77D7FF3788EBFF2D77D7FF3788EBFF3676E9FF2D77
          D7FF163A6CFF163A6CFF25579FFF2968B7FF3F6989FF6B70A3FF8DB5BEFFC0D2
          D5FFE7F0F2FFFAFCFDFFFFFFFFFFFFFFFFFFC9DCDFFF415E5EFF383A36FF2637
          50FF030D2CFF0C233FFF263750FFBCBCBDFF0000000000000000000000000000
          00006F9397FF25579FFF2D77D7FF2D77D7FF2968B7FF1F53B0FF25579FFF2557
          9FFF494D84FF6F9397FF8DB5BEFFBBDAEAFFDAF5F5FFECFCFDFFECFCFDFFE4FE
          FEFFDCFDFEFFD4F2FEFFCCF0FEFFCBE5EDFFC3EDFEFF8697A9FF384F51FF384F
          51FF384F51FF282B26FF0C233FFFBCBCBDFF0000000000000000000000000000
          0000494D84FF163A6CFF25579FFF25579FFF6B70A3FF5E9DC0FF9DB9C8FFBBDA
          EAFFCCF0FEFFD2FDFEFFDCF4FEFFCCF0FEFFCBE5EDFFBBDAEAFFBBDAEAFFBBDA
          EAFFAAD8ECFFB2CFE1FFB2CFE1FFA4C7D9FFB4CAD1FFB2CFE1FF8697A9FF415E
          5EFF383A36FF384F51FF383A36FF636E76FFAAACACFF00000000BCBCBDFFB3C1
          C0FF7D8487FF6F9397FF9DB9C8FFB5D9DCFFBBDAEAFFCBE5EDFFBBDAEAFFBBDA
          EAFFB2CFE1FFB2CFE1FFA4C7D9FFA4C7D9FFA4C7D9FFA4C7D9FF9DB9C8FF9DB9
          C8FF9DB9C8FF9DB9C8FF8DB5BEFF9DB9C8FF8DB5BEFF9A9CBFFF8DB5BEFF8697
          A9FF636E76FF384F51FF263750FF383A36FF5D5D5DFF00000000B3C1C0FF9DB9
          C8FFA4C7D9FFB5D9DCFFA4C7D9FFA4C7D9FF9DB9C8FF9DB9C8FF9DB9C8FF9DB9
          C8FF8DB5BEFF8DB5BEFF9A9CBFFF8DB5BEFF8697A9FF8DB5BEFF8697A9FF8697
          A9FF8697A9FF8697A9FF8697A9FF6F9397FF6F9397FF6F9397FF7D8487FF8697
          A9FF9BA0A1FF9BA0A1FF9BA0A1FF9BA0A1FFBCBCBDFF0000000000000000A8BB
          C0FF8DB5BEFF8697A9FF8697A9FF8697A9FF8697A9FF8697A9FF6F9397FF6F93
          97FF6F9397FF6F9397FF6F9397FF7D8487FF6F9397FF7D8487FF6F9397FF8D91
          91FF9BA0A1FF9BA0A1FFAAACACFFAAACACFFB2B4B6FFBCBCBDFFBCBCBDFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000BCBCBDFFB2B4B6FF9BA0A1FF8697A9FF7D8487FF7D8487FF7D8487FF8D91
          91FF9BA0A1FF9BA0A1FFAAACACFFB2B4B6FFB2B4B6FFBCBCBDFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF80A080FF80A060FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF80A080FF80A080FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808060FF80A0
          80FF80A080FF40A080FF4080A0FF40A080FF808060FF808040FF808040FF8080
          40FF808060FF80A080FF40A0C0FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF80A080FF40A080FF80A080FF40A0C0FF40A0
          E0FF40A0E0FF40A0C0FF40A0E0FF40A0E0FF40A0E0FF808040FF808040FF8080
          60FF40A0A0FF40A0C0FF40A0E0FF808060FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808060FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0A0FF40A0C0FF40A0E0FF40A0E0FF808060FF808060FF40A0
          E0FF40A0E0FF40A0E0FF40A0C0FF80A060FF808060FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808060FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0C0FF40A0C0FF40A0E0FF40A0E0FF40A0C0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0A0FF80A060FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808060FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0C0FF40A0A0FF40A0A0FF808060FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808060FF40A0C0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0C0FF808040FF808060FF808040FF808040FF808040FF808040FF80A0
          60FF808040FF808040FF808040FF808040FF808060FF80A060FF808040FF8080
          60FF40A0A0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF808040FF808040FF808040FF808040FF808040FF808060FF40A0
          A0FF80A060FF808040FF808040FF808040FF40A0A0FF40A0C0FF80A080FF40A0
          C0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF80A080FF808040FF808040FF808040FF808060FF80A080FF40A0
          E0FF40A0E0FF80A060FF808040FF80A080FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0C0FF80A060FF808040FF808040FF40A080FF40A0A0FF40A0
          E0FF40A0E0FF40A0C0FF40A0A0FF40A0C0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF80A080FF808060FF40A0A0FF80A080FF40A0
          C0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF80A080FF808040FF40A0A0FF808060FF8080
          60FF40A080FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0A0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0A0FF808060FF80A060FF808040FF8080
          40FF80A080FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0A0FF40A0C0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0C0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0C0FF80A080FF808040FF8080
          40FF80A080FF40A0E0FF40A0E0FF40A0C0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0C0FF40A080FF40A0A0FF40A0A0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0A0FF40A0A0FF40A0A0FF808060FF40A0C0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0C0FF808040FF8080
          40FF808060FF40A0E0FF40A0E0FF40A0C0FF40A0C0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0A0FF80A060FF808060FF80A080FF808060FF80A080FF40A0
          C0FF40A0E0FF40A0E0FF808060FF808040FF808060FF808040FF80A060FF40A0
          A0FF40A0C0FF40A0C0FF40A0E0FF40A0E0FF40A0E0FF40A0C0FF808040FF8080
          40FF808040FF40A0A0FF40A0E0FF40A0E0FF40A0C0FF40A0E0FF40A0C0FF40A0
          C0FF408080FF808060FF808040FF808040FF808040FF808040FF808040FF8080
          40FF40A080FF40A0A0FF808060FF808040FF808040FF808060FF808040FF8080
          40FF808060FF808060FF40A0C0FF40A0E0FF40A0E0FF40A0C0FF808040FF8080
          40FF808040FF80A060FF40A0E0FF40A0A0FF40A0A0FF40A0C0FF80A060FF80A0
          60FF808040FF808040FF808060FF808060FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808060FF808040FF8080
          40FF808040FF808040FF80A060FF40A0C0FF40A0E0FF40A0C0FF808040FF8080
          40FF808040FF808040FF808060FF808060FF808060FF40A0A0FF40A0A0FF80A0
          80FF808040FF808040FF808040FF808060FF808060FF808060FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF80A060FF40A0C0FF40A0C0FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808060FF40A0A0FF80A0
          80FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808060FF80A080FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF808040FF8080
          40FF808040FF808040FF808040FF808040FF808040FF808040FF}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          200000000000001000000000000000000000000000000000000040A0C0FF4080
          A0FF404060FF402020FF000000FF000000FF000000FF000000FF402020FF4040
          40FF404060FF40A0C0FF40A0C0FF40A0C0FF40C0E0FF40C0E0FF40C0E0FF40C0
          E0FF40A0C0FF40A0C0FF40A0C0FF4080C0FF4080A0FF006080FF006080FF0060
          80FF0080A0FF4080C0FF0080C0FF40A0E0FF40C0E0FF40C0E0FF40A0E0FF40A0
          E0FF4080A0FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF404040FF4080A0FF40A0C0FF40A0C0FF40A0E0FF40C0E0FF40C0E0FF40A0
          E0FF002040FF408080FF80E0E0FF80C0C0FF808080FF808080FF808080FF8080
          80FF808080FF80C0C0FF80A0A0FF4080A0FF40C0E0FF40C0E0FF40C0E0FF0080
          A0FF006060FF000000FF000000FF004020FF004020FF000000FF004020FF0040
          20FF000000FF406080FF40A0E0FF40A0C0FF40A0C0FF40A0E0FF40C0E0FF40C0
          E0FFC8D0D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFFF40C0E0FF40C0E0FF4080
          60FF008040FF004020FF004020FF006040FF006040FF004020FF006040FF0080
          40FF004020FF004040FF40A0C0FF40A0C0FF40A0E0FF40A0E0FF40A0E0FF40C0
          E0FFC0DCC0FFC8D0D4FFC0DCC0FFC0DCC0FFC0DCC0FFC8D0D4FF80A0C0FFC8D0
          D4FFC0DCC0FFC8D0D4FFC8D0D4FFC8D0D4FFC0DCC0FF40C0E0FF40C0E0FF40C0
          C0FF40C060FF004020FF004020FF006040FF006040FF006040FF008040FF40C0
          60FF006040FF004020FF40A0C0FF40A0C0FF40A0C0FF40A0C0FF40A0C0FF4080
          E0FF402080FF402060FF406080FF80A0A0FF808080FF8080A0FF808080FF80A0
          A0FF808080FF808080FF402040FF402060FF4060E0FF40C0E0FF40C0E0FF40A0
          C0FF004020FF004020FF006040FF006040FF006040FF006040FF004020FF0040
          20FF004020FF004020FF008080FF40A0E0FF40A0C0FF40A0C0FF40A0C0FF4060
          C0FF404080FF80A080FFC0A0A0FF80A0A0FF808080FF80A0A0FF808080FFC0A0
          A0FF808080FFC0A0A0FF808080FF806080FF4060E0FF40C0E0FF40C0E0FF40A0
          A0FF006040FF408040FF40A060FF40C060FF40C060FF40C060FF40A060FF40A0
          60FF008040FF004020FF006060FF40A0E0FF40A0C0FF40A0C0FF40A0C0FF4060
          C0FF4020C0FF4020A0FF8060A0FFC0A0A0FF808080FF80A0A0FF808080FFC0A0
          A0FF808080FF80A0A0FF4040A0FF4040C0FF40A0E0FF40C0E0FF40C0E0FF40A0
          C0FF008040FF006040FF40A060FF40A060FF40C060FF40C060FF40A060FF40A0
          60FF40C080FF008040FF004040FF40A0C0FF40A0C0FF40A0C0FF40A0C0FF80C0
          E0FFC0A0E0FF402060FF406080FFC8D0D4FF80A0A0FF80A0C0FF80A0A0FFC8D0
          D4FF80A0A0FF80C0C0FF40A0E0FF40A0E0FF40C0E0FF40C0E0FF40C0E0FF40C0
          E0FF008060FF006040FF40A060FF40A060FF40C060FF40C060FF40A060FF0060
          40FF006040FF008040FF004020FF4080C0FF40A0C0FF40A0C0FF4080C0FF80A0
          C0FFFFFFFFFF404080FF404080FFF0FBFFFFF0FBFFFFC0DCC0FFC0DCC0FFF0FB
          FFFFF0FBFFFF80E0E0FF40C0E0FF40C0E0FF40C0E0FF40E0E0FF40C0E0FF40C0
          E0FF40A0A0FF004020FF004020FF404040FF404040FF406040FF406040FF0060
          40FF006040FF008040FF004020FF4080A0FF40A0E0FF40A0C0FF4080A0FF8080
          80FFF0FBFFFF404080FF0020C0FF4020E0FF4040E0FF4040E0FF4040E0FF4040
          E0FF4040E0FF80C0E0FF40C0E0FF40C0E0FF40C0E0FF40C0E0FF40C0E0FF40E0
          E0FF40A0E0FF000000FF402020FF808080FF808080FFF0FBFFFF808080FF0040
          20FF006040FF008040FF004020FF006080FF40A0E0FF40A0C0FF40A0C0FFF0FB
          FFFFC0DCC0FF4040A0FF0020E0FF0020E0FF0020E0FF0020E0FF0020E0FF0020
          E0FF4040E0FF80E0E0FF40C0E0FF40C0E0FF40C0E0FF40C0E0FF40C0E0FF40C0
          E0FF40C0E0FF000000FF404040FFC8D0D4FFC0DCC0FFFFFFFFFFC0A0A0FF0040
          20FF006040FF006040FF006040FF004040FF40A0C0FF40A0C0FF40A0C0FFF0FB
          FFFFC8D0D4FF4060C0FFC0A0E0FFC0A0E0FF8080E0FF80A0E0FF80A0E0FF80A0
          E0FF4060C0FF40C0E0FF40C0E0FF40C0E0FF40C0E0FF40C0E0FF40C0E0FF40C0
          E0FF40C0E0FF000000FF404040FFFFFFFFFFFFFFFFFFFFFFFFFFC8D0D4FF4040
          20FF006020FF006040FF006040FF004020FF4080C0FF40A0E0FF006080FF8080
          80FFC8D0D4FF8080A0FFC0DCC0FFF0FBFFFFC0A0A0FFC8D0D4FFC0DCC0FFC8D0
          D4FF406080FF80E0E0FF40C0E0FF40C0E0FF40C0E0FF40C0E0FF40C0E0FF40C0
          E0FF40C0E0FF006040FF408060FF80E0C0FF80E0C0FFC0DCC0FF80E0C0FF4080
          40FF006040FF004020FF006040FF004020FF008080FF40A0E0FF006080FF4020
          20FF806080FF402080FF402080FF402080FF404060FF402080FF402080FF4020
          60FF406080FF40C0E0FF40A0E0FF40A0E0FF40C0E0FF40C0E0FF40C0E0FF40C0
          E0FF40C0E0FF008060FF40C060FF40E0A0FF80E0A0FF80E0A0FF40E080FF0080
          40FF004020FF004020FF004020FF004020FF006060FF40A0E0FF406080FF4060
          60FF402040FF404080FF406080FF404080FF406080FF4060A0FF406080FF4020
          40FF006080FF40C0E0FF40A0E0FF40A0E0FF40C0E0FF40C0E0FF40C0E0FF40C0
          E0FF40C0E0FF006040FF008040FF40E080FF40E0A0FF40E080FF40C060FF4060
          40FF006040FF006040FF004020FF004020FF004040FF40A0E0FF006080FF8060
          60FF406060FF404040FF404040FF404040FF404040FF406040FF406060FF0060
          80FF408080FF40A0E0FF40A0E0FF40C0E0FF40C0E0FF40C0E0FF40A0E0FF40A0
          E0FF40A0E0FF4080A0FF004020FF008040FF40C060FF40C060FF006040FF4080
          40FF006040FF006040FF004020FF004020FF004020FF40A0C0FF006080FF0000
          00FF404040FF404040FF406060FF806060FF404040FF406060FF4080C0FF40A0
          E0FF4080A0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40C0E0FF006080FF000000FF004020FF408060FF006040FF0060
          40FF006040FF008040FF006040FF004020FF004020FF0080A0FF4080C0FF0000
          00FF000000FF000000FF402020FF004060FF4080A0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF4080C0FF40A0C0FF40A0E0FF40A0C0FF40A0
          A0FF008060FF006040FF004020FF006040FF004040FF004060FF40A0E0FF0060
          80FF004040FF004040FF006080FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF4080C0FF4080C0FF40A0E0FF4080C0FF006080FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0
          E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40A0E0FF40C0A0FF40C0
          A0FF40C0A0FF40C0A0FF40C0A0FF40C0A0FF40C0A0FF40C0A0FF40C0A0FF40C0
          A0FF40C0A0FF40C0A0FF40C0A0FF40C0A0FF40C0A0FF40C0A0FF40C0A0FF40C0
          A0FF40C0A0FF40C0A0FF40C0A0FF40C0A0FF40C0A0FF40C0A0FF40C0A0FF40C0
          A0FF40C0A0FF40C0A0FF40C0A0FF80C0A0FF80C0A0FF80C0A0FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFC0C060FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFC0C060FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFC0C0
          60FF806040FFC0C080FFF0CAA6FFF0CAA6FF80A060FFC0A060FFC0C080FF8080
          60FFC0C080FFF0CAA6FFF0CAA6FFC0C060FF806040FFC0C080FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFC0C080FFC0C0
          80FFC0C080FFC0C080FFC0C080FFC0C080FFC0C080FFC0C080FFC0A080FFC0A0
          80FFC0A080FF80A080FF808080FF808080FF404040FF402040FF404040FF4020
          40FF406060FF808080FF808080FF80A080FFC0A080FFC0A080FFC0A080FFC0C0
          80FFC0C080FFC0C080FFC0C080FFC0C080FFC0C080FFC0C080FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FF404040FF402040FF404040FF4020
          40FF80A060FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFC0C080FF404060FF404040FF404040FF4040
          40FF806060FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFC0C080FFC0A0A0FF808080FF404040FF80A0
          A0FFC0A0A0FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
          FFFFF0FBFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFFFFFFFFFFFFFFFFFFFFF
          FFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
          A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FF}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008185DAFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000009A9CBFFF0204E9FF0204E9FF5056C4FFB1B1C6FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000242BACFF0204E9FF0202F5FF0202F5FF0202F5FF3439D9FF9A9C
          BFFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AAACACFF0202A0FF0202F5FF0202F5FF0202F5FF0202F5FF0202F5FF0202
          F5FF151AEAFFBCBCBDFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001A2298FF0202A0FF0202F5FF0202F5FF0202F5FF0202F5FF0202F5FF0202
          F5FF0202F5FF5E9DC0FF02DDE0FF30D5DCFFA8BBC0FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D126FFF0307C5FF0202FEFF0202F5FF0202F5FF0202F5FF0202F5FF0202
          F5FF0202F5FF03467FFF03C8D0FF02F8FDFF04E7F8FF30D5DCFF8DCACCFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000BCBC
          BDFF0D126FFF0307C5FF0202FEFF0202F5FF0202F5FF0202F5FF0202F5FF0202
          F5FF0202F5FF03548CFF02DDE0FF04E7F8FF04E7F8FF02F8FDFF04E7F8FF30D5
          DCFFA2BAA7FFB5BFA9FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009A9C
          BFFF0D126FFF0202F5FF0202FEFF0202F5FF0202F5FF0202F5FF0202F5FF0202
          F5FF0202F5FF03548CFF02DDE0FF02F8FDFF04E7F8FF04E7F8FF02F8FDFF03C8
          D0FF03970BFF02FA03FF20F85CFF8ED2A9FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006B70
          A3FF0307C5FF0202FEFF0202FEFF0202FEFF0202FEFF0202FEFF0202F5FF0202
          F5FF0204E9FF03548CFF02DDE0FF02F8FDFF04E7F8FF04E7F8FF02F8FDFF03C8
          D0FF03970BFF02FA03FF02FA03FF02FA03FF18D92EFFAAACACFFBCBCBDFF0000
          0000000000000000000000000000000000000000000000000000000000003A3E
          B6FF0202FEFF0202FEFF0202FEFF0202FEFF0202FEFF0202FEFF0202FEFF0202
          FEFF0202F5FF067C86FF02D5EAFF02F8FDFF04E7F8FF02F8FDFF02F8FDFF02DD
          E0FF028504FF02FA03FF02FA03FF02FA03FF02FA03FF2F7C05FFFCB503FFD89A
          30FFC5C0AFFF0000000000000000000000000000000000000000000000003234
          F0FF0202F5FF0202FEFF0202FEFF0202FEFF0202FEFF0202FEFF0202FEFF0202
          FEFF0307C5FF056A72FF02DDE0FF02F8FDFF04E7F8FF02F8FDFF02F8FDFF02DD
          E0FF028504FF02FA03FF02FA03FF02FA03FF02FA03FF028504FFFCB503FFFCB5
          03FFFCB503FFBDC44EFF00000000000000000000000000000000000000000000
          00008185DAFF585DEFFF1B1EF7FF0608FAFF0202FEFF0202FEFF0202FEFF1C24
          A6FF056A72FF067C86FF02DDE0FF02F8FDFF02F8FDFF04E7F8FF02F8FDFF02DD
          E0FF028504FF02FA03FF02FA03FF02FA03FF02FA03FF03970BFFBE9819FFFCB5
          03FFFCB503FFEFBA39FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000008185DAFF585DEFFF9A9CBFFF2E84
          80FF056A72FF067C86FF04E7F8FF02F8FDFF04E7F8FF02F8FDFF02F8FDFF04E7
          F8FF028504FF02FA03FF02FA03FF02FA03FF02FA03FF03970BFFBE9819FFFCB5
          03FFFCB503FFFCB503FF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000067C
          86FF056A72FF056A72FF04E7F8FF02F8FDFF02F8FDFF04E7F8FF02F8FDFF04E7
          F8FF028504FF02FA03FF02FA03FF02FA03FF02FA03FF02B512FF926110FFFCB5
          03FFFCB503FFFCB503FFBCBCBDFF000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000067C
          86FF056A72FF067C86FF04E7F8FF02F8FDFF04E7F8FF02F8FDFF02F8FDFF04E7
          F8FF03970BFF02D716FF02FA03FF02FA03FF02FA03FF02D716FF926110FFFCB5
          03FFFCB503FFFCB503FFC5C0AFFF000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000067C
          86FF056A72FF067C86FF04E7F8FF02F8FDFF02F8FDFF02F8FDFF02F8FDFF02F8
          FDFF03970BFF02D716FF02FA03FF02FA03FF02FA03FF02FA03FF926110FFFCB5
          03FFFCB503FFFCB503FFD2BD7EFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BCBCBDFF056A
          72FF056A72FF067C86FF04E7F8FF02F8FDFF02F8FDFF02F8FDFF02F8FDFF02F8
          FDFF0DB227FF02FA03FF02FA03FF02FA03FF02FA03FF02FA03FF722502FFFCB5
          03FFFCB503FFFCB503FFEFBA39FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BCBCBDFF056A
          72FF056A72FF03C8D0FF02F8FDFF02F8FDFF02F8FDFF02F8FDFF02F8FDFF02F8
          FDFF20F85CFF02FA03FF02FA03FF02FA03FF02FA03FF02FA03FF585D15FFFCB5
          03FFFCB503FFFCB503FFEFBA39FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000A8BBC0FF069D
          9FFF02F8FDFF02F8FDFF02F8FDFF02F8FDFF02F8FDFF02F8FDFF02F8FDFF19FA
          F8FF0CE999FF02FA03FF02FC24FF02D716FF2F7C05FF722502FF722502FFFCB5
          03FFFCB503FFFCB503FFFCB503FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008DCA
          CCFF45EEF3FF45EEF3FF24E4F4FF19FAF8FF0AFDFBFF45EEF3FF8DCACCFF0000
          0000000000000000000000000000926110FF722502FF722502FF722502FFBE98
          19FFFCB503FFFCB503FFFCB503FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000926110FF722502FF722502FF722502FFBE98
          19FFFCB503FFFCB503FFFCB503FFD2BD7EFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009C811EFF722502FF722502FF722502FF9261
          10FFFCB503FFFCB503FFFCB503FFBDC44EFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009A9A33FF722502FF722502FF722502FF9261
          10FFFCB503FFFCB503FFFCB503FFEFBA39FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A4A06BFF722502FF722502FF722502FF9261
          10FFFCB503FFFCB503FFFCB503FFEFBA39FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A4A06BFF722502FF722502FF722502FF7225
          02FFFCB503FFFCB503FFFCB503FFFCB503FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B2B08DFF722502FF722502FF722502FF7225
          02FFFCB503FFFCB503FFFCB503FFFCB503FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B5BFA9FF722502FF722502FF722502FF7225
          02FFFCB503FFFCB503FFFCB503FFFCB503FFC9C5B9FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000BCBCBDFF722502FF722502FF722502FF7225
          02FFBE9819FFFCB503FFFCB503FFFCB503FFD2BD7EFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000BDC0C6FF926110FF926110FF9C811EFF9C81
          1EFFD89A30FFEFBA39FFEFBA39FFEFBA39FFC5C0AFFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000B2B4
          B6FFBCBCBDFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000FFFE0202FF0000
          00FFFE0202FF000000FFFE0202FF000000FFFE0202FF000000FFFE0202FF030D
          2CFF8697A9FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FE0202FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF080C
          52FF8697A9FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C1C6C7FFC8C8D8FFD1D4D1FFFFFFFFFF000000FFFFFFFFFF0000
          00FFFE0202FFFFFFFFFFFE0202FF000000FFFFFFFFFFFFFFFFFFFE0202FF9A9C
          BFFF7D8487FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000BCBCBDFFBDC0C6FFC1C6C7FFC8C8D8FFFAFC
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E1FFFE0202FFFFFFFFFFFE02
          02FF000000FFC6C2C6FF000000FFFE0202FFC6C2C6FFFFFFFFFF000000FF6B70
          A3FF6B70A3FF0000000000000000000000000000000000000000000000000000
          000000000000000000000D126FFF2E3275FFE0E0E1FFFAFCFDFFE0E0E1FFCBCC
          CCFFCBCCCCFFC6C6C6FFC6C6C6FFE0E0E1FFFFFFFFFF000000FFFFFFFFFF0000
          00FFFE0202FF000000FFFE0202FF000000FFFE0202FFFFFFFFFFFE0202FF0D12
          6FFF6B70A3FF0000000000000000000000000000000000000000000000000000
          0000000000000000000036398FFF5055A4FF00000000CBCCCCFFE7E8E8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0202FFFFFFFFFFFE02
          02FFFFFFFFFFFE0202FF000000FFFFFFFFFF000000FFC6C2C6FF000000FF121D
          7EFF6B70A3FF0000000000000000000000000000000000000000000000000000
          0000000000000000000036398FFF6B70A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E1FF000000FFFE0202FF0000
          00FFFFFFFFFF000000FFFE0202FFFFFFFFFFFE0202FF000000FFFE0202FF1A22
          98FF5055A4FF0000000000000000000000000000000000000000000000000000
          000000000000000000000D126FFF5055A4FFE7E8E8FFD1D4D1FFCBCCCCFFD1D4
          D1FFD1D4D1FFD8D8D9FFD8D8D9FFF4F5F5FFFFFFFFFFFE0202FF000000FFFE02
          02FF000000FFFE0202FF000000FFFE0202FF000000FFFE0202FF000000FF1A22
          98FF5055A4FF0000000000000000000000000000000000000000000000000000
          000000000000000000000D126FFF5055A4FFE7E8E8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0202FF1A22
          98FF5055A4FF0000000000000000000000000000000000000000000000000000
          000000000000000000000D126FFF6B70A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEEFFFE0202FF000000FFFE02
          02FF000000FFFE0202FF000000FFFE0202FF000000FFFE0202FF000000FF1C24
          A6FF3A3EB6FF0000000000000000000000000000000000000000000000000000
          000000000000000000000D126FFF028504FF028504FF028504FF028504FF0285
          04FF028504FF028504FF028504FF028504FF028504FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF242BACFF1C24A6FF1C24
          A6FF2F37ADFF0000000000000000000000000000000000000000000000000000
          00000000000000000000121D7EFF028504FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF028504FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F37ADFF1C24A6FF1C24
          A6FF2F37ADFF0000000000000000000000000000000000000000000000000000
          000000000000BCBCBDFF121D7EFF028504FFFFFFFFFF028504FF028504FF0285
          04FF028504FF028504FF028504FF028504FF028504FFFFFFFFFFF4F5F5FFE0E0
          E1FFD1D4D1FFD1D4D1FFCBCCCCFFFFFFFFFFFFFFFFFF2930B7FF242BACFF1C24
          A6FF2F37ADFF0000000000000000000000000000000000000000000000000000
          000000000000B2B4B6FF121D7EFF028504FFFFFFFFFF028504FF028504FF0285
          04FFC6C6C6FF028504FF028504FF028504FF028504FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F37ADFF1C24A6FF242B
          ACFF2F37ADFF0000000000000000000000000000000000000000000000000000
          000000000000B1B1C6FF121D7EFF028504FFFFFFFFFFFFFFFFFF028504FFC6C6
          C6FF028504FF028504FF028504FFFFFFFFFF028504FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F37ADFF252CB3FF242B
          ACFF2930B7FF0000000000000000000000000000000000000000000000000000
          000000000000B2B4B6FF121D7EFF028504FFFFFFFFFF028504FFC6C6C6FF0285
          04FF028504FF028504FFFFFFFFFFFFFFFFFF028504FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A3EB6FF1C24A6FF252C
          B3FF2930B7FF0000000000000000000000000000000000000000000000000000
          0000000000009A9CBFFF121D7EFF028504FFFFFFFFFFC6C6C6FF028504FF0285
          04FF028504FF028504FF028504FFFFFFFFFF028504FFD8D8D9FFE0E0E1FFEDED
          EEFFF4F5F5FFFAFCFDFFFAFCFDFFFFFFFFFFFFFFFFFF3A3EB6FF252CB3FF252C
          B3FF252CB3FF0000000000000000000000000000000000000000000000000000
          0000000000009A9CBFFF0D126FFF028504FFFFFFFFFF028504FF028504FFFFFF
          FFFFFFFFFFFF028504FF028504FFFFFFFFFF028504FF8185DAFF8185DAFF656A
          D0FF656AD0FF656AD0FF656AD0FF656AD0FF5056C4FF2930B7FF252CB3FF252C
          B3FF252CB3FF0000000000000000000000000000000000000000000000000000
          0000000000008697A9FF0D126FFF028504FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF028504FF1A2298FF1A2298FF1C24
          A6FF1A2298FF1C24A6FF1C24A6FF1C24A6FF1C24A6FF252CB3FF252CB3FF252C
          B3FF2930B7FF0000000000000000000000000000000000000000000000000000
          0000000000008697A9FF0D126FFF028504FF028504FF028504FF028504FF0285
          04FF028504FF028504FF028504FF028504FF028504FF1A2298FF1A2298FF1C24
          A6FF1C24A6FF1C24A6FF252CB3FF252CB3FF252CB3FF252CB3FF2930B7FF2930
          B7FF252CB3FFBDC0C6FF00000000000000000000000000000000000000000000
          0000000000007288BBFF0D126FFF121D7EFF121D7EFF121D7EFF8185DAFF9499
          E3FF8185DAFF656AD0FF656AD0FF656AD0FF8185DAFF8185DAFF8185DAFF8185
          DAFF8185DAFF3A3EB6FF242BACFF242BACFF252CB3FF252CB3FF252CB3FF2930
          B7FF252CB3FFBDC0C6FF00000000000000000000000000000000000000000000
          0000000000006B70A3FF0D126FFF121D7EFF0D126FFF36398FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAACFCFF9499E3FFAAAC
          FCFFFFFFFFFFAAACFCFF1A2298FF252CB3FF252CB3FF252CB3FF2930B7FF2930
          B7FF252CB3FFBDC0C6FF00000000000000000000000000000000000000000000
          0000000000006B70A3FF080C52FF0D126FFF0D126FFF36398FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5056C4FF121D7EFF1C24
          A6FFFFFFFFFFAAACFCFF1C24A6FF252CB3FF252CB3FF252CB3FF252CB3FF2930
          B7FF252CB3FFB1B1C6FF00000000000000000000000000000000000000000000
          0000000000006B70A3FF0D126FFF0D126FFF0D126FFF36398FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF656AD0FF1A2298FF242B
          ACFFF2F4FEFF9499E3FF1C24A6FF242BACFF252CB3FF2930B7FF2930B7FF2930
          B7FF252CB3FFB1B1C6FF00000000000000000000000000000000000000000000
          000000000000494D84FF080C52FF0D126FFF0D126FFF36398FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5056C4FF1A2298FF242B
          ACFFEAECFBFF9499E3FF1C24A6FF252CB3FF252CB3FF2930B7FF2930B7FF2930
          B7FF252CB3FFB1B1C6FF00000000000000000000000000000000000000000000
          000000000000494D84FF080C52FF0D126FFF080C52FF36398FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF656AD0FF1A2298FF242B
          ACFFFFFFFFFFAAACFCFF1C24A6FF252CB3FF252CB3FF2930B7FF252CB3FF2930
          B7FF252CB3FFB1B1C6FF00000000000000000000000000000000000000000000
          0000000000002E3275FF080C52FF080C52FF080C52FF494D84FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5056C4FF1A2298FF242B
          ACFFFFFFFFFFAAACFCFF1A2298FF252CB3FF252CB3FF252CB3FF2930B7FF2930
          B7FF1C24A6FF9A9CBFFF00000000000000000000000000000000000000000000
          0000000000000D2D54FF030D2CFF080C52FF080C52FF36398FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5056C4FF1A2298FF1C24
          A6FFF2F4FEFFAAACFCFF1C24A6FF242BACFF242BACFF242BACFF252CB3FF242B
          ACFF1C24A6FFB1B1C6FF00000000000000000000000000000000000000000000
          00000000000000000000BCBCBDFF00000000B2B4B6FF9A9CBFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5056C4FF1A2298FF1A22
          98FFCED1FCFF9499E3FF1A2298FF242BACFF1C24A6FF242BACFF1C24A6FF1C24
          A6FF9A9CBFFF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C2C2
          C2FFC6C6C6FFD1D4D1FFD8D8D9FFE7E8E8FFEDEDEEFFEEF4F6FFCED1FCFFAAAC
          FCFFEAECFBFFAAACFCFF2F37ADFF1A2298FF1A2298FF1A2298FF1A2298FFB1B1
          C6FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C2C2
          C2FFC6C6C6FFC2C2C2FF0000000000000000B1B1C6FF7288BBFFB1B1C6FF0000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
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
          0000B5D9DCFFC9DCDFFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000A8BB
          C0FF99DADEFFA4E8EAFFA4E8EAFFC3CBCBFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B3C1C0FF78AF
          B0FFA4E8EAFFA9F7F8FFA4E8EAFF99DADEFFB5D9DCFFC2C2C2FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BDC0C6FF78AFB0FF78AF
          B0FFA9F7F8FFA9F7F8FFA9F7F8FFA4E8EAFF99DADEFF99DADEFFC0D2D5FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000006F9397FF78AFB0FF78AF
          B0FFA9F7F8FFB9FDFDFFA9F7F8FFA9F7F8FFA4E8EAFFA4E8EAFF99DADEFF99DA
          DEFFC1C6C7FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000078AFB0FF78AFB0FF78AFB0FF8DCA
          CCFFD2FDFEFFB9FDFDFFA9F7F8FFA9F7F8FFA9F7F8FFA4E8EAFFA4E8EAFF99DA
          DEFF8DCACCFFB5D9DCFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000008697A9FF6F9397FF78AFB0FF8DB5BEFFC6FE
          FEFFDCFDFEFFE4FEFEFFC6FEFEFFB9FDFDFFA9F7F8FFA9F7F8FFA4E8EAFFA4E8
          EAFF99DADEFF8DCACCFF8DCACCFFC3CBCBFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000078AFB0FF6F9397FF78AFB0FF8DB5BEFFC6FEE6FFC3ED
          FEFFFFFFFFFFFFFFFFFFE4FEFEFFD2FDFEFFC6FEFEFFA9F7F8FFA4E8EAFFA4E8
          EAFFA4E8EAFF99DADEFF99DADEFF8DCACCFF9DB9C8FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008DB5BEFF6F9397FF78AFB0FF78AFB0FFC6FEFEFFB9FDFDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCFDFEFFC6FEFEFFB9FDFDFFA4E8
          EAFFA4E8EAFF99DADEFF99DADEFF99DADEFF8DCACCFF8DCACCFFB4CAD1FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000A8BBC0FF5C8D82FF6F9397FF78AFB0FFB9FDFDFF99DADEFFB4CAD1FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4FEFEFFE4FEFEFFC6FE
          FEFFA9F7F8FFA4E8EAFF99DADEFF99DADEFF8DCACCFF8DCACCFF8DB5BEFF8DB5
          BEFFC1C6C7FF000000000000000000000000000000000000000000000000BCBC
          BDFF5C8D82FF6F9397FF78AFB0FFA9F7F8FF99DADEFF415E5EFF415E5EFF636E
          76FFA8BBC0FFECFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFE4FEFEFFFFFFFFFFFFFF
          FFFFDCFDFEFFB9FDFDFFA4E8EAFF99DADEFF99DADEFF8DCACCFF8DCACCFF8DCA
          CCFF78AFB0FF8DB5BEFFC2C2C2FF000000000000000000000000000000005C8D
          82FF6F9397FF78AFB0FFA4E8EAFF99DADEFF415E5EFF415E5EFF415E5EFF415E
          5EFF415E5EFF636E76FFB3C1C0FFFFFFFFFFECFCFDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF3FCFDFFC6FEFEFFB9FDFDFF99DADEFF8DCACCFF8DCACCFF8DCA
          CCFF8DB5BEFF78AFB0FF78AFB0FFC1C6C7FF0000000000000000000000006F93
          97FF6F9397FF99DADEFF8DCACCFF384F51FF415E5EFF415E5EFF415E5EFF415E
          5EFF415E5EFF415E5EFF384F51FF415E5EFF78AFB0FFD2FDFEFFF3FCFDFFDCFD
          FEFFD2FDFEFFC6FEFEFFB9FDFDFFD2FDFEFFB9FDFDFFA9F7F8FF8DCACCFF8DCA
          CCFF8DCACCFF8DCACCFF78AFB0FF78AFB0FF0000000000000000000000006F93
          97FF8DCACCFF78AFB0FF384F51FF384F51FF415E5EFF415E5EFF415E5EFF415E
          5EFF415E5EFF415E5EFF415E5EFF415E5EFF384F51FF415E5EFF6F9397FFB9FD
          FDFFD2FDFEFFE4FEFEFFE4FEFEFFDCFDFEFFD2FDFEFFC6FEFEFFB9FDFDFF99DA
          DEFF8DCACCFF8DB5BEFF8DB5BEFF78AFB0FF8DB5BEFF00000000000000008DCA
          CCFFA4E8EAFF415E5EFF384F51FF384F51FF415E5EFF415E5EFF415E5EFF415E
          5EFF415E5EFF415E5EFF415E5EFF415E5EFF415E5EFF384F51FF384F51FF384F
          51FF6F9397FFA9F7F8FFDCFDFEFFECFCFDFFECFCFDFFC6FEFEFFD2FDFEFFC6FE
          FEFFA9F7F8FF8DCACCFF8DB5BEFF78AFB0FF8DB5BEFF0000000000000000CBCC
          CCFFECFCFDFFFFFFFFFFC9DCDFFF8D9191FF415E5EFF384F51FF384F51FF415E
          5EFF415E5EFF415E5EFF415E5EFF384F51FF415E5EFF415E5EFF415E5EFF415E
          5EFF384F51FF384F51FF5C8D82FF99DADEFFB9FDFDFFECFCFDFFFAF7CCFFECFC
          FDFFFFFFFFFFB9FDFDFF99DADEFF8DCACCFF8DB5BEFF00000000000000000000
          0000FAFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFECFCFDFFC1C6C7FF636E76FF384F
          51FF384F51FF384F51FF384F51FF415E5EFF384F51FF415E5EFF384F51FF415E
          5EFF384F51FF384F51FF384F51FF384F51FF636E76FF8DB5BEFFD2FDFEFFFFFF
          FFFFFFFFFFFFDCFDFEFFB9FDFDFFA4E8EAFFA4C7D9FF00000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFC
          FDFF9BA0A1FF415E5EFF384F51FF384F51FF384F51FF384F51FF384F51FF384F
          51FF415E5EFF384F51FF384F51FF384F51FF384F51FF384F51FF78AFB0FFA4E8
          EAFFC6FEFEFFE7E8E8FFB9FDFDFFC6FEFEFFC2C2C2FF0000000000000000CBCC
          CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFC3CBCBFF636E76FF384F51FF2B4B3AFF384F51FF384F
          51FF384F51FF384F51FF384F51FF384F51FF2B4B3AFF636E76FFA4E8EAFF83D7
          FAFF78AFB0FF7D8487FFD1D4D1FF00000000000000000000000000000000FAFC
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCFD
          FEFFB9FDFDFFECFCFDFFFFFFFFFFFFFFFFFFECFCFDFF8DB5BEFF415E5EFF2B4B
          3AFF2B4B3AFF384F51FF384F51FF384F51FF384F51FF263750FF2B4B3AFF3F69
          89FF5C8D82FFBCBCBDFF00000000000000000000000000000000B4CAD1FFFAFC
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFC
          FDFFDCFDFEFFFFFFFFFFFFFFFFFFD2FDFEFFFAFCFDFFFFFFFFFFC6FEFEFFA9F7
          F8FF6F9397FF384F51FF383A36FF384F51FF263750FF2B4B3AFF384F51FF9BA0
          A1FF000000000000000000000000000000000000000000000000C2C2C2FFC9DC
          DFFFDAF5F5FFE4FEFEFFC6FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFECFCFDFFD2FDFEFFDCFDFEFFB9FDFDFFDCFDFEFFFFFFFFFFB9FDFDFFFFFF
          FFFFFFFFFFFFD2FDFEFF78AFB0FF415E5EFF2B4B3AFF7D8487FFBCBCBDFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C1C6C7FFD9EAEBFFFAFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCFDFEFFFAFCFDFFFFFFFFFFA9F7F8FFDCFD
          FEFFFFFFFFFFF4F5F5FFC2C2C2FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000CBCCCCFFE0E0E1FFD9EAEBFFF3FC
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFCFDFFA9F7F8FFD2FD
          FEFFFFFFFFFFE7E8E8FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000C3CBCBFFC9DCDFFFE4F9F8FFFFFFFFFFFFFFFFFFD2FDFEFFA4E8EAFFB9FD
          FDFFFFFFFFFFD8D8D9FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C1C6C7FFC9DCDFFFECFCFDFFD2FDFEFFA9F7
          F8FFD2FDFEFFCBCCCCFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C3CBCBFFCBE5
          EDFFB3C1C0FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010000012A0F03384D1D0571632F0FA47D3C18C884411AD7843E18D77937
          12C7632706A447150070240B0037000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003D1A
          0850833D1CBB756E3EF54B8C5AFF808461FF968064FF938163FF937F61FF9479
          59FF957050FF956742FF964E23F5762904BA3510004F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001C07032081381BAA7A72
          35FF2E964BFF0E9B42FF7D7C33FFB16B2AFFAA6A29FFA76C30FFA46F36FF9F72
          3FFF9B764CFF987750FF957653FF936F4DFF995025FF652201A80C03001E0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000031180C3D8F5620DC348317FF0094
          12FF008C00FF178200FFC65C00FFBF5D00FFBD5C00FFBC5A00FFBA5900FFB55B
          06FFB05F11FFA86524FFA06B37FF9B6E43FF96744FFF97633BFF8C3409D9260B
          003A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000301A0E3A9A5C21E93A8004FF318800FF0F8D
          00FF009700FF498200FFCA6600FFC16700FFC06600FFBF6400FFBE6200FFBC5F
          00FFBB5B00FFB95900FFB25B09FFA86221FF9F6935FF997046FF9B6844FF9039
          0DE7280B00370000000000000000000000000000000000000000000000000000
          000000000000000000002006032299642CDC128C04FF7B7900FFD86700FFAC72
          00FF7C8000FFB47300FFCC6C00FFC66D00FFC56D00FFC46B00FFC36900FFC167
          00FFBE6300FFBC6100FFBA5C00FFB75800FFAD5E14FFAE632CFF787640FF3983
          42FF8B3609D90802001F00000000000000000000000000000000000000000000
          00000000000001000001914B2AAD53820BFF1D9000FFBB7100FFD36F00FFD372
          00FFD77100FFD17400FFCB7500FFCB7400FFCB7300FFC97100FFC86F00FFC66D
          00FFC36900FFC16600FFBF6300FFBB5F00FFC25700FF746C0CFF098C28FF0795
          41FF497736FF6F2103A800000000000000000000000000000000000000000000
          00000000000043281950CE6E21FF468900FFB67700FFD97400FFCB7900FFD379
          00FFD17A00FFD07C00FFD17C00FFD07B00FFD07A00FFCE7800FFCD7600FFCB74
          00FFC77000FFC56C00FFC26800FFBE6400FFCE5B00FF357A00FF008B10FF118A
          2BFF119444FF7C5720FF360E004B000000000000000000000000000000000000
          0000060302079C5E35BEB67503FF598C05FFE47500FF6A9412FF799410FFE67D
          00FFE08000FFE08100FFD68302FFD68201FFD58101FFD47F00FFD27D00FFD07A
          00FFCD7600FFC97200FFC66E00FFC36A00FFCB6200FF7B6F00FF048601FF018A
          19FF0C8F34FF38833FFF7C2A04BA040100060000000000000000000000000000
          0000350A0839CF802EF7798805FF379D13FFCE8106FF26AD2BFF2AB134FF49AD
          32FF4BAF37FFAE971DFFE3870DFFD9890DFFD9880AFFD88606FFD68302FFD580
          00FFD17C00FFCE7800FFCB7300FFC86E00FFC96900FFC86300FF9C6600FF377B
          07FF018D26FF109141FF87511DF6250B00350000000000000000000000000000
          0000623C2876728F1AFF02A717FF13AD29FF37AC2FFF1ABA42FF1EBF4BFF1CC4
          54FF16C95CFF35C257FFE0911FFFE0901CFFDD8E19FFDB8C14FFDA890EFFD885
          06FFD68201FFD27E00FFCF7800FFD57200FF5E8300FF0A9200FF5B7800FFC65A
          00FF607419FF029539FF567434FF4F1701720000000000000000000000000000
          0000855B35AA28A11FFF08AF27FF1AB438FF1DBC46FF28C151FF2EC65CFF30CB
          63FF50C45EFF3DCC65FFADA93FFFEA9428FFE09527FFDF9321FFDE8F1BFFDC8B
          13FFD98709FFD68201FFD47D00FFCC7900FF0A9700FF009400FF009000FF9269
          00FFD4590CFF468332FF31843AFF6C2808A60000000000000000000000000000
          0000917641CE19A823FF14B335FF21BA44FF2AC253FF2FC861FF35CE68FF3BD0
          6BFF60C963FF36D771FF96B854FFF39936FFE49C36FFE3992EFFE19527FFDF91
          1FFFDB8C14FFD88709FFD98100FFC38001FF059C05FF009500FF009400FF7773
          00FFAC6306FF9E6E29FF91723EFF803811C90000000000000000000000000000
          0000968448DE13AE28FF1CB840FF28C151FF30C960FF36CF69FF3BD46EFF3DD8
          72FF3EDD78FF42E07DFFA9C166FFF6A751FFE8A84FFFE7A344FFE49C36FFE196
          29FFDD901DFFDA8B12FFDB8505FFD18202FF0E9E0BFF009901FF009500FF5C7B
          00FF447A02FF7E7425FFA17240FF874216DC0000000000000000000000000000
          0000998A4FDF18B330FF21BD48FF2CC55BFF33CD69FF3BD36EFF40D973FF49DE
          7BFF56E486FF5AEA8FFFC8C87DFFF7B771FFEEB66DFFECB062FFE9A94FFFE59F
          3AFFE19527FFDD8F1AFFDA890DFFDA8302FFB38202FF838300FF179100FF1A8A
          00FF3F7B00FF7D7521FF3E8B41FF874418DC0000000000000000000000000000
          0000968450CF22B53BFF23C14FFF2BCB64FF30D46EFF32DB73FF3FE17BFF51E8
          8AFF64EE97FF7CEE9EFFE7CC90FFF8C58CFFF2C386FFF0BD79FFEDB467FFE9A9
          51FFE49C34FFDF9221FFDB8B14FFDC8505FFBE8402FF9D8103FF328C00FF0092
          00FF088700FF587F22FF368D42FF823E17CA0000000000000000000000000000
          00008D704BAC39B544FF17C656FF7AB852FF9FB653FF7AC967FF6BDC7EFF88E1
          8FFFCED596FFF5D09EFFFCD1A4FFF8D3A4FFF7CD9CFFF3C78FFFF0BE7AFFECB2
          62FFE6A346FFE19629FFDC8D18FFE58609FFA58B05FF00A009FF009800FF0090
          00FF008900FF039427FF3F8941FF743012A70000000000000000000000000000
          00006F4F3A7757B450FF0CC957FFA3AE49FFFF9B3DFFFDA651FFEBBA71FFD8CE
          8CFFFFCD9EFFFCD7AFFFFBDDB9FFFADDB8FFF8D8AFFFF5D09EFFF2C488FFEEB8
          6EFFE8A952FFE29A31FFDE8F1AFFE1870CFFDF8001FFAF8101FF5F8700FF0490
          00FF008A00FF07962FFF607F3FFF522009730000000000000000000000000000
          00003A340B3A97AA6EF818C553FF48C762FFECA346FFFFA655FFBACC7DFF81EB
          9EFFFBD3A7FFFEDDBBFFFEE4C7FFFCE4C8FFFADDBCFFF7D3A8FFF4C790FFEEBB
          75FFE9AD58FFE49C35FFDE8F1CFFD18B10FFA18C08FF988605FFEE6F00FF7A7C
          00FF008D00FF0F9839FFA36C32F70E0502370000000000000000000000000000
          000007060407B2906CC037BD4FFF22CE67FF84BF5DFFAFBD63FF57E58BFF9DE0
          98FFFFD1A5FFFEDCBAFFFDE3C6FFFFE3C9FFFDDEBDFFF7D4A8FFF3C890FFEEBB
          75FFE9AD58FFEB9B34FFC39520FF44A727FF3C9E13FF199A09FFC47600FF8F77
          00FF3F820AFF3B8E3DFF8F421DBB040201060000000000000000000000000000
          000000000000534636539CBC6CFF1DC759FF30D36DFF36DA75FF59E084FFE1C9
          8AFFFDCC9CFFF9D6AEFFFFD9B7FFEDE0B9FFAFEBB7FFE2D5A1FFF7C388FFEEB9
          70FFE8A952FFE9992FFFC7931EFF5F9F1FFF0AA516FF8E8603FFAB7900FF0D8D
          00FF7B7C1AFFA36F35FF3C1C0C4E000000000000000000000000000000000000
          00000000000002020102A88E6BB058BE5BFF21CC62FF31D56FFF8CCB72FFFFB9
          77FFFAC68DFFFDCC9BFFEAD5A4FF93EBADFF85EBAAFFE5CC91FFF5BC79FFECB2
          64FFE6A446FFE19527FFE78B15FF609C18FF808F09FFED7500FFA07A00FF0090
          01FFA67324FF80411FAB01000001000000000000000000000000000000000000
          0000000000000000000023221623C4B181DF3BC35AFF27CD64FF3FD370FF71D1
          7AFFE2C17BFFF8C285FF8ADF98FF6EE69CFF6EE299FFBEC982FFF5B265FFE8AA
          51FFE39B35FFDF901EFFDB8B10FFD68504FFDB7D00FFDC7500FF897C00FF2188
          08FF9A602BDB1E05022100000000000000000000000000000000000000000000
          00000000000000000000000000003E3A2E3EC0C287EC39C359FF21CA60FF2FD5
          72FF96C56FFFACC677FF51DE8AFF60DA89FF5AD987FF51D57FFFDBAD53FFE79D
          39FFDF9324FFDC8E17FFD98709FFD68100FFD07B00FFCF7400FFB67004FFA364
          2AEA2F1A0D3A0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000403E3240BEC38CE04BC45EFF0CC8
          58FF6CBE5AFF75C163FF2BD576FF3CD274FF2FD070FF3CC761FFD69E37FFE493
          24FFDC8E19FFDA890EFFD78403FFD47E00FFCE7700FFC6730CFFA86A32DD341C
          103E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000231C1823A39373AE97C5
          72FFCF9D34FFD79A2EFF7FAF40FF5DB747FF88AC3EFFC79C2EFFE49220FFDD8F
          17FFDA890CFFD88400FFD37E00FFCE7902FFC97A26FF89502FAC1D0A05210000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000544D
          3D54BD996EBFE8B566F9EC9D3CFFE6952BFFEA8F1CFFE78C13FFDB8B0EFFD989
          0BFFD7860DFFD6851BFFD78A35F89E673DBF472D1E5300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000030302033A1D183B6A533E76987550ABB78854CFC08C51DFBE874CDFAE7A
          46CE8D633CAB5C402B751E150F3B030201030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000101010225252546595959A95A5A5AAD313131600F0F0F1B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000023232341616161B58C8C8CF78B8B8BFA696969CB444444800B0B0B230000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001E1E1E375A5A
          5AA6939393FDA2A2A2FFA4A4A4FF9A9A9AFF969696FF8F8F8FFF808080F35454
          54A92525254D0707070F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000161616285656569B909090F2A8A8
          A8FFABABABFF979797FF808080FF767676FF808080FF7B7B7BFF6B6B6BFF8484
          84FF868686FF656565CD32323280101010230000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000151515255050508B919191F2AEAEAEFFB3B3B3FF9B9B
          9BFF858585FF8E8E8EFFBABABAFFAEAEAEFF8C8C8CFF787878FF464646FF3939
          39FF595959FF737373FF858585FF797979F5545454A91515154F0707070F0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000A0A0A114848487F8C8C8CE3B3B3B3FFB8B8B8FFA2A2A2FF8B8B8BFF9B9B
          9BFFC0C0C0FFDADADAFFD6D6D6FFB5B5B5FFADADADFFB0B0B0FF646464FF2B2B
          2BFF2A2A2AFF313131FF464646FF5D5D5DFF747474FF7F7F7FFF606060CD3E3E
          3E800A0A0A240000000000000000000000000000000000000000000000000000
          000042424271B2B2B2FFC0C0C0FFA6A6A6FF969696FFA5A5A5FFCDCDCDFFDDDD
          DDFFDCDCDCFFD5D5D5FFD2D2D2FFB6B6B6FFACACACFFB1B1B1FFA0A0A0FF6767
          67FF3B3B3BFF2F2F2FFF272727FF2B2B2BFF363636FF4A4A4AFF626262FF7070
          70FF6E6E6EF34A4A4AAA2424244E0101010A0000000000000000000000000101
          010156565691A4A4A4FF9E9E9EFFB3B3B3FFD4D4D4FFE4E4E4FFDEDEDEFFDADA
          DAFFD8D8D8FFD7D7D7FFD3D3D3FFB8B8B8FFB0B0B0FFB0B0B0FFB4B4B4FFB0B0
          B0FF9B9B9BFF797978FF545454FF3B3B3BFF282828FF262626FF292929FF3A3A
          3AFF505050FF636363FF6E6E6EFF1B1B1B500000000000000000000000003434
          345A8B8B8BE0BEBEBEFFDEDEDEFFE8E8E8FFE4E4E4FFDFDFDFFFDDDDDDFFDCDC
          DCFFDADADAFFDADADAFFD2D2D2FFB9B9B9FFB4B4B4FFB4B4B4FFB4B4B3FFB4B5
          B6FFB5BABFFFB5BAC2FFAEB3B9FF95989BFF787879FF555555FF363635FF2A2A
          2AFF232323FF323232FF616161FF3D3D3D910404040800000000000000006161
          61A3D4D4D4FFEEEEEEFFE6E6E6FFE4E4E4FFE3E3E3FFE1E1E1FFE0E0E0FFDEDE
          DEFFDCDCDCFFDCDCDCFFD1D1D1FFB9B9B9FFB9B9B9FFB8B8B8FFB7B9BAFFB7B7
          B7FFC1A07CFFC39A6CFFC19D76FFBEAA98FFB8B6B7FFABB1B7FF999B9DFF7373
          72FF4C4C4CFF545454FF909090FF757575EF3232327C00000000000000005A5A
          5A92D4D4D4FFECECECFFE8E8E8FFE7E7E7FFE6E6E6FFE4E4E4FFE2E2E2FFE0E0
          E0FFDEDEDEFFDDDDDDFFCFCFCFFFBCBCBCFFBDBDBDFFBCBCBCFFBABEC5FFCA9B
          64FFE19537FFE39A41FFDF9539FFDA892AFFD0842FFFC29A70FFBBBBBBFFBABB
          BCFFB1B1B0FFADADADFFBBBBBBFFA0A0A0FF3F3F3F9A00000000000000004C4C
          4C7BCFCFCFFFF0F0F0FFEAEAEAFFE9E9E9FFE8E8E8FFE6E6E6FFE4E4E4FFE2E2
          E2FFE0E0E0FFDEDEDEFFCBCBCBFFC0C0C0FFC1C1C0FFBEC3C8FFC2B2A1FFDE98
          44FFECB268FFE6A857FFE5A755FFE5A753FFE4A047FFDD851EFFC69057FFB8BD
          C2FFBEBCBAFFBEBBB7FFBBBBBBFF9B9B9BFF3333337F00000000000000003131
          3154C2C2C2FBF4F4F4FFEDEDEDFFECECECFFEAEAEAFFE8E8E8FFE5E5E5FFE3E3
          E3FFE2E2E2FFDDDDDDFFC7C7C7FFC5C5C5FFC4C5C5FFC2C7CCFFD09F62FFEBAE
          62FFEBB26AFFE7A858FFE6A655FFE4A451FFE4A450FFE4A046FFD28732FFC0B8
          AFFFB6BCC4FFB2BFCCFFC4C3C3FF8F8F8FFD2525255A00000000000000002222
          2229A9A9A9E5F4F4F4FFF0F0F0FFEEEEEEFFECECECFFEAEAEAFFE7E7E7FFE5E5
          E5FFE5E5E5FFD7D7D7FFC9C9C9FFC8C8C8FFC7CBD0FFCABAA7FFE29E4AFFEFBD
          7DFFEAAD61FFE8AA5CFFE7A858FFE5A654FFE4A451FFE49F46FFD58E3DFFB9B1
          AAFF65ABE2FF5AB2F9FFC9C8C8FF767574E90606062D00000000000000000A0A
          0A0B7C7C7CA3E8E8E8FFF5F5F5FFF0F0F0FFEDEDEDFFEBEBEBFFE9E9E9FFE7E7
          E7FFE3E3E3FFD2D2D2FFCECECEFFCDCECFFFCCCED3FFD8A261FFEFB66EFFEEB8
          76FFEAAD61FFE9AB5EFFE8A95BFFE6A757FFE5A554FFE39E43FFD6974FFF979E
          A5FF43B4FFFF61B3EFFFBAB8B7FF515150AA0202020D00000000000000000000
          00001C1C1C4BE0E0E0FFFAFAFAFFF1F1F1FFEFEFEFFFEDEDEDFFEAEAEAFFE8E8
          E8FFDDDDDDFFD5D5D5FFD5D5D5FFD3D8E0FFD4B790FFE9AA5BFFF2C084FFEDB3
          6CFFEBAF64FFEAAD60FFE9AB5DFFE7A959FFE6A857FFE09639FFD3AA7AFFA4AC
          B3FF5B92B3FF9DB2BFFFAEAAA8FF1E1E1E560000000000000000000000000000
          0000010101068B8B8BAFE7E7E7FBF9F9F9FFF1F1F1FFEEEEEEFFEBEBEBFFE4E4
          E4FFDCDCDCFFDBDBDBFFDBE0E6FFD9C8B3FFE5A756FFF3C287FFF0BA7AFFEDB2
          6AFFECB067FFEAAE63FFE9AB5EFFE7A95BFFE7A958FFDB9035FFCEC4B9FFCDCF
          D1FFC6C2BEFFCAC8C5FF686969C70505050E0000000000000000000000000000
          0000000000001D1D1D238D8D8DBEDBDBDBF4F1F1F2FFE8E9EAFFE5E6E7FFE4E5
          E6FFE3E6E9FFE1E6ECFFE0D0BCFFE6AD63FFF5C287FFF3C185FFEFB671FFEEB4
          6CFFEDB169FFEBAF65FFEAAC60FFE9AC5FFFE49C41FFD7A66CFFD3D7DDFFD4D4
          D4FFD9D9D9FFA4A4A4FB1F1F1F46000000000000000000000000000000000000
          000000000000000000001717171B5B5B5B87B0AFAEFBCFCBC6FFCBC9C5FFCBC9
          C7FFD6CFC7FFE7CAA4FFEFB773FFF7C792FFF6C58DFFF1B977FFF0B672FFEEB4
          6EFFEDB26AFFEBB066FFEAAF63FFE9A857FFDD9843FFDBD1C7FFDEE1E6FFDDDD
          DDFFB0B0B0FE3F3F3F7300000000000000000000000000000000000000000000
          000000000000000000000000000014141424BBB6ADF9FFFAE5FFF5E7D2FFE9C1
          94FFE9B273FFF6BF7FFFF8C996FFF7C288FFF4BB7BFFF2BA78FFF1B875FFF0B7
          72FFEFB46EFFECB16AFFEBAD63FFDB963DFFDBC3A4FFE2E7EDFFCFCFCEFF9B9B
          9BEC3B3B3B680000000000000000000000000000000000000000000000000000
          00000000000000000000000000004040406CDFD9CCFFFFF9E6FFFFF5E3FFFFEB
          CEFFFCD7ABFFF7CB97FFF3C286FFF1BC7AFFEFB771FFECB269FFEAAD60FFEBAC
          5BFFEDAC58FFEBAA57FFBD7F2FD2816A4EA073777EB36F6F6FB34D4D4D801515
          1523000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000646464A2F6EFE2FFFFF6E7FFFFF4E3FFFFF3
          E4FFFFF6E5FFFFF4E1FFFEEED5FFFCE8C9FFFBE2BDFFF9DCB3FFF7DBACFFD7BD
          97FF6B5639983D290D41150D0317000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000808080D8B8A89CCFEF9EDFFFFF7EAFFFFF5E7FFFFF3
          E4FFFFF2E0FFFFF0DCFFFFF0DBFFFFF0D8FFFFF0D6FFFFEED3FFFFF6D6FFBBB6
          ABFC17181A2D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001B1B1B30BDBBB8EFFFFCF3FFFFF7EDFFFFF6EAFFFFF4
          E6FFFFF3E2FFFFF1DEFFFFF0DBFFFFEED7FFFFEDD3FFFFECCFFFFDECCCFF8E8A
          84DA030304060000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003232325AE3E1DEFFFFFFFEFFFFFCF4FFFFFAEFFFFFF8
          EAFFFFF6E6FFFFF3E1FFFFF2DDFFFFF0D9FFFFEFD4FFFFF1D3FFEADCC2FF5655
          5495000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000005A5A5A8DC7C6C6FEDDDBD9FFE1DED9FFE8E3DAFFEEE7
          DCFFF4EBDDFFFFF6E4FFFAF2DDFFFBEFD8FFFCEFD4FFFEF4D6FFD4C9B5FF2C2D
          2E56000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001D1D1D2B2E2E2E49373737583F3F3F66474747744F50
          508359595A924D4D4DA0646464AD706F6DB77B7875C087847FCB787672C11414
          1524000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001010102030303050707070B0A0A0A100D0D0D161010
          101C141414220A0A0A27191A1A312222233E2C2C2C4E363636603636365E0909
          090F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000200000002D0000
          001D000000110000000900000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000010194300466DE0003D5EDE002F
          49C9002438B7001927A200101A8C00090F76000508600002034C000000390000
          00290000001B0000001000000008000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000007
          0C14000F182A000F1728000F1828000B111C003C5E9C0264A1FF0467A6FF0367
          A4FF0266A1FF00649DFF006299FF005E93FF005889FC004F7CF400456BE8003A
          5BDA002D47C8002437B700141F9C0000003E0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000080D160050
          7EDA005D93FF005B8FF9005B8FF9005B8FF9005C91FD0B66ADFF1C76CBFF1C7A
          C9FF1A78C6FF1876C3FF1473BEFF1170B9FF0F6EB5FF0C6CB1FF096BAEFF0769
          ABFF0468A7FF0267A5FF00649FFF000C13860000000000000000000000000000
          000000000000000000000000000000000000000000000000000000141F36005D
          93FF0D4470FF113E68FF103F69FF113D67FF045282FF0E6DB4FF2381D2FF2487
          D3FF2587D3FF2485D3FF2284D2FF2284D2FF2182D2FF2080D1FF1F7FCFFF1D7D
          CDFF1B7ACBFF1772C7FF0767ACFF00141E940000000200000000000000000000
          000000000000000000000000000000000000000000000000000000192845015B
          90FF123C63FF14375DFF14385EFF15365CFF055080FF1173B9FF288AD7FF298F
          D7FF278DD6FF288ED7FF288DD6FF268CD5FF258AD4FF258AD4FF2489D3FF2387
          D3FF2287D2FF1F7FD1FF0B6CB1FF0015229C0000000400000000000000000000
          0000000000000000000000000000000000000000000000000000001D2E50015B
          90FF113C64FF13385FFF133960FF13385EFF045283FF1576BDFF2B8FDAFF2A92
          D8FF268DD6FF2C93D9FF2C92D9FF288FD7FF258DD5FF2990D8FF2890D7FF268D
          D5FF258CD5FF2488D5FF0E72B8FF001927A40000000700000000000000000000
          000000000000000000000000000000000000000000000000000000243861025A
          8FFF123B63FF13385FFF133960FF13385FFF035486FF197AC1FF2E92DCFF2C93
          D9FF288FD7FF2F96DBFF2E95DAFF2A91D8FF278DD6FF2C93D9FF2B93D9FF278E
          D6FF268DD6FF288CD8FF1175BCFF001D2DAD0000000A00000000000000000000
          0000000000000000000000000000000000000000000000000000002B44750456
          89FF133960FF133960FF133960FF133960FF025689FF1C7DC5FF3195DDFF2D94
          DAFF2A91D8FF3299DDFF3198DCFF2C93D9FF2990D7FF2F96DCFF2E95DBFF2990
          D8FF288FD7FF2B8FD9FF1376BDFF002235B60000000E00000000000000000000
          000000000000000000000000000000000000000000000000000000314D830455
          87FF13385FFF133960FF13395FFF123A61FF02588CFF1F81C9FF3599DFFF2F97
          DCFF2D95DCFF359CE1FF349ADEFF2E95DAFF2A91D8FF3299DDFF3197DCFF2C93
          D9FF2990D8FF2E92DCFF167AC2FF00263CBD0000001200000000000000000000
          0000000000000000000000000000000000000000000000000000003757940554
          89FF143960FF133960FF13385FFF123B62FF035A8FFF2485CDFF399EE3FF3195
          D7FF2C8BC9FF379ADAFF389FE3FF3198DDFF2C92D9FF359CDFFF349ADEFF2F96
          DBFF2B92D9FF3195DEFF197EC6FF002A43C50000001600000000000000000000
          0000000000000000000000000000000000000000000000000000004062A80445
          64FF112C53FF133A62FF13385FFF113B63FF035C92FF2A8CD4FF3593D5FF1B63
          9FFF134F86FF1F5C86FF348FC7FF349CE1FF2E95DAFF399FE1FF379EE0FF3299
          DDFF2C93DAFF359AE0FF1C80C8FF002E4ACC0000001A00000000000000000000
          000000000000000000000000000000000000000000000000000000455EB3056E
          12FF042C21FF102851FF143961FF103D65FF045F95FF2C8CD3FF1A68AEFF1267
          B3FF1570BEFF0E5091FF22608AFF3599DAFF2F97DDFF3BA2E3FF3AA1E2FF359C
          DFFF2D94DAFF389DE2FF1F84CCFF003452D40000002000000000000000000000
          000000000000000000000000000000000000000000080000012E003533D431A6
          3EFF319E39FF003316FF0D2246FF103C66FF06649CFF2781C8FF1265B1FF1C84
          D0FF1D87D3FF136DBBFF195588FF3493CEFF329ADFFF3FA5E5FF3DA3E4FF399F
          E1FF2F96DBFF3AA0E3FF2489D1FF00395BDA0000002500000000000000000000
          000000000000000000000000000E000D0069043F05C0147618EE289A31FF57C4
          69FF77DC8EFF42AE4CFF034310FF052948FF0867A1FF2681C9FF2270B6FF59A6
          DEFF5BA8E0FF3180C3FF195E96FF389AD6FF339BDFFF42A8E7FF40A6E5FF3CA2
          E3FF3097DCFF3EA4E6FF278CD3FF003D62DF0000002B00000000000000000000
          00000000000000020024034B05C51DA928FF39C54BFF4DCE62FF5DD272FF66D1
          7CFF70D486FF83DE9BFF5CC164FF0A6133FF0663A0FF3193DBFF377CBBFFB8D2
          E9FFC6DEF1FF5286B9FF2A82BDFF3DA5E5FF349BDFFF45ABE9FF42A9E7FF3FA6
          E5FF3198DCFF41A7E7FF2B8FD6FF004269E50000003200000000000000000000
          00000001001B046007D322BD32FF35C448FF3FC452FF4AC75EFF57CB6BFF63D0
          79FF6FD385FF7AD690FF94E7A7FF5AB68FFF04649FFF3DA1E6FF3F9FDFFF4388
          C3FF4F8EC5FF3A92CFFF49B0ECFF3EA5E5FF369DDFFF48AEEBFF45ACE9FF43A9
          E8FF3299DDFF43A9E9FF3094DAFF014974EB0000003900000000000000000000
          0000014202AD19B928FF28BF3AFF33C246FF41C856FF4ECD61FF5BD16DFF66D2
          7CFF6FD385FF82DD9AFF71D07AFF187A4FFF0A68A8FF40A3E6FF4DB4EFFF2F99
          DEFF40A9E9FF4CB5F0FF4CB3EEFF3FA6E5FF379EE1FF4BB1EDFF48AEEBFF47AD
          EAFF349ADEFF46ABEAFF3499DEFF024F7CF0000101410000000000000000000A
          003D0CA315FF1FC031FF27BF38FF26B634FF20A229FA1A8524EB1A8D35FD4BB9
          5CFF7ADE92FF58C264FF0F6422FF024060FF0F6FAEFF44A7EAFF4BB3EEFF2F99
          DFFF45B0EEFF49B3F0FF49B3F0FF3BA6E7FF319DE3FF46B2F1FF43AFEFFF41AE
          EEFF2997DFFF40ACEEFF379CE0FF035382F40001024700000000000000000041
          018D12B522FF15B021FF07650AD4001C006F0004002300151A48005976FF35A6
          43FF46B54EFF075528FF103058FF094374FF1274B0FF45AAEEFF53B6EDFF46A0
          D9FF60B8E8FF66BBE9FF6ABDE8FF63B3E0FF62AFDBFF79C2E5FF7AC1E3FF7DC0
          E2FF74B4D6FF75BBE1FF3CA1E4FF04598BF80002034F00000000000000000260
          05B20A9E13FF00210085000000080000000000000000001D304E006182FF0C7F
          18FF0A4C35FF123361FF15365FFF074673FF1277B6FF54B0ECFFDEDDCDFFFFF6
          D8FFFFF7DCFFFBF2DCFFFEF3DDFFFEF3DEFFFCEFDFFFFDEEE0FFFCEDE1FFFEF1
          E2FFFCEDE3FFFBE9D1FF5CACE0FF025E96FC0003055800000000000000000164
          02C1012B01A7000000000000000000000000000000000023385E025A8AFF0E40
          54FF133562FF133961FF14375DFF064876FF137BBCFF78C1E6FFDACCD9FF736C
          F1FF645DEFFF7B75F1FFABA7F5FFCAC7F8FF716CF2FF5752F1FF736DF3FFE3E1
          FCFF6F6CF5FFFFF5E8FF6CB4E0FF02629DFF0004076100000000000000000044
          009400030034000000000000000000000000000000000028406D04568AFF1437
          63FF133960FF133960FF14375DFF044A78FF167EC0FF85CAE8FFB0A7E2FF423D
          F3FFB6B4FAFFC4C2FBFF4D47F1FF4942F1FFBAB8FAFF7470F4FFA09DF8FFE9E8
          FDFF5C58F4FFFFF7ECFF73B9E2FF0365A2FF00060A6A00000000000000000007
          000F000000020000000000000000000000000000000000304D83045588FF1338
          5FFF133960FF133960FF14375EFF034B7AFF1A83C6FF8CCEEAFFB7ADE3FF403B
          F2FF8B87F6FFEEEDFEFF817CF5FF352EEEFFFFFFFFFF807BF5FFAFACF9FFECEB
          FDFF5D5AF6FFFFF6EAFF7CBEE3FF076DABFF00070C7200000000000000000000
          0000000000000000000000000000000000000000000000385896055486FF1438
          5EFF133960FF133960FF13385FFF024E7FFF1D88CBFF92D1E9FFB8AEE3FF3E38
          F2FF9794F7FFE7E6FDFF645FF3FF3028EEFFDCDAFCFF7772F4FF938FF6FFB4B2
          FDFF5650D3FFC1B3A4FF6AB2DFFF0D73B1FF00090E7A00000001000000000000
          00000000000000000000000000000000000000000000003C5FA2055486FF1438
          5EFF133960FF133960FF13395FFF015183FF218CD0FF9AD6E9FFB8AEE5FF2F29
          F1FF6B66F4FF807CF6FF6D68F4FFAEACF9FF6B67F4FF605BF3FF706BF5FF726E
          F3FFDDC3C9FFBAD1D5FF4DB6F6FF1375B1FF000C138500000004000000000000
          00000000000000000000000000000000000000000000004066AD074F7FFF1437
          5DFF133960FF133960FF133960FF005386FF2691D5FF9CD0E7FFEDDEE7FFAFAD
          F9FFBDBAF8FFD2CFF9FFEDECFBFFFFFFFBFFF2EEF8FFFCF8F7FFFFFEF6FFFFFF
          F0FFE8E0D1FF67C0F1FF4FB8F7FF187BB9FF000F199000000008000000000000
          0000000000000000000000000000000000000000000000446CB70A4A79FF1535
          5AFF14375DFF14375CFF13385EFF005589FF2995D9FF9DCBE1FFFFF3D5FFFFFF
          EAFFFFFFE6FFFFFBE3FFFFF5E0FFFFF0DDFFFFEFDAFFFBEBD9FFF3E8D9FFECE3
          D6FF91C5E2FF4DBAF9FF50B5F7FF197DBFFF00131E9B0000000B000000000000
          0000000000000000000000000000000000000000000000446CB9055487FF0A4A
          78FF094B7AFF094B7AFF084B7BFF005A8FFF2F95D9FF6CBDEEFFCFD6D2FFC6D7
          DBFFB3D3E0FFA5CFE4FF93C9E7FF84C4EAFF75C0ECFF64B9EDFF58B3EDFF4BAC
          EAFF41A5E7FF3D9FDFFF3092D6FF0E73B4FF0016229700000006000000000000
          000000000000000000000000000000000000000000000022355C004770C00046
          6EBB00456DBA00456DB9004770BE005C91F93090D6FF44AAF1FF3FA8EBFF38A2
          E5FF2E98DDFF2791D6FF2189CCFF1A81C4FF157BBCFF0F72B0FF0A6DAAFF0666
          A0FF03639CFF015B91F8005181EB004D7AD20006093A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000005080E005687E60967A2FF0B6BA8FF05649DFF0261
          9AFF005D93FC005283EF004C7ADB003E63C4003454AB002E498E00203372001D
          2D54000D143B000D142400020311000101030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000002C4676003A5B9F0020337B0021345F000E
          1643000C142B0005081600020307000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000C040029561C00833B1200610A0300100000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000043150085892A00E0782600CA411600651204001C02010004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000360F
          00558F3406FF6A2E13FF8C2F02FF9D2D00FF942B00F57F2900CB5C1E00891F0A
          0051190800290100000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000C0300128226
          00CF683B25FF5F6365FF78655CFF876354FF945538FF984013FF973005FFA331
          00FF902900E6782200BF5B1C008D3411004E0F04001601000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000511B0079932E
          00FF60483CFF636A6EFF6E7376FF7D8487FF8D9194FF999C9DFF9C8F8BFF9E77
          61FFA3613DFFA65225FFA84204FFA63500FF9B3100EF7B2800BE5018007C2E0D
          0048150700210000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000160500239C3B00EC9A36
          00FF58433BFF626668FF727171FF808080FF8F8F8FFF9B9B9CFF9DA0A1FFA0A9
          ADFFA4AEB4FFA8A7A6FFAD9C8DFFB39076FFB77A4AFFB96119FFB65006FFB246
          00FF933100DE732000B7521900822D0E00440F04001600000000000000000000
          000000000000000000000000000000000000010000025F1900A1C45F00FFB348
          00FF552E1FFF495861FF6C6D6EFF7B7B7BFF8B8B8BFF969696FF9A9A99FF9E9E
          9DFFA3A3A3FFA7A9ABFFABB1B5FFAFB7BCFFB2B7BBFFB8BABBFFBFB3A5FFC59F
          76FFCC8D49FFCF7D2DFFC1600BFF9C3600FC4C18007500000000000000000000
          0000000000000000000000000000000000002D0F0044A24100F7DB7500FFE37A
          00FFA24305FF804628FF747271FF767C7FFF838382FF8C8C8CFF909090FF9595
          95FF9B9B9BFFA0A0A0FFA6A6A6FFAAAAAAFFAFB0B0FFB5B6B6FFB9BCBEFFBCC3
          CAFFC0CAD4FFC9D0CEFFBB8F71FA491300760802000C00000000000000000000
          000000000000000000000000000005010006782B00C6CA6500FFEA8300FFFF9D
          02FFDD852AFFC55C09FFA4501BFF887C79FF858C91FF848484FF8A8A8AFF8D8D
          8DFF909090FF939393FF999999FF9E9E9EFFA4A4A4FFA9A9A9FFAFAFAFFFB4B4
          B4FFBBBBBAFFC3CFD2FF6A4F4D91000000000000000000000000000000000000
          00000000000000000000000000004A0D0068AE5100FFE47E00FFFA9400FFED94
          1EFFC67330FFE58308FFD46700FFAD4D13FFA0897EFF9DA7ACFF909091FF9191
          91FF9A9A9AFF999999FF969696FF949494FF969696FF9B9B9BFFA2A2A2FFA7A7
          A7FFADADACFFB5B8B8FF5D565679000000000000000000000000000000000000
          000000000000000000001405001C893300E0D97400FFF58D00FFFC9E0FFFCC7B
          37FFDB7D15FFE27C00FFE27D00FFDB6F00FFB54E08FFB08974FFBFC8CDFFAEAF
          B0FFA1A0A0FFB1B1B1FFC3C3C3FFBCBCBCFFAFAFAFFFA8A8A8FF9F9F9FFF9D9D
          9DFFA1A1A1FFA6A6A5FF6B6D6D98000000000000000000000000000000000000
          000000000000000000005C1E008EC35E00FFF08A00FFFF9E05FFDE8C31FFD07A
          29FFE78202FFE27C00FFE17B00FFE27D00FFDF7700FFBA4C00FFB07B5EFFD1D5
          D9FFCBD0D2FFB1B1B1FFA9A9A9FFC8C8C8FFE1E1E1FFDADADAFFD4D4D4FFCDCD
          CDFFC2C2C2FFB3B3B3FF8E8E8ECB0808080B0000000000000000000000000000
          000000000000260E0035AC4900F7E88200FFFD9900FFF59D24FFCA7B3AFFE586
          0DFFE57F00FFE37D00FFE27C00FFE17B00FFE27D00FFE37C00FFC15100FFB168
          46FFD0CECEFFDAE0E4FFCDCCCCFFAFAFAFFFB8B8B8FFDEDEDEFFE8E8E8FFE9E9
          E9FFEEEEEEFFC8C8C8FF5B5B5B77020202020000000000000000000000000000
          0000030100047C3000B5D67100FFFA9300FFFFA415FFD3863EFFDE8520FFEA84
          01FFE67F00FFE57F00FFE47E00FFE37D00FFE27C00FFE27C00FFE47E00FFCA5B
          00FFAF592AFFCCC0BBFFDFE8EDFFDFDFDFFFC4C4C4FFB2B2B2FFD7D7D7FFEEEE
          EEFFCFCFCFFF6B6B6B9100000000000000000000000000000000000000000000
          000041170054C15D00FFF58E00FFFFA10BFFE79738FFD38234FFEE8A08FFE882
          00FFE88200FFE68000FFE57F00FFE47E00FFE47E00FFE27C00FFE17C00FFE680
          00FFD36600FFB04D11FFCAB1A4FFE2EBEFFFE6E7E8FFD7D6D6FFB9B9B9FFC5C5
          C5FF7777779F0404040500000000000000000000000000000000000000000F06
          00138B3C00BDE57F00FFFF9D05FFF9A42CFFD08343FFEA8E17FFED8700FFEA84
          00FFEA8400FFE88200FFE78100FFE68000FFE57F00FFE47E00FFE37D00FFE27C
          00FFE57F00FFDB7000FFB24907FFC49B8BFFE7F0F4FFEBEDEFFFE4E4E4FFBCBC
          BCFF434343600000000000000000000000000000000000000000000000003112
          003DC15C00F6FC9801FFFFA81FFFDC9045FFE08B2BFFF28D04FFEC8600FFED87
          00FFEA8300FFE98200FFEA8500FFE78100FFE78100FFE57F00FFE57F00FFE37D
          00FFE37D00FFE57F00FFE07800FFB94A00FFBD8367FFE8EEF0FFF1F5F7FFF0F0
          EFFFBABABAF22121213400000000000000000000000000000000000000004E22
          0065D57000FEFFAA14FFEF9F3FFFD6893EFFF4940FFFF08A00FFEF8900FFEF87
          00FFDC7B0FFFDD7E12FFE98000FFEA8400FFE98300FFE78100FFE68000FFE57F
          00FFE57F00FFE37D00FFE47F00FFE47E00FFC15300FFB76D44FFEBE9E9FFDFE8
          ECFF979A9AC01012121900000000000000000000000000000000000000005A28
          0070DD7C09FFFEB036FFD78D4AFFEE9621FFF58F00FFF18B00FFF38D00FFDF76
          01FFDF9B4CFFE9B066FFDF841AFFE87F00FFEB8500FFE88200FFE88200FFE680
          00FFE68000FFE47E00FFE47E00FFE37D00FFE78100FFCC5C00FFB05A27FF8D7B
          72C6080707090000000000000000000000000000000000000000000000003F1F
          004CD97D11FFE8A04EFFE59439FFF89609FFF38D00FFF69000FFE77D01FFD685
          30FFECB568FFECB569FFEBB46BFFE18B28FFE67C00FFEC8600FFEA8400FFE882
          00FFE88200FFE68000FFE68000FFE47E00FFE47E00FFE78200FFD56B00FF9941
          00DD3A1A0C4D0200000300000000000000000000000000000000000000000B03
          000C6D290180BD691AF4F49716FFFB9400FFF69000FFF18900FFC96D16FFEAB2
          65FFECB364FFECB263FFEEB76BFFEFB972FFE49436FFE77D00FFED8500FFEA84
          00FFE98300FFE78100FFE78100FFE57F00FFE57F00FFE37D00FFE88200FFDD77
          00FFA73F00F21F0C002A00000000000000000000000000000000000000000000
          000000000000381D0049AE5600DFEC8A00FFFD9700FFF79000FFD97509FFD589
          3AFFECB466FFEEB665FFEDB366FFEEB76BFFF0BC75FFE69C44FFE67D00FFED85
          00FFEB8500FFE98300FFE98300FFE78100FFE78100FFE78100FFE58000FFC35B
          00FF5B22007C0703000900000000000000000000000000000000000000000000
          00000000000000000000200C0028953D00BFE17F00FFFD9700FFFD9600FFE379
          00FFD17D27FFE9B063FFF0B869FFEEB567FFEFB76CFFF0BD77FFE9A44FFFE681
          08FFEC8500FFEC8600FFEA8400FFE98300FFEA8400FFE78200FFBF5A00FB5420
          0074000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000E040010783C009BD67300FFFB9500FFFE98
          00FFEC8300FFD27617FFE5A85BFFF0BB6CFFEEB668FFEEB669FFF1BE76FFEAAA
          59FFE68004FFEE8700FFEC8500FFEE8800FFEA8400FFC35C00FF511F006F0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005826006EC16800F3F48F
          00FFFF9900FFF38900FFD6740DFFDF9C4DFFF1BB6CFFEFB869FFEEB76DFFE391
          30FFEB8301FFEF8900FFEF8900FFEB8600FFBF5900F84F1F0069000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003F0F0049AC5A
          00DEED8700FFFF9A00FFF99100FFDE7605FFDA8F3DFFEBB46AFFDD8727FFEB82
          00FFF28C00FFF38D00FFEE8800FFC15D00FB4C1F006400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E0F
          0026974600C1E47E00FFFF9900FFFD9500FFE67F00FFD4750FFFED8500FFF58F
          00FFF69000FFF08B00FFBD5900F5491E005F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D0600107433009BDA7400FFFB9600FFFE9800FFF79000FFF79100FFF993
          00FFF28E00FFC05D00F7451D005A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004F23006EC86400F3F59100FFFD9800FFFB9500FFF48F
          00FFBC5C00F1431C005500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003A190047AE5400DFF18B00FFF79300FFC05D
          00F3401B00500000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000220F0028984800C3B85A00EC3C1A
          004B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004C230062703400960804
          000A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000836353E9A48472F79F7E6EF49F7E6EF49F7E6EF49E7E
          6EF49E7E6EF49E7F6EF49E7E6DF49E7E6DF49D7E6DF49D7E6DF49D7E6DF49C7D
          6CF49C7D6CF49A7A68F4B18B81F43E8336F4028412F40A8211F40A8112F4007C
          0AF4418336F78F6C65E90504030B000000000000000000000000000000000000
          00000000000000000000A18374F4FFEFDDFFF7E4D2FFF7E4D3FFF8E7D6FFF8E7
          D6FFF8E7D6FFF8E7D6FFF8E7D6FFF8E7D6FFF9E7D6FFF9E6D5FFF9E6D5FFF8E6
          D4FFF8E6D4FFF8E6D1FFFFEEE3FF5AA353FF46D871FF37D566FF39D66AFF1ABD
          41FF5AA14EFFA8847AF40503030B000000000000000000000000000000000000
          00000000000000000000A3897AF4FFFFF6FFFBF3E8FFFBF2E7FFF2E6D9FFF2E5
          D9FFF2E5D8FFF2E5D9FFF2E5D9FFF2E4D9FFF2E4D7FFF2E4D7FFF1E3D5FFF3E2
          D5FFF4E2D4FFF4E1D2FFFFEBE5FF5AA454FF56DA7BFF41DD77FF44DE7AFF1DBD
          44FF589F4CFFAB807AF40503030B000000000000000000000000000000000000
          00000000000000000000A48A7BF4FFFFF9FFFBF5EBFFFAF3E8FFDBC0B3FFDABD
          B0FFDABEB0FFDABEAFFFDABEAFFFDABDAEFFDABCACFFDABAAAFFDDBFB1FFDAC6
          B4FFD2BDA8FFD4BDA8FFE3C3B4FF509643FF59DD7FFF42DE77FF45DE7AFF20BF
          46FF529845FFAD9084F402080116000400090004000900000000000000000000
          00000000000000000000A48B7CF4FFFFFAFFFCF6ECFFFBF4E9FFDCC2B6FFDBBF
          B2FFDBC0B3FFDBBFB2FFDBBFB2FFDABEB0FFDABDAFFFD9BBACFFECC7C0FF54A0
          4CFF0F9A1EFF17981EFF17961DFF16981EFF5BE383FF46E07AFF48E17CFF2EC6
          52FF0E8E16FF148E1CFF068410F50A8614FF025A03CA00000000000000000000
          00000000000000000000A58C7CF4FFFFFCFFFCF7EEFFFBF5EBFFDCC4BAFFDBC1
          B7FFDBC2B7FFDBC1B6FFDBC1B5FFDBC0B4FFDBBFB2FFDABDAFFFEDC7C1FF54A3
          4BFF50E47CFF43E173FF44E173FF45E174FF49E47CFF4AE27DFF48E17BFF40D8
          6EFF3CD769FF39D668FF3AD76AFF2AC44EFF046608D300000000000000000000
          00000000000000000000A68C7DF4FFFFFDFFFCF7EFFFFBF5EDFFDCC5BDFFDBC2
          BBFFDBC3BBFFDBC3B9FFDBC2B8FFDBC1B7FFDBC0B4FFDABDB1FFEDC8C3FF55A5
          4CFF61E887FF51EE88FF53EC87FF51EA85FF4EE781FF4CE57FFF49E27CFF48E2
          7CFF46E07BFF44DD78FF43DD7AFF2CC34FFF036607D300000000000000000000
          00000000000000000000A68D7EF4FFFFFFFFFCF8F1FFFBF6EFFFDCC7BFFFDBC5
          BDFFDBC5BDFFDBC4BBFFDBC3BAFFDBC2B8FFDBC1B6FFDABEB3FFEDC8C5FF55A7
          4CFF6AF091FF5FF794FF5FF593FF5DF391FF52EA85FF4EE781FF4BE47EFF4BE4
          7FFF50E784FF4EE582FF4EE584FF32CA59FF046708D300000000000000000000
          00000000000000000000A68E7FF4FFFFFFFFFDF9F3FFFBF7F1FFDDC8C3FFDBC5
          C1FFDBC6C1FFDBC5BFFFDBC4BDFFDBC3BBFFDBC2B8FFDABFB4FFEECAC7FF4FA4
          48FF38C851FF49D062FF46CD5FFF57D16DFF71F097FF4EE982FF4EE782FF46DD
          73FF4AC561FF43C25BFF51C567FF34B750FF036709D300000000000000000000
          00000000000000000000A88E81F4FFFFFFFFFDFAF5FFFBF8F3FFDDCAC5FFDBC8
          C4FFDBC8C3FFDBC7C1FFDBC6BEFFDBC4BCFFDBC3B9FFDAC0B6FFE4C8C0FFB3C2
          9DFF8DB276FF92B179FF9BB37EFF399630FF66EA8CFF51EC86FF52EC87FF2BC8
          50FF379130FF788D5EF70026005B00250056001F004500000000000000000000
          00000000000000000000A99081F4FFFFFFFFFDFAF5FFFBF8F4FFDDCAC6FFDBC8
          C4FFDBC8C4FFDBC7C2FFDBC6BFFFDBC5BDFFDBC3BAFFDBC2B8FFDAC1B5FFE6C2
          BCFFEBC3BEFFE9C0B9FFFDCBCDFF59A94EFF61EA87FF52ED87FF52EC88FF26C7
          4CFF5CAB53FFBD898DF40404020B000000000000000000000000000000000000
          00000000000000000000A99083F4FFFFFFFFFDFBF8FFFBF9F6FFDDC9C5FFDBC6
          C3FFDBC7C3FFDBC6C1FFDBC6BFFFDBC4BDFFDBC3BBFFDBC1B9FFDBC0B5FFDBBF
          B3FFDBBEB0FFDABBACFFEDC5BEFF55A94BFF6AF293FF5DF594FF5EF493FF2ED0
          57FF57AA4FFFAC877EF40503030B000000000000000000000000000000000000
          00000000000000000000AA9084F4FFFFFFFFFEFCF9FFFDFAF7FFDEC9C4FFDCC7
          C1FFDCC7C2FFDCC7C1FFDCC5BFFFDBC4BDFFDBC3BBFFDBC2B9FFDBC0B6FFDBBF
          B3FFDBBEB1FFDABCACFFEEC6C0FF4FA446FF38C751FF48CC60FF46C75CFF1BB4
          3AFF56A550FFAD877FF40504030B000000000000000000000000000000000000
          00000000000000000000AC9083F4FFFFFFFFFEFDFBFFFCFBF8FFDEC9C4FFDCC6
          C0FFDCC7C1FFDCC6C0FFDCC6BEFFDCC4BCFFDCC3BBFFDBC2B9FFDBC1B5FFDBBF
          B3FFDBBEB0FFDABCADFFE4C4B8FFB3C098FF8DAE71FF94B279FFA2CB98FFA1CA
          97FFC7DBB7FFA38377F40504030B000000000000000000000000000000000000
          00000000000000000000AC9184F4FFFFFFFFFEFEFCFFFCFAF9FFDCC5BEFFDAC1
          BBFFDAC2BCFFDAC2BBFFDAC0B9FFDAC0B7FFDABFB5FFDABEB3FFD9BCB0FFD9BB
          AEFFD9BAACFFD9B8A9FFD8B7A6FFE3BAADFFE8B8ADFFECC2B6FFFFFCFBFFFFFF
          FFFFFFF1E7FF9B7C6BF40504030B000000000000000000000000000000000000
          00000000000000000000AD9185F4FFFFFFFFFEFEFDFFFEFDFDFFF4ECEAFFF3EC
          E9FFF3ECE9FFF3EBE9FFF3EBE8FFF3EAE7FFF3EAE6FFF3E9E4FFF3E9E3FFF2E7
          E1FFF2E7E0FFF2E6DEFFF2E5DDFFF2E4DBFFF1E3D8FFF3E5DAFFFCF6EEFFFCF8
          EFFFFBECDEFF9D7C6CF40504030B000000000000000000000000000000000000
          00000000000000000000AE9285F4FFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFCFFFFFFFBFFFFFFF9FFFCF8EFFFFCF8
          EFFFFAEBDEFF9D7D6CF40504030B000000000000000000000000000000000000
          00000000000000000000AE9285F4FFFFFFFFFFFFFFFFFEFEFEFFECE2E1FFEBE1
          E0FFEBE1E0FFEBE0DEFFEBE0DEFFEADEDCFFEADDD9FFEADCD7FFEADBD4FFEADA
          D2FFEAD9D1FFE9D7CDFFE9D6CBFFE9D5C9FFE9D3C4FFECD8CAFFFCF6EFFFFCF8
          F0FFFAEBDFFF9D7D6DF40504030B000000000000000000000000000000000000
          00000000000000000000AF9385F4FFFFFFFFFFFFFFFFFDFCFCFFDDCAC9FFDBC7
          C7FFDBC8C7FFDBC6C4FFDBC6C2FFDBC4BFFFDAC2BCFFDAC1B8FFDABFB6FFDABD
          B2FFDABCAFFFD9BAACFFD9B7A8FFD9B6A5FFD9B3A0FFDEBDA9FFFBF7EEFFFEFA
          F2FFFCEDE0FF9E7D6DF40504030B000000000000000000000000000000000000
          00000000000000000000B09486F4FFFFFFFFFFFFFFFFFEFDFDFFDFCFCEFFDECD
          CDFFDECDCCFFDECCCAFFDECBC8FFDEC9C6FFDEC8C3FFDDC7C0FFDDC5BCFFDDC3
          B9FFDDC2B6FFDEC2B6FFE1C4B5FFE1C3B2FFDFC0AEFFE5C7B6FFFCF7F0FFFBF8
          F0FFF4E3D7FF9B7A6AF40504030B000000000000000000000000000000000000
          00000000000000000000B09486F4FFFFFFFFFFFFFFFFFFFFFFFFFDFDFCFFFDFD
          FDFFFDFDFDFFFDFDFDFFFDFDFCFFFDFDFCFFFDFCFCFFFCFBFAFFFCFAF9FFFCF9
          F7FFFDFAF7FFF6F1EDFFEAE0DAFFE5DAD3FFE0D4CEFFDBCFC8FFD6CAC4FFCCBD
          B6FFB99D90FF6B4F43BF02010103000000000000000000000000000000000000
          00000000000000000000B29487F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFEFEFDFFFEFD
          FBFFFFFFFFFFD7C9C1FFB3988BFFC5B0A5FFC0A693FFBD9F87FFC09C7BFFAB84
          61FF6C4B3CCA120D0B2100000000000000000000000000000000000000000000
          00000000000000000000B29488F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFEFDFCFFFEFC
          FAFFFFFFFFFFD9CCC4FFC9B6ABFFFFF7E5FFF4DEBAFFF5D49DFFDEB478FF7557
          43C00E0A08180000000000000000000000000000000000000000000000000000
          00000000000000000000B39587F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFDFCFFFEFDFBFFFEFC
          F9FFFFFFFDFFE1D7D1FFC3A691FFFBE6C3FFF4D39BFFD9B077FF735543C30D09
          0817000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B29487F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFBFFFEFC
          F9FFFFFFFDFFE1D7D2FFC09F81FFFBDA9FFFD9AF75FF705240BB0C0807140000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B29587F4FFFFFFFFFEFEFDFFFEFEFEFFFEFEFEFFFFFF
          FFFFFEFEFEFFFEFEFEFFFEFEFDFFFEFDFCFFFEFDFCFFFEFCFAFFFEFCFAFFFDFB
          F8FFFFFFFCFFE3D9D4FFC39C72FFDDB477FF6A4D3EB50906050F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B19487F4FFFFFFFFFFFFFDFFFFFFFEFFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFDFFFFFEFCFFFFFDFBFFFFFDFAFFFEFC
          F8FFFFFFFFFFE0D5CDFFAD845EFF6F5040B40906060F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B09285F4FFFFFFFFFAF8F6FFFAF8F7FFFAF8F7FFFAF8
          F7FFFAF8F7FFFAF8F7FFFAF8F6FFFAF8F6FFFAF7F6FFFAF7F6FFF9F7F5FFF9F7
          F5FFFFFFFEFFC1A99EFF5C4034A70705040D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000805F50CA917365D58D7162D38D7062D38D7062D38D71
          62D38D6F62D38C7062D38C6F61D38A6E62D38A6D60D3896D61D3896D60D3886C
          5FD38C7064D85D463AA00D090617000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000A0F15035A80BA026792D9003F
          5D8F001E3148000B111800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000023395117B3DBFF11A9D6FF07AC
          D7FF08AAD8FC0376A3D9004C6FA200293D5800090E1400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000013D5B8529CBE9FF19AED8FF11BF
          E4FF17DEFFFF13D5FEFF0FC9F6FF09AADAFF0486B5ED015A82AC00203060000E
          1429000102020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000102030A688FC33CE0FCFF1DABD5FF17BC
          E3FF23DCFFFF1ED5FFFF1BD6FFFF19DAFFFF16DAFFFF10C8F2FF0BB7E5FF0691
          C1EC015780B80036527700131D2A000102030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000E151E1B95BDF454F3FFFF23ACD5FF20BE
          E3FF30E0FFFF2AD9FFFF27DBFFFF25DAFFFF22D9FFFF1DD9FFFF19DAFFFF17D9
          FFFF16D1FAFF11B8E5FF0A94C2F9046992C90039577C001A293D00070A0E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000002B45633AC1DDFF5FF5FFFF28B0D6FF2DC3
          E3FF3DE7FFFF32DAFAFF29CDDBFF22C2BDFF21C0B4FF23C4B4FF22C4B1FF1DC6
          C5FF1ED7FFFF1ED9FFFF20DBFFFF1DCFF9FF18BBE6FF129FCDF8056B95CE0042
          6393012130460005080C00000000000000000000000000000000000000000000
          0000000000000000000000000000034B75A862E9F7FF68F3FFFF30B4DBFF35C1
          DBFF38D0D0FF2BBEA7FF32C7AAFF3CD4B8FF43DDC2FF49E6CDFF3FDBB5FF25C8
          C3FF28DAFFFF24D7FFFF24D6FFFF26D7FFFF28DAFFFF29D8FFFF28D3FDFF24C3
          EFFF16A2D1FF0B7BA9E302486B9A00262F4F0005070A00000000000000000000
          00000000000000000000000D141C1B84A7DA79F8FEFF78FBFFFF30AFCAFF2FAD
          ABFF3CCAA7FF43D5BCFF47DBC3FF48DEC6FF49E1CAFF4EE7CEFF35CCAEFF31D7
          E9FF32DEFFFF2EDBFFFF2CD9FFFF2DD8FFFF2DD7FFFF2ED6FFFF2ED5FFFF30D6
          FFFF33DBFFFF32D5FFFF28BDEAFF2396C4FF03334B7300000000000000000000
          000000000000000000000024384D53C4DDFF90FFFFFF4ABB8EFF027655FF46C2
          C4FF4ED9BAFF48D6BCFF4BDAC0FF4DDEC4FF51E4CBFF49DCBAFF37CEC2FF42E4
          FFFF3DDFFFFF39DEFFFF34DCFFFF33DCFFFF34DBFFFF35D9FFFF35D7FFFF36D6
          FFFF37D4FFFF35D3FEFF41D4F7FF6DDBF2FF0F5577B400000000000000000000
          000000000000000000000248688F83E5F2FF61C9A1FF0B7709FF0D8A6CFF4FC5
          C8FF54DAB9FF4FD8BBFF51DCBFFF54E1C4FF57E5C8FF40CEAAFF4BE2F2FF4CE6
          FFFF46E3FFFF43E2FFFF3EE0FFFF3BDEFFFF3BDDFFFF3CDCFFFF3DDBFFFF3ED9
          FFFF3FD8FFFF39D3FAFF58D8F1FF84E6F7FF0F587CBA00000000000000000000
          0000000000000005070A2C87B0DD89E5D4FF0A6F0DFF1B911FFF0F8D72FF59C7
          C9FF5CDCB9FF56DABCFF5ADFC1FF5EE5C9FF52DAB3FF4DD8CBFF5BECFFFF56E8
          FFFF51E7FFFF4DE5FFFF49E3FFFF45E2FFFF43E1FFFF44DFFFFF44DEFFFF45DD
          FFFF46DDFFFF40D1F3FF80E9F9FF87E6F5FF0E577BB800000000000000000000
          000000000000002030415ABCD8FD3D9548FF006801FF209427FF0E8C72FF60C8
          C9FF5EDAB0FF54D4AEFF54D6AEFF54D7ACFF4FD3ACFF65EAF2FF65EEFFFF5FEB
          FFFF5BEAFFFF57E8FFFF53E7FFFF4FE6FFFF4BE4FFFF4BE2FFFF4CE1FFFF4DE1
          FFFF4BDEFEFF53D5EFFF9FF6FFFF8BE6F5FF10597BB800000000000000000000
          000000000000084C718F58B096FF007F00FF08790CFF198C1DFF03835FFF68CB
          CDFF6BDFBDFF6BE2CEFF6EE6DBFF6CE7DDFF6FECE9FF75F4FFFF6EF0FFFF6AEF
          FFFF66EDFFFF62ECFFFF5DEBFFFF59E9FFFF55E7FFFF53E5FFFF53E5FFFF55E5
          FFFF4DDCF7FF7AE4F3FFABFCFFFF91E8F4FF11597BB800000000000000000000
          000000070A0E197298CB1D8522FF07A20AFF058008FF178619FF219C92FF8ADD
          F1FFA0FFFFFF90FEFFFF8BFBFFFF87FAFFFF82F8FFFF7CF5FFFF78F4FFFF74F2
          FFFF6FF0FFFF6BEFFFFF67EEFFFF63ECFFFF5DEBFFFF5BE9FFFF5BE8FFFF5AE7
          FFFF5CDCF3FF9EF2F9FFB1FFFFFF98EBF5FF11597CB800000000000000000000
          000000213240298983FD0B8B07FF12B31BFF048E07FF6DBE90FF65D0F4FF8DD9
          E9FFA7FFFFFF96FEFFFF93FCFFFF8FFBFFFF8BFAFFFF87F8FFFF82F7FFFF7EF5
          FFFF7AF4FFFF76F3FFFF71F2FFFF6DF0FFFF68EFFFFF64EDFFFF63ECFFFF5EE7
          FCFF7AE3F1FFB7FEFFFFB6FFFFFF9CEBF4FF11587BB500000000000000000000
          00000A486B841F814AFF0CA208FF17B223FF19B526FF209528FF41B0C4FF99DE
          F5FFAFFFFFFF9DFEFFFF9AFEFFFF9EFFFFFF93FBFFFF8EF9FFFF8AF8FFFF86F7
          FFFF81F6FFFF7DF5FFFF79F3FFFF75F2FFFF70F1FFFF6CEFFFFF6AEFFFFF66E4
          F5FFA1F3F8FFBEFFFFFFBDFFFFFFA1ECF3FF125879B300000000000000000010
          18222E80A6D8379442FF0CA913FF1BB529FF25BF36FF20B528FF01822CFFA5DD
          DEFFBDFFFFFFA4FFFFFFA9FFFFFF81E6CAFF97FAF6FF95FBFFFF90F9FFFF8CF7
          FFFF87F6FFFF83F4FFFF7FF3FFFF7BF2FFFF76F1FFFF72EFFFFF6DEDFEFF7AE4
          F2FFC0FDFEFFBFFFFFFFC3FFFFFFA5ECF3FF125879B300000000000000000031
          496A6BB5CBFE44A33CFF0EAC1BFF21BA31FF27C03BFF31CD4AFF21B92FFF36A3
          3EFFABF3ECFFC1FFFFFF7BDFB8FF0C8C13FF98F4EEFF9EFCFFFF97F9FFFF93F8
          FFFF8EF7FFFF8AF5FFFF85F4FFFF81F2FFFF7DF1FFFF79F2FFFF6DE7F9FF9FEE
          F6FFC8FFFFFFC2FFFFFFC7FFFFFFAAECF3FF125879B300000000000000000444
          628B3388B2E4178537F91CB925FF27C039FF2DC643FF33CC4DFF3FD95EFF27C2
          3CFF2DA742FF7ED3ACFF2AB53CFF1AB228FF8FECD8FFA9FFFFFF9EFBFFFF9AF9
          FFFF94F7FFFF90F5FFFF8CF4FFFF88F2FFFF83F1FFFF7CF1FFFF7FE6F4FFC0F9
          FBFFCCFFFFFFC8FFFFFFCDFFFFFFAEECF3FF135A7CB300000000000000000006
          090C000A0C14015506B124BA31FF2CC641FF32CB4BFF39D254FF3FD85EFF4BE6
          71FF3DD55CFF15A720FF54EB7DFF33CA4BFF71D6B6FF9FF4FFFF99F2FAFF97F4
          FCFF95F4FDFF91F4FEFF8EF4FEFF8BF3FFFF89F3FFFF7EECFBFF9CE9F4FFD4FF
          FFFFCDFFFFFFCDFFFFFFD2FFFFFFB3ECF3FF14597CB300000000000000000000
          000000000000002B005219A425FF35D04EFF37D053FF3ED75DFF45DE67FF4BE4
          71FF56EF80FF5BF587FF6AFF9EFF38D355FF7DD1A0FFC2F5FFFFAEEDF5FFA6EA
          F4FF9FE9F4FF9BEAF5FF97EAF6FF93EBF7FF8DEAF7FF86E4F3FFC5F8FBFFD7FF
          FFFFD2FFFFFFD2FFFFFFD8FFFFFFB7EBF2FF14597BB200000000000000000000
          00000000000000030005056908C234CB4DFF3FDA5EFF43DC65FF4AE36FFF51EA
          79FF58F184FF5FF98EFF6AFF9FFF3EDC63FF7FD08BFFEEFFFFFFDFFFFFFFE1FF
          FFFFE0FFFFFFDBFEFFFFD6FCFEFFD1FAFCFFCBF7FBFFC9F6FBFFDAFFFFFFD7FF
          FFFFD7FFFFFFD7FFFFFFDEFFFFFFB7E9F1FF125777AE00000000000000000000
          00000000000000000000001C003715931EEE46DF68FF4AE56FFF50E978FF57F0
          81FF5EF78CFF64FE96FF6AFF9FFF46E66FFF6DC671FFF8FFFFFFE3FFFFFFE2FF
          FFFFE0FFFFFFE1FFFFFFE1FFFFFFDFFFFFFFE1FFFFFFE1FFFFFFDDFFFFFFDCFF
          FFFFDCFFFFFFDCFFFFFFE3FFFFFFBAE9F1FF125777AD00000000000000000000
          0000000000000000000000000000003100591FAD2EFA4FE977FF56F082FF5CF5
          8AFF64FD95FF66FF99FF68FF9CFF4EEF7CFF58BB5CFFF9FDFFFFEBF8FBFFEDF9
          FBFFEDFAFBFFEEFAFCFFF1FCFDFFEDFFFFFFE2FFFFFFE2FFFFFFE2FFFFFFE1FF
          FFFFE1FFFFFFE1FFFFFFE8FFFFFFBFE9F1FF135778AE00000000000000000000
          0000000000000000000000000000000000000039006D2CBB42FF5FF98EFF63FC
          93FF66FF9AFF66FF9AFF67FF9BFF65FA8FFF07832CE0065A7A9F086087AC0968
          8BB40F6E93BC177597C02688AEDDC9E6F0FFF4FFFFFFE8FFFFFFE7FFFFFFE7FF
          FFFFE7FFFFFFE7FFFFFFEDFFFFFFC6E9F2FF145879AF00000000000000000000
          00000000000000000000000000000002000307650BA84FE576FF6BFF9FFF6CFF
          A1FF6BFFA1FF6AFE9FFF6AFE9FFF6AF79EFF077501B400000000000000000000
          0000000000000000000000293E5298CCE3FFFFFFFFFFF0FFFFFFF0FFFFFFEFFF
          FFFFEEFFFFFFEDFFFFFFFDFFFFFF9CCFE1FF05415E8800000000000000000000
          00000000000000000000000000000058009427B93AFF4ADF6EFF3FD95FFF35CB
          4FF827B63BEA1CA32BDC13911CCF0B8710CA0157008600000000000000000000
          0000000000000000000000121A214799B9DEFCFFFEFFFAFFFFFFF9FFFFFFFAFF
          FFFFFBFFFFFFFAFFFFFFFFFFFFFF53A0C1F6001C273F00000000000000000000
          000000000000000000000006000A0040006E003F007200320057002A00470023
          003A001C002D0014001F000B0011000200030000000000000000000000000000
          000000000000000000000000000005506E933685A7D93682A3D43681A1D43883
          A4D73B84A6DA3B83A4DA428CAFE60D5777A7000B0B1400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002F130045732D02B27B2D04BE633620C65E524CCE6758
          52CE695A54CE6B5C56CE6D5E57CE6E5F58CE675852CE62524CCE5E4F48CE594A
          44CE55463FCE52423BCE4B3D38CE462E23CB712A04BD742A05BC742A05BC742A
          05BC752B07BC782D08C0612001A11F0900320000000000000000000000000000
          0000000000002B1100399C4507E1BF6A1FFFC67020FF906844FFAEB0B2FFAFB1
          B4FFB4B8BCFFBEC1C5FFC7CACEFFC9CCD0FFE5E4E4FFF7F6F5FFEAE9E8FFDDDC
          DBFFD1D0D0FFC6C5C5FFC2C1C3FF786B5FFFBD7325FFCB7F2DFFCC7F2EFFCC7F
          2CFFD48C3DFFD68F40FFC47325FF843105D11B04003200000000000000000000
          00002E14003AA74B07E5C37225FFC8792AFFCC7824FF97724DFF979EA4FF9C78
          54FFAC7339FFAB753FFFAB753EFFA26F3CFFB7B5B3FFFFFFFFFFFAFAFAFFECEC
          ECFFDFE0E0FFD3D4D4FFD1D3D5FF807468FFC57F2BFFD58C35FFD58D36FFD58D
          35FFDD9946FFDE9B46FFDF9B3DFFC87929FF672503A800000000000000004E24
          0064AF5508E9C27024FFC47528FFC37225FFC87322FF99734DFF8C959DFFB278
          42FFCE741DFFCA7724FFCC7723FFC37424FFB2AFABFFF6F6F7FFFAFAFAFFFAFA
          FAFFECECECFFDFDFDFFFDEDFE1FF857A6DFFC27928FFD28733FFD28933FFD389
          32FFDA9543FFDC9644FFD89036FFD48B34FF803007CD00000000000000009E4E
          03CFC16D20FFC27127FFC16F24FFC17024FFC67020FF9C7551FF959EA6FFAF79
          46FFC77220FFC47527FFC57526FFBF7328FFB0ABA8FFE7E8E9FFEDEDEDFFF9F9
          F9FFFAFAFAFFEDEDEDFFECEEEFFF8B7F73FFC07726FFD18531FFD08732FFD187
          31FFD99342FFDA9543FFD68F35FFD28833FF7E3006CA00000000000000009E50
          04CBC06C20FFBF6D24FFC06D23FFC06D23FFC36C1EFF9F7854FFA4ACB4FFB17A
          47FFC56E1EFFC37226FFC47325FFBE7228FFAAA6A2FFD9DADBFFE0E0E0FFECEC
          ECFFF9F9F9FFFBFBFBFFFBFCFDFF918579FFBE7425FFD08430FFCF8531FFD085
          31FFD89241FFDA9443FFD58D35FFD08732FF7E2F06CA0000000000000000A151
          04CABF6A1EFFBD6B22FFBE6B21FFBE6B21FFC16A1CFFA27A57FFB2BAC2FFB37C
          49FFC36C1CFFC17024FFC27124FFBD7027FFA4A19DFFCBCCCDFFD3D3D3FFDFDF
          DFFFEBEBEBFFF8F8F8FFFFFFFFFF95897DFFBD7223FFCE822FFFCE8330FFCF83
          2FFFD79041FFD89241FFD48B33FFD08531FF7E2F06CA0000000000000000A051
          04CABD671DFFBC6821FFBC6820FFBD6921FFBF681BFFA37B58FFBEC7CFFFB57A
          45FFC26411FFC1691AFFC26B1AFFBF6C20FF9F9B98FFBDBEBEFFC7C7C7FFD2D2
          D2FFDEDEDEFFE9E9E9FFFFFFFFFF978B7EFFBC7122FFCD802EFFCD822FFFCE82
          2EFFD78F40FFD89141FFD38A33FFCF8431FF7E2F06CA0000000000000000A051
          04CABD651BFFBA661FFFBA661EFFBB671FFFBD6418FFA47B59FFD2D8DDFFAF9B
          8AFFB69577FFB6977CFFAF9074FFA1856BFF989796FFB0B1B2FFBDBDBEFFCACB
          CBFFD7D8D9FFE3E4E4FFFFFFFFFF998E82FFBC7221FFCF812EFFCE832FFFCF83
          2EFFD79040FFD79041FFD28831FFCD822FFF7D2E06CA0000000000000000A051
          03CABB631AFFB9631DFFB9631DFFBA641EFFBC6217FF9F7756FFC9CDD0FFC4C9
          CEFFBCC2C8FFB3B9BEFFA7ADB2FF9AA0A6FF939495FF959698FF9B9D9EFFA2A4
          A5FFA8AAABFFAFB0B2FFBFC1C5FF82776CFFB0611EFFBD6C26FFBD6D27FFBD6C
          26FFC97D35FFD58D3BFFD18731FFCD812FFF7D2E06CA0000000000000000A150
          03CAB96119FFB7611BFFB7611BFFB8621CFFB9621BFFB1672BFFA66936FFAA6C
          39FFAC6F3BFFAD703CFFAE713CFFAC703CFFAB6E39FFA86C37FFA56A33FFA368
          31FFA0652EFF9D632BFF996128FFA4672CFFBA6824FFBB6A25FFBC6B26FFBC6C
          27FFC27429FFCF842FFFD18632FFCC802EFF7D2E06CA0000000000000000A051
          03CAB85F18FFB65E1AFFB65F1AFFB75F1BFFB7601BFFB96019FFBA5F16FFBB60
          16FFBB6116FFBC6218FFBD6419FFBF661AFFC0681BFFC26A1DFFC36C1EFFC56E
          20FFC67121FFC87323FFCA7524FFCB7826FFC87929FFCA7B2BFFCB7D2CFFCD80
          2EFFCD822EFFCE822FFFD08532FFCB7E2DFF7D2E06CA0000000000000000A050
          03CAB65D16FFB45C18FFB45D19FFB55D19FFB55E19FFB65F1AFFB65F1AFFB761
          1BFFB7611CFFB8631DFFB9641DFFBA661EFFBB671FFFBC6920FFBD6A21FFBF6C
          22FFC06E23FFC17024FFC27125FFC47327FFC57528FFC77729FFC87A2AFFC97C
          2CFFCA7E2DFFCC802EFFCF8430FFCA7D2CFF7D2F06CA0000000000000000A050
          03CAB55B15FFB35917FFB35A18FFB35B18FFB45B18FFB45C19FFB55D19FFB65E
          1AFFB65F1BFFB8611CFFB8621CFFBA641EFFBA651EFFBC671FFFBC6820FFBE6A
          22FFBF6C22FFC16E24FFC17025FFC37226FFC47427FFC67629FFC77929FFC97B
          2BFFCA7D2CFFCC7F2EFFCF8330FFCA7C2CFF7D2E06CA0000000000000000A050
          02CAB45913FFB15715FFB15816FFB15917FFB25815FFB25611FFB45711FFB559
          12FFB55A13FFB75C14FFB75D15FFB95F16FFBA6017FFBB6218FFBC6319FFBD65
          1AFFBE681BFFC06A1DFFC26C1EFFC36E20FFC57021FFC77322FFC87623FFC879
          29FFC97B2BFFCB7D2DFFCE8230FFC97B2BFF7D2E06CA00000000000000009F4F
          02CAB25612FFAF5414FFB05515FFB05413FFB15B1DFFAE6833FFAD6733FFAE68
          34FFAF6934FFB06A34FFB16B35FFB16C35FFB26D36FFB26F37FFB26F37FFB471
          39FFB57238FFB57339FFB57439FFB6753AFFB7773BFFB8783BFFBA7B3DFFC57A
          30FFC97929FFCA7C2CFFCD802EFFC87A2BFF7C2E06CA0000000000000000A050
          02CAB05511FFAD5213FFAE5313FFAE4F0CFFAD6837FFBEB8B5FFCBC8C5FFCBC6
          C3FFCBC6C3FFCBC7C4FFCBC7C3FFCAC6C2FFCAC6C2FFC9C5C2FFC7C3C0FFC6C2
          BEFFC5C1BDFFC3BFBBFFC1BDB9FFBFBBB7FFBDB9B5FFBCB9B6FFADA8A4FFBA7E
          42FFCA7724FFC97B2BFFCC802DFFC87A2AFF7D2E06CA0000000000000000A04F
          02CAB05210FFAB5012FFAC5012FFAD4C0AFFAA6637FFCFD0D0FFE9ECEEFFE8EA
          EBFFEAEBEDFFEBEDEEFFECEEEFFFECEEEFFFEBEDEEFFEAECEDFFE8EAEBFFE6E8
          E9FFE5E6E7FFE2E4E5FFDFE1E2FFDCDEDFFFD9DADCFFD9DCDEFFBBBCBDFFB67B
          41FFC97624FFC97A2BFFCC7E2DFFC7782AFF7C2E06CA00000000000000009F4F
          02CAAE500EFFA94E10FFAA4E10FFAB4A08FFAA6536FFD0CFCEFFEAEBECFFE9E9
          E9FFEAEAEAFFE0E0E0FFDDDDDDFFDDDDDDFFDDDDDDFFDCDCDCFFDCDCDCFFDADA
          DAFFD9D9D9FFD8D8D8FFD7D7D7FFDBDBDBFFD9D9D9FFD8D9DAFFBCBBBBFFB67A
          3FFFC87523FFC8792AFFCA7D2CFFC77729FF7D2E06CA00000000000000009F4F
          02CAAD4E0DFFA84B0FFFA94C0FFFAA4707FFA96435FFD3D3D1FFEEF0F0FFEDED
          EDFFEEEEEEFFD0D0D0FFC6C6C6FFC8C8C8FFC9C9C9FFC9C9C9FFC9C9C9FFCACA
          CAFFCACACAFFC9C9C9FFCDCDCDFFDCDCDCFFDBDBDBFFDADBDCFFBEBDBDFFB77A
          41FFC77422FFC7782AFFCA7C2CFFC67729FF7D2E06CA00000000000000009F4E
          02CAAB4C0BFFA6490DFFA74A0DFFA84505FFA96335FFD6D5D5FFF0F3F2FFF0F0
          F0FFF2F2F2FFE2E2E2FFDDDDDDFFDEDEDEFFDDDDDDFFDDDDDDFFDCDCDCFFDADA
          DAFFD9D9D9FFD7D7D7FFD8D8D8FFDEDEDEFFDDDDDDFFDCDDDEFFBFBEBEFFB679
          40FFC67221FFC67729FFCA7C2BFFC67628FF7D2E06CA00000000000000009F4F
          02CAAA490BFFA5450CFFA6470CFFA64204FFA96235FFD9D9D8FFF4F6F6FFF3F3
          F3FFF5F5F5FFF2F2F2FFF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFECECECFFE9E9
          E9FFE6E6E6FFE4E4E4FFE1E1E1FFE1E1E1FFDEDEDEFFDEDFE0FFC0C0BFFFB679
          40FFC67221FFC67729FFC97B2BFFC47528FF7D2D06CA00000000000000009E4E
          01CAA84709FFA3430AFFA4450AFFA44002FFA96135FFDCDBDAFFF7F8F9FFF7F7
          F7FFF9F9F9FFD5D5D5FFC8C8C8FFCBCBCBFFCCCCCCFFCBCBCBFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCECECEFFE0E0E0FFE0E0E0FFDEDFE0FFC1C1C0FFB578
          3FFFC57120FFC67628FFC97A2AFFC47527FF7D2D06CA00000000000000009E4E
          01CAA74507FFA24109FFA34209FFA33E01FFA86135FFDEDDDCFFF9FAFBFFF9F9
          F9FFFCFCFCFFDCDCDCFFD1D1D1FFD4D4D4FFD3D3D3FFD2D2D2FFD1D1D1FFD2D2
          D2FFD1D1D1FFCFCFCFFFD2D2D2FFE1E1E1FFE0E0E0FFDFE0E1FFC3C1C1FFB679
          40FFC57120FFC57528FFC87A2AFFC47427FF7D2D06CA00000000000000009F4E
          01CAA54307FFA03F07FFA14008FFA13B00FFA85F34FFE0DFDEFFFBFCFDFFFBFB
          FBFFFEFEFEFFFDFDFDFFFCFCFCFFFDFDFDFFFCFCFCFFFAFAFAFFF6F6F6FFF2F2
          F2FFEFEFEFFFECECECFFE7E7E7FFE4E4E4FFE0E0E0FFE0E1E2FFC3C2C2FFB678
          40FFC77120FFC87729FFC97A2BFFC47427FF7E2F05CA00000000000000009F4E
          01CAA34105FF9F3C06FFA03E07FFA03A00FFA96035FFE0E0DFFFFBFCFDFFFCFC
          FCFFFFFFFFFFE8E8E8FFE0E0E0FFE2E2E2FFE1E1E1FFE0E0E0FFDFDFDFFFDDDD
          DDFFDCDCDCFFDADADAFFDADADAFFE3E3E3FFE1E1E1FFE0E1E2FFC3C2C2FFB87A
          40FFBA6A1DFF97591EFFAE6925FFC77627FF823205CA0000000000000000A04E
          00CDA13E03FF9D3A05FF9F3C05FF9F3800FFA75F34FFE2E1E1FFFBFCFDFFFCFC
          FCFFFFFFFFFFD3D3D3FFC4C4C4FFC7C7C7FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9
          C9FFC9C9C9FFC8C8C8FFCDCDCDFFE2E2E2FFE2E2E2FFE0E1E2FFC4C3C2FFBB7B
          40FFB0631BFF6C4116FF985C20FFCA7929FF863606CC00000000000000008243
          00A6AA4602FF983504FF9C3A05FF9C3600FFA65D34FFE1E0E0FFFBFCFDFFFBFB
          FBFFFFFFFFFFF2F2F2FFECECECFFEEEEEEFFECEDEDFFEAEAEBFFE9E9E9FFE6E6
          E6FFE3E3E4FFE1E1E1FFE0E0E0FFE4E5E5FFE2E2E2FFE1E2E3FFC4C3C3FFB779
          41FFBE6D1FFFAC6723FFBD752BFFC16B1DFF6D2F02A500000000000000002B12
          002FA14F00CCAD4902FFA44004FFA43C00FFAC6232FFDEDDDBFFF4F5F5FFF4F3
          F3FFF7F7F6FFFAF9F9FFFBFAFAFFFAF9F9FFF9F8F8FFF6F5F5FFF2F2F1FFEFEF
          EEFFECEBEBFFE8E8E7FFE3E3E2FFE0E0DFFFDCDCDBFFDBDBDCFFC1C0BFFFB676
          3CFFC46C1AFFC77223FFC36A1CFF903F03CC2106002F00000000000000000000
          00002311002D7B3E0097954901BE934600BC985D23C2A69E96D1A9A29CD1AAA2
          9BD1AAA39CD1AAA29BD1A8A199D1A79F97D1A59D96D1A39C94D1A09891D19E97
          8FD19D958DD199928BD1978F88D1968F87D1938B84D1918A83D18D867ED19055
          1FC28F4203BC8D4204BE6C3001981F0E002C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000030202044C32327D704B4BBA6D4949AF4A30307A251919430A0707200805
          050B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D090914845858D7BB8A8AFFCDAEAEFFC09C9CFFAD8081F7906462D56E49
          43A0452B2B6A2C1C1C42160F0F20000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000140D0D1E895B5BDBD6A6A6FFFDF3F4FFFFFFFFFFFBF4EDFFC6C1DDFF7378
          CEFFCEADADFFBC9191FF946767DE7A5151BC603E3E923D27275D191010260503
          0307000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000019111126926262E3D7A8A8FFFAEBEAFFFFF8FBFFFFFFF9FFBCCAFEFF6583
          FFFFFFFBF7FFFEF3F3FFFAECECFFEBD4D4FFD5B7B7FFC19B9BFFAF8383F89468
          68DC694545A7462D2D71301C1C470F0A0A160000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001F14142E9C6A6BEBD9ACA8FFFBE2C3FFFFE8C6FFFFF2CDFFB0B9E3FF7088
          F6FFFFF6EDFFFFF1F0FFFFF2F4FFFFF6F9FFFFF8FBFFFFF9FBFFFDECEDFFEEDA
          DAFFE0C7C6FFD1B0B0FFB28989FF533737800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000024181836A47070F3DDB2B2FFFDF2F1FFFFF2EAFFFFF6D7FFA5B0DFFF7986
          E0FFFFE8BBFFFFE2C3FFFFE4C8FFF9E0CCFFF9E3D7FFFFEAE5FFFFF0F2FFFFF4
          F9FFFFF5F9FFFFFCFEFFDBBCBCFF513333820000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000281B1B3EAF7A7AFCE0B6B6FFFFF6F5FFFFF7F9FFFFFFFBFF9CB2FEFF8396
          FDFFFFFDF2FFFFF0E9FFF7E1D1FFE0C7AFFFEED0B4FFFDDBBAFFFFD9B5FFFFDB
          BCFFFFE0CAFFFFEBDDFFD0ADACFF412A2B690000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000E090947C18689FFE3B9B1FFFFEBCBFFFFE9CBFFFFF5CBFF9BA3E4FF929B
          EDFFFFFAE5FFFFF2F1FFD7CED1FFD7CED4FFF5EAEEFFFFF2F3FFFFEDE9FFFFE7
          DAFFFFE1CBFFFFE0C0FFCA9E94FF372424540000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000281A1A4FBB8283FFE6C0C0FFFFFBF6FFFFF2E7FFFFF6DBFF919AE7FF9BA1
          DEFFFFF3C5FFDFC8ADFF938476FFDEC8ACFFFFECD2FFFFF0DEFFFFEEE5FFFFEE
          EBFFFFEFF1FFFFF4F9FFC69EA0FF2E1F1F460000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003C29295AB98382FFE8C6C6FEFFFFFFFFFFFAFFFFFFFFFFFF859DFFFFA0B5
          FAFFFFFFF9FFD9D4D6FF4C4E4EFF4D5353FF887F75FFC2A898FFEACAAFFFFFE2
          C5FFFFDDBDFFFEDCBDFFB88B88F7261A1A390000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000442D2D66BE8A8CFFECC6BCFEFFF0D2FFFFECD4FFFFF4DAFF8096F1FFABBC
          F0FFFFFCEEFFF2EAE9FF6D8696FF7F97B1FF4A6863FF13642BFF2E8438FF539C
          56FFEAE4DAFFFFEFECFFA77A7AE91E14142B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004C343474C48F90FFEFCECBFEFFF8E9FFFFEFDCFFFFF0D3FF7E90EAFFB8BA
          D3FFFFEBBBFFFBE1BDFF8CA8BFFF68AEA7FF1F9C37FF2BB647FF27AE41FF0083
          12FF3C8F41FFF0EBE6FF9F6F73DC160F0F1F0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000563A3A81C99494FFF2D7D9FEFFFFFFFFFFFDFFFFFEFFFFFF7A97FFFFC4D2
          FFFFFFFFFCFFFFF8FAFF9DC0C9FF20A349FF47DD6FFF5CEE88FF4AD26CFF37B7
          51FF088519FF498C39FF926366CC0A07070E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000302
          02045F42428ECE9A9AFFF5D8CFFEFFF6E6FFFFF4E8FFFAF3EBFF7591F8FFD0D6
          F2FFFFFBF0FFFFF9FDFF9CD2B5FF24C351FF68FF9BFF60F58FFF55E47EFF46CF
          69FF32B24CFF058417FF38652BCE020101090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000604
          04096948489BD29E9FFFF7D8CBFEFFF0D4FFFFEBCFFFF6E7CDFF728BECFFDBD2
          CEFFFFE8C0FFFFE4C7FFB1D197FF24CA59FF61FB90FF64FD97FF5EF38DFF53E2
          7CFF44CA64FF2FAE48FF078418FA003102840000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000B08
          080F755151A9D6A1A1FFF8E6E8FEFFFFFFFFFFFFFFFFF1F4FEFF6F8FFEFFE7EB
          FBFFFFFDF8FFFFF9F7FFEDF5ECFF52C877FF3BDB6BFF62FC92FF64FD97FF5DF1
          8BFF52DF79FF42C762FF2CA843FF0F871BFF0239056F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000E0A
          0A13815A5AB6DAA6A7FFFAE4DAFEFFF7E8FFFFF5E8FFEEEEEAFF6B8CF9FFF1ED
          EDFFFFF8EEFFFFF4EFFFFFF8F7FFDEEEDCFF38C15FFF47E576FF64FE94FF63FC
          96FF5BEF89FF50DD77FF3EC35DFF29A33DFF0C7916F7012D045A000000000000
          000000000000000000000000000000000000000000000000000000000000120D
          0D198C6363C3DEABACFFFBE3D2FEFFEED1FFFFEBCDFFEAE0CDFF6985EEFFFCE5
          C5FFFFE5BFFFFFE1BEFFFFDFBBFFFFE1C4FFC9D7A5FF2DC45CFF51EC7EFF63FC
          93FF63FB95FF5BED87FF4EDA74FF3CBF59FF259F39FF0B7614F4012203470000
          000000000000000000000000000000000000000000000000000000000000150F
          0F1E996C6CD0E2AFAFFFFCF4F8FDFFFFFFFFFFFFFFFFE8F0FFFF6A8EFFFFFFFF
          FFFFFFFFFFFFFFFEFFFFFFFDFFFFFFFCFFFFFFFDFFFFA4E0B9FF29C95CFF58F3
          86FF64FD94FF62F993FF59EA84FF4CD670FF3ABB55FF239A35FF076E10EA001B
          0037000000000000000000000000000000000000000000000000000000000402
          02239E7070DDE8B5B6FFFDF0E9FDFFF9EEFFFFF8EDFFE4E3EEFF6F90F7FFFFFA
          E9FFFFF4EAFFFFF3E9FFFFF3E8FFFFF2E7FFFFF2E8FFFFF4ECFF7FCE89FF2ECF
          5EFF5DF68BFF63FC95FF61F893FF58E983FF4AD36DFF37BB52FF1C992EFF1066
          15DD0A140A2A000000000000000000000000000000000000000000000000100F
          0F29A97A7AE9ECB8B8FFFDE9CFFDFFEED1FFFFEECEFFD9D1D7FF7393ECFFFFF4
          C7FFFFE8CBFFFFE7C9FFFFE6C9FFFFE5C7FFFFE4C7FFFFE4C8FFF7E2C9FF64CD
          7CFF39DD6BFF60F88DFF63FD96FF5FF691FF53EC80FF49C969FF54825DFF6267
          63FF5E5B5ED50505052100000000000000000000000000000000000000002318
          1832B38282F2EFBCBCFFFDFCFBFDFEFEFDFFFFFEFCFFCFDCFFFF7F9FFCFFFFFF
          FEFFFFFFFFFFFAF9F9FFFFFFFFFFFBF8F9FFFEFBFCFFEDEAEAFFF9EFF3FFEDEF
          EAFF3FC168FF47E776FF60F88EFF5FFF96FF67D88BFF7E8C82FF9B9199FF9592
          94FF79776CFF50504BBD0202070B000000000000000000000000000000002B1D
          1D3DB98888F7F4C3C3FFFCFAFAFFE5E6E6FFFDFCF9FFB0BAD9FF899CD5FFFDFB
          F6FF9F9F9FFFE7E6E6FFB8B7B8FF888888FFE0DDDDFF5A5959FFB5B4B4FFB2A7
          AEFF334E3CFF30C15DFF4DF37DFF70DA90FF9F9E9FFFD5CED3FFDFDED9FFB9B8
          B2FF626AA1FF2732A3FF0A0E6290000000000000000000000000000000003425
          254CBF8D8DF9FFD6D6FFBCBBBBFF353535FFDDDDDCFF62615DFF585754FFD3D3
          D2FF262626FF929292FF9E9F9FFF272929FFB8B7B7FF616363FF545353FFC7C9
          C8FF4C424AFF376945F844CA6DFDACB1ADFFEAE2E8FFFFFFFFFFDEE0EAFF566B
          D5FF1F3AD4FF192EC8FF070EAAFF00003F690000000400000000000000003D2B
          2B59C69292FBFEDCDCFEDEE2E2FE3A3C3CFF848380FFAFBAD4FF25272BFFC9C8
          C8FFA8A5A5FF393B3BFFF2E8E8FF5D5959FF777070FFCCB5B5FF383B3BFFB99B
          9BFF846F70FB313734D23D6E4E89CBBDC7FFF5F4EEFFE7EBF9FF536FE8FF325B
          EEFF3A5FE9FF263FCEFF101BAFFF010191F000001C3E00000000000000004D36
          366DC99090FFEFC0C0FFF7E4E4FF8A8181FF55504CFFBEA9C3FF42454DFF866F
          6EF59C7F7FF63E3F3FFC866868D6595454FF484040D45E4C4CC7424747FD3124
          24724A3F3FC3343C38C20608070B928D8DB0CBCBCBFF607AE6FF335EF3FF4D7C
          FFFF3A5EE8FF253DCDFF111CB1FF01029AFF0000355400000000000000001E16
          16296A5252B8816666F76A4E4E915B5050E83F3E3EDC39312F874E4D4CFF2C29
          2984383636A9454545EE1817174F4D4F4FFC2E2E2E9B2D2F2FA1565656FF2123
          238E4B4D4DF724242474000000001919181B6B74A9D8294EE5FF4E7EFFFF446F
          F7FF3353DEFF2237C8FF0B12A7FF000076BF0000101900000000000000000000
          000023232363515454FC0C0C0C2D444545D83F3F3FCF2426267D565757FF3A3B
          3BAD474848E25E5E5EFF4A4C4CE1595959F86A6A6AFF545454F1525252CC6161
          61EE3D3D3DA20404040D00000000000000000B0F2C331B31B9E8395EE6FF395D
          E7FF2942D1FF111CB0FF000089E400001F2E0000000000000000000000000000
          00000D0D0D297A7A7AE6575757ED555555F6646464F4595959FB4A4A4ABC5C5C
          5CE73F3F3FAC313131753D3D3D98191919451313134B171717380606060F1313
          132E0101010300000000000000000000000000000000060935431019A3E81623
          B7FF0A11A5FC000077C200001F30000000000000000000000000000000000000
          00000000000120202061505050C9262626691E1E1E4D2323235E090909160707
          07240505050F0000000003030306000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000001012C400101
          4D800000395F0000111A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002514002C502A025E9D520AB89C530AB7804408976936
          057C4F28015F3B1D01431A0C002B13090020140A00150905000A010000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000A2580EBBE6943EFFE69E51FFEC9337FFF29F47FFEC94
          39FFE48A2CFCDD8023F8CF751AECBE6813D5A6590CB98C49069E723A0283592C
          006943210050371B003F2814002E190D001D0A05000B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000B6691ACDF4BE7EFFF0C084FFF2A149FFFFBB6EFFFFB6
          63FFFFB35BFFFFB35CFFFFAF57FFFCA952FFF8A54DFFF6A048FFF29B40FFEF95
          39FFEE8F2EFFE78725FBD4781AEBC16911DAAD5B09C99A4F04B8884801A4793C
          018C6030006F4020014A00000000000000000000000000000000000000000000
          00000000000000000000B26519CAF2BA78FFF0C084FFF2A049FFFFB96BFFF6B0
          59FFF2BA73FFF5BC76FFF3BB75FFFBB568FFFFAE56FFFFAA4AFFFFAB47FFFFAD
          4BFFFFAB4EFFFFA84FFFFFA54BFFFFA443FFFEA241FFFD9E3EFFFA9838FFF595
          32FFE27D18FFA85605CC00000000000000000000000000000000000000000000
          00000000000000000000B3661ACAF2BB7BFFF2C48BFFF3A24EFFFFB867FFEABB
          82FFECF5FCFFEBEDEFFFD1D5D8FFEABF8EFFFCAA4CFFEACA9CFFEEDAC0FFE3CC
          ADFFE3BF93FFFFAC53FFF7AB52FFEDB36CFFF5B163FFFAB160FFFFA84EFFFFA5
          45FFEB8927FFAA5808CB00000000000000000000000000000000000000000000
          00000000000000000000B4681ACAF2BD7DFFF4C892FFF4A551FFFFB868FFEDBC
          89FFFDFDFEFFFDFFFFFFD7E3F3FFE9BE88FFF8A74FFFF2E3D0FFFCFFFFFFE3EC
          F7FFD2CBC0FFFDAC50FFE9BA7BFFCAD3DFFFC5C8C9FFBBC0C4FFE9B77DFFFFA2
          3FFFEB8927FFAA5808CA00000000000000000000000000000000000000000000
          00000000000000000000B5681CCAF3BD80FFF6CB99FFF4A755FFFFBE71FFE5A4
          67FFEBC29CFFF2D1AAFFDDCBB0FFEFB76DFFF3A451FFEED7C6FFFFFFFFFFE8EC
          F0FFD6C9B4FFFCA849FFF4C281FFE2E9F4FFDADADBFFCBD0D4FFEAB97EFFFFA4
          42FFEB8B2AFFAA5A0ACA00000000000000000000000000000000000000000000
          00000000000000000000B6691DCAF4BE82FFF6D0A1FFF6AA59FFFFC077FFF9B3
          5FFFF6B15CFFF9B25CFFFDB458FFFFB762FFFBAE5EFFEE9637FFF3A040FFF6AD
          51FFF6AF55FFFDA748FFF7C789FFF9FFFFFFEDEDEDFFDDE0E2FFEFBB7BFFFFA5
          45FFEC8C2CFFAB5A0ACA00000000000000000000000000000000000000000000
          00000000000000000000B66A1DCAF4BF83FFF8D5A7FFF7AE5EFFFFBE74FFEDB8
          72FFECE1CDFFECDFCCFFD6CDC1FFEDC08CFFFDB158FFEEC68CFFF0D1A6FFE9C6
          99FFEABE89FFFDAC54FFF4C087FFFFFFFFFFFBFBFCFFEAECEFFFF3BC78FFFFA7
          49FFEC8E2DFFAB5C0BCA00000000000000000000000000000000000000000000
          00000000000000000000B76B1ECAF4C084FFF9D8AEFFF8B163FFFFBF71FFEDBE
          8BFFFDFDFDFFFAFDFFFFD4DEEDFFE8C18EFFF8AD58FFF0E3CEFFF8FFFFFFE1E8
          F2FFD1CABFFFF8AD57FFEFBB87FFFFFFFFFFFFFFFFFFF3F5F6FFF6BC73FFFFA9
          4DFFEC9030FFAC5D0CCA00000000000000000000000000000000000000000000
          00000000000000000000B86D1FCAF5C085FFFADDB5FFF9B569FFFFC277FFE3AD
          7DFFF6F0EEFFF6F4F2FFD5D9E0FFEABC7FFFF4AA59FFEFDAC9FFFFFFFFFFE8EE
          F3FFD5C9B7FFF7AA51FFE7B487FFFFFFFFFFFFFFFFFFF5FBFBFFF6BB6EFFFFAB
          51FFED9132FFAD5D0DCA00000000000000000000000000000000000000000000
          00000000000000000000B86D20CAF5C187FFFBE1BCFFFAB970FFFFC681FFF7B0
          61FFF09D3EFFF6A746FFFBB150FFFFB962FFF7B168FFE8A360FFF2B46EFFF1B7
          6FFFF0B567FFFCAF57FFE8A469FFEFC9A6FFF5CFA9FFF2D0A8FFF6AF58FFFFAE
          58FFEE9233FFAE5F0DCA00000000000000000000000000000000000000000000
          00000000000000000000B96E21CAF5C188FFFDE4C2FFFCBF76FFFFC47FFFF1BB
          73FFECD4B0FFECD3B0FFDDC8AAFFF1C38CFFFEB864FFF4BD73FFF4C588FFF0C1
          86FFF1BF82FFFFB96AFFFAAC4DFFF2A546FFF4A548FFF6A94DFFFDB05BFFFFB1
          5BFFEE9335FFAF5F0FCA00000000000000000000000000000000000000000000
          00000000000000000000BB6F23CAF6C28AFFFEE8C8FFFDC27EFFFFC37DFFECBF
          8AFFF6FCFCFFF3F7FCFFCFD9E5FFE7C496FFF9B25FFFEEDECBFFF5FBFFFFDEE3
          EAFFD0C8BCFFFAB361FFECBB82FFF2FAFFFFE9EAEBFFCCD1D6FFE8BC87FFFFB0
          58FFEF9438FFB16011CA00000000000000000000000000000000000000000000
          00000000000000000000BA7024CAF6C38BFFFFECD2FFFEC886FFFFC57FFFE7B7
          8AFFF9F6F4FFFAFAF9FFD7DDE6FFEAC088FFF4AE60FFF0DDCDFFFFFFFFFFE8EF
          F8FFD4C9BAFFF7B05BFFEAB988FFFFFFFFFFF8FBFFFFD2DCE6FFE8B97FFFFFB3
          5CFFEF9639FFB16111CA00000000000000000000000000000000000000000000
          00000000000000000000BD7024CAF7C38DFFFFEFD6FFFFCA8AFFFFCA88FFE9AE
          71FFEBB57DFFF3BE7DFFEEBD7AFFF9BE70FFF4B26BFFE6B180FFF4C998FFEEC5
          92FFE9BB7CFFFBB460FFE3A66EFFF2D3B4FFF2D2ACFFE0C49DFFF1B467FFFFB5
          63FFF0973CFFB26113CA00000000000000000000000000000000000000000000
          00000000000000000000BE7226CAF8C58FFFFFF0D7FFFFCB8CFFFFC98AFFFFCD
          85FFFFC97BFFFFC87CFFFFC97DFFFFC680FFFFC47EFFFEBE6EFFFEB764FFFFBA
          62FFFFBD69FFFFBD74FFFDB463FFF9A549FFFEAB4AFFFFB14CFFFFB55FFFFFB7
          68FFF0993DFFB36313CA00000000000000000000000000000000000000000000
          00000000000000000000BE7326CAF8C590FFFFF1DAFFFFCC90FFFFD38DFFB589
          6DFF5B5AA4FF6565ADFF5154ADFFC4A296FFFFBF68FFCAA065FFC3AA85FFBCA5
          86FFC5AA86FFFEBE73FFE3A657FFCBAB7CFFCCAC81FFC3A884FFEBB678FFFFB8
          68FFF09A40FFB36415CA00000000000000000000000000000000000000000000
          00000000000000000000C07428CAF9C792FFFFF2DDFFFFCE93FFFFD68BFF967D
          8AFF2A59F9FF2D58F1FF0125D9FFA38697FFFDBD68FFB9AEA3FFB4BFCBFF9AA2
          AFFF9D978DFFF9BA6BFFCDA274FFB2C0D2FFA9B0B8FF8A939DFFD2AA77FFFFBC
          6BFFF29C42FFB56516CA00000000000000000000000000000000000000000000
          00000000000000000000C0742ACAF9C895FFFFF3E0FFFFD095FFFFD890FF9171
          7FFF2F56E5FF3658E1FF0E2ACBFFA98785FFF7B866FFBEA99BFFC5C6C5FFA8A9
          A7FFAB997FFFF8B765FFCA9B70FFC6C9CDFFBAB7B2FF9B9994FFDAA868FFFFBE
          71FFF29D44FFB56516CA00000000000000000000000000000000000000000000
          00000000000000000000C1762ACAF9C997FFFFF4E2FFFFD297FFFFD597FFDDAB
          7EFFC1967FFFC69E7EFFC09A78FFEBB97BFFFAC07BFFE2A76CFFE8B070FFE8B0
          69FFEBB266FFFEBF73FFE9A966FFE6AB6CFFEAAE67FFE6AC60FFF7B463FFFFBE
          73FFF29F47FFB66718CA00000000000000000000000000000000000000000000
          00000000000000000000C1782CCAF9CA99FFFFF5E6FFFFD39BFFFFD29AFFFFD9
          9FFFFFD998FFFFD896FFFFD993FFFFD397FFFFCF96FFFFCE90FFFFCB8BFFFFCB
          8BFFFFCA8CFFFFC98CFFFFCA89FFFFC681FFFFC580FFFFC680FFFFC682FFFFC2
          7AFFF39F48FFB76819CA00000000000000000000000000000000000000000000
          00000000000000000000C3782DCAFACB9BFFFFF7E8FFFFD6A2FFF9CA80FFA8CC
          72FF95D991FF9DDA93FFA0DB95FFA1DD97FFA5DF9AFFA9E09EFFACE2A2FFB1E4
          A6FFB6E7AAFFBAE9AEFFC2EBB2FFC7EEB7FFCEF1BBFFD2F6C2FFE1F4C6FFFFCC
          8BFFF49F46FFB8691ACA00000000000000000000000000000000000000000000
          00000000000000000000C4782CCAFBCC9DFFFFF7EBFFFFD9A9FFEEBC65FF54BE
          4AFF38D679FF4BD579FF54D980FF5CDC86FF67DF8CFF6FE293FF79E699FF82E8
          A0FF8BECA6FF95F0ACFFA0F2B3FFA8F6B9FFB3FAC0FFB8FEC7FFCFFACAFFFFCC
          8EFFF5A049FFB86B1BCA00000000000000000000000000000000000000000000
          00000000000000000000C47B2ECAFBCE9FFFFFF9EEFFFFDCABFFE8B769FF56B9
          4EFF41D77AFF51D57AFF5BD980FF64DB87FF6DDF8DFF75E193FF80E598FF88E7
          9EFF92EBA4FF9AEDAAFFA3F0B0FFABF3B5FFB3F6BBFFB5F9C0FFCBF6C3FFFFCD
          90FFF5A24BFFB96C1DCA00000000000000000000000000000000000000000000
          00000000000000000000C57B30CAFBCEA2FFFFF9F1FFFFDEAEFFE2B06BFF4EB7
          4FFF3EDC7DFF4CDA7EFF54DE85FF5CE28CFF65E593FF6DE89AFF76EBA0FF7EEE
          A8FF86F1AEFF8EF4B4FF95F8BBFF9DF9BFFFA6F9C0FFA9FABFFFC2F6C2FFFFD0
          93FFF6A34DFFB96D1DCA00000000000000000000000000000000000000000000
          00000000000000000000C77C30CAFDD0A3FFFFFBF3FFFFE2B1FFDBA769FF5493
          36FF55B85CFF68B156FF75B056FF82AF55FF8FAF53FF9BAF51FFA6AF50FFB1AF
          4FFFBEB350FFC9B751FFD5BA53FFDEBC53FFE3C25DFFE5CB74FFEED48FFFFFCE
          90FFF7A855FFBB6D1ECA00000000000000000000000000000000000000000000
          00000000000000000000C97F35CCFDD4ADFFFFFDF7FFFFE4B5FFF1C796FFDCA1
          6BFFE7AF78FFEDB67FFFF3BC83FFF8C187FFFBC78CFFFFCB90FFFFCC93FFFFCD
          92FFFFCB8DFFFFC988FFFFC380FFFFBF7AFFFFBE76FFFFBC74FFFEB970FFFBBB
          72FFF3A14BFFC37220D300000000000000000000000000000000000000000000
          00000000000000000000BE7428C0FDB46BFFFEDFBDFFFED299FFFECF91FFFFD0
          8FFFFFC884FFFFC27CFFFEBC71FFFBB568FEF9AF5EFCF5A755FAF2A04DF8EE9C
          45F6E8953FEFDE8C39E5D78732D9CA7C2BCCBD7325BFAF681FB2A3601BA69756
          169A8A4F128D61370C6300000000000000000000000000000000000000000000
          00000000000000000000331F0933653C1166B46F29B7BF752AC1AF6B24B2A160
          20A494581C97854F18897846137C6B3D116E5D350D61502D0A5343250845371F
          06382C17032D27070027211104211C10031C170D0317120A02120D07020D0804
          0108030200030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000115022A07460E92024C07A41E4720B64C544CC9505C
          50C8535E53C8556055C8576256C8586357C8515D51C84B574BC8475347C8434E
          43C83F4B3FC83B473BC8374237C8223622C2024104A3024204A2034204A30242
          04A3054408A3054608A60032007F000B001B0000000000000000000000000000
          0000000000000114011F106E21C91AA535FF17AE35FF40834CFFB2AEB1FFB4AF
          B3FFBCB4BAFFC6BEC4FFCFC7CCFFD0C9CFFFE4E4E4FFF5F6F5FFE8E9E8FFDCDC
          DCFFD0D1D0FFC5C6C5FFC3C1C3FF5D7361FF18A037FF20AD42FF21AC42FF1FAB
          41FF39B856FF39BB5AFF169831FF024C04B0000B001B00000000000000000000
          000001180A21158228CB20B241FF22BF46FF1DC142FF489359FFA598A2FF5197
          61FF34A44DFF3AA252FF38A251FF369A4EFFB2B7B3FFFFFFFFFFFAFAFAFFECEC
          ECFFE0E0E0FFD4D3D4FFD6D2D5FF667E6CFF22BA4DFF2DC95AFF2DC95BFF2AC8
          5AFF45D26EFF46D370FF31D368FF1B9E37FF013502850000000000000000082F
          15441E913DD11FB441FF1FBA3FFF1FB83FFF1ABB3DFF4A945AFF9E8D9BFF3CA9
          54FF15C13BFF1BBD40FF1ABE40FF1CB640FFABB2ADFFF7F6F7FFFAFAFAFFFAFA
          FAFFECECECFFDFDFDFFFE1DEE0FF6C8372FF1FB348FF29C353FF2AC255FF27C2
          54FF42CC68FF43CD69FF2CC95DFF26B74FFF044C07B400000000000000001F85
          3DB221B843FF1DB73CFF1DB63DFF1DB63DFF19BA3AFF4E975DFFA796A3FF41A8
          57FF19BB3CFF20B941FF1FB941FF21B342FFA8AEA9FFE9E7E9FFEDEDEDFFF9F9
          F9FFFAFAFAFFEDEDEDFFF0ECEFFF718977FF1EB346FF28C252FF29C253FF26C1
          52FF41CC66FF42CD69FF2BC85BFF26B44BFF034907B10000000000000000208A
          42B220B841FF1BB439FF1CB53AFF1DB63AFF17B937FF51995FFFB5A5B2FF43A9
          58FF17B938FF1FB83FFF1EB93FFF21B341FFA3A9A4FFDBD9DAFFE0E0E0FFECEC
          ECFFF9F9F9FFFBFBFBFFFDFBFDFF788F7DFF1CB143FF27C250FF28C152FF26C1
          51FF40CC66FF41CC68FF2AC85AFF25B44AFF034907B10000000000000000228C
          44B121B940FF1AB336FF1BB438FF1BB438FF15B735FF539D62FFC3B3C0FF45AC
          5AFF15B736FF1DB63DFF1DB73DFF20B23FFF9DA49EFFCDCBCDFFD3D3D3FFDFDF
          DFFFEBEBEBFFF8F8F8FFFFFFFFFF7C9381FF1AAF41FF26C04EFF27C050FF25C0
          4FFF3FCA64FF40CB66FF29C658FF23B348FF034A07B10000000000000000228C
          44B11FB83FFF19B234FF1AB335FF1AB336FF14B531FF559E63FFD0BECDFF41AE
          56FF09B62AFF13B633FF13B733FF19B438FF979F99FFBFBDBEFFC7C7C7FFD2D2
          D2FFDEDEDEFFE9E9E9FFFFFFFFFF7D9583FF1AAF3FFF25C04DFF26BF4EFF24BF
          4EFF3FCA63FF40CB65FF29C657FF24B247FF034A07B10000000000000000228C
          43B11EB73DFF17B031FF19B233FF19B234FF12B42EFF579F63FFDED3DCFF89AD
          8FFF75B280FF7AB284FF71AB7DFF689E73FF969897FFB2B0B2FFBEBDBEFFCBCA
          CBFFD9D7D8FFE5E3E4FFFFFFFFFF819887FF19B03EFF25C14DFF26C04EFF24C0
          4EFF40CB63FF40CA64FF27C555FF22B246FF034A07B10000000000000000228C
          43B11DB63CFF17B02EFF18B131FF18B131FF11B32CFF549B5FFFD0C9CFFFCEC4
          CDFFC8BDC6FFBFB4BDFFB3A8B1FFA69BA4FF969395FF989597FF9E9C9EFFA5A2
          A5FFABA9ABFFB2AFB1FFC5BFC3FF6B8070FF18A636FF1EB23FFF1FB240FF1EB1
          40FF33BD53FF38C75DFF29C554FF23B145FF034907B10000000000000000228C
          44B11CB53AFF15AE2CFF16AF2FFF16AF2FFF15B12EFF26A93BFF329F44FF35A3
          48FF37A649FF38A74CFF38A64CFF36A54BFF35A449FF32A147FF2E9D44FF2C9B
          43FF299840FF26953EFF23913CFF269B41FF1EAF3DFF1EB03DFF1FB13FFF20B1
          40FF21B645FF26C04FFF2AC554FF22B144FF034906B10000000000000000218C
          43B11BB437FF14AD29FF15AE2CFF16AF2CFF16AF2DFF13B02CFF10B229FF10B1
          2BFF11B22CFF11B32DFF12B42EFF14B530FF14B632FF16B734FF17B936FF19BA
          38FF19BB3BFF1CBD3DFF1CBE3FFF1EBE42FF22BC45FF23BD47FF24BE49FF25C0
          4BFF26BF4DFF27BF4EFF29C454FF21B043FF034906B10000000000000000218C
          43B11AB335FF13AC27FF14AD2AFF14AD2AFF14AD2BFF15AE2CFF15AE2CFF16AF
          2EFF16AF2FFF17B030FF17B031FF18B133FF19B234FF1AB336FF1AB337FF1CB5
          39FF1CB53BFF1DB63DFF1EB73EFF1FB840FF20B942FF21BA44FF22BB46FF24BD
          48FF24BD4BFF26BF4DFF28C352FF20AF42FF034906B10000000000000000228C
          43B11AB333FF12AB25FF13AC27FF13AC28FF13AC28FF14AD29FF14AD2AFF15AE
          2BFF15AE2CFF16AF2EFF17B02FFF18B131FF18B132FF19B234FF1AB336FF1BB4
          38FF1CB539FF1DB63BFF1EB73DFF1FB83FFF20B941FF21BA43FF22BB45FF23BC
          47FF24BD4AFF25BE4CFF28C351FF20AF41FF034906B10000000000000000218C
          43B119B231FF10A923FF11AA25FF12AB26FF11AB25FF0CAC21FF0CAC22FF0DAD
          23FF0EAD24FF0FAE26FF0FAE28FF10AF2AFF11B12BFF12B22DFF13B22EFF14B3
          31FF15B532FF16B635FF17B737FF18B839FF19B93BFF1BBA3DFF1CBB40FF21BC
          45FF23BC48FF24BD4AFF27C14FFF1FAE40FF034906B10000000000000000218C
          43B118B12FFF0FA820FF11AA22FF0FAA21FF19AA2BFF30AA40FF2FA83FFF30A9
          40FF2FA940FF31A942FF31AA43FF31AB44FF32AA45FF32AC47FF32AC47FF33AC
          48FF33AD4AFF34AD4BFF34AD4CFF34AE4DFF35AE4EFF36AF4FFF37B153FF28B9
          49FF22BC46FF24BC49FF27C24EFF1FAE3FFF034906B10000000000000000218C
          43B117B02DFF0EA71EFF0FA820FF08A81AFF33A841FFB5BDB6FFC5CBC5FFC3CA
          C4FFC3CAC4FFC3CBC4FFC3CBC4FFC2CAC4FFC2CAC3FFC1C9C3FFBFC7C1FFBEC6
          BFFFBDC4BFFFBBC2BCFFB9C0BAFFB7BFB8FFB5BCB6FFB6BBB7FFA3ACA5FF3BB0
          56FF1CBD41FF23BC48FF26C04DFF1FAD3EFF034906B10000000000000000218C
          43B115AE2CFF0DA61BFF0EA71DFF07A717FF34A640FFD0CFD0FFEEE9EEFFEBE8
          EBFFEDEAECFFEEEBEEFFEFECEFFFEFECEFFFEEECEEFFEDEAECFFEBE8EBFFE9E6
          E8FFE8E5E7FFE5E3E5FFE2DFE2FFDFDCDEFFDCD9DBFFDEDADDFFBDBBBDFF3BAD
          55FF1BBC40FF23BC47FF26C04CFF1EAE3DFF034906B10000000000000000228C
          43B114AD29FF0BA419FF0DA61BFF05A615FF33A63EFFCED0D0FFECEAECFFE9E9
          E9FFEAEAEAFFE0E0E0FFDDDDDDFFDDDDDDFFDDDDDDFFDCDCDCFFDCDCDCFFDADA
          DAFFD9D9D9FFD8D8D8FFD7D7D7FFDBDBDBFFD9D9D9FFDAD9DBFFBBBCBBFF3AAD
          54FF1BBC3FFF22BB46FF25BF4BFF1DAC3CFF034906B10000000000000000228C
          43B113AC27FF0AA316FF0CA519FF04A412FF33A63DFFD2D3D2FFF0EEEFFFEDED
          EDFFEEEEEEFFD0D0D0FFC6C6C6FFC8C8C8FFC9C9C9FFC9C9C9FFC9C9C9FFCACA
          CAFFCACACAFFC9C9C9FFCDCDCDFFDCDCDCFFDBDBDBFFDCDADCFFBCBEBDFF3BAE
          54FF1ABB3EFF22BB45FF25C04AFF1EAD3CFF034906B10000000000000000218C
          43B112AB25FF09A214FF0AA317FF02A310FF33A63DFFD5D7D5FFF2F1F3FFF0F0
          F0FFF2F2F2FFE2E2E2FFDDDDDDFFDEDEDEFFDDDDDDFFDDDDDDFFDCDCDCFFDADA
          DAFFD9D9D9FFD7D7D7FFD8D8D8FFDEDEDEFFDDDDDDFFDEDCDEFFBEBFBEFF3AAD
          53FF1ABB3DFF21BA44FF24BE49FF1CAC3BFF034906B10000000000000000218C
          43B111AA23FF07A010FF09A214FF01A20DFF33A63CFFD8DAD8FFF6F4F6FFF3F3
          F3FFF5F5F5FFF2F2F2FFF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFECECECFFE9E9
          E9FFE6E6E6FFE4E4E4FFE1E1E1FFE1E1E1FFDEDEDEFFE0DEE0FFBFC1BFFF3BAE
          53FF1ABA3CFF21BA43FF24BE49FF1CAC3BFF034906B10000000000000000218C
          43B111AA22FF07A00EFF08A112FF00A00BFF33A63BFFDADCDAFFF9F7F9FFF7F7
          F7FFF9F9F9FFD5D5D5FFC8C8C8FFCBCBCBFFCCCCCCFFCBCBCBFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCECECEFFE0E0E0FFE0E0E0FFE0DEE1FFC0C2C0FF3AAD
          52FF19B93CFF21BA43FF23BE48FF1CAC3AFF034906B10000000000000000218C
          43B110A920FF059E0BFF07A00FFF009F08FF33A63AFFDDDEDDFFFBF9FBFFF9F9
          F9FFFCFCFCFFDCDCDCFFD1D1D1FFD4D4D4FFD3D3D3FFD2D2D2FFD1D1D1FFD2D2
          D2FFD1D1D1FFCFCFCFFFD2D2D2FFE1E1E1FFE0E0E0FFE1DFE1FFC1C2C1FF3BAE
          53FF19B93BFF21BA42FF23BD47FF1CAB3AFF034906B10000000000000000218C
          42B10EA71DFF049D09FF069F0DFF009E06FF33A639FFDFE0DFFFFDFBFDFFFBFB
          FBFFFEFEFEFFFDFDFDFFFCFCFCFFFDFDFDFFFCFCFCFFFAFAFAFFF6F6F6FFF2F2
          F2FFEFEFEFFFECECECFFE7E7E7FFE4E4E4FFE0E0E0FFE2E1E2FFC2C3C2FF3BAD
          52FF18BA3BFF20BB43FF23BF47FF1DAD3BFF034C06B10000000000000000218C
          42B10EA71CFF039C07FF059E0BFF009D04FF33A63AFFDFE0DFFFFDFBFDFFFCFC
          FCFFFFFFFFFFE8E8E8FFE0E0E0FFE2E2E2FFE1E1E1FFE0E0E0FFDFDFDFFFDDDD
          DDFFDCDCDCFFDADADAFFDADADAFFE3E3E3FFE1E1E1FFE2E1E2FFC2C3C2FF3BB0
          53FF16AD36FF188D32FF1FA93EFF1EB23EFF06530BB10000000000000000218C
          43B40CA518FF029B04FF049D09FF009C02FF33A638FFE1E2E1FFFDFBFDFFFCFC
          FCFFFFFFFFFFD3D3D3FFC4C4C4FFC7C7C7FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9
          C9FFC9C9C9FFC8C8C8FFCDCDCDFFE2E2E2FFE2E2E2FFE2E1E2FFC2C3C2FF3BB3
          54FF14A131FF126324FF1B9638FF1FB640FF085811B300000000000000001D74
          3B8C16B02CFF009500FF029B06FF009B00FF32A535FFE0E1E0FFFDFBFCFFFBFB
          FBFFFFFFFFFFF2F2F2FFECECECFFEEEEEEFFEDECEDFFEBEAEAFFE9E9E9FFE6E6
          E6FFE4E3E3FFE1E1E1FFE0E0E0FFE5E4E5FFE2E2E2FFE3E1E2FFC3C3C2FF3BAF
          52FF17B237FF1CA138FF21B543FF1CAC3AFF094C118B0000000000000000071D
          0F22259C4CBD17AF2DFF0AA313FF04A20FFF37AB42FFDBDDDCFFF5F4F5FFF3F4
          F3FFF7F7F7FFF9FAF9FFFAFBFAFFF9FAF9FFF8F9F8FFF5F6F5FFF1F2F2FFEEEF
          EFFFEBECEBFFE7E8E8FFE3E3E3FFDFE0E0FFDBDCDCFFDCDBDDFFC0C1C0FF3DAE
          55FF19B93CFF21BB43FF20B240FF127324BD0213052200000000000000000000
          0000040E07231E7E3F90239446BE1E9343BC3E985BC29AA69ED19FA9A3D19EAA
          A2D19FAAA3D19EAAA2D19DA8A1D19BA79FD199A59DD198A39CD195A099D1939E
          97D1919D95D18F9993D18B978FD18B968FD188938BD187918BD1828D86D1348A
          4EC2188737BC198234BE11632490020A03230000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000636E76FFFFFF
          FFFFEDEDEEFF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFC6C6C6FFFFFFFFFF0371FCFFC6FE
          FEFFFFFFFFFF7D7673FF000000FF030D2CFF0392F9FF0392F9FF0392F9FF0392
          F9FF0392F9FF0392F9FF0392F9FF03B8FEFF0392F9FF03B8FEFF0392F9FF03B8
          FEFF0392F9FF03B8FEFF0392F9FF0392F9FF0392F9FF0392F9FF0392F9FF0392
          F9FF0392F9FF02030EFF000000FF5D5D5DFFFFFFFFFFE4FEFEFF0392F9FF0392
          F9FFFFFFFFFFFFFFFFFF060202FF000000FF0872CDFF03B8FEFF03B8FEFF03B8
          FEFF03B8FEFF03B8FEFF03B8FEFF03B8FEFF03B8FEFF03B8FEFF03B8FEFF03B8
          FEFF03B8FEFF03B8FEFF03B8FEFF03B8FEFF03B8FEFF03B8FEFF03B8FEFF03B8
          FEFF03467FFF000000FF121212FFFFFFFFFFFFFFFFFF0392F9FFC6FEFEFFC6FE
          FEFFE4F9F8FFFFFFFFFFFFFFFFFF000000FF030D2CFFB9FDFDFFD2FDFEFFD2FD
          FEFFC6FEFEFFC6FEFEFFD2FDFEFFC6FEFEFFC6FEFEFFD2FDFEFFC6FEFEFFC6FE
          FEFFD2FDFEFFC6FEFEFFC6FEFEFFD2FDFEFFC6FEFEFFC6FEFEFFDCFDFEFF83D7
          FAFF000000FF000000FFFFFFFFFFFFFFFFFFE4F9F8FFC6FEFEFFFDFBF7FF7D76
          73FF7D7673FFAAACACFFFFFFFFFF7D8487FF000000FF5D5D5DFF7D7673FF7D76
          73FF7D7673FF7D7673FF7D7673FF7D7673FF7D7673FF7D7673FF7D7673FF7D76
          73FF7D7673FF7D7673FF7D7673FF7D7673FF7D7673FF7D7673FF7D7673FF383A
          36FF000000FFB2B4B6FFFFFFFFFF8D9191FF7D7673FF7D7673FFBCBCBDFF0000
          00FF000000FF000000FFB4CAD1FFFFFFFFFF121212FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF4A4A4BFFFFFFFFFF7D8487FF000000FF000000FF000000FF0000000061C0
          EEFF03B8FEFF03B8FEFF03B8FEFFFDFBF7FFFFFFFFFF000000FF03467FFF04E7
          F8FF04E7F8FF04E7F8FF04E7F8FF04E7F8FF04E7F8FF04E7F8FF04E7F8FF04E7
          F8FF04E7F8FF04E7F8FF04E7F8FF04E7F8FF04E7F8FF03B8FEFF02071EFF0602
          02FFFDFBF7FFDAF5F5FF03B8FEFF03B8FEFF0392F9FF99DADEFF000000000000
          0000C2C2C2FFB5D9DCFF5E9DC0FF5E9DC0FFFAFCFDFF8D9191FF060202FF5E9D
          C0FF5E9DC0FF5E9DC0FF5E9DC0FF5E9DC0FF5E9DC0FF5E9DC0FF5E9DC0FF5E9D
          C0FF5E9DC0FF5E9DC0FF5E9DC0FF5E9DC0FF5E9DC0FF3F6989FF000000FFFFFF
          FFFFF4F5F5FF5E9DC0FF7FA2CCFFC1C6C7FFC2C2C2FF00000000000000000000
          0000000000000000000002030EFF02030EFF3F6989FFFFFFFFFF1F1E1DFF0000
          00FF02071EFF02071EFF020F13FF030D2CFF02071EFF02071EFF020F13FF030D
          2CFF020F13FF030D2CFF02071EFF02071EFF000000FF000000FF9BA0A1FFFFFF
          FFFF0C233FFF02030EFF415E5EFF000000000000000000000000000000000000
          0000000000000000000099DADEFF61C0EEFF0872CDFFA9F7F8FFFFFFFFFF0000
          00FF0872CDFF0392F9FF0392F9FF0872CDFF0392F9FF0392F9FF0392F9FF0872
          CDFF0392F9FF0872CDFF0392F9FF0392F9FF0D2D54FF383A36FFFFFFFFFF38A8
          EFFF0392F9FF83D7FAFFC2C2C2FF000000000000000000000000000000000000
          0000000000000000000000000000000000000C233FFF0C233FFFECFCFDFFB2B4
          B6FF000000FF0D2D54FF0D2D54FF0D2D54FF0D2D54FF0D2D54FF0D2D54FF0D2D
          54FF0D2D54FF0D2D54FF0D2D54FF02071EFF000000FFFFFFFFFF5E9DC0FF080C
          52FF8697A9FF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001484C4FF0465A7FFFFFF
          FFFF383A36FF03467FFF0465A7FF0465A7FF0465A7FF0465A7FF0465A7FF0465
          A7FF0465A7FF0465A7FF0465A7FF02071EFFD1D4D1FF96DFFEFF03467FFF99DA
          DEFFC2C2C2FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000CBCCCCFF0465A7FF388A
          D0FFFDFBF7FF02030EFF03467FFF03548CFF03548CFF03548CFF03548CFF0354
          8CFF03548CFF03548CFF030D2CFF7D7673FFC6FEFEFF03467FFFA4C7D9FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C2C2C2FF2557
          9FFF61C0EEFFAAACACFF0C233FFF03467FFF03467FFF03467FFF03467FFF0346
          7FFF03467FFF03467FFF383A36FFDCFDFEFF03548CFFA4C7D9FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C2C2
          C2FF0465A7FF99DADEFF415E5EFF03548CFF0465A7FF0465A7FF0465A7FF0465
          A7FF0465A7FF0C233FFFB4CAD1FF1484C4FFA4C7D9FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000C2C2C2FF1484C4FF8DB5BEFF0D2D54FF03548CFF03548CFF03548CFF0354
          8CFF0D2D54FF6F9397FF388AD0FFB4CAD1FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000BDC0C6FF5E9DC0FF5C8D82FF03548CFF03548CFF03548CFF0354
          8CFF3F6989FF5E9DC0FFC0D2D5FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C2C2C2FF7FA2CCFF1E488CFF0465A7FF0465A7FF0346
          7FFF5E9DC0FFC1C6C7FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C2C2C2FF61C0EEFF0465A7FF0465A7FF61C0
          EEFFC6C2C6FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000CBCCCCFFE0E0E1FF61C0EEFF38A8EFFFEDED
          EEFFD8D8D9FFC2C2C2FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C6C6C6FFE7E8E8FFF4F5F5FFF4F5F5FFFDFBF7FFF4F5
          F5FFEDEDEEFFD8D8D9FFC2C2C2FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C2C2C2FFE0E0E1FFEDEDEEFFFAFCFDFFFFFFFFFFFFFFFFFFFAFC
          FDFFF4F5F5FFE7E8E8FFCBCCCCFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C2C2C2FFE7E8E8FFF4F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4F5F5FFEDEDEEFFD8D8D9FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C6C2C6FFE7E8E8FFF4F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFBF7FFEDEDEEFFD1D4D1FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C2C2C2FFD8D8D9FFEDEDEEFFFDFBF7FFFFFFFFFFFFFFFFFFFAFC
          FDFFF4F5F5FFE7E8E8FFCBCCCCFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000CBCCCCFFE7E8E8FFF4F5F5FFF4F5F5FFF4F5F5FFF4F5
          F5FFEDEDEEFFD8D8D9FFC2C2C2FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000CBCCCCFFE0E0E1FFE7E8E8FFEDEDEEFFE7E8
          E8FFD8D8D9FFC6C2C6FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C6C2C6FFCBCCCCFFCBCCCCFFC6C6
          C6FFC2C2C2FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
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
          00000000000080A0A0FF806060FFC0A0A0FF0000000000000000000000000000
          00000000000000000000404080FF406080FF0000000000000000000000000000
          0000C0A0C0FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000080A0A0FF002060FF002060FF002060FF404080FF404080FF406080FF4040
          80FF404080FF404060FF402080FF4040E0FFC0A0C0FF00000000C0A0C0FF8080
          A0FF4040A0FF4040C0FF80A0C0FF4060C0FF8080C0FF80A0C0FF8080C0FF0000
          000000000000C0A0C0FF00000000000000000000000000000000000000000000
          000080A0A0FF002060FF000080FF000080FF000080FF000080FF000080FF0000
          80FF000080FF002040FF4040A0FF4040C0FF80A0C0FF80A0A0FF404080FF4060
          80FF4040A0FF002080FF4060A0FF4020A0FF0020A0FF4080A0FF0020A0FF8080
          C0FF80C0C0FF8080E0FF4060C0FF000000000000000000000000000000000000
          0000808080FF404060FF002060FF000080FF000080FF000080FF000080FF0000
          80FF404080FF004040FF404080FF404080FF406080FF8080A0FF002060FF4080
          A0FF402080FF002080FF4060A0FF402040FF002040FF404060FF002040FF4040
          60FF406060FF4040A0FF000080FF4060C0FF0000000000000000000000004020
          20FF000000FF402020FF806080FF002080FF000080FF000080FF000080FF4020
          80FF402020FF000000FF000000FF4040A0FF402060FF000000FF000000FF0000
          00FF000000FF002040FF4080C0FF402080FF402080FF406080FF002040FF0020
          40FF404060FF402080FF0020A0FF4020A0FF0000000000000000808080FF0000
          00FF000000FF000000FF808080FF806080FF000080FF000080FF000080FF0020
          60FF000000FF000000FF000000FF002060FF402040FF000000FF000000FF0000
          00FF402020FF402020FF80A0A0FF4080A0FF402060FF8080A0FF002080FF4060
          A0FF80A0C0FF4020A0FF4020A0FF402080FFC0A0C0FF00000000C0A0A0FF0000
          00FF000000FF000000FF402020FF404040FF002040FF002040FF000000FF0000
          00FF000000FF000000FF000000FF402020FF402020FF402020FF000000FF4040
          20FFC8D0D4FFC0DCC0FFF0FBFFFF80A0E0FF404080FF80C0E0FF8060C0FF4080
          C0FF40A0E0FF4020A0FF002080FF4040C0FF80A0C0FF000000000000000080A0
          A0FF806060FFC0A0A0FF406040FF000000FF000000FF402020FF406060FF80A0
          A0FF80A0A0FF806060FF000000FF004020FF004020FF004020FF000000FF0040
          20FF402020FF402020FF80C0C0FF80A0A0FF402020FF402020FF404060FF40A0
          A0FF40A0C0FF402080FF4020A0FF4060E0FF80A0C0FF00000000000000000000
          00000000000000000000808080FF000000FF004020FF404040FF404040FF8080
          80FF808080FF406060FF004020FF004020FF402020FF004020FF000000FF0040
          20FF402020FF402020FF402020FF402020FF402020FF000000FF000000FF4080
          80FF80A0E0FF402080FF4020A0FF4060E0FF80A0C0FF00000000000000000000
          00000000000000000000808080FF000000FF004020FF406040FF004020FF0000
          00FF000000FF000000FF000000FF004020FF404040FF004020FF004020FF0040
          20FF404020FF402020FF402020FF402020FF402020FF402020FF000000FF4080
          60FF80C0E0FF002060FF0020A0FF4040A0FF80A0C0FF00000000000000000000
          0000000000000000000000000000C0A0A0FFC0A0A0FFC0A0A0FF402020FF0000
          00FF000000FF000000FF000000FF000000FF404040FF404040FF000000FF0040
          20FF404040FF404020FF404040FF402020FF402020FF402020FF402020FF4060
          60FFC0DCC0FF402080FF0020A0FF4020A0FFC0A0C0FF00000000000000000000
          00000000000000000000000000000000000000000000808080FF000000FF0000
          00FF000000FF000000FF000000FF000000FF402020FF402020FF000000FF0000
          00FF000000FF000000FF406040FF004020FF000000FF000000FF002040FF4060
          60FF80A0A0FF4040A0FF000080FF4040A0FF0000000000000000000000000000
          00000000000000000000000000000000000000000000000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF002040FF404040FF000000FF000000FF000000FF4060
          40FF004060FF8060C0FF002080FF8080C0FF0000000000000000000000000000
          000000000000000000000000000000000000C0A0A0FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF402020FF402020FF4020
          20FF402020FF402020FF404040FF408060FF404020FF404040FF404040FF4080
          60FF004040FF404080FFC0A0E0FF8060A0FF0000000000000000000000000000
          000000000000000000000000000000000000C0A0A0FF000000FF000000FF0040
          20FF004020FF004020FF000000FF000000FF404040FFC0DCC0FFC0DCC0FFC8D0
          D4FFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0DC
          C0FF002040FF002060FF402060FF002060FF0000000000000000000000000000
          00000000000000000000000000000000000000000000000000FF004020FF40A0
          80FF40A080FF408060FF000000FF000000FF808080FFFFFFFFFFF0FBFFFFF0FB
          FFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFFFFFFFFFF0FBFFFFC0DCC0FF80C0
          C0FF004040FF002040FF002040FF404040FF0000000000000000000000000000
          00000000000000000000000000000000000000000000404060FF004020FF40E0
          A0FF40E0C0FF40C080FF004020FF000000FF404040FF80C0C0FF80A0A0FF80A0
          80FF808080FF808080FF40A0A0FF406060FF406060FF406060FF40A0A0FF4060
          60FF808080FF80A0A0FF80A0A0FF80A0A0FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000406060FF0080
          40FF40C080FF008060FF000000FF000000FF000000FF004020FF404040FF4020
          20FF004040FF406060FF002040FF002040FF004020FF004040FF004020FF0000
          00FF808080FFC8D0D4FF80A0A0FF80A0A0FF0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C0A0
          A0FF406060FF000000FF406060FF408080FF008080FF006060FFC8D0D4FFC8D0
          D4FF408080FF80A0A0FF80A0A0FF80A0A0FF004020FF404040FF002040FF4040
          40FF808080FFC0A0C0FF80A0A0FF80A0A0FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000080A0A0FF000000FF40A0A0FF40E0E0FF40E0E0FF406080FFC8D0D4FFC8D0
          D4FF408060FFC8D0D4FFC0C0A0FFC0A0A0FF004020FFC8D0D4FFC8D0D4FF80A0
          A0FF808080FFC0A0C0FFC0A0A0FF80A0A0FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000080A0A0FF000000FF4080A0FF40E0E0FF40A0C0FF004060FFC8D0D4FFC8D0
          D4FF408060FFC0A0A0FF80A0A0FF80C0C0FF406040FFC8D0D4FFC8D0D4FFC0C0
          A0FF806080FFC0A0C0FF80A0A0FF8080A0FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000080A0A0FF000000FF80A0A0FF80E0E0FF40E0E0FF80C0C0FFC8D0D4FFC8D0
          D4FF406040FF406040FF006040FF40C0C0FF406040FF808060FF808080FF4080
          60FF404060FF404080FF002060FF002060FFC0A0A0FF80A0A0FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000080A0A0FF000000FFC0A0A0FF000000000000000000000000C0A0A0FF0000
          00FF000000FF004020FF004020FF408080FF004040FF004020FF004020FF0040
          20FF000000FF000000FF000000FF000000FF404040FF406060FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000080A0A0FF000000FF0000000000000000000000000000000000000000C0A0
          A0FF808080FF404040FF402020FF006060FF002040FF402020FF402020FF4040
          40FF808080FF80A0A0FFC0A0A0FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000808080FF000000FF808080FF000000000000000000000000000000000000
          000000000000000000000000000080C0C0FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000080A0
          A0FF000000FF000000FF000000FF80A0A0FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0A0A0FF0000
          00FF000000FF000000FF000000FF000000FFC0A0A0FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004040
          40FF000000FF000000FF000000FF404040FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C0A0
          C0FF406060FF404040FF404040FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object Client_CalcParametrs: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 248
    object Client_CalcParametrsdate_from_to: TDateField
      FieldName = 'date_from_to'
    end
    object Client_CalcParametrsnode_begin_cod: TStringField
      FieldName = 'node_begin_cod'
      Size = 6
    end
    object Client_CalcParametrsnode_begin_name: TStringField
      FieldName = 'node_begin_name'
      Size = 50
    end
    object Client_CalcParametrsnode_end_cod: TStringField
      FieldName = 'node_end_cod'
      Size = 6
    end
    object Client_CalcParametrsnode_end_name: TStringField
      FieldName = 'node_end_name'
      Size = 50
    end
    object Client_CalcParametrsPPLand: TIntegerField
      FieldName = 'PPLand'
    end
    object Client_CalcParametrsnode_begin_land_name: TStringField
      FieldName = 'node_begin_land_name'
      Size = 100
    end
    object Client_CalcParametrsnode_begin_road_name: TStringField
      FieldName = 'node_begin_road_name'
      Size = 200
    end
    object Client_CalcParametrsNode_begin_PPland: TIntegerField
      FieldName = 'node_begin_PPland'
    end
    object Client_CalcParametrsnode_begin_PPland_name: TStringField
      FieldName = 'node_begin_PPland_name'
      Size = 255
    end
    object Client_CalcParametrsnode_end_land_name: TStringField
      FieldName = 'node_end_land_name'
      Size = 100
    end
    object Client_CalcParametrsnode_end_road_name: TStringField
      FieldName = 'node_end_road_name'
      Size = 200
    end
    object Client_CalcParametrsnode_end_PPland: TIntegerField
      FieldName = 'node_end_PPland'
    end
    object Client_CalcParametrsnode_end_PPland_name: TStringField
      FieldName = 'node_end_PPland_name'
      Size = 255
    end
    object Client_CalcParametrsETSNG_cod: TStringField
      FieldName = 'ETSNG_cod'
      Size = 8
    end
    object Client_CalcParametrsETSNG_name: TStringField
      FieldName = 'ETSNG_name'
      Size = 800
    end
    object Client_CalcParametrsETSNG_klass: TStringField
      FieldName = 'ETSNG_klass'
      Size = 5
    end
    object Client_CalcParametrsGNG_cod: TStringField
      FieldName = 'GNG_cod'
      Size = 8
    end
    object Client_CalcParametrsGNG_name: TStringField
      FieldName = 'GNG_name'
      Size = 800
    end
    object Client_CalcParametrsGNG_klass: TStringField
      FieldName = 'GNG_klass'
      Size = 5
    end
    object Client_CalcParametrsWeight: TFloatField
      FieldName = 'Weight'
    end
    object Client_CalcParametrsOtpr_name: TStringField
      FieldName = 'Otpr_name'
      Size = 100
    end
    object Client_CalcParametrsOtpr_id: TIntegerField
      FieldName = 'Otpr_id'
    end
    object Client_CalcParametrsSend_id: TIntegerField
      FieldName = 'Send_id'
    end
    object Client_CalcParametrsSend_name: TStringField
      FieldName = 'Send_name'
      Size = 100
    end
    object Client_CalcParametrsGroupSend: TBooleanField
      FieldName = 'GroupSend'
    end
    object Client_CalcParametrsGrupVag: TBooleanField
      FieldName = 'GrupVag'
    end
    object Client_CalcParametrsCars_id: TIntegerField
      FieldName = 'Cars_id'
    end
    object Client_CalcParametrsCars_name: TStringField
      FieldName = 'Cars_name'
      Size = 800
    end
    object Client_CalcParametrsCars_gp: TFloatField
      FieldName = 'Cars_gp'
    end
    object Client_CalcParametrsCars_axis: TIntegerField
      FieldName = 'Cars_axis'
    end
    object Client_CalcParametrsCars_TareW: TFloatField
      FieldName = 'Cars_TareW'
    end
    object Client_CalcParametrsCars_Volume: TFloatField
      FieldName = 'Cars_Volume'
    end
    object Client_CalcParametrsKol_PS: TIntegerField
      FieldName = 'Kol_PS'
    end
    object Client_CalcParametrsVag_otpr: TIntegerField
      FieldName = 'Vag_otpr'
    end
    object Client_CalcParametrsOwners_id: TIntegerField
      FieldName = 'Owners_id'
    end
    object Client_CalcParametrsLandOwn_id: TIntegerField
      FieldName = 'LandOwn_id'
    end
    object Client_CalcParametrsLandOwn_name: TStringField
      FieldName = 'LandOwn_name'
      Size = 100
    end
    object Client_CalcParametrsOption4: TBooleanField
      FieldName = 'Option4'
    end
    object Client_CalcParametrsOption6: TBooleanField
      FieldName = 'Option6'
    end
    object Client_CalcParametrsOption8: TBooleanField
      FieldName = 'Option8'
    end
    object Client_CalcParametrsOption10: TBooleanField
      FieldName = 'Option10'
    end
    object Client_CalcParametrsOption12: TBooleanField
      FieldName = 'Option12'
    end
    object Client_CalcParametrsSupport_id: TIntegerField
      FieldName = 'Support_id'
    end
    object Client_CalcParametrsSupport_Caption: TStringField
      FieldName = 'Support_Caption'
      Size = 200
    end
    object Client_CalcParametrsSupport_Kol_Conductor: TIntegerField
      FieldName = 'Support_Kol_Conductor'
    end
    object Client_CalcParametrsSupport_Axis: TIntegerField
      FieldName = 'Support_Axis'
    end
    object Client_CalcParametrsSupport_Vochr: TCurrencyField
      FieldName = 'Support_Vochr'
    end
    object Client_CalcParametrsEmpty_GNG_cod: TStringField
      FieldName = 'Empty_GNG_cod'
      Size = 8
    end
    object Client_CalcParametrsEmpty_GNG_name: TStringField
      DisplayWidth = 800
      FieldName = 'Empty_GNG_name'
      Size = 500
    end
    object Client_CalcParametrsEmpty_ETSNG_cod: TStringField
      FieldName = 'Empty_ETSNG_cod'
      Size = 6
    end
    object Client_CalcParametrsEmpty_ETSNG_name: TStringField
      FieldName = 'Empty_ETSNG_name'
      Size = 800
    end
    object Client_CalcParametrsEmpty_loading: TBooleanField
      FieldName = 'Empty_loading'
    end
    object Client_CalcParametrsVCGuard: TIntegerField
      FieldName = 'VCGuard'
    end
    object Client_CalcParametrsComment: TMemoField
      FieldName = 'Comment'
      BlobType = ftMemo
    end
    object Client_CalcParametrsBulkiness: TStringField
      FieldName = 'Bulkiness'
      Size = 5
    end
    object Client_CalcParametrsBulkiness_name: TStringField
      FieldName = 'Bulkiness_name'
      Size = 200
    end
    object Client_CalcParametrsContainer_name: TStringField
      FieldName = 'Container_name'
      Size = 250
    end
    object Client_CalcParametrsContainer_id: TIntegerField
      FieldName = 'Container_id'
    end
    object Client_CalcParametrsKit_id: TIntegerField
      FieldName = 'Kit_id'
    end
    object Client_CalcParametrsMultiple_kit: TBooleanField
      FieldName = 'Multiple_kit'
    end
    object Client_CalcParametrsExitRoute_id: TIntegerField
      DefaultExpression = '0'
      FieldName = 'ExitRoute_id'
    end
    object Client_CalcParametrsExitRoute_name: TStringField
      FieldName = 'ExitRoute_name'
      Size = 255
    end
    object Client_CalcParametrsroute_name: TStringField
      FieldName = 'route_name'
      Size = 500
    end
    object Client_CalcParametrsdistance: TIntegerField
      FieldName = 'distance'
    end
    object Client_CalcParametrscurrency_id: TIntegerField
      FieldName = 'currency_id'
    end
    object Client_CalcParametrsenable_alt_route: TBooleanField
      FieldName = 'enable_alt_route'
    end
    object Client_CalcParametrsroute_id: TIntegerField
      FieldName = 'route_id'
    end
    object Client_CalcParametrsnode_washing_cod: TStringField
      FieldName = 'node_washing_cod'
    end
    object Client_CalcParametrsnode_washing_name: TStringField
      FieldName = 'node_washing_name'
      Size = 200
    end
    object Client_CalcParametrsnode_washing_ppland: TStringField
      FieldName = 'node_washing_ppland'
      Size = 50
    end
    object Client_CalcParametrsnode_washing_road: TStringField
      FieldName = 'node_washing_road'
      Size = 50
    end
    object Client_CalcParametrsBulkiness_param: TStringField
      FieldName = 'Bulkiness_param'
      Size = 1000
    end
    object Client_CalcParametrsOption14: TBooleanField
      FieldName = 'Option14'
    end
    object Client_CalcParametrsProject_Tariff_Index_2017: TBooleanField
      FieldName = 'Project_Tariff_Index_2017'
    end
    object Client_CalcParametrsNEW_DISTANCES: TBooleanField
      FieldName = 'NEW_DISTANCES'
    end
    object Client_CalcParametrsPROJECT_TARIF_2017: TBooleanField
      FieldName = 'PROJECT_TARIF_2017'
    end
    object Client_CalcParametrsbuffer_ID: TIntegerField
      FieldName = 'buffer_ID'
    end
    object Client_CalcParametrsbuffer_Name: TStringField
      FieldName = 'buffer_Name'
      Size = 200
    end
    object Client_CalcParametrsbuffer_TranspId: TIntegerField
      FieldName = 'buffer_TranspId'
    end
    object Client_CalcParametrsbuffer_TranspName: TStringField
      FieldName = 'buffer_TranspName'
      Size = 200
    end
    object Client_CalcParametrsbuffer_OwnerId: TIntegerField
      FieldName = 'buffer_OwnerId'
    end
    object Client_CalcParametrsbuffer_Count: TIntegerField
      FieldName = 'buffer_Count'
    end
    object Client_CalcParametrsbuffer_Axis: TIntegerField
      FieldName = 'buffer_Axis'
    end
    object Client_CalcParametrsbuffer_ControlFrameWeight: TIntegerField
      FieldName = 'buffer_ControlFrameWeight'
    end
    object Client_CalcParametrsbuffer_OwnerName: TStringField
      FieldName = 'buffer_OwnerName'
      Size = 200
    end
    object Client_CalcParametrsFlatWagonId: TIntegerField
      FieldName = 'FlatWagonId'
    end
    object Client_CalcParametrsFlatWagonCaption: TStringField
      FieldName = 'FlatWagonCaption'
      Size = 100
    end
    object Client_CalcParametrsFWCount: TIntegerField
      FieldName = 'FWCount'
    end
    object Client_CalcParametrsFWOwnP: TIntegerField
      FieldName = 'FWOwnP'
    end
    object Client_CalcParametrsFWOwnPCaption: TStringField
      FieldName = 'FWOwnPCaption'
      Size = 50
    end
    object Client_CalcParametrsFWOwnD: TIntegerField
      FieldName = 'FWOwnD'
    end
    object Client_CalcParametrsFWOCE: TIntegerField
      FieldName = 'FWOCE'
    end
    object Client_CalcParametrsTARIFFMARK64: TBooleanField
      FieldName = 'TARIFFMARK64'
    end
    object Client_CalcParametrsADDSTATION: TBooleanField
      FieldName = 'ADDSTATION'
    end
    object Client_CalcParametrsMODELOW: TBooleanField
      FieldName = 'MODELOW'
    end
    object Client_CalcParametrsMODELOWN: TBooleanField
      FieldName = 'MODELOWN'
    end
    object Client_CalcParametrsMODELOWND: TBooleanField
      FieldName = 'MODELOWND'
    end
    object Client_CalcParametrsProject_Tariff_AddIndex_2018: TBooleanField
      FieldName = 'Project_Tariff_AddIndex_2018'
    end
    object Client_CalcParametrsProject_Tariff_Index_2018: TBooleanField
      FieldName = 'Project_Tariff_Index_2018'
    end
    object Client_CalcParametrsreturn_type: TIntegerField
      FieldName = 'return_type'
    end
    object Client_CalcParametrsreturn_node_cod: TStringField
      FieldName = 'return_node_cod'
      Size = 10
    end
    object Client_CalcParametrsreturn_node_name: TStringField
      FieldName = 'return_node_name'
      Size = 200
    end
    object Client_CalcParametrsreturn_land_id: TIntegerField
      FieldName = 'return_land_id'
    end
    object Client_CalcParametrsreturn_land_name: TStringField
      FieldName = 'return_land_name'
      Size = 200
    end
    object Client_CalcParametrsZhur_Miller: TBooleanField
      FieldName = 'Zhur_Miller'
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
          'Width')
      end
      item
        Component = GridPanel1
        Properties.Strings = (
          'Height')
      end>
    StorageName = '\Software\LIS1\CtmNewMain'
    StorageType = stRegistry
    Left = 543
    Top = 418
  end
  object CTMConnect: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Inf' +
      'o=True;User ID=sa;Initial Catalog=lis1;Data Source=srv-lis'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 488
    Top = 176
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 200
    Top = 72
    PixelsPerInch = 120
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlue
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 6020351
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object DS_Result: TDataSource
    DataSet = Client_Result
    Left = 352
    Top = 272
  end
  object Client_Result: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 268
    object Client_ResultLandName: TStringField
      FieldName = 'LandName'
      Size = 60
    end
    object Client_ResultDirection_id: TIntegerField
      FieldName = 'Direction_id'
    end
    object Client_ResultLandId: TIntegerField
      FieldName = 'LandId'
    end
    object Client_ResultCalcDsc: TStringField
      FieldName = 'CalcDsc'
      Size = 30
    end
    object Client_ResultBasePrice: TCurrencyField
      FieldName = 'BasePrice'
    end
    object Client_ResultTotalPrice: TCurrencyField
      FieldName = 'TotalPrice'
    end
    object Client_ResultNDS: TCurrencyField
      FieldName = 'NDS'
    end
    object Client_ResultGuardNDS: TCurrencyField
      FieldName = 'GuardNDS'
    end
    object Client_ResultPerT: TCurrencyField
      FieldName = 'PerT'
    end
    object Client_ResultABBR: TStringField
      FieldName = 'ABBR'
      Size = 10
    end
    object Client_ResultDirection: TStringField
      FieldName = 'Direction'
      Size = 5
    end
    object Client_Resultid: TIntegerField
      FieldName = 'id'
    end
    object Client_ResultCurrencyID: TIntegerField
      FieldName = 'CurrencyID'
    end
    object Client_ResultPerT_PP: TCurrencyField
      FieldName = 'PerT_PP'
    end
    object Client_ResultDistance: TFloatField
      FieldName = 'Distance'
    end
    object Client_ResultVohr: TBooleanField
      FieldName = 'Vohr'
    end
    object Client_ResultGuardPrice: TCurrencyField
      FieldName = 'GuardPrice'
    end
    object Client_ResultShemaNo: TStringField
      FieldName = 'ShemaNo'
      Size = 100
    end
    object Client_ResultSoprPrice: TCurrencyField
      FieldName = 'SoprPrice'
    end
    object Client_ResultAddDues: TCurrencyField
      FieldName = 'AddDues'
    end
    object Client_ResultTotalPriceWoNDS: TCurrencyField
      FieldName = 'TotalPriceWoNDS'
    end
    object Client_ResultPerTwoNDS: TCurrencyField
      FieldName = 'PerTwoNDS'
    end
    object Client_ResultFromNewCode: TStringField
      FieldName = 'FromNewCode'
      Size = 6
    end
    object Client_ResultToNewCode: TStringField
      FieldName = 'ToNewCode'
      Size = 6
    end
    object Client_ResultOrderId: TIntegerField
      FieldName = 'OrderId'
    end
    object Client_Resultset_distance: TBooleanField
      FieldName = 'set_distance'
    end
    object Client_ResultWashingState: TIntegerField
      FieldName = 'WashingState'
    end
    object Client_ResultFromStationPID: TIntegerField
      FieldName = 'FromStationPID'
    end
    object Client_ResultToStationPID: TIntegerField
      FieldName = 'ToStationPID'
    end
    object Client_ResultKIT: TStringField
      FieldName = 'KIT'
    end
    object Client_ResultKIT_name: TStringField
      FieldName = 'KIT_name'
      Size = 300
    end
  end
  object cxImageList_16: TcxImageList
    SourceDPI = 96
    DrawingStyle = dsTransparent
    FormatVersion = 1
    DesignInfo = 394128
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF0000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF0000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF0000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF0000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF0000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF0000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF0000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF0000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF0000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF0000000000000000000000000000
          0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000000000000000
          0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000
          000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF00008003000080030000800300008003000080030000800300008003
          0000800300008003000080030000800300008003000080030000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080808000800080000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000080808000C0C0C000FFFFFF00C0C0C0008000
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000080808000C0C0C000FFFFFF00C0C0C00080808000C0C0C000C0C0
          C000800080000000000000000000000000000000000000000000000000008080
          8000C0C0C000FFFFFF00C0C0C00080808000808080000000000080808000C0C0
          C000C0C0C000800080000000000000000000000000000000000080008000C0C0
          C000C0C0C0008080800080808000000000000000000080008000000000008080
          8000C0C0C000C0C0C00080008000000000000000000000000000800080008080
          8000808080000000000000000000800080008000800080008000800080000000
          000080808000C0C0C000C0C0C000800080000000000000000000800080000000
          0000000000008000800080008000800080008000800080008000800080008000
          80000000000080808000C0C0C000C0C0C0008000800000000000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080000000000080808000C0C0C0000000000000000000000000008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800000000000808080000000000000000000000000000000
          0000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000000000000000000000000000000000000000
          0000000000008000800080008000800080008000800080008000008080000080
          8000008080008000800080008000800080000000000000000000000000000000
          000000000000000000008000800080008000800080000080800000FFFF0000FF
          FF00808080008000800080008000000000000000000000000000000000000000
          0000000000000000000000000000800080008080800080808000808080008080
          8000800080000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008000800080008000800080000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080008000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE7F0000F83F0000E01F0000800F00000007000000030000000100000000
          00000000000080010000C0010000E0010000F0010000F8070000FC1F0000FE7F
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000FFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000000FF
          FF00000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000080808000FFFF
          FF0000FFFF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          8000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF0000FFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080808000FFFFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
          000000000000000000000000000000000000000000000000000080808000FFFF
          FF0000FFFF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          8000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          8000FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000080808000FFFFFF00FFFFFF0000FFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000080808000FFFFFF00FFFFFF0000FFFF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000833F0000FF1F0000878F0000FF0700008383
          0000FE01000086000000FF07000083830000FF81000083C00000FFE00000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000044150070621D00A4310D004A100400190201
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000270B003D6A3924F1786058FF915E48F589472BDA762F
          0DB7561C01852E0C005417060024040100060301000401000002000000000000
          0000000000000A0200108F3700CA7B4626FF6F6E6FFF98939AFFA2A4ACFFA6A7
          A9FFAEA095FFB69077FFB1774EF4974E21D73D1000600F030017000000000000
          0000000000005A1B008EF78903FF816D08FF28580FFF54601EFF726734FF8C77
          5AFFA29087FFB3A9AEFFC3C5CEFFABA09CD41304011D00000000000000000000
          00003810004FDE7403FAB78F05FF265725FF5C6B64FF5C815EFF4C7D43FF3F71
          2AFF42671CFF506115FF66652BFF7F6042DA140F032C00010002000000001408
          001BB25300D9E7950BFF2B861BFF196425FF626A58FF918C87FFAB9FA5FFAFA8
          AEFFA4AFABFF8FAE99FF75A57BFF568C4CFF093B018B001200291E0D0028682F
          0084F99208FF60871AFF18BC4FFF139357FF02746EFF0C7F54FF2C804DFF4F87
          59FF7B9573FFA2A896FFC6BDBEFFA19FA2CA0105010A000000003716003E9944
          02A1948813FF1AB144FF1FB265FF1F5A75FF5F7184FF588DA5FF3F91A3FF1D8A
          90FF068376FF0F7E5DFF208151FF337B44E40115093100010103040300072621
          004E21A136FE2DC760FF028FAAFF1A6A91FF626363FF8E8685FFAA9998FFAFA5
          A9FFA6AFBAFF88AFC3FF63A9BFFF399EACFF054F6FB5001D33560025004A0363
          12AA35D15EFF10978AFF05B8F6FF12ADD9FF089ACCFF1593C0FF2E8CAFFF4F8B
          A3FF7792A0FFA1A0A3FFC1B2B0FFDCCBC5FD1D313D5101070B10045103811B9F
          1FDF21AA79FF00A6E2FF15BDEAFF0FACDCFF00B5EAFF00B1E6FF00ADE3FF00A5
          DDFF009CD3FF0594C6FF2090BBFF4D96B3FF1336496901090F15001A0D2A034B
          2C80009AC7FF0DBFF2FF18AFDBFF04B8EAFF01B3E5FF00B0E4FF00ADE2FF00AB
          E0FF00ACDFFF00ACE0FF00A9DEFF0072A2D7001C2A3D0005080B00253C44005F
          8FA604BBEDFF1CB6E0FF12BBEBFF42C2E5FF5DCAE8FF4DC8EBFF3AC4ECFF29C0
          EAFF04B4E6FF00ABDDFF00678CBE000E151E0000000000000000003A4F62007F
          A9C816B4E2FF1BC2EEFF0ABEEBFF38C1E6FF4ECAE9FF66CFECFF7CD7EFFF4BCD
          F2FF01AFE1FF005E83AA00090D1300000000000000000000000000070A0B0019
          22270240526302527387006897AF0087B2CD0093C7E305ABDBF811B9E6FF04AD
          E1FF004D6D8B0004060800000000000000000000000000000000000000000000
          000000000000000000000000000000080B0E00131F27002D4050004169870042
          5873000102020000000000000000000000000000000000000000}
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          0000808000008080000080800000808000008080000080800000808000008080
          0000808000008080000080800000808000008080000000000000000000008080
          0000C0C0C00000000000C0C0C00000000000C0C0C00000000000C0C0C0000000
          0000FFFFFF00C0C0C000C0C0C000000000008080000000000000000000008080
          0000808000008080000080800000808000008080000080800000808000008080
          0000808000008080000080800000808000008080000000000000000000008080
          0000C0C0C00000000000C0C0C00000000000C0C0C00000000000C0C0C0000000
          0000C0C0C00000000000C0C0C000000000008080000000000000000000008080
          0000808000008080000080800000808000008080000080800000808000008080
          0000808000008080000080800000808000008080000000000000000000008080
          0000C0C0C00000000000C0C0C00000000000C0C0C00000000000C0C0C0000000
          0000C0C0C00000000000C0C0C000000000008080000000000000000000008080
          0000808000008080000080800000808000008080000080800000808000008080
          0000808000008080000080800000808000008080000000000000000000008080
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          0000808000008080000080800000808000008080000000000000000000008080
          0000000000000000000000000000000000000000000000000000000000000000
          0000808000008080000080800000808000008080000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080000000FFFF0000FFFF
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
          0000C0C0C000C0C0C00000000000C0C0C000C0C0C00000000000C0C0C000C0C0
          C00000000000C0C0C000C0C0C000000000000000000000000000000000000000
          0000C0C0C000C0C0C00000000000C0C0C000C0C0C00000000000C0C0C000C0C0
          C00000000000C0C0C000C0C0C000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C0C0C000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0C0C000C0C0
          C00000000000C0C0C000C0C0C000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
          C000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000080030000000000000000000000000000000000000000
          0000090300006FA300000FE300000E030000FE030000FC070000FC0F0000FC1F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
          FF00FFFFFF000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
          C000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
          FF00FFFFFF0080808000FFFFFF00000000000000000000000000FF000000FF00
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
          0000FFFFFF00FFFFFF0080808000FFFFFF000000000000000000FF0000000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C0000000
          000080808000FFFFFF00FFFFFF00000000008080800000000000FF0000000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
          FF00000000000000000000000000808080000000000000000000000000000000
          00000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF3F0000FC1F0000F00F0000E0070000E0030000E0010000000000000000
          0000000000000000000000010000E0070000F0FF0000E7FF0000CFFF0000DFFF
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000E00F0000F3EF0000F9FF0000FCFF
          0000FE7F0000FCFF0000F9FF0000F3EF0000E00F0000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000808000008080
          0000808000008080000080800000808000008080000080800000808000008080
          0000808000008080000080800000808000008080000080800000808000008080
          0000808000008080000080800000808000008080000080800000808000008080
          0000808000008080000080800000808080008080000080800000808000008080
          0000808000008080000080800000808000008080000080800000808000008080
          0000C0C0C0008080000080800000C0C0C0008080000080800000808000008080
          0000808000008080000080800000808000008080000080800000808000008080
          0000808000008080000080800000C0C0C0008080800080800000808000008080
          00008080000080800000808000008080000000FFFF0000FFFF0000FFFF00C0C0
          C000C0C0C00000FFFF00808000008080800000FFFF0080800000808000008080
          000080800000808000008080000000FFFF0000FFFF0000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF008080800000FFFF0000FFFF0080800000808000008080
          0000808000008080000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0080800000808080008080
          800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF00808000008080000000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF00808000008080000000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF00C0C0C0008080800000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00808000008080800000FF
          FF0000FFFF0000FFFF0000FFFF00808080008080800000FFFF0000FFFF0000FF
          FF0000FFFF00C0C0C00000FFFF0000FFFF0000FFFF008080000080800000C0C0
          C0008080800080808000808000008080000080800000808000008080800000FF
          FF0080800000808000008080800000FFFF0000FFFF0080800000808000008080
          0000808080008080800080800000808000008080000080800000808000008080
          00008080000080800000808000008080000000FFFF0080800000808000008080
          0000808000008080000080800000808000008080000080800000808000008080
          00008080000080800000808000008080000000FFFF0080800000808000008080
          0000808000008080000080800000808000008080000080800000808000008080
          0000808000008080000080800000808000008080000080800000}
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000606FBFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000606FBFF0606FBFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000606FBFF0606FBFF0606FBFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000606
          FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606
          FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606
          FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606
          FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF000000000606
          FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606
          FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF000000000000
          00000606FBFF0606FBFF0606FBFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000606FBFF0606FBFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000606FBFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000606FBFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000606FBFF0606FBFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000606FBFF0606FBFF0606FBFF00000000000000000606FBFF0606
          FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606
          FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF000000000606FBFF0606
          FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606
          FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606
          FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606
          FBFF0606FBFF0606FBFF0606FBFF0606FBFF0606FBFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000606FBFF0606FBFF0606FBFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000606FBFF0606FBFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000606FBFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78
          C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0000000000000000000000000000
          00000F78C1FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78
          C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78
          C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0000000000000000000000000000
          00000F78C1FF0F78C1FF0F78C1FF000000000000000000000000000000000000
          0000000000000F78C1FF0F78C1FF0F78C1FF0000000000000000000000000000
          00000F78C1FF000000000F78C1FF0F78C1FF0000000000000000000000000000
          00000F78C1FF0F78C1FF000000000F78C1FF0000000000000000000000000000
          00000F78C1FF00000000000000000F78C1FF0F78C1FF00000000000000000F78
          C1FF0F78C1FF00000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF0000000000000000000000000F78C1FF0F78C1FF0F78C1FF0F78
          C1FF0000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF000000000000000000000000000000000F78C1FF0F78C1FF0000
          00000000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF000000000000000000000000000000000F78C1FF0F78C1FF0000
          00000000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF0000000000000000000000000F78C1FF0F78C1FF0F78C1FF0F78
          C1FF0000000000000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF00000000000000000F78C1FF0F78C1FF00000000000000000F78
          C1FF0F78C1FF00000000000000000F78C1FF0000000000000000000000000000
          00000F78C1FF000000000F78C1FF0F78C1FF0000000000000000000000000000
          00000F78C1FF0F78C1FF000000000F78C1FF0000000000000000000000000000
          00000F78C1FF0F78C1FF0F78C1FF000000000000000000000000000000000000
          0000000000000F78C1FF0F78C1FF0F78C1FF0000000000000000000000000000
          00000F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0F78
          C1FF0F78C1FF0F78C1FF0F78C1FF0F78C1FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
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
          0000008000000080000000800000008000000080000000800000008000000080
          0000008000000000000000000000000000000000000000000000000000000000
          0000000000000080000000800000000000000000000000000000000000000000
          0000008000000000000000000000000000000000000000000000000000000000
          0000000000000000000000800000008000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000008000000080000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000080000000800000000000000000
          00000000FF000000FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000008000000080000000000000000000000000
          000000000000000000000000FF000000FF000000000000000000000000000000
          0000000000000000000000800000008000000000000000000000000000000000
          00000000000000000000000000000000FF000000000000000000000000000000
          0000000000000080000000800000000000000000000000000000000000000000
          0000008000000000000000000000000000000000FF0000000000000000000000
          0000008000000080000000800000008000000080000000800000008000000080
          0000008000000000000000000000000000000000FF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000FF0000000000000000000000
          00000000000000000000000000000000FF000000FF0000000000000000000000
          00000000000000000000000000000000FF000000000000000000000000000000
          0000000000000000FF000000FF000000FF000000000000000000000000000000
          000000000000000000000000FF000000FF000000000000000000000000000000
          FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF0000000000000000000000000000000000000000000000
          0000000000000000FF000000FF000000FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000FF000000FF0000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C01F0000E7DF0000F3FF0000F9FF0000FCCF0000F9F30000F3FB
          0000E7DD0000C01D0000FFFD0000F9FB0000E3F30000800F0000E3FF0000F9FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000080808000800000008000000080000000800000008000
          0000808080000000000000000000000000000000000000000000000000000000
          0000808080008000000080000000800000008000000080000000800000008000
          0000800000008000000080808000000000000000000000000000000000008080
          8000800000008000000080000000800000008000000080000000800000008000
          0000800000008000000080000000808080000000000000000000000000008000
          0000800000008000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF008000000080000000800000000000000000000000808080008000
          00008000000080000000800000008000000080808000FFFFFF00FFFFFF00FFFF
          FF00800000008000000080000000800000008080800000000000800000008000
          00008000000080000000800000008000000080808000FFFFFF00FFFFFF00FFFF
          FF00800000008000000080000000800000008000000000000000800000008000
          00008000000080000000800000008000000080808000FFFFFF00FFFFFF00FFFF
          FF00800000008000000080000000800000008000000000000000800000008000
          0000800000008000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00800000008000000080000000800000008000000000000000800000008000
          0000800000008000000080000000800000008000000080000000800000008000
          0000800000008000000080000000800000008000000000000000808080008000
          00008000000080000000800000008000000080808000FFFFFF00FFFFFF008080
          8000800000008000000080000000800000008080800000000000000000008000
          000080000000800000008000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00800000008000000080000000800000000000000000000000000000008080
          80008000000080000000800000008000000080808000FFFFFF00FFFFFF008080
          8000800000008000000080000000808080000000000000000000000000000000
          0000808080008000000080000000800000008000000080000000800000008000
          0000800000008000000080808000000000000000000000000000000000000000
          0000000000000000000080808000800000008000000080000000800000008000
          0000808080000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F01F0000C0070000800300008003000000010000000100000001
          00000001000000010000000100008003000080030000C0070000F01F0000FFFF
          0000}
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
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEB
          F8003639C0002127B8008484D400F8F8FC00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF007A7AD1007474C800D5D5F100FFFFFF00FFFFFF00FFFFFF00FFFFFF007272
          CF001844F600194DF8001031D2003031BA00DBDBF500FFFFFF00FEFEFE006C6C
          D2000928D700092ED7000313B3007070D000FFFFFF00FFFFFF00FFFFFF003031
          C1002451F9001F52FF001D4FFF001744E800171DB600C5C5ED006868CE000D2E
          DD001142F9000D3DF5000B3BF000041ABC00A2A2DE00FFFFFF00FFFFFF00BDBD
          EA001832DB00285BFF002456FF002253FF001B4BF1000911B2000F30DD00164A
          FE001344F9001041F6000E3EF6000A3CF0004040B700FFFFFF00FFFFFF00AEAE
          EA001F37DD003A6FFF002C5EFF00295AFF002657FF002052FC001C4FFF00194A
          FD001646FA001445FA000F3DF2001A21B800BCBCE800FFFFFF00FFFFFF00FEFE
          FE009999E900202ACB003D6AFB003567FF002C5DFF002859FF002253FF001D4E
          FF001A4DFF00123DED003436BD00E5E5F800FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E3E3F9004545CA002E4EE7003668FF002E5EFF002859FF002254
          FF00163DEA004141BE00F4F4FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00B2B2EC00253FDF003B6DFF003464FF002E5EFF002759
          FF001B46EA003031BC00F7F7FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF004040D5004B7CFF004170FF003B6BFF00396CFF002D5E
          FF002558FF001336D7006C6CD500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00D3D3F800273DDB005080FF004575FF003662FA000E15C3003C6D
          FF002A5BFF002053FD000D1FC400B8B8ED00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF007474E300527CFA005081FF004B7DFF001F26CD00BDBDED002329
          CC00386AFF002456FF001A4AF2001E22BB00F0F0FB00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF003038E1006A9CFF005788FF002B46E700A3A3ED00FFFFFF00CDCD
          F5001B27CE003065FF001F51FF001439DD006363CF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF006E6EEC003B53E4005782FB003E3EDB00FFFFFF00FFFFFF00FFFF
          FF00B8B8F100192AD700265AFF000F2EE3003132C500FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C3C3F4005B5BD600CFCFF600FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009C9CE8004344CB00B6B6EA00FDFDFE00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000626262000000000062626200000000006262
          6200000000000000000000000000000000000000000000000000000000000000
          0000000000000000000062626200000000000000000000000000000000006262
          6200626262000000000000000000000000000000000000000000000000000000
          0000000000006262620000000000C2C2C200929292000000000000FFFF000000
          0000626262006262620000000000000000000000000000000000000000000000
          0000626262000000000092929200000000000000000000FFFF0000FFFF0000FF
          FF00000000000000000000000000626262000000000000000000000000006262
          6200000000000000000000000000B1FFFF006BFFFF006BFFFF006BFFFF006BFF
          FF006BFFFF000000000092929200000000006262620062626200626262000000
          000000000000B1FFFF00B1FFFF00000000000000000062626200626262006262
          620062626200626262000000000092929200000000000000000000000000D4FF
          FF00D4FFFF00B1FFFF00D4FFFF00565656000000000000000000000000009292
          92009292920092929200929292000E0E0E000000000062626200000000000000
          0000D4FFFF00D4FFFF00D4FFFF00D4FFFF00565656006B8FFF006B8FFF000000
          000000000000D4FFFF00D4FFFF00D4FFFF000000000000000000000000000000
          000000000000D4FFFF00D4FFFF00D4FFFF00565656006B8FFF00565656005656
          56005656560000000000D4FFFF00000000000000000000000000000000000000
          00000000000000000000FFFFFF00D4FFFF00D4FFFF00565656005656560000FF
          FF006B8FFF006B8FFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00D4FFFF005656560056565600B1FF
          FF0000FFFF006B8FFF006B8FFF00000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF0000000000565656006B8F
          FF00B1FFFF0000FFFF003E3E3E006B6BFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005656
          56006B8FFF004A4A4A006B6BFF006B6BFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000565656004A4A4A00AB8EFF0056565600AB8EFF000E0E0E00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005656560056565600FFFFFF00AB8EFF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000056565600565656005656560000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F8BF0000F01F0000E00F0000C00300008000000000000000000000008000
          0000C0010000E0070000F0030000F8010000FD800000FFC00000FFE00000FFF1
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
        MaskColor = clBlack
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000025744558745469746C6500436F70793B426172733B526962626F6E3B
          5374616E646172643B436C6F6E656D0EDF5B000001B649444154785E7D90318B
          53411446CF7DD94D229AC24A2BC1CADE56248D8A76D65A2B6C6721DA0A82D66A
          A1A58DFD7656168B0B36D6AB85827F40566159F3E6CDBD9F929921210B4E3317
          1EE7BC33D724B17E66B3D9E8F9EBBD0F9DD95C18104842180290109053FAF8E4
          C18D6B5B9C3C9DD07CE7CE65A0C9A9F06A7EF1F6F35560B4149899011D6093C9
          647CE1FC1952EAF9B37000A28266DD3F62C47432C2B303582BE89EBDF954B265
          7CF97EC8C1B79F88AE660702CE9D9D72FBE62526E35364DF10483E7F74FFCA7F
          B39FBEDA27E78C24D210EB02CC73418E6BB6B07207C8C474DC2DB3DD45881305
          960747802464566E00A3CC1572050A11454013903C00080C095001010221897E
          88B5026D3E21832042C8A83308812850CE840721E1B1B18361080484B4064351
          14B1BB2384043E6C1464CFE54314A87A304140CB66BADD11802B00B47AC29254
          2D68FF368450D4820876DF1FF0F5C711B93FDA07721330785058519750E02613
          780A1EEE5CBF381E8F7F0103B06802A2EEE0F4740B54F090210588964D4AE9B0
          EFFBDF8D6B02EFD3F1DEBDC7BB73B15AA299AABD088645C906D814A4772FEFDE
          02B601033879A396BD2EF80B61825062DDA3F2C70000000049454E44AE426082}
      end>
  end
  object Client_Routes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 112
    Top = 352
    object Client_Routesid: TAutoIncField
      FieldName = 'id'
    end
    object Client_RoutesDirection_id: TIntegerField
      FieldName = 'Direction_id'
    end
    object Client_RoutesPID: TIntegerField
      FieldName = 'PID'
    end
    object Client_RoutesCode: TStringField
      FieldName = 'Code'
      Size = 6
    end
    object Client_RoutesNewCode: TStringField
      FieldName = 'NewCode'
      Size = 6
    end
    object Client_RoutesName: TStringField
      FieldName = 'Name'
      Size = 200
    end
    object Client_RoutesDistance: TIntegerField
      FieldName = 'Distance'
    end
    object Client_RoutesLandId: TIntegerField
      FieldName = 'LandId'
    end
    object Client_RoutesLandName: TStringField
      FieldName = 'LandName'
      Size = 200
    end
    object Client_RoutesLandABBR: TStringField
      FieldName = 'LandABBR'
      Size = 10
    end
    object Client_RoutesRegionID: TIntegerField
      FieldName = 'RegionID'
    end
    object Client_RoutesRoadId: TIntegerField
      FieldName = 'RoadId'
    end
    object Client_RoutesRoadName: TStringField
      FieldName = 'RoadName'
      Size = 200
    end
    object Client_RoutesRoadABBR: TStringField
      FieldName = 'RoadABBR'
      Size = 10
    end
  end
  object DS_Routes: TDataSource
    DataSet = Client_Routes
    Left = 144
    Top = 352
  end
  object DS_BackRoutes: TDataSource
    DataSet = Client_BackRoutes
    Left = 144
    Top = 400
  end
  object Client_BackRoutes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 112
    Top = 400
    object IntegerField7: TIntegerField
      FieldName = 'Direction_id'
    end
    object IntegerField8: TIntegerField
      FieldName = 'PID'
    end
    object StringField8: TStringField
      FieldName = 'Code'
      Size = 6
    end
    object StringField9: TStringField
      FieldName = 'NewCode'
      Size = 6
    end
    object StringField10: TStringField
      FieldName = 'Name'
      Size = 200
    end
    object IntegerField9: TIntegerField
      FieldName = 'Distance'
    end
    object IntegerField10: TIntegerField
      FieldName = 'LandId'
    end
    object StringField11: TStringField
      FieldName = 'LandName'
      Size = 200
    end
    object StringField12: TStringField
      FieldName = 'LandABBR'
      Size = 10
    end
    object IntegerField11: TIntegerField
      FieldName = 'RegionID'
    end
    object IntegerField12: TIntegerField
      FieldName = 'RoadId'
    end
    object StringField13: TStringField
      FieldName = 'RoadName'
      Size = 200
    end
    object StringField14: TStringField
      FieldName = 'RoadABBR'
      Size = 10
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'id'
    end
  end
  object DS_LandTaxes: TDataSource
    DataSet = Client_LandTaxes
    Left = 144
    Top = 312
  end
  object Client_LandTaxes: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'Client_LandTaxesIndex2'
        Fields = 'id_Result'
      end>
    IndexName = 'Client_LandTaxesIndex2'
    Params = <>
    StoreDefs = True
    Left = 112
    Top = 312
    object Client_LandTaxesid: TIntegerField
      FieldName = 'id'
    end
    object Client_LandTaxesState: TIntegerField
      FieldName = 'State'
    end
    object Client_LandTaxesType: TIntegerField
      FieldName = 'Type'
    end
    object Client_LandTaxesStavka: TCurrencyField
      FieldName = 'Stavka'
    end
    object Client_LandTaxesDescription: TStringField
      FieldName = 'Description'
      Size = 255
    end
    object Client_LandTaxesValue: TCurrencyField
      FieldName = 'Value'
    end
    object Client_LandTaxesABBR: TStringField
      FieldName = 'ABBR'
      Size = 5
    end
    object Client_LandTaxesDocument: TStringField
      FieldName = 'Document'
      Size = 100
    end
    object Client_LandTaxesid_Result: TIntegerField
      FieldName = 'id_Result'
    end
    object Client_LandTaxesid_Taxes: TAutoIncField
      FieldName = 'id_Taxes'
    end
    object Client_LandTaxesCategoryId: TIntegerField
      FieldName = 'CategoryId'
    end
    object Client_LandTaxesVisibleState: TIntegerField
      FieldName = 'VisibleState'
    end
  end
  object Client_Taxes_id: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 408
    object Client_Taxes_idLandId: TIntegerField
      FieldName = 'LandId'
    end
    object Client_Taxes_idTaxesId: TIntegerField
      FieldName = 'TaxesId'
    end
    object Client_Taxes_idAutomatic: TBooleanField
      FieldName = 'Automatic'
    end
    object Client_Taxes_idActive: TBooleanField
      FieldName = 'Active'
    end
    object Client_Taxes_idStavka: TCurrencyField
      FieldName = 'Stavka'
    end
    object Client_Taxes_idParam: TStringField
      FieldName = 'Param'
      Size = 100
    end
    object Client_Taxes_idType: TIntegerField
      FieldName = 'Type'
    end
    object Client_Taxes_idrate: TCurrencyField
      FieldName = 'rate'
    end
  end
  object Client_Stations: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 112
    Top = 448
    object Client_Stationsid: TAutoIncField
      FieldName = 'id'
    end
    object Client_Stationscod: TStringField
      FieldName = 'cod'
      Size = 6
    end
    object Client_Stationsname: TStringField
      FieldName = 'name'
      Size = 255
    end
    object Client_StationsSecondCode: TStringField
      FieldName = 'SecondCode'
      Size = 6
    end
    object Client_StationsActiv: TBooleanField
      FieldName = 'Activ'
    end
  end
  object DS_Stations: TDataSource
    DataSet = Client_Stations
    Left = 144
    Top = 448
  end
  object Client_CargoMulti: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 40
    Top = 176
    object Client_CargoMultiid: TAutoIncField
      FieldName = 'id'
    end
    object Client_CargoMultiEtnCode: TStringField
      FieldName = 'EtnCode'
      Size = 9
    end
    object Client_CargoMultiEtnCaption: TStringField
      FieldName = 'EtnCaption'
      Size = 255
    end
    object Client_CargoMultiGngCode: TStringField
      FieldName = 'GngCode'
      Size = 11
    end
    object Client_CargoMultiGngCaption: TStringField
      FieldName = 'GngCaption'
      Size = 255
    end
    object Client_CargoMultiWeight: TFloatField
      FieldName = 'Weight'
    end
    object Client_CargoMultiIsGuard: TBooleanField
      FieldName = 'IsGuard'
    end
  end
  object Query_Stations: TADOQuery
    Connection = CTMConnect
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
      'SELECT '#9'TOP 100'
      
        'ref_book_xml.value('#39'(/ROW/@NewCode)[1]'#39','#39'varchar(200)'#39') as NewCo' +
        'de,'
      
        'ref_book_xml.value('#39'(/ROW/@NewName)[1]'#39','#39'varchar(200)'#39') as NewNa' +
        'me,'
      
        'ref_book_xml.value('#39'(/ROW/@NewParaT)[1]'#39','#39'varchar(200)'#39') as NewP' +
        'araT,'
      'ref_book_xml.value('#39'(/ROW/@ROAD)[1]'#39','#39'varchar(200)'#39') as ROAD,'
      'ref_book_xml.value('#39'(/ROW/@LAND)[1]'#39','#39'varchar(200)'#39') as LAND,'
      
        'ref_book_xml.value('#39'(/ROW/@FromDate)[1]'#39','#39'varchar(200)'#39') as From' +
        'Date,'
      
        'ref_book_xml.value('#39'(/ROW/@ToDate)[1]'#39','#39'varchar(200)'#39') as ToDate' +
        ','
      
        'ref_book_xml.value('#39'(/ROW/@RoadID)[1]'#39','#39'varchar(200)'#39') as RoadID' +
        ','
      
        'ref_book_xml.value('#39'(/ROW/@LinkCode)[1]'#39','#39'varchar(200)'#39') as Link' +
        'Code,'
      
        'ref_book_xml.value('#39'(/ROW/@LandID)[1]'#39','#39'varchar(200)'#39') as LandID' +
        ','
      'ref_book_xml.value('#39'(/ROW/@PPLand)[1]'#39','#39'varchar(200)'#39') as PPLand'
      'FROM'#9'CTM_REFBOOK2 '
      'WHERE'#9
      'ref_book_name = '#39'stations'#39
      
        'AND :date_from_to between ref_book_xml.value('#39'(/ROW/@FromDate)[1' +
        ']'#39','#39'datetime'#39') and ref_book_xml.value('#39'(/ROW/@ToDate)[1]'#39','#39'datet' +
        'ime'#39')')
    Left = 360
    Top = 112
  end
  object Client_FullRoutes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 680
    Top = 520
    object IntegerField1: TIntegerField
      FieldName = 'Direction_id'
    end
    object IntegerField2: TIntegerField
      FieldName = 'PID'
    end
    object StringField1: TStringField
      FieldName = 'Code'
      Size = 6
    end
    object StringField2: TStringField
      FieldName = 'NewCode'
      Size = 6
    end
    object StringField3: TStringField
      FieldName = 'Name'
      Size = 200
    end
    object IntegerField3: TIntegerField
      FieldName = 'Distance'
    end
    object IntegerField4: TIntegerField
      FieldName = 'LandId'
    end
    object StringField4: TStringField
      FieldName = 'LandName'
      Size = 200
    end
    object StringField5: TStringField
      FieldName = 'LandABBR'
      Size = 10
    end
    object IntegerField5: TIntegerField
      FieldName = 'RegionID'
    end
    object IntegerField6: TIntegerField
      FieldName = 'RoadId'
    end
    object StringField6: TStringField
      FieldName = 'RoadName'
      Size = 200
    end
    object StringField7: TStringField
      FieldName = 'RoadABBR'
      Size = 10
    end
    object Client_FullRoutesNewParaT: TStringField
      FieldName = 'NewParaT'
      Size = 255
    end
    object Client_FullRoutesDP: TStringField
      FieldName = 'DP'
      Size = 255
    end
    object Client_FullRoutesid: TAutoIncField
      FieldName = 'id'
    end
  end
  object DS_FullRoutes: TDataSource
    DataSet = Client_FullRoutes
    Left = 696
    Top = 528
  end
  object cxPropertiesStore2: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width')
      end>
    StorageName = '\Software\LIS1\CtmNewMain'
    StorageType = stRegistry
    Left = 359
    Top = 170
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    Images = cxImageList_16
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
    UseOwnFont = False
    Left = 592
    Top = 280
    PixelsPerInch = 120
  end
  object Client_Account: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 832
    Top = 496
    object Client_AccountPerT: TCurrencyField
      FieldName = 'PerT'
    end
    object Client_AccountBasePrice: TCurrencyField
      FieldName = 'BasePrice'
    end
    object Client_AccountTotalPrice: TCurrencyField
      FieldName = 'TotalPrice'
    end
    object Client_AccountPerTwoNDS: TCurrencyField
      FieldName = 'PerTwoNDS'
    end
    object Client_AccountBasePerT: TCurrencyField
      FieldName = 'BasePerT'
    end
    object Client_Accountinf_obj_cod: TIntegerField
      FieldName = 'inf_obj_cod'
    end
    object Client_AccountWeight: TFloatField
      FieldName = 'Weight'
    end
    object Client_AccountLandId: TIntegerField
      FieldName = 'LandId'
    end
    object Client_AccountLandName: TStringField
      FieldName = 'LandName'
      Size = 60
    end
    object Client_AccountKol_vag: TStringField
      FieldName = 'Kol_vag'
      Size = 12
    end
    object Client_Accountdistance: TIntegerField
      FieldName = 'distance'
    end
    object Client_AccountOwnerID: TIntegerField
      FieldName = 'OwnerID'
    end
    object Client_AccountOwnerName: TStringField
      FieldName = 'OwnerName'
      Size = 50
    end
    object Client_Accountid: TAutoIncField
      FieldName = 'id'
    end
    object Client_AccountTotalPriceWoNDS: TCurrencyField
      FieldName = 'TotalPriceWoNDS'
    end
  end
  object DS_Account: TDataSource
    DataSet = Client_Account
    Left = 840
    Top = 512
  end
  object PopupMenu2: TPopupMenu
    Images = cxImageList_16
    Left = 776
    Top = 456
  end
  object dxBarPopupMenu2: TdxBarPopupMenu
    BarManager = dxBarManager1
    Images = cxImageList_16
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = False
    Left = 672
    Top = 424
    PixelsPerInch = 120
  end
  object dxBarPopupMenu3: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton5'
      end>
    UseOwnFont = False
    Left = 680
    Top = 64
    PixelsPerInch = 120
  end
  object dxBarPopupMenu4: TdxBarPopupMenu
    BarManager = dxBarManager1
    Images = cxImageList_16
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton23'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton6'
      end>
    UseOwnFont = False
    Left = 472
    Top = 672
    PixelsPerInch = 120
  end
  object dxBarPopupMenu5: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton7'
      end>
    UseOwnFont = False
    Left = 824
    Top = 344
    PixelsPerInch = 120
  end
  object dxBarPopupMenu6: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton10'
      end>
    UseOwnFont = False
    Left = 920
    Top = 344
    PixelsPerInch = 120
  end
  object dxBarPopupMenu7: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton13'
      end>
    UseOwnFont = False
    Left = 1008
    Top = 344
    PixelsPerInch = 120
  end
  object dxBarPopupMenu8: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton16'
      end>
    UseOwnFont = False
    Left = 1096
    Top = 344
    PixelsPerInch = 120
  end
  object dxBarPopupMenu9: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton19'
      end>
    UseOwnFont = False
    Left = 968
    Top = 400
    PixelsPerInch = 120
  end
  object ClientDS_AltRoute: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 8
    Top = 176
    object ClientDS_AltRouteid: TIntegerField
      FieldName = 'id'
    end
    object ClientDS_AltRouteCaption: TStringField
      FieldName = 'Caption'
      Size = 200
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfOffice11
    NativeStyle = False
    ScrollbarMode = sbmClassic
    ScrollMode = scmClassic
    SkinName = 'Caramel'
    RenderMode = rmGDIPlus
    Left = 560
    Top = 200
  end
  object dxSkinController1: TdxSkinController
    Kind = lfOffice11
    NativeStyle = False
    ScrollbarMode = sbmClassic
    ScrollMode = scmClassic
    SkinName = 'Caramel'
    RenderMode = rmGDIPlus
    UseSkins = False
    Left = 608
    Top = 200
  end
  object Client_MainTree: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 616
    object Client_MainTreeid: TAutoIncField
      FieldName = 'id'
    end
    object Client_MainTreeparent_id: TIntegerField
      FieldName = 'parent_id'
    end
    object Client_MainTreenode_name: TStringField
      FieldName = 'node_name'
      Size = 200
    end
    object Client_MainTreenode_value: TStringField
      FieldName = 'node_value'
      Size = 200
    end
    object Client_MainTreenode_cod: TStringField
      FieldName = 'node_cod'
    end
    object Client_MainTreenode_image_id: TIntegerField
      FieldName = 'node_image_id'
    end
    object Client_MainTreenode_tag: TIntegerField
      FieldName = 'node_tag'
    end
  end
  object DS_MainTree: TDataSource
    DataSet = Client_MainTree
    Left = 96
    Top = 616
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    DrawingStyle = dsTransparent
    FormatVersion = 1
    DesignInfo = 525272
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000FF000000FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000FFC6C3C6FFC6C3C6FF000000FF000000FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000FFC6C3C6FFC6C3C6FFC6C3C6FFC6C3C6FF000000FF0000
          00FF000000000000000000000000000000000000000000000000000000000000
          0000000000FFC6C3C6FFC6C3C6FFC6C3C6FFC6C3C6FFC6C3C6FFFFFFFFFFFFFF
          FFFF000000FF000000FF00000000000000000000000000000000000000000000
          0000000000FFC6C3C6FF000000FFC6C3C6FFC6C3C6FFC6C3C6FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FF000000FF0000000000000000000000000000
          00FFC6C3C6FF000000FFC6C3C6FF000000FFC6C3C6FFC6C3C6FFFFFFFFFF8482
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00000000000000000000
          00FF848284FF000000FFC6C3C6FF000000FFC6C3C6FFFFFFFFFFFFFFFFFFFFFF
          FFFF848284FF848284FFFFFFFFFFFFFFFFFF000000FF00000000000000FFC6C3
          C6FF848284FF000000FFC6C3C6FF848284FFC6C3C6FFFFFFFFFF848284FFFFFF
          FFFFFFFFFFFFFFFFFFFFC6C3C6FF000000FF0000000000000000000000FFC6C3
          C6FFC6C3C6FF848284FF000000FFC6C3C6FFFFFFFFFFFFFFFFFFFFFFFFFF8482
          84FF848284FFFFFFFFFFFFFFFFFF000000FF0000000000000000000000000000
          00FF000000FFC6C3C6FFC6C3C6FFC6C3C6FFFFFFFFFF840000FFFFFFFFFFFFFF
          FFFFFFFFFFFFC6C3C6FF000000FF000000000000000000000000000000000000
          000000000000000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF840000FF8400
          00FFFFFFFFFFFFFFFFFF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000FF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFC6C3C6FF000000FF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000FF000000FFFFFF
          FFFFFFFFFFFF000000FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF000000FF00000000000000FF000000FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF008284FF000000FFFFFFFFFFFFFFFFFF000000FF000000FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF008284FF848284FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF000000FF0000
          00FF000000000000000000000000000000000000000000000000000000000000
          00FF848284FFFFFFFFFF00FFFFFFC6C3C6FF00FFFFFFFFFFFFFF00FFFFFFFFFF
          FFFF000000FF000000FF00000000000000000000000000000000000000FF0082
          84FF848284FF00FFFFFFFFFFFFFF00FFFFFF848284FF848284FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FF000000FF0000000000000000000000FF8482
          84FF00FFFFFFFFFFFFFFC6C3C6FF848284FF00FFFFFFFFFFFFFF848284FF8482
          84FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00000000000000FF8482
          84FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF848284FF848284FFFFFFFFFFFFFF
          FFFF848284FFC6C3C6FF00FFFFFF000000FF0000000000000000000000FFFFFF
          FFFF00FFFFFFFFFFFFFF848284FF848284FF00FFFFFFFFFFFFFF848284FF8482
          84FF00FFFFFFFFFFFFFF000000FF000000000000000000000000000000FF00FF
          FFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF848284FF848284FFFFFFFFFF00FF
          FFFFC6C3C6FF00FFFFFF000000FF000000000000000000000000000000FF0000
          00FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF848284FF8482
          84FF00FFFFFF000000FF00000000000000000000000000000000000000000000
          0000000000FF000000FFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FF
          FFFFFFFFFFFF000000FF00000000000000000000000000000000000000000000
          00000000000000000000000000FF000000FF00FFFFFFFFFFFFFF00FFFFFFFFFF
          FFFF000000FF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000FF000000FFFFFFFFFF00FF
          FFFF000000FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FF0000
          00FF000000000000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000000000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000FF000000000000000000000000000000000000
          0000000000FF00000000000000FF000000FF0000000000000000000000000000
          00FF000000FF00000000000000FF000000000000000000000000000000000000
          0000000000FF0000000000000000000000FF000000FF00000000000000FF0000
          00FF0000000000000000000000FF000000000000000000000000000000000000
          0000000000FF000000000000000000000000000000FF000000FF000000FF0000
          00000000000000000000000000FF000000000000000000000000000000000000
          0000000000FF000000000000000000000000000000FF000000FF000000FF0000
          00000000000000000000000000FF000000000000000000000000000000000000
          0000000000FF0000000000000000000000FF000000FF00000000000000FF0000
          00FF0000000000000000000000FF000000000000000000000000000000000000
          0000000000FF00000000000000FF000000FF0000000000000000000000000000
          00FF000000FF00000000000000FF000000000000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000FF000000000000000000000000000000000000
          0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000000000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000FF000000000000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000FF000000000000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000FF000000000000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000FF000000000000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000FF000000000000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000FF000000000000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000FF000000000000000000000000000000000000
          0000000000FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000FF000000000000000000000000000000000000
          0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object Client_DopParam: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 248
    object Client_DopParamparam_name: TStringField
      FieldName = 'param_name'
      Size = 300
    end
    object Client_DopParamparam_desc: TStringField
      FieldName = 'param_desc'
      Size = 500
    end
    object Client_DopParamparam_type: TIntegerField
      FieldName = 'param_type'
    end
    object Client_DopParamparam_val: TBooleanField
      FieldName = 'param_val'
    end
  end
  object Client_KIT: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 112
    Top = 508
    object Client_KITKIT: TStringField
      FieldName = 'KIT'
    end
    object Client_KITCaption: TStringField
      FieldName = 'Caption'
      Size = 500
    end
    object Client_KITFromDate: TDateTimeField
      FieldName = 'FromDate'
    end
    object Client_KITToDate: TDateTimeField
      FieldName = 'ToDate'
    end
    object Client_KITDocument: TStringField
      FieldName = 'Document'
      Size = 500
    end
    object Client_KITKITNum: TStringField
      FieldName = 'KITNum'
      Size = 50
    end
  end
end
