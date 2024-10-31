object fmFrahtCard: TfmFrahtCard
  Left = 0
  Top = 0
  Caption = #1060#1088#1072#1093#1090#1086#1074#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072
  ClientHeight = 629
  ClientWidth = 997
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 26
    Width = 997
    Height = 603
    Align = alClient
    TabOrder = 0
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      PopupMenu = dxBarPopupMenu1
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DS_FrahtCard
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGrid1DBBandedTableView1fact_id
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          Column = cxGrid1DBBandedTableView1fact_comiss_sum
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
      Bands = <
        item
          Caption = '-'
          Width = 425
        end
        item
          Caption = #1050#1083#1080#1077#1085#1090
          Styles.Header = fmMain.cxStyle_Sum_Client
          Tag = 1000
        end
        item
          Caption = #1055#1086#1076#1088#1103#1076#1095#1080#1082
          Styles.Header = fmMain.cxStyle_Sum_Agent
          Tag = 2000
        end>
      object cxGrid1DBBandedTableView1fact_id: TcxGridDBBandedColumn
        Caption = #8470' '#1079#1072#1087#1080#1089#1080
        DataBinding.FieldName = 'fact_id'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1num_document: TcxGridDBBandedColumn
        Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        DataBinding.FieldName = 'num_document'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn
        Caption = #8470' '#1074#1072#1075#1086#1085#1072
        DataBinding.FieldName = 'num_vagon'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1num_konten: TcxGridDBBandedColumn
        Caption = #8470' '#1082#1086#1085#1090#1077#1081#1085#1077#1088#1072
        DataBinding.FieldName = 'num_konten'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1fact_comiss_sum: TcxGridDBBandedColumn
        Caption = #1050#1086#1084#1080#1089#1089#1080#1103
        DataBinding.FieldName = 'fact_comiss_sum'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1date_from_to: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088'.'
        DataBinding.FieldName = 'date_from_to'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1rate_1000: TcxGridDBBandedColumn
        DataBinding.FieldName = 'rate_1000'
        PropertiesClassName = 'TcxBlobEditProperties'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1count_1000: TcxGridDBBandedColumn
        DataBinding.FieldName = 'count_1000'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1sum_1000: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sum_1000'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1count_2000: TcxGridDBBandedColumn
        DataBinding.FieldName = 'count_2000'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1rate_2000: TcxGridDBBandedColumn
        DataBinding.FieldName = 'rate_2000'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1sum_2000: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sum_2000'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1datpr: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073'.'
        DataBinding.FieldName = 'datpr'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object Client_FrahtCard: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 456
    object Client_FrahtCardfact_id: TIntegerField
      FieldName = 'fact_id'
    end
    object Client_FrahtCardnum_document: TStringField
      FieldName = 'num_document'
    end
    object Client_FrahtCardnum_vagon: TIntegerField
      FieldName = 'num_vagon'
    end
    object Client_FrahtCardnum_konten: TStringField
      FieldName = 'num_konten'
    end
    object Client_FrahtCarddate_from_to: TDateField
      FieldName = 'date_from_to'
    end
    object Client_FrahtCarddatpr: TDateField
      FieldName = 'datpr'
    end
    object Client_FrahtCardfact_comiss_sum: TCurrencyField
      FieldName = 'fact_comiss_sum'
    end
  end
  object DS_FrahtCard: TDataSource
    DataSet = Client_FrahtCard
    Left = 512
    Top = 456
  end
  object ADOConnection1: TADOConnection
    Left = 480
    Top = 312
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
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 520
    Top = 216
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1031
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1057#1090#1072#1074#1082#1072
      Category = 0
      Hint = #1057#1090#1072#1074#1082#1072
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Category = 0
      Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = dxBarButton3Click
    end
    object dxBarButton8: TdxBarButton
      Caption = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077' '#1091#1089#1083#1091#1075#1080
      Category = 0
      Hint = #1057#1091#1084#1084#1072' '#1074' '#1074#1072#1083#1102#1090#1077' '#1091#1089#1083#1091#1075#1080
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = dxBarButton8Click
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 592
    Top = 208
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 448
    Top = 123
    PixelsPerInch = 96
    object cxStyle_Bold: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle_AgreeFactInc_Between: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle_AgreeFactInc_Sum: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14141181
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle_AgreeFactInc_AddProfit: TcxStyle
      AssignedValues = [svColor]
      Color = 12315124
    end
    object cxStyle_ClientFrahtCard_Rashod: TcxStyle
      AssignedValues = [svColor]
      Color = 15132390
    end
    object cxStyle_ClientFrahtCard_Profitt: TcxStyle
      AssignedValues = [svColor]
      Color = 13756410
    end
    object cxStyle_AgreeFact: TcxStyle
      AssignedValues = [svColor]
      Color = 14286550
    end
    object cxStyle_Agree_bargain_cod: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 11599867
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle_Orders_cod: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle_BoldBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlue
    end
    object cxStyle_ClientFrahtCard_Rashod_RUB: TcxStyle
      AssignedValues = [svColor]
      Color = 12517375
    end
    object cxStyle_BalanceOrders: TcxStyle
      AssignedValues = [svColor]
      Color = 16765650
    end
    object cxStyle_Comiss_USD: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15132390
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle_Comiss_RUB: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12517375
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle_Sum_USD: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 549388222
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyle_Sum_RUB: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12517375
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyle_Sum_EUR: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16768220
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyle_Sum_CHF: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 551345372
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyle_Sum_Client: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clRed
    end
    object cxStyle_Sum_Agent: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clGreen
    end
    object cxStyle_Sum_Comiss: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle_ID: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = 5263440
    end
    object cxStyle_Docs_Status: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15723006
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 552332287
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 552337387
    end
  end
end
