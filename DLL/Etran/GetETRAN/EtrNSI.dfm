object fmEtrNSI: TfmEtrNSI
  Left = 0
  Top = 0
  Caption = 'fmEtrNSI'
  ClientHeight = 603
  ClientWidth = 720
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 26
    Width = 720
    Height = 278
    Align = alClient
    TabOrder = 0
    ExplicitTop = 28
    ExplicitHeight = 276
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DS_NSI
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cxGrid1DBBandedTableView1id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1inf_obj_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'inf_obj_id'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1table_name: TcxGridDBBandedColumn
        DataBinding.FieldName = 'table_name'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1set_trans_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'set_trans_id'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1trans_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'trans_id'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1record_count: TcxGridDBBandedColumn
        DataBinding.FieldName = 'record_count'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1set_load: TcxGridDBBandedColumn
        DataBinding.FieldName = 'set_load'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object cxMemo1: TcxMemo
    Left = 0
    Top = 304
    Align = alBottom
    Lines.Strings = (
      'cxMemo1')
    TabOrder = 5
    Height = 299
    Width = 720
  end
  object ClientDS_NSI: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 256
    object ClientDS_NSIid: TAutoIncField
      FieldName = 'id'
    end
    object ClientDS_NSIinf_obj_id: TIntegerField
      FieldName = 'inf_obj_id'
    end
    object ClientDS_NSItable_name: TStringField
      FieldName = 'table_name'
      Size = 30
    end
    object ClientDS_NSIset_trans_id: TIntegerField
      FieldName = 'set_trans_id'
    end
    object ClientDS_NSItrans_id: TIntegerField
      FieldName = 'trans_id'
    end
    object ClientDS_NSIrecord_count: TIntegerField
      FieldName = 'record_count'
    end
    object ClientDS_NSIset_load: TBooleanField
      FieldName = 'set_load'
    end
  end
  object DS_NSI: TDataSource
    DataSet = ClientDS_NSI
    Left = 504
    Top = 248
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 584
    Top = 104
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 746
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Load'
      Category = 0
      Hint = 'Load'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
  end
end
