object fmStat: TfmStat
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
  ClientHeight = 621
  ClientWidth = 949
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox2: TScrollBox
    Left = 0
    Top = 0
    Width = 949
    Height = 621
    Align = alClient
    TabOrder = 0
    object FlowPanel1: TFlowPanel
      Left = 0
      Top = 0
      Width = 945
      Height = 500
      Align = alTop
      BevelOuter = bvNone
      Color = clGray
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ShowCaption = False
      TabOrder = 0
      OnResize = FlowPanel1Resize
    end
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = fmMain.Lis
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'dbo.sp_Stat'
    Parameters = <>
    Left = 83
    Top = 55
  end
end
