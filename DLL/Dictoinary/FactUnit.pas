unit FactUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, ComCtrls, ToolWin, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPropertiesStore, Menus, ADODB, ActnList, cxLookAndFeelPainters, cxPC, StdCtrls,
  cxButtons, ExtCtrls, cxCustomPivotGrid, cxDBPivotGrid, dxBar, dxBarExtItems,
  cxLookAndFeels, cxCalendar, cxColorComboBox, cxBarEditItem, cxTextEdit,
  cxTimeEdit, DateUtils, cxCurrencyEdit, ImgList, dxBarBuiltInMenu, cxNavigator,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, dxSkinTheBezier, dxSkinOffice2019Colorful;

type
  TfmFactUnit = class(TForm)
    Query_FactUnit: TADOQuery;
    DS_FactUnit: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    SP_TrackDelete: TADOStoredProc;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    Popup_FactUnit: TdxBarPopupMenu;
    N3: TdxBarButton;
    Excel3: TdxBarButton;
    N82: TdxBarButton;
    N83: TdxBarButton;
    N14: TdxBarButton;
    N74: TdxBarButton;
    N10: TdxBarSubItem;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    dxBarButton10: TdxBarButton;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1fact_unit_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1num_vagon: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_repair_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_last_repair: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair1_axis_create_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair1_axis_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair1_right_hoop_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair1_right_peak_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair1_left_hoop_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair1_left_peak_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair2_axis_create_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair2_axis_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair2_right_hoop_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair2_right_peak_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair2_left_hoop_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair2_left_peak_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_balk_create_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_balk_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_right_rack_create_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_right_rack_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_left_rack_create_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_left_rack_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair1_axis_create_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair1_axis_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair1_right_hoop_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair1_right_peak_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair1_left_hoop_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair1_left_peak_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair2_axis_create_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair2_axis_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair2_right_hoop_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair2_right_peak_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair2_left_hoop_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair2_left_peak_width: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_balk_create_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_balk_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_right_rack_create_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_right_rack_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_left_rack_create_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_left_rack_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Fio_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1file_load_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1type_repair_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1firm_name: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Query_FactUnit_History: TADOQuery;
    DS_FactUnit_History: TDataSource;
    Popup_FactUnit_History: TdxBarPopupMenu;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    ADOFactUnit: TADOConnection;
    cxImageList1: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxBarButton_FilterRecords1: TdxBarButton;
    cxGrid1DBBandedTableView1truck1_pair1_axis_builder_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair1_axis_builder_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair2_axis_builder_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair2_axis_builder_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair1_axis_builder_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair1_axis_builder_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair2_axis_builder_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair2_axis_builder_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_balk_builder_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_balk_builder_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_balk_builder_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_balk_builder_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair1_date_kp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair1_depo_kp_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair1_depo_kp_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair2_date_kp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair2_depo_kp_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair2_depo_kp_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair1_date_kp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair1_depo_kp_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair1_depo_kp_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair2_date_kp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair2_depo_kp_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair2_depo_kp_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_left_rack_builder: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_right_rack_builder: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_right_rack_builder: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_left_rack_builder: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_right_rack_builder_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_right_rack_builder_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_left_rack_builder_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_left_rack_builder_name: TcxGridDBBandedColumn;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1fact_unit_id: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridDBBandedColumn29: TcxGridDBBandedColumn;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridDBBandedColumn32: TcxGridDBBandedColumn;
    cxGridDBBandedColumn33: TcxGridDBBandedColumn;
    cxGridDBBandedColumn34: TcxGridDBBandedColumn;
    cxGridDBBandedColumn35: TcxGridDBBandedColumn;
    cxGridDBBandedColumn36: TcxGridDBBandedColumn;
    cxGridDBBandedColumn37: TcxGridDBBandedColumn;
    cxGridDBBandedColumn38: TcxGridDBBandedColumn;
    cxGridDBBandedColumn39: TcxGridDBBandedColumn;
    cxGridDBBandedColumn40: TcxGridDBBandedColumn;
    cxGridDBBandedColumn41: TcxGridDBBandedColumn;
    cxGridDBBandedColumn42: TcxGridDBBandedColumn;
    cxGridDBBandedColumn43: TcxGridDBBandedColumn;
    cxGridDBBandedColumn44: TcxGridDBBandedColumn;
    cxGridDBBandedColumn45: TcxGridDBBandedColumn;
    cxGridDBBandedColumn46: TcxGridDBBandedColumn;
    cxGridDBBandedColumn47: TcxGridDBBandedColumn;
    cxGridDBBandedColumn48: TcxGridDBBandedColumn;
    cxGridDBBandedColumn49: TcxGridDBBandedColumn;
    cxGridDBBandedColumn51: TcxGridDBBandedColumn;
    cxGridDBBandedColumn52: TcxGridDBBandedColumn;
    cxGridDBBandedColumn53: TcxGridDBBandedColumn;
    cxGridDBBandedColumn54: TcxGridDBBandedColumn;
    cxGridDBBandedColumn55: TcxGridDBBandedColumn;
    cxGridDBBandedColumn56: TcxGridDBBandedColumn;
    cxGridDBBandedColumn57: TcxGridDBBandedColumn;
    cxGridDBBandedColumn58: TcxGridDBBandedColumn;
    cxGridDBBandedColumn59: TcxGridDBBandedColumn;
    cxGridDBBandedColumn60: TcxGridDBBandedColumn;
    cxGridDBBandedColumn61: TcxGridDBBandedColumn;
    cxGridDBBandedColumn62: TcxGridDBBandedColumn;
    cxGridDBBandedColumn63: TcxGridDBBandedColumn;
    cxGridDBBandedColumn64: TcxGridDBBandedColumn;
    cxGridDBBandedColumn65: TcxGridDBBandedColumn;
    cxGridDBBandedColumn66: TcxGridDBBandedColumn;
    cxGridDBBandedColumn67: TcxGridDBBandedColumn;
    cxGridDBBandedColumn68: TcxGridDBBandedColumn;
    cxGridDBBandedColumn69: TcxGridDBBandedColumn;
    cxGridDBBandedColumn70: TcxGridDBBandedColumn;
    cxGridDBBandedColumn71: TcxGridDBBandedColumn;
    cxGridDBBandedColumn72: TcxGridDBBandedColumn;
    cxGridDBBandedColumn73: TcxGridDBBandedColumn;
    cxGridDBBandedColumn74: TcxGridDBBandedColumn;
    cxGridDBBandedColumn75: TcxGridDBBandedColumn;
    cxGridDBBandedColumn76: TcxGridDBBandedColumn;
    cxGridDBBandedColumn77: TcxGridDBBandedColumn;
    cxGridDBBandedColumn78: TcxGridDBBandedColumn;
    cxGridDBBandedColumn79: TcxGridDBBandedColumn;
    cxGridDBBandedColumn80: TcxGridDBBandedColumn;
    cxGridDBBandedColumn81: TcxGridDBBandedColumn;
    cxGridDBBandedColumn82: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton13: TdxBarButton;
    cxGrid1DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1type_park_name: TcxGridDBBandedColumn;
    dxBarButton16: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton17: TdxBarButton;
    cxGrid1DBBandedTableView1truck1_pair1_year_kp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck1_pair2_year_kp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair2_year_kp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck2_pair1_year_kp: TcxGridDBBandedColumn;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton20: TdxBarButton;
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N14Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure Action_DeleteExecute(Sender: TObject);
    procedure Excel3Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton4Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton10Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;   ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);

  private
    Fdate1    : TDateTime;
    Fusr_pwd  : PUser_pwd;
  public
    constructor Create(App : TApplication; Flag:Boolean; usr_pwd:PUser_pwd);
  published
  end;

  function CreateWndFactUnit(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd) : variant; export;

