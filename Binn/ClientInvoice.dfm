object fmClientInvoice: TfmClientInvoice
  Left = 216
  Top = 123
  Caption = #1057#1095#1077#1090#1072' '#1082#1083#1080#1077#1085#1090#1072#1084
  ClientHeight = 599
  ClientWidth = 1023
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    00002A2E333639434F5539434F5539434F5539434F5539434F5539434F553943
    4F5539434F5539434F5539434F5539434F5539434F5537414D53000000000000
    00002F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77
    D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB000000000000
    00002F77D1FBD8FDFFFFD8FDFFFFD8FDFFFFD8FDFFFFD8FDFFFFD8FDFFFFD8FD
    FFFFD8FDFFFFD8FDFFFFD8FDFFFFD8FDFFFFD8FDFFFF2F77D1FB000000000000
    00002F77D1FBD8FDFFFFC5FCFFFFC4FBFFFFC4FBFFFFC3FBFFFFC1FAFFFFBFF9
    FFFFBDF8FFFFBCF7FFFFBAF6FFFFB8F5FFFFD8FDFFFF2F77D1FB000000000000
    00002F77D1FBD7FCFFFFC2FAFFFFC0F9FFFFBEF8FFFFBCF7FFFFBAF6FFFFB9F6
    FFFFB7F5FFFFB5F4FFFFB3F3FFFFB1F2FFFFD8FDFFFF2F77D1FB000000000000
    00002F77D1FBD2FAFFFFBBF7FFFFB9F6FFFFAADFE8FFB6F4FFFFB4F3FFFFB2F2
    FFFFB0F1FFFFAEF0FFFFADF0FFFFABEFFFFFD8FDFFFF2F77D1FB000000000000
    00002F77D1FBCEF8FFFFB4F3FFFFB3F3FFFF769095FF82A4ABFFACEFFDFFABEF
    FFFFAAEEFFFFA8EDFFFFA6ECFFFFA4EBFFFFD8FDFFFF2F77D1FB000000000000
    00002F77D1FBCAF5FFFFAEF0FFFFACEFFFFFA6E8F7FF667174FF7B8D92FF9DDE
    EFFFA3EBFFFFA1EAFFFF9FE9FFFF9EE8FFFFD8FDFFFF2F77D1FB000000000000
    00002F77D1FBC5F3FFFFA7EDFFFFA5ECFFFFA4EBFFFF93CEDFFF959797FF8A8F
    91FF80B3CCFF000098FD000098FD73ADE8FFD8FDFFFF2F77D1FB000000000000
    00002F77D1FBC1F1FFFFA1EAFFFF9FE9FFFF9DE8FFFF9BE7FFFF7CA9B7FFA2A0
    B4FF000098FD6074E8FF6680EFFF000098FDD8FDFFFF2F77D1FB000000000000
    00002F77D1FBC8F2FFFF9AE6FFFF98E5FFFF96E4FFFF95E4FFFF90DEFDFF0B20
    C8FD3D60EEFF1439E8FF1333E0FF000098FD000098FD1E47C1FF000000000000
    00002F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB2F77D1FB0B20C8FD768E
    EBFF245CFAFF1A44E8FF000098FD2C4CE6FF1134E5FF000098FD000000000000
    0000000000000000000000000000000000000000000000000000000024660B20
    C8FD3263EFFF0B20C8FD345DF1FF163FEBFF0B20C8FD00000E33000000000000
    0000000000000000000000000000000000000000000000000000000000010000
    08250B20C8FD5077F1FF245DFBFF0B20C8FD0000327500000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000B20C8FD0B20C8FD0B20C8FD00002C660000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000A0A0B0F3535454F0E0E1115000000000000000000000000000000008001
    0000800100008001000080010000800100008001000080010000800100008001
    0000800100008001000080010000FE010000FE030000FF870000FF8F0000}
  OnClose = FormClose
  OnDestroy = FormDestroy
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 373
    Width = 1023
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
    Color = 8421631
    ParentColor = False
    Visible = False
    ExplicitLeft = 8
    ExplicitTop = 425
    ExplicitWidth = 804
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 378
    Width = 1023
    Height = 221
    Align = alBottom
    TabOrder = 4
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.Images = fmMain.cxImageList1
    LookAndFeel.Kind = lfUltraFlat
    OnChange = cxPageControl1Change
    ExplicitTop = 414
    ClientRectBottom = 221
    ClientRectRight = 1023
    ClientRectTop = 25
    object cxTabSheet1: TcxTabSheet
      Caption = #1044#1077#1090#1072#1083#1080' '#1089#1095#1105#1090#1072
      ImageIndex = 36
      ExplicitTop = 24
      ExplicitHeight = 92
      object cxGrid5: TcxGrid
        Left = 0
        Top = 0
        Width = 1023
        Height = 196
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Office2007Black'
        ExplicitLeft = 2
        ExplicitTop = 15
        ExplicitWidth = 631
        ExplicitHeight = 137
        object cxGrid5DBBandedTableView1: TcxGridDBBandedTableView
          OnKeyPress = cxGrid1DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_Subject
          DataController.Filter.OnChanged = cxGrid1DBBandedTableView1DataControllerFilterChanged
          DataController.KeyFieldNames = 'invoice_table_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid5DBBandedTableView1subject_sum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid5DBBandedTableView1subject_sum_total
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid5DBBandedTableView1subject_sum_nds
            end
            item
              Format = '#,##0.0000'
              Kind = skSum
              Column = cxGrid5DBBandedTableView1subject_weight
            end
            item
              Format = #1050#1086#1083'-'#1074#1086': 0'
              Kind = skCount
              FieldName = 'invoice_table_id'
              Column = cxGrid5DBBandedTableView1subject_invoice
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GridLineColor = clGray
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.HeaderHeight = 35
          OptionsView.BandHeaders = False
          Styles.Content = fmMain.cxStyle_ColorWhite
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid5DBBandedTableView1invoice_table_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'invoice_table_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid5DBBandedTableView1invoice_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'invoice_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid5DBBandedTableView1subject_invoice: TcxGridDBBandedColumn
            Caption = #1055#1088#1077#1076#1084#1077#1090' '#1089#1095#1105#1090#1072
            DataBinding.FieldName = 'subject_invoice'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 121
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1subject_set: TcxGridDBBandedColumn
            Caption = 'V'
            DataBinding.FieldName = 'subject_set'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 30
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1subject_rate: TcxGridDBBandedColumn
            Caption = #1057#1090#1072#1074#1082#1072
            DataBinding.FieldName = 'subject_rate'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1subject_weight: TcxGridDBBandedColumn
            Caption = #1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'subject_weight'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.000'
            HeaderAlignmentVert = vaTop
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1subject_ed_izm_name: TcxGridDBBandedColumn
            Caption = #1045#1076'.'#1080#1079#1084'.'
            DataBinding.FieldName = 'subject_ed_izm_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 61
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1subject_nds_name: TcxGridDBBandedColumn
            Caption = #1053#1044#1057
            DataBinding.FieldName = 'subject_nds_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 42
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1subject_sum: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072', '#1073#1077#1079' '#1053#1044#1057
            DataBinding.FieldName = 'subject_sum'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Width = 104
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1subject_sum_nds: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057
            DataBinding.FieldName = 'subject_sum_nds'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid5DBBandedTableView1subject_sum_total: TcxGridDBBandedColumn
            Caption = #1042#1089#1077#1075#1086
            DataBinding.FieldName = 'subject_sum_total'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
        object cxGrid5Level1: TcxGridLevel
          GridView = cxGrid5DBBandedTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1054#1087#1083#1072#1090#1099' '#1089#1095#1105#1090#1072
      ImageIndex = 34
      ExplicitTop = 24
      ExplicitHeight = 92
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1023
        Height = 196
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Office2007Black'
        ExplicitLeft = 2
        ExplicitTop = 15
        ExplicitWidth = 288
        ExplicitHeight = 420
        object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = Popup_Pay
          OnDblClick = N6Click
          OnKeyPress = cxGrid1DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_Pay
          DataController.Filter.OnChanged = cxGrid1DBBandedTableView1DataControllerFilterChanged
          DataController.KeyFieldNames = 'pay_inv_id'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Position = spFooter
            end
            item
              Format = '#,##0.00'
              Kind = skSum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Position = spFooter
              Column = cxGrid3DBBandedTableView1pay_inv_sum
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = cxGrid3DBBandedTableView1pay_inv_sum
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'pay_sum'
            end
            item
              Format = '0'
              Kind = skCount
              FieldName = 'pay_id'
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
              Column = cxGrid3DBBandedTableView1pay_inv_sum
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.HideSelection = True
          OptionsView.Footer = True
          OptionsView.GridLineColor = clGray
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.HeaderHeight = 35
          OptionsView.BandHeaders = False
          Styles.Content = fmMain.cxStyle_ColorWhite
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid3DBBandedTableView1pay_inv_id: TcxGridDBBandedColumn
            Caption = #8470' '#1047#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'pay_inv_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 69
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1pay_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'pay_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1inv_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'inv_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1pay_inv_sum: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1086#1087#1083#1072#1090#1099
            DataBinding.FieldName = 'pay_inv_sum'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Width = 63
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1pay_inv_brief_name: TcxGridDBBandedColumn
            Caption = #1042#1072#1083#1102#1090#1072' '#1086#1087#1083#1072#1090#1099
            DataBinding.FieldName = 'pay_inv_brief_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1inv_brief_name: TcxGridDBBandedColumn
            Caption = #1042#1072#1083#1102#1090#1072' '#1089#1095#1077#1090#1072
            DataBinding.FieldName = 'inv_brief_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1inv_currency_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'inv_currency_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1pay_firm_self_name: TcxGridDBBandedColumn
            DataBinding.FieldName = 'pay_firm_self_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1pay_currency_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'pay_currency_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1pay_brief_name: TcxGridDBBandedColumn
            Caption = #1042#1072#1083#1102#1090#1072' '#1087#1083#1072#1090#1077#1078#1072
            DataBinding.FieldName = 'pay_brief_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1pay_cod: TcxGridDBBandedColumn
            Caption = #8470' '#1055#1083#1072#1090#1077#1078#1072
            DataBinding.FieldName = 'pay_cod'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1invoice_cod: TcxGridDBBandedColumn
            Caption = #8470' '#1057#1095#1077#1090#1072
            DataBinding.FieldName = 'invoice_cod'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1invoice_date: TcxGridDBBandedColumn
            DataBinding.FieldName = 'invoice_date'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1invoice_sum: TcxGridDBBandedColumn
            DataBinding.FieldName = 'invoice_sum'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1exchange_USD_val: TcxGridDBBandedColumn
            Caption = #1050#1091#1088#1089' USD'
            DataBinding.FieldName = 'exchange_USD_val'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1exchange_EUR_val: TcxGridDBBandedColumn
            Caption = #1050#1091#1088#1089' EUR'
            DataBinding.FieldName = 'exchange_EUR_val'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1exchange_CHF_val: TcxGridDBBandedColumn
            Caption = #1050#1091#1088'c CHF'
            DataBinding.FieldName = 'exchange_CHF_val'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1inv_sum_income: TcxGridDBBandedColumn
            Caption = #1054#1087#1083#1072#1095#1077#1085#1086' '#1087#1086' '#1089#1095#1077#1090#1091
            DataBinding.FieldName = 'inv_sum_income'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1pay_sum_income: TcxGridDBBandedColumn
            Caption = #1054#1087#1083#1072#1095#1077#1085#1086' '#1087#1083#1072#1090#1077#1078#1086#1084
            DataBinding.FieldName = 'pay_sum_income'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            HeaderAlignmentVert = vaTop
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1inv_firm_customer_name_short: TcxGridDBBandedColumn
            DataBinding.FieldName = 'inv_firm_customer_name_short'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1rest_invoice_sum: TcxGridDBBandedColumn
            DataBinding.FieldName = 'rest_invoice_sum'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1pay_rest: TcxGridDBBandedColumn
            DataBinding.FieldName = 'pay_rest'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1pay_sum_inv: TcxGridDBBandedColumn
            DataBinding.FieldName = 'pay_sum_inv'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1inv_sum_pay: TcxGridDBBandedColumn
            DataBinding.FieldName = 'inv_sum_pay'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1pay_sum: TcxGridDBBandedColumn
            DataBinding.FieldName = 'pay_sum'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1pay_inv_currency_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'pay_inv_currency_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1pay_inv_date: TcxGridDBBandedColumn
            DataBinding.FieldName = 'pay_inv_date'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1pay_date: TcxGridDBBandedColumn
            DataBinding.FieldName = 'pay_date'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid3DBBandedTableView1pay_firm_customer_name_short: TcxGridDBBandedColumn
            Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
            DataBinding.FieldName = 'pay_firm_customer_name_short'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBBandedTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1055#1077#1088#1077#1074#1086#1079#1082#1080' '#1087#1086' '#1076#1072#1085#1085#1086#1084#1091' '#1089#1095#1105#1090#1091
      ImageIndex = 22
      ExplicitTop = 24
      ExplicitHeight = 92
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1023
        Height = 196
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        PopupMenu = Popup_Agree
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.ScrollbarMode = sbmClassic
        LookAndFeel.SkinName = 'Office2007Black'
        ExplicitLeft = 2
        ExplicitTop = 15
        ExplicitWidth = 928
        ExplicitHeight = 102
        object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
          OnKeyPress = cxGrid1DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_Bargain
          DataController.Filter.OnChanged = cxGrid1DBBandedTableView1DataControllerFilterChanged
          DataController.KeyFieldNames = 'bargain_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'bargain_sum_fact'
              Column = cxGrid2DBBandedTableView1bargain_sum_fact
            end
            item
              Format = '#,##0.00'
              Kind = skSum
              FieldName = 'bargain_sum'
              Column = cxGrid2DBBandedTableView1bargain_sum
            end
            item
              Format = '#,##0.000'
              Kind = skSum
              Column = cxGrid2DBBandedTableView1amount_fact
            end
            item
              Format = '0'
              Kind = skSum
              Column = cxGrid2DBBandedTableView1amount_units_fact
            end
            item
              Format = '#,##0.000'
              Kind = skSum
              Column = cxGrid2DBBandedTableView1quantity
            end
            item
              Format = '0'
              Kind = skSum
              Column = cxGrid2DBBandedTableView1quantity_units
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.Summary.Options = [soMultipleSelectedRecords]
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.HideSelection = True
          OptionsView.Footer = True
          OptionsView.GridLineColor = clGray
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmButton
          OptionsView.HeaderHeight = 35
          OptionsView.BandHeaders = False
          Styles.Content = fmMain.cxStyle_ColorWhite
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid2DBBandedTableView1bargain_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080
            DataBinding.FieldName = 'bargain_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1bargain_cod: TcxGridDBBandedColumn
            Caption = #8470' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
            DataBinding.FieldName = 'bargain_cod'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1brief_name: TcxGridDBBandedColumn
            Caption = #1042#1072#1083#1102#1090#1072
            DataBinding.FieldName = 'brief_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn
            Caption = #1054#1090#1074#1077#1090#1089#1090#1074'.'
            DataBinding.FieldName = 'FIO_users_owner'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1node_begin_name: TcxGridDBBandedColumn
            Caption = #1057#1090'.'#1054#1090#1087#1088'.'
            DataBinding.FieldName = 'node_begin_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1node_end_name: TcxGridDBBandedColumn
            Caption = #1057#1090'.'#1053#1072#1079#1085'.'
            DataBinding.FieldName = 'node_end_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1kargoETSNG_name: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1079' '#1045#1058#1057#1053#1043
            DataBinding.FieldName = 'kargoETSNG_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1ed_izm_name: TcxGridDBBandedColumn
            Caption = #1045#1076#1048#1079#1084
            DataBinding.FieldName = 'ed_izm_name'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1amount_fact: TcxGridDBBandedColumn
            Caption = #1060'.'#1042#1077#1089
            DataBinding.FieldName = 'amount_fact'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = '#,##0.000'
            Properties.UseDisplayFormatWhenEditing = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1amount_units_fact: TcxGridDBBandedColumn
            Caption = #1060'.'#1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'amount_units_fact'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1bargain_sum_fact: TcxGridDBBandedColumn
            Caption = #1060'.'#1057#1091#1084#1084#1072
            DataBinding.FieldName = 'bargain_sum_fact'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Properties.UseDisplayFormatWhenEditing = True
            HeaderAlignmentVert = vaTop
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1bargain_sum_fact_USD: TcxGridDBBandedColumn
            DataBinding.FieldName = 'bargain_sum_fact_USD'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 97
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid2DBBandedTableView1bargain_comiss_USD: TcxGridDBBandedColumn
            DataBinding.FieldName = 'bargain_comiss_USD'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid2DBBandedTableView1invoice_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'invoice_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid2DBBandedTableView1quantity: TcxGridDBBandedColumn
            Caption = #1055#1083#1072#1085#1042#1077#1089
            DataBinding.FieldName = 'quantity'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DecimalPlaces = 3
            Properties.DisplayFormat = '#,##0.000'
            Properties.UseDisplayFormatWhenEditing = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1quantity_units: TcxGridDBBandedColumn
            Caption = #1055#1083#1072#1085#1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'quantity_units'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1bargain_sum: TcxGridDBBandedColumn
            Caption = #1055#1083#1072#1085#1057#1091#1084#1084#1072
            DataBinding.FieldName = 'bargain_sum'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.00'
            Properties.UseDisplayFormatWhenEditing = True
            HeaderAlignmentVert = vaTop
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1invoice_bargain_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'invoice_bargain_id'
            DataBinding.IsNullValueType = True
            HeaderAlignmentVert = vaTop
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBBandedTableView1
        end
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 26
    Width = 1023
    Height = 347
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PopupMenu = Popup_Invoice
    TabOrder = 5
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    LookAndFeel.SkinName = 'Office2007Black'
    ExplicitLeft = -8
    ExplicitTop = 25
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      PopupMenu = Popup_Invoice
      OnDblClick = N4Click
      OnKeyPress = cxGrid1DBBandedTableView1KeyPress
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
      OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
      OnFocusedRecordChanged = cxGrid1DBBandedTableView1FocusedRecordChanged
      DataController.DataSource = DS_ClientInvoice
      DataController.Filter.OnChanged = cxGrid1DBBandedTableView1DataControllerFilterChanged
      DataController.KeyFieldNames = 'invoice_id'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '#,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBBandedTableView1rest_invoice_sum
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1rest_invoice_sum
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBBandedTableView1inv_sum_pay
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1inv_sum_pay
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          FieldName = 'invoice_id'
          Column = cxGrid1DBBandedTableView1firm_customer_name
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1invoice_sum
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1rest_invoice_sum
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1inv_sum_pay
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soMultipleSelectedRecords]
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.GridLineColor = clGray
      OptionsView.GroupByBox = False
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.HeaderHeight = 35
      OptionsView.BandHeaders = False
      Styles.Content = fmMain.cxStyle_ColorWhite
      OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
      OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
      Bands = <
        item
        end>
      object cxGrid1DBBandedTableView1invoice_id: TcxGridDBBandedColumn
        Caption = #8470' '#1079#1072#1087#1080#1089#1080
        DataBinding.FieldName = 'invoice_id'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1invoice_cod: TcxGridDBBandedColumn
        Caption = #8470' '#1089#1095#1105#1090#1072
        DataBinding.FieldName = 'invoice_cod'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxLabelProperties'
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1invoice_date: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'invoice_date'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1invoice_sum: TcxGridDBBandedColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'invoice_sum'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1brief_name: TcxGridDBBandedColumn
        Caption = #1042#1072#1083#1102#1090#1072
        DataBinding.FieldName = 'brief_name'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1contract_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'contract_id'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1firm_customer_name: TcxGridDBBandedColumn
        Caption = #1050#1083#1080#1077#1085#1090
        DataBinding.FieldName = 'firm_customer_name'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1users_owner_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'users_owner_id'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1FIO_users_owner: TcxGridDBBandedColumn
        Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081
        DataBinding.FieldName = 'FIO_users_owner'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1header_description: TcxGridDBBandedColumn
        Caption = #1041#1072#1085#1082
        DataBinding.FieldName = 'header_description'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1header_name: TcxGridDBBandedColumn
        DataBinding.FieldName = 'header_name'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
        IsCaptionAssigned = True
      end
      object cxGrid1DBBandedTableView1header_address: TcxGridDBBandedColumn
        DataBinding.FieldName = 'header_address'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1header_bank: TcxGridDBBandedColumn
        DataBinding.FieldName = 'header_bank'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
        IsCaptionAssigned = True
      end
      object cxGrid1DBBandedTableView1firm_self_name: TcxGridDBBandedColumn
        Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1072#1103
        DataBinding.FieldName = 'firm_self_name'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1contract_cod: TcxGridDBBandedColumn
        Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
        DataBinding.FieldName = 'contract_cod'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1currency_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'currency_id'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1string_bottom_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'string_bottom_id'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn
        DataBinding.FieldName = 'global_color'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1global_copy: TcxGridDBBandedColumn
        DataBinding.FieldName = 'global_copy'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1firm_self_name_short: TcxGridDBBandedColumn
        DataBinding.FieldName = 'firm_self_name_short'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1firm_customer_name_short: TcxGridDBBandedColumn
        DataBinding.FieldName = 'firm_customer_name_short'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
        IsCaptionAssigned = True
      end
      object cxGrid1DBBandedTableView1header_language_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'header_language_id'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1header_language_name: TcxGridDBBandedColumn
        Caption = #1071#1079#1099#1082
        DataBinding.FieldName = 'header_language_name'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1header_language_cod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'header_language_cod'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1firm_customer: TcxGridDBBandedColumn
        DataBinding.FieldName = 'firm_customer'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1firm_customer_name_full: TcxGridDBBandedColumn
        DataBinding.FieldName = 'firm_customer_name_full'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1docs_id: TcxGridDBBandedColumn
        Caption = #8470' '#1079#1072#1087#1080#1089#1080' (LIS-Doc)'
        DataBinding.FieldName = 'docs_id'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod_RUB
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1docs_status_name: TcxGridDBBandedColumn
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' LIS-Doc'
        DataBinding.FieldName = 'docs_status_name'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod_RUB
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1docs_date_agree: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103' LIS-Doc'
        DataBinding.FieldName = 'docs_date_agree'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentVert = vaTop
        Styles.Content = fmMain.cxStyle_ClientFrahtCard_Rashod_RUB
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1cnt_global_doc: TcxGridDBBandedColumn
        Caption = #1050#1086#1083'-'#1074#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
        DataBinding.FieldName = 'cnt_global_doc'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        HeaderGlyph.SourceDPI = 96
        HeaderGlyph.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00DAD4CFFF644B37FF634935FF664C38FFC4BAB2FFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00CDC4BDFF69503CFFDAD4CFFFFFFFFF00EDEAE8FF694F3BFFD4CC
          C6FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF006D5440FFE3DEDBFFCCC3BDFF664C39FFE0DBD7FFDFD9D5FF644A
          36FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00735A47FFFFFFFF006B513EFFC0B5ADFF654B38FFFFFFFF006349
          35FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF007A614EFFFFFFFF00705744FFFFFFFF00684F3BFFFFFFFF006349
          35FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00816956FFFFFFFF00775E4BFFFFFFFF006B513EFFFFFFFF00674D
          39FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00846C5AFFFFFFFF007B624FFFFFFFFF006E5441FFFFFFFF006B52
          3EFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0087705EFFFFFFFF007E6553FFFFFFFF00745B48FFFFFFFF006E55
          42FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF008E7765FFFFFFFF00846D5AFFFFFFFF007B624FFFFFFFFF007158
          45FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00947D6CFFFFFFFF008B7462FFFFFFFF00816A57FFFFFFFF00785F
          4CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00998372FFFFFFFF00927B69FFFFFFFF0088715FFFFFFFFF007F66
          54FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0097816FFFFFFFFF00FFFFFF00FFFFFF00856E
          5CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF009C8675FFD8CFC8FFFFFFFF00D9D1CAFF947D
          6BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00D8D0C9FF9D8776FF9A8472FF96806EFFD9D2
          CBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Options.ShowCaption = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1rest_invoice_sum: TcxGridDBBandedColumn
        Caption = #1054#1089#1090#1072#1090#1086#1082
        DataBinding.FieldName = 'rest_invoice_sum'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1inv_sum_pay: TcxGridDBBandedColumn
        Caption = #1054#1087#1083#1072#1090#1072
        DataBinding.FieldName = 'inv_sum_pay'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'comment'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1print_form_name: TcxGridDBBandedColumn
        Caption = #1055#1077#1095'. '#1092#1086#1088#1084#1072
        DataBinding.FieldName = 'print_form_name'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1print_form_cod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'print_form_cod'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1nds_in_sum: TcxGridDBBandedColumn
        Caption = #1053#1044#1057' '#1074#1082#1083'. '#1074' '#1089#1091#1084#1084#1091
        DataBinding.FieldName = 'nds_in_sum'
        DataBinding.IsNullValueType = True
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1bank_firm_contact_name: TcxGridDBBandedColumn
        Caption = #1041#1072#1085#1082' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
        DataBinding.FieldName = 'bank_firm_contact_name'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1plan_pay_date: TcxGridDBBandedColumn
        Caption = #1055#1083#1072#1085#1080#1088#1091#1077#1084#1072#1103' '#1076#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
        DataBinding.FieldName = 'plan_pay_date'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1FIO_users_modify: TcxGridDBBandedColumn
        Caption = #1048#1079#1084#1077#1085#1077#1085' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1084
        DataBinding.FieldName = 'FIO_users_modify'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1date_modify: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
        DataBinding.FieldName = 'date_modify'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1invoice_status_name: TcxGridDBBandedColumn
        Caption = #1057#1090#1072#1090#1091#1089' '#1089#1095#1077#1090#1072
        DataBinding.FieldName = 'invoice_status_name'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1firm_self: TcxGridDBBandedColumn
        DataBinding.FieldName = 'firm_self'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1type_contract: TcxGridDBBandedColumn
        DataBinding.FieldName = 'type_contract'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn
        DataBinding.FieldName = 'date_begin'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1type_invoice: TcxGridDBBandedColumn
        DataBinding.FieldName = 'type_invoice'
        DataBinding.IsNullValueType = True
        HeaderAlignmentVert = vaTop
        Width = 70
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object Query_ClientInvoice: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    CommandTimeout = 100
    Parameters = <
      item
        Name = 'users_owner_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'invoice_date1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'invoice_date2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'type_invoice'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @users_owner_id int'
      'SET @users_owner_id = :users_owner_id '
      ''
      'SELECT'
      '  view_invoice_rights.*, '
      '  global_docs_link.docs_id, '
      '  global_docs_link.docs_status_name,'
      '  global_docs_link.docs_date_agree'
      'FROM view_invoice_rights '
      
        'LEFT JOIN global_docs_link ON view_invoice_rights.invoice_id = g' +
        'lobal_docs_link.global_id'
      
        'WHERE FLOOR(convert(float,invoice_date)) >= FLOOR(convert(float,' +
        ' :invoice_date1)) '
      
        'AND FLOOR(convert(float,invoice_date)) <= FLOOR(convert(float, :' +
        'invoice_date2))'
      'AND @users_owner_id IN (-9, users_owner_id)'
      'AND type_invoice = :type_invoice'
      'ORDER BY invoice_date DESC')
    Left = 35
    Top = 81
  end
  object DS_ClientInvoice: TDataSource
    DataSet = Query_ClientInvoice
    Left = 36
    Top = 111
  end
  object Query_Bargain: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'invoice_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM view_invoice_bargain'
      'WHERE invoice_id = :invoice_id')
    Left = 151
    Top = 453
  end
  object DS_Bargain: TDataSource
    DataSet = Query_Bargain
    Left = 150
    Top = 484
  end
  object Query_Subject: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'invoice_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from view_invoice_table where invoice_id=:invoice_id')
    Left = 84
    Top = 447
  end
  object DS_Subject: TDataSource
    DataSet = Query_Subject
    Left = 84
    Top = 475
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = dxBarButton_FilterRecords1
        Properties.Strings = (
          'Down')
      end
      item
        Component = dxBarButton4
        Properties.Strings = (
          'Down')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width'
          'WindowState')
      end
      item
        Component = Splitter2
        Properties.Strings = (
          'Visible')
      end>
    StorageName = '\Software\Lis1\ClientInvoice'
    StorageType = stRegistry
    Left = 163
    Top = 98
  end
  object dxBarManager1: TdxBarManager
    Tag = 555
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Popup_Invoice'
      'Popup_Pay'
      'Popup_Agree')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    ImageOptions.Images = fmMain.cxImageList1
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    LookAndFeel.SkinName = ''
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 194
    Top = 96
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #1052#1077#1085#1102
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 604
      FloatTop = 357
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'N1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'N4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'N12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'N2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = #1052#1077#1085#1102
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = '00.00.0000'
      Category = 0
      Hint = #1042#1099#1073#1086#1088' '#1087#1077#1088#1080#1086#1076#1072
      Style = fmMain.cxStyle_Bold
      Visible = ivAlways
      ImageIndex = 7
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
    end
    object dxBarButton2: TdxBarButton
      Tag = 3
      Caption = #1052#1077#1089#1103#1094' ...'
      Category = 0
      Hint = #1052#1077#1089#1103#1094' '
      Visible = ivAlways
      ImageIndex = 7
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Tag = 2
      Caption = #1055#1077#1088#1080#1086#1076' ...'
      Category = 0
      Hint = #1055#1077#1088#1080#1086#1076' '
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
    end
    object dxBarButton15: TdxBarButton
      Tag = 2
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
    end
    object dxBarSubItem5: TdxBarSubItem
      Tag = 10
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end>
    end
    object dxBarButton16: TdxBarButton
      Caption = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080' ...'
      Category = 0
      Hint = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080' '
      Visible = ivAlways
      ImageIndex = 11
    end
    object dxBarButton17: TdxBarButton
      Tag = 1
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1094#1074#1077#1090
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1094#1074#1077#1090
      Visible = ivAlways
    end
    object dxBarButton18: TdxBarButton
      Tag = 1
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
    end
    object dxBarButton19: TdxBarButton
      Tag = 1
      Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1082#1086#1083#1086#1085#1086#1082
      Category = 0
      Hint = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1082#1086#1083#1086#1085#1086#1082
      Visible = ivAlways
      ImageIndex = 13
    end
    object dxBarButton23: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1087#1086' '#1089#1095#1077#1090#1072#1084
      Visible = ivAlways
      ImageIndex = 5
      ShortCut = 116
      OnClick = dxBarButton23Click
    end
    object dxBarButton1: TdxBarButton
      Tag = 2
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
    end
    object dxBarSubItem2: TdxBarSubItem
      Tag = 11
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton19'
        end>
    end
    object dxBarSubItem3: TdxBarSubItem
      Tag = 12
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton19'
        end>
    end
    object dxBarButton4: TdxBarButton
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1057#1087#1088#1103#1090#1072#1090#1100' '#1076#1077#1090#1072#1083#1080#1079#1072#1094#1080#1102
      Category = 0
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1057#1087#1088#1103#1090#1072#1090#1100' '#1076#1077#1090#1072#1083#1080#1079#1072#1094#1080#1102
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      ImageIndex = 43
      OnClick = dxBarButton4Click
    end
    object dxBarSubItem4: TdxBarSubItem
      Tag = -9
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      Category = 0
      Hint = #1042#1099#1073#1086#1088' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
      Visible = ivAlways
      ImageIndex = 38
      ShowCaption = False
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator1'
        end>
      OnPopup = dxBarSubItem4Popup
    end
    object dxBarButton8: TdxBarButton
      Tag = -9
      Caption = #1042#1089#1077
      Category = 0
      Hint = #1042#1089#1077
      Visible = ivAlways
      ImageIndex = 38
      OnClick = OnMenuUsersClick
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = #1053#1086#1074#1099#1081' '#1088#1072#1079#1076#1077#1083#1080#1090#1077#1083#1100
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1088#1072#1079#1076#1077#1083#1080#1090#1077#1083#1100
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton10: TdxBarButton
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1095#1105#1090
      Category = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100' '#1089#1095#1105#1090
      Visible = ivNever
      ImageIndex = 3
      OnClick = ToolButton8Click
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1089#1095#1105#1090#1072
      Visible = ivAlways
      ImageIndex = 6
      ShowCaption = False
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    object dxBarButton9: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1095#1077#1090#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1089#1095#1077#1090#1072
      Visible = ivAlways
      ImageIndex = 8
      OnClick = N11Click
    end
    object dxBarButton13: TdxBarButton
      Caption = #1055#1088#1080#1074#1103#1079#1072#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
      Category = 0
      Hint = #1055#1088#1080#1074#1103#1079#1072#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
      Visible = ivAlways
      ImageIndex = 67
      OnClick = ToolButton24Click
    end
    object dxBarButton20: TdxBarButton
      Tag = 1
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1095#1077#1090#1072' ('#1089#1090#1088#1086#1082#1080' '#1089' '#1053#1044#1057')'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1089#1095#1077#1090#1072' ('#1089#1090#1088#1086#1082#1080' '#1089' '#1053#1044#1057')'
      Visible = ivAlways
      ImageIndex = 8
    end
    object dxBarButton21: TdxBarButton
      Tag = 2
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 164
      OnClick = dxBarButton22Click
    end
    object dxBarButton22: TdxBarButton
      Tag = 1
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 165
      OnClick = dxBarButton22Click
    end
    object dxBarButton24: TdxBarButton
      Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1074' '#1044#1086#1082#1091#1084#1077#1085#1090#1086#1086#1073#1086#1088#1086#1090'...'
      Category = 0
      Hint = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1074' '#1044#1086#1082#1091#1084#1077#1085#1090#1086#1086#1073#1086#1088#1086#1090
      Visible = ivAlways
      ImageIndex = 65
      OnClick = dxBarButton24Click
    end
    object N1: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100'...'
      Category = 1
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = N1Click
    end
    object N4: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100'...'
      Category = 1
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = N4Click
    end
    object N12: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1089#1095#1105#1090
      Category = 1
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1089#1095#1105#1090
      Visible = ivAlways
      ImageIndex = 18
      OnClick = N12Click
    end
    object N2: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 1
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = N2Click
    end
    object N18: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 1
      Visible = ivAlways
      ImageIndex = 8
      OnClick = N18Click
    end
    object N16: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 1
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'N24'
        end
        item
          Visible = True
          ItemName = 'N25'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'N21'
        end
        item
          Visible = True
          ItemName = 'N17'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton_FilterRecords1'
        end>
    end
    object N24: TdxBarButton
      Caption = #1062#1074#1077#1090' '#1079#1072#1087#1080#1089#1080
      Category = 1
      Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1094#1074#1077#1090' '#1079#1072#1087#1080#1089#1080
      Visible = ivAlways
      ImageIndex = 11
      OnClick = N24Click
    end
    object N25: TdxBarButton
      Tag = 1
      Caption = #1057#1085#1103#1090#1100' '#1094#1074#1077#1090' '#1079#1074#1087#1080#1089#1080
      Category = 1
      Hint = #1057#1085#1103#1090#1100' '#1094#1074#1077#1090' '#1079#1074#1087#1080#1089#1080
      Visible = ivAlways
      ImageIndex = 12
      OnClick = N24Click
    end
    object N21: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 1
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1086#1083#1086#1085#1086#1082' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = N21Click
    end
    object N17: TdxBarButton
      Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1089#1090#1086#1083#1073#1094#1086#1074
      Category = 1
      Hint = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1087#1086' '#1089#1090#1086#1083#1073#1094#1072#1084
      Visible = ivAlways
      ImageIndex = 13
    end
    object dxBarButton_FilterRecords1: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 1
      Hint = #1059#1089#1083#1086#1074#1080#1077' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1080' '#1076#1072#1085#1085#1099#1093' '#1074' '#1090#1072#1073#1083#1080#1094#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton_FilterRecords1Click
    end
    object dxBarButton14: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1086#1087#1083#1072#1090#1091
      Category = 2
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1086#1087#1083#1072#1090#1091
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton14Click
    end
    object N6: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1091#1084#1084#1091' '#1086#1087#1083#1072#1090#1099
      Category = 2
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1091#1084#1084#1091' '#1086#1087#1083#1072#1090#1099
      Visible = ivAlways
      ImageIndex = 1
      OnClick = N6Click
    end
    object N7: TdxBarButton
      Caption = #1059#1073#1088#1072#1090#1100' '#1086#1087#1083#1072#1090#1091
      Category = 2
      Hint = #1059#1073#1088#1072#1090#1100' '#1086#1087#1083#1072#1090#1091
      Visible = ivAlways
      ImageIndex = 2
      OnClick = N7Click
    end
    object Excel2: TdxBarButton
      Tag = 3
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 2
      Visible = ivAlways
      ImageIndex = 8
      OnClick = Excel2Click
    end
    object N9: TdxBarButton
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1087#1077#1088#1077#1074#1086#1079#1082#1091
      Category = 3
      Hint = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1087#1077#1088#1077#1074#1086#1079#1082#1091
      Visible = ivAlways
      ImageIndex = 105
      OnClick = N9Click
    end
    object N10: TdxBarButton
      Caption = #1059#1073#1088#1072#1090#1100' '#1087#1077#1088#1077#1074#1086#1079#1082#1091
      Category = 3
      Hint = #1059#1073#1088#1072#1090#1100' '#1087#1077#1088#1077#1074#1086#1079#1082#1091
      Visible = ivAlways
      ImageIndex = 106
      OnClick = N10Click
    end
  end
  object Popup_Invoice: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'N1'
      end
      item
        Visible = True
        ItemName = 'N4'
      end
      item
        Visible = True
        ItemName = 'N12'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N2'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton24'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N18'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N16'
      end>
    UseOwnFont = False
    OnPopup = Popup_InvoicePopup
    Left = 36
    Top = 144
    PixelsPerInch = 96
  end
  object Popup_Agree: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'N9'
      end
      item
        Visible = True
        ItemName = 'N10'
      end>
    UseOwnFont = False
    Left = 151
    Top = 515
    PixelsPerInch = 96
  end
  object Popup_Pay: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        Visible = True
        ItemName = 'N6'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'N7'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'Excel2'
      end>
    UseOwnFont = False
    Left = 201
    Top = 513
    PixelsPerInch = 96
  end
  object Query_Pay: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'invoice_id'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM view_pay_invoice '
      'WHERE inv_id =:invoice_id')
    Left = 201
    Top = 453
  end
  object DS_Pay: TDataSource
    DataSet = Query_Pay
    Left = 199
    Top = 483
  end
end
