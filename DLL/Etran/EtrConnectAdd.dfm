object fmEtrConnectAdd: TfmEtrConnectAdd
  Left = 0
  Top = 0
  Caption = #1057#1086#1077#1076#1080#1085#1077#1085#1080#1077
  ClientHeight = 404
  ClientWidth = 385
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 366
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 100
      Height = 15
      AutoSize = False
      Caption = ' '#1069#1058#1056#1040#1053' '
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 124
      Width = 100
      Height = 15
      AutoSize = False
      Caption = ' '#1057#1077#1088#1074#1077#1088' '#1041#1044' '
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 240
      Width = 100
      Height = 15
      AutoSize = False
      Caption = ' '#1047#1072#1076#1072#1095#1072' '
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object cxLabel1: TcxLabel
      Left = 24
      Top = 259
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077'................................................'
    end
    object cxLabel2: TcxLabel
      Left = 24
      Top = 27
      Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'................................................'
    end
    object cxLabel3: TcxLabel
      Left = 24
      Top = 51
      Caption = #1055#1072#1088#1086#1083#1100'................................................'
    end
    object cxLabel6: TcxLabel
      Left = 24
      Top = 143
      Caption = #1057#1077#1088#1074#1077#1088'............................'
    end
    object cxLabel4: TcxLabel
      Left = 24
      Top = 167
      Caption = #1041#1072#1079#1072'..............................'
    end
    object cxTextEdit1: TcxTextEdit
      Left = 146
      Top = 258
      Style.Shadow = True
      TabOrder = 14
      Width = 226
    end
    object cxTextEdit2: TcxTextEdit
      Left = 146
      Top = 26
      Style.Shadow = True
      TabOrder = 0
      Width = 226
    end
    object cxTextEdit3: TcxTextEdit
      Left = 146
      Top = 50
      Style.Shadow = True
      TabOrder = 2
      Width = 226
    end
    object cxTextEdit5: TcxTextEdit
      Left = 146
      Top = 142
      Style.Shadow = True
      TabOrder = 6
      Width = 226
    end
    object cxTextEdit6: TcxTextEdit
      Left = 146
      Top = 166
      Style.Shadow = True
      TabOrder = 8
      Width = 226
    end
    object cxLabel5: TcxLabel
      Left = 24
      Top = 75
      Caption = 'IP '#1072#1076#1088#1077#1089'................................................'
    end
    object cxTextEdit4: TcxTextEdit
      Left = 146
      Top = 74
      Style.Shadow = True
      TabOrder = 4
      Width = 226
    end
    object cxLabel7: TcxLabel
      Left = 24
      Top = 191
      Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'.................'
    end
    object cxTextEdit7: TcxTextEdit
      Left = 146
      Top = 190
      Style.Shadow = True
      TabOrder = 10
      Width = 226
    end
    object cxLabel8: TcxLabel
      Left = 24
      Top = 215
      Caption = #1055#1072#1088#1086#1083#1100'........................................'
    end
    object cxTextEdit8: TcxTextEdit
      Left = 146
      Top = 214
      Style.Shadow = True
      TabOrder = 11
      Width = 226
    end
    object cxLabel9: TcxLabel
      Left = 24
      Top = 284
      Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1079#1072#1075#1088#1091#1079#1082#1080'............'
    end
    object cxLabel10: TcxLabel
      Left = 24
      Top = 308
      Caption = #1048#1085#1090#1077#1088#1074#1072#1083' ('#1084#1080#1085'.).........................'
    end
    object cxTextEdit10: TcxTextEdit
      Left = 146
      Top = 307
      Style.Shadow = True
      TabOrder = 18
      Width = 226
    end
    object cxLabel11: TcxLabel
      Left = 24
      Top = 334
      Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072'.....................................'
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 146
      Top = 331
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'doc_type_id'
      Properties.ListColumns = <
        item
          FieldName = 'doc_type_name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_DocType
      Properties.ReadOnly = False
      Style.Shadow = True
      TabOrder = 20
      Width = 226
    end
    object cxDateEdit1: TcxDateEdit
      Left = 147
      Top = 283
      Properties.Kind = ckDateTime
      Style.Shadow = True
      TabOrder = 16
      Width = 225
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 366
    Width = 385
    Height = 38
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 190
      Top = 6
      Width = 90
      Height = 25
      Caption = 'OK'
      Default = True
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
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 286
      Top = 6
      Width = 90
      Height = 25
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
  object DS_DocType: TDataSource
    DataSet = Q_DocType
    Left = 296
    Top = 304
  end
  object Q_DocType: TADOQuery
    Connection = fmEtrMonitor.LisEtran_Connect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM etran_doc_type')
    Left = 328
    Top = 304
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
    StorageName = '\Software\Lis1\EtrConnectAdd'
    StorageType = stRegistry
    Left = 165
    Top = 77
  end
end