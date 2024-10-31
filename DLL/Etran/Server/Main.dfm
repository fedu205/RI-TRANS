object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1057#1077#1088#1074#1077#1088' v.2'
  ClientHeight = 293
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
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 568
    Height = 293
    Align = alClient
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 6000
    ServerType = stNonBlocking
    OnClientRead = ServerSocket1ClientRead
    Left = 526
    Top = 8
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Inf' +
      'o=True;User ID=sa;Initial Catalog=Lis_Etran;Data Source=LIS;Use ' +
      'Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Wor' +
      'kstation ID=ABASHINXP;Use Encryption for Data=False;Tag with col' +
      'umn collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 528
    Top = 40
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_etran_kkr_modify'
    Parameters = <>
    Left = 528
    Top = 72
  end
end
