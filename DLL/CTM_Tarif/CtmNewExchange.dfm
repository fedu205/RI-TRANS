object fmCtmNewExchange: TfmCtmNewExchange
  Left = 0
  Top = 0
  Caption = #1050#1091#1088#1089#1099' '#1074#1072#1083#1102#1090
  ClientHeight = 471
  ClientWidth = 537
  Color = clBtnFace
  Constraints.MinHeight = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 33
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ColumnCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 130.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 80.000000000000000000
      end
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 80.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 80.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 4
        Control = cxButton2
        Row = 0
      end
      item
        Column = 3
        Control = cxButton1
        Row = 0
      end
      item
        Column = 0
        Control = cxLabel19
        Row = 0
      end
      item
        Column = 1
        Control = cxLabel1
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 0
    DesignSize = (
      537
      33)
    object cxButton2: TcxButton
      Left = 457
      Top = 7
      Width = 75
      Height = 18
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = #1048#1079' '#1092#1072#1081#1083#1072
      TabOrder = 0
    end
    object cxButton1: TcxButton
      Left = 377
      Top = 7
      Width = 75
      Height = 18
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = #1057' '#1089#1072#1081#1090#1072' '#1057#1058#1052
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxLabel19: TcxLabel
      Left = 13
      Top = 8
      Anchors = [akRight]
      Caption = #1050#1091#1088#1089#1099' '#1074#1072#1083#1102#1090' '#1085#1072' '#1076#1072#1090#1091':'
      ExplicitLeft = 11
      ExplicitTop = 6
    end
    object cxLabel1: TcxLabel
      Left = 132
      Top = 8
      Anchors = [akLeft]
      Caption = '17.01.2008'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      ExplicitTop = 6
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 537
    Height = 417
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 2
      Top = 287
      Width = 266
      Height = 69
      Caption = #1050#1080#1088#1075#1080#1079#1080#1103
      TabOrder = 0
      object cxCurrencyEdit14: TcxCurrencyEdit
        Left = 185
        Top = 14
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 0
        Width = 71
      end
      object cxCurrencyEdit15: TcxCurrencyEdit
        Left = 185
        Top = 39
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 1
        Width = 71
      end
      object cxLabel15: TcxLabel
        Left = 15
        Top = 15
        Caption = #1050#1091#1088#1089' '#1076#1086#1083#1083#1072#1088#1072' '#1057#1064#1040' '#1082' '#1089#1086#1084#1091
      end
      object cxLabel16: TcxLabel
        Left = 15
        Top = 40
        Caption = #1050#1091#1088#1089' '#1064#1074'. '#1092#1088#1072#1085#1082#1072' '#1082' '#1089#1086#1084#1091
      end
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 356
      Width = 266
      Height = 45
      Caption = #1059#1079#1073#1077#1082#1080#1089#1090#1072#1085
      TabOrder = 1
      object cxCurrencyEdit16: TcxCurrencyEdit
        Left = 185
        Top = 14
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 0
        Width = 71
      end
      object cxLabel17: TcxLabel
        Left = 15
        Top = 16
        Caption = #1050#1091#1088#1089' '#1064#1074'. '#1092#1088#1072#1085#1082#1072' '#1082' '#1089#1091#1084#1091
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 0
      Caption = ' '#1056#1086#1089#1089#1080#1103
      Style.BorderStyle = ebs3D
      TabOrder = 2
      Height = 96
      Width = 266
      object cxLabel2: TcxLabel
        Left = 15
        Top = 20
        Caption = #1050#1091#1088#1089' '#1088#1091#1073#1083#1103' '#1082' '#1076#1086#1083#1083#1072#1088#1091' '#1057#1064#1040
      end
      object cxLabel3: TcxLabel
        Left = 15
        Top = 44
        Caption = #1050#1091#1088#1089' '#1088#1091#1073#1083#1103' '#1082' '#1096#1092'. '#1092#1088#1072#1085#1082#1091
      end
      object cxLabel4: TcxLabel
        Left = 15
        Top = 68
        Caption = #1050#1091#1088#1089' '#1088#1091#1073#1083#1103' '#1082' '#1045#1042#1056#1054
      end
      object cxCurrencyEdit1: TcxCurrencyEdit
        Left = 185
        Top = 19
        ParentFont = False
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.Shadow = False
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 71
      end
      object cxCurrencyEdit2: TcxCurrencyEdit
        Left = 185
        Top = 43
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 4
        Width = 71
      end
      object cxCurrencyEdit3: TcxCurrencyEdit
        Left = 185
        Top = 67
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 5
        Width = 71
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 2
      Top = 96
      Caption = ' '#1050#1072#1079#1072#1093#1089#1090#1072#1085
      Style.BorderStyle = ebs3D
      TabOrder = 3
      Height = 119
      Width = 266
      object cxLabel11: TcxLabel
        Left = 15
        Top = 13
        Caption = #1050#1091#1088#1089' '#1076#1086#1083#1083#1072#1088#1072' '#1057#1064#1040' '#1082' '#1090#1077#1085#1075#1077
      end
      object cxLabel12: TcxLabel
        Left = 15
        Top = 36
        Caption = #1050#1091#1088#1089' '#1064#1074'. '#1092#1088#1072#1085#1082#1091' '#1082' '#1090#1077#1085#1075#1077'  '
      end
      object cxCurrencyEdit10: TcxCurrencyEdit
        Left = 185
        Top = 10
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 2
        Width = 71
      end
      object cxCurrencyEdit11: TcxCurrencyEdit
        Left = 185
        Top = 34
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 3
        Width = 71
      end
      object cxLabel23: TcxLabel
        Left = 15
        Top = 61
        Caption = #1050#1091#1088#1089' '#1088#1091#1073#1083#1103' '#1082' '#1090#1077#1085#1075#1077'  '
      end
      object cxCurrencyEdit21: TcxCurrencyEdit
        Left = 185
        Top = 59
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 5
        Width = 71
      end
      object cxCurrencyEdit22: TcxCurrencyEdit
        Left = 185
        Top = 84
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 6
        Width = 71
      end
      object cxLabel24: TcxLabel
        Left = 15
        Top = 86
        Caption = #1050#1091#1088#1089' '#1045#1042#1056#1054' '#1082' '#1090#1077#1085#1075#1077'  '
      end
    end
    object cxGroupBox5: TcxGroupBox
      Left = 2
      Top = 220
      Caption = ' '#1041#1077#1083#1086#1088#1091#1089#1089#1080#1103
      Style.BorderStyle = ebs3D
      TabOrder = 4
      Height = 67
      Width = 266
      object cxLabel13: TcxLabel
        Left = 15
        Top = 17
        Caption = #1050#1091#1088#1089' '#1073#1077#1083'. '#1088#1091#1073#1083#1103' '#1082' '#1076#1086#1083#1083#1072#1088#1091' '#1057#1064#1040
      end
      object cxCurrencyEdit12: TcxCurrencyEdit
        Left = 185
        Top = 14
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 1
        Width = 71
      end
      object cxLabel14: TcxLabel
        Left = 15
        Top = 39
        Caption = #1050#1091#1088#1089' '#1073#1077#1083'. '#1088#1091#1073#1083#1103' '#1082' '#1088#1091#1089'. '#1088#1091#1073#1083#1102
      end
      object cxCurrencyEdit13: TcxCurrencyEdit
        Left = 185
        Top = 38
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 3
        Width = 71
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 268
      Top = 0
      Caption = ' '#1055#1088#1080#1073#1072#1083#1090#1080#1082#1072
      Style.BorderStyle = ebs3D
      TabOrder = 5
      Height = 96
      Width = 268
      object cxLabel5: TcxLabel
        Left = 15
        Top = 20
        Caption = #1050#1091#1088#1089' '#1101#1089#1090#1086#1085#1089#1082#1086#1081' '#1082#1088#1086#1085#1099' '#1082' '#1076#1086#1083#1083#1072#1088#1091
      end
      object cxLabel6: TcxLabel
        Left = 15
        Top = 44
        Caption = #1050#1091#1088#1089' '#1045#1042#1056#1054' '#1082' '#1076#1086#1083#1083#1072#1088#1091' '#1057#1064#1040
      end
      object cxLabel7: TcxLabel
        Left = 15
        Top = 68
        Caption = #1050#1091#1088#1089' '#1083#1072#1090#1074'. '#1083#1072#1090#1072' '#1082' '#1076#1086#1083#1083#1072#1088#1091' '#1057#1064#1040
      end
      object cxCurrencyEdit4: TcxCurrencyEdit
        Left = 190
        Top = 19
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 3
        Width = 71
      end
      object cxCurrencyEdit5: TcxCurrencyEdit
        Left = 190
        Top = 43
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 4
        Width = 71
      end
      object cxCurrencyEdit6: TcxCurrencyEdit
        Left = 190
        Top = 67
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 5
        Width = 71
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 268
      Top = 97
      Caption = ' '#1059#1082#1088#1072#1080#1085#1072
      Style.BorderStyle = ebs3D
      TabOrder = 6
      Height = 98
      Width = 268
      object cxLabel8: TcxLabel
        Left = 15
        Top = 20
        Caption = #1050#1091#1088#1089' '#1076#1086#1083#1083#1072#1088#1072' '#1057#1064#1040' '#1082' '#1075#1088#1080#1074#1085#1077
      end
      object cxCurrencyEdit7: TcxCurrencyEdit
        Left = 190
        Top = 19
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 1
        Width = 71
      end
      object cxCurrencyEdit8: TcxCurrencyEdit
        Left = 190
        Top = 43
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 2
        Width = 71
      end
      object cxLabel9: TcxLabel
        Left = 15
        Top = 44
        Caption = #1050#1091#1088#1089' '#1088#1091#1073#1083#1103' '#1082' '#1075#1088#1080#1074#1085#1077
      end
      object cxLabel10: TcxLabel
        Left = 15
        Top = 68
        Caption = #1050#1091#1088#1089' '#1045#1042#1056#1054' '#1082' '#1075#1088#1080#1074#1085#1077
      end
      object cxCurrencyEdit9: TcxCurrencyEdit
        Left = 190
        Top = 68
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 5
        Width = 71
      end
    end
    object cxGroupBox6: TcxGroupBox
      Left = 268
      Top = 195
      Caption = #1052#1086#1083#1076#1086#1074#1072
      Style.BorderStyle = ebs3D
      TabOrder = 7
      Height = 137
      Width = 268
      object cxLabel18: TcxLabel
        Left = 15
        Top = 20
        Caption = #1050#1091#1088#1089' '#1076#1086#1083#1083#1072#1088#1072' '#1057#1064#1040' '#1082' '#1083#1077#1102
      end
      object cxCurrencyEdit17: TcxCurrencyEdit
        Left = 190
        Top = 19
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 1
        Width = 71
      end
      object cxCurrencyEdit18: TcxCurrencyEdit
        Left = 190
        Top = 43
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 2
        Width = 71
      end
      object cxLabel20: TcxLabel
        Left = 15
        Top = 44
        Caption = #1050#1091#1088#1089' '#1064#1074'. '#1092#1088#1072#1085#1082#1072' '#1082' '#1083#1077#1102
      end
      object cxLabel21: TcxLabel
        Left = 15
        Top = 68
        Caption = #1050#1091#1088#1089' '#1045#1042#1056#1054' '#1082' '#1083#1077#1102
      end
      object cxCurrencyEdit19: TcxCurrencyEdit
        Left = 190
        Top = 68
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 5
        Width = 71
      end
      object cxLabel22: TcxLabel
        Left = 15
        Top = 94
        Caption = #1050#1091#1088#1089' '#1056#1086#1089'. '#1088#1091#1073#1083#1103' '#1082' '#1083#1077#1102
      end
      object cxCurrencyEdit20: TcxCurrencyEdit
        Left = 190
        Top = 93
        Properties.DecimalPlaces = 10
        Properties.DisplayFormat = ',0.00########;-,0.00########'#39
        Style.Shadow = False
        TabOrder = 7
        Width = 71
      end
    end
  end
  object Panel18: TPanel
    Left = 0
    Top = 434
    Width = 537
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    ExplicitTop = 450
    DesignSize = (
      537
      37)
    object BitBtn_Ok: TBitBtn
      Left = 375
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
      Left = 456
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
    StorageName = '\Software\LIS1\CtmExchange'
    StorageType = stRegistry
    Left = 264
    Top = 20
  end
end
