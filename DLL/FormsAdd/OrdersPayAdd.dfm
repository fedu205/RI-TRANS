object fmOrdersPayAdd: TfmOrdersPayAdd
  Left = 0
  Top = 0
  Caption = #1047#1072#1103#1074#1082#1072' '#1085#1072' '#1087#1083#1072#1090#1077#1078
  ClientHeight = 479
  ClientWidth = 512
  Color = clBtnFace
  Constraints.MinHeight = 480
  Constraints.MinWidth = 520
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
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 512
    Height = 81
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      512
      81)
    object Label18: TLabel
      Left = 9
      Top = 4
      Width = 58
      Height = 13
      Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082':'
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 9
      Top = 17
      Anchors = [akLeft, akTop, akRight]
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 30
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 800
      Properties.KeyFieldNames = 'contract_id'
      Properties.ListColumns = <
        item
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          MinWidth = 150
          Width = 250
          FieldName = 'firm_customer_name'
        end
        item
          Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
          MinWidth = 150
          Width = 200
          FieldName = 'contract_cod'
        end
        item
          Caption = #1058#1080#1087' '#1076#1086#1075#1086#1074#1086#1088#1072
          MinWidth = 80
          Width = 100
          FieldName = 'type_contract_name'
        end
        item
          Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1072#1103
          MinWidth = 100
          Width = 150
          FieldName = 'firm_self_name'
        end
        item
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          FieldName = 'note'
        end>
      Properties.ListSource = DS_Agent
      Properties.MaxLength = 0
      Properties.OnEditValueChanged = cxLookupComboBox1PropertiesEditValueChanged
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 0
      Width = 498
    end
    object cxButtonEdit13: TcxButtonEdit
      Left = 9
      Top = 42
      Anchors = [akLeft, akTop, akRight]
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit13PropertiesButtonClick
      Style.Color = clBtnFace
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 1
      Width = 320
    end
    object cxButtonEdit14: TcxButtonEdit
      Left = 335
      Top = 42
      Anchors = [akTop, akRight]
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit13PropertiesButtonClick
      Style.Color = clBtnFace
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 2
      Width = 172
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 442
    Width = 512
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      512
      37)
    object BitBtn2: TBitBtn
      Left = 429
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
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
    object BitBtn1: TBitBtn
      Left = 348
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
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
      OnClick = BitBtn1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 241
    Width = 512
    Height = 201
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 2
      Top = 2
      Width = 508
      Height = 197
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 197
      ClientRectRight = 508
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = #1050#1083#1080#1077#1085#1090#1099
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 508
          Height = 173
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.ScrollbarMode = sbmClassic
          object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu1
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DS_Detail
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.Active = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGrid1DBBandedTableView1id
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1detail_pay_sum
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxGrid1DBBandedTableView1payment_sum
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.Summary.Options = [soMultipleSelectedRecords]
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
            object cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn
              Caption = #8470' '#1079#1072#1087#1080#1089#1080
              DataBinding.FieldName = 'id'
              HeaderAlignmentVert = vaTop
              Options.Editing = False
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1orders_pay_detail_id: TcxGridDBBandedColumn
              Caption = #8470' '#1079#1072#1087#1080#1089#1080
              DataBinding.FieldName = 'orders_pay_detail_id'
              HeaderAlignmentVert = vaTop
              Width = 100
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid1DBBandedTableView1orders_pay_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'orders_pay_id'
              HeaderAlignmentVert = vaTop
              Width = 100
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'contract_id'
              HeaderAlignmentVert = vaTop
              Width = 100
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid1DBBandedTableView1client_contract_cod: TcxGridDBBandedColumn
              Caption = #1044#1086#1075#1086#1074#1086#1088
              DataBinding.FieldName = 'client_contract_cod'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              Properties.OnButtonClick = cxGrid1DBBandedTableView1client_contract_date_beginPropertiesButtonClick
              HeaderAlignmentVert = vaTop
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1client_contract_date_begin: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
              DataBinding.FieldName = 'client_contract_date_begin'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              Properties.OnButtonClick = cxGrid1DBBandedTableView1client_contract_date_beginPropertiesButtonClick
              HeaderAlignmentVert = vaTop
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1client_firm_self_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'client_firm_self_id'
              HeaderAlignmentVert = vaTop
              Width = 100
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid1DBBandedTableView1client_firm_customer_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'client_firm_customer_id'
              HeaderAlignmentVert = vaTop
              Width = 100
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGrid1DBBandedTableView1client_firm_self_name: TcxGridDBBandedColumn
              Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1072#1103
              DataBinding.FieldName = 'client_firm_self_name'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              Properties.OnButtonClick = cxGrid1DBBandedTableView1client_contract_date_beginPropertiesButtonClick
              HeaderAlignmentVert = vaTop
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1client_firm_customer_name: TcxGridDBBandedColumn
              Caption = #1050#1083#1080#1077#1085#1090
              DataBinding.FieldName = 'client_firm_customer_name'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              Properties.OnButtonClick = cxGrid1DBBandedTableView1client_contract_date_beginPropertiesButtonClick
              HeaderAlignmentVert = vaTop
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1detail_pay_sum: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072
              DataBinding.FieldName = 'detail_pay_sum'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.OnEditValueChanged = cxGrid1DBBandedTableView1detail_pay_sumPropertiesEditValueChanged
              HeaderAlignmentVert = vaTop
              Styles.Content = fmMain.cxStyle_Bold
              Styles.Footer = fmMain.cxStyle_Bold
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1set_plan_balance: TcxGridDBBandedColumn
              Caption = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1074' '#1073#1072#1083#1072#1085#1089#1077' '#1082#1083#1080#1077#1085#1090#1072
              DataBinding.FieldName = 'set_plan_balance'
              PropertiesClassName = 'TcxCheckBoxProperties'
              HeaderAlignmentVert = vaTop
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1payment_sum: TcxGridDBBandedColumn
              Caption = #1054#1087#1083#1072#1090#1072
              DataBinding.FieldName = 'payment_sum'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = False
              Properties.OnEditValueChanged = cxGrid1DBBandedTableView1payment_sumPropertiesEditValueChanged
              HeaderAlignmentVert = vaTop
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBBandedTableView1
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        ImageIndex = 2
        object cxMemo1: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.ScrollbarMode = sbmClassic
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
          TabOrder = 0
          Height = 173
          Width = 508
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 512
    Height = 160
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object Label3: TLabel
      Left = 9
      Top = 109
      Width = 247
      Height = 13
      Caption = #1057#1091#1084#1084#1072'......................................................'
    end
    object Label2: TLabel
      Left = 9
      Top = 85
      Width = 218
      Height = 13
      Caption = #1057#1095#1077#1090' ('#1044#1072#1090#1072').......................................'
    end
    object Label1: TLabel
      Left = 9
      Top = 61
      Width = 233
      Height = 13
      Caption = #1057#1095#1077#1090' ('#8470')..............................................'
    end
    object Label21: TLabel
      Left = 9
      Top = 37
      Width = 194
      Height = 13
      Caption = #1054#1087#1083#1072#1090#1080#1090#1100' '#1085#1077' '#1087#1086#1079#1076#1085#1077#1077'.....................'
    end
    object Label4: TLabel
      Left = 9
      Top = 13
      Width = 148
      Height = 13
      Caption = #1044#1072#1090#1072' '#1079#1072#1103#1074#1082#1080'.....................'
    end
    object Label5: TLabel
      Left = 9
      Top = 134
      Width = 224
      Height = 13
      Caption = #1057#1091#1084#1084#1072' '#1086#1087#1083#1072#1090#1099'......................................'
    end
    object cxLookupComboBox3: TcxLookupComboBox
      Left = 271
      Top = 116
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'currency_id'
      Properties.ListColumns = <
        item
          FieldName = 'brief_name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_Currency
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      Style.Shadow = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 0
      Width = 75
    end
    object cxCurrencyEdit1: TcxCurrencyEdit
      Left = 160
      Top = 102
      ParentFont = False
      Properties.DisplayFormat = '#,##0.00'
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      Style.Shadow = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 1
      Width = 110
    end
    object cxDateEdit2: TcxDateEdit
      Left = 160
      Top = 78
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 2
      Width = 186
    end
    object cxDateEdit1: TcxDateEdit
      Left = 160
      Top = 30
      Properties.ReadOnly = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = cxDateEdit1PropertiesEditValueChanged
      Style.Color = clWindow
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 3
      Width = 186
    end
    object cxTextEdit1: TcxTextEdit
      Left = 160
      Top = 54
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 4
      Width = 186
    end
    object cxDateEdit3: TcxDateEdit
      Left = 160
      Top = 6
      Properties.ReadOnly = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = cxDateEdit3PropertiesEditValueChanged
      Style.Color = clWindow
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      Style.Shadow = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 5
      Width = 186
    end
    object cxCurrencyEdit2: TcxCurrencyEdit
      Left = 160
      Top = 127
      ParentFont = False
      Properties.DisplayFormat = '#,##0.00'
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.ScrollbarMode = sbmClassic
      Style.Shadow = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
      TabOrder = 6
      Width = 110
    end
  end
  object Client_Detail: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = Client_DetailAfterPost
    Left = 96
    Top = 256
    object Client_Detailid: TAutoIncField
      FieldName = 'id'
    end
    object Client_Detailorders_pay_detail_id: TIntegerField
      FieldName = 'orders_pay_detail_id'
    end
    object Client_Detailorders_pay_id: TIntegerField
      FieldName = 'orders_pay_id'
    end
    object Client_Detailcontract_id: TIntegerField
      FieldName = 'contract_id'
    end
    object Client_Detailclient_contract_cod: TStringField
      FieldName = 'client_contract_cod'
    end
    object Client_Detailclient_contract_date_begin: TDateField
      FieldName = 'client_contract_date_begin'
    end
    object Client_Detailclient_firm_self_id: TIntegerField
      FieldName = 'client_firm_self_id'
    end
    object Client_Detailclient_firm_customer_id: TIntegerField
      FieldName = 'client_firm_customer_id'
    end
    object Client_Detailclient_firm_self_name: TStringField
      FieldName = 'client_firm_self_name'
      Size = 300
    end
    object Client_Detailclient_firm_customer_name: TStringField
      FieldName = 'client_firm_customer_name'
      Size = 300
    end
    object Client_Detaildetail_pay_sum: TCurrencyField
      FieldName = 'detail_pay_sum'
    end
    object Client_Detailset_plan_balance: TBooleanField
      FieldName = 'set_plan_balance'
    end
    object Client_Detailpayment_sum: TCurrencyField
      FieldName = 'payment_sum'
    end
  end
  object DS_Detail: TDataSource
    DataSet = Client_Detail
    Left = 96
    Top = 208
  end
  object Query_Agent: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Filtered = True
    Parameters = <
      item
        Name = 'date_current'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @date_current datetime'
      'SET @date_current = :date_current'
      ''
      
        'SELECT'#9'*, case type_contract WHEN 0 THEN '#39#1050#1083#1080#1077#1085#1090#39' WHEN 1 THEN '#39#1055 +
        #1086#1076#1088#1103#1076#1095#1080#1082#39'  WHEN 2 THEN '#39#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1094#1080#1103#39' END as type_contract_name'
      'FROM'#9'view_contract_rights  '
      'WHERE'#9
      '('
      
        '@date_current  BETWEEN (date_begin-(day(date_begin)-1)) AND (dat' +
        'eadd(mm, 1, date_end)-day(dateadd(mm, 1, date_end)))'
      'OR'
      
        '@date_current  BETWEEN (date_begin_period-(day(date_begin_period' +
        ')-1)) AND (dateadd(mm, 1, date_end)-day(dateadd(mm, 1, date_end)' +
        '))'
      ')'
      'ORDER BY firm_customer_name')
    Left = 324
    Top = 10
  end
  object DS_Agent: TDataSource
    DataSet = Query_Agent
    Left = 358
    Top = 13
  end
  object Query_Currency: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM currency '
      'WHERE currency_id IN (1, 3, 5, 6, 8)'
      'ORDER BY currency_id')
    Left = 360
    Top = 100
  end
  object DS_Currency: TDataSource
    DataSet = Query_Currency
    Left = 390
    Top = 109
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
      end>
    StorageName = '\Software\Lis1\OrdersPayAdd'
    StorageType = stRegistry
    Left = 156
    Top = 304
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
    ImageOptions.Images = fmMain.cxImageList1
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 480
    Top = 160
    PixelsPerInch = 96
    object dxBarButton1: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
    end
    object dxBarButton4: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton3'
      end>
    UseOwnFont = False
    Left = 312
    Top = 296
    PixelsPerInch = 96
  end
end
