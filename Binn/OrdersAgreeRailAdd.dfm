object fmOrdersAgreeRailAdd: TfmOrdersAgreeRailAdd
  Left = 0
  Top = 0
  Caption = #1047#1072#1103#1074#1082#1072
  ClientHeight = 473
  ClientWidth = 502
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 510
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
    Top = 161
    Width = 502
    Height = 275
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object cxGroupBox5: TcxGroupBox
      Left = 0
      Top = 129
      Align = alClient
      Style.BorderStyle = ebs3D
      TabOrder = 1
      Height = 146
      Width = 502
      object Label5: TLabel
        Left = 297
        Top = 95
        Width = 43
        Height = 13
        Caption = #1042#1072#1083#1102#1090#1072':'
      end
      object Label6: TLabel
        Left = 196
        Top = 95
        Width = 42
        Height = 13
        Caption = #1045#1076'.'#1080#1079#1084'.:'
      end
      object Label11: TLabel
        Left = 363
        Top = 95
        Width = 44
        Height = 13
        Caption = #1057#1091#1084#1084#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 102
        Top = 95
        Width = 39
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086':'
      end
      object Label7: TLabel
        Left = 7
        Top = 95
        Width = 41
        Height = 13
        Caption = #1057#1090#1072#1074#1082#1072':'
      end
      object Label16: TLabel
        Left = 8
        Top = 17
        Width = 150
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1090#1086#1085#1085'......................'
      end
      object Label20: TLabel
        Left = 8
        Top = 67
        Width = 140
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085'/'#1089#1091#1090#1082#1080'..........'
      end
      object Label3: TLabel
        Left = 8
        Top = 42
        Width = 123
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1075#1086#1085#1086#1074'...........'
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 294
        Top = 109
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'currency_id'
        Properties.ListColumns = <
          item
            FieldName = 'brief_name'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_Currency
        Style.Color = 13041663
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
        Width = 65
      end
      object cxLookupComboBox2: TcxLookupComboBox
        Left = 193
        Top = 109
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'inf_obj_id'
        Properties.ListColumns = <
          item
            FieldName = 'inf_obj_name'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DS_Ed_izm
        Properties.OnChange = cxLookupComboBox2PropertiesChange
        Style.Color = 13041663
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
        Width = 100
      end
      object cxCurrencyEdit2: TcxCurrencyEdit
        Left = 360
        Top = 109
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '#,##0.00'
        Properties.ReadOnly = True
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
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
        Width = 133
      end
      object cxCurrencyEdit3: TcxCurrencyEdit
        Left = 98
        Top = 109
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '#,##0.000'
        Properties.ReadOnly = True
        Properties.OnEditValueChanged = cxCurrencyEdit3PropertiesEditValueChanged
        Style.Color = clBtnFace
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
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
        TabOrder = 3
        Width = 94
      end
      object cxCurrencyEdit15: TcxCurrencyEdit
        Left = 119
        Top = 36
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '#,##0'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
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
        TabOrder = 1
        Width = 79
      end
      object cxCurrencyEdit4: TcxCurrencyEdit
        Left = 119
        Top = 11
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 3
        Properties.DisplayFormat = '#,##0.000'
        Properties.OnEditValueChanged = cxCurrencyEdit4PropertiesEditValueChanged
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
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
        Width = 79
      end
      object cxCurrencyEdit5: TcxCurrencyEdit
        Left = 119
        Top = 61
        EditValue = 0.000000000000000000
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '#,##0'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
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
        TabOrder = 2
        Width = 79
      end
      object cxButtonEdit8: TcxButtonEdit
        Tag = 1
        Left = 4
        Top = 109
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = cxButtonEdit8PropertiesButtonClick
        Style.Color = 13041663
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.ScrollbarMode = sbmClassic
        Style.Shadow = False
        Style.TextStyle = []
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
        TabOrder = 7
        Width = 93
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 502
      Height = 129
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object cxPageControl1: TcxPageControl
        Left = 2
        Top = 2
        Width = 498
        Height = 125
        Align = alClient
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        Properties.ActivePage = cxTabSheet3
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.Kind = lfUltraFlat
        ClientRectBottom = 125
        ClientRectRight = 498
        ClientRectTop = 24
        object cxTabSheet1: TcxTabSheet
          Caption = #1052#1072#1088#1096#1088#1091#1090
          ImageIndex = 0
          DesignSize = (
            498
            101)
          object Label19: TLabel
            Left = 6
            Top = 32
            Width = 109
            Height = 13
            Caption = #1057#1090'.'#1086#1090#1087#1088'.................'
          end
          object Label4: TLabel
            Left = 6
            Top = 56
            Width = 104
            Height = 13
            Caption = #1057#1090'.'#1085#1072#1079#1085'................'
          end
          object Label8: TLabel
            Left = 6
            Top = 8
            Width = 106
            Height = 13
            Caption = #1057#1090#1088'. '#1086#1090#1087#1088'..............'
          end
          object Label9: TLabel
            Left = 6
            Top = 80
            Width = 127
            Height = 13
            Caption = #1057#1090#1088#1072#1085#1072' '#1085#1072#1079#1085'................'
          end
          object cxButton1: TcxButton
            Left = 461
            Top = 33
            Width = 33
            Height = 33
            Anchors = [akTop, akRight]
            LookAndFeel.Kind = lfStandard
            OptionsImage.Glyph.SourceDPI = 96
            OptionsImage.Glyph.Data = {
              424DC60A00000000000036000000280000001A0000001A000000010020000000
              000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FFFF00FF00FF00FF00808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FFFF00FF00FF00FF00808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              80FFC0C0C0FF808000FF808000FF808000FFFF00FF00FF00FF00808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FFC0C0C0FFC0C0C0FF808000FF808000FFFF00FF00FF00
              FF00808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF00FFFFFFC0C0C0FF808000FF8080
              00FFFF00FF00FF00FF00808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808080FF808080FF00FFFFFF8080
              00FF808000FF808000FF808000FFC0C0C0FF808000FF808000FF808080FF00FF
              FFFF808000FF808000FFFF00FF00FF00FF00808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFFC0C0C0FF808080FF00FFFFFF00FFFFFF808080FF8080
              00FF808080FF00FFFFFF808000FF808000FFFF00FF00FF00FF00808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808080FF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFFC0C0C0FF808000FFC0C0C0FF00FFFFFF808000FF808000FFFF00FF00FF00
              FF00808000FF808000FF808000FF808000FF808000FF808000FF808000FF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF808000FF8080
              00FFFF00FF00FF00FF00808000FF808000FF808000FF808000FF808000FF8080
              00FF808080FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF808080FF808000FFFF00FF00FF00FF00808000FF808000FF808000FFC0C0
              C0FF808000FF808080FFC0C0C0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF808080FF808080FF808000FFFF00FF00FF00FF00C0C0C0FF8080
              00FFC0C0C0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF808000FF808000FFFF00FF00FF00
              FF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFC0C0C0FF808000FF8080
              00FFFF00FF00FF00FF00C0C0C0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF808000FF808000FFFF00FF00FF00FF00808000FF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF808080FF808080FFFF00FF00FF00FF00808000FF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF8080
              80FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF808080FF808000FFFF00FF00FF00
              FF00808000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFFC0C0C0FFC0C0C0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF808080FF8080
              00FFFF00FF00FF00FF00808000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF
              FFFFC0C0C0FF808000FF808000FF808080FF808000FF808080FFC0C0C0FF00FF
              FFFF00FFFFFF808080FF808080FF808000FF808000FF00FFFFFF00FFFFFF00FF
              FFFF00FFFFFF808000FFFF00FF00FF00FF00808000FF808080FFC0C0C0FF00FF
              FFFF808080FF808080FF808000FF808080FF808000FF808000FF808000FF8080
              00FF808000FFC0C0C0FF00FFFFFF808080FF808000FF808000FF808000FF8080
              80FF00FFFFFF00FFFFFFC0C0C0FF808000FFFF00FF00FF00FF00808000FF8080
              00FF808000FF808080FF808080FF808080FF808000FF808080FF808080FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808080FF808000FF808000FFC0C0C0FF808080FF808000FFFF00FF00FF00
              FF00808000FF808000FF808000FF808000FF808080FF808080FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808080FF8080
              00FFFF00FF00FF00FF00808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FFC0C0C0FF808000FFFF00FF00FF00FF00808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808080FF808000FFFF00FF00FF00FF00808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF8080
              00FF808000FF808000FF808000FF808000FF808000FF808000FFFF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00}
            TabOrder = 3
            OnClick = cxButton1Click
          end
          object cxButtonEdit1: TcxButtonEdit
            Left = 83
            Top = 2
            Anchors = [akLeft, akTop, akRight]
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end
              item
                Glyph.SourceDPI = 96
                Glyph.Data = {
                  424D460300000000000036000000280000000E0000000E000000010020000000
                  000000000000C40E0000C40E0000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000866E5CCC9077
                  64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                  00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                  86FF634935FF000000000000000000000000000000000000000000000000BB98
                  83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                  35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                  E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                  0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                  EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                  00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                  DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                  000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                  DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                  0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                  FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                  96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                  68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                  FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                  00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                  FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                  000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                  84FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000}
                Kind = bkGlyph
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
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
            Width = 309
          end
          object cxButtonEdit2: TcxButtonEdit
            Left = 83
            Top = 26
            Anchors = [akLeft, akTop, akRight]
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end
              item
                Glyph.SourceDPI = 96
                Glyph.Data = {
                  424D460300000000000036000000280000000E0000000E000000010020000000
                  000000000000C40E0000C40E0000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000866E5CCC9077
                  64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                  00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                  86FF634935FF000000000000000000000000000000000000000000000000BB98
                  83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                  35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                  E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                  0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                  EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                  00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                  DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                  000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                  DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                  0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                  FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                  96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                  68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                  FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                  00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                  FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                  000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                  84FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000}
                Kind = bkGlyph
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = cxButtonEdit2PropertiesButtonClick
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
            Width = 309
          end
          object cxButtonEdit3: TcxButtonEdit
            Left = 83
            Top = 50
            Anchors = [akLeft, akTop, akRight]
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end
              item
                Glyph.SourceDPI = 96
                Glyph.Data = {
                  424D460300000000000036000000280000000E0000000E000000010020000000
                  000000000000C40E0000C40E0000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000866E5CCC9077
                  64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                  00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                  86FF634935FF000000000000000000000000000000000000000000000000BB98
                  83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                  35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                  E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                  0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                  EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                  00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                  DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                  000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                  DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                  0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                  FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                  96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                  68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                  FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                  00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                  FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                  000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                  84FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000}
                Kind = bkGlyph
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = cxButtonEdit3PropertiesButtonClick
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
            Width = 309
          end
          object cxButtonEdit4: TcxButtonEdit
            Left = 83
            Top = 74
            Anchors = [akLeft, akTop, akRight]
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end
              item
                Glyph.SourceDPI = 96
                Glyph.Data = {
                  424D460300000000000036000000280000000E0000000E000000010020000000
                  000000000000C40E0000C40E0000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000866E5CCC9077
                  64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                  00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                  86FF634935FF000000000000000000000000000000000000000000000000BB98
                  83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                  35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                  E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                  0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                  EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                  00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                  DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                  000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                  DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                  0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                  FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                  96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                  68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                  FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                  00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                  FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                  000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                  84FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000}
                Kind = bkGlyph
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = cxButtonEdit4PropertiesButtonClick
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
            TabOrder = 6
            Width = 309
          end
          object cxTextEdit3: TcxTextEdit
            Left = 393
            Top = 26
            Anchors = [akTop, akRight]
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
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
            TabOrder = 2
            Width = 66
          end
          object cxTextEdit4: TcxTextEdit
            Left = 393
            Top = 50
            Anchors = [akTop, akRight]
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
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
            Width = 66
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = #1043#1088#1091#1079
          ImageIndex = 3
          DesignSize = (
            498
            101)
          object Label1: TLabel
            Left = 6
            Top = 34
            Width = 121
            Height = 13
            Caption = #1048#1079' '#1087#1086#1076' '#1075#1088#1091#1079#1072'..............'
            Enabled = False
          end
          object Label14: TLabel
            Left = 6
            Top = 11
            Width = 112
            Height = 13
            Caption = #1045#1058#1057#1053#1043'....................'
          end
          object cxCheckBox1: TcxCheckBox
            Left = 4
            Top = 57
            Caption = #1043' '#1053' '#1043'...............'
            Properties.Alignment = taLeftJustify
            Properties.OnEditValueChanged = cxCheckBox1PropertiesEditValueChanged
            TabOrder = 7
          end
          object cxButtonEdit10: TcxButtonEdit
            Left = 57
            Top = 6
            Anchors = [akLeft, akTop, akRight]
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end
              item
                Glyph.SourceDPI = 96
                Glyph.Data = {
                  424D460300000000000036000000280000000E0000000E000000010020000000
                  000000000000C40E0000C40E0000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000866E5CCC9077
                  64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                  00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                  86FF634935FF000000000000000000000000000000000000000000000000BB98
                  83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                  35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                  E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                  0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                  EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                  00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                  DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                  000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                  DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                  0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                  FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                  96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                  68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                  FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                  00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                  FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                  000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                  84FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000}
                Kind = bkGlyph
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = cxButtonEdit10PropertiesButtonClick
            Style.BorderColor = clWindowFrame
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
            Width = 235
          end
          object cxButtonEdit11: TcxButtonEdit
            Tag = 1
            Left = 294
            Top = 6
            Anchors = [akTop, akRight]
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end
              item
                Glyph.SourceDPI = 96
                Glyph.Data = {
                  424D460300000000000036000000280000000E0000000E000000010020000000
                  000000000000C40E0000C40E0000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000866E5CCC9077
                  64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                  00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                  86FF634935FF000000000000000000000000000000000000000000000000BB98
                  83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                  35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                  E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                  0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                  EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                  00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                  DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                  000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                  DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                  0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                  FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                  96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                  68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                  FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                  00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                  FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                  000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                  84FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000}
                Kind = bkGlyph
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = cxButtonEdit10PropertiesButtonClick
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
            Width = 98
          end
          object cxButtonEdit12: TcxButtonEdit
            Left = 57
            Top = 54
            Anchors = [akLeft, akTop, akRight]
            Enabled = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end
              item
                Glyph.SourceDPI = 96
                Glyph.Data = {
                  424D460300000000000036000000280000000E0000000E000000010020000000
                  000000000000C40E0000C40E0000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000866E5CCC9077
                  64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                  00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                  86FF634935FF000000000000000000000000000000000000000000000000BB98
                  83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                  35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                  E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                  0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                  EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                  00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                  DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                  000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                  DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                  0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                  FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                  96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                  68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                  FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                  00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                  FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                  000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                  84FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000}
                Kind = bkGlyph
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = cxButtonEdit12PropertiesButtonClick
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
            TabOrder = 5
            Width = 335
          end
          object cxButtonEdit13: TcxButtonEdit
            Tag = 1
            Left = 393
            Top = 54
            Anchors = [akTop, akRight]
            Enabled = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end
              item
                Glyph.SourceDPI = 96
                Glyph.Data = {
                  424D460300000000000036000000280000000E0000000E000000010020000000
                  000000000000C40E0000C40E0000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000866E5CCC9077
                  64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                  00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                  86FF634935FF000000000000000000000000000000000000000000000000BB98
                  83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                  35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                  E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                  0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                  EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                  00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                  DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                  000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                  DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                  0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                  FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                  96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                  68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                  FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                  00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                  FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                  000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                  84FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000}
                Kind = bkGlyph
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = cxButtonEdit12PropertiesButtonClick
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
            TabOrder = 6
            Width = 101
          end
          object cxButtonEdit14: TcxButtonEdit
            Left = 84
            Top = 30
            Anchors = [akLeft, akTop, akRight]
            Enabled = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end
              item
                Glyph.SourceDPI = 96
                Glyph.Data = {
                  424D460300000000000036000000280000000E0000000E000000010020000000
                  000000000000C40E0000C40E0000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000866E5CCC9077
                  64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                  00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                  86FF634935FF000000000000000000000000000000000000000000000000BB98
                  83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                  35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                  E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                  0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                  EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                  00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                  DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                  000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                  DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                  0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                  FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                  96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                  68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                  FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                  00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                  FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                  000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                  84FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000}
                Kind = bkGlyph
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = cxButtonEdit14PropertiesButtonClick
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
            Width = 308
          end
          object cxButtonEdit15: TcxButtonEdit
            Tag = 1
            Left = 393
            Top = 30
            Anchors = [akTop, akRight]
            Enabled = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end
              item
                Glyph.SourceDPI = 96
                Glyph.Data = {
                  424D460300000000000036000000280000000E0000000E000000010020000000
                  000000000000C40E0000C40E0000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000866E5CCC9077
                  64CC89715ECC000000CC000000CC000000CC000000E7000000FF000000FF0000
                  00FF000000F0000000009E7F6AFFA38875FFCBAD9AFFCCAF9BFFC7B3A4FFAA95
                  86FF634935FF000000000000000000000000000000000000000000000000BB98
                  83F0D9C3B6FFD5BDADFFDFCCC0FFEEE2DBFFFCF9F7FFAA9586FFA79181FF6349
                  35FF0000000000000000000000000000000000000000CBAD99E1F4ECE7FFF1E7
                  E1FFF7F1EEFFFDFAF9FFF9F5F2FFFFFFFFFFAA9586FFA79181FF634935FF0000
                  0000000000000000000000000000C9AA96E1FBFBF9FFFFFFFFFFFDFDFCFFF6EF
                  EBFFF0E5DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF000000000000
                  00000000000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5
                  DEFFEFE2DBFFFFFFFFFFAA9586FFA79181FF634935FF00000000000000000000
                  000000000000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2
                  DBFFFFFFFFFFAA9586FFA79181FF634935F60000000000000000000000000000
                  0000C9AA96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFF
                  FFFFAA9586FF7A5E4AFF0000000000000000000000000000000000000000C9AA
                  96FFFFFFFFFFFFFFFFFFFCFAF9FFF6EFEBFFF0E5DEFFEFE2DBFFFFFFFFFF997C
                  68FF000000000000000000000000000000000000000000000000C9AA96FFFFFF
                  FFFFFFFFFFFFFCFAF9FFF8F2EFFFFDFBFAFFDFCCC1FFB0917DFF000000000000
                  00000000000000000000000000000000000000000000C9AA96FFFFFFFFFFFFFF
                  FFFFFCFBFAFFE1D1C8FFAD8873FF000000000000000000000000000000000000
                  000000000000000000000000000000000000C9AA96FFC09E89FFB28C75FFB897
                  84FF000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000}
                Kind = bkGlyph
              end>
            Properties.ReadOnly = True
            Properties.OnButtonClick = cxButtonEdit14PropertiesButtonClick
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
            Width = 101
          end
          object cxTextEdit2: TcxTextEdit
            Left = 393
            Top = 6
            Anchors = [akTop, akRight]
            Properties.Alignment.Horz = taLeftJustify
            Properties.ReadOnly = True
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
            Width = 101
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          ImageIndex = 4
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
            Height = 101
            Width = 498
          end
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 436
    Width = 502
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      502
      37)
    object BitBtn2: TBitBtn
      Left = 419
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
      Left = 336
      Top = 8
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 17
    Align = alTop
    Caption = ' '#1044#1086#1075#1086#1074#1086#1088' '
    Style.BorderStyle = ebs3D
    TabOrder = 0
    DesignSize = (
      502
      144)
    Height = 144
    Width = 502
    object Label23: TLabel
      Left = 9
      Top = 120
      Width = 160
      Height = 13
      Caption = #1044#1072#1090#1072' '#1087#1083#1072#1085#1080#1088#1091#1077#1084#1086#1081' '#1086#1087#1083#1072#1090#1099'......'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 95
      Width = 192
      Height = 13
      Caption = #1044#1072#1090#1072' '#1087#1086#1076#1072#1095#1080'/'#1087#1086#1075#1088#1091#1079#1082#1080'...................'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 9
      Top = 70
      Width = 197
      Height = 13
      Caption = #1059#1089#1083#1091#1075#1072' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091'........................'
    end
    object cxDateEdit1: TcxDateEdit
      Left = 155
      Top = 114
      Properties.DateButtons = [btnClear, btnToday]
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
      TabOrder = 12
      Width = 116
    end
    object cxDateEdit2: TcxDateEdit
      Left = 155
      Top = 89
      Properties.DateButtons = [btnClear, btnToday]
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
      TabOrder = 8
      Width = 116
    end
    object cxLabel1: TcxLabel
      Left = 7
      Top = 18
      Caption = #1050#1083#1080#1077#1085#1090'.............'
    end
    object cxLabel2: TcxLabel
      Left = 7
      Top = 42
      Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1072#1103'..........'
    end
    object cxLabel3: TcxLabel
      Left = 290
      Top = 42
      Anchors = [akTop, akRight]
      Caption = #1044#1086#1075#1086#1074#1086#1088'..........'
    end
    object cxButtonEdit16: TcxButtonEdit
      Tag = 1
      Left = 347
      Top = 38
      Anchors = [akTop, akRight]
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit9PropertiesButtonClick
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
      TabOrder = 5
      Width = 151
    end
    object cxButtonEdit9: TcxButtonEdit
      Tag = 1
      Left = 85
      Top = 38
      Anchors = [akLeft, akTop, akRight]
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit9PropertiesButtonClick
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
      TabOrder = 4
      Width = 199
    end
    object cxLookupComboBox8: TcxLookupComboBox
      Left = 85
      Top = 13
      Anchors = [akLeft, akTop, akRight]
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 30
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 800
      Properties.KeyFieldNames = 'contract_id'
      Properties.ListColumns = <
        item
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          SortOrder = soAscending
          Width = 200
          FieldName = 'firm_customer_name'
        end
        item
          Caption = #8470' '#1076#1086#1075#1086#1074#1086#1088#1072
          Width = 100
          FieldName = 'contract_cod'
        end
        item
          Caption = #1057#1086#1073#1089#1090#1074#1077#1085#1085#1072#1103
          Width = 130
          FieldName = 'firm_self_name'
        end
        item
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
          Width = 200
          FieldName = 'note'
        end>
      Properties.ListSource = DS_Agent
      Properties.OnChange = cxLookupComboBox8PropertiesChange
      Style.Color = 13041663
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
      Width = 346
    end
    object cxButton2: TcxButton
      Left = 435
      Top = 15
      Width = 20
      Height = 20
      Hint = #1044#1086#1075#1086#1074#1086#1088#1099' '#1050#1083#1080#1077#1085#1090#1086#1074
      Anchors = [akTop, akRight]
      Caption = #1050
      LookAndFeel.Kind = lfUltraFlat
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.GroupIndex = 1
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object cxButton3: TcxButton
      Tag = 1
      Left = 454
      Top = 15
      Width = 20
      Height = 20
      Hint = #1044#1086#1075#1086#1074#1086#1088#1099' '#1055#1086#1076#1088#1103#1076#1095#1080#1082#1086#1074
      Anchors = [akTop, akRight]
      Caption = #1055
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.GroupIndex = 1
      SpeedButtonOptions.Down = True
      TabOrder = 2
      OnClick = cxButton2Click
    end
    object cxButton4: TcxButton
      Tag = 2
      Left = 473
      Top = 15
      Width = 20
      Height = 20
      Hint = #1044#1086#1075#1086#1074#1086#1088#1099' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1094#1080#1080
      Anchors = [akTop, akRight]
      Caption = #1040
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.GroupIndex = 1
      TabOrder = 3
      OnClick = cxButton2Click
    end
    object cxButtonEdit7: TcxButtonEdit
      Left = 155
      Top = 63
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Glyph.SourceDPI = 96
          Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080FF0000
            00FF000000FF000000FF000000FF000000FF000000FF808080FFC0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FFC0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FF000000FFC0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FFC0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FF808080FF0000
            00FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080FF0000
            00FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000FF808080FF8080
            80FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
            00FFC0C0C000FFFFFFFFC0C0C000FFFFFFFFC0C0C000FFFFFFFF000000FF8080
            80FF808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000000000FFC0C0C000FFFFFFFFC0C0C000FFFFFFFFC0C0C000FFFFFFFF0000
            00FF808080FF808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000000000FFC0C0C000FFFFFFFFC0C0C000FFFFFFFFC0C0C000FFFF
            FFFF000000FF808080FF808080FF808080FFC0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000000000FFC0C0C000FFFFFFFFC0C0C000FFFFFFFFC0C0
            C000FFFFFFFF000000FF808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000000000FFC0C0C000FFFFFFFFC0C0C000FFFF
            FFFFC0C0C000FFFFFFFF808080FF000000FFC0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000000000FFC0C0C000FFFFFFFFC0C0
            C000FFFFFFFFC0C0C000C0C0C000000000FFC0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080FF000000FF0000
            00FF000000FF000000FF808080FF808080FFC0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
          Kind = bkGlyph
        end>
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit7PropertiesButtonClick
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
      TabOrder = 6
      Width = 280
    end
    object cxTextEdit1: TcxTextEdit
      Left = 436
      Top = 63
      Properties.Alignment.Horz = taLeftJustify
      Properties.ReadOnly = True
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
      TabOrder = 7
      Width = 62
    end
  end
  object cxLabel5: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    Caption = #1059#1089#1083#1091#1075#1072' '#1082#1083#1080#1077#1085#1090#1091
    ParentColor = False
    ParentFont = False
    Style.BorderColor = 6553600
    Style.BorderStyle = ebsSingle
    Style.Color = 8924941
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWhite
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
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
      end
      item
        Name = 'type_contract'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @set_date DATETIME'
      'SET @set_date = :date_current'
      ''
      
        'SELECT contract_id, contract_cod, firm_self, firm_customer, curr' +
        'ency_id,'
      'firm_self_name, firm_customer_name, brief_name, contract_set,'
      
        'case type_contract WHEN 0 THEN '#39#1050#1083#1080#1077#1085#1090#39' WHEN 1 THEN '#39#1055#1086#1076#1088#1103#1076#1095#1080#1082#39' ' +
        ' WHEN 2 THEN '#39#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1094#1080#1103#39' END as type_contract_name'
      ', budget_id, budget_name, budget_cod,'
      
        'case when type_contract = 0 then '#39#1050#1083#1080#1077#1085#1090#39' when type_contract = 1' +
        ' then '#39#1055#1086#1076#1088#1103#1076#1095#1080#1082#39' when type_contract = 0 then '#39#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1094#1080#1103#39' en' +
        'd type_contract_name, date_begin'
      ''
      'FROM view_contract_rights  '
      ''
      'WHERE type_contract = :type_contract'
      
        'AND date_end >= CONVERT(DATETIME,CONVERT(varchar(4),YEAR(@set_da' +
        'te)) + RIGHT('#39'0'#39' + CONVERT(VARCHAR(2),MONTH(@set_date)), 2) + '#39'0' +
        '1'#39')'
      ''
      'ORDER BY firm_customer_name'
      '')
    Left = 320
    Top = 312
  end
  object DS_Agent: TDataSource
    DataSet = Query_Agent
    Left = 320
    Top = 344
  end
  object Query_Ed_Izm: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM inf_obj WHERE type_inf_id = 6  AND (dbo.GetInfObjV' +
        'isible(str_group_visible) = 1) ORDER BY inf_obj_cod')
    Left = 256
    Top = 312
  end
  object DS_Ed_izm: TDataSource
    DataSet = Query_Ed_Izm
    Left = 256
    Top = 344
  end
  object Query_Currency: TADOQuery
    Connection = fmMain.Lis
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM currency '
      'WHERE currency_id IN (1, 3, 5, 6)'
      'ORDER BY currency_id'
      '')
    Left = 288
    Top = 312
  end
  object DS_Currency: TDataSource
    DataSet = Query_Currency
    Left = 288
    Top = 344
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = cxLookupComboBox1
        Properties.Strings = (
          'Properties.DropDownWidth')
      end
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
      end>
    StorageName = '\Software\Lis1\OrdersAgreeRailAdd'
    StorageType = stRegistry
    Left = 224
    Top = 312
  end
end
