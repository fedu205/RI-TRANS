object fmFindVagonGU12Wizard: TfmFindVagonGU12Wizard
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1086#1080#1089#1082#1072' '#1074#1072#1075#1086#1085#1086#1074
  ClientHeight = 486
  ClientWidth = 698
  Color = clBtnFace
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 698
    Height = 445
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 445
    ClientRectRight = 698
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 698
        Height = 57
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label4: TLabel
          Left = 16
          Top = 8
          Width = 263
          Height = 16
          Caption = #1055#1077#1088#1077#1095#1077#1085#1100' '#1086#1090#1087#1088#1072#1074#1086#1082' '#1043#1059'-12 '#1076#1083#1103' '#1072#1085#1072#1083#1080#1079#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 16
          Top = 30
          Width = 323
          Height = 16
          Caption = #1042#1099#1073#1088#1072#1085#1086' 0 '#1086#1090#1087#1088#1072#1074#1086#1082' ('#1074#1099#1073#1086#1088' '#1087#1086' '#1087#1088#1072#1074#1086#1081' '#1082#1085#1086#1087#1082#1080' '#1084#1099#1096#1082#1080')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 57
        Width = 698
        Height = 364
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.ScrollbarMode = sbmClassic
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          PopupMenu = dxBarPopupMenu1
          OnDblClick = cxGrid1DBBandedTableView1DblClick
          OnKeyPress = cxGrid1DBBandedTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = cxGrid1DBBandedTableView1CustomDrawCell
          OnFocusedItemChanged = cxGrid1DBBandedTableView1FocusedItemChanged
          DataController.DataSource = DS_Claim
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.OnChanged = cxGrid1DBBandedTableView1FilterOnChanged
          DataController.Filter.Active = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxGrid1DBBandedTableView1claim_id
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
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          OnCustomDrawFooterCell = cxGrid1DBBandedTableView1CustomDrawColumnHeader
          Bands = <
            item
            end>
          object cxGrid1DBBandedTableView1claim_id: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1079#1072#1074#1082#1080
            DataBinding.FieldName = 'claim_id'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1ClaimID: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1087#1080#1089#1080' '#1069#1058#1056#1040#1053
            DataBinding.FieldName = 'ClaimID'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1claimStateID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'claimStateID'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1claimState: TcxGridDBBandedColumn
            Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
            DataBinding.FieldName = 'claimState'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1claimNumber: TcxGridDBBandedColumn
            Caption = #8470' '#1079#1072#1103#1074#1082#1080
            DataBinding.FieldName = 'claimNumber'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1clmSenderName: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1079#1086#1086#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
            DataBinding.FieldName = 'clmSenderName'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1otprFreightCode: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1079' '#1045#1058#1057#1053#1043' ('#1082#1086#1076')'
            DataBinding.FieldName = 'otprFreightCode'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1otprFreightName: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1079' '#1045#1058#1057#1053#1043' '
            DataBinding.FieldName = 'otprFreightName'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1clmFromStationName: TcxGridDBBandedColumn
            Caption = #1089#1090'. '#1086#1090#1087#1088'.'
            DataBinding.FieldName = 'clmFromStationName'
            Width = 130
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1clmFromStationCode: TcxGridDBBandedColumn
            Caption = #1089#1090'. '#1086#1090#1087#1088'. ('#1082#1086#1076')'
            DataBinding.FieldName = 'clmFromStationCode'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1gpPodDate: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080
            DataBinding.FieldName = 'gpPodDate'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1gpWeight: TcxGridDBBandedColumn
            Caption = #1042#1077#1089' '#1075#1088#1091#1079#1072
            DataBinding.FieldName = 'gpWeight'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '#,##0.000'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1gpCarCount: TcxGridDBBandedColumn
            Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074
            DataBinding.FieldName = 'gpCarCount'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1otprStyk_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'otprStyk_id'
            Width = 100
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object cxGrid1DBBandedTableView1set_check: TcxGridDBBandedColumn
            DataBinding.FieldName = 'set_check'
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'id'
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBBandedTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 57
        Width = 698
        Height = 364
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 15
          Top = 11
          Width = 271
          Height = 13
          Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077' '#1086#1090' '#1089#1090#1072#1085#1094#1080#1080' '#1086#1090#1087#1088#1072#1074#1082#1080' ('#1082#1084')....................'
        end
        object Label2: TLabel
          Left = 15
          Top = 36
          Width = 211
          Height = 13
          Hint = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080' '#1089' '#1091#1095#1077#1090#1086#1084' '#1087#1086#1075#1088#1091#1079#1082#1080' - '#1074#1099#1075#1088#1091#1079#1082#1080' ('#1089#1091#1090#1082#1080')'
          Caption = #1057#1091#1090#1086#1082' '#1085#1072' '#1087#1086#1075#1088#1091#1079#1082#1091'\'#1074#1099#1075#1088#1091#1079#1082#1091'................'
        end
        object Label3: TLabel
          Left = 15
          Top = 61
          Width = 221
          Height = 13
          Hint = #1042#1088#1077#1084#1103' '#1074' '#1087#1091#1090#1080' '#1089' '#1091#1095#1077#1090#1086#1084' '#1087#1086#1075#1088#1091#1079#1082#1080' - '#1074#1099#1075#1088#1091#1079#1082#1080' ('#1089#1091#1090#1082#1080')'
          Caption = #1057#1088#1077#1076#1085#1103#1103' '#1089#1082#1086#1088#1086#1089#1090#1100' ('#1082#1084'\'#1089#1091#1090#1082#1080')..................'
        end
        object cxCurrencyEdit3: TcxCurrencyEdit
          Left = 224
          Top = 57
          EditValue = 200.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0'
          Properties.ReadOnly = False
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.Shadow = True
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 89
        end
        object cxCurrencyEdit1: TcxCurrencyEdit
          Left = 224
          Top = 32
          EditValue = 3.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0'
          Properties.ReadOnly = False
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.Shadow = True
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 89
        end
        object cxCurrencyEdit2: TcxCurrencyEdit
          Left = 224
          Top = 8
          EditValue = 100.000000000000000000
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#,##0'
          Properties.ReadOnly = False
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.Shadow = True
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 89
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 698
        Height = 57
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object Label5: TLabel
          Left = 16
          Top = 8
          Width = 254
          Height = 16
          Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 445
    Width = 698
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      698
      41)
    object BitBtn2: TBitBtn
      Left = 616
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
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
      TabOrder = 0
    end
    object cxButton1: TcxButton
      Left = 535
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1044#1072#1083#1077#1077
      LookAndFeel.Kind = lfStandard
      TabOrder = 1
      OnClick = cxButton1Click
    end
  end
  object DS_Claim: TDataSource
    DataSet = Client_Claim
    Left = 216
    Top = 312
  end
  object Client_Claim: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = Client_ClaimAfterPost
    Left = 160
    Top = 304
    object Client_Claimid: TAutoIncField
      FieldName = 'id'
    end
    object Client_Claimset_check: TBooleanField
      FieldName = 'set_check'
    end
    object Client_Claimclaim_id: TIntegerField
      FieldName = 'claim_id'
    end
    object Client_ClaimClaimID: TIntegerField
      FieldName = 'ClaimID'
    end
    object Client_ClaimclaimStateID: TIntegerField
      FieldName = 'claimStateID'
    end
    object Client_ClaimclaimState: TStringField
      FieldName = 'claimState'
      Size = 100
    end
    object Client_ClaimclaimNumber: TStringField
      FieldName = 'claimNumber'
    end
    object Client_ClaimclmSenderName: TStringField
      FieldName = 'clmSenderName'
      Size = 200
    end
    object Client_ClaimotprFreightCode: TStringField
      FieldName = 'otprFreightCode'
    end
    object Client_ClaimotprFreightName: TStringField
      FieldName = 'otprFreightName'
      Size = 200
    end
    object Client_ClaimclmFromStationName: TStringField
      FieldName = 'clmFromStationName'
      Size = 200
    end
    object Client_ClaimclmFromStationCode: TStringField
      FieldName = 'clmFromStationCode'
    end
    object Client_ClaimgpPodDate: TDateField
      FieldName = 'gpPodDate'
    end
    object Client_ClaimgpWeight: TCurrencyField
      FieldName = 'gpWeight'
    end
    object Client_ClaimgpCarCount: TIntegerField
      FieldName = 'gpCarCount'
    end
    object Client_ClaimotprStyk_id: TIntegerField
      FieldName = 'otprStyk_id'
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = fmFindVagonGU12.cxImageList1
    ImageOptions.StretchGlyphs = False
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 432
    Top = 112
    PixelsPerInch = 96
    object dxBarButton1: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton1Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
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
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end>
    end
    object dxBarButton2: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton5Click
    end
    object dxBarButton6: TdxBarButton
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Category = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      OnClick = dxBarButton6Click
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
      end>
    UseOwnFont = False
    OnPopup = dxBarPopupMenu1Popup
    Left = 192
    Top = 216
    PixelsPerInch = 96
  end
  object ConnectEtran: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Inf' +
      'o=True;User ID=sa;Initial Catalog=lis_etran;Data Source=srv-lis'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 504
    Top = 208
  end
  object Connect: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Left = 432
    Top = 208
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 23069056
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000E00000013000000180000001A0000001A0000001A0000001A0000001A0000
          0018000000140000000F0000000A000000050000000100000000000000000000
          001C492502A22D170172000000330000003300000033000000334B2602A62D17
          0172000000280000001E00000013000000090000000200000000000000000000
          00007F4306CC7F4306CC2B17025C0000000000000000000000007F4306CC7F43
          06CC2B17025C0000000000000000000000000000000000000000000000000000
          000085490ACCFFC73CFF85490ACC3C21055C000000000000000085490ACCFFBA
          18FF85490ACC3C21055C00000000000000000000000000000000000000000000
          00008C5010CCF8BB35FFFAC851FF8C5010CC3F24085C000000008C5010CCF6B3
          20FFF7B82CFF8C5010CC3F24085C000000000000000000000000000000000000
          0000945816CCF1BE63FFE2A02DFFF2C769FF945816CC43280A5C945816CCE7AC
          3FFFE09E29FFEAB349FF945816CC43280A5C0000000000000000000000000000
          00009B5F1BCCF5C77BFFEAAE60FFDB9E4CFFF0CA7BFF9B5F1BCC9B5F1BCCDCA8
          58FFCF9240FFCF9240FFE1B161FF9B5F1BCC0000000000000000000000000000
          0000A36721CCF8CE82FFF2B96DFFFDDE92FFA36721CC492E0E5CA36721CCE0B0
          64FFCD9145FFE9C074FFA36721CC492E0E5C0000000000000000000000000000
          0000AA6E26CCFCD68AFFFFE599FFAA6E26CC4C31115C00000000AA6E26CCFBD3
          87FFFDDD91FFAA6E26CC4C31115C000000000000000000000000000000000000
          0000B1752BCCFFE599FFB1752BCC4F34135C0000000000000000B1752BCCFFE4
          98FFB1752BCC4F34135C00000000000000000000000000000000000000000000
          0000B67A2FCCB67A2FCC5237155C000000000000000000000000B67A2FCCB67A
          2FCC5237155C0000000000000000000000000000000000000000000000000000
          00008C5F26995439175C000000000000000000000000000000008C5F26995439
          175C000000000000000000000000000000000000000000000000000000000000
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
          00010000000800000010000000170000001A0000001900000017000000150000
          00110000000D0000000A00000006000000030000000100000000000000000000
          00020000000F0000001F0000002D01140066024C00CC000E0055000000290000
          00220000001A000000130000000C000000060000000100000000000000000000
          0000000000000000000002190048065B00CC149709E8065B01C4010E00290000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003250048096800CC28B81AF424CD13FF1BAB0DEF096001BB010E
          001B000000000000000000000000000000000000000000000000000000000000
          0000042600480A6C00CC41C331F629C318FF39CC28FF28C217FF1C9C0EEA095C
          00AE010900100000000000000000000000000000000000000000000000000428
          00480B7100CC5DD44DF933BC22FF4ECA3EF80B7100CC28AA19F32CB81BFF1B91
          0DE40957009E0004000800000000000000000000000000000000000000000C75
          00CC6BE15AFA59D048FF68DE57FC0C7500CC063E006D0F7703CB33AF22F832B2
          21FF1B8B0DDF0850008C0001000200000000000000000000000000000000052A
          00480E7900CC72E861FD0E7900CC052A004800000000052D004C148207D33CB3
          2BFB37AE26FE1B890CDA0849007B000000000000000000000000000000000000
          0000052C00480E7C00CC052C0048000000000000000000000000074000691E90
          10D857CE46FE54CB43FD1C8C0DD6073D00630000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000100010A53
          00852CA01CDE61D850FF5AD14AFA198A0AD20630004C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000004
          00060C65009E3CB22CE56BE25AFF6EE55EFB108200CC00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010A00100E7300B077EE66FF108600CC062F004800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000315001F118800CC063000480000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000010000
          00060000000C00000013000000180000001A0000001A0000001A0000001A0000
          001A0000001A00000018000000130000000C0000000600000001000000020000
          000B00000018000000250000002F000000330000003300000033000000334B26
          01A62D1701740000003000000025000000180000000B00000002000000000000
          0000000000000000000000000000000000000000000000000000000000007E42
          05CC7E4205CC2B16025C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008246
          09CCFFB914FF824609CC3B20045C000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000884C
          0DCCFFB810FFFFBB1BFF884C0DCC3E23065C00000000000000006B3E0E998E52
          12CC6B3E0E99000000006B3E0E998E5212CC8E5212CC8E5212CC8E5212CC8E52
          12CCF7B423FFF5AB0EFFF7B92EFF8E5212CC4025085C00000000945816CCF8CE
          82FF945816CC00000000945816CCF1C065FFE8B049FFE7AE45FFE6AD43FFE6AB
          41FFE3A434FFE19E29FFE19E29FFEAB349FF945816CC43280A5C9B5F1BCCF5C8
          7CFF9B5F1BCC000000009B5F1BCCF4C478FFEAAE60FFE1A453FFD89B49FFD396
          44FFD09341FFD09341FFD39644FFD89B49FFECBB6CFF9B5F1BCCA26620CCFAD6
          8AFFA26620CC00000000A26620CCF9D185FFF5C77BFFF5C67AFFF5C579FFF4C4
          78FFF2BC70FFEFB468FFEFB468FFF7CD81FFA26620CC492D0E5C7D501B99A86C
          25CC7D501B99000000007D501B99A86C25CCA86C25CCA86C25CCA86C25CCA86C
          25CCF8CC80FFF4BE72FFFBD78BFFA86C25CC4B30105C00000000000000000000
          000000000000000000000000000000000000000000000000000000000000AE72
          29CCFCD589FFFEDF93FFAE7229CC4E33125C0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000B377
          2DCCFFE498FFB3772DCC5035145C000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000B77B
          30CCB77B30CC5338165C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008C5F
          26995439175C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000070000000E000000150000001A0000001A0000001A0000
          001A0000001A0000001A000000160000000F0000000800000002000000000000
          0000000000020000000E0000001C0000002A0000003300000033000000334B26
          01A62D170174000000330000002B0000001D0000000F00000003000000000000
          0000000000000000000000000000000000000000000000000000000000007E42
          05CC7E4205CC2B16025C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008246
          09CCFFB914FF824609CC3B20045C000000000000000000000000000000000000
          0000884C0DCC00000000673A0A99884C0DCC673A0A99884C0DCC673A0A99884C
          0DCCFFB810FFFFBB1BFF884C0DCC3E23065C0000000000000000000000000000
          000000000000000000008E5212CCF8BF3EFF8E5212CCF7BC36FFB87611E1F6B4
          24FFF5AF18FFF5AB0EFFF7B92EFF8E5212CC4025085C00000000945816CC0000
          000070431199945816CC945816CC945816CC945816CC995D18CFB3741EE1D190
          25F5E19E29FFE19E29FFE19E29FFEAB349FF945816CC43280A5C000000000000
          00009B5F1BCCF8D084FF9B5F1BCCF7CD81FFA46823D2EDC071FFBD8036E8D396
          44FFD09341FFD09341FFD39644FFD89B49FFECBB6CFF9B5F1BCC7A4D1999A266
          20CCA26620CCA26620CCA26620CCA56823CEB2762ED7C4883FE3D79B51EFE6AB
          5FFAEEB266FFEEB266FFEEB266FFF7CC80FFA26620CC492D0E5CA86C25CCFBD9
          8DFFA86C25CC00000000A86C25CCFBD68AFFB87C33D7FAD488FFEBBD71F7F6C9
          7DFFF4C175FFF2B96DFFFAD68AFFA86C25CC4B30105C0000000082551F99AE72
          29CC82551F990000000082551F99AE7229CC82551F99AE7229CCAE7229CCAE72
          29CCFBD488FFFEDF93FFAE7229CC4E33125C0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000B377
          2DCCFFE498FFB3772DCC5035145C000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000B77B
          30CCB77B30CC5338165C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008C5F
          26995439175C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
