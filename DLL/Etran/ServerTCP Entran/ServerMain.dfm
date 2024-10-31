object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Server Etran SOAP v2.18'
  ClientHeight = 145
  ClientWidth = 364
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
    Width = 364
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = #1069#1090#1088#1072#1085' TCP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 41
    Width = 364
    Height = 104
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    WordWrap = False
    Zoom = 100
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 7498
    ServerType = stNonBlocking
    OnClientRead = ServerSocket1ClientRead
    Left = 46
    Top = 72
  end
  object TrayIcon1: TTrayIcon
    OnClick = TrayIcon1Click
    Left = 112
    Top = 72
  end
  object ApplicationEvents1: TApplicationEvents
    OnMinimize = ApplicationEvents1Minimize
    Left = 176
    Top = 72
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 280
    Top = 64
  end
end
