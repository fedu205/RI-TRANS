object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Exchange Server crb.ru'
  ClientHeight = 151
  ClientWidth = 568
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
    Width = 568
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = #1047#1072#1087#1088#1086#1089' '#1082#1091#1088#1089#1086#1074' '#1074#1072#1083#1102#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 485
    Top = 56
    Width = 75
    Height = 25
    Caption = 'RUB'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 485
    Top = 87
    Width = 75
    Height = 25
    Caption = 'USD'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 485
    Top = 118
    Width = 75
    Height = 25
    Caption = 'EUR'
    TabOrder = 3
    OnClick = Button3Click
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 7000
    ServerType = stNonBlocking
    OnClientRead = ServerSocket1ClientRead
    Left = 46
    Top = 72
  end
  object XMLDocument1: TXMLDocument
    Left = 80
    Top = 72
    DOMVendorDesc = 'MSXML'
  end
end
