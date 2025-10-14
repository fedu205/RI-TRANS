object fmEtrClaim: TfmEtrClaim
  Left = 0
  Top = 0
  Caption = #1047#1072#1103#1074#1082#1080
  ClientHeight = 755
  ClientWidth = 1204
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 13
  object cxSplitter2: TcxSplitter
    Left = 400
    Top = 144
    Width = 5
    Height = 611
    Control = Panel6
    Color = 8421631
    ParentColor = False
    ExplicitTop = 167
    ExplicitHeight = 588
  end
  object Panel11: TPanel
    Left = 405
    Top = 144
    Width = 799
    Height = 611
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 167
    ExplicitHeight = 588
    object Panel49: TPanel
      Left = 0
      Top = 0
      Width = 799
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object cxLabel249: TcxLabel
        Left = 0
        Top = 0
        Align = alClient
        AutoSize = False
        Caption = #1047#1040#1071#1042#1050#1040
        ParentFont = False
        Style.Font.Charset = RUSSIAN_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taLeftJustify
        Height = 29
        Width = 799
      end
    end
    object GridPanel1: TGridPanel
      Left = 0
      Top = 29
      Width = 799
      Height = 100
      Align = alTop
      BevelOuter = bvNone
      Color = clBtnShadow
      ColumnCollection = <
        item
          Value = 33.500808675100770000
        end
        item
          Value = 33.333051275522470000
        end
        item
          Value = 33.166140049376770000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Panel33
          Row = 0
        end
        item
          Column = 1
          Control = Panel34
          Row = 0
        end
        item
          Column = 2
          Control = Panel35
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 1
      object Panel33: TPanel
        Left = 0
        Top = 0
        Width = 268
        Height = 100
        Align = alClient
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          268
          98)
        object cxLabel18: TcxLabel
          Left = 6
          Top = 6
          Caption = 'ID '#1079#1072#1103#1074#1082#1080'..................'
        end
        object cxTextEdit_claimID: TcxTextEdit
          Left = 99
          Top = 1
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 1
          Text = 'cxTextEdit_claimID'
          Width = 162
        end
        object cxLabel19: TcxLabel
          Left = 6
          Top = 30
          Caption = #8470' '#1079#1072#1103#1074#1082#1080'..........'
        end
        object cxTextEdit_claimNumber: TcxTextEdit
          Left = 99
          Top = 25
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 3
          Text = 'cxTextEdit_claimNumber'
          Width = 162
        end
        object cxLabel20: TcxLabel
          Left = 6
          Top = 54
          Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077'.......................'
        end
        object cxTextEdit_claimState: TcxTextEdit
          Left = 99
          Top = 49
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 5
          Text = 'cxTextEdit_claimState'
          Width = 162
        end
        object cxLabel124: TcxLabel
          Left = 6
          Top = 78
          Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072'..............'
        end
        object cxTextEdit_clmDogNumber: TcxTextEdit
          Left = 99
          Top = 73
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 7
          Text = 'cxTextEdit_clmDogNumber'
          Width = 162
        end
      end
      object Panel34: TPanel
        Left = 268
        Top = 0
        Width = 266
        Height = 100
        Align = alClient
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          266
          98)
        object cxLabel112: TcxLabel
          Left = 5
          Top = 6
          Caption = #1042#1080#1076' '#1086#1090#1087#1088#1072#1074#1082#1080'...................'
        end
        object cxTextEdit_clmSendKindName: TcxTextEdit
          Left = 127
          Top = 1
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 1
          Text = 'cxTextEdit_clmSendKindName'
          Width = 138
        end
        object cxLabel118: TcxLabel
          Left = 5
          Top = 30
          Caption = #1042#1080#1076' '#1089#1086#1086#1073#1097#1077#1085#1080#1103'........................'
        end
        object cxTextEdit_clmMsgKindName: TcxTextEdit
          Left = 127
          Top = 25
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 3
          Text = 'cxTextEdit_clmMsgKindName'
          Width = 138
        end
        object cxLabel119: TcxLabel
          Left = 5
          Top = 54
          Caption = #1044#1072#1090#1072' '#1087#1086#1089#1083'. '#1086#1087#1077#1088#1072#1094#1080#1080'...........'
        end
        object cxTextEdit_clmLastOper: TcxTextEdit
          Left = 127
          Top = 49
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 5
          Text = 'cxTextEdit_clmLastOper'
          Width = 138
        end
        object cxLabel125: TcxLabel
          Left = 5
          Top = 78
          Caption = #1058#1080#1087' '#1057#1055#1057'........................'
        end
        object cxTextEdit_clmCarOwnerTypeName: TcxTextEdit
          Left = 127
          Top = 73
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 7
          Text = 'cxTextEdit_clmCarOwnerTypeName'
          Width = 138
        end
      end
      object Panel35: TPanel
        Left = 534
        Top = 0
        Width = 265
        Height = 100
        Align = alClient
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          265
          98)
        object cxLabel126: TcxLabel
          Left = 5
          Top = 6
          Caption = #1057#1087#1086#1089#1086#1073' '#1087#1086#1076#1072#1095#1080'...................'
        end
        object cxTextEdit_clmTypePodName: TcxTextEdit
          Left = 127
          Top = 1
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 1
          Text = 'cxTextEdit_clmTypePodName'
          Width = 138
        end
        object cxLabel171: TcxLabel
          Left = 5
          Top = 30
          Caption = #8470' '#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080'........................'
        end
        object cxTextEdit_claimVersion: TcxTextEdit
          Left = 127
          Top = 25
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 3
          Text = 'cxTextEdit_claimVersion'
          Width = 138
        end
        object cxLabel172: TcxLabel
          Left = 5
          Top = 54
          Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'...........'
        end
        object cxTextEdit_claimRegDate: TcxTextEdit
          Left = 127
          Top = 49
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 5
          Text = 'cxTextEdit_claimRegDate'
          Width = 138
        end
        object cxLabel173: TcxLabel
          Left = 5
          Top = 78
          Caption = #1058#1080#1087' '#1087#1083#1072#1085#1072'........................'
        end
        object cxTextEdit_clmPlanType: TcxTextEdit
          Left = 127
          Top = 73
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 7
          Text = 'cxTextEdit_clmPlanType'
          Width = 138
        end
      end
    end
    object GridPanel9: TGridPanel
      Left = 0
      Top = 137
      Width = 799
      Height = 103
      Align = alTop
      BevelOuter = bvNone
      Color = clBtnShadow
      ColumnCollection = <
        item
          Value = 50.000000000000040000
        end
        item
          Value = 49.999999999999960000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Panel36
          Row = 0
        end
        item
          Column = 1
          Control = Panel37
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 2
      object Panel36: TPanel
        Left = 0
        Top = 0
        Width = 400
        Height = 103
        Align = alClient
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          400
          101)
        object cxLabel174: TcxLabel
          Left = 6
          Top = 74
          Caption = #1054#1050#1055#1054'...............'
        end
        object cxLabel175: TcxLabel
          Left = 141
          Top = 74
          Caption = #1058#1043#1053#1051'..........'
        end
        object cxLabel176: TcxLabel
          Left = 5
          Top = 2
          Caption = #1043#1088#1091#1079#1086#1086#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
        end
        object cxTextEdit_clmSenderName: TcxTextEdit
          Left = 6
          Top = 21
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 1
          Text = 'cxTextEdit_clmSenderName'
          Width = 391
        end
        object cxTextEdit_clmSenderAddress: TcxTextEdit
          Left = 6
          Top = 45
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 2
          Text = 'cxTextEdit_clmSenderAddress'
          Width = 391
        end
        object cxTextEdit_clmSenderOKPO: TcxTextEdit
          Left = 43
          Top = 69
          Style.Shadow = True
          TabOrder = 3
          Text = 'cxTextEdit_clmSenderOKPO'
          Width = 93
        end
        object cxTextEdit_clmSenderTGNL: TcxTextEdit
          Left = 175
          Top = 69
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 4
          Text = 'cxTextEdit_clmSenderTGNL'
          Width = 222
        end
      end
      object Panel37: TPanel
        Left = 400
        Top = 0
        Width = 399
        Height = 103
        Align = alClient
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          399
          101)
        object cxLabel177: TcxLabel
          Left = 5
          Top = 7
          Caption = #1057#1090#1088'. '#1086#1090#1087#1088'........................'
        end
        object cxLabel178: TcxLabel
          Left = 5
          Top = 31
          Caption = #1057#1090'. '#1086#1090#1087#1088'........................'
        end
        object cxLabel179: TcxLabel
          Left = 5
          Top = 55
          Caption = #1057#1090'. '#1074#1093' '#1074' '#1056#1060'............................'
        end
        object cxTextEdit_clmFromCountryName: TcxTextEdit
          Left = 80
          Top = 2
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 0
          Text = 'cxTextEdit_clmFromCountryName'
          Width = 269
        end
        object cxTextEdit_clmFromCountryCode: TcxTextEdit
          Left = 348
          Top = 2
          Anchors = [akTop, akRight]
          Style.Shadow = True
          TabOrder = 1
          Text = 'cxTextEdit_clmFromCountryCode'
          Width = 54
        end
        object cxTextEdit_clmFromStationCode: TcxTextEdit
          Left = 348
          Top = 26
          Anchors = [akTop, akRight]
          Style.Shadow = True
          TabOrder = 2
          Text = 'cxTextEdit_clmFromStationCode'
          Width = 54
        end
        object cxTextEdit_clmFromStationName: TcxTextEdit
          Left = 80
          Top = 26
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 3
          Text = 'cxTextEdit_clmFromStationName'
          Width = 269
        end
        object cxTextEdit_clmEnterStationName: TcxTextEdit
          Left = 80
          Top = 50
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 4
          Text = 'cxTextEdit_clmEnterStationName'
          Width = 269
        end
        object cxTextEdit_clmEnterStationCode: TcxTextEdit
          Left = 348
          Top = 50
          Anchors = [akTop, akRight]
          Style.Shadow = True
          TabOrder = 5
          Text = 'cxTextEdit_clmEnterStationCode'
          Width = 54
        end
        object cxLabel183: TcxLabel
          Left = 5
          Top = 79
          Caption = #1043#1088#1091#1087#1087#1072' '#1075#1088#1091#1079#1072'............................'
        end
        object cxTextEdit_clmFreightGroupName: TcxTextEdit
          Left = 80
          Top = 74
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 10
          Text = 'cxTextEdit_clmFreightGroupName'
          Width = 269
        end
        object cxTextEdit_clmFreightGroupCode: TcxTextEdit
          Left = 348
          Top = 73
          Anchors = [akTop, akRight]
          Style.Shadow = True
          TabOrder = 11
          Text = 'cxTextEdit_clmFreightGroupCode'
          Width = 54
        end
      end
    end
    object GridPanel10: TGridPanel
      Left = 0
      Top = 248
      Width = 799
      Height = 103
      Align = alTop
      BevelOuter = bvNone
      Color = clBtnShadow
      ColumnCollection = <
        item
          Value = 50.000000000000040000
        end
        item
          Value = 49.999999999999960000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Panel38
          Row = 0
        end
        item
          Column = 1
          Control = Panel39
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 3
      object Panel38: TPanel
        Left = 0
        Top = 0
        Width = 400
        Height = 103
        Align = alClient
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          400
          101)
        object cxLabel180: TcxLabel
          Left = 5
          Top = 31
          Caption = #1044#1072#1090#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103' '#1074#1083#1072#1076#1077#1083#1100#1094#1077#1084' '#1087#1086#1076'. '#1087#1091#1090#1080'...............'
        end
        object cxLabel182: TcxLabel
          Left = 5
          Top = 7
          Caption = #1042#1083#1072#1076#1077#1083#1077#1094' '#1087#1086#1076#1098#1077#1079#1076#1085#1086#1075#1086' '#1087#1091#1090#1080'.....................'
        end
        object cxTextEdit_clmLoadWayOwnerName: TcxTextEdit
          Left = 161
          Top = 1
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 0
          Text = 'cxTextEdit_clmLoadWayOwnerName'
          Width = 159
        end
        object cxTextEdit_clmLoadWayOwnerAgreementDate: TcxTextEdit
          Left = 256
          Top = 25
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 1
          Text = 'cxTextEdit_clmLoadWayOwnerAgreementDate'
          Width = 141
        end
        object cxLabel181: TcxLabel
          Left = 5
          Top = 54
          Caption = #1058#1080#1087' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103' '#1089' '#1074#1083#1072#1076#1077#1083#1100#1094#1077#1084' '#1087#1086#1076'. '#1087#1091#1090#1080'..................'
        end
        object cxLabel184: TcxLabel
          Left = 5
          Top = 79
          Caption = #1054#1090#1084#1077#1090#1082#1072' '#1086' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1080' '#1074#1083#1072#1076#1077#1083#1100#1094#1077#1084' '#1087#1086#1076'. '#1087#1091#1090#1080'.................'
        end
        object cxTextEdit_clmLoadWayOwnerSoglType: TcxTextEdit
          Left = 257
          Top = 49
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 6
          Text = 'cxTextEdit_clmLoadWayOwnerSoglType'
          Width = 140
        end
        object cxTextEdit_clmLoadWayOwnerNote: TcxTextEdit
          Left = 257
          Top = 73
          Anchors = [akLeft, akTop, akRight]
          Style.Shadow = True
          TabOrder = 7
          Text = 'cxTextEdit_clmLoadWayOwnerNote'
          Width = 140
        end
        object cxTextEdit_clmLoadWayOwnerOKPO: TcxTextEdit
          Left = 320
          Top = 1
          Anchors = [akTop, akRight]
          Style.Shadow = True
          TabOrder = 8
          Text = 'cxTextEdit_clmLoadWayOwnerOKPO'
          Width = 77
        end
      end
      object Panel39: TPanel
        Left = 400
        Top = 0
        Width = 399
        Height = 103
        Align = alClient
        BevelEdges = [beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          399
          101)
        object cxLabel185: TcxLabel
          Left = 5
          Top = 31
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        end
        object cxLabel186: TcxLabel
          Left = 5
          Top = 7
          Caption = #1055#1077#1088#1080#1086#1076' '#1087#1077#1088#1077#1074#1086#1079#1082#1080'.....................'
        end
        object cxTextEdit_clmStartDate: TcxTextEdit
          Left = 161
          Top = 1
          Style.Shadow = True
          TabOrder = 0
          Text = 'cxTextEdit_clmStartDate'
          Width = 100
        end
        object cxTextEdit_clmFinishDate: TcxTextEdit
          Left = 261
          Top = 1
          Style.Shadow = True
          TabOrder = 3
          Text = 'cxTextEdit_clmFinishDate'
          Width = 100
        end
        object cxMemo_clmNote: TcxMemo
          Tag = 37
          Left = 6
          Top = 47
          Anchors = [akLeft, akTop, akRight]
          Properties.MaxLength = 255
          Properties.WantReturns = False
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.ScrollbarMode = sbmClassic
          Style.Shadow = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
          StyleReadOnly.LookAndFeel.Kind = lfUltraFlat
          StyleReadOnly.LookAndFeel.ScrollbarMode = sbmClassic
          TabOrder = 4
          Height = 50
          Width = 394
        end
      end
    end
    object cxSplitter9: TcxSplitter
      Left = 0
      Top = 129
      Width = 799
      Height = 8
      HotZoneClassName = 'TcxSimpleStyle'
      AlignSplitter = salTop
      Control = GridPanel1
    end
    object cxSplitter10: TcxSplitter
      Left = 0
      Top = 240
      Width = 799
      Height = 8
      HotZoneClassName = 'TcxSimpleStyle'
      AlignSplitter = salTop
      Control = GridPanel9
    end
    object cxSplitter11: TcxSplitter
      Left = 0
      Top = 351
      Width = 799
      Height = 8
      HotZoneClassName = 'TcxSimpleStyle'
      AlignSplitter = salTop
      Control = GridPanel10
    end
    object cxPageControl4: TcxPageControl
      Left = 0
      Top = 359
      Width = 799
      Height = 252
      Align = alClient
      TabOrder = 7
      Properties.ActivePage = cxTabSheet2
      Properties.CustomButtons.Buttons = <>
      OnChange = cxPageControl4Change
      OnDrawTabEx = cxPageControl4DrawTabEx
      ExplicitHeight = 229
      ClientRectBottom = 252
      ClientRectRight = 799
      ClientRectTop = 24
      object cxTabSheet2: TcxTabSheet
        Tag = 1
        Caption = #1054#1090#1087#1088#1072#1074#1082#1080
        ImageIndex = 0
        ExplicitHeight = 205
        object Panel40: TPanel
          Left = 0
          Top = 122
          Width = 799
          Height = 106
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitTop = 99
          object Panel41: TPanel
            Left = 0
            Top = 0
            Width = 449
            Height = 106
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object cxGrid23: TcxGrid
              Left = 0
              Top = 0
              Width = 449
              Height = 106
              Align = alClient
              TabOrder = 0
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.ScrollbarMode = sbmClassic
              object cxGridDBBandedTableView20: TcxGridDBBandedTableView
                PopupMenu = dxBarPopupMenu1
                OnKeyPress = cxGridDBBandedTableView20KeyPress
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                OnCustomDrawCell = cxGridDBBandedTableView20CustomDrawCell
                OnFocusedItemChanged = cxGridDBBandedTableView20FocusedItemChanged
                DataController.DataSource = DS_otprGraphPod
                DataController.Filter.Options = [fcoCaseInsensitive]
                DataController.Filter.OnChanged = cxGridDBBandedTableView20FilterOnChanged
                DataController.Filter.Active = True
                DataController.KeyFieldNames = 'otprStyk_id'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skCount
                    Column = cxGridDBBandedTableView20gpPodNum
                  end
                  item
                    Kind = skSum
                    Column = cxGridDBBandedTableView20gpCarCount
                  end
                  item
                    Kind = skSum
                    Column = cxGridDBBandedTableView20gpCarCountRefuse
                  end
                  item
                    Kind = skSum
                    Column = cxGridDBBandedTableView20gpWeight
                  end
                  item
                    Kind = skSum
                    Column = cxGridDBBandedTableView20gpWeightRefuse
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
                OnCustomDrawColumnHeader = cxGridDBBandedTableView20CustomDrawColumnHeader
                OnCustomDrawFooterCell = cxGridDBBandedTableView20CustomDrawColumnHeader
                Bands = <
                  item
                    Caption = #1043#1088#1072#1092#1080#1082' '#1087#1086#1076#1072#1095#1080
                  end>
                object cxGridDBBandedTableView20otprStyk_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'otprStyk_id'
                  DataBinding.IsNullValueType = True
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGridDBBandedTableView20clmOtpr_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'clmOtpr_id'
                  DataBinding.IsNullValueType = True
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGridDBBandedTableView20gpPodNum: TcxGridDBBandedColumn
                  Caption = #8470' '#1087#1086#1076#1072#1095#1080
                  DataBinding.FieldName = 'gpPodNum'
                  DataBinding.IsNullValueType = True
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedTableView20gpPodDate: TcxGridDBBandedColumn
                  Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080
                  DataBinding.FieldName = 'gpPodDate'
                  DataBinding.IsNullValueType = True
                  Width = 76
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedTableView20gpWeight: TcxGridDBBandedColumn
                  Caption = #1042#1077#1089' '#1075#1088#1091#1079#1072
                  DataBinding.FieldName = 'gpWeight'
                  DataBinding.IsNullValueType = True
                  Width = 60
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridDBBandedTableView20gpCarCount: TcxGridDBBandedColumn
                  Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075'.'
                  DataBinding.FieldName = 'gpCarCount'
                  DataBinding.IsNullValueType = True
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridDBBandedTableView20gpWeightRefuse: TcxGridDBBandedColumn
                  Caption = #1042#1077#1089' '#1075#1088#1091#1079#1072' '#1086#1090#1082#1072#1079#1072
                  DataBinding.FieldName = 'gpWeightRefuse'
                  DataBinding.IsNullValueType = True
                  Width = 94
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGridDBBandedTableView20gpCarCountRefuse: TcxGridDBBandedColumn
                  Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075'. '#1086#1090#1082#1072#1079#1072
                  DataBinding.FieldName = 'gpCarCountRefuse'
                  DataBinding.IsNullValueType = True
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel20: TcxGridLevel
                GridView = cxGridDBBandedTableView20
              end
            end
          end
          object Panel42: TPanel
            Left = 457
            Top = 0
            Width = 342
            Height = 106
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object cxGrid24: TcxGrid
              Left = 0
              Top = 0
              Width = 342
              Height = 106
              Align = alClient
              TabOrder = 0
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.ScrollbarMode = sbmClassic
              object cxGridDBBandedTableView21: TcxGridDBBandedTableView
                PopupMenu = dxBarPopupMenu2
                OnKeyPress = cxGridDBBandedTableView21KeyPress
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                OnCustomDrawCell = cxGridDBBandedTableView21CustomDrawCell
                OnFocusedItemChanged = cxGridDBBandedTableView21FocusedItemChanged
                DataController.DataSource = DS_otprStyk
                DataController.Filter.Options = [fcoCaseInsensitive]
                DataController.Filter.OnChanged = cxGridDBBandedTableView21FilterOnChanged
                DataController.Filter.Active = True
                DataController.KeyFieldNames = 'otprStyk_id'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skCount
                  end
                  item
                    Kind = skSum
                  end
                  item
                    Kind = skSum
                  end
                  item
                    Kind = skSum
                  end
                  item
                    Kind = skSum
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
                OnCustomDrawColumnHeader = cxGridDBBandedTableView21CustomDrawColumnHeader
                OnCustomDrawFooterCell = cxGridDBBandedTableView21CustomDrawColumnHeader
                Bands = <
                  item
                    Caption = #1057#1090#1099#1082#1080
                  end>
                object cxGridDBBandedTableView21otprStyk_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'otprStyk_id'
                  DataBinding.IsNullValueType = True
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGridDBBandedTableView21clmOtpr_id: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'clmOtpr_id'
                  DataBinding.IsNullValueType = True
                  Position.BandIndex = -1
                  Position.ColIndex = -1
                  Position.RowIndex = -1
                end
                object cxGridDBBandedTableView21stykStationCode: TcxGridDBBandedColumn
                  Caption = #1057#1090'. '#1089#1076#1072#1095#1080' '#1082#1086#1076
                  DataBinding.FieldName = 'stykStationCode'
                  DataBinding.IsNullValueType = True
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridDBBandedTableView21stykStationName: TcxGridDBBandedColumn
                  Caption = #1057#1090'. '#1089#1076#1072#1095#1080
                  DataBinding.FieldName = 'stykStationName'
                  DataBinding.IsNullValueType = True
                  Width = 109
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridDBBandedTableView21stykCountryName: TcxGridDBBandedColumn
                  Caption = #1057#1090#1088#1072#1085#1072
                  DataBinding.FieldName = 'stykCountryName'
                  DataBinding.IsNullValueType = True
                  Width = 124
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel21: TcxGridLevel
                GridView = cxGridDBBandedTableView21
              end
            end
          end
          object cxSplitter13: TcxSplitter
            Left = 449
            Top = 0
            Width = 8
            Height = 106
            HotZoneClassName = 'TcxSimpleStyle'
            AlignSplitter = salRight
            Control = Panel42
          end
        end
        object Panel32: TPanel
          Left = 0
          Top = 0
          Width = 799
          Height = 114
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitHeight = 91
          object cxGrid16: TcxGrid
            Left = 0
            Top = 0
            Width = 799
            Height = 114
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.ScrollbarMode = sbmClassic
            ExplicitHeight = 91
            object cxGridDBBandedTableView12: TcxGridDBBandedTableView
              PopupMenu = dxBarPopupMenu3
              OnKeyPress = cxGridDBBandedTableView12KeyPress
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCustomDrawCell = cxGridDBBandedTableView12CustomDrawCell
              OnFocusedItemChanged = cxGridDBBandedTableView12FocusedItemChanged
              OnFocusedRecordChanged = cxGridDBBandedTableView12FocusedRecordChanged
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Filter.OnChanged = cxGridDBBandedTableView12FilterOnChanged
              DataController.Filter.Active = True
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  Column = cxGridDBBandedTableView12otprNom
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedTableView12otprAmount
                end
                item
                  Kind = skSum
                  Column = cxGridDBBandedTableView12otprFreightWeight
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
              OptionsView.HeaderHeight = 34
              OptionsView.BandHeaders = False
              OnCustomDrawColumnHeader = cxGridDBBandedTableView12CustomDrawColumnHeader
              OnCustomDrawFooterCell = cxGridDBBandedTableView12CustomDrawColumnHeader
              Bands = <
                item
                end>
              object cxGridDBBandedTableView12clmOtpr_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'clmOtpr_id'
                DataBinding.IsNullValueType = True
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView12claim_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'claim_id'
                DataBinding.IsNullValueType = True
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView12otprNom: TcxGridDBBandedColumn
                Caption = #1053#1086#1084#1077#1088' '#1086#1090#1087#1088#1072#1074#1082#1080
                DataBinding.FieldName = 'otprNom'
                DataBinding.IsNullValueType = True
                Width = 56
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprTypeID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'otprTypeID'
                DataBinding.IsNullValueType = True
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView12otprTypeName: TcxGridDBBandedColumn
                Caption = #1042#1080#1076' '#1086#1090#1087#1088#1072#1074#1082#1080
                DataBinding.FieldName = 'otprTypeName'
                DataBinding.IsNullValueType = True
                Width = 78
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprRecipID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'otprRecipID'
                DataBinding.IsNullValueType = True
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView12otprRecipOKPO: TcxGridDBBandedColumn
                Caption = #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1054#1050#1055#1054
                DataBinding.FieldName = 'otprRecipOKPO'
                DataBinding.IsNullValueType = True
                Width = 96
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprRecipName: TcxGridDBBandedColumn
                Caption = #1043#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100
                DataBinding.FieldName = 'otprRecipName'
                DataBinding.IsNullValueType = True
                Width = 96
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprToCountryCode: TcxGridDBBandedColumn
                Caption = #1057#1090#1088'. '#1085#1072#1079'. '#1082#1086#1076
                DataBinding.FieldName = 'otprToCountryCode'
                DataBinding.IsNullValueType = True
                Width = 59
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprToCountryName: TcxGridDBBandedColumn
                Caption = #1057#1090#1088'. '#1085#1072#1079'. '
                DataBinding.FieldName = 'otprToCountryName'
                DataBinding.IsNullValueType = True
                Width = 78
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprToStationCode: TcxGridDBBandedColumn
                Caption = #1057#1090'. '#1085#1072#1079#1085'. '#1082#1086#1076
                DataBinding.FieldName = 'otprToStationCode'
                DataBinding.IsNullValueType = True
                Width = 63
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprToStationName: TcxGridDBBandedColumn
                Caption = #1057#1090'. '#1085#1072#1079#1085'.'
                DataBinding.FieldName = 'otprToStationName'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprExitStationCode: TcxGridDBBandedColumn
                Caption = #1057#1090'. '#1074#1099#1093'. '#1080#1079' '#1056#1060' '#1082#1086#1076
                DataBinding.FieldName = 'otprExitStationCode'
                DataBinding.IsNullValueType = True
                Width = 87
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprExitStationName: TcxGridDBBandedColumn
                Caption = #1057#1090'. '#1074#1099#1093'. '#1080#1079' '#1056#1060
                DataBinding.FieldName = 'otprExitStationName'
                DataBinding.IsNullValueType = True
                Width = 89
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprToPortID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'otprToPortID'
                DataBinding.IsNullValueType = True
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView12otprToPortCode: TcxGridDBBandedColumn
                Caption = #1055#1086#1088#1090' '#1082#1086#1076
                DataBinding.FieldName = 'otprToPortCode'
                DataBinding.IsNullValueType = True
                Width = 62
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprToPortName: TcxGridDBBandedColumn
                Caption = #1055#1086#1088#1090
                DataBinding.FieldName = 'otprToPortName'
                DataBinding.IsNullValueType = True
                Width = 77
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprToHolderCode: TcxGridDBBandedColumn
                Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1074' '#1087#1091#1085#1082#1090#1077' '#1087#1077#1088#1077#1074#1072#1083#1082#1080' '#1082#1086#1076
                DataBinding.FieldName = 'otprToHolderCode'
                DataBinding.IsNullValueType = True
                Width = 129
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprToHolderName: TcxGridDBBandedColumn
                Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' '#1074' '#1087#1091#1085#1082#1090#1077' '#1087#1077#1088#1077#1074#1072#1083#1082#1080
                DataBinding.FieldName = 'otprToHolderName'
                DataBinding.IsNullValueType = True
                Width = 133
                Position.BandIndex = 0
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprFreightCode: TcxGridDBBandedColumn
                Caption = #1050#1086#1076' '#1045#1058#1057#1053#1043
                DataBinding.FieldName = 'otprFreightCode'
                DataBinding.IsNullValueType = True
                Width = 68
                Position.BandIndex = 0
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprFreightName: TcxGridDBBandedColumn
                Caption = #1045#1058#1057#1053#1043
                DataBinding.FieldName = 'otprFreightName'
                DataBinding.IsNullValueType = True
                Width = 96
                Position.BandIndex = 0
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprFreightGNGID2001: TcxGridDBBandedColumn
                DataBinding.FieldName = 'otprFreightGNGID2001'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView12otprFreightGNGCode: TcxGridDBBandedColumn
                Caption = #1050#1086#1076' '#1043#1053#1043
                DataBinding.FieldName = 'otprFreightGNGCode'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 18
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprFreightGNGName: TcxGridDBBandedColumn
                Caption = #1043#1053#1043
                DataBinding.FieldName = 'otprFreightGNGName'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 19
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprFreightWeight: TcxGridDBBandedColumn
                Caption = #1042#1077#1089' '#1075#1088#1091#1079#1072' '#1074' '#1090#1085'.'
                DataBinding.FieldName = 'otprFreightWeight'
                DataBinding.IsNullValueType = True
                Width = 88
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprPackKindID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'otprPackKindID'
                DataBinding.IsNullValueType = True
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView12otprPackKindName: TcxGridDBBandedColumn
                Caption = #1042#1080#1076' '#1091#1087#1072#1082#1086#1074#1082#1080
                DataBinding.FieldName = 'otprPackKindName'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 20
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprFreightSpecID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'otprFreightSpecID'
                DataBinding.IsNullValueType = True
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView12otprFreightSpecName: TcxGridDBBandedColumn
                Caption = #1054#1089#1086#1073#1077#1085#1085#1086#1089#1090#1100' '#1075#1088#1091#1079#1072
                DataBinding.FieldName = 'otprFreightSpecName'
                DataBinding.IsNullValueType = True
                Width = 82
                Position.BandIndex = 0
                Position.ColIndex = 21
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprCarTypeID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'otprCarTypeID'
                DataBinding.IsNullValueType = True
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView12otprCarTypeName: TcxGridDBBandedColumn
                Caption = #1042#1080#1076' '#1055#1057
                DataBinding.FieldName = 'otprCarTypeName'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 22
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprCarTypeCODE: TcxGridDBBandedColumn
                Caption = #1053#1086#1074#1099#1081' '#1074#1080#1076' '#1055#1057' '#1082#1086#1076
                DataBinding.FieldName = 'otprCarTypeCODE'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 23
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprCarTypeCODEName: TcxGridDBBandedColumn
                Caption = #1053#1086#1074#1099#1081' '#1074#1080#1076' '#1055#1057
                DataBinding.FieldName = 'otprCarTypeCODEName'
                DataBinding.IsNullValueType = True
                Width = 97
                Position.BandIndex = 0
                Position.ColIndex = 24
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprCarCount: TcxGridDBBandedColumn
                Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075'.'
                DataBinding.FieldName = 'otprCarCount'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 25
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprCarAxles: TcxGridDBBandedColumn
                Caption = #1054#1089#1085#1086#1089#1090#1100' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1077#1088#1086#1074
                DataBinding.FieldName = 'otprCarAxles'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 26
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprIxTariffCode: TcxGridDBBandedColumn
                Caption = #1050#1086#1076' '#1080#1089#1082#1083'. '#1090#1072#1088#1080#1092#1072
                DataBinding.FieldName = 'otprIxTariffCode'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 27
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprIsFerry: TcxGridDBBandedColumn
                Caption = #1055#1088#1080#1079#1085#1072#1082' '#1087#1072#1088#1086#1084#1072
                DataBinding.FieldName = 'otprIsFerry'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 28
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprTargetCode: TcxGridDBBandedColumn
                Caption = #1055#1091#1085#1082#1090#1072' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1103' '#1082#1086#1076
                DataBinding.FieldName = 'otprTargetCode'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 29
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprTargetName: TcxGridDBBandedColumn
                Caption = #1055#1091#1085#1082#1090#1072' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1103
                DataBinding.FieldName = 'otprTargetName'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 30
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprOrgContID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'otprOrgContID'
                DataBinding.IsNullValueType = True
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView12otprOrgContOKPO: TcxGridDBBandedColumn
                Caption = #1069#1082#1089#1087#1077#1076#1080#1090#1086#1088' '#1054#1050#1055#1054
                DataBinding.FieldName = 'otprOrgContOKPO'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 31
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprOrgContName: TcxGridDBBandedColumn
                Caption = #1069#1082#1089#1087#1077#1076#1080#1090#1086#1088
                DataBinding.FieldName = 'otprOrgContName'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 32
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprOrgContAddressID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'otprOrgContAddressID'
                DataBinding.IsNullValueType = True
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView12otprOrgContAddress: TcxGridDBBandedColumn
                Caption = #1069#1082#1089#1087#1077#1076#1080#1090#1086#1088' '#1072#1076#1088#1077#1089
                DataBinding.FieldName = 'otprOrgContAddress'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 33
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprCarContOwnerTypeID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'otprCarContOwnerTypeID'
                DataBinding.IsNullValueType = True
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView12otprCarContOwnerTypeName: TcxGridDBBandedColumn
                Caption = #1057#1055#1057
                DataBinding.FieldName = 'otprCarContOwnerTypeName'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 34
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprCarOwnerName: TcxGridDBBandedColumn
                Caption = #1042#1083#1072#1076#1077#1083#1077#1094' '#1074#1072#1075#1086#1085#1086#1074
                DataBinding.FieldName = 'otprCarOwnerName'
                DataBinding.IsNullValueType = True
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 42
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprContFoot: TcxGridDBBandedColumn
                Caption = #1060#1091#1090#1086#1074#1086#1089#1090#1100' '#1076#1083#1103' '#1082#1086#1085#1090#1077#1081#1085#1077#1088#1086#1074
                DataBinding.FieldName = 'otprContFoot'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 35
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprContOwnerCountryID: TcxGridDBBandedColumn
                Caption = '-1'
                DataBinding.FieldName = 'otprContOwnerCountryID'
                DataBinding.IsNullValueType = True
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedTableView12otprContOwnerCountryCode: TcxGridDBBandedColumn
                Caption = #1057#1090#1088#1072#1085#1072' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082' '#1082#1086#1076
                DataBinding.FieldName = 'otprContOwnerCountryCode'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 36
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprContOwnerCountryName: TcxGridDBBandedColumn
                Caption = #1057#1090#1088#1072#1085#1072' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082
                DataBinding.FieldName = 'otprContOwnerCountryName'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 37
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprContPrefix: TcxGridDBBandedColumn
                Caption = #1055#1088#1077#1092#1080#1082#1089' '#1082#1086#1085#1090#1077#1081#1085#1077#1088#1086#1074
                DataBinding.FieldName = 'otprContPrefix'
                DataBinding.IsNullValueType = True
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 38
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprNote: TcxGridDBBandedColumn
                Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
                DataBinding.FieldName = 'otprNote'
                DataBinding.IsNullValueType = True
                Width = 73
                Position.BandIndex = 0
                Position.ColIndex = 39
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprCorr: TcxGridDBBandedColumn
                Caption = #1055#1088#1080#1079#1085#1072#1082' '#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080
                DataBinding.FieldName = 'otprCorr'
                DataBinding.IsNullValueType = True
                Position.BandIndex = 0
                Position.ColIndex = 40
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprAmount: TcxGridDBBandedColumn
                Caption = #1055#1088#1086#1074#1086#1079#1085#1086#1081' '#1087#1083#1072#1090#1077#1078
                DataBinding.FieldName = 'otprAmount'
                DataBinding.IsNullValueType = True
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = '#,##0.00'
                Width = 122
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView12otprDistWay: TcxGridDBBandedColumn
                Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1085#1085#1086#1077' '#1088#1072#1089#1089#1090#1086#1103#1085#1080#1077
                DataBinding.FieldName = 'otprDistWay'
                DataBinding.IsNullValueType = True
                Width = 78
                Position.BandIndex = 0
                Position.ColIndex = 41
                Position.RowIndex = 0
              end
            end
            object cxGridLevel12: TcxGridLevel
              GridView = cxGridDBBandedTableView12
            end
          end
        end
        object cxSplitter12: TcxSplitter
          Left = 0
          Top = 114
          Width = 799
          Height = 8
          HotZoneClassName = 'TcxSimpleStyle'
          AlignSplitter = salBottom
          Control = Panel40
          ExplicitTop = 91
        end
      end
      object cxTabSheet17: TcxTabSheet
        Tag = 2
        Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082#1080
        ImageIndex = 1
        ExplicitHeight = 205
        object cxGrid18: TcxGrid
          Left = 0
          Top = 0
          Width = 799
          Height = 228
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          ExplicitHeight = 205
          object cxGridDBBandedTableView15: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu4
            OnKeyPress = cxGridDBBandedTableView15KeyPress
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCustomDrawCell = cxGridDBBandedTableView15CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView15FocusedItemChanged
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGridDBBandedTableView15FilterOnChanged
            DataController.Filter.Active = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGridDBBandedTableView15payerCode
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
            OptionsView.HeaderHeight = 34
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView15CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView15CustomDrawColumnHeader
            Bands = <
              item
              end>
            object cxGridDBBandedTableView15clmPayer_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'clmPayer_id'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView15claim_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'claim_id'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView15payerTypeID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'payerTypeID'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView15payerTypeName: TcxGridDBBandedColumn
              Caption = #1058#1080#1087' '#1087#1083#1072#1090#1077#1083#1100#1097#1080#1082#1072
              DataBinding.FieldName = 'payerTypeName'
              DataBinding.IsNullValueType = True
              Width = 109
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView15payerID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'payerID'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView15payerCode: TcxGridDBBandedColumn
              Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082' '#1082#1086#1076
              DataBinding.FieldName = 'payerCode'
              DataBinding.IsNullValueType = True
              Width = 79
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView15payerOKPO: TcxGridDBBandedColumn
              Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082' '#1054#1050#1055#1054
              DataBinding.FieldName = 'payerOKPO'
              DataBinding.IsNullValueType = True
              Width = 86
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView15payerName: TcxGridDBBandedColumn
              Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082
              DataBinding.FieldName = 'payerName'
              DataBinding.IsNullValueType = True
              Width = 143
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView15payerAddress: TcxGridDBBandedColumn
              Caption = #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082' '#1072#1076#1088#1077#1089
              DataBinding.FieldName = 'payerAddress'
              DataBinding.IsNullValueType = True
              Width = 234
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView15payerCountryCode: TcxGridDBBandedColumn
              Caption = #1057#1090#1088'. '#1086#1090#1087#1088'. '#1082#1086#1076
              DataBinding.FieldName = 'payerCountryCode'
              DataBinding.IsNullValueType = True
              Width = 61
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView15payerCountryName: TcxGridDBBandedColumn
              Caption = #1057#1090#1088'. '#1086#1090#1087#1088'.'
              DataBinding.FieldName = 'payerCountryName'
              DataBinding.IsNullValueType = True
              Width = 116
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
          object cxGridLevel15: TcxGridLevel
            GridView = cxGridDBBandedTableView15
          end
        end
      end
      object cxTabSheet18: TcxTabSheet
        Tag = 3
        Caption = #1057#1074#1103#1079#1072#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
        ImageIndex = 2
        ExplicitHeight = 205
        object cxGrid19: TcxGrid
          Left = 0
          Top = 0
          Width = 799
          Height = 228
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          ExplicitHeight = 205
          object cxGridDBBandedTableView16: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu5
            OnKeyPress = cxGridDBBandedTableView16KeyPress
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCustomDrawCell = cxGridDBBandedTableView16CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView16FocusedItemChanged
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGridDBBandedTableView16FilterOnChanged
            DataController.Filter.Active = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGridDBBandedTableView16docId
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
            OptionsView.HeaderHeight = 34
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView16CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView16CustomDrawColumnHeader
            Bands = <
              item
              end>
            object cxGridDBBandedTableView16clmDoc_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'clmDoc_id'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView16claim_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'claim_id'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView16docId: TcxGridDBBandedColumn
              Caption = 'ID '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              DataBinding.FieldName = 'docId'
              DataBinding.IsNullValueType = True
              Width = 108
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView16docTypeID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'docTypeID'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView16docType: TcxGridDBBandedColumn
              Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              DataBinding.FieldName = 'docType'
              DataBinding.IsNullValueType = True
              Width = 193
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView16docLink: TcxGridDBBandedColumn
              Caption = #1058#1080#1087' '#1089#1074#1103#1079#1080
              DataBinding.FieldName = 'docLink'
              DataBinding.IsNullValueType = True
              Width = 147
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView16docDate: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
              DataBinding.FieldName = 'docDate'
              DataBinding.IsNullValueType = True
              Width = 105
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
          object cxGridLevel16: TcxGridLevel
            GridView = cxGridDBBandedTableView16
          end
        end
      end
      object cxTabSheet19: TcxTabSheet
        Tag = 4
        Caption = #1061#1086#1076' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103
        ImageIndex = 3
        ExplicitHeight = 205
        object cxGrid20: TcxGrid
          Left = 0
          Top = 0
          Width = 799
          Height = 228
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          ExplicitHeight = 205
          object cxGridDBBandedTableView17: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu6
            OnKeyPress = cxGridDBBandedTableView17KeyPress
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCustomDrawCell = cxGridDBBandedTableView17CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView17FocusedItemChanged
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGridDBBandedTableView17FilterOnChanged
            DataController.Filter.Active = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGridDBBandedTableView17agrName
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
            OptionsView.HeaderHeight = 34
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView17CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView17CustomDrawColumnHeader
            Bands = <
              item
              end>
            object cxGridDBBandedTableView17clmAgreement_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'clmAgreement_id'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView17claim_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'claim_id'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView17agrName: TcxGridDBBandedColumn
              Caption = #1057#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'agrName'
              DataBinding.IsNullValueType = True
              Width = 203
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView17agrOrgId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'agrOrgId'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView17agrOrgName: TcxGridDBBandedColumn
              Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
              DataBinding.FieldName = 'agrOrgName'
              DataBinding.IsNullValueType = True
              Width = 115
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView17agrState: TcxGridDBBandedColumn
              Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
              DataBinding.FieldName = 'agrState'
              DataBinding.IsNullValueType = True
              Width = 94
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView17agrDate: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103
              DataBinding.FieldName = 'agrDate'
              DataBinding.IsNullValueType = True
              Width = 93
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView17agrRemark: TcxGridDBBandedColumn
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' '
              DataBinding.FieldName = 'agrRemark'
              DataBinding.IsNullValueType = True
              Width = 94
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView17agrPost: TcxGridDBBandedColumn
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1074#1096#1077#1075#1086
              DataBinding.FieldName = 'agrPost'
              DataBinding.IsNullValueType = True
              Width = 169
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView17agrPerson: TcxGridDBBandedColumn
              Caption = #1060#1048#1054' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1074#1096#1077#1075#1086
              DataBinding.FieldName = 'agrPerson'
              DataBinding.IsNullValueType = True
              Width = 141
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
          object cxGridLevel17: TcxGridLevel
            GridView = cxGridDBBandedTableView17
          end
        end
      end
      object cxTabSheet20: TcxTabSheet
        Tag = 5
        Caption = #1053#1072#1082#1083#1072#1076#1085#1099#1077' '#1087#1086' '#1079#1072#1103#1074#1082#1077
        ImageIndex = 4
        ExplicitHeight = 205
        object cxGrid21: TcxGrid
          Left = 0
          Top = 0
          Width = 799
          Height = 228
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          ExplicitHeight = 205
          object cxGridDBBandedTableView18: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu7
            OnKeyPress = cxGridDBBandedTableView18KeyPress
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCustomDrawCell = cxGridDBBandedTableView18CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView18FocusedItemChanged
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGridDBBandedTableView18FilterOnChanged
            DataController.Filter.Active = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGridDBBandedTableView18invOtprNom
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
            OptionsView.HeaderHeight = 34
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView18CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView18CustomDrawColumnHeader
            Bands = <
              item
              end>
            object cxGridDBBandedTableView18clmInv_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'clmInv_id'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView18claim_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'claim_id'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView18invOtprNom: TcxGridDBBandedColumn
              Caption = #1053#1086#1084#1077#1088' '#1086#1090#1087#1088#1072#1074#1082#1080
              DataBinding.FieldName = 'invOtprNom'
              DataBinding.IsNullValueType = True
              Width = 61
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView18invId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'invId'
              DataBinding.IsNullValueType = True
              Width = 64
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView18invNumber: TcxGridDBBandedColumn
              Caption = #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
              DataBinding.FieldName = 'invNumber'
              DataBinding.IsNullValueType = True
              Width = 73
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView18invStateID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'invStateID'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView18invState: TcxGridDBBandedColumn
              Caption = #1058#1077#1082#1091#1097#1077#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
              DataBinding.FieldName = 'invState'
              DataBinding.IsNullValueType = True
              Width = 193
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView18invCarCount: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075
              DataBinding.FieldName = 'invCarCount'
              DataBinding.IsNullValueType = True
              Width = 52
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView18invToStationCode: TcxGridDBBandedColumn
              Caption = #1057#1090'. '#1085#1072#1079'. '#1082#1086#1076
              DataBinding.FieldName = 'invToStationCode'
              DataBinding.IsNullValueType = True
              Width = 60
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView18invToStationName: TcxGridDBBandedColumn
              Caption = #1057#1090'. '#1085#1072#1079'.'
              DataBinding.FieldName = 'invToStationName'
              DataBinding.IsNullValueType = True
              Width = 84
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView18invDateReady: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1087#1088#1080#1085#1103#1090#1080#1103' '#1075#1088#1091#1079#1072' '#1082' '#1087#1077#1088#1077#1074#1086#1079#1082#1077
              DataBinding.FieldName = 'invDateReady'
              DataBinding.IsNullValueType = True
              Width = 134
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
          object cxGridLevel18: TcxGridLevel
            GridView = cxGridDBBandedTableView18
          end
        end
      end
      object cxTabSheet21: TcxTabSheet
        Tag = 6
        Caption = #1048#1089#1090#1086#1088#1080#1103
        ImageIndex = 5
        ExplicitHeight = 205
        object cxGrid17: TcxGrid
          Left = 0
          Top = 0
          Width = 799
          Height = 228
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          ExplicitHeight = 205
          object cxGridDBBandedTableView14: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu8
            OnKeyPress = cxGridDBBandedTableView14KeyPress
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCustomDrawCell = cxGridDBBandedTableView14CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView14FocusedItemChanged
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGridDBBandedTableView14FilterOnChanged
            DataController.Filter.Active = True
            DataController.KeyFieldNames = 'docOper_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Column = cxGridDBBandedColumn1
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
            OptionsView.HeaderHeight = 34
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView14CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView14CustomDrawColumnHeader
            Bands = <
              item
              end>
            object cxGridDBBandedColumn1: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
              DataBinding.FieldName = 'operDate'
              DataBinding.IsNullValueType = True
              Width = 118
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn2: TcxGridDBBandedColumn
              Caption = #1054#1090#1095#1077#1090#1085#1072#1103' '#1076#1072#1090#1072
              DataBinding.FieldName = 'operFactDate'
              DataBinding.IsNullValueType = True
              Width = 117
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn3: TcxGridDBBandedColumn
              DataBinding.FieldName = 'operOrgId'
              DataBinding.IsNullValueType = True
              Width = 100
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedColumn4: TcxGridDBBandedColumn
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
              DataBinding.FieldName = 'operOrgName'
              DataBinding.IsNullValueType = True
              Width = 93
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn5: TcxGridDBBandedColumn
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
              DataBinding.FieldName = 'operPost'
              DataBinding.IsNullValueType = True
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn6: TcxGridDBBandedColumn
              Caption = #1060#1048#1054' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
              DataBinding.FieldName = 'operPerson'
              DataBinding.IsNullValueType = True
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn7: TcxGridDBBandedColumn
              Caption = #1054#1087#1077#1088#1072#1094#1080#1103
              DataBinding.FieldName = 'operText'
              DataBinding.IsNullValueType = True
              Width = 109
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn8: TcxGridDBBandedColumn
              Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1086#1087#1077#1088#1072#1094#1080#1080
              DataBinding.FieldName = 'operResult'
              DataBinding.IsNullValueType = True
              Width = 112
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn9: TcxGridDBBandedColumn
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
              DataBinding.FieldName = 'operRemark'
              DataBinding.IsNullValueType = True
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn10: TcxGridDBBandedColumn
              Caption = #1056#1072#1073#1086#1095#1077#1077' '#1084#1077#1089#1090#1086
              DataBinding.FieldName = 'operWorkPlace'
              DataBinding.IsNullValueType = True
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn11: TcxGridDBBandedColumn
              DataBinding.FieldName = 'operOperID'
              DataBinding.IsNullValueType = True
              Width = 100
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
          end
          object cxGridLevel14: TcxGridLevel
            GridView = cxGridDBBandedTableView14
          end
        end
      end
      object cxTabSheet22: TcxTabSheet
        Tag = 7
        Caption = #1052#1072#1088#1096#1088#1091#1090#1085#1072#1103' '#1086#1090#1087#1088#1072#1074#1082#1072' '
        ImageIndex = 6
        ExplicitHeight = 205
        object cxGrid22: TcxGrid
          Left = 0
          Top = 0
          Width = 799
          Height = 228
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.ScrollbarMode = sbmClassic
          ExplicitHeight = 205
          object cxGridDBBandedTableView19: TcxGridDBBandedTableView
            PopupMenu = dxBarPopupMenu9
            OnKeyPress = cxGridDBBandedTableView19KeyPress
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            OnCustomDrawCell = cxGridDBBandedTableView19CustomDrawCell
            OnFocusedItemChanged = cxGridDBBandedTableView19FocusedItemChanged
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.OnChanged = cxGridDBBandedTableView19FilterOnChanged
            DataController.Filter.Active = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = cxGridDBBandedTableView19routeDatePod
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
            OptionsView.HeaderHeight = 34
            OptionsView.BandHeaders = False
            OnCustomDrawColumnHeader = cxGridDBBandedTableView19CustomDrawColumnHeader
            OnCustomDrawFooterCell = cxGridDBBandedTableView19CustomDrawColumnHeader
            Bands = <
              item
              end>
            object cxGridDBBandedTableView19clmRoute_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'clmRoute_id'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView19claim_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'claim_id'
              DataBinding.IsNullValueType = True
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedTableView19routeDatePod: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080
              DataBinding.FieldName = 'routeDatePod'
              DataBinding.IsNullValueType = True
              Width = 144
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView19routeType: TcxGridDBBandedColumn
              Caption = #1042#1080#1076' '#1084#1072#1088#1096#1088#1091#1090#1072' '#1082#1086#1076
              DataBinding.FieldName = 'routeType'
              DataBinding.IsNullValueType = True
              Width = 118
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView19routeTypeName: TcxGridDBBandedColumn
              Caption = #1042#1080#1076' '#1084#1072#1088#1096#1088#1091#1090#1072
              DataBinding.FieldName = 'routeTypeName'
              DataBinding.IsNullValueType = True
              Width = 121
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView19routeStationCode: TcxGridDBBandedColumn
              Caption = #1057#1090'. '#1085#1072#1079#1085'. '#1082#1086#1076
              DataBinding.FieldName = 'routeStationCode'
              DataBinding.IsNullValueType = True
              Width = 109
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView19routeStationName: TcxGridDBBandedColumn
              Caption = #1057#1090'. '#1085#1072#1079#1085'.'
              DataBinding.FieldName = 'routeStationName'
              DataBinding.IsNullValueType = True
              Width = 106
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView19routeCount: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086' '#1084#1072#1088#1096#1088#1091#1090#1086#1074
              DataBinding.FieldName = 'routeCount'
              DataBinding.IsNullValueType = True
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView19routeCarCount: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074
              DataBinding.FieldName = 'routeCarCount'
              DataBinding.IsNullValueType = True
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
          object cxGridLevel19: TcxGridLevel
            GridView = cxGridDBBandedTableView19
          end
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1204
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel29'
    Color = clBtnShadow
    TabOrder = 2
    object Image3: TImage
      Left = 0
      Top = 0
      Width = 32
      Height = 35
      Align = alLeft
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F987000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
        80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
        0AEB00000AEB01828B0D5A00001031494441546843CD5A7950D4797E1D92ADCA
        5163A5926C6A2AFF4C52A9CC6E369B9D49ED56B6B6926CB676E3382ACC782120
        A08E88CA290232E2C57DCAD920674337A7DCF70DDE08722BA2A8C831CAD51CCD
        7D1FBEBCEFAF5B47672633804E255DBEFA353F7E74BFF7F9BCCFF1FB95EFBCF3
        BFBF74F8AB1F12DFF1D56FF8ABFDF672989E90C3C44E0E63BB580D8EC7BC8489
        5D0CF6D9464B303E1E05231BC23612FBAC23606843585D849175380C2CC3F93E
        0C7B2D647C2F83A165283EB7F56DFFF9BFFEFA17A4F867DA00BD21DB6FF97303
        EB680C4DAE4235B1CCE3128626341821865F81F859FC7E7872192A62485C4FA8
        C697304888E3C0D812FAD58B1A8C2FE388931CFBADFCC7FFE127FFB2855FBDE9
        071161601D8991A9252C2EAF60616999C755E9FDD2D720CE49585A95AE13985F
        5CC6DCE20A66179624CCCC2F617A7E1953738B985B021272AA6160170D532BDF
        A97FFCC9479F51C05FBC6D113A7BADA23032B988D5D5E7587DBE8A9555E0B978
        2F002DB43F8BF32BCF81555EB44C2CAD0AB1CFB1B02284AD50D00A892F530CC5
        F1FCADE62730714D834542138C8FFACEFEFCC3DFE8BF6D113A7B6D62303ABD44
        F25AD23C3EFF0EBCB86E8562241184C8DA02B3334F115246446698A9C6B61E1C
        38970CEFC6691CB9780D4647BCE63EF8E947BBDFA6081D43D6809A167A9534BE
        E3F5E23A91A16F881059D08A581002EE75C3FC7C0AE4F766E0593B018BD85AEC
        3BE23DFB4F1FFE66EFDB12A163601D8BB1191A761DAFD74568EDA4AD9D05AD95
        E69999060AB0744B4541E71CA25BC6E07D7B1C56B493A1B9D7FC2F7EF95FC614
        F1976F5A133A06B63198985E5E077DCDA5AF8978D54ADA2CD0459280E31E9750
        AF5A46EEC329C89BC7E053370ECBD81A181CF65EFCE8D79BCD28E0AF883FDA68
        7F9532303EBB7E012F44889A7869256D16848D1658C47577BBE0E49386EEA955
        543F9B45DE238A6026FC28C23AA11106E6DE8BFFFCE1BF1F781311520D8CCF6C
        4CC04B115F2F680AE03FE45734233AE5328441BB3933EA071650D4390B65DB14
        029AA66197D12689F8F0DFFE709822FE7A239960177A3B0244165E7624B26702
        909C5B0D47CF1414563521B5A80EB139B5084EAF816752359CE36EC021A90147
        42CAB1F7B0DFF22FFF43CF9A027E4CFCF17AECA463C039F0C61978C546524BA5
        0071AC69EE8032F33AE497AE223AF9322E2694234C518650791142A20BE11694
        8E238E17B1CBCC5760E557FFA9E740F2EFAD47848E3E27F1466BE0DBEAE08580
        050A586216E8240E3C4074A5A9D945AE27B3E81B9A4477FF281EF7A8D0DED98F
        6B0D9D700D29C09E43EE3324BF5DDB62D794081D7DCB880D75A1176D4B74A315
        929B9B5FC0D8F8049EF5F5A3E349175ADBEEA3BEA109B575F5989E5BD6AE184B
        CCF62227FF1CC6286668620E7DA3D368793C84E25B3DD869E603B27621FE7E4D
        EC450FD6B77A5D8020B4BCBC8C999919A8D56A0C0C0CA0BBBB1B6D6D6D686C6C
        C4AD5BB750555585828242A4A76740A150222424147E7EFEF0F5F5878F8F1FBC
        BC7C25787BFB22202050DA8DA6B8274D72411A27F1F1D925CE9E05A829A67360
        0AB71FA8505EDF07BDFD1E424028F1D3350BD86371114D2DAD282A2A42666626
        E2E2E210111109992C4C2226101414422241080C0C42707030C2C365888D0D47
        5252043232625058284745453C6EDC50A2A121996253D1D39381E2E26849907A
        7296229630A1153046E2EA698222BA55D36878388CAB77865E0890690588FB93
        EF7DE9EC39168EE2923244464632A249C8C949A59834545666E1FAF51CD4D5E5
        E1EEDD223C7A544C5265E8EF2F854A5586C1C1121E8B30345448146078388FC8
        C5C8480E4647B3313E9E839B3763E1EEEE89C161B514FD09465E6440236001A3
        142032504F015728E0534D06C2D62560B745982440A1884367672D89DE4447C7
        753C7972055D5D9749BA92A8C0975F96E2D9B312A208BDBD851452407BE55348
        2E85E4907C3691450199149041011914AE80ABAB071E77F57C43C0A81040BC2A
        407743028E0A01E5B44E0C895753C0553C7E7C8502AA28A082FE2F97C83F7D5A
        2C91EFEBD3901F1CCC23F15C465F90D71057AB333036964EA46162E212AF4FC0
        B973EE6868BAA315A08D3E33F07501C242BA07DCD79F815DC7642829AD404C4C
        2449DF7C49BEB3F375F2BDBD1AF29AA80BF29AA88F8C64491157ABD319750DF1
        C9C9544C4FA7606E2E052E2EEE28ABA8FA9A7D340246882EAD852E0B01A6EB14
        101616F6A3DD474251525685B030192D748DA8222AA5C8F7F46822AF21FF9565
        5E447D74F445D4D3485E437C6A2A85E493D9C592D8CD92F9B9DE5026245200BB
        8FF0BE36FA235342C0229E0C4E4A35B06E01B1B1B1BF0A0D0DBDB3F36808F20B
        4BD86D8269992B5F23AFF1BC203F38982F594614AA5A9D4D9B64493E9F9A4A27
        D2483A95A493313B9B442432FA099C0F09EC5081F0F0F0E2009BD116AF36FA42
        C0D43C3AFB2751D7CE22BE2B32E0B6360B454444FCAD4C261B0A0A0AC24EF310
        C4CAE370E142201E3E2C67E42BE9F9725AA59C844B49B884162992C87777A7F1
        9A24B4B6C6A3A525962D338A88E0FB489E8FE2B50AAED9C9BC1D4DC4D2929202
        14686FBF0867E773B87BFFD16BD11FA680610AE8D00AA86A51B18DAE510089FB
        89B6E9EAEAAADE7538184DADEDF0F7BF402205B44D392D53C6D4FBB3FFFBB2F7
        FB49E2828365888E9623313105D9D9F99C193948484891CE8584847170F9E1F4
        69179C3AE584F878170A8EE4B08EA7A0589C39731EB905459AD629BC2FC84FCE
        6388029E0C4CE23633709902B69BAC518042A178E0E3E3836DDBB6A5ED300FC4
        A3AE7E4ED20BECDB19B44C99D4E79D9D4FC3D1D18938097B7B479C38E180E3C7
        4FC0DADA8EB08595950D6C6CACF9DE9AEFAD71EC98258E1EB5E4D10AE6E6C770
        F0E011463F9022E41C78DEF0F4F2E6EA30AB214F0C0901C4E33E216008959200
        D7EFB7909595D59F2B95CAB93367CEE0830F3E90EF340B40FFC8AC34F28B8A94
        F4BB1856251C68619CA20E3CEFC0083B70FADAB353D9735E9C60168E2325C516
        6969361C7E369CC6D63C5A322396CCDA3158589851C0218A31A700253B5B2403
        E18CDAC63B2FC9AB485E35B9808EBE29D43E1842D51D0A305D83007373F31FB3
        FB2C3B3B3BE3BDF7DE8BFAECF005A8C616F8E589484E8EA4F74B2940146E2E05
        F97022FB732207A0BE3E848349463211EC4C512CEA6816B29C9D47CE02E66DE9
        C445D64A08FFD617A5A5276168688C5DBB0C592F3E14910E37B773888E914B0B
        9C88BC6A420898C3A3BE09494045B30ABAC62EDF9F81DDBB776F3A75EAD4BC87
        8707DE7FFFFDA81D8798010A28282C66F4284655220D2A952A9F84F2483287E4
        B208D1712EB1D3A4B2C324637E3E110B0B4AB64A85E47561154041E132DACD0C
        BB77EB53C45EDAD285E7C55A11C12C9CC2BD475D12F941097378D83F811AAD80
        6D6B11206EDB6C6C6C1E9F3C7912BABABAE57B8FF8A04FBD801AAEBD1E1EDE6C
        A3B9AFB4CC6C8AC864BB4C67A4D3D81E35E4171713D96912247BCCCD45E3FEFD
        0BDC4E5D59C016D0D3DB4DECC0D6AD7ADCAF6CD8A5FC785D3E51C0BA72468C3C
        5E223F303E87010A78D43B815BF7450D0C629BF1F9EFCF8058A14D4D4D1DCDCC
        CC403CB7B475C4D3A119743FEB83A7A7376A6A9218F542F6FA3C463D87F6C862
        D4D319D938762919AAAB43515E1EC62E14C6CEE40707872F58B416D8B9531F5B
        B66CC3E6CD5BB16FDF2EA9562A2A5CF81969245F4C94E1DAB5689CB03F890676
        BD7E0AE81F9F477BEF2405A850D14401266B13F0CEA64D9BFE465F5FBFC2C4C4
        0446260761636B87C8E81838397DC182F5A4F7C35998C1EC1E4190CB4319C98B
        442C576805DB6D10BBD249181818E3E38FB7E1F7BFFF5882BEBE1E236C2A15F8
        952B2E5CADBDA59D4810072A882AE21A772367F8F0DEE1D9E80C05CCE241DF38
        AA29A0AC7910DBF79D5B5306C48EFDA377DF7DF7675BB66CC9D437DCCF2FD7C7
        9E3D7B48CA80BE3522F6C1C8C898E70D253B6CDEFC097EF7BBFFC66F7FFB07B6
        DE2D8CF0A7B0B3DBCB1B98FD502A8FA2A4C40157AF3A33C22E2CF4402E78C25E
        9AA86BC85F96C803D5B45B162C2D6D51505A89BEB159DC7F368E9B6DBCA1691C
        C4D675081022FE84F899A5CD4978F804E0988525F6191B93B01EC5ECC081037B
        D80E8D18D5831C66C748945F5AE0485B38B13339B0339DE41DDA196EAFDE2CFA
        30DA4C90CE91BCAE215F4E541257891BC42DA296686136FDE1C01973EFC9533C
        E8D50828DD800049C41E332FF40CCDE3A96A14F52D6DF4B4236DE2C41B9940D4
        D6FAB3082FE0CE9D00B6CF600E39196D11C9352196440444074A222E1159442E
        51A88DBCC632C04DA286A8231A893BEC5C4DFC1E7BF872C2B7F68CE146DB204A
        1A55D86A7C76CD167A71ABA6A377D01B3DC3B32FD7DBD4B44CF66C77165F360B
        389391BDC49699C29699C8EE23DA663C3BD0AB0292492A9DC8D646BFF495C80B
        F2B7B5C45B796C27EE735DB982D0501F4E725B2466E4E2FABD4194360D609BD1
        06046CDFEF854ED51C46B523FE56430B7778375A244AEA3E623D9E9911DBA592
        02E229404E0131DC7144DF17B6492532893CA284109E1791179611116FE21258
        C13A5172AA7BD29656D2DA71FCB81D331000E5A56CDE0FF7A1B86180357066FD
        19D03DE0C99D7C868B95663FE9EA1F4670888CCB991BFB7E9A76454E64168480
        380A10D18F21C4F012F6119D4678BFE865E47B7BF35927718CB2178BDD9EFBD2
        710E377BB8BA7B20399D846B1BF1F0D9087A466771EFE938AEB50EA0A891020C
        3722C0D4031D03331CEBDAF1CE2193C66D536C90D7AF8793782A8524F0A8A0F7
        E3B4F611D1576AC96773FD4861178A60717A4935646B6B2F2D80E7793716C02D
        36322E8156C943667125B33D819E11CE1D09D3B8DBA3C6550A28AC6717323CBD
        FE0C6C37A180C159CD7817D391FB494D732B82F838E5ECD9B39CC0C2FB89DCED
        056111F538DE4646703508E25CF0E0EC70A21D1CA4CDD58537F001CC5E8C827B
        55260917962383F8EA588186079D52E4BB87A7251177BF54F366861968E8C727
        461B11C0FBD047FD33E81AE207AAA624DC7DDC0B656A16059CE792E743C2719C
        C0C19CAE1ECC8C33ED20D6EC5324EC09FFA05044C42A119F928D94EC12A4E412
        E298A3799F9C5D8AE41C22B794E7CA905B55C3E93B2EB5CFFB5CE49ABBD5B87C
        771005751460E0BCFE0C6C3376C39DEE0934768CA2498BC68E1124645720283C
        9673E08C44D6C9E934CE9D7787CF8510045D8C47787C061FD8E62326A5808FD0
        89640DA25EA2507A1F9D5A044556259F4E5723BBB2118537EEE116F77F816A2E
        71D5ED2A0A184041FD003E31FC62FD0274B983DFBC3F8C6BFC90AF30884BC575
        90C5E72140160B7F591C02A3D2F873EE37102ACE29F21195528AB8CC2B482AAC
        4566650BF26EB4A3E476172A9BFB50D5D2CFA3401FD766A2A90FE5449940A3E6
        98CF0C6CD97B6A2302DC50D53A868A96117EF8F04BE457F72044512C21389E8F
        C31525084FAE444CE64D24143420B5BC15D9D73A5078FB29490CA2BC7988FB8C
        C0B0064DC3ECED02431C527C78AB45118F451C5A450D2A141205022CE0C2C611
        6C35587F06DED979C81BBB0E7961C7E79ED871F0DBE0C1F35A7CEE81CF0EBC0A
        77FEACC541773E1A74FB0A075CF129B3AB27C18537EC84890B74B971EA9A9EC7
        76E373BC851438CB731AE811EB7DB82B26F2DF118EDA3F14CF25FF2F219E4C0B
        2E82D39A5F7FAAFD03F148FBFF030479C1695DAF1FF2BFDA6CE4B3BF95FCFF00
        212AC6E91AD264B70000000049454E44AE426082}
      Proportional = True
      Stretch = True
    end
    object cxLabel7: TcxLabel
      Left = 32
      Top = 0
      Align = alClient
      AutoSize = False
      Caption = '   '#1047#1040#1071#1042#1050#1048
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnShadow
      Style.Font.Charset = RUSSIAN_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -21
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Height = 35
      Width = 1172
      AnchorY = 18
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 35
    Width = 1204
    Height = 109
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object GroupBox5: TGroupBox
      Left = 83
      Top = 26
      Width = 1121
      Height = 83
      Align = alClient
      Caption = ' '#1040#1090#1088#1080#1073#1091#1090#1099' '#1092#1080#1083#1100#1090#1088#1072' '
      TabOrder = 0
      DesignSize = (
        1121
        83)
      object cxLabel8: TcxLabel
        Left = 7
        Top = 17
        Caption = #8470' '#1079#1072#1103#1074#1082#1080'.......'
      end
      object cxLabel11: TcxLabel
        Left = 7
        Top = 39
        Caption = #8470' '#1085#1072#1082#1083#1072#1076#1085#1086#1081'........'
      end
      object cxTextEdit3: TcxTextEdit
        Left = 84
        Top = 35
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 2
        Width = 84
      end
      object cxTextEdit11: TcxTextEdit
        Left = 84
        Top = 13
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 3
        Width = 84
      end
      object cxLabel12: TcxLabel
        Left = 172
        Top = 39
        Caption = #1044#1072#1090#1072' '#1086#1090#1087#1088'. c ................'
      end
      object cxLabel13: TcxLabel
        Left = 172
        Top = 61
        Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073'. c ..................'
      end
      object cxDateEdit7: TcxDateEdit
        Tag = 3
        Left = 282
        Top = 35
        Properties.ReadOnly = True
        Properties.SaveTime = False
        Style.Color = clBtnFace
        TabOrder = 6
        Width = 80
      end
      object cxDateEdit8: TcxDateEdit
        Tag = 4
        Left = 282
        Top = 57
        Properties.ReadOnly = True
        Properties.SaveTime = False
        Style.Color = clBtnFace
        TabOrder = 7
        Width = 80
      end
      object cxLabel14: TcxLabel
        Left = 363
        Top = 61
        Caption = #1087#1086
      end
      object cxLabel15: TcxLabel
        Left = 363
        Top = 39
        Caption = #1087#1086
      end
      object cxDateEdit9: TcxDateEdit
        Tag = 3
        Left = 379
        Top = 35
        Properties.ReadOnly = True
        Properties.SaveTime = False
        Style.Color = clBtnFace
        TabOrder = 10
        Width = 80
      end
      object cxDateEdit10: TcxDateEdit
        Tag = 4
        Left = 379
        Top = 57
        Properties.ReadOnly = True
        Properties.SaveTime = False
        Style.Color = clBtnFace
        TabOrder = 11
        Width = 80
      end
      object cxLabel16: TcxLabel
        Left = 467
        Top = 39
        Caption = #1057#1090'. '#1085#1072#1079#1085'.............................'
      end
      object cxLabel17: TcxLabel
        Left = 467
        Top = 17
        Caption = #1057#1090'. '#1086#1090#1087#1088'.............................'
      end
      object cxTextEdit12: TcxTextEdit
        Left = 534
        Top = 13
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 14
        Width = 515
      end
      object cxTextEdit13: TcxTextEdit
        Left = 534
        Top = 35
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 15
        Width = 515
      end
      object cxTextEdit14: TcxTextEdit
        Left = 1050
        Top = 35
        Anchors = [akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 16
        Width = 60
      end
      object cxTextEdit15: TcxTextEdit
        Left = 1050
        Top = 13
        Anchors = [akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 17
        Width = 60
      end
      object cxLabel151: TcxLabel
        Left = 467
        Top = 61
        Caption = #1043#1088#1091#1079' '#1045#1058#1057#1053#1043'.............................'
      end
      object cxTextEdit89: TcxTextEdit
        Left = 534
        Top = 57
        Anchors = [akLeft, akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 19
        Width = 515
      end
      object cxTextEdit90: TcxTextEdit
        Left = 1050
        Top = 57
        Anchors = [akTop, akRight]
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        TabOrder = 20
        Width = 60
      end
      object cxLabel220: TcxLabel
        Left = 172
        Top = 17
        Caption = #1044#1072#1090#1072' '#1088#1077#1075'. c ................'
      end
      object cxDateEdit11: TcxDateEdit
        Tag = 3
        Left = 282
        Top = 13
        Properties.ReadOnly = True
        Properties.SaveTime = False
        Style.Color = clBtnFace
        TabOrder = 22
        Width = 80
      end
      object cxLabel221: TcxLabel
        Left = 363
        Top = 17
        Caption = #1087#1086
      end
      object cxDateEdit12: TcxDateEdit
        Tag = 3
        Left = 379
        Top = 13
        Properties.ReadOnly = True
        Properties.SaveTime = False
        Style.Color = clBtnFace
        TabOrder = 24
        Width = 80
      end
    end
    object GroupBox6: TGroupBox
      Left = 0
      Top = 26
      Width = 83
      Height = 83
      Align = alLeft
      Caption = ' '#1060#1080#1083#1100#1090#1088' '
      TabOrder = 1
      object cxButton3: TcxButton
        Left = 14
        Top = 18
        Width = 54
        Height = 54
        LookAndFeel.Kind = lfStandard
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          424D362400000000000036000000280000003000000030000000010020000000
          00000000000074120000741200000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9
          F9FFAFAFAFFF6A6A6AFF4C4C4CFF4E4E4EFF767676FFC5C5C5FFFEFEFEFFFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEDEDFF6F6F
          6FFF4E4E4FFF5D5F60FF6E7172FF707273FF5B5C5DFF343536FF757575FFF2F2
          F2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F8FF777878FF585A
          5BFF7E736EFFAC8772FFB98A70FFB78C74FFAD9283FF949494FF49494AFF5D5D
          5DFFF4F4F4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFCFF969696FF5E6061FF8C77
          6AFFD29D78FFD29F7AFFD19E7AFFD09D7AFFCE9976FFC59576FFA8A19CFF4446
          47FF808080FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E8E8E8FFABABABFF949494FF999999FFC8C8C8FFFCFC
          FCFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FEFEFEFF969696FF6D6E6EFF716964FFE1AC
          82FFE1AE86FFE5B289FFE4B488FFE3B387FFDFAD84FFD9A680FFD09F7CFF9593
          90FF353536FFD5D5D5FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FAFAFAFFA0A0A0FF4A4A4AFF4C4D4DFF565758FF515252FF39393AFF5858
          58FFD2D2D2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00A3A3A3FF545454FF737476FFB39174FFF0BE
          90FFF4C392FFF8C795FFF9C896FFF8C795FFF3C293FFECBB8EFFE3AF86FFCBA6
          8BFF5C5E60FF7C7C7CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFB
          FBFF8A8A8AFF535455FF696969FF968377FFA3887AFFA28F85FF969796FF6566
          67FF383939FFC1C1C1FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00AEAEAEFF454545FF6F6F6FFF6F6F71FFEEBD8DFFFECD
          9BFFFED0A0FFFED2A5FFFED1A5FFFED2A3FFFED09FFFFCCB99FFF3C291FFEBB6
          89FF87827EFF434344FFFAFAFAFFFFFFFF00FFFFFF00FFFFFF00FAFAFAFF8D8D
          8DFF5D5F5FFF796D67FFC89676FFCE9A77FFCD9977FFCB9775FFC69273FFB09E
          95FF787B7DFF3D3D3DFFDEDEDEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00B9B9B9FF434343FF656565FF838484FF7F7977FFFECD9BFFFED3
          A8FFFED6AEFFFED8B2FFFED8B5FFFED8B3FFFED5AEFFFED3A7FFFECE9CFFF7C4
          92FFB59F8CFF3B3D3EFFDBDBDBFFFFFFFF00FFFFFF00FCFCFCFF888888FF6666
          67FF6A6865FFD8A680FFDFAD83FFE1B085FFE0B087FFDFAE84FFDAA780FFD49F
          79FFB6A496FF5E5F60FF686868FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C6C6C6FF444444FF646464FF7C7C7CFF8E8E8EFF888180FFF7C89FFFFEDA
          B5FFFEDEBDFFFEDFC2FFFEE0C2FFFEDFC0FFFEDCBAFFFED9B3FFFED4A7FFFECE
          9DFFCEAE90FF424547FFC4C4C4FFFFFFFF00FCFCFCFF878787FF4F4F4FFF7475
          77FFAC8F75FFEEBD8FFFF2C291FFF5C594FFF6C594FFF3C392FFEEBD8EFFE5B4
          88FFDCA981FF9B9895FF3B3C3CFFD4D4D4FFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFEFFA3A3
          A3FF464646FF606060FF7F7F7FFF878787FF969696FF908E8EFFE0B698FFFEDE
          C0FFFEE4CAFFFEE6CFFFFEE7D1FFFEE6CEFFFEE2C8FFFEDDBEFFFED7B2FFFED3
          A5FFD9B491FF454749FF464646FF686868FF707070FF494949FF7D7D7DFF7476
          79FFE8B98AFFFECD9BFFFED0A1FFFED0A3FFFED2A3FFFED0A1FFFDCD9CFFF7C6
          95FFEDBA8CFFC3A68FFF57595AFF999999FFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFDFF999999FF4343
          43FF5F5F5FFF828282FF898989FF939393FF9E9E9EFFA9AAABFFB99582FFF2D4
          BBFFFEEAD6FFFEEEDEFFFEF0E1FFFEEEDDFFFEE9D3FFFEE1C7FFFEDCB8FFFED7
          ACFFC7AA8DFF434547FF676767FF474747FF424242FF808080FF8D8D8DFF8380
          80FFFECB9AFFFED4A9FFFED6AEFFFED8B2FFFED8B4FFFED8B0FFFED5ABFFFED1
          A1FFFBCB97FFE7B98FFF696C6EFF6F6F6FFFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFDFF959595FF434343FF4C4C
          4CFF858585FF8D8D8DFF959595FF9F9F9FFFA8A8A8FFB6B7B7FFA6938CFFDAB9
          A8FFF5E2D3FFFEF6ECFFFEF7F1FFFEF4E9FFFEEDDAFFFEE4CDFFFEDEBEFFFEDC
          B1FF9D8B7BFF474849FF494949FF3D3D3DFF818181FF949494FF989898FF8E8C
          8BFFF6C8A1FFFEDBB6FFFEDDBEFFFEDFC1FFFEE1C2FFFEDEC0FFFEDAB7FFFED7
          AFFFFED1A2FFFECC97FF737271FF5E5E5EFFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FCFCFCFF909090FF424242FF464646FF5A5A
          5AFF909090FF979797FFA1A1A1FFABABABFFB4B4B4FFBEBEBEFFB5B5B5FFB390
          86FFD8C0B5FFF0E4DEFFFEFAFAFFFEF8F0FFFEEEDEFFFEE6CFFFFEE0C0FFFED9
          B0FF5D5B5BFF474747FF363636FF818181FF969696FF9D9D9DFFA4A4A4FF9998
          9AFFE1B89BFFFEE0C1FFFEE5CCFFFEE7D2FFFEE7D1FFFEE5CEFFFEE0C5FFFEDB
          B9FFFED4ACFFFED3A0FF74716EFF5E5E5EFFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FCFCFCFF8C8C8CFF424242FF515151FF4F4F4FFF5B5B
          5BFF989898FFA3A3A3FFADADADFFB6B6B6FFC0C0C0FFCACACAFFC5C6C6FFA69D
          9BFFB39188FFCFB7B0FFE0CEC9FFEDDCD2FFF5DFD0FFF7DCC3FFFED8B9FF9884
          75FF545657FF3C3C3CFF828282FF989898FFA1A1A1FFA9A9A9FFB2B2B2FFA9AA
          ABFFC3A392FFF5D8C0FFFEECD9FFFEF0E1FFFEEFE2FFFEEDDBFFFEE7CFFFFEDF
          C2FFFED9B3FFFED6A6FF616262FF747474FFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FCFCFCFF848484FF424242FF505050FF5D5D5DFF5F5F5FFF4D4D
          4DFF9A9A9AFFB1B1B1FFBABABAFFC2C2C2FFCCCCCCFFD5D5D5FFDEDEDEFFBBBC
          BCFF999090FF9F7F79FFBE9D95FFCAABA0FFD2B1A2FFD4AD99FF92786CFF5B5B
          5DFF4B4B4BFF4F4F4FFF9F9F9FFFA2A2A2FFABABABFFB5B5B5FFBFBFBFFFB6B6
          B6FFB2A39FFFDABCAAFFF8E6D9FFFEF8F0FFFEF9F2FFFEF2E5FFFEEBD7FFFEE2
          C6FFFEDCB7FFE7C39DFF525557FF9D9D9DFFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F6F6F6FF7C7C7CFF3F3F3FFF424242FF727272FF717171FF6F6F6FFF4A4A
          4AFF818181FFB7B7B7FFC5C5C5FFCFCFCFFFD7D7D7FFE1E1E1FFEBEBEBFFF3F3
          F3FFBABBBBFF949596FF837775FF86706CFF826C68FF6A6162FF686969FF6060
          60FF505050FF2B2B2BFF929292FFB0B0B0FFB7B7B7FFC0C0C0FFCACACAFFCCCC
          CCFFC0C1C0FFB7998FFFD9C2B7FFF1E8E3FFFDF9F7FFFEF4EAFFFEECD9FFFEE4
          C9FFFEE2BDFF9A897AFF575859FFDCDCDCFFFFFFFF00FFFFFF00FFFFFF00EAEA
          EAFF5F5F5FFF3F3F3FFF414141FFB0B0B0FFDBDBDBFFB4B4B4FF707070FF7474
          74FF505050FFA7A7A7FFCACACAFFDBDBDBFFE4E4E4FFEEEEEEFFF7F7F7FFFEFE
          FEFFFEFEFEFFDEDEDEFFAFB0B0FF7F8181FF797A7BFF717272FF696969FF6363
          63FF5E5E5EFF353535FF7A7A7AFFBCBCBCFFC2C2C2FFCCCCCCFFD5D5D5FFE0E0
          E0FFCDCDCDFFB6B2B2FFB09189FFCDB3ADFFDDCBC3FFEAD6CAFFF1D8C5FFF5D4
          B9FFC7A68FFF595A5BFF909191FFFFFFFF00FFFFFF00FFFFFF00FDFDFDFF6A6A
          6AFF3D3D3DFF3D3D3DFFAAAAAAFFE3E3E3FFEAEAEAFF898989FF8A8A8AFFA8A8
          A8FF666666FF5F5F5FFFB5B5B5FFD7D7D7FFECECECFFFAFAFAFFFEFEFEFFFAFA
          FAFFFAFAFAFFCFCFCFFF686868FF545454FF5B5B5BFF777777FF707070FF6A6A
          6AFF656565FF3B3B3BFF7A7A7AFFC9C9C9FFCECECEFFD7D7D7FFE1E1E1FFEBEB
          EBFFF5F5F5FFC9CACAFFA6A4A5FF9F8480FFB18E86FFC29F93FFBF9A8BFF997D
          71FF636363FF7E7E7EFFF3F3F3FFFFFFFF00FFFFFF00FFFFFF00C2C2C2FF3B3B
          3BFF414141FF565656FFE6E6E6FFF4F4F4FFC6C6C6FF686868FFA9A9A9FFB3B3
          B3FFBFBFBFFF6E6E6EFF5B5B5BFFA6A6A6FFD5D5D5FFDEDEDEFFE0E0E0FFD6D6
          D6FF838383FF4D4D4DFF474747FF484848FF535353FF777777FF7B7B7BFF7373
          73FF676767FF303030FFA2A2A2FFD3D3D3FFD9D9D9FFE3E3E3FFECECECFFF6F6
          F6FFFEFEFEFFFEFEFEFFD2D2D2FFA3A4A5FF929090FF867E7DFF7B7776FF7778
          79FF9B9B9BFFEEEEEEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7FFF4040
          40FF434343FF616161FFDCDCDCFF9F9F9FFF5E5E5EFFA8A8A8FFB6B6B6FFC1C1
          C1FFCCCCCCFFCDCDCDFF8C8C8CFF575757FF747474FF9A9A9AFF919191FF5353
          53FF494949FF404040FF4D4D4DFF5C5C5CFF5B5B5BFF555555FF686868FF6666
          66FF444444FF4F4F4FFFC9C9C9FFDDDDDDFFE6E6E6FFEEEEEEFFF8F8F8FFFDFD
          FDFFFAFAFAFFF5F5F5FFF9F9F9FFEFEFEFFF777777FF585858FF838383FFDBDB
          DBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00656565FF4949
          49FF424242FF676767FF545454FF7B7B7BFFAFAFAFFFB9B9B9FFC4C4C4FFCBCB
          CBFFC7C7C7FFC4C4C4FFC3C3C3FFB5B5B5FF848484FF616161FF5A5A5AFF5959
          59FF4F4F4FFF535353FF5D5D5DFF5E5E5EFF505050FF454545FF454545FF4242
          42FF4F4F4FFF909090FFB9B9B9FFDFDFDFFFF6F6F6FFFEFEFEFFFEFEFEFFFEFE
          FEFFFBFBFBFFF6F6F6FF9C9C9CFF373737FF555555FFC2C2C2FFFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006D6D6DFF5050
          50FF444444FF727272FFABABABFFB2B2B2FFBBBBBBFFC6C6C6FFCACACAFFC7C7
          C7FFC2C2C2FFBFBFBFFFBBBBBBFFB8B8B8FFB7B7B7FFB5B5B5FFA2A2A2FF8B8B
          8BFF787878FF656565FF555555FF4F4F4FFF4E4E4EFF454545FF3E3E3EFF3C3C
          3CFF535353FF656565FF7F7F7FFF9E9E9EFFBCBCBCFFC6C6C6FFB6B6B6FFA2A2
          A2FF808080FF393939FF414141FFADADADFFFBFBFBFFFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008D8D8DFF5151
          51FF555555FF464646FF9C9C9CFFC3C3C3FFC9C9C9FFC9C9C9FFC5C5C5FFC1C1
          C1FFBEBEBEFFBABABAFFB7B7B7FFB3B3B3FFB0B0B0FFAEAEAEFFAAAAAAFFA8A8
          A8FFA6A6A6FFA4A4A4FF9F9F9FFF929292FF868686FF7B7B7BFF707070FF6666
          66FF5D5D5DFF525252FF474747FF3E3E3EFF373737FF393939FF363636FF2F2F
          2FFF363636FF949494FFF4F4F4FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCCFF4F4F
          4FFF5F5F5FFF575757FF494949FF9A9A9AFFD0D0D0FFC6C6C6FFC0C0C0FFBDBD
          BDFFB9B9B9FFB6B6B6FFB2B2B2FFAFAFAFFFACACACFFA9A9A9FFA5A5A5FFA2A2
          A2FF9F9F9FFF9C9C9CFF999999FF9A9A9AFF9A9A9AFF9B9B9BFF9C9C9CFF9C9C
          9CFF9D9D9DFF9D9D9DFF9F9F9FFFA0A0A0FFA4A4A4FF757575FF3C3C3CFF6F6F
          6FFFE2E2E2FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFEFF8383
          83FF555555FF676767FF606060FF4D4D4DFF6C6C6CFFA7A7A7FFC2C2C2FFBCBC
          BCFFB6B6B6FFB3B3B3FFAEAEAEFFABABABFFA8A8A8FFA5A5A5FFA1A1A1FF9E9E
          9EFF9B9B9BFF999999FF999999FF999999FF999999FF999999FF999999FF9999
          99FF999999FF9A9A9AFF9C9C9CFF898989FF484848FF494949FFBBBBBBFFFEFE
          FEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1F1
          F1FF747474FF585858FF646464FF6A6A6AFF5C5C5CFF565656FF676767FF8888
          88FFA1A1A1FFAFAFAFFFAEAEAEFFAAAAAAFFA6A6A6FFA2A2A2FF9F9F9FFF9A9A
          9AFF999999FF999999FF999999FF999999FF999999FF999999FF999999FF9A9A
          9AFF9C9C9CFF9A9A9AFF636363FF393939FF8D8D8DFFF2F2F2FFFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F7F7F7FFAFAFAFFF707070FF5C5C5CFF666666FF949494FFB8B8B8FF8E8E
          8EFF696969FF606060FF6A6A6AFF787878FF848484FF909090FF999999FF9C9C
          9CFF9D9D9DFF9C9C9CFF9C9C9CFF9C9C9CFF9B9B9BFF9C9C9CFF9C9C9CFF9F9F
          9FFF7C7C7CFF424242FF616161FFD6D6D6FFFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FEFEFEFFF8F8F8FFFBFBFBFFFFFFFF00FFFFFF00FFFF
          FF00F9F9F9FFDBDBDBFFB9B9B9FF979797FF787878FF5B5B5BFF545454FF5757
          57FF606060FF6B6B6BFF707070FF767676FF787878FF757575FF6B6B6BFF4C4C
          4CFF464646FFADADADFFFBFBFBFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F8FFDFDFDFFF9B9B
          9BFF535353FF505050FF4C4C4CFF494949FF464646FF525252FF808080FFA5A5
          A5FFEEEEEEFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00CECECEFF898989FF6C6C6CFF737373FFA0A0A0FFEFEFEFFFFFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        TabOrder = 0
        OnClick = cxButton3Click
      end
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 0
      Top = 0
      Width = 1204
      Height = 26
      Align = dalTop
      BarManager = dxBarManager1
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 144
    Width = 400
    Height = 611
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitTop = 167
    ExplicitHeight = 588
    object cxGrid2: TcxGrid
      Left = 0
      Top = 0
      Width = 400
      Height = 611
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.ScrollbarMode = sbmClassic
      ExplicitHeight = 588
      object cxGridDBBandedTableView1: TcxGridDBBandedTableView
        PopupMenu = dxBarPopupMenu10
        OnKeyPress = cxGridDBBandedTableView1KeyPress
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = cxGridDBBandedTableView1CustomDrawCell
        OnFocusedItemChanged = cxGridDBBandedTableView1FocusedItemChanged
        OnFocusedRecordChanged = cxGridDBBandedTableView1FocusedRecordChanged
        DataController.DataSource = DS_Claim
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.OnChanged = cxGridDBBandedTableView1FilterOnChanged
        DataController.Filter.Active = True
        DataController.KeyFieldNames = 'calc_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = cxGridDBBandedTableView1claimNumber
          end
          item
            Kind = skSum
            Column = cxGridDBBandedTableView1otprFreightWeight
          end
          item
            Kind = skSum
            Column = cxGridDBBandedTableView1otprCarCount
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soMultipleSelectedRecords]
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.BandHeaders = False
        OnCustomDrawColumnHeader = cxGridDBBandedTableView1CustomDrawColumnHeader
        OnCustomDrawFooterCell = cxGridDBBandedTableView1CustomDrawColumnHeader
        Bands = <
          item
          end>
        object cxGridDBBandedTableView1xml_reply_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'xml_reply_id'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Position.BandIndex = -1
          Position.ColIndex = -1
          Position.RowIndex = -1
        end
        object cxGridDBBandedTableView1claim_id: TcxGridDBBandedColumn
          Caption = #8470' '#1079#1072#1087#1080#1089#1080
          DataBinding.FieldName = 'claim_id'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1claimNumber: TcxGridDBBandedColumn
          Caption = #1053#1086#1084#1077#1088' '#1079#1072#1103#1074#1082#1080
          DataBinding.FieldName = 'claimNumber'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 87
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1claimState: TcxGridDBBandedColumn
          Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077
          DataBinding.FieldName = 'claimState'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 103
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1claimRegDate: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
          DataBinding.FieldName = 'claimRegDate'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 104
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1clmStartDate: TcxGridDBBandedColumn
          Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
          DataBinding.FieldName = 'clmStartDate'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 106
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1clmFinishDate: TcxGridDBBandedColumn
          Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
          DataBinding.FieldName = 'clmFinishDate'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 122
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1clmFromStationName: TcxGridDBBandedColumn
          Caption = #1057#1090'. '#1086#1090#1087#1088'.'
          DataBinding.FieldName = 'clmFromStationName'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 84
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1clmFreightGroupName: TcxGridDBBandedColumn
          Caption = #1043#1088#1091#1087#1087#1072' '#1075#1088#1091#1079#1072
          DataBinding.FieldName = 'clmFreightGroupName'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 105
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1otprToStationName: TcxGridDBBandedColumn
          Caption = #1057#1090'. '#1085#1072#1079#1085'.'
          DataBinding.FieldName = 'otprToStationName'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 98
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1otprFreightName: TcxGridDBBandedColumn
          Caption = #1043#1088#1091#1079' '#1045#1058#1057#1053#1043
          DataBinding.FieldName = 'otprFreightName'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1invNumber: TcxGridDBBandedColumn
          Caption = #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
          DataBinding.FieldName = 'invNumber'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 109
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1otprFreightWeight: TcxGridDBBandedColumn
          Caption = #1042#1077#1089
          DataBinding.FieldName = 'otprFreightWeight'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1otprCarCount: TcxGridDBBandedColumn
          Caption = #1050#1086'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074
          DataBinding.FieldName = 'otprCarCount'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0'
          HeaderAlignmentVert = vaTop
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1ELS_cod: TcxGridDBBandedColumn
          Caption = #1045#1051#1057
          DataBinding.FieldName = 'ELS_cod'
          DataBinding.IsNullValueType = True
          HeaderAlignmentVert = vaTop
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBBandedTableView1
      end
    end
  end
  object ADOEtran: TADOConnection
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 193
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
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
      end
      item
        Properties.Strings = (
          'Width')
      end
      item
        Properties.Strings = (
          'Width')
      end
      item
        Properties.Strings = (
          'Height')
      end
      item
        Properties.Strings = (
          'Width')
      end
      item
        Properties.Strings = (
          'Width')
      end>
    StorageName = '\Software\Lis1\EtranMain'
    StorageType = stRegistry
    Left = 56
    Top = 192
  end
  object Query_Claim: TADOQuery
    Connection = ADOEtran
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  '
      '    claim_id as calc_id,'
      #9'etran_users.ELS_cod,'
      #9'claim_id,'
      #9'claimNumber,'
      #9'claimState,'
      #9'claimRegDate,'
      #9'clmStartDate,'
      #9'clmFinishDate,'
      #9'clmFromStationName,'
      
        #9'clmFreightGroupName, (SELECT sum(otprFreightWeight) otprFreight' +
        'Weight FROM clmOtpr WHERE clmOtpr.claim_id = claim.claim_id) as ' +
        'otprFreightWeight, (SELECT sum(otprCarCount) otprCarCount FROM c' +
        'lmOtpr WHERE clmOtpr.claim_id = claim.claim_id) as otprCarCount'
      'FROM Claim '
      
        'inner join etran_global_id on claim.claim_id = etran_global_id.g' +
        'lobal_id'
      
        'inner join etran_users on etran_global_id.users_owner_id = etran' +
        '_users.users_id'
      
        'WHERE'#9'users_owner_id in (SELECT users2.users_id FROM etran_users' +
        ' users1 inner join etran_users users2 on users1.users_group_id =' +
        ' users2.users_group_id WHERE users1.users_name = system_user)')
    Left = 56
    Top = 288
  end
  object DS_Claim: TDataSource
    DataSet = Query_Claim
    Left = 24
    Top = 288
  end
  object SP_XML_parser: TADOStoredProc
    Connection = ADOEtran
    ProcedureName = 'sp_ETRAN_XML_parser'
    Parameters = <
      item
        Name = '@xml_reply_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@doc_type_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@doc_sub'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1058
    Top = 504
  end
  object SP_XML_parser_view: TADOStoredProc
    Connection = ADOEtran
    CursorType = ctStatic
    ProcedureName = 'sp_ETRAN_XML_parser'
    Parameters = <
      item
        Name = '@xml_reply_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 43628
      end
      item
        Name = '@doc_type_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@doc_sub'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 6
      end>
    Left = 1058
    Top = 589
  end
  object Query_otprStyk: TADOQuery
    Connection = ADOEtran
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'clmOtpr_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM otprStyk WHERE clmOtpr_id = :clmOtpr_id')
    Left = 1048
    Top = 680
  end
  object DS_otprStyk: TDataSource
    DataSet = Query_otprStyk
    Left = 1016
    Top = 680
  end
  object DS_XML_parser_view: TDataSource
    DataSet = SP_XML_parser_view
    Left = 965
    Top = 597
  end
  object Query_otprGraphPod: TADOQuery
    Connection = ADOEtran
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'clmOtpr_id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM otprGraphPod WHERE clmOtpr_id = :clmOtpr_id')
    Left = 712
    Top = 687
  end
  object DS_otprGraphPod: TDataSource
    DataSet = Query_otprGraphPod
    Left = 680
    Top = 687
  end
  object SP_XML_parser_payer: TADOStoredProc
    Connection = ADOEtran
    CursorType = ctStatic
    ProcedureName = 'sp_ETRAN_XML_parser;1'
    Parameters = <
      item
        Name = '@xml_reply_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 14
      end
      item
        Name = '@doc_type_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 29
      end
      item
        Name = '@doc_sub'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 648
    Top = 592
  end
  object DS_XML_parser_payer: TDataSource
    DataSet = SP_XML_parser_payer
    Left = 552
    Top = 608
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 528
    Top = 8
    object ClientDataSet3xml_reply_id: TIntegerField
      FieldName = 'xml_reply_id'
    end
    object ClientDataSet3claimID: TIntegerField
      FieldName = 'claimID'
    end
    object ClientDataSet3claimNumber: TStringField
      FieldName = 'claimNumber'
      Size = 30
    end
    object ClientDataSet3claimState: TStringField
      FieldName = 'claimState'
      Size = 100
    end
    object ClientDataSet3clmDogNumber: TStringField
      FieldName = 'clmDogNumber'
      Size = 255
    end
    object ClientDataSet3clmSendKindName: TStringField
      FieldName = 'clmSendKindName'
      Size = 255
    end
    object ClientDataSet3clmMsgKindName: TStringField
      FieldName = 'clmMsgKindName'
      Size = 255
    end
    object ClientDataSet3clmLastOper: TDateTimeField
      FieldName = 'clmLastOper'
    end
    object ClientDataSet3clmCarOwnerTypeName: TStringField
      FieldName = 'clmCarOwnerTypeName'
      Size = 255
    end
    object ClientDataSet3clmTypePodName: TStringField
      FieldName = 'clmTypePodName'
      Size = 255
    end
    object ClientDataSet3claimVersion: TStringField
      FieldName = 'claimVersion'
      Size = 255
    end
    object ClientDataSet3claimRegDate: TDateTimeField
      FieldName = 'claimRegDate'
    end
    object ClientDataSet3clmPlanType: TStringField
      FieldName = 'clmPlanType'
      Size = 255
    end
    object ClientDataSet3clmSenderOKPO: TStringField
      FieldName = 'clmSenderOKPO'
      Size = 255
    end
    object ClientDataSet3clmSenderName: TStringField
      FieldName = 'clmSenderName'
      Size = 255
    end
    object ClientDataSet3clmSenderAddress: TStringField
      FieldName = 'clmSenderAddress'
      Size = 255
    end
    object ClientDataSet3clmSenderTGNL: TStringField
      FieldName = 'clmSenderTGNL'
      Size = 255
    end
    object ClientDataSet3clmFromCountryCode: TStringField
      FieldName = 'clmFromCountryCode'
      Size = 30
    end
    object ClientDataSet3clmFromStationCode: TStringField
      FieldName = 'clmFromStationCode'
      Size = 30
    end
    object ClientDataSet3clmEnterStationCode: TStringField
      FieldName = 'clmEnterStationCode'
      Size = 30
    end
    object ClientDataSet3clmFreightGroupCode: TStringField
      FieldName = 'clmFreightGroupCode'
      Size = 30
    end
    object ClientDataSet3clmFromCountryName: TStringField
      FieldName = 'clmFromCountryName'
      Size = 255
    end
    object ClientDataSet3clmFromStationName: TStringField
      FieldName = 'clmFromStationName'
      Size = 255
    end
    object ClientDataSet3clmEnterStationName: TStringField
      FieldName = 'clmEnterStationName'
      Size = 255
    end
    object ClientDataSet3clmFreightGroupName: TStringField
      FieldName = 'clmFreightGroupName'
      Size = 255
    end
    object ClientDataSet3clmLoadWayOwnerOKPO: TStringField
      FieldName = 'clmLoadWayOwnerOKPO'
      Size = 255
    end
    object ClientDataSet3clmLoadWayOwnerName: TStringField
      FieldName = 'clmLoadWayOwnerName'
      Size = 255
    end
    object ClientDataSet3clmLoadWayOwnerAgreementDate: TDateTimeField
      FieldName = 'clmLoadWayOwnerAgreementDate'
    end
    object ClientDataSet3clmLoadWayOwnerSoglType: TStringField
      FieldName = 'clmLoadWayOwnerSoglType'
      Size = 255
    end
    object ClientDataSet3clmLoadWayOwnerNote: TStringField
      FieldName = 'clmLoadWayOwnerNote'
      Size = 255
    end
    object ClientDataSet3clmStartDate: TDateTimeField
      FieldName = 'clmStartDate'
    end
    object ClientDataSet3clmFinishDate: TDateTimeField
      FieldName = 'clmFinishDate'
    end
    object ClientDataSet3clmNote: TStringField
      FieldName = 'clmNote'
      Size = 4000
    end
    object ClientDataSet3cnt_clmOtpr: TIntegerField
      FieldName = 'cnt_clmOtpr'
    end
    object ClientDataSet3cnt_clmRoute: TIntegerField
      FieldName = 'cnt_clmRoute'
    end
    object ClientDataSet3cnt_clmPayer: TIntegerField
      FieldName = 'cnt_clmPayer'
    end
    object ClientDataSet3cnt_clmDoc: TIntegerField
      FieldName = 'cnt_clmDoc'
    end
    object ClientDataSet3cnt_clmAgreement: TIntegerField
      FieldName = 'cnt_clmAgreement'
    end
    object ClientDataSet3cnt_clmInv: TIntegerField
      FieldName = 'cnt_clmInv'
    end
    object ClientDataSet3claim_id: TIntegerField
      FieldName = 'claim_id'
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
    ImageOptions.Images = cxImageList2
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 280
    Top = 192
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 524
      FloatTop = 102
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton51'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton52'
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
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton6Click
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton10'
        end>
    end
    object dxBarButton7: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton7Click
    end
    object dxBarButton8: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton8Click
    end
    object dxBarButton9: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton9Click
    end
    object dxBarButton10: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton10Click
    end
    object dxBarButton11: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton11Click
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton15'
        end>
    end
    object dxBarButton12: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton12Click
    end
    object dxBarButton13: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton13Click
    end
    object dxBarButton14: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton14Click
    end
    object dxBarButton15: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton15Click
    end
    object dxBarButton16: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton16Click
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton20'
        end>
    end
    object dxBarButton17: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton17Click
    end
    object dxBarButton18: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton18Click
    end
    object dxBarButton19: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton19Click
    end
    object dxBarButton20: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton20Click
    end
    object dxBarButton21: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton21Click
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton25'
        end>
    end
    object dxBarButton22: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton22Click
    end
    object dxBarButton23: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton23Click
    end
    object dxBarButton24: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton24Click
    end
    object dxBarButton25: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton25Click
    end
    object dxBarButton26: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton26Click
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton27'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton28'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton29'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton30'
        end>
    end
    object dxBarButton27: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton27Click
    end
    object dxBarButton28: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton28Click
    end
    object dxBarButton29: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton29Click
    end
    object dxBarButton30: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton30Click
    end
    object dxBarButton31: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton31Click
    end
    object dxBarSubItem7: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton32'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton33'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton34'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton35'
        end>
    end
    object dxBarButton32: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton32Click
    end
    object dxBarButton33: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton33Click
    end
    object dxBarButton34: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton34Click
    end
    object dxBarButton35: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton35Click
    end
    object dxBarButton36: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton36Click
    end
    object dxBarSubItem8: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton37'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton38'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton39'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton40'
        end>
    end
    object dxBarButton37: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton37Click
    end
    object dxBarButton38: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton38Click
    end
    object dxBarButton39: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton39Click
    end
    object dxBarButton40: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton40Click
    end
    object dxBarButton41: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton41Click
    end
    object dxBarSubItem9: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton42'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton43'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton44'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton45'
        end>
    end
    object dxBarButton42: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton42Click
    end
    object dxBarButton43: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton43Click
    end
    object dxBarButton44: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton44Click
    end
    object dxBarButton45: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton45Click
    end
    object dxBarButton46: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = dxBarButton46Click
    end
    object dxBarSubItem10: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton47'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton48'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton49'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton50'
        end>
    end
    object dxBarButton47: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099'...'
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
      OnClick = dxBarButton47Click
    end
    object dxBarButton48: TdxBarButton
      Caption = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Category = 0
      Hint = #1055#1072#1085#1077#1083#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1086#1082
      Visible = ivAlways
      ImageIndex = 13
      OnClick = dxBarButton48Click
    end
    object dxBarButton49: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1084#1091
      Visible = ivAlways
      ImageIndex = 44
      OnClick = dxBarButton49Click
    end
    object dxBarButton50: TdxBarButton
      Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1074#1089#1077#1084' '#1079#1072#1087#1080#1089#1103#1084
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButton50Click
    end
    object dxBarButton51: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton51Click
    end
    object dxBarButton52: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1079#1072#1103#1074#1082#1080
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1079#1072#1103#1074#1082#1080
      Visible = ivAlways
      ImageIndex = 6
      OnClick = dxBarButton52Click
    end
    object dxBarButton53: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1079#1072#1103#1074#1082#1091' (XML)...'
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1079#1072#1103#1074#1082#1091' (XML)'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = dxBarButton53Click
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
        ItemName = 'dxBarSubItem1'
      end>
    UseOwnFont = False
    Left = 176
    Top = 296
    PixelsPerInch = 96
  end
  object dxBarPopupMenu2: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton6'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem2'
      end>
    UseOwnFont = False
    Left = 176
    Top = 336
    PixelsPerInch = 96
  end
  object dxBarPopupMenu3: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton11'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem3'
      end>
    UseOwnFont = False
    Left = 176
    Top = 384
    PixelsPerInch = 96
  end
  object dxBarPopupMenu4: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton16'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem4'
      end>
    UseOwnFont = False
    Left = 176
    Top = 424
    PixelsPerInch = 96
  end
  object dxBarPopupMenu5: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton21'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem5'
      end>
    UseOwnFont = False
    Left = 176
    Top = 472
    PixelsPerInch = 96
  end
  object dxBarPopupMenu6: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton26'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem6'
      end>
    UseOwnFont = False
    Left = 280
    Top = 272
    PixelsPerInch = 96
  end
  object dxBarPopupMenu7: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton31'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem7'
      end>
    UseOwnFont = False
    Left = 280
    Top = 320
    PixelsPerInch = 96
  end
  object dxBarPopupMenu8: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton36'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem8'
      end>
    UseOwnFont = False
    Left = 280
    Top = 368
    PixelsPerInch = 96
  end
  object dxBarPopupMenu9: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton41'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem9'
      end>
    UseOwnFont = False
    Left = 280
    Top = 416
    PixelsPerInch = 96
  end
  object dxBarPopupMenu10: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton53'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton46'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem10'
      end>
    UseOwnFont = False
    Left = 280
    Top = 464
    PixelsPerInch = 96
  end
  object cxImageList2: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 12517562
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000B7A293FF634935FF634935FF634935FF634935FF6349
          35FF634935FF634935FF634935FF634935FF634935FF00000000000000000000
          00000000000000000000B7A293FFFFFFFFFFB7A293FFB7A293FFB7A293FFB7A2
          93FFB7A293FFB7A293FFB7A293FFB7A293FF634935FF00000000000000000000
          00000000000000000000B7A293FFFFFFFFFFFFFFFFFFFCFAF9FFF7F1EEFFF1E7
          E1FFECDDD5FFE6D3C9FFE1CABDFFB7A293FF634935FF00000000000000000000
          00000000000000000000B7A293FFFFFFFFFFFFFFFFFFFEFEFEFFFAF7F5FFF5ED
          E9FFEFE3DCFFEAD9D1FFE4CFC4FFB7A293FF634935FF00000000000000000000
          00000000000000000000B7A293FFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBFFF8F3
          F0FFF2E9E3FFEDDFD8FFE7D5CBFFB7A293FF634935FF00000000000000000000
          00000000000000000000BAA596FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8
          F7FFF6EFEBFFF0E5DFFFEBDBD3FFB7A293FF634935FF00000000000000000000
          00000000000000000000BEA99AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD
          FCFFF9F5F2FFF4EBE6FFEEE1DAFFB7A293FF634935FF00000000000000000000
          00000000000000000000C3AE9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCFAF9FFF7F1EEFFF1E7E1FFB7A293FF634935FF00000000000000000000
          00002CEDFF7C0EDBFF9600AEFFFF1FE4FFFF79EDFFFF9BF4FFFFFFFFFFFFFFFF
          FFFFFEFEFEFFFAF7F5FFF5EDE9FFB7A293FF634935FF00000000000000003EF4
          FFC10079FAFF95FFFFFF009DFFFF02DCFFFF95FFFFFF0079FAFF99FFFFFFFFFF
          FFFFFFFFFFFFFDFCFBFFB7A293FFB7A293FF644A36FF00000000000000004CFC
          FFCB95FFFFFF0079FAFF00A8FFFF00B4FFFF0079FAFF95FFFFFF7FFFFFFFFFFF
          FFFFFFFFFFFFB7A293FF644A36FF644A36FF644A36FF000000000000000000D6
          FFFB13E7FFFE0092FFFF00D3FFFF05DEFFFF00BFFFFF31F8FFFF1CE3FFFFFFFF
          FFFFFFFFFFFFB9A495FFD4C5BAFF644A36FFC9B3A48C0000000000000000008C
          FAFF0095FFFF0091FFFFFFFFFFFFA8FFFFFF00B4FFFF009AFFFF00A8FFFFFFFF
          FFFFFFFFFFFFC0AB9CFF644A36FFC9B3A48B0000000000000000000000000BDB
          FFCD95FFFFFF0079FAFF00A0FFFF00B1FFFF0079FAFF95FFFFFF3BD9F0FFD4BE
          AEFFCFB9A9FFC9B3A4FFC9B3A48B000000000000000000000000000000000DD8
          FFB20079FAFF95FFFFFF00B4FFFF00D6FFFF95FFFFFF0079FAFF3DF5FFAA0000
          0000000000000000000000000000000000000000000000000000000000000000
          000067FFFFF854FFFFD8009BFFFF00D3FFFF4FFEFFDF58FFFFFA000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000CE8642F6DA9859FFDFA66FFFDEA56DFFDEA46CFFDDA26BFFDDA169FFDCA0
          68FFDC9F67FFDB9E65FFD58D4AFFC7782DF60000000000000000000000000000
          0000DD9E60FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFEFCFFFFFDFBFFFFFD
          FBFFFFFCFAFFFFFCF9FFFFFEFDFFD6904EFF0000000000000000000000000000
          0000E3AF7BFFFFFFFEFFFFFCFAFFFFFBF6FFFFF9F2FFFFF7EEFFFFF5EBFFFFF3
          E7FFFFF1E3FFFFEFE0FFFFFBF7FFDDA36CFF0000000000000000000000000000
          0000E5B380FFFFFDFCFFFFF7F0FFFFF6ECFFFFF4E8FFFFF2E5FFFFF0E1FFFFEE
          DDFFFFECD9FFFFEAD6FFFFFAF4FFDFA770FF0000000000000000000000000000
          0000E6B684FFFFFCF9FF0083D2FF60ACD8FFDFE1DCFFFFEDDBFFFFEBD7FFFFE9
          D3FFFFE7CFFFFFE5CCFFFFF8F2FFE1AA75FF0000000000000000000000000000
          0000E8B989FFFFFBF7FF60ABD6FF127BA7FF0090DFFF60A9D2FFEFE0CDFFFFE4
          C9FFFFE2C5FFFFE1C2FFFFF7EFFFE2AD79FF0000000000000000000000000000
          0000EABD8DFFFFFAF4FFDFDBD2FF008BDFFF00C7FFFF00B2F0FF3095CFFFEFD9
          C0FFFFDDBCFFFFDCB8FFFFF6EDFFE4B17DFF0000000000000000000000000000
          0000EBC091FFFFF8F2FFFFE4C8FF60A7CDFF00C2F0FF00DFFFFF00B7F0FF3093
          CDFFEFD3B4FFFFD7AEFFFFF5EAFFE6B482FF0000000000000000000000000000
          0000EDC496FFFFF7EFFFFFDFBEFFEFD7BCFF3094CDFF00C7F0FF00E6FFFF00BC
          F0FF3092CAFFEFCDA7FFFFF3E8FFE7B886FF0000000000000000000000000000
          0000EFC79AFFFFF6EDFFFFDAB4FFFFD8B0FFEFD1AFFF3092CAFF00CBF0FF00EE
          FFFF00C1F0FF3091C8FFEFEBE5FFE9BB8BFF0000000000000000000000000000
          0000F0CA9EFFFFF5EAFFFFD5AAFFFFD3A7FFFFD1A3FFEFCAA2FF3091C8FF00D0
          F0FF00F5FFFF00C5F0FF3098D6FFDCBA93FF0000000000000000000000000000
          0000F2CDA3FFFFF3E8FFFFD0A0FFFFCE9DFFFFCD9AFFFFCC99FFEFC89DFF30A2
          E0FF00D6F3FF00FCFFFF00C2E8FF598295FF0A06061000000000000000000000
          0000F3D1A7FFFFF2E6FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFEFF8
          FDFF30ABE6FF00D4EFFF88A1A1FFCCA4A4FF7F5C68CF0B080810000000000000
          0000F5D4ABFFFFF2E6FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFFF
          FFFFEEF5F6FF6FADBEFFE5CDCDFF3C38B2FF00008FFF000062BF000000000000
          0000F6D4A9FFFFFFFFFFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFEF8
          F1FFF1CB9DFFCEA77CE0C0ADBBEF0000BEFF153FF4FF0000A1FF000000000000
          0000ECC795F6F7D7ACFFF7D9B1FFF7D8B0FFF6D7AFFFF6D6ADFFF5D5ACFFF1C5
          8EFFCEA778DB000000002A262630121F9DBF0419D1FF0000719F}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000736D8EFF777386FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007259
          DDFF2805CBFF331CA2FF6F6A81FF000000000000000000000000000000000000
          00000000000000000000604BC1FF5336CDFF0000000000000000000000007259
          DDFF2900DEFF2400C3FF41347EFF737277FF0000000000000000000000000000
          0000000000005135CCFF2A06CCFF5D45C4FF0000000000000000000000000000
          0000694EDEFF2900E0FF2B0CB9FF544C7AFF939393FF00000000000000000000
          00005033CCFF2803CDFF5D45C4FF000000000000000000000000000000000000
          000000000000694EDEFF2D06DDFF391DAEFF615982FF919193FF000000004E33
          CBFF2601CDFF5D46C3FF00000000000000000000000000000000000000000000
          00000000000000000000694EDEFF2F0ADAFF371CAEFF45348AFF381ABEFF2704
          C6FF5C46C3FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000694EDEFF2600D6FF2300C0FF2500C7FF5747
          A0FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003B1AC8FF2500CCFF2E0BC5FF6053
          9EFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004F33CBFF2700CDFF4629C6FF401ED4FF4224
          C2FF6E63ABFF0000000000000000000000000000000000000000000000000000
          000000000000000000004F33CBFF2700CEFF5D45C4FF00000000000000005739
          DAFF3F1FC8FF6B5DADFF00000000000000000000000000000000000000000000
          0000000000004F33CBFF2600CDFF5A44C4FF0000000000000000000000000000
          00006045DDFF3816CAFF6757AEFF000000000000000000000000000000000000
          00004F33CBFF2600CDFF5A44C4FF000000000000000000000000000000000000
          0000000000005D3FDDFF5133D2FF000000000000000000000000000000005133
          D7FF2600D1FF5035CDFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005133
          D9FF5435DDFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000FF000000FF000000FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B
          7B000000FF000000FF0000000000FF00FF000000FF000000FF000000FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B000000
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000
          FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF007B7B7B000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF007B7B7B000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000FF000000FF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF0029313100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002931
          3100006B940029313100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF009463630094636300FF00FF00FF00FF00FF00FF00006B940063CE
          FF0031ADD600006B940029313100FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0094636300DEADAD00F7DEDE00D6848400FF00FF00FF00FF00FF00FF00006B
          940063CEFF0031ADD600006B940029313100FF00FF00FF00FF00FF00FF009463
          6300DEADAD00FFF7F700D6848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00006B940063CEFF0031ADD600006B940029313100FF00FF0094636300DEAD
          AD00FFF7F700D6848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00006B940063CEFF0031ADD600006B940094636300DEADAD00FFF7
          F700D6848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00006B940063CEFF0094636300DEADAD00FFF7F700D684
          8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0094636300DEADAD00FFF7F700D68484002931
          3100FF00FF00FF00FF00FF00FF00D684840094636300FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0094636300DEADAD00FFF7F700D684840031ADD600006B
          940029313100FF00FF00FF00FF00D6848400FFFFFF0094636300FF00FF009463
          63009463630094636300DEADAD00FFF7F700D6848400006B940063CEFF0031AD
          D6009463630094636300846352008C736300D6848400D684840094636300FFF7
          F700EFD6D600DEADAD00F7DEDE00D6848400FF00FF00FF00FF00006B9400D684
          8400EFD6D600DEB5B500DEADAD008C736300FF00FF00FF00FF0094636300D684
          8400D6848400D6848400EFD6D600D6848400FF00FF00FF00FF00FF00FF00D684
          8400FFF7F700EFD6D600DEB5B500D6848400FF00FF00FF00FF0094636300FF00
          FF00FF00FF00D6848400EFD6D600D6848400FF00FF00FF00FF00FF00FF00D684
          8400FFFFFF00FFF7F700D6848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0094636300FFF7F700D6848400FF00FF009463630094636300F7DE
          DE00FFFFFF00D6848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D6848400D6848400D6848400FF00FF00D6848400D6848400D6848400D684
          8400D6848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000753701A8C16312F2C86812FA9041
          05C7491D006B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C76E1AF3FFAE4FFFFFAD48FFFFA73DFFFF97
          2AFFEB7E18FE6B2C00900000000000000000000000000000000000000000AE5F
          10CE9D570DB200000000C46E1BF5FFB763FFFFB259FFD1731DF8672E008B3C18
          00535823007CA54500E8411A005A00000000000000000000000000000000CC81
          33F6FDC285FFB56202EEFFC98EFFFFBE74FFD37A23F800000000000000000000
          000000000000000000005B24007A00000000000000000000000000000000AC68
          1FD5FFE0BDFFFFCF9EFFFFCC96FFECA660FF582B007000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008A4E
          07B3FFE9D1FFFFD2A4FFFFCF9FFFCF8129FD592B007500000000000000000000
          0000000000000000000000000000000000000000000000000000000000006D38
          0091FFF3E5FFFFE2C5FFFFDCB7FFFFD4A1FFFFC37EFF713B0091000000007B39
          039E9E5116C7B5672BE0C08043F8BE743AF73614005200000000000000004222
          0055D99944F8DA9D4CF9CE852BE3B36A16CA945003B00000000069310094FFD9
          A0FFFFE5BCFFFFE4C0FFFFE2BCFFFFE4BAFF561C008F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000005020
          007ACC7D38FEFFD3A0FFFFD1A2FFFFE0B1FF732F04B100000000000000000000
          0000000000000000000000000000000000000000000000000000000000005425
          0072F8B776FFFFCC94FFFFCF98FFFFDFB0FF964C17D300000000000000000000
          000000000000753B00900000000000000000000000000000000000000000D982
          2BF6FFBE75FFFFCA88FFA14800EFFECC9BFFBC6A2AF300000000000000000000
          0000000000004E28005EC37001E76639007700000000703B0089DB8222F6FFB0
          57FFFFC179FFC46C1EF30000000094490EB7A04B10C500000000000000000000
          0000000000000000000084490095F78F1AFEFC952AFFFFA13AFFFFA743FFFFBF
          75FFC96F1BF44921006200000000000000000000000000000000000000000000
          0000000000000000000000000000572E006FAB650FCBD47E1FFDCA7821F78845
          03B9000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002721
          1D3F7F6652FF7C624EFF795F4BFF765C48FF725844FF6F5541FF6B513DFF684E
          3AFF654B37FF634935FF634935FF291E16690000000000000000201B183C947E
          71EDE3CDBEFFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A293FFB7A2
          93FFB7A293FFB7A293FFB7A293FF634935FF0A07051A0000000054494285A795
          87F6F8EBE2FFFEF4EEFFFEF0E6FFFDE8DCFFF7DBC8FFF3CDB5FFEFC2A5FF00A1
          02FF00A102FF00A102FF715845FF634935FF443225B0000000009D8576EFE0D8
          D2FFFFFCFAFFFFFFFFFFFFFFFFFFFFFCFAFFFBF3EDFFF5E3D8FFEED5C5FF00FF
          0AFF00FFB4FF00A102FF7D6553FF6B523EFF634935FF00000000AA907FFFEBE6
          E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5F2FFF1E7E1FF00FF
          0AFF00FF0AFF00A102FF897160FF775E4CFF634935FF00000000AE9684FFD0C0
          B3FFCBBBAFFFBFAEA1FFB5A294FFAA9586FF9F8A7AFF957E6EFF8B7362FF826A
          58FF7B6250FF745B48FF957E6DFF836B59FF6E5440FF00000000BAA08DFFF8F4
          F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBFFFBF8F6FFF8F3
          F1FFF6EEEAFFF3E9E4FFA18A7BFF8F7766FF7A614DFF00000000322A254F9E88
          78E5CCB3A1FFC2A999FFC9B2A3FFB9A192FFA99181FF9B8271FF8B7260FF7D63
          51FF775D4AFF856C5AFFB49F90FF9B8474FF785E4AFF00000000000000003B32
          2C5AC6AD9BFFD9CABDFFFFFFFFFFFCFAF9FFFCFAF9FFF8F3F1FFF4ECE7FFECE0
          D9FFBBA89AFF7A604DFFA58F7FFFC5AD9DFF7B614DFF00000000000000000000
          000025211D30C6AD9BFFFEFDFCFFECE7E2FFD7CBC2FFD7CBC2FFCABBB0FFD2C2
          B7FFE1D3CAFF846A59FF785E4DF8B19B8CFFB7A293FF00000000000000000000
          0000000000007C6E649CEEE5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF9FFF8F3
          F1FFE8DCD5FFCAB9ADFF785E4BFE32271F6B0000000000000000000000000000
          0000000000001614121BCFB9A9FFFEFDFDFFF2EEEBFFD7CBC2FFD7CBC2FFCABB
          B0FFC6B3A8FFE2D4CBFF866E5CFF715947EF0000000000000000000000000000
          000000000000000000005D534C72D8C9C4F3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCFAF9FFEFE6E1FFC8B7ABFF795F4CFE120E0B2600000000000000000000
          00000000000000000000030303045E544D73D4BEAEFFD4BEAEFFD4BEAEFFD4BE
          AEFFD4BEAEFFD4BEAEFFD4BEAEFFD3BDADFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000B8A394FF6950
          3DFF705946FF765F4EFF765F4EFF745C4AFF6F5745FF6C5340FF6E5643FF745C
          4AFF786251FF786251FF725B49FF6C5340FF654C38FF634935FFB9A596FFFDF8
          F6FFFDF7F5FFE3D9D3FFFDF5F0FFFCF2EBFFD7CAC1FFFAE9DEFFFAE7DBFFD7CA
          C2FFFBEBE0FFFAE9DDFFD2C4BBFFF7D9C6FFF5D1BAFF644A37FFBCA99BFFFEFB
          FAFF878786FF333333FF2D2D2DFF61605FFF837F7DFFFCF2ECFFCAC0BAFF2727
          27FF252525FF212121FF222222FFDFC9BBFFF6D5C0FF654C38FFBDAA9CFFE4DA
          D3FF5F5E5EFF444444FFB1ADABFFF0EAE7FF353535FF767473FFE6DED8FFECE6
          E1FF282828FF242424FFE6DED9FFCDBDB3FFBEAB9EFF644A37FFBDA99BFFFEFE
          FEFFD7D6D6FFC6C0BCFFFEFBFAFFFEFBFAFF3D3D3DFF2F2F2FFFFDF6F2FFEBE4
          E0FF2A2A2AFF242424FFE3DAD4FFF9E0D0FFF6D7C3FF634935FFBDA899FFFEFE
          FEFFFEFEFEFFE4D9D2FFFEFDFCFFBCBBBAFF343434FF2F2F2FFFFDF8F4FFEAE3
          DFFF2C2C2CFF252525FFE2D9D3FFF8E1D2FFF7DAC6FF634935FFBFAA9BFFDECF
          C6FFDFD2C9FFE4DAD3FF8F8C8BFF4B4B4BFF424242FF414141FFE9E1DCFFEBE4
          DFFF313131FF2A2A2AFFE3DAD4FFCBBBB0FFC1ADA1FF634935FFC2AD9EFFFEFE
          FEFFFEFEFEFFE8DED7FFC7C7C7FF5C5C5CFF545454FFE7E6E5FFFEFAF8FFECE6
          E1FF353535FF2D2D2DFFE4DBD6FFFAE7DBFFF8E0D1FF634935FFC6B1A2FFFEFE
          FEFFEAEAEAFFE6DFDAFFFFFFFFFFB5B5B5FF505050FF9C9C9CFFFEFBFAFFF0EA
          E6FF3A3A3AFF303030FFE5DDD7FFFBEBE0FFF9E3D6FF634935FFCAB5A7FFE3D6
          CFFFA29D9BFF666665FFB1AFAEFF676767FF585858FF838281FFC7C1BEFF6D6C
          6BFF464646FF353535FFDAD2CBFFD2C2B8FFC8B6AAFF634935FFCBB6A7FFFEFE
          FEFFFEFEFEFFB9B5B2FF7C7C7CFF6F6F6FFF858483FFFEFEFEFFFEFDFCFFE8E0
          DAFFB2B0B0FF5F5E5EFFDCD1CAFFFBF0E8FFFAEAE0FF634935FFCCB7A8FFFEFE
          FEFFFEFEFEFFE6DBD5FFFEFEFEFFFEFEFEFFE9DFD9FFFEFEFEFFFEFEFEFFDFD3
          CBFFFEFBFAFFFEF9F7FFD9CBC1FFFCF2ECFFFBEEE5FF634935FFEAAA8BFFEAAB
          8CFFEBAD8FFFEBAB8DFFEBA988FFEAA37EFFE89870FFE68C5EFFE4804EFFE47A
          46FFE47B45FFE47C47FFE37841FFE2733BFFE27239FFC8622FFFEAAA8BFFFFC2
          A2FFFEC09FFFFDBE9BFFFCBA97FFFBB692FFFAB18CFFF9AC85FFF8A77DFFF6A2
          77FFF59E72FFF59A6BFFF39565FFF39565FFF39565FFCD6531FFEAAA8BFFEAAA
          8BFFEAAA8BFFEAAA8BFFEAA686FFE9A17FFFE89B76FFE7946CFFE68E62FFE587
          58FFE4814EFFE47B46FFE3763EFFE3763EFFE3763EFFE27239FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000003A734C003A73
          4C003A734C00336D4700336D4700336D47002C6642002C6642002C664200265D
          3800265D3800265D38001E5331001E5331001E5331001A4D2A003A734C006CA6
          7C0066A0770066A077005F9B72005F9B720058966B0058966B0049935F004993
          5F0049935F003D8C57003D8C5700358C4F00358C4F001A4D2A00417B57006CA6
          7C00EBF3EB00E8F1E800E6F0E600E4EFE400E2EEE300DFECDF00DEEBDE00DCEA
          DD00DCEADB00D9E8D900D8E7D800D8E7D800358C4F001A4D2A00417B570071AA
          8100EDF5ED00EBF3EB00EAF1E900E6F0E600E4EFE400E2EEE300DFECDF00DEEB
          DE00DCEADB00DCEADB00DAE9DA00D8E7D8003D8C57001E53310047815D0076AF
          8500EFF6EF00EDF5ED00EBF3EB00E9F2E900E8F1E800E4EFE40081AA8D002C52
          30002C5230002C5230002C523000DAE9DA003D8C57001E5331004D8762007CB5
          8A00F3F8F30055A45A002C5230002C5230002C5230002C5230001D781E006DB6
          750049935F004B964D00265D3800DCEADB0049935F00265D3800558E670081BC
          9000F4F9F400F1F7F10055A45A0063B2760055A45A001D781E007CC185004993
          5F004B964D00265D380081AA8D00DCEADD0049935F00265D380058966B008AB7
          9500F6FAF600F5F9F500F3F8F30055A45A003287350081BC900049935F004B96
          4D00265D38006199640061996400DFECDF0049935F00265D38005F9B720094C7
          9C00F9FBFA00F6FAF600F5F9F5003287350094C79C005CAA650055A45A00336D
          470004690400E6F0E600E2EEE300E1EDE10058966B002C66420066A0770094C7
          9C00FCFDFB00F9FBFA00409347009DD0A7006DB675005CAA65004287490055A4
          5A003287350004690400E6F0E600E4EFE40058966B002C6642006CA67C009DD0
          A700FCFDFC004B964D00AAD6B20073BB7C0073BB7C0049935F0057825A0068B0
          6F0055A45A003287350004690400E6F0E6005F9B7200336D470071AA81009DD0
          A700FEFEFE0068B06F0064AC690064AC6900579A5E00F6F9F600F3F8F3005782
          5A0057825A0057825A0057825A00E9F2E9005F9B7200336D470076AF8500AAD6
          B200FEFEFE00FDFEFD00FDFEFD00FCFDFB00F9FBFA00F8FAF800F6F9F600F4F9
          F400F1F7F100EFF6EF00EDF5ED00EBF3EB0066A077003A734C007CB58A00AAD6
          B200FFFFFF00FFFFFF00FEFFFE00FDFEFD00FCFDFB00F9FBFA00F8FAF800F6FA
          F600F4F9F400F1F7F100EFF6EF00EDF5ED0066A077003A734C007CB58A00AAD6
          B200AAD6B2009DD0A7009DD0A70094C79C0094C79C0094C79C008AB7950081BC
          90007CB58A0076AF850071AA810071AA81006CA67C003A734C0081BC90007CB5
          8A0076AF850071AA81006CA67C0066A077005F9B720058966B00558E67004D87
          62004D87620047815D00417B5700417B57003A734C003A734C00}
        MaskColor = clDefault
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000AF623400AD60
          3200AA5E3000A85B2C00A4582800A05524009C502000984D1D00934919009045
          15008B421000873F0C00843B0900813806007F3503007D340100B8694200EBAE
          9400EBAD9200E9AB9000E6A98F00E4A78B00E0A48800DDA28500D89E8100D59B
          7F00D1997B00CE967700CB947500C8917300C79071007F360300BB6C4500ECB0
          9600FCF6F500FBF4F200FAF3F100FAF1F000F9F0ED00F9EEEC00F8EEEA00F8EC
          E900F8EAE700F7EAE600F6E8E500F6E7E300C891720081380600BE6F4900EDB2
          9A00FCF7F500FCF6F400FBF5F300FBF2F100FAF1F000F9F0EE00F9EFED00F9ED
          EB00F8ECE900F7EAE800F7E9E600F7E8E500CA937400843B0900C3724C00EEB5
          9D00FDF8F700A95126008D4F2900C0B8AB00FAF3F100FAF1F000A9512600583B
          1400B5AB9C00F8ECE900F8EAE800F7E9E700CD967700883F0C00C7765000EFB8
          A100FDFAF900C47B5E00DE7644008D4F2900ECE9E600F5F2EF00CD683F008D4F
          2900583B1400E9DFD900F8ECE900F7EBE800D1987A008B421000CC7B5500F0BB
          A500FDFAFA00C9836900E2957800DE7644008D4F2900E3D6CD00DB7D5800DE76
          44008D4F2900998B7700F9EDEA00F8ECE900D39B7D008F451400D17F5A00F0BE
          A900FEFBFB00D38E7200B77F6500D19B8300DE7644008D4F2900C56E4A00C983
          6900B6623A00583B1400E9DFD900F8EEEB00D79D800093491800D6825E00F2C1
          AD00FEFCFC00D8977E00B77F6500E6BBAC00C9836900DE76440085462400E0AA
          9600D17547008D4F2900A08F7C00F9EFEC00DAA08300984D1C00DB866300F2C4
          B100FEFEFD00DCA08800B77F6500F5E4E000DCA08800E1AC980088492700E2CB
          C200DDB9AB00B6623A00583B1400F5F0ED00DEA286009C512100DF8A6800F4C7
          B500DF967C00E4A89100E4A89100AD7A6500FFFFFF00D186690091503000E2CB
          C200E1AC9800C7816900B6623A00D49A8100E1A58900A0542500E48E6B00F4CA
          B800D8957F00D28C7300D28D7500C8755600DFBBAE00FEFBFA0099573900FCF8
          F700CA755400CB7B5D00CE7A5B00C66C4A00E4A78C00A4582800E7916E00F5CC
          BB00FFFFFF00FFFFFF00FFFEFE00FEFEFE00FEFDFC00FEFCFB00FEFBFA00FDF9
          F900FCF8F700FCF7F600FCF5F400FBF4F300E6AA8E00A75B2D00EB937200F6CE
          BE00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFEFD00FEFDFC00FDFCFB00FEFA
          FA00FDFAF900FCF8F800FCF7F600FBF5F400E9AB9100AA5D2F00ED967400F7CF
          C000F6CEBE00F5CCBC00F4CAB800F4C7B500F2C4B100F2C1AD00F0BEA900F0BB
          A500EFB8A100EDB59D00ECB39A00ECB09600EBAE9400AD603200ED967400ED96
          7400EB947200E8916F00E48F6D00E18C6800DD886500D8846100D4815C00CF7D
          5800CA795300C5755000C1714C00BD6F4800BA6C4500AF623400}
        MaskColor = clBlack
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000008400000084000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000008400000084000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000008400000084000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008484840000008400000084008484
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000840000008400000084000000
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000008400000084000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FE7F0000FC3F0000FC3F0000FE7F0000FFFF0000FE7F
          0000FC3F0000FC3F0000FC3F0000FC3F0000FC3F0000FC3F0000FC3F0000FE7F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000002F4660058CC3FF0894C9FF068C
          C3FF026997CF00354F7000080B10000000000000000000000000000000000000
          00000000000000000000000000000000000004729ECF15B2DFFF13B0DEFF12AE
          DCFF10ACDBFF0B9FD1FF037BB0EF002639500000000000000000000000000000
          000000000000000000000000000000000000015D84AF17B3E0FF17B5E1FF16B3
          E0FF14B1DFFF13AFDDFF11AEDCFF068EC4FF002E456000000000000000000000
          000000000000000000000000000000000000002A3C5010A4D4FF1BB9E5FF1AB8
          E3FF18B6E2FF17B4E1FF14AFDDFF13ADDCFF058AC1FF0010172000090C100049
          638000486380003E5670001B25300000000000090C1010A4D5FF1FBEE8FF1EBC
          E7FF1CBBE6FF18B1DFFF0FA6DBFF0FA0D6FF0E97CCFF004F739F037CA6CF22C0
          EAFF2CCEF4FF20BDE8FF12A9D9FF0584B1DF0276A1CF1CB6E3FF23C3ECFF22C1
          EBFF20BFE9FF40DEF7FF4BE9FCFF4BE9FCFF23B8E2FF088ABBEF16B2DFFF31D4
          F9FF30D2F8FF2ED1F6FF2DCFF5FF2CCDF4FF2ACBF2FF29CAF1FF27C8F0FF26C6
          EEFF24C4EDFF44D9F1FF77FAF8FF6BF2F6FF2AC5EAFF0FA0D2FF1BBAE5FF35D9
          FDFF34D7FBFF26B7E4FF23B0E0FF2ECDF4FF2ED0F6FF2DCEF5FF2BCDF3FF2ACB
          F2FF28C9F1FF24BEE9FF22BCE7FF24C4ECFF22C2EBFF11A4D4FF12AEDCFF38DC
          FFFF29C3A8FF16AA35FF14A347FF1FA8C2FF32D5FAFF31D3F8FF2FD1F7FF2ED0
          F6FF50BEC7FF879065FF788B6AFF1BA4D6FF26C7EFFF1498C5EF005F7F9F31D4
          F9FF38D47FFF34CD4EFF30C948FF30CBC8FF34D4F9FF20A4D7FF1FA3D6FF30CF
          F6FFCBD39EFFFFC764FFFFB741FF5AB2B4FF2CC7EEFF00587A9F00131A2017AF
          DCFF40DFE6FF44E3BCFF40E0C1FF38DCFFFF166EE7FF001DD2FF0121CCFF22A2
          E1FF81E2E6FFF2EEC0FFCCE0B7FF54D6EAFF16A5D4FF0012192000000000003A
          4D601EB4DFFF44DFFFFF38DCFFFF38DCFFFF1266FBFF002FF6FF002CF1FF2BB5
          F7FF38DBFFFF37DAFEFF4ADEFDFF23B3DDFF00384B6000000000000000000000
          000000304050139DC9EF41D0F2FF4CE0FFFF40D4FFFF2B95FFFF39BFFFFF44DF
          FFFF52E2FFFF47D2F2FF139DC9EF002F40500000000000000000000000000000
          000000000000000A0D1000435A700D86ACCF26B6DFFF33C0E6FF33C0E6FF26B6
          DFFF0D86ACCF00435A70000A0D10000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000D8E9EC00FFFF
          FF00D8E9EC00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0080808000000099000000990000009900D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00808080000000CC000000990000009900000099000000
          9900D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000CC000000CC000000CC0000009900000099000000
          990000009900D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00FFFFFF00D8E9
          EC00FFFFFF00D8E9EC000000FF000000CC000000CC000000CC00000099000000
          99000000990000999900D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC000000FF000000FF000000CC000000CC000000CC000000
          99000099990000CCCC0000999900D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC000000FF000000FF000000CC000000CC000099
          990000CCCC0000CCCC0000CCCC0000999900D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000FF000000800000CCCC0000FF
          FF0000FFFF0000CCCC0000CCCC0000CCCC0000999900D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000CCCC0000FFFF00FFFF
          FF00C0C0C00000FFFF0000CCCC0000CCCC0000CCCC0000999900D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000CCCC0000FF
          FF00FFFFFF00C0C0C00000FFFF0000CCCC000099990099330000D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000CC
          CC0000FFFF00FFFFFF0000FFFF0000999900CC66000099330000D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC0000CCCC0000FFFF0000CCCC00CC660000CC660000CC660000D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC0000CCCC00FF990000FF990000CC660000CC660000D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC0099330000FF990000FF990000CC660000D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
          EC00D8E9EC00D8E9EC00D8E9EC0099330000FF990000FF990000}
        MaskColor = 14215660
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000BBA6
          97FF634935FF634935FF634935FF634935FF634935FF00000000000000000000
          000000000000000000000000000000000000000000000000000000000000C2AC
          9DFFFEFDFCFFFCF2EBFFFAE4D8FFF7D8C4FF634935FF00000000000000000000
          000000000000000000000000000000000000000000000000000000000000CCB6
          A7FFFFFFFFFFD8C7BCFFC3B1A6FFFDF2EBFF634935FF00000000000000000000
          000000000000000000000000000000000000000000000805040E31201649CCB6
          A7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFAF8FF634935FF00000000BBA697FF6349
          35FF634935FF634935FF634935FF634935FF2B1D1446BE7B56FE7E553BFCEAAA
          8BFFE9A482FFE89B75FFE69166FFE58756FFDF7844FF00000000C2AC9DFFFEFD
          FCFFFCF2EBFFFAE4D8FFF7D8C4FF634935FF8F6044FE3E281C5B00000000EAAA
          8BFFFFC2A2FFFDB995FFF9AB84FFF69E72FFCD6531FF00000000CCB6A7FFFFFF
          FFFFD8C7BCFFC3B1A6FFFDF2EBFF634935FF0F0907160000000000000000EAAA
          8BFFE9A482FFE89B75FFE79166FFE58757FFE37E4AFF00000000CCB6A7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFAF8FF634935FF2619123E00000000000000000000
          0000000000000000000000000000000000000000000000000000EAAA8BFFE9A4
          82FFE89B75FFE69166FFE58756FFDF7844FFD38057FE754E37E62418103B0000
          0000BBA697FF634935FF634935FF634935FF634935FF634935FFEAAA8BFFFFC2
          A2FFFDB995FFF9AB84FFF69E72FFCD6531FF0402020537241950BC7955FE7A52
          39F4C2AC9DFFFEFDFCFFFCF2EBFFFAE4D8FFF7D8C4FF634935FFEAAA8BFFE9A4
          82FFE89B75FFE79166FFE58757FFE37E4AFF00000000000000000805030B482E
          2065CCB6A7FFFFFFFFFFD8C7BCFFC3B1A6FFFDF2EBFF634935FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000CCB6A7FFFFFFFFFFFFFFFFFFFFFFFFFFFEFAF8FF634935FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EAAA8BFFE9A482FFE89B75FFE69166FFE58756FFDF7844FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EAAA8BFFFFC2A2FFFDB995FFF9AB84FFF69E72FFCD6531FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EAAA8BFFE9A482FFE89B75FFE79166FFE58757FFE37E4AFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B14A00FF9028
          00FF912900FF912900FF902800FFB64800FF38342EFF3E3327FF3E3327FF3F33
          28FF41352AFF3F3328FF3E3327FF3E3327FF3F3328FF5E534AFFCB6200FFFFD1
          71FFFFB237FFFFC366FFFFD89BFFCA5900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD1C7BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF756A62FFC85E00FFFFF5
          D8FFFFAA35FFFFBB66FFFFD19BFFC55500FFFAFCFEFFF7F2EDFFF7F2EDFFF9F4
          F0FFCCC1B8FFF9F4F0FFF7F2EDFFF6F1ECFFFFFFFFFF776D63FFFF9D00FFFF95
          00FFFF9400FFFF9400FFFF9800FFC65800FFD0CECBFFCFC5BBFFCFC5BBFFD0C6
          BCFFD2C9BFFFD0C6BCFFCFC5BBFFCEC5BBFFD5CBC1FF7F736AFFC85E00FFFFF3
          D4FFFFA933FFFFBB66FFFFD19BFFC55500FFFFFFFFFFFCF9F7FFFCF9F7FFFEFC
          F9FFD3C9BFFFFEFCF9FFFCF9F7FFFBF8F6FFFFFFFFFF83786DFFC85E00FFFFF3
          D4FFFFA933FFFFBB66FFFFD19BFFC55500FFFFFFFFFFFCFBF9FFFCFBF9FFFEFD
          FCFFD6CDC3FFFEFDFCFFFCFBF9FFFCFAF9FFFFFFFFFF887E72FFFF9D00FFFF95
          00FFFF9400FFFF9400FFFF9800FFC65700FFDBD9D7FFD8CFC6FFD8CFC6FFD9D0
          C7FFDBD3CAFFD9D0C7FFD8CFC6FFD8CFC6FFDED5CDFF908379FFC85E00FFFFF3
          D4FFFFA933FFFFBB66FFFFD19BFFC55400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFDDD5CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94887BFFC85E00FFFFF3
          D4FFFFA933FFFFBB66FFFFD19BFFC65600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE7E5E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A958CFFFF9D00FFFF95
          00FFFF9400FFFF9400FFFF9700FFC65E00FF881B00FF891B00FF891B00FF8A1B
          00FF8B1D00FF8A1B00FF891B00FF891B00FF8A1C00FFB04300FFC85E00FFFFF3
          D5FFFFA62DFFFFB860FFFFCC98FFFF9800FFFFAB22FFFFAA1EFFFFAA1EFFFFAC
          22FFFF9D00FFFFAC22FFFFAA1EFFFFAA1EFFFFAF24FFCB6400FFC95F00FFFFDF
          9DFFFFEFCBFFFFEFC8FFFFF1D0FFFF9300FFFFF3D6FFFFF0CDFFFFF0CDFFFFF3
          D6FFFF9300FFFFF3D6FFFFF0CDFFFFF1CEFFFFE1AEFFC96000FFCB6400FFC95F
          00FFC85D00FFC85C00FFC55A00FFFF9D00FFC55A00FFC85C00FFC85C00FFC55A
          00FFFF9D00FFC55A00FFC85C00FFC85D00FFC95F00FFCB6400FF000000000000
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
          0047FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
          00FFFF9900FFFF9900FFFF9900FFFF9900FF000000470000000000000000FF99
          00FFDBC5C5FFFFE5E5FF3C6BFFFF7EB6FFFF2051FFFFFFE0E0FFDBBFBFFFFFDB
          DBFFDBB9B9FFFFD4D4FFDBB2B2FFFFCCCCFFFF9900FF0000000000000000FF99
          00FFDBC9C9FFDBC9C9FF4B79FFFF3C6BFFFF1B4DFFFFDBC5C5FFDBC1C1FFDBBF
          BFFFDBBCBCFFDBB8B8FFDBB4B4FFDBB2B2FFFF9900FF0000000000000000FF99
          00FFDBCECEFFFFF0F0FF3C6BFFFF7EB6FFFF2051FFFFFFE8E8FFDBC5C5FFFFE1
          E1FFDBBFBFFFFFD9D9FFDBB8B8FFFFD1D1FFFF9900FF0000000000000000FF99
          00FFDBD2D2FFDBD2D2FF4B79FFFF3C6BFFFF1B4DFFFFDBCCCCFFDBC7C7FFDBC5
          C5FFDBC0C0FFDBBDBDFFDBB9B9FFDBB4B4FFFF9900FF0000000000000000FF99
          00FFDBD8D8FFFFFBFBFF3C6BFFFF7EB6FFFF2051FFFFFFF0F0FFDBCBCBFFFFE6
          E6FFDBC3C3FFFFDEDEFFDBBABAFFFFD4D4FFFF9900FF0000000000000000FF99
          00FFDBDBDBFFDBDBDBFF4B79FFFF3C6BFFFF1B4DFFFFDBD1D1FFDBCCCCFFDBC9
          C9FFDBC5C5FFDBC0C0FFDBBCBCFFDBB8B8FFFF9900FF0000000000000000FF99
          00FFDBDBDBFFFFFFFFFF3C6BFFFF7EB6FFFF2051FFFFFFF5F5FFDBCECEFFFFEA
          EAFFDBC5C5FFFFE0E0FFDBBCBCFFFFD6D6FFFF9900FF0000000000000000FF99
          00FFDBDBDBFFDBDBDBFF4B79FFFF3C6BFFFF1B4DFFFFDBD2D2FFDBCECEFFDBC9
          C9FFDBC5C5FFDBC0C0FFDBBCBCFFDBB8B8FFFF9900FF0000000000000000FF99
          00FFDBDBDBFFFFFFFFFF3C6BFFFF7EB6FFFF2051FFFFFFF5F5FFDBCECEFFFFEA
          EAFFDBC5C5FFFFE0E0FFDBBCBCFFFFD6D6FFFF9900FF0000000000000000FF99
          00FFFFAD3DFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
          00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF0000000000000000FF99
          00FFFFCC99FFEB8500FFEB8500FFEB8500FFEB8500FFEB8500FFEB8500FFEB85
          00FFEB8500FFEB8500FFEB8500FFF79100FFFF9900FF0000000000000000FF99
          00FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC99FFFFCC
          99FFFFCC99FFFFCC99FFFFCC99FFFFAD3DFFFF9900FF00000000000000000000
          0047FF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
          00FFFF9900FFFF9900FFFF9900FFFF9900FF0000004700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000000000000F0000
          00170000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
          001A0000001A0000001A0000001A0000001A000000170000000F0000001E0000
          00B7000000E71313028A1313028A1313028A1313028A1313028A1313028A1313
          028A1313028A1313028A1313028A000000E7000000B70000001E000000000000
          00DB646464FFFAFAEAFFF4F4E4FFF4F4E4FFF4F4E4FFF4F4E4FFF4F4E4FFF4F4
          E4FFF4F4E4FFF4F4E4FFFAFAEAFF646464FF000000DB00000000000000000101
          01CE626262FFF6F6E9FFECECDFFFECECDFFFECECDFFFECECDFFFECECDFFFECEC
          DFFFECECDFFFECECDFFFF6F6E9FF626262FF010101CE00000000000000000101
          01C9646464FFF8F8EFFFF1F1E7FFF1F1E7FFF1F1E7FFF1F1E7FFF1F1E7FFF1F1
          E7FFF1F1E7FFF1F1E7FFF8F8EFFF646464FF010101C900000000000000000101
          01C5676767FFFBFBF5FFF6F6F0FFF6F6F0FFF6F6F0FFF6F6F0FFF6F6F0FFF6F6
          F0FFF6F6F0FFF6F6F0FFFBFBF5FF676767FF010101C500000000000000000101
          01C16B6B6BFFFEFEFBFFFBFBF8FFFBFBF8FFFBFBF8FFFBFBF8FFFBFBF8FFFBFB
          F8FFFBFBF8FFFBFBF8FFFEFEFBFF6B6B6BFF010101C100000000000000000101
          01BE6E6E6EFFD9D9D9FFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFD9D9D9FF6E6E6EFF010101BE00000000000000000101
          01BB727272FF696969FF696969FF696969FF696969FF696969FF696969FF6969
          69FF696969FF696969FF696969FF727272FF010101BB00000000000000000101
          01B8757575FF393939FF393939FF393939FF393939FF393939FF393939FF3939
          39FF393939FF393939FF393939FF757575FF010101B800000000000000000101
          01B5797979FF434343FF5A5A5AFF434343FFCABCBCFFC6B8B8FFC6B8B8FFCEC0
          C0FFCEC0C0FFCABCBCFF434343FF797979FF010101B500000000000000000101
          01B27C7C7CFF505050FF646464FF505050FFCBC2C2FFC2B9B9FFC2B9B9FF5050
          50FF505050FFCBC2C2FF505050FF7C7C7CFF010101B200000000000000000101
          01B07E7E7EFF5C5C5CFF6E6E6EFF5C5C5CFFD1CCCCFFC8C3C3FFC8C3C3FF5C5C
          5CFF5C5C5CFFD1CCCCFF5C5C5CFF828282FF010101B000000000000000000101
          01AE848484FF656565FF7E7E7EFF656565FFD9D8D8FFD4D3D3FFD4D3D3FF6565
          65FF656565FFD9D8D8FF464646EB010101AE0000003E00000000000000000101
          0181010101AC010101AC010101AC010101AC2222226622222266222222662222
          22662222226622222266010101AC0000003C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