var
  fmFactUnit: TfmFactUnit;

implementation
  uses Other, ComObj, Period, FactTechAdd, VagonChoose, Raznoe;
{$R *.dfm}

function CreateWndFactUnit(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd ) : variant; export;
var i : integer;
begin
   Application.Handle := AppHand;
   fmFactUnit := TfmFactUnit.Create(Application, flag, usr_pwd);
   with fmFactUnit do
    try
      if ShowModal=mrOK then result := VarArrayOf(['', -9 ])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
    end;
end;

constructor TfmFactUnit.Create(App : TApplication; Flag:Boolean; usr_pwd:PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);
  //cxLocalizer1.Locale := 1049;
  FUsr_pwd := Usr_pwd;

  Fdate1 := Now;
  StoreRegistryGrid(rgLoad,'\Software\Lis1\FactUnit_Grids', cxGrid1DBBandedTableView1, 1);
  dxBarSubItem3.Caption := FormatDateTime('dd.mm.yyyy', Fdate1);

  ADOFactUnit.Connected := False;
  ADOFactUnit.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOFactUnit.Connected := True;

  Query_FactUnit.Parameters.ParamByName('date1').Value := Fdate1;
  Query_FactUnit.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
  Query_FactUnit.Open;

  SetUsersModuleRights(self, ADOFactUnit);

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOFactUnit, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmFactUnit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave,'\Software\Lis1\FactUnit_Grids', cxGrid1DBBandedTableView1, 1);
  Action := caFree;
