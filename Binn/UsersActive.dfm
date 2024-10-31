object fmUsersActive: TfmUsersActive
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' OnLine'
  ClientHeight = 610
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 26
    Width = 529
    Height = 584
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.ScrollbarMode = sbmClassic
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      PopupMenu = dxBarPopupMenu1
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DS_UsersActive
      DataController.KeyFieldNames = 'spid'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #1050#1086#1083'-'#1074#1086': 0'
          Kind = skCount
          Column = cxGrid1DBBandedTableView1FIO_users
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cxGrid1DBBandedTableView1loginame: TcxGridDBBandedColumn
        Caption = #1051#1086#1075#1080#1085
        DataBinding.FieldName = 'loginame'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn
        Caption = #1060'.'#1048'.'#1054'.'
        DataBinding.FieldName = 'FIO_users'
        Width = 115
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1hostname: TcxGridDBBandedColumn
        Caption = #1050#1086#1084#1087#1100#1102#1090#1077#1088
        DataBinding.FieldName = 'hostname'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1login_time: TcxGridDBBandedColumn
        Caption = #1042#1093#1086#1076' '#1074' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
        DataBinding.FieldName = 'login_time'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 98
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1last_batch: TcxGridDBBandedColumn
        Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1072#1082#1090#1080#1074#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'last_batch'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1spid: TcxGridDBBandedColumn
        Caption = 'SPID'
        DataBinding.FieldName = 'spid'
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object Query_UsersActive: TADOQuery
    Connection = ADOUsersActive
    CursorType = ctStatic
    CommandTimeout = 100
    Parameters = <
      item
        Name = 'users_group_id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select DISTINCT'
      #9#9'loginame = rtrim(loginame)'
      #9#9',hostname'
      #9#9',users_group_name'
      #9#9',users_group_cod'
      #9#9',FIO_users'
      #9#9',MIN(login_time) as login_time'
      #9#9',MAX(last_batch) AS last_batch'
      '                                ,MIN(spid) AS spid'
      
        'FROM  master.dbo.sysprocesses INNER JOIN view_users ON loginame ' +
        '= CAST(users_name AS varchar(50)) COLLATE SQL_Latin1_General_CP1' +
        '251_CI_AS'
      'where spid >= 0 and spid <= 32767'
      'AND loginame not LIKE '#39'%admin%'#39
      'AND loginame not LIKE '#39'%1c%'#39
      'AND loginame not LIKE '#39'%etran%'#39
      'AND users_group_id = :users_group_id'
      
        'group by loginame, hostname, users_group_name, users_group_cod, ' +
        'FIO_users')
    Left = 102
    Top = 168
  end
  object DS_UsersActive: TDataSource
    DataSet = Query_UsersActive
    Left = 122
    Top = 178
  end
  object ADOUsersActive: TADOConnection
    CommandTimeout = 200
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Inf' +
      'o=True;User ID=admin_sfh;Initial Catalog=Lis1;Data Source=LIS'
    ConnectionTimeout = 200
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 27
    Top = 51
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Properties.Strings = (
          'Down')
      end
      item
        Properties.Strings = (
          'Down')
      end
      item
        Properties.Strings = (
          'Down')
      end
      item
        Properties.Strings = (
          'Down')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width'
          'WindowState')
      end>
    StorageName = '\Software\Lis1\Main'
    StorageType = stRegistry
    Left = 57
    Top = 50
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = fmMain.cxImageList1
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 87
    Top = 51
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
      FloatLeft = 578
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
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1054#1090#1082#1083#1102#1095#1080#1090#1100' (kill)'
      Category = 0
      Hint = #1054#1090#1082#1083#1102#1095#1080#1090#1100' (kill)'
      Visible = ivAlways
      ImageIndex = 2
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
    end
    object dxBarButton3: TdxBarButton
      Caption = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Category = 0
      Hint = #1050#1086#1083#1086#1085#1082#1080' '#1090#1072#1073#1083#1080#1094#1099
      Visible = ivAlways
      ImageIndex = 15
    end
    object dxBarButton4: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1090#1072#1073#1083#1080#1094#1099' '#1074' Excel'
      Visible = ivAlways
      ImageIndex = 8
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarSubItem1'
      end>
    UseOwnFont = False
    Left = 117
    Top = 222
    PixelsPerInch = 96
  end
end
