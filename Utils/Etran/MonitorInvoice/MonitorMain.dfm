object fmMonitorMain: TfmMonitorMain
  Left = 0
  Top = 0
  Caption = #1052#1086#1085#1080#1090#1086#1088#1080#1085#1075' '#1053#1072#1082#1083#1072#1076#1085#1099#1093
  ClientHeight = 689
  ClientWidth = 908
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 908
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Button2: TButton
      Left = 178
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 0
      Visible = False
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 11
      Top = 10
      Width = 75
      Height = 25
      Caption = #1057#1090#1072#1088#1090
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 41
    Width = 908
    Height = 59
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitWidth = 829
    object Label1: TLabel
      Left = 12
      Top = 6
      Width = 74
      Height = 16
      Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 92
      Top = 6
      Width = 92
      Height = 16
      Caption = #1053#1077' '#1079#1072#1087#1091#1097#1077#1085#1086'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 100
    Width = 908
    Height = 589
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ExplicitLeft = 48
    ExplicitTop = 168
    ExplicitWidth = 289
    ExplicitHeight = 193
    ClientRectBottom = 589
    ClientRectRight = 908
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      ExplicitWidth = 289
      ExplicitHeight = 169
      object cxMemo1: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'cxMemo1')
        TabOrder = 0
        ExplicitLeft = 328
        ExplicitTop = 208
        ExplicitWidth = 289
        ExplicitHeight = 169
        Height = 565
        Width = 908
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      ExplicitWidth = 289
      ExplicitHeight = 169
      object cxMemo2: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'cxMemo1')
        TabOrder = 0
        ExplicitLeft = 328
        ExplicitTop = 208
        Height = 565
        Width = 908
      end
    end
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Port=7400'
      'HostName=172.16.200.129'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      'Filters={}')
    Left = 248
    Top = 40
    UniqueId = '{A9040D53-8C47-47A6-83D2-95B758726853}'
  end
end