end;

procedure TfmFactUnit.Action_DeleteExecute(Sender: TObject);
var i : integer;
begin
  if Application.MessageBox('Вы точно уверены?', 'Внимание', MB_OKCANCEL) = IDOK then begin
    Screen.Cursor := -11;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP_TrackDelete.Close;
      SP_TrackDelete.Parameters.Refresh;
      SP_TrackDelete.Parameters.ParamByName('@fact_unit_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1.GetColumnByFieldName('fact_unit_id').Index];
      SP_TrackDelete.Parameters.ParamByName('@type_action').Value  := 2;
        try
          SP_TrackDelete.ExecProc;
          ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
          if SP_TrackDelete.Parameters.ParamByName('@fact_unit_id').Value = -9 then Application.MessageBox('Нельзя удалить вагон','Внимание',MB_OK);
        except
        end;
    end;
    ShowTextMessage;
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_unit_id');
  end;
end;

procedure TfmFactUnit.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFactUnit.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmFactUnit.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFactUnit.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmFactUnit.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourglass;

  Query_FactUnit_History.Close;
  if (dxBarButton10.Down) AND (AFocusedRecord <> nil) then begin
    Query_FactUnit_History.Parameters.ParamByName('num_vagon').Value := cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsInteger;
    Query_FactUnit_History.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
    Query_FactUnit_History.Open;
    GroupBox2.Caption := 'История по вагону № ' + cxGrid1DBBandedTableView1num_vagon.DataBinding.Field.AsString;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmFactUnit.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
   FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmFactUnit.cxGrid2DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmFactUnit.dxBarButton10Click(Sender: TObject);
begin
  GroupBox2.Visible := dxBarButton10.Down;
  Splitter1.Visible := dxBarButton10.Down;
end;

procedure TfmFactUnit.dxBarButton11Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid2DBBandedTableView1);
end;

procedure TfmFactUnit.dxBarButton4Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate1, 7);
  if fmPeriod.ShowModal=mrOK then begin
    Screen.Cursor := crHourglass;
    Fdate1 := fmPeriod._GetDateBegin;

    Query_FactUnit.Close;
    Query_FactUnit.Parameters.ParamByName('date1').Value := Fdate1;
    Query_FactUnit.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
    Query_FactUnit.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfmFactUnit.dxBarButton9Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid2DBBandedTableView1);
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmFactUnit.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmFactUnit.Excel3Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmFactUnit.N14Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmFactUnit.N74Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFactUnit.N82Click(Sender: TObject);
begin
  SetRecordColor('fact_tech_id', cxGrid1DBBandedTableView1, 'fact_tech', TMenuItem(Sender).Tag = 1);
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'fact_unit_id', cxGrid1DBBandedTableView1fact_unit_id.DataBinding.Field.AsInteger);
end;

procedure TfmFactUnit.ToolButton12Click(Sender: TObject);
begin
  Close;
end;

procedure TfmFactUnit.dxBarButton12Click(Sender: TObject);
var List : TStringList;
       i : integer;
begin
  fmVagonChoose:= TfmVagonChoose.Create(Application);
  if fmVagonChoose.ShowModal=mrOK then begin
  Screen.Cursor := crHourglass;
    List := TStringList.Create;
    List.Text := fmVagonChoose._GetStrVagonNum;
    cxGrid1DBBandedTableView1.DataController.DataSet.DisableControls;

    with cxGrid1DBBandedTableView1.DataController.Filter do begin
      Clear;
      Options := Options + [fcoCaseInsensitive];
      Root.BoolOperatorKind := fboOr;
      BeginUpdate;
      for i := 0 to List.Count - 1 do if (Trim(List.Strings[i])<>'') then
        Root.AddItem(cxGrid1DBBandedTableView1num_vagon, foEqual, Trim(List.Strings[i]),Trim(List.Strings[i]) );
      EndUpdate;
      Active := True;
    end;
    cxGrid1DBBandedTableView1.DataController.DataSet.EnableControls;
  Screen.Cursor := crDefault;
  List.Free;
  end;
