object fmShablonDoc: TfmShablonDoc
  Left = 318
  Top = 100
  Caption = #1064#1072#1073#1083#1086#1085#1099
  ClientHeight = 524
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 360
    Top = 24
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 560
    Height = 26
    AutoSize = True
    ButtonWidth = 25
    Caption = 'ToolBar1'
    DrawingStyle = dsGradient
    EdgeBorders = [ebTop, ebBottom]
    Images = fmDM.ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object ToolButton15: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'ToolButton15'
      ImageIndex = 12
      Style = tbsSeparator
    end
    object ToolButton20: TToolButton
      Left = 8
      Top = 0
      Caption = 'ToolButton20'
      ImageIndex = 70
      Style = tbsCheck
    end
    object ToolButton16: TToolButton
      Left = 33
      Top = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1079#1072#1103#1074#1086#1082
      Caption = 'ToolButton16'
      ImageIndex = 67
      OnClick = ToolButton16Click
    end
    object ToolButton18: TToolButton
      Left = 58
      Top = 0
      Width = 8
      Caption = 'ToolButton18'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 66
      Top = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1079#1072#1103#1074#1086#1082
      Caption = 'ToolButton5'
      ImageIndex = 11
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton5Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 26
    Width = 560
    Height = 498
    Align = alClient
    TabOrder = 2
    OnExit = cxGrid1Exit
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      PopupMenu = Pop_Doc
      OnDblClick = MenuItem11Click
      OnKeyDown = cxGrid1DBBandedTableView1KeyDown
      OnMouseDown = cxGrid1DBBandedTableView1MouseDown
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DS_Shablon
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soMultipleSelectedRecords]
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      OnCustomDrawColumnHeader = cxGrid1DBBandedTableView1CustomDrawColumnHeader
      Bands = <
        item
        end>
      object cxGrid1DBBandedTableView1doc_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'doc_id'
        Width = 66
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1shablon: TcxGridDBBandedColumn
        DataBinding.FieldName = 'shablon'
        Width = 66
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1doc_type_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'doc_type_id'
        Width = 66
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1global_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'global_id'
        Width = 66
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1doc_describe: TcxGridDBBandedColumn
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        DataBinding.FieldName = 'doc_describe'
        Width = 168
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1file_name: TcxGridDBBandedColumn
        Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072
        DataBinding.FieldName = 'file_name'
        Options.Editing = False
        Width = 136
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1doc_type_describe: TcxGridDBBandedColumn
        Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        DataBinding.FieldName = 'doc_type_describe'
        Options.Editing = False
        Width = 140
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1doc_cod: TcxGridDBBandedColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'doc_cod'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object SP_BlobInsert: TADOStoredProc
    Connection = fmDM.Lis
    ProcedureName = 'sp_BLOB_insert;1'
    Parameters = <
      item
        Name = '@doc_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@doc_image'
        Attributes = [paNullable]
        DataType = ftVarBytes
        Size = 2147483647
        Value = Null
      end
      item
        Name = '@file_name'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
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
        Name = '@global_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@shablon'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end>
    Left = 252
    Top = 42
  end
  object Query_Shablon: TADOQuery
    Connection = fmDM.Lis
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '
      'view_DOC_BLOB '
      'where doc_type_id=1 and global_id=1111')
    Left = 42
    Top = 78
  end
  object DS_Shablon: TDataSource
    DataSet = Query_Shablon
    Left = 57
    Top = 87
  end
  object Pop_Doc: TPopupMenu
    Images = fmDM.ImageList1
    Left = 96
    Top = 168
    object MenuItem1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 7
      OnClick = MenuItem1Click
    end
    object N7: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1086#1087#1080#1089#1072#1085#1080#1077
      ImageIndex = 10
      OnClick = N7Click
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object MenuItem7: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      ImageIndex = 9
      OnClick = MenuItem7Click
    end
    object MenuItem8: TMenuItem
      Caption = '-'
    end
    object MenuItem11: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
      Default = True
      ImageIndex = 5
      OnClick = MenuItem11Click
    end
  end
end
