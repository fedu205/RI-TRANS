object fmCtmNewSupport: TfmCtmNewSupport
  Left = 0
  Top = 0
  Caption = #1057#1086#1087#1088#1086#1074#1086#1078#1076#1077#1085#1080#1077
  ClientHeight = 333
  ClientWidth = 452
  Color = clBtnFace
  Constraints.MinHeight = 360
  Constraints.MinWidth = 460
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
    Width = 452
    Height = 226
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitHeight = 220
    object cxGrid1: TcxGrid
      Left = 2
      Top = 2
      Width = 448
      Height = 222
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.ScrollbarMode = sbmClassic
      ExplicitHeight = 216
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        OnDblClick = BitBtn_OkClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DS_SPRDesc
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.KeyFieldNames = 'id'
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
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.BandHeaders = False
        Bands = <
          item
          end>
        object cxGrid1DBBandedTableView1ID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGrid1DBBandedTableView1Caption: TcxGridDBBandedColumn
          Caption = #1042#1080#1076' '#1089#1086#1087#1088#1086#1074#1086#1078#1076#1077#1085#1080#1103
          DataBinding.FieldName = 'Caption'
          Options.Filtering = False
          Width = 430
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBBandedTableView1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 261
    Width = 452
    Height = 35
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object cxCheckBox2: TcxCheckBox
      Left = 2
      Top = 2
      Align = alLeft
      Anchors = [akLeft]
      AutoSize = False
      Caption = #1044#1086#1075#1086#1074#1086#1088#1085#1072#1103' '#1086#1093#1088#1072#1085#1072
      Properties.Alignment = taLeftJustify
      Properties.OnEditValueChanged = cxCheckBox2PropertiesEditValueChanged
      Style.BorderStyle = ebsUltraFlat
      Style.LookAndFeel.Kind = lfOffice11
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 0
      ExplicitHeight = 34
      Height = 31
      Width = 135
    end
    object cxCurrencyEdit1: TcxCurrencyEdit
      Left = 148
      Top = 6
      Enabled = False
      Style.BorderStyle = ebsUltraFlat
      Style.LookAndFeel.Kind = lfStandard
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 1
      Width = 68
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 226
    Width = 452
    Height = 35
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    ExplicitTop = 223
    DesignSize = (
      452
      35)
    object cxLabel1: TcxLabel
      Left = 8
      Top = 12
      Caption = #1050#1086#1083'-'#1074#1086' '#1087#1088#1086#1074#1086#1076#1085#1080#1082#1086#1074'.............'
    end
    object cxSpinEdit4: TcxSpinEdit
      AlignWithMargins = True
      Left = 148
      Top = 7
      Anchors = [akLeft]
      Properties.Alignment.Horz = taLeftJustify
      Properties.ValueType = vtFloat
      Style.BorderStyle = ebsUltraFlat
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Value = 1.000000000000000000
      ExplicitTop = 8
      Width = 68
    end
    object cxLabel2: TcxLabel
      Left = 256
      Top = 12
      Caption = #1050#1086#1083'-'#1074#1086' '#1086#1089#1077#1081'................'
    end
    object cxSpinEdit1: TcxSpinEdit
      AlignWithMargins = True
      Left = 352
      Top = 7
      Anchors = [akLeft]
      Properties.Alignment.Horz = taLeftJustify
      Properties.ValueType = vtFloat
      Style.BorderStyle = ebsUltraFlat
      Style.LookAndFeel.Kind = lfStandard
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 3
      Value = 4.000000000000000000
      ExplicitTop = 8
      Width = 68
    end
  end
  object Panel18: TPanel
    Left = 0
    Top = 296
    Width = 452
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      452
      37)
    object BitBtn_Ok: TBitBtn
      Left = 290
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
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn_OkClick
    end
    object BitBtn_Cancel: TBitBtn
      Left = 371
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
  object Query_SPRDesc: TADOQuery
    Connection = fmCtmNewMain.CTMConnect
    Parameters = <>
    SQL.Strings = (
      
        'SELECT cast(ref_book_key1 as int) as ID,  ref_book_key2 as Capti' +
        'on '
      'FROM CTM_REFBOOK2 '
      'WHERE ref_book_name = '#39'SPRDesc'#39)
    Left = 120
    Top = 128
  end
  object DS_SPRDesc: TDataSource
    DataSet = Query_SPRDesc
    Left = 120
    Top = 72
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
    StorageName = '\Software\LIS1\CtmNewSupport'
    StorageType = stRegistry
    Left = 247
    Top = 50
  end
end