end;

procedure TfmFactUnit.dxBarButton13Click(Sender: TObject);
begin
  cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmFactUnit.dxBarButton16Click(Sender: TObject);
begin
  UsersSettingModify(TComponent(Sender).Tag, TForm(self).Name, TcxControl(cxGrid1DBBandedTableView1), ADOFactUnit);
end;

procedure TfmFactUnit.dxBarButton17Click(Sender: TObject);
var
  fList, fFact : TcxFilterCriteriaItemList;
begin
  Screen.Cursor := crHourglass;
  with cxGrid1DBBandedTableView1.DataController.Filter do begin
    Active := False;
    Root.Clear;

    BeginUpdate;
    Options := cxGrid1DBBandedTableView1.DataController.Filter.Options + [fcoCaseInsensitive];

    // ------- условие "Год КП" <2014 или <1980 --------------
    Root.BoolOperatorKind := fboOr;
    Root.AddItem(cxGrid1DBBandedTableView1truck1_pair1_year_kp, foLessEqual, 2014, '2014');
    Root.AddItem(cxGrid1DBBandedTableView1truck1_pair2_year_kp, foLessEqual, 2014, '2014');
    Root.AddItem(cxGrid1DBBandedTableView1truck2_pair1_year_kp, foLessEqual, 2014, '2014');
    Root.AddItem(cxGrid1DBBandedTableView1truck2_pair2_year_kp, foLessEqual, 2014, '2014');

    // ------- условие "Год изг. балки" <1980 --------------
    Root.AddItem(cxGrid1DBBandedTableView1truck1_balk_create_date, foLessEqual, 1980, '1980');
    Root.AddItem(cxGrid1DBBandedTableView1truck2_balk_create_date, foLessEqual, 1980, '1980');

    // ------- условие "Год изг. рамы" <1980 --------------
    Root.AddItem(cxGrid1DBBandedTableView1truck1_right_rack_create_date, foLessEqual, 1980, '1980');
    Root.AddItem(cxGrid1DBBandedTableView1truck1_left_rack_create_date, foLessEqual, 1980, '1980');
    Root.AddItem(cxGrid1DBBandedTableView1truck2_right_rack_create_date, foLessEqual, 1980, '1980');
    Root.AddItem(cxGrid1DBBandedTableView1truck2_left_rack_create_date, foLessEqual, 1980, '1980');




    // -------- год изготовления балки 1 и 2  с 1984 до 1990 ------------
    fList := Root.AddItemList(fboOr);
    fFact := fList.AddItemList(fboAnd);
    fFact.AddItem(cxGrid1DBBandedTableView1truck1_balk_create_date, foGreaterEqual, 1984, '1984');
    fFact.AddItem(cxGrid1DBBandedTableView1truck1_balk_create_date, foLessEqual, 1990, '1990');

    fList := Root.AddItemList(fboOr);
    fFact := fList.AddItemList(fboAnd);
    fFact.AddItem(cxGrid1DBBandedTableView1truck2_balk_create_date, foGreaterEqual, 1984, '1984');
    fFact.AddItem(cxGrid1DBBandedTableView1truck2_balk_create_date, foLessEqual, 1990, '1990');

    // -------- год изготовления рамы (1.1, 1.2, 2.1, 2.2) ----------------
    fList := Root.AddItemList(fboOr);
    fFact := fList.AddItemList(fboAnd);
    fFact.AddItem(cxGrid1DBBandedTableView1truck1_right_rack_create_date, foGreaterEqual, 1984, '1984');
    fFact.AddItem(cxGrid1DBBandedTableView1truck1_right_rack_create_date, foLessEqual, 1990, '1990');

    fList := Root.AddItemList(fboOr);
    fFact := fList.AddItemList(fboAnd);
    fFact.AddItem(cxGrid1DBBandedTableView1truck1_left_rack_create_date, foGreaterEqual, 1984, '1984');
    fFact.AddItem(cxGrid1DBBandedTableView1truck1_left_rack_create_date, foLessEqual, 1990, '1990');

    fList := Root.AddItemList(fboOr);
    fFact := fList.AddItemList(fboAnd);
    fFact.AddItem(cxGrid1DBBandedTableView1truck2_right_rack_create_date, foGreaterEqual, 1984, '1984');
    fFact.AddItem(cxGrid1DBBandedTableView1truck2_right_rack_create_date, foLessEqual, 1990, '1990');

    fList := Root.AddItemList(fboOr);
    fFact := fList.AddItemList(fboAnd);
    fFact.AddItem(cxGrid1DBBandedTableView1truck2_left_rack_create_date, foGreaterEqual, 1984, '1984');
    fFact.AddItem(cxGrid1DBBandedTableView1truck2_left_rack_create_date, foLessEqual, 1990, '1990');

    EndUpdate;

    Active := True;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmFactUnit.dxBarButton20Click(Sender: TObject);
