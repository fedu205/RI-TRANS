object fmCtmNewOtpr: TfmCtmNewOtpr
  Left = 0
  Top = 0
  Caption = #1042#1080#1076' '#1086#1090#1087#1088#1072#1074#1082#1080
  ClientHeight = 463
  ClientWidth = 622
  Color = clBtnFace
  Constraints.MinHeight = 490
  Constraints.MinWidth = 630
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
    Top = 360
    Width = 622
    Height = 33
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object cxCheckBox1: TcxCheckBox
      Left = 2
      Top = 2
      Align = alLeft
      Caption = #1043#1088#1091#1087#1087#1086#1074#1072#1103' '#1086#1090#1087#1088#1072#1074#1082#1072
      Properties.Alignment = taLeftJustify
      Style.BorderStyle = ebsUltraFlat
      Style.LookAndFeel.Kind = lfOffice11
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 393
    Width = 622
    Height = 33
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitLeft = -18
    object cxLabel1: TcxLabel
      Left = 7
      Top = 9
      Caption = #1055#1077#1088#1077#1074#1086#1079#1082#1072'.................'
    end
    object cxLookupComboBox1: TcxLookupComboBox
      AlignWithMargins = True
      Left = 128
      Top = 5
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          Caption = #1055#1077#1088#1077#1074#1086#1079#1082#1072
          FieldName = 'Caption'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_ExRtType
      Properties.MaxLength = 0
      EditValue = '0'
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
      Width = 488
    end
  end
  object cxDBTreeList1: TcxDBTreeList
    Left = 0
    Top = 0
    Width = 622
    Height = 360
    Align = alClient
    Bands = <
      item
      end>
    DataController.DataSource = DS_Otpr
    DataController.ParentField = 'OTPRID'
    DataController.KeyField = 'OTPRID'
    Navigator.Buttons.CustomButtons = <>
    OptionsData.Editing = False
    OptionsData.Deleting = False
    OptionsView.Headers = False
    RootValue = -1
    TabOrder = 2
    OnCustomDrawDataCell = cxDBTreeList1CustomDrawDataCell
    OnDblClick = BitBtn_OkClick
    object cxDBTreeList1OTPRN: TcxDBTreeListColumn
      DataBinding.FieldName = 'OTPRN'
      Width = 156
      Position.ColIndex = -1
      Position.RowIndex = -1
      Position.BandIndex = -1
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1SendN: TcxDBTreeListColumn
      DataBinding.FieldName = 'SendN'
      Width = 600
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1OTPRID: TcxDBTreeListColumn
      DataBinding.FieldName = 'OTPRID'
      Width = 100
      Position.ColIndex = -1
      Position.RowIndex = -1
      Position.BandIndex = -1
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1SendID: TcxDBTreeListColumn
      DataBinding.FieldName = 'SendID'
      Width = 100
      Position.ColIndex = -1
      Position.RowIndex = -1
      Position.BandIndex = -1
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object Panel18: TPanel
    Left = 0
    Top = 426
    Width = 622
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      622
      37)
    object BitBtn_Ok: TBitBtn
      Left = 460
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
      Left = 541
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
  object Client_ExRtType: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 272
    Top = 280
    object Client_ExRtTypeCaption: TStringField
      FieldName = 'Caption'
      Size = 255
    end
    object Client_ExRtTypeid: TIntegerField
      FieldName = 'id'
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
    StorageName = '\Software\LIS1\CtmOtpr'
    StorageType = stRegistry
    Left = 176
    Top = 24
  end
  object Query_Otpr: TADOQuery
    Connection = fmCtmNewMain.CTMConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'date_from_to2'
        Size = -1
        Value = Null
      end
      item
        Name = 'date_from_to1'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT '#9'DISTINCT ref_book_xml.value('#39'(/ROW/@OTPRN)[1]'#39','#39'varchar(' +
        '200)'#39') as OTPRN,'
      
        #9#9'ref_book_xml.value('#39'(/ROW/@OTPRN)[1]'#39','#39'varchar(200)'#39')  as Send' +
        'N,'
      
        #9#9'ref_book_xml.value('#39'(/ROW/@OTPRID)[1]'#39','#39'varchar(200)'#39') as OTPR' +
        'ID,'
      #9#9'null as SendID'
      'FROM'#9'CTM_REFBOOK2 '
      'WHERE'#9'ref_book_name = '#39'otpr'#39
      
        'AND :date_from_to2 between ref_book_xml.value('#39'(/ROW/@FromDate)[' +
        '1]'#39','#39'datetime'#39') and ref_book_xml.value('#39'(/ROW/@ToDate)[1]'#39','#39'date' +
        'time'#39')'
      'UNION ALL'
      
        'SELECT '#9'ref_book_xml.value('#39'(/ROW/@OTPRN)[1]'#39','#39'varchar(200)'#39') as' +
        ' OTPRN,'
      
        #9#9'ref_book_xml.value('#39'(/ROW/@SendN)[1]'#39','#39'varchar(200)'#39') as SendN' +
        ','
      
        #9#9'ref_book_xml.value('#39'(/ROW/@OTPRID)[1]'#39','#39'varchar(200)'#39') as OTPR' +
        'ID,'
      
        #9#9'ref_book_xml.value('#39'(/ROW/@SendID)[1]'#39','#39'varchar(200)'#39') as Send' +
        'ID'
      'FROM'#9'CTM_REFBOOK2 '
      'WHERE'#9'ref_book_name = '#39'otpr'#39
      
        'AND :date_from_to1 between ref_book_xml.value('#39'(/ROW/@FromDate)[' +
        '1]'#39','#39'datetime'#39') and ref_book_xml.value('#39'(/ROW/@ToDate)[1]'#39','#39'date' +
        'time'#39')'
      ''
      ''
      'ORDER BY 3,4'
      '')
    Left = 504
    Top = 120
  end
  object DS_Otpr: TDataSource
    DataSet = Query_Otpr
    Left = 544
    Top = 72
  end
  object DS_ExRtType: TDataSource
    DataSet = Client_ExRtType
    Left = 368
    Top = 280
  end
  object cxPropertiesStore2: TcxPropertiesStore
    Components = <
      item
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
    StorageName = '\Software\LIS1\CtmNewOtpr'
    StorageType = stRegistry
    Left = 359
    Top = 170
  end
end
