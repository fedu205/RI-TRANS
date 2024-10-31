object fmCtmNewOption: TfmCtmNewOption
  Left = 0
  Top = 0
  Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
  ClientHeight = 278
  ClientWidth = 564
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
  object GridPanel2: TGridPanel
    Left = 0
    Top = 241
    Width = 564
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 87.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 65.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 87.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 1
        Control = BitBtn1
        Row = 1
      end
      item
        Column = 3
        Control = BitBtn2
        Row = 1
      end>
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 4.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 25.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 4.000000000000000000
      end>
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 162
      Top = 6
      Width = 87
      Height = 25
      Align = alClient
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 314
      Top = 6
      Width = 87
      Height = 25
      Align = alClient
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 564
    Height = 241
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object cxLabel7: TcxLabel
      Left = 15
      Top = 6
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
    end
    object cxLabel8: TcxLabel
      Left = 96
      Top = 6
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077
    end
    object cxLabel9: TcxLabel
      Left = 162
      Top = 6
      AutoSize = False
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077
      Properties.Alignment.Horz = taCenter
      Height = 17
      Width = 96
      AnchorX = 210
    end
    object cxLabel1: TcxLabel
      Left = 162
      Top = 31
      Caption = #1042#1086#1079#1074#1088#1072#1090' '#1087#1086#1088#1086#1078#1085#1080#1093' '#1074#1072#1075#1086#1085#1086#1074'/'#1082#1086#1085#1090#1077#1081#1085#1077#1088#1086#1074
    end
    object cxCheckBox2: TcxCheckBox
      Left = 82
      Top = 27
      Enabled = False
      Properties.Alignment = taCenter
      StyleDisabled.BorderColor = clBtnFace
      StyleDisabled.TextColor = clBtnText
      TabOrder = 4
      Width = 80
    end
    object cxCheckBox1: TcxCheckBox
      Left = 2
      Top = 27
      Properties.Alignment = taCenter
      Properties.OnEditValueChanged = cxCheckBox1PropertiesEditValueChanged
      TabOrder = 5
      Width = 80
    end
    object cxCheckBox9: TcxCheckBox
      Left = 2
      Top = 52
      Properties.Alignment = taCenter
      Properties.OnEditValueChanged = cxCheckBox9PropertiesEditValueChanged
      TabOrder = 6
      Width = 80
    end
    object cxCheckBox10: TcxCheckBox
      Left = 82
      Top = 52
      Enabled = False
      Properties.Alignment = taCenter
      StyleDisabled.TextColor = clBtnText
      TabOrder = 7
      Width = 80
    end
    object cxCheckBox5: TcxCheckBox
      Left = 2
      Top = 77
      Properties.Alignment = taCenter
      Properties.OnEditValueChanged = cxCheckBox5PropertiesEditValueChanged
      TabOrder = 8
      Width = 80
    end
    object cxCheckBox6: TcxCheckBox
      Left = 82
      Top = 77
      Enabled = False
      Properties.Alignment = taCenter
      StyleDisabled.TextColor = clBtnText
      TabOrder = 9
      Width = 80
    end
    object cxCheckBox3: TcxCheckBox
      Left = 2
      Top = 102
      Properties.Alignment = taCenter
      Properties.OnEditValueChanged = cxCheckBox3PropertiesEditValueChanged
      TabOrder = 10
      Width = 80
    end
    object cxCheckBox4: TcxCheckBox
      Left = 82
      Top = 102
      Hint = 
        #1050#1091#1088#1089#1080#1088#1086#1074#1072#1085#1080#1077' '#1055#1057' '#1085#1072' '#1087#1088#1072#1074#1072#1093' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1079#1072' '#1087#1088#1077#1076#1077#1083#1072#1084#1080' '#1078'.'#1076'. '#1089#1086#1073#1089#1090#1074#1077 +
        #1085#1085#1080#1094#1099'  '
      Enabled = False
      ParentShowHint = False
      Properties.Alignment = taCenter
      ShowHint = True
      StyleDisabled.TextColor = clBtnText
      TabOrder = 11
      Width = 80
    end
    object cxCheckBox7: TcxCheckBox
      Left = 2
      Top = 127
      Properties.Alignment = taCenter
      Properties.OnEditValueChanged = cxCheckBox7PropertiesEditValueChanged
      TabOrder = 12
      Width = 80
    end
    object cxCheckBox8: TcxCheckBox
      Left = 82
      Top = 127
      Enabled = False
      Properties.Alignment = taCenter
      StyleDisabled.TextColor = clBtnText
      TabOrder = 13
      Width = 80
    end
    object cxCheckBox11: TcxCheckBox
      Left = 2
      Top = 152
      Properties.Alignment = taCenter
      Properties.OnEditValueChanged = cxCheckBox11PropertiesEditValueChanged
      TabOrder = 14
      Width = 80
    end
    object cxCheckBox12: TcxCheckBox
      Left = 82
      Top = 152
      Enabled = False
      Properties.Alignment = taCenter
      StyleDisabled.TextColor = clBtnText
      TabOrder = 15
      Width = 80
    end
    object cxCheckBox13: TcxCheckBox
      Left = 2
      Top = 177
      Properties.Alignment = taCenter
      Properties.OnEditValueChanged = cxCheckBox13PropertiesEditValueChanged
      TabOrder = 16
      Width = 80
    end
    object cxCheckBox14: TcxCheckBox
      Left = 82
      Top = 177
      Enabled = False
      Properties.Alignment = taCenter
      StyleDisabled.TextColor = clBtnText
      TabOrder = 17
      Width = 80
    end
    object cxCheckBox15: TcxCheckBox
      Left = 2
      Top = 202
      Enabled = False
      Properties.Alignment = taCenter
      TabOrder = 18
      Width = 80
    end
    object cxCheckBox16: TcxCheckBox
      Left = 82
      Top = 202
      Enabled = False
      Properties.Alignment = taCenter
      StyleDisabled.TextColor = clBtnText
      TabOrder = 19
      Width = 80
    end
    object cxLabel4: TcxLabel
      Left = 162
      Top = 156
      Caption = #1055#1086#1076' '#1090#1072#1084#1086#1078#1077#1085#1085#1099#1084' '#1082#1086#1085#1090#1088#1086#1083#1077#1084
    end
    object cxLabel6: TcxLabel
      Left = 162
      Top = 131
      Caption = #1044#1086#1087'. '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
    end
    object cxLabel5: TcxLabel
      Left = 162
      Top = 106
      Caption = 
        #1050#1091#1088#1089#1080#1088#1086#1074#1072#1085#1080#1077' '#1055#1057' '#1085#1072' '#1087#1088#1072#1074#1072#1093' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1079#1072' '#1087#1088#1077#1076#1077#1083#1072#1084#1080' '#1078'.'#1076'. '#1089#1086#1073#1089#1090#1074#1077 +
        #1085#1085#1080#1094#1099'  '
    end
    object cxLabel2: TcxLabel
      Left = 162
      Top = 81
      Caption = #1042#1086#1080#1085#1089#1082#1080#1077' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
    end
    object cxLabel3: TcxLabel
      Left = 162
      Top = 56
      Caption = #1041#1077#1079' '#1089#1086#1087#1088#1086#1074#1086#1078#1076#1077#1085#1080#1103
    end
    object cxLabel10: TcxLabel
      Left = 162
      Top = 181
      Caption = #1048#1079'-'#1087#1086#1076' '#1086#1087#1072#1089#1085#1086#1075#1086' '#1075#1088#1091#1079#1072' '#1073#1077#1079' '#1086#1095#1080#1089#1090#1082#1080' '#1080' '#1087#1088#1086#1084#1099#1074#1082#1080
    end
  end
end
