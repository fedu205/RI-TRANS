object fmFactIncCard: TfmFactIncCard
  Left = 230
  Top = 23
  Caption = #1056#1072#1079#1074#1105#1088#1085#1091#1090#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
  ClientHeight = 671
  ClientWidth = 922
  Color = clBtnFace
  Constraints.MinHeight = 570
  Constraints.MinWidth = 930
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poDefault
  OnClose = FormClose
  TextHeight = 13
  object Panel_SelfFactData: TPanel
    Left = 0
    Top = 0
    Width = 209
    Height = 671
    Align = alLeft
    TabOrder = 0
    OnResize = Panel_SelfFactDataResize
    object Panel1: TPanel
      Left = 1
      Top = 21
      Width = 207
      Height = 121
      Align = alTop
      Caption = 'Panel1'
      TabOrder = 1
      object Label164: TLabel
        Left = 23
        Top = 99
        Width = 56
        Height = 13
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073':'
      end
      object Label155: TLabel
        Left = 24
        Top = 80
        Width = 55
        Height = 13
        Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088':'
      end
      object Label156: TLabel
        Left = 8
        Top = 63
        Width = 71
        Height = 13
        Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
      end
      object Label151: TLabel
        Left = 31
        Top = 46
        Width = 48
        Height = 13
        Caption = #8470' '#1082#1086#1085#1090':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label149: TLabel
        Left = 16
        Top = 28
        Width = 62
        Height = 13
        Caption = #8470' '#1074#1072#1075#1086#1085#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label148: TLabel
        Left = 13
        Top = 9
        Width = 66
        Height = 13
        Caption = #1055#1086#1089#1090#1072#1074'. '#1080#1085#1092':'
      end
      object cxDBTextEdit_qFact_firm_info_name: TcxDBTextEdit
        Left = 81
        Top = 6
        AutoSize = False
        Properties.ReadOnly = True
        TabOrder = 0
        Height = 21
        Width = 109
      end
      object cxDBTextEdit_qFact_num_vagon: TcxDBTextEdit
        Left = 81
        Top = 24
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 21
        Width = 109
      end
      object cxDBTextEdit_qFact_num_konten: TcxDBTextEdit
        Left = 81
        Top = 42
        AutoSize = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 21
        Width = 109
      end
      object cxDBTextEdit_qFact_num_document: TcxDBTextEdit
        Left = 110
        Top = 60
        AutoSize = False
        Properties.ReadOnly = True
        TabOrder = 3
        Height = 21
        Width = 80
      end
      object cxDBTextEdit_num_document_pref_: TcxDBTextEdit
        Left = 81
        Top = 60
        AutoSize = False
        Properties.ReadOnly = True
        TabOrder = 4
        Height = 21
        Width = 32
      end
      object cxDBTextEdit_qFact_date_from_to: TcxDBTextEdit
        Left = 81
        Top = 78
        AutoSize = False
        Properties.ReadOnly = True
        TabOrder = 5
        Height = 21
        Width = 109
      end
      object cxDBTextEdit_qFact_datpr: TcxDBTextEdit
        Left = 81
        Top = 96
        AutoSize = False
        Properties.ReadOnly = True
        TabOrder = 6
        Height = 21
        Width = 109
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 142
      Width = 207
      Height = 180
      Align = alTop
      TabOrder = 2
      object Label159: TLabel
        Left = 41
        Top = 11
        Width = 38
        Height = 13
        Caption = #1060'. '#1074#1077#1089':'
      end
      object Label154: TLabel
        Left = 40
        Top = 66
        Width = 39
        Height = 13
        Caption = #1057#1090#1072#1074#1082#1072':'
      end
      object Label152: TLabel
        Left = 45
        Top = 49
        Width = 34
        Height = 13
        Caption = #1056'. '#1074#1077#1089':'
      end
      object Label158: TLabel
        Left = 58
        Top = 30
        Width = 20
        Height = 13
        Caption = #1043'/'#1087':'
      end
      object Label166: TLabel
        Left = 12
        Top = 85
        Width = 72
        Height = 13
        Caption = #1058#1080#1087' '#1089#1090#1072#1074#1082#1080':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label150: TLabel
        Left = 41
        Top = 130
        Width = 37
        Height = 13
        Caption = #1057#1091#1084#1084#1072':'
      end
      object Label162: TLabel
        Left = 19
        Top = 153
        Width = 60
        Height = 13
        Caption = #1044#1086#1087' '#1057#1073#1086#1088#1099':'
      end
      object cxDBTextEdit_qFact_fact_weight: TcxDBTextEdit
        Left = 81
        Top = 9
        AutoSize = False
        Properties.ReadOnly = True
        TabOrder = 0
        Height = 21
        Width = 109
      end
      object cxDBTextEdit_qFact_kargo_capacity: TcxDBTextEdit
        Left = 81
        Top = 26
        AutoSize = False
        Properties.ReadOnly = True
        TabOrder = 1
        Height = 21
        Width = 109
      end
      object cxDBTextEdit_SelfFact_calc_weight_F: TcxDBTextEdit
        Left = 81
        Top = 44
        AutoSize = False
        Properties.ReadOnly = True
        TabOrder = 2
        Height = 21
        Width = 109
      end
      object cxDBTextEdit_SelfFact_rate_val_F: TcxDBTextEdit
        Left = 81
        Top = 62
        AutoSize = False
        Properties.ReadOnly = True
        TabOrder = 3
        Height = 21
        Width = 43
      end
      object cxDBTextEdit_qShapingRate_brief_name: TcxDBTextEdit
        Left = 121
        Top = 62
        AutoSize = False
        TabOrder = 4
        Height = 21
        Width = 30
      end
      object cxDBTextEdit_qShapingRate_ed_izm_name: TcxDBTextEdit
        Left = 148
        Top = 62
        AutoSize = False
        TabOrder = 5
        Height = 21
        Width = 42
      end
      object cxDBTextEdit_qFact_type_kontener_name: TcxDBTextEdit
        Left = 14
        Top = 99
        AutoSize = False
        Properties.ReadOnly = True
        Style.BorderStyle = ebsSingle
        Style.Color = clBtnFace
        TabOrder = 6
        Height = 21
        Width = 77
      end
      object cxDBTextEdit_qFact_attr_self_name: TcxDBTextEdit
        Left = 95
        Top = 99
        AutoSize = False
        Properties.ReadOnly = True
        Style.BorderStyle = ebsSingle
        Style.Color = clBtnFace
        TabOrder = 7
        Height = 21
        Width = 95
      end
      object cxDBTextEdit_SelfFact_sum_F: TcxDBTextEdit
        Left = 81
        Top = 126
        AutoSize = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 8
        Height = 21
        Width = 109
      end
      object cxDBTextEdit_SelfFact_Add_F: TcxDBButtonEdit
        Left = 81
        Top = 149
        Properties.Alignment.Horz = taRightJustify
        Properties.AutoSelect = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.UseLeftAlignmentOnEditing = False
        Properties.ValidateOnEnter = False
        Properties.OnButtonClick = cxDBTextEdit_SelfFact_Add_FPropertiesButtonClick
        TabOrder = 9
        Width = 109
      end
    end
    object cxHeader1: TcxHeader
      Left = 1
      Top = 1
      Width = 207
      Height = 20
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      ParentFont = False
      Sections = <
        item
          Alignment = taCenter
          Text = #1054#1087#1077#1088'. '#1060#1072#1082#1090
          Width = 220
        end>
    end
    object cxGrid_AddCollection: TcxGrid
      Left = 14
      Top = 316
      Width = 189
      Height = 101
      Align = alCustom
      Anchors = []
      TabOrder = 0
      Visible = False
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmClassic
      LookAndFeel.SkinName = ''
      object btvAdd_Collection_Items: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object btvAdd_Collection_ItemsADD_VID_NAME: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1076#1086#1087'.'#1089#1073#1086#1088#1072
          DataBinding.FieldName = 'ADD_VID_NAME'
          DataBinding.IsNullValueType = True
          Width = 75
        end
        object btvAdd_Collection_ItemsADD_SUM: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'ADD_SUM'
          DataBinding.IsNullValueType = True
        end
        object btvAdd_Collection_ItemsBRIEF_NAME: TcxGridDBColumn
          Caption = #1042#1072#1083#1102#1090#1072
          DataBinding.FieldName = 'BRIEF_NAME'
          DataBinding.IsNullValueType = True
        end
        object btvAdd_Collection_ItemsSUM_IN_SHAPING_RATE_CURRENCY: TcxGridDBColumn
          Caption = #1042' '#1074#1072#1083#1102#1090#1077' '#1087#1086#1076#1088'.'
          DataBinding.FieldName = 'sum_in_shaping_rate_currency'
          DataBinding.IsNullValueType = True
          Width = 93
        end
        object btvAdd_Collection_ItemsADD_TYPE_NAME: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'ADD_TYPE_NAME'
          DataBinding.IsNullValueType = True
        end
        object btvAdd_Collection_ItemsADD_COMMENT: TcxGridDBColumn
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          DataBinding.FieldName = 'ADD_COMMENT'
          DataBinding.IsNullValueType = True
        end
      end
      object cxGrid_AddCollectionLevel1: TcxGridLevel
        GridView = btvAdd_Collection_Items
      end
    end
  end
  object Panel_ZFTO_All: TPanel
    Left = 209
    Top = 0
    Width = 713
    Height = 671
    Align = alClient
    Constraints.MinWidth = 713
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 33
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = #1057#1077#1088#1080#1103' '#1076#1086#1082'-'#1090#1072':'
    end
    object Label2: TLabel
      Tag = 1
      Left = 28
      Top = 48
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = #8470' '#1076#1086#1082'-'#1090#1072':'
    end
    object Label3: TLabel
      Tag = 2
      Left = 20
      Top = 64
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1072#1090#1077#1075#1054#1090#1087#1088':'
    end
    object Label4: TLabel
      Tag = 3
      Left = 15
      Top = 80
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = #8470' '#1074#1072#1075#1086#1085#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Tag = 5
      Left = 8
      Top = 112
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = #1057#1086#1073#1089#1090#1074#1042#1072#1075#1086#1085':'
    end
    object Label6: TLabel
      Tag = 6
      Left = 8
      Top = 128
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1083#1042#1072#1075'/'#1050#1086#1085#1090':'
    end
    object Label7: TLabel
      Tag = 7
      Left = 52
      Top = 194
      Width = 20
      Height = 13
      Alignment = taRightJustify
      Caption = #1043'/'#1087':'
    end
    object Label8: TLabel
      Tag = 8
      Left = 23
      Top = 147
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = #1044#1072#1090#1072#1054#1090#1087#1088':'
    end
    object Label9: TLabel
      Tag = 16
      Left = 11
      Top = 304
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1076#1057#1090#1088#1053#1072#1079#1085':'
    end
    object Label10: TLabel
      Tag = 9
      Left = 22
      Top = 162
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = #1044#1072#1090#1072#1055#1088#1080#1073':'
    end
    object Label11: TLabel
      Tag = 10
      Left = 31
      Top = 208
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = #1056#1072#1089#1095#1042#1077#1089':'
    end
    object Label12: TLabel
      Tag = 11
      Left = 29
      Top = 224
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = #1052#1072#1088#1096#1088#1091#1090':'
    end
    object Label13: TLabel
      Tag = 12
      Left = 21
      Top = 240
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = #1042#1080#1076#1057#1086#1086#1073#1097':'
    end
    object Label14: TLabel
      Tag = 13
      Left = 12
      Top = 256
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1076#1057#1090#1088#1054#1090#1087#1088':'
    end
    object Label15: TLabel
      Tag = 14
      Left = 9
      Top = 272
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1076#1044#1086#1088#1054#1090#1087#1088':'
    end
    object Label16: TLabel
      Tag = 15
      Left = 18
      Top = 288
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1076#1057#1090#1054#1090#1087#1088':'
    end
    object Label17: TLabel
      Tag = 17
      Left = 8
      Top = 321
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1076#1044#1086#1088#1053#1072#1079#1085':'
    end
    object Label18: TLabel
      Tag = 18
      Left = 17
      Top = 336
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1076#1057#1090#1053#1072#1079#1085':'
    end
    object Label19: TLabel
      Tag = 19
      Left = 2
      Top = 352
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = #1057#1090#1053#1072#1079#1085#1047#1072#1057#1053#1043':'
    end
    object Label20: TLabel
      Tag = 20
      Left = 35
      Top = 368
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1076#1043#1053#1043':'
    end
    object Label21: TLabel
      Tag = 21
      Left = 20
      Top = 384
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1076#1045#1058#1057#1053#1043':'
    end
    object Label22: TLabel
      Tag = 22
      Left = 20
      Top = 400
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1088#1072#1090#1056#1072#1089#1089#1090':'
    end
    object Label23: TLabel
      Tag = 23
      Left = 52
      Top = 416
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1048#1058':'
    end
    object Label24: TLabel
      Tag = 24
      Left = 3
      Top = 432
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1076#1043#1088#1091#1079#1086#1086#1090#1087#1088':'
    end
    object Label25: TLabel
      Tag = 31
      Left = 362
      Top = 66
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = #1057#1086#1073#1089#1090#1074#1050#1086#1085#1090':'
    end
    object Label26: TLabel
      Tag = 25
      Left = 8
      Top = 449
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1076#1043#1088#1091#1079#1086#1087#1086#1083':'
    end
    object Label27: TLabel
      Tag = 26
      Left = 36
      Top = 464
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1086#1076#1082#1086#1076':'
    end
    object Label28: TLabel
      Tag = 27
      Left = 26
      Top = 480
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = #8470' '#1090#1077#1083#1077#1075#1088':'
    end
    object Label29: TLabel
      Tag = 28
      Left = 18
      Top = 496
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1076#1069#1082#1089#1087#1077#1076':'
    end
    object Label30: TLabel
      Tag = 29
      Left = 367
      Top = 34
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = #1056#1086#1076#1042#1072#1075#1086#1085#1072':'
    end
    object Label31: TLabel
      Tag = 30
      Left = 353
      Top = 50
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1083#1074#1086#1055#1088#1086#1074#1086#1076':'
    end
    object Label32: TLabel
      Tag = 4
      Left = 11
      Top = 96
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = #8470' '#1082#1086#1085#1090'-'#1088#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label33: TLabel
      Tag = 32
      Left = 379
      Top = 82
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = #1043'/'#1087' '#1082#1086#1085#1090':'
    end
    object Label34: TLabel
      Tag = 33
      Left = 386
      Top = 98
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = #1057#1090#1072#1074#1082#1072':'
    end
    object Label36: TLabel
      Tag = 34
      Left = 351
      Top = 115
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1101#1092#1055#1077#1088#1077#1074#1086#1076':'
    end
    object Label37: TLabel
      Tag = 35
      Left = 363
      Top = 130
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1086#1076#1042#1072#1083#1102#1090#1099':'
    end
    object Label38: TLabel
      Tag = 36
      Left = 385
      Top = 146
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = #1056#1077#1079#1077#1088#1074':'
    end
    object Label39: TLabel
      Tag = 37
      Left = 371
      Top = 162
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = #1054#1090#1095#1052#1077#1089#1103#1094':'
    end
    object Label40: TLabel
      Tag = 38
      Left = 371
      Top = 178
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = #1060#1088#1072#1093#1090#1043#1086#1076':'
    end
    object Label35: TLabel
      Tag = 39
      Left = 173
      Top = 36
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1088#1086#1074#1086#1079#1055#1083#1072#1090#1072':'
    end
    object Label41: TLabel
      Tag = 40
      Left = 192
      Top = 51
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Caption = #1044#1086#1087'.'#1088#1072#1089#1093'.:'
    end
    object Label42: TLabel
      Tag = 41
      Left = 218
      Top = 67
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1090#1086#1075':'
    end
    object Label43: TLabel
      Tag = 42
      Left = 218
      Top = 83
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = #1053#1044#1057':'
    end
    object Label44: TLabel
      Tag = 44
      Left = 178
      Top = 185
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = #1054#1090#1095#1052#1077#1089#1050#1086#1088#1088':'
    end
    object Label45: TLabel
      Tag = 45
      Left = 206
      Top = 201
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID'#1050#1086#1088#1088':'
    end
    object Label46: TLabel
      Tag = 46
      Left = 157
      Top = 217
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = #1044#1086#1074#1086#1076#1103#1097#1047#1072#1087#1080#1089#1100':'
    end
    object Label47: TLabel
      Tag = 47
      Left = 158
      Top = 233
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = #1044#1086#1074#1086#1076#1080#1084#1047#1072#1087#1080#1089#1100':'
    end
    object Label48: TLabel
      Tag = 55
      Left = 186
      Top = 363
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073#1048#1090#1086#1075':'
    end
    object Label49: TLabel
      Tag = 48
      Left = 195
      Top = 250
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = #8470' '#1089#1093#1077#1084#1099':'
    end
    object Label50: TLabel
      Tag = 49
      Left = 160
      Top = 265
      Width = 85
      Height = 13
      Alignment = taRightJustify
      Caption = #8470' '#1087#1072#1087#1082#1080#1053#1072#1088#1103#1076#1072':'
    end
    object Label51: TLabel
      Tag = 50
      Left = 155
      Top = 281
      Width = 90
      Height = 13
      Alignment = taRightJustify
      Caption = #1044#1072#1090#1072#1054#1090#1087#1088'/'#1042#1074#1086#1079#1072':'
    end
    object Label52: TLabel
      Tag = 51
      Left = 183
      Top = 297
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = #1057#1091#1084#1084#1072#1057#1073#1086#1088':'
    end
    object Label53: TLabel
      Tag = 52
      Left = 157
      Top = 313
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = #1053#1044#1057#1057#1091#1084#1084#1099#1057#1073#1086#1088':'
    end
    object Label54: TLabel
      Tag = 53
      Left = 177
      Top = 331
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073#1055#1083#1072#1090#1099':'
    end
    object Label55: TLabel
      Tag = 54
      Left = 185
      Top = 347
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073#1057#1073#1086#1088':'
    end
    object Label56: TLabel
      Tag = 43
      Left = 186
      Top = 169
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = #1058#1080#1087#1047#1072#1087#1086#1083#1085':'
    end
    object Label57: TLabel
      Tag = 56
      Left = 186
      Top = 379
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073#1053#1044#1057':'
    end
    object Label58: TLabel
      Tag = 59
      Left = 186
      Top = 430
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = #1053#1077#1076#1086#1073#1048#1090#1086#1075':'
    end
    object Label59: TLabel
      Tag = 57
      Left = 177
      Top = 398
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = #1053#1077#1076#1086#1073#1055#1083#1072#1090#1099':'
    end
    object Label60: TLabel
      Tag = 58
      Left = 185
      Top = 414
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = #1053#1077#1076#1086#1073#1057#1073#1086#1088':'
    end
    object Label61: TLabel
      Tag = 60
      Left = 186
      Top = 446
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = #1053#1077#1076#1086#1073#1053#1044#1057':'
    end
    object Label62: TLabel
      Tag = 63
      Left = 364
      Top = 233
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1090#1086#1075#1048#1090#1086#1075':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label63: TLabel
      Tag = 61
      Left = 362
      Top = 201
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1090#1086#1075#1057#1090#1072#1074#1082#1072':'
    end
    object Label64: TLabel
      Tag = 62
      Left = 374
      Top = 217
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1090#1086#1075#1056#1072#1089#1093':'
    end
    object Label65: TLabel
      Tag = 64
      Left = 374
      Top = 249
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1090#1086#1075#1053#1044#1057':'
    end
    object Label66: TLabel
      Tag = 67
      Left = 348
      Top = 300
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = #1044#1077#1083#1100#1090#1072#1048#1090#1086#1075':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label67: TLabel
      Tag = 65
      Left = 348
      Top = 268
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = #1044#1077#1083#1100#1090#1072#1057#1090#1072#1074#1082#1072':'
    end
    object Label68: TLabel
      Tag = 66
      Left = 360
      Top = 284
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = #1044#1077#1083#1100#1090#1072#1056#1072#1089#1093':'
    end
    object Label69: TLabel
      Tag = 68
      Left = 360
      Top = 316
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = #1044#1077#1083#1100#1090#1072#1053#1044#1057':'
    end
    object Label70: TLabel
      Tag = 74
      Left = 194
      Top = 466
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'ID_UCH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label71: TLabel
      Tag = 73
      Left = 387
      Top = 442
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = #1060#1088#1072#1079#1072':'
    end
    object Label72: TLabel
      Tag = 69
      Left = 354
      Top = 335
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1086#1075#1086#1041#1077#1079#1053#1044#1057':'
    end
    object Label73: TLabel
      Tag = 70
      Left = 368
      Top = 351
      Width = 57
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1090#1086#1075#1086#1053#1044#1057':'
    end
    object Label74: TLabel
      Tag = 71
      Left = 341
      Top = 367
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = #1044#1077#1083#1100#1090#1072#1041#1077#1079#1053#1044#1057':'
    end
    object Label75: TLabel
      Tag = 72
      Left = 360
      Top = 383
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = #1044#1077#1083#1100#1090#1072#1053#1044#1057':'
    end
    object Label76: TLabel
      Tag = 77
      Left = 181
      Top = 517
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = #1043#1088#1091#1079' '#1045#1058#1057#1053#1043':'
    end
    object Label77: TLabel
      Tag = 76
      Left = 200
      Top = 501
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = #1057#1090'.'#1085#1072#1079#1085'.:'
    end
    object Label78: TLabel
      Tag = 75
      Left = 201
      Top = 485
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = #1057#1090'.'#1086#1090#1087#1088'.:'
    end
    object Label79: TLabel
      Tag = 73
      Left = 334
      Top = 404
      Width = 91
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1091#1088#1089' USD<->RUB:'
    end
    object Label80: TLabel
      Tag = 51
      Left = 185
      Top = 102
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = #1057#1073#1086#1088#1054#1093#1088#1072#1085':'
    end
    object Label81: TLabel
      Tag = 52
      Left = 161
      Top = 118
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = #1053#1044#1057#1057#1073#1086#1088#1054#1093#1088#1072#1085':'
    end
    object Label82: TLabel
      Tag = 51
      Left = 182
      Top = 134
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = 'P_Vohr7ITG:'
    end
    object Label83: TLabel
      Tag = 52
      Left = 177
      Top = 150
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'P_Vohr7NDS:'
    end
    object Label84: TLabel
      Tag = 31
      Left = 518
      Top = 56
      Width = 113
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1090#1086#1075#1055#1088#1086#1074#1055#1083#1072#1090#1072'_RUB:'
    end
    object Label85: TLabel
      Tag = 29
      Left = 534
      Top = 24
      Width = 97
      Height = 13
      Alignment = taRightJustify
      Caption = #1041#1077#1079#1054#1089#1074#1054#1090#1053#1044#1057'_18:'
    end
    object Label86: TLabel
      Tag = 30
      Left = 547
      Top = 40
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073'/'#1053#1077#1076#1086#1073'(1):'
    end
    object Label87: TLabel
      Tag = 32
      Left = 529
      Top = 72
      Width = 102
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1090#1086#1075#1044#1086#1087#1057#1073#1086#1088'_RUB:'
    end
    object Label88: TLabel
      Tag = 33
      Left = 570
      Top = 88
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1058#1054#1043'_RUB:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label89: TLabel
      Tag = 34
      Left = 551
      Top = 105
      Width = 80
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1090#1086#1075#1053#1044#1057'_RUB:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label90: TLabel
      Tag = 35
      Left = 547
      Top = 120
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073'/'#1053#1077#1076#1086#1073'(2):'
    end
    object Label91: TLabel
      Tag = 36
      Left = 547
      Top = 136
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073'/'#1053#1077#1076#1086#1073'(3):'
    end
    object Label92: TLabel
      Tag = 37
      Left = 547
      Top = 152
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073'/'#1053#1077#1076#1086#1073'(4):'
    end
    object Label93: TLabel
      Tag = 38
      Left = 547
      Top = 169
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073'/'#1053#1077#1076#1086#1073'(5):'
    end
    object Label94: TLabel
      Tag = 63
      Left = 547
      Top = 243
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073'/'#1053#1077#1076#1086#1073'(6):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label95: TLabel
      Tag = 61
      Left = 534
      Top = 211
      Width = 97
      Height = 13
      Alignment = taRightJustify
      Caption = #1041#1077#1079#1054#1089#1074#1054#1090#1053#1044#1057'_20:'
    end
    object Label96: TLabel
      Tag = 62
      Left = 553
      Top = 227
      Width = 78
      Height = 13
      Alignment = taRightJustify
      Caption = #1054#1089#1074#1054#1090#1053#1044#1057'_18:'
    end
    object Label97: TLabel
      Tag = 64
      Left = 547
      Top = 259
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073'/'#1053#1077#1076#1086#1073'(7):'
    end
    object Label98: TLabel
      Tag = 65
      Left = 505
      Top = 278
      Width = 126
      Height = 13
      Alignment = taRightJustify
      Caption = #1041#1077#1079#1054#1089#1074#1054#1090#1053#1044#1057'_18_RUB:'
    end
    object Label99: TLabel
      Tag = 66
      Left = 547
      Top = 294
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073'/'#1053#1077#1076#1086#1073'(8):'
    end
    object Label100: TLabel
      Left = 704
      Top = 25
      Width = 6
      Height = 13
      Caption = '1'
    end
    object Label101: TLabel
      Left = 705
      Top = 56
      Width = 6
      Height = 13
      Caption = '2'
    end
    object Label102: TLabel
      Left = 705
      Top = 73
      Width = 6
      Height = 13
      Caption = '3'
    end
    object Label103: TLabel
      Left = 705
      Top = 89
      Width = 6
      Height = 13
      Caption = '4'
    end
    object Label104: TLabel
      Left = 705
      Top = 105
      Width = 6
      Height = 13
      Caption = '5'
    end
    object Label105: TLabel
      Left = 705
      Top = 212
      Width = 6
      Height = 13
      Caption = '6'
    end
    object Label106: TLabel
      Left = 705
      Top = 227
      Width = 6
      Height = 13
      Caption = '7'
    end
    object Label107: TLabel
      Left = 705
      Top = 278
      Width = 6
      Height = 13
      Caption = '8'
    end
    object Label108: TLabel
      Tag = 63
      Left = 530
      Top = 347
      Width = 101
      Height = 13
      Alignment = taRightJustify
      Caption = #1057#1073#1086#1088#1054#1093#1088#1072#1085'_7('#1087#1088#1080#1073'):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label109: TLabel
      Tag = 61
      Left = 530
      Top = 315
      Width = 101
      Height = 13
      Alignment = taRightJustify
      Caption = #1054#1093#1088#1072#1085'_RUB_6('#1086#1090#1087#1088')'
    end
    object Label110: TLabel
      Tag = 62
      Left = 506
      Top = 331
      Width = 125
      Height = 13
      Alignment = taRightJustify
      Caption = #1054#1093#1088#1072#1085#1053#1044#1057'_RUB_6('#1086#1090#1087#1088':'
    end
    object Label111: TLabel
      Tag = 64
      Left = 531
      Top = 363
      Width = 100
      Height = 13
      Alignment = taRightJustify
      Caption = #1053#1044#1057#1054#1093#1088#1072#1085'_7('#1087#1088#1080#1073'):'
    end
    object Label112: TLabel
      Tag = 63
      Left = 523
      Top = 415
      Width = 109
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073'/'#1053#1077#1076#1086#1073#1050#1086#1076'_20:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label113: TLabel
      Tag = 61
      Left = 568
      Top = 383
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1090#1086#1075#1086#1050#1086#1076'_5:'
    end
    object Label114: TLabel
      Tag = 62
      Left = 574
      Top = 399
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = #1053#1044#1057#1050#1086#1076'_5:'
    end
    object Label115: TLabel
      Tag = 64
      Left = 568
      Top = 431
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = #1053#1044#1057#1050#1086#1076'_20:'
    end
    object Label116: TLabel
      Tag = 63
      Left = 494
      Top = 479
      Width = 138
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1077#1088#1077#1073'/'#1053#1077#1076#1086#1073#1050#1086#1076'_20(RUB):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label117: TLabel
      Tag = 61
      Left = 539
      Top = 447
      Width = 93
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1090#1086#1075#1086#1050#1086#1076'_5(RUB):'
    end
    object Label118: TLabel
      Tag = 62
      Left = 545
      Top = 463
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = #1053#1044#1057#1050#1086#1076'_5(RUB):'
    end
    object Label119: TLabel
      Tag = 64
      Left = 539
      Top = 495
      Width = 93
      Height = 13
      Alignment = taRightJustify
      Caption = #1053#1044#1057#1050#1086#1076'_20(RUB):'
    end
    object Label120: TLabel
      Tag = 64
      Left = 359
      Top = 462
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = #1064#1090#1088#1072#1092'_RUB:'
    end
    object Label146: TLabel
      Tag = 28
      Left = 4
      Top = 516
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = #1055#1088#1086#1076#1055#1077#1088#1077#1088#1072#1073':'
    end
    object Label147: TLabel
      Tag = 9
      Left = 27
      Top = 177
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = #1060#1072#1082#1090#1042#1077#1089':'
    end
    object Label153: TLabel
      Tag = 63
      Left = 565
      Top = 187
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = #1048#1090#1086#1075'_RUB:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label157: TLabel
      Tag = 64
      Left = 584
      Top = 515
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = #1054#1090#1095'.'#1076#1077#1085#1100':'
    end
    object Label160: TLabel
      Tag = 73
      Left = 336
      Top = 423
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = #1050#1091#1088#1089' CHF<->RUB:'
    end
    object BitBtn1: TBitBtn
      Left = 321
      Top = 491
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 78
      Top = 30
      AutoSize = False
      DataBinding.DataField = 'o_ndser'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 1
      Height = 19
      Width = 70
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Tag = 1
      Left = 78
      Top = 46
      AutoSize = False
      DataBinding.DataField = 'o_ndnum'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 2
      Height = 19
      Width = 70
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Tag = 2
      Left = 78
      Top = 62
      AutoSize = False
      DataBinding.DataField = 'o_fkat'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 3
      Height = 19
      Width = 70
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Tag = 3
      Left = 78
      Top = 78
      AutoSize = False
      DataBinding.DataField = 'o_nvag'
      DataBinding.DataSource = DS_FactIncFull
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 19
      Width = 99
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Tag = 4
      Left = 78
      Top = 94
      AutoSize = False
      DataBinding.DataField = 'o_nkont'
      DataBinding.DataSource = DS_FactIncFull
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 19
      Width = 99
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Tag = 5
      Left = 78
      Top = 110
      AutoSize = False
      DataBinding.DataField = 'o_fsob'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 6
      Height = 19
      Width = 70
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Tag = 6
      Left = 78
      Top = 126
      AutoSize = False
      DataBinding.DataField = 'o_fkv'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 7
      Height = 19
      Width = 70
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Tag = 7
      Left = 78
      Top = 190
      AutoSize = False
      DataBinding.DataField = 'o_grp'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 8
      Height = 19
      Width = 70
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Tag = 8
      Left = 78
      Top = 142
      AutoSize = False
      DataBinding.DataField = 'o_dataot'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 9
      Height = 19
      Width = 70
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Tag = -9
      Left = 78
      Top = 158
      AutoSize = False
      DataBinding.DataField = 'p_datpr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 10
      Height = 19
      Width = 70
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Tag = 10
      Left = 78
      Top = 206
      AutoSize = False
      DataBinding.DataField = 'o_grves'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 11
      Height = 19
      Width = 70
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Tag = 11
      Left = 78
      Top = 222
      AutoSize = False
      DataBinding.DataField = 'o_gpmar'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 12
      Height = 19
      Width = 70
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Tag = 12
      Left = 78
      Top = 238
      AutoSize = False
      DataBinding.DataField = 'o_fexan'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 13
      Height = 19
      Width = 70
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Tag = 17
      Left = 78
      Top = 318
      AutoSize = False
      DataBinding.DataField = 'o_fsd'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 14
      Height = 19
      Width = 70
    end
    object cxDBTextEdit15: TcxDBTextEdit
      Tag = 18
      Left = 78
      Top = 334
      AutoSize = False
      DataBinding.DataField = 'o_stn'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 15
      Height = 19
      Width = 70
    end
    object cxDBTextEdit16: TcxDBTextEdit
      Tag = 19
      Left = 78
      Top = 350
      AutoSize = False
      DataBinding.DataField = 'o_stnm'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 16
      Height = 19
      Width = 70
    end
    object cxDBTextEdit17: TcxDBTextEdit
      Tag = 20
      Left = 78
      Top = 366
      AutoSize = False
      DataBinding.DataField = 'o_gng'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 17
      Height = 19
      Width = 70
    end
    object cxDBTextEdit18: TcxDBTextEdit
      Tag = 16
      Left = 78
      Top = 302
      AutoSize = False
      DataBinding.DataField = 'o_strn'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 18
      Height = 19
      Width = 70
    end
    object cxDBTextEdit19: TcxDBTextEdit
      Tag = 15
      Left = 78
      Top = 286
      AutoSize = False
      DataBinding.DataField = 'o_sto'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 19
      Height = 19
      Width = 70
    end
    object cxDBTextEdit20: TcxDBTextEdit
      Tag = 14
      Left = 78
      Top = 270
      AutoSize = False
      DataBinding.DataField = 'o_do'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 20
      Height = 19
      Width = 70
    end
    object cxDBTextEdit21: TcxDBTextEdit
      Tag = 13
      Left = 78
      Top = 254
      AutoSize = False
      DataBinding.DataField = 'o_stro'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 21
      Height = 19
      Width = 70
    end
    object cxDBTextEdit22: TcxDBTextEdit
      Tag = 25
      Left = 78
      Top = 446
      AutoSize = False
      DataBinding.DataField = 'o_poluchgr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 22
      Height = 19
      Width = 70
    end
    object cxDBTextEdit23: TcxDBTextEdit
      Tag = 26
      Left = 78
      Top = 462
      AutoSize = False
      DataBinding.DataField = 'o_podkod'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 23
      Height = 19
      Width = 70
    end
    object cxDBTextEdit24: TcxDBTextEdit
      Tag = 27
      Left = 78
      Top = 478
      AutoSize = False
      DataBinding.DataField = 'o_nomtlg'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 24
      Height = 19
      Width = 70
    end
    object cxDBTextEdit25: TcxDBTextEdit
      Tag = 28
      Left = 78
      Top = 494
      AutoSize = False
      DataBinding.DataField = 'o_codag'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 25
      Height = 19
      Width = 70
    end
    object cxDBTextEdit26: TcxDBTextEdit
      Tag = 24
      Left = 78
      Top = 430
      AutoSize = False
      DataBinding.DataField = 'o_otprgr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 26
      Height = 19
      Width = 70
    end
    object cxDBTextEdit27: TcxDBTextEdit
      Tag = 23
      Left = 78
      Top = 414
      AutoSize = False
      DataBinding.DataField = 'o_cit'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 27
      Height = 19
      Width = 70
    end
    object cxDBTextEdit28: TcxDBTextEdit
      Tag = 22
      Left = 78
      Top = 398
      AutoSize = False
      DataBinding.DataField = 'o_lkr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 28
      Height = 19
      Width = 70
    end
    object cxDBTextEdit29: TcxDBTextEdit
      Tag = 21
      Left = 78
      Top = 382
      AutoSize = False
      DataBinding.DataField = 'o_gruz'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 29
      Height = 19
      Width = 70
    end
    object cxDBTextEdit30: TcxDBTextEdit
      Tag = 33
      Left = 426
      Top = 96
      AutoSize = False
      DataBinding.DataField = 'o_gstav'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 30
      Height = 19
      Width = 73
    end
    object cxDBTextEdit31: TcxDBTextEdit
      Tag = 34
      Left = 426
      Top = 112
      AutoSize = False
      DataBinding.DataField = 'o_koffdato'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 31
      Height = 19
      Width = 73
    end
    object cxDBTextEdit32: TcxDBTextEdit
      Tag = 35
      Left = 426
      Top = 128
      AutoSize = False
      DataBinding.DataField = 'o_fval'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 32
      Height = 19
      Width = 73
    end
    object cxDBTextEdit33: TcxDBTextEdit
      Tag = 36
      Left = 426
      Top = 144
      AutoSize = False
      DataBinding.DataField = 'o_dvdo'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 33
      Height = 19
      Width = 73
    end
    object cxDBTextEdit34: TcxDBTextEdit
      Tag = 32
      Left = 426
      Top = 80
      AutoSize = False
      DataBinding.DataField = 'o_fgrk'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 34
      Height = 19
      Width = 73
    end
    object cxDBTextEdit35: TcxDBTextEdit
      Tag = 31
      Left = 426
      Top = 64
      AutoSize = False
      DataBinding.DataField = 'o_fsobkont'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 35
      Height = 19
      Width = 73
    end
    object cxDBTextEdit36: TcxDBTextEdit
      Tag = 30
      Left = 426
      Top = 48
      AutoSize = False
      DataBinding.DataField = 'o_kolprov'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 36
      Height = 19
      Width = 73
    end
    object cxDBTextEdit37: TcxDBTextEdit
      Tag = 29
      Left = 426
      Top = 32
      AutoSize = False
      DataBinding.DataField = 'o_rodv'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 37
      Height = 19
      Width = 73
    end
    object cxDBTextEdit38: TcxDBTextEdit
      Tag = 77
      Left = 246
      Top = 514
      AutoSize = False
      DataBinding.DataField = 'o_gruz_name'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 38
      Height = 19
      Width = 256
    end
    object cxDBTextEdit42: TcxDBTextEdit
      Tag = 76
      Left = 246
      Top = 498
      AutoSize = False
      DataBinding.DataField = 'o_stn_name'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 39
      Height = 19
      Width = 256
    end
    object cxDBTextEdit43: TcxDBTextEdit
      Tag = 75
      Left = 246
      Top = 482
      AutoSize = False
      DataBinding.DataField = 'o_sto_name'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 40
      Height = 19
      Width = 256
    end
    object cxDBTextEdit44: TcxDBTextEdit
      Tag = 38
      Left = 426
      Top = 176
      AutoSize = False
      DataBinding.DataField = 'o_god'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 41
      Height = 19
      Width = 73
    end
    object cxDBTextEdit45: TcxDBTextEdit
      Tag = 37
      Left = 426
      Top = 160
      AutoSize = False
      DataBinding.DataField = 'o_om'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 42
      Height = 19
      Width = 73
    end
    object cxDBTextEdit39: TcxDBTextEdit
      Tag = 39
      Left = 246
      Top = 32
      AutoSize = False
      DataBinding.DataField = 'o_plmps'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 43
      Height = 19
      Width = 73
    end
    object cxDBTextEdit40: TcxDBTextEdit
      Tag = 40
      Left = 246
      Top = 48
      AutoSize = False
      DataBinding.DataField = 'o_gds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 44
      Height = 19
      Width = 73
    end
    object cxDBTextEdit41: TcxDBTextEdit
      Tag = 41
      Left = 246
      Top = 64
      AutoSize = False
      DataBinding.DataField = 'o_itog'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 45
      Height = 19
      Width = 73
    end
    object cxDBTextEdit46: TcxDBTextEdit
      Tag = 42
      Left = 246
      Top = 80
      AutoSize = False
      DataBinding.DataField = 'o_nds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 46
      Height = 19
      Width = 73
    end
    object cxDBTextEdit47: TcxDBTextEdit
      Tag = 43
      Left = 246
      Top = 166
      AutoSize = False
      DataBinding.DataField = 'o_tipzap'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 47
      Height = 19
      Width = 73
    end
    object cxDBTextEdit48: TcxDBTextEdit
      Tag = 44
      Left = 246
      Top = 182
      AutoSize = False
      DataBinding.DataField = 'o_fm'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 48
      Height = 19
      Width = 73
    end
    object cxDBTextEdit49: TcxDBTextEdit
      Tag = 45
      Left = 246
      Top = 198
      AutoSize = False
      DataBinding.DataField = 'o_idkor'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 49
      Height = 19
      Width = 73
    end
    object cxDBTextEdit50: TcxDBTextEdit
      Tag = 46
      Left = 246
      Top = 214
      AutoSize = False
      DataBinding.DataField = 'o_idnew'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 50
      Height = 19
      Width = 73
    end
    object cxDBTextEdit51: TcxDBTextEdit
      Tag = 47
      Left = 246
      Top = 230
      AutoSize = False
      DataBinding.DataField = 'o_idnew2'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 51
      Height = 19
      Width = 73
    end
    object cxDBTextEdit52: TcxDBTextEdit
      Tag = 48
      Left = 246
      Top = 246
      AutoSize = False
      DataBinding.DataField = 'o_gnsx'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 52
      Height = 19
      Width = 73
    end
    object cxDBTextEdit53: TcxDBTextEdit
      Tag = 49
      Left = 246
      Top = 262
      AutoSize = False
      DataBinding.DataField = 'o_ns'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 53
      Height = 19
      Width = 73
    end
    object cxDBTextEdit54: TcxDBTextEdit
      Tag = 50
      Left = 246
      Top = 278
      AutoSize = False
      DataBinding.DataField = 'o_DateOtVz'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 54
      Height = 19
      Width = 73
    end
    object cxDBTextEdit55: TcxDBTextEdit
      Tag = 51
      Left = 246
      Top = 294
      AutoSize = False
      DataBinding.DataField = 'o_vohr6itg'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 55
      Height = 19
      Width = 73
    end
    object cxDBTextEdit56: TcxDBTextEdit
      Tag = 52
      Left = 246
      Top = 310
      AutoSize = False
      DataBinding.DataField = 'o_vohr6nds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 56
      Height = 19
      Width = 73
    end
    object cxDBTextEdit57: TcxDBTextEdit
      Tag = 53
      Left = 246
      Top = 329
      AutoSize = False
      DataBinding.DataField = 'pereb_plmp'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 57
      Height = 19
      Width = 73
    end
    object cxDBTextEdit58: TcxDBTextEdit
      Tag = 54
      Left = 246
      Top = 345
      AutoSize = False
      DataBinding.DataField = 'pereb_gds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 58
      Height = 19
      Width = 73
    end
    object cxDBTextEdit59: TcxDBTextEdit
      Tag = 55
      Left = 246
      Top = 361
      AutoSize = False
      DataBinding.DataField = 'pereb_itog'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 59
      Height = 19
      Width = 73
    end
    object cxDBTextEdit60: TcxDBTextEdit
      Tag = 56
      Left = 246
      Top = 377
      AutoSize = False
      DataBinding.DataField = 'pereb_nds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 60
      Height = 19
      Width = 73
    end
    object cxDBTextEdit61: TcxDBTextEdit
      Tag = 57
      Left = 246
      Top = 396
      AutoSize = False
      DataBinding.DataField = 'nedob_plmp'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 61
      Height = 19
      Width = 73
    end
    object cxDBTextEdit62: TcxDBTextEdit
      Tag = 58
      Left = 246
      Top = 412
      AutoSize = False
      DataBinding.DataField = 'nedob_gds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 62
      Height = 19
      Width = 73
    end
    object cxDBTextEdit63: TcxDBTextEdit
      Tag = 59
      Left = 246
      Top = 428
      AutoSize = False
      DataBinding.DataField = 'nedob_itog'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 63
      Height = 19
      Width = 73
    end
    object cxDBTextEdit64: TcxDBTextEdit
      Tag = 60
      Left = 246
      Top = 444
      AutoSize = False
      DataBinding.DataField = 'nedob_nds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 64
      Height = 19
      Width = 73
    end
    object cxDBTextEdit65: TcxDBTextEdit
      Tag = 61
      Left = 426
      Top = 198
      AutoSize = False
      DataBinding.DataField = 'itog_plmps'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 65
      Height = 19
      Width = 73
    end
    object cxDBTextEdit66: TcxDBTextEdit
      Tag = 62
      Left = 426
      Top = 214
      AutoSize = False
      DataBinding.DataField = 'itog_gds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 66
      Height = 19
      Width = 73
    end
    object cxDBTextEdit67: TcxDBTextEdit
      Tag = 63
      Left = 426
      Top = 230
      AutoSize = False
      DataBinding.DataField = 'itog_itog'
      DataBinding.DataSource = DS_FactIncFull
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 67
      Height = 19
      Width = 73
    end
    object cxDBTextEdit68: TcxDBTextEdit
      Tag = 64
      Left = 426
      Top = 246
      AutoSize = False
      DataBinding.DataField = 'itog_nds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 68
      Height = 19
      Width = 73
    end
    object cxDBTextEdit69: TcxDBTextEdit
      Tag = 65
      Left = 426
      Top = 265
      AutoSize = False
      DataBinding.DataField = 'delta_plmp'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 69
      Height = 19
      Width = 73
    end
    object cxDBTextEdit70: TcxDBTextEdit
      Tag = 66
      Left = 426
      Top = 281
      AutoSize = False
      DataBinding.DataField = 'delta_gds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 70
      Height = 19
      Width = 73
    end
    object cxDBTextEdit71: TcxDBTextEdit
      Tag = 70
      Left = 426
      Top = 348
      AutoSize = False
      DataBinding.DataField = 'itog_osn'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 71
      Height = 19
      Width = 73
    end
    object cxDBTextEdit72: TcxDBTextEdit
      Tag = 69
      Left = 426
      Top = 332
      AutoSize = False
      DataBinding.DataField = 'itog_exp'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 72
      Height = 19
      Width = 73
    end
    object cxDBTextEdit73: TcxDBTextEdit
      Tag = 68
      Left = 426
      Top = 313
      AutoSize = False
      DataBinding.DataField = 'delta_nds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 73
      Height = 19
      Width = 73
    end
    object cxDBTextEdit74: TcxDBTextEdit
      Tag = 67
      Left = 426
      Top = 297
      AutoSize = False
      DataBinding.DataField = 'delta_itog'
      DataBinding.DataSource = DS_FactIncFull
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 74
      Height = 19
      Width = 73
    end
    object cxDBTextEdit75: TcxDBTextEdit
      Tag = 74
      Left = 246
      Top = 462
      AutoSize = False
      DataBinding.DataField = 'id_uch'
      DataBinding.DataSource = DS_FactIncFull
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 75
      Height = 19
      Width = 94
    end
    object cxDBTextEdit76: TcxDBTextEdit
      Tag = 73
      Left = 426
      Top = 439
      AutoSize = False
      DataBinding.DataField = 'pss'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 76
      Height = 19
      Width = 73
    end
    object cxDBTextEdit77: TcxDBTextEdit
      Tag = 72
      Left = 426
      Top = 380
      AutoSize = False
      DataBinding.DataField = 'delta_osn'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 77
      Height = 19
      Width = 73
    end
    object cxDBTextEdit78: TcxDBTextEdit
      Tag = 71
      Left = 426
      Top = 364
      AutoSize = False
      DataBinding.DataField = 'delta_exp'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 78
      Height = 19
      Width = 73
    end
    object cxDBTextEdit79: TcxDBTextEdit
      Tag = 73
      Left = 426
      Top = 401
      AutoSize = False
      DataBinding.DataField = 'o_kursdr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 79
      Height = 19
      Width = 73
    end
    object cxDBTextEdit80: TcxDBTextEdit
      Tag = 52
      Left = 246
      Top = 115
      AutoSize = False
      DataBinding.DataField = 'o_vohr6nds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 80
      Height = 19
      Width = 73
    end
    object cxDBTextEdit81: TcxDBTextEdit
      Tag = 51
      Left = 246
      Top = 99
      AutoSize = False
      DataBinding.DataField = 'o_vohr6itg'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 81
      Height = 19
      Width = 73
    end
    object cxDBTextEdit82: TcxDBTextEdit
      Tag = -9
      Left = 246
      Top = 131
      AutoSize = False
      DataBinding.DataField = 'p_vohr7itg'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 82
      Height = 19
      Width = 73
    end
    object cxDBTextEdit83: TcxDBTextEdit
      Tag = -9
      Left = 246
      Top = 147
      AutoSize = False
      DataBinding.DataField = 'P_Vohr7NDS'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 83
      Height = 19
      Width = 73
    end
    object cxDBTextEdit84: TcxDBTextEdit
      Tag = 33
      Left = 632
      Top = 86
      AutoSize = False
      DataBinding.DataField = 'itog_itogr'
      DataBinding.DataSource = DS_FactIncFull
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 84
      Height = 19
      Width = 73
    end
    object cxDBTextEdit85: TcxDBTextEdit
      Tag = 34
      Left = 632
      Top = 102
      AutoSize = False
      DataBinding.DataField = 'itog_ndsr'
      DataBinding.DataSource = DS_FactIncFull
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 85
      Height = 19
      Width = 73
    end
    object cxDBTextEdit86: TcxDBTextEdit
      Tag = 35
      Left = 632
      Top = 118
      AutoSize = False
      DataBinding.DataField = 'delta_plmr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 86
      Height = 19
      Width = 73
    end
    object cxDBTextEdit87: TcxDBTextEdit
      Tag = 36
      Left = 632
      Top = 134
      AutoSize = False
      DataBinding.DataField = 'delta_gdsr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 87
      Height = 19
      Width = 73
    end
    object cxDBTextEdit88: TcxDBTextEdit
      Tag = 32
      Left = 632
      Top = 70
      AutoSize = False
      DataBinding.DataField = 'itog_gdsr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 88
      Height = 19
      Width = 73
    end
    object cxDBTextEdit89: TcxDBTextEdit
      Tag = 31
      Left = 632
      Top = 54
      AutoSize = False
      DataBinding.DataField = 'itog_plmpr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 89
      Height = 19
      Width = 73
    end
    object cxDBTextEdit90: TcxDBTextEdit
      Tag = 30
      Left = 632
      Top = 38
      AutoSize = False
      DataBinding.DataField = 'delta_os18'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 90
      Height = 19
      Width = 73
    end
    object cxDBTextEdit91: TcxDBTextEdit
      Tag = 29
      Left = 632
      Top = 22
      AutoSize = False
      DataBinding.DataField = 'itog_osn18'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 91
      Height = 19
      Width = 73
    end
    object cxDBTextEdit92: TcxDBTextEdit
      Tag = 38
      Left = 632
      Top = 166
      AutoSize = False
      DataBinding.DataField = 'delta_ndsr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 92
      Height = 19
      Width = 73
    end
    object cxDBTextEdit93: TcxDBTextEdit
      Tag = 37
      Left = 632
      Top = 150
      AutoSize = False
      DataBinding.DataField = 'delta_itgr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 93
      Height = 19
      Width = 73
    end
    object cxDBTextEdit94: TcxDBTextEdit
      Tag = 61
      Left = 632
      Top = 208
      AutoSize = False
      DataBinding.DataField = 'itog_osnr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 94
      Height = 19
      Width = 73
    end
    object cxDBTextEdit95: TcxDBTextEdit
      Tag = 62
      Left = 632
      Top = 224
      AutoSize = False
      DataBinding.DataField = 'itog_expr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 95
      Height = 19
      Width = 73
    end
    object cxDBTextEdit96: TcxDBTextEdit
      Tag = 63
      Left = 632
      Top = 240
      AutoSize = False
      DataBinding.DataField = 'delta_osnr'
      DataBinding.DataSource = DS_FactIncFull
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 96
      Height = 19
      Width = 73
    end
    object cxDBTextEdit97: TcxDBTextEdit
      Tag = 64
      Left = 632
      Top = 256
      AutoSize = False
      DataBinding.DataField = 'delta_expr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 97
      Height = 19
      Width = 73
    end
    object cxDBTextEdit98: TcxDBTextEdit
      Tag = 65
      Left = 632
      Top = 275
      AutoSize = False
      DataBinding.DataField = 'itog_os18r'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 98
      Height = 19
      Width = 73
    end
    object cxDBTextEdit99: TcxDBTextEdit
      Tag = 66
      Left = 632
      Top = 291
      AutoSize = False
      DataBinding.DataField = 'delt_os18r'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 99
      Height = 19
      Width = 73
    end
    object cxDBTextEdit100: TcxDBTextEdit
      Tag = 61
      Left = 632
      Top = 312
      AutoSize = False
      DataBinding.DataField = 'o_vhr6itgr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 100
      Height = 19
      Width = 73
    end
    object cxDBTextEdit101: TcxDBTextEdit
      Tag = 62
      Left = 632
      Top = 328
      AutoSize = False
      DataBinding.DataField = 'o_vhr6ndsr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 101
      Height = 19
      Width = 73
    end
    object cxDBTextEdit102: TcxDBTextEdit
      Tag = -9
      Left = 632
      Top = 344
      AutoSize = False
      DataBinding.DataField = 'p_vhr7itgr'
      DataBinding.DataSource = DS_FactIncFull
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 102
      Height = 19
      Width = 73
    end
    object cxDBTextEdit103: TcxDBTextEdit
      Tag = -9
      Left = 632
      Top = 360
      AutoSize = False
      DataBinding.DataField = 'p_vhr7ndsr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 103
      Height = 19
      Width = 73
    end
    object cxDBTextEdit104: TcxDBTextEdit
      Tag = -9
      Left = 633
      Top = 380
      AutoSize = False
      DataBinding.DataField = 'p_td5itg'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 104
      Height = 19
      Width = 73
    end
    object cxDBTextEdit105: TcxDBTextEdit
      Tag = -9
      Left = 633
      Top = 396
      AutoSize = False
      DataBinding.DataField = 'p_td5nds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 105
      Height = 19
      Width = 73
    end
    object cxDBTextEdit106: TcxDBTextEdit
      Tag = -9
      Left = 633
      Top = 412
      AutoSize = False
      DataBinding.DataField = 'p_td20itg'
      DataBinding.DataSource = DS_FactIncFull
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 106
      Height = 19
      Width = 73
    end
    object cxDBTextEdit107: TcxDBTextEdit
      Tag = -9
      Left = 633
      Top = 428
      AutoSize = False
      DataBinding.DataField = 'p_td20nds'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 107
      Height = 19
      Width = 73
    end
    object cxDBTextEdit108: TcxDBTextEdit
      Tag = -9
      Left = 633
      Top = 444
      AutoSize = False
      DataBinding.DataField = 'p_td5itgr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 108
      Height = 19
      Width = 73
    end
    object cxDBTextEdit109: TcxDBTextEdit
      Tag = -9
      Left = 633
      Top = 460
      AutoSize = False
      DataBinding.DataField = 'p_td5ndsr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 109
      Height = 19
      Width = 73
    end
    object cxDBTextEdit110: TcxDBTextEdit
      Tag = -9
      Left = 633
      Top = 476
      AutoSize = False
      DataBinding.DataField = 'p_td20itgr'
      DataBinding.DataSource = DS_FactIncFull
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 110
      Height = 19
      Width = 73
    end
    object cxDBTextEdit111: TcxDBTextEdit
      Tag = -9
      Left = 633
      Top = 492
      AutoSize = False
      DataBinding.DataField = 'p_td20ndsr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 111
      Height = 19
      Width = 73
    end
    object cxDBTextEdit112: TcxDBTextEdit
      Tag = -9
      Left = 426
      Top = 459
      AutoSize = False
      DataBinding.DataField = 'p_shtrafr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 112
      Height = 19
      Width = 73
    end
    object Panel3: TPanel
      Left = 6
      Top = 549
      Width = 472
      Height = 108
      BevelInner = bvLowered
      TabOrder = 113
      object Label121: TLabel
        Tag = 28
        Left = 7
        Top = 88
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = #1057#1090#1088'.'#1087#1083#1072#1090#1077#1078#1072'6:'
      end
      object Label122: TLabel
        Tag = 27
        Left = 7
        Top = 72
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = #1057#1090#1088'.'#1087#1083#1072#1090#1077#1078#1072'5:'
      end
      object Label123: TLabel
        Tag = 26
        Left = 7
        Top = 55
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = #1057#1090#1088'.'#1087#1083#1072#1090#1077#1078#1072'4:'
      end
      object Label124: TLabel
        Tag = 25
        Left = 7
        Top = 39
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = #1057#1090#1088'.'#1087#1083#1072#1090#1077#1078#1072'3:'
      end
      object Label125: TLabel
        Tag = 24
        Left = 7
        Top = 23
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = #1057#1090#1088'.'#1087#1083#1072#1090#1077#1078#1072'2:'
      end
      object Label126: TLabel
        Tag = 23
        Left = 7
        Top = 7
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = #1057#1090#1088'.'#1087#1083#1072#1090#1077#1078#1072'1:'
      end
      object Label127: TLabel
        Tag = 23
        Left = 165
        Top = 7
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1083#1103'1 '#1074' RUB:'
      end
      object Label128: TLabel
        Tag = 24
        Left = 165
        Top = 23
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1083#1103'2 '#1074' RUB:'
      end
      object Label129: TLabel
        Tag = 25
        Left = 165
        Top = 39
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1083#1103'3 '#1074' RUB:'
      end
      object Label130: TLabel
        Tag = 26
        Left = 165
        Top = 55
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1083#1103'4 '#1074' RUB:'
      end
      object Label131: TLabel
        Tag = 27
        Left = 165
        Top = 72
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1083#1103'5 '#1074' RUB:'
      end
      object Label132: TLabel
        Tag = 28
        Left = 165
        Top = 88
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1083#1103'6 '#1074' RUB:'
      end
      object Label133: TLabel
        Tag = 28
        Left = 326
        Top = 88
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1083#1103'6 '#1074' CHF:'
      end
      object Label134: TLabel
        Tag = 27
        Left = 326
        Top = 72
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1083#1103'5 '#1074' CHF:'
      end
      object Label135: TLabel
        Tag = 26
        Left = 326
        Top = 55
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1083#1103'4 '#1074' CHF:'
      end
      object Label136: TLabel
        Tag = 25
        Left = 326
        Top = 39
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1083#1103'3 '#1074' CHF:'
      end
      object Label137: TLabel
        Tag = 24
        Left = 326
        Top = 23
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1083#1103'2 '#1074' CHF:'
      end
      object Label138: TLabel
        Tag = 23
        Left = 326
        Top = 7
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1083#1103'1 '#1074' CHF:'
      end
      object cxDBTextEdit113: TcxDBTextEdit
        Tag = -9
        Left = 81
        Top = 5
        AutoSize = False
        DataBinding.DataField = 'P_StrPlat1'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 0
        Height = 19
        Width = 70
      end
      object cxDBTextEdit114: TcxDBTextEdit
        Tag = -9
        Left = 81
        Top = 21
        AutoSize = False
        DataBinding.DataField = 'P_StrPlat2'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 1
        Height = 19
        Width = 70
      end
      object cxDBTextEdit115: TcxDBTextEdit
        Tag = -9
        Left = 81
        Top = 37
        AutoSize = False
        DataBinding.DataField = 'P_StrPlat3'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 2
        Height = 19
        Width = 70
      end
      object cxDBTextEdit116: TcxDBTextEdit
        Tag = -9
        Left = 81
        Top = 53
        AutoSize = False
        DataBinding.DataField = 'P_StrPlat4'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 3
        Height = 19
        Width = 70
      end
      object cxDBTextEdit117: TcxDBTextEdit
        Tag = -9
        Left = 81
        Top = 69
        AutoSize = False
        DataBinding.DataField = 'P_StrPlat5'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 4
        Height = 19
        Width = 70
      end
      object cxDBTextEdit118: TcxDBTextEdit
        Tag = -9
        Left = 81
        Top = 85
        AutoSize = False
        DataBinding.DataField = 'P_StrPlat6'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 5
        Height = 19
        Width = 70
      end
      object cxDBTextEdit119: TcxDBTextEdit
        Tag = -9
        Left = 237
        Top = 85
        AutoSize = False
        DataBinding.DataField = 'P_Str6ITGR'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 6
        Height = 19
        Width = 70
      end
      object cxDBTextEdit120: TcxDBTextEdit
        Tag = -9
        Left = 237
        Top = 69
        AutoSize = False
        DataBinding.DataField = 'P_Str5ITGR'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 7
        Height = 19
        Width = 70
      end
      object cxDBTextEdit121: TcxDBTextEdit
        Tag = -9
        Left = 237
        Top = 53
        AutoSize = False
        DataBinding.DataField = 'P_Str4ITGR'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 8
        Height = 19
        Width = 70
      end
      object cxDBTextEdit122: TcxDBTextEdit
        Tag = -9
        Left = 237
        Top = 37
        AutoSize = False
        DataBinding.DataField = 'P_Str3ITGR'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 9
        Height = 19
        Width = 70
      end
      object cxDBTextEdit123: TcxDBTextEdit
        Tag = -9
        Left = 237
        Top = 21
        AutoSize = False
        DataBinding.DataField = 'P_Str2ITGR'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 10
        Height = 19
        Width = 70
      end
      object cxDBTextEdit124: TcxDBTextEdit
        Tag = -9
        Left = 237
        Top = 5
        AutoSize = False
        DataBinding.DataField = 'P_Str1ITGR'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 11
        Height = 19
        Width = 70
      end
      object cxDBTextEdit125: TcxDBTextEdit
        Tag = -9
        Left = 396
        Top = 85
        AutoSize = False
        DataBinding.DataField = 'P_Str6ITG'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 12
        Height = 19
        Width = 70
      end
      object cxDBTextEdit126: TcxDBTextEdit
        Tag = -9
        Left = 396
        Top = 5
        AutoSize = False
        DataBinding.DataField = 'P_Str1ITG'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 13
        Height = 19
        Width = 70
      end
      object cxDBTextEdit127: TcxDBTextEdit
        Tag = -9
        Left = 396
        Top = 21
        AutoSize = False
        DataBinding.DataField = 'P_Str2ITG'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 14
        Height = 19
        Width = 70
      end
      object cxDBTextEdit128: TcxDBTextEdit
        Tag = -9
        Left = 396
        Top = 37
        AutoSize = False
        DataBinding.DataField = 'P_Str3ITG'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 15
        Height = 19
        Width = 70
      end
      object cxDBTextEdit129: TcxDBTextEdit
        Tag = -9
        Left = 396
        Top = 53
        AutoSize = False
        DataBinding.DataField = 'P_Str4ITG'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 16
        Height = 19
        Width = 70
      end
      object cxDBTextEdit130: TcxDBTextEdit
        Tag = -9
        Left = 396
        Top = 69
        AutoSize = False
        DataBinding.DataField = 'P_Str5ITG'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 17
        Height = 19
        Width = 70
      end
    end
    object Panel4: TPanel
      Left = 477
      Top = 534
      Width = 190
      Height = 123
      BevelInner = bvLowered
      TabOrder = 114
      object Label139: TLabel
        Tag = 64
        Left = 12
        Top = 7
        Width = 93
        Height = 13
        Alignment = taRightJustify
        Caption = #1048#1090#1086#1075'_'#1055#1072#1088#1086#1093'_RUB:'
      end
      object Label140: TLabel
        Tag = 64
        Left = 12
        Top = 23
        Width = 93
        Height = 13
        Alignment = taRightJustify
        Caption = #1053#1044#1057'_'#1055#1072#1088#1086#1093'_RUB:'
      end
      object Label141: TLabel
        Tag = 64
        Left = 40
        Top = 42
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = #1050#1086#1076#1041#1088#1086#1082#1077#1088'2:'
      end
      object Label142: TLabel
        Tag = 64
        Left = 7
        Top = 57
        Width = 98
        Height = 13
        Alignment = taRightJustify
        Caption = #1048#1090#1086#1075'_'#1058#1044'_'#1041#1088#1086#1082#1077#1088'1:'
      end
      object Label143: TLabel
        Tag = 64
        Left = 7
        Top = 73
        Width = 98
        Height = 13
        Alignment = taRightJustify
        Caption = #1053#1044#1057'_'#1058#1044'_'#1041#1088#1086#1082#1077#1088'1:'
      end
      object Label144: TLabel
        Tag = 64
        Left = 7
        Top = 89
        Width = 98
        Height = 13
        Alignment = taRightJustify
        Caption = #1048#1090#1086#1075'_'#1058#1044'_'#1041#1088#1086#1082#1077#1088'2:'
      end
      object Label145: TLabel
        Tag = 64
        Left = 7
        Top = 105
        Width = 98
        Height = 13
        Alignment = taRightJustify
        Caption = #1053#1044#1057'_'#1058#1044'_'#1041#1088#1086#1082#1077#1088'2:'
      end
      object cxDBTextEdit131: TcxDBTextEdit
        Tag = -9
        Left = 105
        Top = 3
        AutoSize = False
        DataBinding.DataField = 'p_par'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 0
        Height = 19
        Width = 73
      end
      object cxDBTextEdit132: TcxDBTextEdit
        Tag = -9
        Left = 105
        Top = 19
        AutoSize = False
        DataBinding.DataField = 'p_parnds'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 1
        Height = 19
        Width = 73
      end
      object cxDBTextEdit133: TcxDBTextEdit
        Tag = -9
        Left = 105
        Top = 38
        AutoSize = False
        DataBinding.DataField = 'P_KTB2'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 2
        Height = 19
        Width = 73
      end
      object cxDBTextEdit134: TcxDBTextEdit
        Tag = -9
        Left = 105
        Top = 53
        AutoSize = False
        DataBinding.DataField = 'P_TD1ITGR'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 3
        Height = 19
        Width = 73
      end
      object cxDBTextEdit135: TcxDBTextEdit
        Tag = -9
        Left = 105
        Top = 69
        AutoSize = False
        DataBinding.DataField = 'P_TD1NDSR'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 4
        Height = 19
        Width = 73
      end
      object cxDBTextEdit136: TcxDBTextEdit
        Tag = -9
        Left = 105
        Top = 85
        AutoSize = False
        DataBinding.DataField = 'P_TD2ITGR'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 5
        Height = 19
        Width = 73
      end
      object cxDBTextEdit137: TcxDBTextEdit
        Tag = -9
        Left = 105
        Top = 101
        AutoSize = False
        DataBinding.DataField = 'P_TD2NDSR'
        DataBinding.DataSource = DS_FactIncFull
        Properties.ReadOnly = True
        TabOrder = 6
        Height = 19
        Width = 73
      end
    end
    object cxDBTextEdit138: TcxDBTextEdit
      Tag = -9
      Left = 78
      Top = 514
      AutoSize = False
      DataBinding.DataField = 'PRZ01'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 115
      Height = 19
      Width = 70
    end
    object cxDBTextEdit139: TcxDBTextEdit
      Tag = 9
      Left = 78
      Top = 174
      AutoSize = False
      DataBinding.DataField = 'o_vg'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 116
      Height = 19
      Width = 70
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 711
      Height = 19
      Align = alTop
      TabOrder = 117
      object SpeedButton2: TSpeedButton
        Tag = 1
        Left = 121
        Top = 0
        Width = 121
        Height = 19
        GroupIndex = 1
        Caption = #1055#1088#1080#1073#1099#1090#1080#1077
        Transparent = False
        OnClick = SpeedButton1Click
      end
      object SpeedButton1: TSpeedButton
        Left = -6
        Top = 0
        Width = 121
        Height = 19
        GroupIndex = 1
        Down = True
        Caption = #1054#1090#1087#1088#1072#1074#1083#1077#1085#1080#1077
        Transparent = False
        OnClick = SpeedButton1Click
      end
      object SpeedButton3: TSpeedButton
        Left = 243
        Top = 0
        Width = 23
        Height = 19
        Hint = #1055#1077#1095#1072#1090#1100' '#1087#1086#1083#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1074' Excel'
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          88888800000000000888808888888880808800000000000008080888888BBB88
          0008088888877788080800000000000008800888888888808080800000000008
          0800880FFFFFFFF080808880F00000F000088880FFFFFFFF088888880F00000F
          088888880FFFFFFFF08888888000000000888888888888888888}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton3Click
      end
    end
    object cxDBTextEdit140: TcxDBTextEdit
      Tag = 63
      Left = 632
      Top = 182
      AutoSize = False
      DataBinding.DataField = 'itogr'
      DataBinding.DataSource = DS_FactIncFull
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 118
      Height = 20
      Width = 73
    end
    object cxDBTextEdit141: TcxDBTextEdit
      Tag = -9
      Left = 633
      Top = 512
      AutoSize = False
      DataBinding.DataField = 'p_od'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 119
      Height = 19
      Width = 73
    end
    object cxDBTextEdit142: TcxDBTextEdit
      Tag = -9
      Left = 426
      Top = 420
      AutoSize = False
      DataBinding.DataField = 'p_kursfr'
      DataBinding.DataSource = DS_FactIncFull
      Properties.ReadOnly = True
      TabOrder = 120
      Height = 19
      Width = 73
    end
  end
  object Query_FactIncFull: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'fact_inc_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 100
      end>
    SQL.Strings = (
      'select * from view_fact_inc_FULL where fact_inc_id=:fact_inc_id')
    Left = 517
    Top = 9
  end
  object DS_FactIncFull: TDataSource
    DataSet = Query_FactIncFull
    Left = 533
    Top = 26
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
    StorageName = '\Software\Lis1\FactIncCard'
    StorageType = stRegistry
    Left = 323
    Top = 18
  end
  object Query_ListRate: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rate_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'type_tools_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'attr_self'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'select *'
      'from bargain_list_rate'
      'where rate_id = :rate_id'
      'and type_rate = 1'
      'and type_tools_id = :type_tools_id'
      'and attr_self = :attr_self'
      'order by weight')
    Left = 371
    Top = 6
  end
  object Client_AddCollection: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 419
    Top = 8
    object Client_AddCollection_add_vid_name: TStringField
      FieldName = 'add_vid_name'
      Size = 50
    end
    object Client_AddCollection_add_sum: TCurrencyField
      FieldName = 'add_sum'
      currency = False
    end
    object Client_AddCollection_brief_name: TStringField
      FieldName = 'brief_name'
    end
    object Client_AddCollection_add_type_name: TStringField
      FieldName = 'add_type_name'
      Size = 50
    end
    object Client_AddCollection_add_comment: TStringField
      FieldName = 'add_comment'
      Size = 100
    end
    object Client_AddCollection_sum_in_shaping_rate_currency: TCurrencyField
      FieldName = 'sum_in_shaping_rate_currency'
      currency = False
    end
  end
end