var   str_num_vagon        : string;
      sp_Report_fact_track : TADOStoredProc;
      exWks, exApp         : Variant;
      row_insert, i, k     : integer;
      date1, date2         : TDateTime;
begin
  str_num_vagon := cx_GetSelectedValues(cxGrid1, 'num_vagon');

  if str_num_vagon = '' then exit;

  Screen.Cursor := crHourglass;
  ShowTextMessage('Запуск Excel...', False);
  exApp := CreateOleObject('Excel.Application');
  exApp.Workbooks.Add(GetDocBlob(ADOFactUnit, 446));
  exWks := exApp.ActiveWorkbook.WorkSheets[1];

  row_insert := 7;

  sp_Report_fact_track := TADOStoredProc.Create(nil);
  sp_Report_fact_track.Connection := ADOFactUnit;
  sp_Report_fact_track.ProcedureName := 'sp_Report_fact_track';
  sp_Report_fact_track.Parameters.Refresh;
  sp_Report_fact_track.Parameters.ParamByName('@type_report').Value := 446;
  sp_Report_fact_track.Parameters.ParamByName('@str_num_vagon').Value := str_num_vagon;

  sp_Report_fact_track.Open;
  sp_Report_fact_track.First;
  i := 1;
  k := 1;

  //exApp.Visible := True;
  while not sp_Report_fact_track.Eof do begin
      exWks.Range['B'+IntToStr(row_insert)].Value := i;
      exWks.Range['C'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('vagon_model').AsString;
      exWks.Range['D'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('factory_name').AsString;
      exWks.Range['E'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('date_build').AsDateTime;
      exWks.Range['F'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('serial_num').AsString;
      exWks.Range['G'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('num_vagon').AsString;


      exWks.Range['H'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('truck1_balk_num').AsString;
      exWks.Range['I'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('truck1_balk_create_date').AsString;
      exWks.Range['J'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('truck1_balk_builder_cod').AsString;

      exWks.Range['K'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('truck1_right_rack_num').AsString;
      exWks.Range['L'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('truck1_right_rack_create_date').AsString;
      exWks.Range['M'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('truck1_right_rack_builder').AsString;

      exWks.Range['N'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('truck1_pair1_axis_num').AsString;
      exWks.Range['O'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('truck1_pair1_axis_create_date').AsString;
      exWks.Range['P'+IntToStr(row_insert)].Value := sp_Report_fact_track.FieldByName('truck1_pair1_axis_builder_cod').AsString;

      sp_Report_fact_track.Next;

      if k = 4 then begin
        if not sp_Report_fact_track.Eof then begin
          xCopyRange(exApp, row_insert+1, row_insert + 4, row_insert + 1);
          k := 0;
          i := i+1;
        end;
      end;


      k := k+1;
      row_insert := row_insert + 1;
      ShowTextMessage('Идет формирование отчета по простою. Обработано '+IntToStr(row_insert - 7)+' из '+IntToStr(sp_Report_fact_track.RecordCount)+#13#10+ 'Подождите пожалуйста...', False);
  end;

  exApp.Rows[IntToStr(row_insert + 1) + ':' + IntToStr(row_insert + 3)].Select;
  exApp.Selection.Delete;

  exWks.PageSetup.PrintArea := exWks.Range['A1:P'+IntToStr(row_insert)].Address;
  exApp.Range['A1'].Select;
  exApp.Visible := True;

  sp_Report_fact_track.Free;
  exApp := Null;  exWks := Null;
  ShowTextMessage('', True);
  Screen.Cursor := crDefault;

end;

end.
