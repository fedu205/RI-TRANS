unit UsersRole;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, dxCore,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  ExtCtrls, StdCtrls, Menus, cxSplitter, ComCtrls, cxContainer, cxLabel, cxCheckBox, cxPropertiesStore, cxImage, dxBar,
  cxLookAndFeelPainters, cxDBLookupComboBox, cxDropDownEdit, DBClient, Other, cxColorComboBox, cxLookAndFeels, cxPC, cxRichEdit, cxImageComboBox,
  cxCalendar, cxLocalization, cxTextEdit, cxMemo, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian,  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator, dxSkinsdxBarPainter, dxGDIPlusClasses, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList,
  Vcl.Imaging.jpeg, Vcl.ImgList, cxImageList, DateUtils, dxSkinTheBezier, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxDateRanges, dxSkinOffice2019Colorful;

type TFuncImage = function (AppHand: THandle; person_id : integer) : variant;

type
  TfmUsersRole = class(TForm)
    ADOUsersRole: TADOConnection;
    Query_Users: TADOQuery;
    Query_Users_Users: TADOQuery;
    DS_Users: TDataSource;
    DS_Users_Users: TDataSource;
    Query1: TADOQuery;
    cxImageList_16: TcxImageList;
    Query_Open_Users: TADOQuery;
    DS_open_users: TDataSource;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarPopup_User: TdxBarPopupMenu;
    dxBarGroup1: TdxBarGroup;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarPopup_page_0: TdxBarPopupMenu;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarPopup_page_1: TdxBarPopupMenu;
    Query_Functions: TADOQuery;
    DS_Functions: TDataSource;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarPopup_page_4: TdxBarPopupMenu;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton23: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    Query_UsersModuleRights: TADOQuery;
    DS_UsersModuleRights: TDataSource;
    dxBarPopup_page_5: TdxBarPopupMenu;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    Client_UsersModuleRights: TClientDataSet;
    Client_UsersModuleRightsid: TAutoIncField;
    Client_UsersModuleRightsmodule_rights_id: TIntegerField;
    Client_UsersModuleRightsusers_id: TIntegerField;
    Client_UsersModuleRightsmodule_name: TStringField;
    Client_UsersModuleRightscomponent_name: TStringField;
    Client_UsersModuleRightscomponent_properties_name: TStringField;
    Client_UsersModuleRightscomponent_properties_value: TStringField;
    Client_UsersModuleRightsaction: TIntegerField;
    dxBarButton29: TdxBarButton;
    cxLocalizer1: TcxLocalizer;
    dxBarButton_FilterRecords1: TdxBarButton;
    cxPageControl2: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_group_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1set_group_users: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_begin: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1users_comment: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    Splitter1: TSplitter;
    Panel6: TPanel;
    cxLabel5: TcxLabel;
    cxImage1: TcxImage;
    Panel2: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1users_master_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1users_detail_id: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1user_master_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1user_detail_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1rights: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1rights_name: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1set_group_users_detail: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1users_group_name_detail: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxTabSheet4: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1users_master_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1users_detail_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1user_master_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1user_detail_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rights: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1rights_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1set_group_users_master: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1users_group_name_master: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    cxTabSheet5: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGrid6DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid6DBBandedTableView1functions_id: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1functions_name: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1functions_descriptions: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1users_rights: TcxGridDBBandedColumn;
    cxGrid6Level2: TcxGridLevel;
    cxTabSheet6: TcxTabSheet;
    cxGrid7: TcxGrid;
    cxGrid7DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid7DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1Column5: TcxGridDBBandedColumn;
    cxGrid7DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid7Level1: TcxGridLevel;
    cxImage2: TcxImage;
    cxGrid5: TcxGrid;
    cxGrid5DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid5DBBandedTableView1functions_id: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1functions_name: TcxGridDBBandedColumn;
    cxGrid5DBBandedTableView1functions_descriptions: TcxGridDBBandedColumn;
    cxGrid5Level1: TcxGridLevel;
    Splitter2: TSplitter;
    DS_Func: TDataSource;
    Query_Func: TADOQuery;
    DS_Func_Users: TDataSource;
    Query_Func_Users: TADOQuery;
    cxGrid8: TcxGrid;
    cxGrid8DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid8DBBandedTableView1users_id: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1FIO_users: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1users_rights: TcxGridDBBandedColumn;
    cxGrid8Level1: TcxGridLevel;
    dxBarPopup_Func: TdxBarPopupMenu;
    dxBarPopup_Users_Func: TdxBarPopupMenu;
    dxBarButton_AddFunc: TdxBarButton;
    dxBarButton_DelFunc: TdxBarButton;
    cxGrid2DBBandedTableView1users_detail_date_end: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1users_master_date_end: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1date_end: TcxGridDBBandedColumn;
    cxGrid8DBBandedTableView1users_name: TcxGridDBBandedColumn;
    cxMemo1: TcxMemo;
    cxGrid1DBBandedTableView1users_stack_num: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1personID: TcxGridDBBandedColumn;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    cxTabSheet3: TcxTabSheet;
    Query_UsersActive: TADOQuery;
    DS_UsersActive: TDataSource;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1loginame: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1hostname: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1fio_users: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1login_time: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1last_batch: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1spid: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1lis_version: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1lis_datetime: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1ver_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1ver_datetime: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton10: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton18: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    cxGrid4DBBandedTableView1personID: TcxGridDBBandedColumn;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    cxImage3: TcxImage;
    cxMemo2: TcxMemo;
    procedure ADOUsersRoleExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error;  var EventStatus: TEventStatus; const Command: _Command;  const Recordset: _Recordset);
    procedure dxBarButton29Click(Sender: TObject);
    procedure Client_UsersModuleRightsAfterInsert(DataSet: TDataSet);
    procedure Client_UsersModuleRightsBeforePost(DataSet: TDataSet);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarPopup_UserPopup(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxBarButton20Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure dxBarButton14Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxPageControl1Change(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
    procedure cxPageControl2Change(Sender: TObject);
    procedure cxGrid5DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cxGrid8DBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid6DBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;    AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarButton_AddFuncClick(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid6DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid4DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid4DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid4DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid9DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid4DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxGrid4DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,AFocusedRecord: TcxCustomGridRecord;ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton8Click(Sender: TObject);
    procedure cxGrid2DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxGrid3DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
    procedure cxGrid8DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
  private
    Fhandle : THandle;
    FPersonImage : TFuncImage;
    procedure BarButtonEnable(flag : boolean);
    procedure UsersModuleRightsModify;
    procedure RefreshClientUsersModuleRights(var Q : TADOQuery; action : integer);
    function  SetFunctionUsers(function_id : integer; users_id : integer; type_action : integer) : boolean;
    procedure GetAvatarUsers(PersonID : integer; Img : TcxImage);//подтягиваем аватар пользователя
  public
    Fusr_pwd : PUser_pwd;
    constructor Create(AOwner:TApplication; usr_pwd : PUser_pwd);
  end;



function CreateWndUsersRole(AppHand:THandle; usr_pwd : PUser_pwd) : Variant; export;
function GetPersonImage(AppHand: THandle; person_id: integer): variant;  external  'Tel_users';

var
  fmUsersRole: TfmUsersRole;

implementation
  uses UsersAdd, Filter, Raznoe;

{$R *.dfm}

function CreateWndUsersRole(AppHand:THandle; usr_pwd : PUser_pwd) : Variant;
begin
  Application.Handle := AppHand;
  try
    fmUsersRole := TfmUsersRole.Create(Application, usr_pwd);
    if fmUsersRole.ShowModal = mrOk then
      result := VarArrayOf([-9, ''])
    else
      result := VarArrayOf([-9, '']);
  finally
    fmUsersRole.Free;
  end;
end;

constructor TfmUsersRole.Create(AOwner:TApplication; usr_pwd : PUser_pwd);
var Q : TADOQuery;
begin
  inherited Create(AOwner);
  Screen.Cursor := crHourglass;
  cxLocalizer1.Locale := 1049;

  ADOUsersRole.Connected := False;
  ADOUsersRole.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOUsersRole.Connected := True;

//  new(Fusr_pwd);
  Fusr_pwd := usr_pwd;

  Q := TADOQuery.Create(nil);
  Q.Connection := ADOUsersRole;
  Q.SQL.Add('SELECT inf_obj_name FROM inf_obj WHERE inf_obj_id='+IntToStr(usr_pwd^.user_group_id));
  Q.Open;

  Caption := 'Настройка прав доступа для организации ('+Q.FieldByName('inf_obj_name').AsString+')';

  Q.Close;
  Q.Free;

  Client_UsersModuleRights.CreateDataSet;
  Query_Users.Open;
  Query_Func.Open;
  cxPageControl1.ActivePage := cxTabSheet1;
//  cxPageControl2.ActivePage := cxTabSheet2;
  if cxPageControl2.ActivePageIndex <> 0 then
    cxPageControl2.ActivePageIndex := 0;

 // Fhandle := LoadLibrary('Tel_users.dll');

  StoreRegistryGrid(rgLoad,'\Software\Lis1\UsersRole_Grid', cxGrid1DBBandedTableView1, 2);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\UsersRole_Grid', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\UsersRole_Grid', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\UsersRole_Grid', cxGrid6DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\UsersRole_Grid', cxGrid7DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\UsersRole_Grid', cxGrid5DBBandedTableView1);
  StoreRegistryGrid(rgLoad,'\Software\Lis1\UsersRole_Grid', cxGrid8DBBandedTableView1);

  if not Query_Users.Eof then begin
    //делаем первую строку активно-выделенной как будто ее выделил пользователь для отображения фото пользователя
//    cxGrid1DBBandedTableView1.DataController.SelectRows(0, 0);
    //делаем столбец FIO_USERS активным чтобы не выделять колонку для фильтрации, асразу вводить текст для скорости и удобства
//    cxGrid1DBBandedTableView1.Columns[2].Focused := True;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.FormShow(Sender: TObject);
begin
  cxGrid1.SetFocus;
end;

procedure TfmUsersRole.UsersModuleRightsModify;
var SP_UsersModuleRightsModify : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;
  if Client_UsersModuleRights.State in [dsInsert, dsEdit] then Client_UsersModuleRights.Post;

  SP_UsersModuleRightsModify := TADOStoredProc.Create(Application);
  SP_UsersModuleRightsModify.Connection := ADOUsersRole;
  SP_UsersModuleRightsModify.ProcedureName := 'sp_users_module_rights_modify;1';
  SP_UsersModuleRightsModify.Parameters.Refresh;

  Client_UsersModuleRights.Filtered := False;
  Client_UsersModuleRights.First;

  while not Client_UsersModuleRights.Eof do begin
    if Client_UsersModuleRights.FieldByName('action').AsInteger in [0,1,2] then begin
      SP_UsersModuleRightsModify.Close;
      SP_UsersModuleRightsModify.Parameters.ParamByName('@type_action'               ).Value := Client_UsersModuleRights.FieldByName('action').Value;
      SP_UsersModuleRightsModify.Parameters.ParamByName('@module_rights_id'          ).Value := Client_UsersModuleRights.FieldByName('module_rights_id').Value;
      SP_UsersModuleRightsModify.Parameters.ParamByName('@users_id'                  ).Value := Client_UsersModuleRights.FieldByName('users_id').Value;
      SP_UsersModuleRightsModify.Parameters.ParamByName('@module_name'               ).Value := Client_UsersModuleRights.FieldByName('module_name').Value;
      SP_UsersModuleRightsModify.Parameters.ParamByName('@component_name'            ).Value := Client_UsersModuleRights.FieldByName('component_name').Value;
      SP_UsersModuleRightsModify.Parameters.ParamByName('@component_properties_name' ).Value := Client_UsersModuleRights.FieldByName('component_properties_name').Value;
      SP_UsersModuleRightsModify.Parameters.ParamByName('@component_properties_value').Value := Client_UsersModuleRights.FieldByName('component_properties_value').Value;
      SP_UsersModuleRightsModify.ExecProc;
    end;
    Client_UsersModuleRights.Next;
  end;
  Client_UsersModuleRights.Filtered := True;
  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.Client_UsersModuleRightsAfterInsert(DataSet: TDataSet);
begin
  if Client_UsersModuleRights.FieldByName('action').AsInteger <> -1 then begin
    Client_UsersModuleRights.FieldByName('action'                    ).AsInteger := 0;
    Client_UsersModuleRights.FieldByName('users_id'                  ).AsInteger := Query_Users.FieldByName('users_id').AsInteger;
    Client_UsersModuleRights.FieldByName('component_properties_name' ).AsString  := 'Visible';
    Client_UsersModuleRights.FieldByName('component_properties_value').AsString  := 'ivNever';
  end;
end;

procedure TfmUsersRole.Client_UsersModuleRightsBeforePost(DataSet: TDataSet);
begin
  if (Client_UsersModuleRights.FieldByName('action').AsInteger = -1) and (Client_UsersModuleRights.State = dsEdit) then Client_UsersModuleRights.FieldByName('action').AsInteger := 1;
end;


procedure TfmUsersRole.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmUsersRole.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Query_Users_Users.Close;
  Query_Open_users.Close;

  if Query_Users.Active then begin
    cxMemo1.Text := cxGrid1DBBandedTableView1FIO_users.DataBinding.Field.AsString;
//    cxLabel5.Caption := cxGrid1DBBandedTableView1FIO_users.DataBinding.Field.AsString;
    case cxPageControl1.ActivePageIndex of
      0 : begin
          Query_Users_Users.Close;
          Query_Users_Users.Parameters.ParamByName('users_master_id').Value := cxGrid1DBBandedTableView1users_id.DataBinding.Field.AsInteger;
          Query_Users_Users.Open;
      end;

      1 : begin
          Query_Open_users.Close;
          Query_Open_users.Parameters.ParamByName('users_detail_id').Value := cxGrid1DBBandedTableView1users_id.DataBinding.Field.AsInteger;
          Query_Open_users.Open;
      end;

      2 : begin
          Query_Functions.Close;
          Query_Functions.Parameters.ParamByName('users_id').Value := cxGrid1DBBandedTableView1users_id.DataBinding.Field.AsInteger;
          Query_Functions.Open;
      end;

      3 : begin
          UsersModuleRightsModify;
          Q := TADOQuery.Create(nil);
          Q.Connection := ADOUsersRole;
          Q.SQL.Add('SELECT * FROM users_module_rights WHERE users_id = ' + IntToStr(cxGrid1DBBandedTableView1users_id.DataBinding.Field.AsInteger));
          Q.Open;
          RefreshClientUsersModuleRights(Q, -1);
          Q.Free;
      end;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.RefreshClientUsersModuleRights(var Q : TADOQuery; action : integer);
begin
  Client_UsersModuleRights.Filtered := False;
  Client_UsersModuleRights.First;
  while not Client_UsersModuleRights.Eof do Client_UsersModuleRights.Delete;
  Client_UsersModuleRights.Filtered := True;

  while not Q.Eof do begin
    Client_UsersModuleRights.Append;
    Client_UsersModuleRights.FieldByName('action'                    ).AsInteger := action;
    Client_UsersModuleRights.FieldByName('module_rights_id'          ).AsInteger := Q.FieldByName('module_rights_id').AsInteger;
    Client_UsersModuleRights.FieldByName('users_id'                  ).AsInteger := Q.FieldByName('users_id').AsInteger;
    Client_UsersModuleRights.FieldByName('module_name'               ).AsString  := Q.FieldByName('module_name').AsString;
    Client_UsersModuleRights.FieldByName('component_name'            ).AsString  := Q.FieldByName('component_name').AsString;
    Client_UsersModuleRights.FieldByName('component_properties_name' ).AsString  := Q.FieldByName('component_properties_name').AsString;
    Client_UsersModuleRights.FieldByName('component_properties_value').AsString  := Q.FieldByName('component_properties_value').AsString;
    Client_UsersModuleRights.Post;
    Q.Next;
  end;
end;

procedure TfmUsersRole.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(TcxGridDBBandedTableView(TcxGridSite(Sender).GridView), Key);
end;

//подтягиваем аватар пользователя
procedure TfmUsersRole.GetAvatarUsers(PersonID : integer; Img : TcxImage);
var           v : variant;
         QImage : TADODataSet;
        ms, ms1 : TMemoryStream;
begin
  FPersonImage := GetProcAddress(Fhandle, 'GetPersonImage');
//v := FPersonImage(Application.Handle, cxGrid1DBBandedTableView1personID.DataBinding.Field.AsInteger)
  v := FPersonImage(Application.Handle, PersonID);
  QImage := TADODataSet.Create(nil);
  QImage.Recordset := RecordsetFromXML(v[1]);
  if not Assigned(Img.Picture.Graphic) then
    Img.Picture.Graphic := TJPEGImage.Create;

  ms := TMemoryStream.Create;
  ms1 := TMemoryStream.Create;
  (QImage.FieldByName('users_image_thumbnail') as TBlobField).SaveToStream(ms);
  if ms.Size > 0 then begin
    ms.Seek(0, 0);
    ms.Position := 10;
    ms1.CopyFrom(ms, ms.Size-10);
    ms1.Seek(0,0);
    Img.Picture.Graphic.LoadFromStream(ms1);
  end;

  ms.Clear;
  ms.Free;
  ms1.Clear;
  ms1.Free;

  QImage.Close;
  QImage.Free;
end;

procedure TfmUsersRole.cxGrid1DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  //подтягиваем аватар пользователя
  if Query_Users.Active then begin
    //GetAvatarUsers(Query_Users.FieldByName('personID').AsInteger, cxImage1);

    case cxPageControl1.ActivePageIndex of
      0 : if (Query_Users_Users.Active) AND (Query_Users_Users.RecordCount > 0) then begin
        //делаем первую строку активно-выделенной как будто ее выделил пользователь для отображения фото пользователя
        //cxGrid2DBBandedTableView1.DataController.SelectRows(0, 0);
        //делаем столбец FIO_USERS активным чтобы не выделять колонку для фильтрации, асразу вводить текст для скорости и удобства
        cxGrid2DBBandedTableView1.Columns[3].Focused := True;
      end;
      1 : if (Query_Open_Users.Active) AND (Query_Open_Users.RecordCount > 0) then begin
        //делаем первую строку активно-выделенной как будто ее выделил пользователь для отображения фото пользователя
        //cxGrid3DBBandedTableView1.DataController.SelectRows(0, 0);
        //делаем столбец FIO_USERS активным чтобы не выделять колонку для фильтрации, асразу вводить текст для скорости и удобства
        cxGrid3DBBandedTableView1.Columns[3].Focused := True;
      end;
    end;
  end;
end;

procedure TfmUsersRole.cxGrid4DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  //подтягиваем аватар пользователя
//  GetAvatarUsers(Query_UsersActive.FieldByName('personID').AsInteger, cxImage1);
end;

procedure TfmUsersRole.cxGrid2DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  //подтягиваем аватар пользователя он видит
//  GetAvatarUsers(Query_Users_Users.FieldByName('personID_user_detail_he').AsInteger, cxImage3);
  //cxMemo2.Text := cxGrid2DBBandedTableView1user_detail_name.DataBinding.Field.AsString;
  cxMemo2.Text := Query_Users_Users.FieldByName('user_detail_name').AsString;
end;

procedure TfmUsersRole.cxGrid3DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
  //подтягиваем аватар пользователя его видят
  GetAvatarUsers(Query_Open_Users.FieldByName('personID_user_detail_him').AsInteger, cxImage3);
  //cxMemo2.Text := cxGrid3DBBandedTableView1user_master_name.DataBinding.Field.AsString;
  cxMemo2.Text := Query_Open_Users.FieldByName('user_master_name').AsString;
end;

procedure TfmUsersRole.cxGrid2DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('rights').Index] = 0) then ACanvas.Brush.Color := $00B0FFB0;
  if (AViewInfo.GridRecord.Values[(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('rights').Index] = 1) then ACanvas.Brush.Color := $006FFFFF;
  if (AViewInfo.GridRecord.Values[(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('rights').Index] = 2) then ACanvas.Brush.Color := $008F83FE;//$005555FF;//$007171FF;//$005065F5;//$003948FD;//clRed;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmUsersRole.cxGrid2DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmUsersRole.cxGrid2DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmUsersRole.cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('rights').Index] = 0) then ACanvas.Brush.Color := $00B0FFB0;
  if (AViewInfo.GridRecord.Values[(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('rights').Index] = 1) then ACanvas.Brush.Color := $006FFFFF;
  if (AViewInfo.GridRecord.Values[(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('rights').Index] = 2) then ACanvas.Brush.Color := $008F83FE;//$005555FF;//$007171FF;//$005065F5;//$003948FD;//clRed;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmUsersRole.cxGrid4DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1lis_version.Index] <> NULL) and
     (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1ver_name.Index] <> NULL) then begin
    if AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1lis_version.Index] <> AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1ver_name.Index] then begin
      ACanvas.Font.Style := [fsBold];
      ACanvas.Font.Color := clRed;
    end;
  end;

  if (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1lis_datetime.Index] <> NULL) and
     (AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1ver_datetime.Index] <> NULL) then begin
    if AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1lis_datetime.Index] <> AViewInfo.GridRecord.Values[cxGrid4DBBandedTableView1ver_datetime.Index] then begin
      ACanvas.Font.Style := [fsBold];
      ACanvas.Font.Color := clRed;
    end;
  end;


	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmUsersRole.cxGrid4DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmUsersRole.cxGrid4DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,AFocusedItem: TcxCustomGridTableItem);
begin
  cxGrid4DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmUsersRole.cxGrid4DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Screen.Cursor := crHourglass;
  if Query_UsersActive.Active then
    cxMemo1.Text := cxGrid4DBBandedTableView1fio_users.DataBinding.Field.AsString;
  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.cxGrid4DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid4DBBandedTableView1, Key);
end;


procedure TfmUsersRole.cxGrid5DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if cxPageControl2.ActivePageIndex = 1 then begin
    cxMemo1.Text := cxGrid5DBBandedTableView1functions_descriptions.DataBinding.Field.AsString;
//    cxLabel5.Caption := cxGrid5DBBandedTableView1functions_descriptions.DataBinding.Field.AsString;
    Query_Func_Users.Close;
    Query_Func_Users.Parameters.ParamByName('functions_id').Value := cxGrid5DBBandedTableView1functions_id.DataBinding.Field.AsInteger;
    Query_Func_Users.Open;
  end;
end;

procedure TfmUsersRole.cxGrid6DBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item.Name = 'cxGrid6DBBandedTableView1users_rights' then begin
    try
      if not cxGrid6DBBandedTableView1users_rights.DataBinding.Field.AsBoolean then begin
        if not SetFunctionUsers(cxGrid6DBBandedTableView1functions_id.DataBinding.Field.AsInteger, cxGrid1DBBandedTableView1users_id.DataBinding.Field.AsInteger, 0) then
          exit;
      end else begin
        if not SetFunctionUsers(cxGrid6DBBandedTableView1functions_id.DataBinding.Field.AsInteger, cxGrid1DBBandedTableView1users_id.DataBinding.Field.AsInteger, 2) then
          exit;
      end;
      RefreshQueryGrid(cxGrid6DBBandedTableView1, 'functions_id');
    except
    end;
  end;
end;

procedure TfmUsersRole.cxGrid6DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('users_rights').Index] = False) then ACanvas.Brush.Color := $008F83FE;//$00B0FFB0;
  if (AViewInfo.GridRecord.Values[(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('users_rights').Index] = True) then ACanvas.Brush.Color := $00B0FFB0;//$006FFFFF;
  //if (AViewInfo.GridRecord.Values[(Sender as TcxGridDBBandedTableView).GetColumnByFieldName('users_rights').Index] = 2) then ACanvas.Brush.Color := $008F83FE;//$005555FF;//$007171FF;//$005065F5;//$003948FD;//clRed;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmUsersRole.cxGrid8DBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item.Name = 'cxGrid8DBBandedTableView1users_rights' then begin
    try
      if not cxGrid8DBBandedTableView1users_rights.DataBinding.Field.AsBoolean then begin
        if not SetFunctionUsers(cxGrid5DBBandedTableView1functions_id.DataBinding.Field.AsInteger, cxGrid8DBBandedTableView1users_id.DataBinding.Field.AsInteger, 0) then
          exit;
      end else begin
        if not SetFunctionUsers(cxGrid5DBBandedTableView1functions_id.DataBinding.Field.AsInteger, cxGrid8DBBandedTableView1users_id.DataBinding.Field.AsInteger, 2) then
          exit;
      end;
      RefreshQueryGrid(cxGrid8DBBandedTableView1, 'users_id');
    except
    end;
  end;
end;

procedure TfmUsersRole.cxGrid8DBBandedTableView1SelectionChanged(Sender: TcxCustomGridTableView);
begin
//  GetAvatarUsers(Query_Func_Users.FieldByName('personID').AsInteger, cxImage1);
end;

procedure TfmUsersRole.cxGrid9DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmUsersRole.cxPageControl1Change(Sender: TObject);
begin
  cxGrid1DBBandedTableView1FocusedRecordChanged(nil, nil, nil, True);
end;

procedure TfmUsersRole.cxPageControl2Change(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  cxMemo1.Text := '';
  cxLabel5.Caption := '';

  case cxPageControl2.ActivePageIndex of
    0 : begin
          Query_Users.Open;
          Query_UsersActive.Close;
          cxImage1.Visible := True;
          cxImage2.Visible := False;
          if not Query_Users.active then
            Query_Users.Open;
          cxGrid1DBBandedTableView1FocusedRecordChanged(nil, nil, nil, True);

          //делаем первую строку активно-выделенной как будто ее выделил пользователь для отображения фото пользователя
          cxGrid1DBBandedTableView1.DataController.SelectRows(0, 0);
          //делаем столбец FIO_USERS активным чтобы не выделять колонку для фильтрации, асразу вводить текст для скорости и удобства
          cxGrid1DBBandedTableView1.Columns[2].Focused := True;
        end;
    1 : begin
          Query_Users.Close;
          Query_UsersActive.Close;
          //cxImage1.Visible := False;
          cxImage2.Visible := True;

          cxGrid5DBBandedTableView1FocusedRecordChanged(nil, nil, nil, True);
        end;
    2 : begin
          Query_Users.Close;
          Query_UsersActive.Close;
          cxImage1.Visible := True;
          cxImage2.Visible := False;
          Query_UsersActive.Parameters.ParamByName('file_date').Value :=
          IncSecond(FileDateToDateTime(FileAge(GetModuleName(HInstance))), SecondOf(FileDateToDateTime(FileAge(GetModuleName(HInstance))))*(-1));
          Query_UsersActive.Parameters.ParamByName('users_group_id').Value := Fusr_pwd.user_group_id;
          Query_UsersActive.Open;

          //делаем первую строку активно-выделенной как будто ее выделил пользователь для отображения фото пользователя
          cxGrid4DBBandedTableView1.DataController.SelectRows(0, 0);
          //делаем столбец FIO_USERS активным чтобы не выделять колонку для фильтрации, асразу вводить текст для скорости и удобства
          cxGrid4DBBandedTableView1.Columns[2].Focused := True;
        end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.dxBarButton11Click(Sender: TObject);
var SP_UsersUsersModify : TADOStoredProc;
    Q                   : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmUsersRole.ADOUsersRole;
  Q.SQL.Add('SELECT u.* FROM view_users u ');
  Q.SQL.Add(' INNER JOIN view_users_group vug ON u.users_id = vug.users_id');
  Q.SQL.Add(' WHERE u.users_id not in (SELECT users_master_id FROM users_users WHERE users_detail_id = ' + Query_Users.FieldByName('users_id').AsString + ')');
  Q.SQL.Add(' AND u.users_id <> ' + Query_Users.FieldByName('users_id').AsString);
  Q.SQL.Add('ORDER BY fio_users');
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'users_id', 'FIO_users', 'users_group_name');
  fmFilter.GetUserRole(True);
  fmFilter.ShowModal;

  if fmFilter._GetStrId <> '' then begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT DISTINCT users_id AS users_master_id, ' + Query_Users.FieldByName('users_id').AsString + ' AS users_detail_id FROM users WHERE users_id in (' + fmFilter._GetStrId + ')');
    Query1.Open;
    SP_UsersUsersModify := TADOStoredProc.Create(Application);

    SP_UsersUsersModify.Connection := ADOUsersRole;
    SP_UsersUsersModify.ProcedureName := 'sp_users_users_modify;1';
    SP_UsersUsersModify.Parameters.Refresh;
    while not Query1.Eof do begin
      SP_UsersUsersModify.Close;
      SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value := 2;
      SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value := Query1.FieldByName('users_master_id').AsInteger;
      SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value := Query1.FieldByName('users_detail_id').AsInteger;
      SP_UsersUsersModify.ExecProc;
      SP_UsersUsersModify.Close;
      SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value := 0;
      SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value := Query1.FieldByName('users_master_id').AsInteger;
      SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value := Query1.FieldByName('users_detail_id').AsInteger;
      SP_UsersUsersModify.Parameters.ParamByName('@rights'         ).Value := 2;
      SP_UsersUsersModify.ExecProc;
      if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then
        Application.MessageBox(PChar('Нельзя добавить запись с параметрами users_master_id = ' + Query1.FieldByName('users_master_id').AsString + '; users_detail_id = ' + Query1.FieldByName('users_detail_id').AsString), 'Вниамние', MB_OK);
      Query1.Next;
    end;
  end;
  Q.Free;
  RefreshQueryGrid(cxGrid3DBBandedTableView1, 'users_detail_id');
  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.dxBarButton12Click(Sender: TObject);
{
var SP_UsersUsersModify : TADOStoredProc;
    Q                   : TADOQuery;
begin
  if Application.MessageBox(Pchar('Будет скопированны права доступа другого пользователя!' + #10 + 'Продолжить?'),'Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then Exit;
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmUsersRole.ADOUsersRole;
  Q.SQL.Add('SELECT * FROM view_users ');
  Q.SQL.Add('WHERE users_id <> ' + Query_Users.FieldByName('users_id').AsString);
  Q.SQL.Add('ORDER BY fio_users');
  Q.Open;


  fmFilter := TfmFilter.Create(0, Q, 'users_id', 'FIO_users', 'users_group_name');
  fmFilter.GetUserRole(False);
  fmFilter.ShowModal;

  if fmFilter._GetStrId <> '' then begin

    SP_UsersUsersModify := TADOStoredProc.Create(Application);
    SP_UsersUsersModify.Connection := ADOUsersRole;
    SP_UsersUsersModify.ProcedureName := 'sp_users_users_modify;1';
    SP_UsersUsersModify.Parameters.Refresh;

    SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value := 4;
    SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value := Query_Users.FieldByName('users_id').AsInteger;
    SP_UsersUsersModify.ExecProc;

    if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then begin
      Application.MessageBox(PChar('Нельзя очистить список "ЕГО видят"'), 'Внимание', MB_OK);
      exit;
    end;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT DISTINCT uu.users_master_id, ' + Query_Users.FieldByName('users_id').AsString + ' as users_detail_id, uu.rights ');
    Query1.SQL.Add('FROM users_users uu ');
    Query1.SQL.Add('INNER JOIN users u ON uu.users_master_id = u.users_id ');
    Query1.SQL.Add('WHERE uu.users_detail_id in (' + fmFilter._GetStrId + ') ');
    Query1.SQL.Add(' AND u.users_id <> ' + Query_Users.FieldByName('users_id').AsString);
    Query1.Open;

    while not Query1.Eof do begin
      SP_UsersUsersModify.Close;
      SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value := 0;
      SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value := Query1.FieldByName('users_master_id').AsInteger;
      SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value := Query1.FieldByName('users_detail_id').AsInteger;
      SP_UsersUsersModify.Parameters.ParamByName('@rights'         ).Value := Query1.FieldByName('rights').AsInteger;
      SP_UsersUsersModify.ExecProc;
      if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then
        Application.MessageBox(PChar('Ошибка - немогу добавить запись с параметрами users_master_id = ' + Query1.FieldByName('users_master_id').AsString + '; users_detail_id = ' + Query1.FieldByName('users_detail_id').AsString), 'Внимание', MB_OK);
      Query1.Next;
    end;
  end;
  Q.Free;
  RefreshQueryGrid(cxGrid3DBBandedTableView1, 'users_master_id');
  Screen.Cursor := crDefault;
      }
  var                    Q : TADOQuery;
      sp_users_rights_copy : TADOStoredProc;
begin
  try
    if Application.MessageBox(Pchar('Будет скопированны права доступа другого пользователя!' + #10 + 'Продолжить?'),'Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then Exit;

    Q := TADOQuery.Create(nil);
    Q.Connection := fmUsersRole.ADOUsersRole;
    Q.SQL.Text := 'SELECT users_id, FIO_users, users_name, users_stack_num, users_group_name FROM view_users WHERE users_id <> '
    + Query_Users.FieldByName('users_id').AsString +' ORDER BY FIO_users ';
    Q.Open;

    fmFilter := TfmFilter.Create(0, Q, 'users_id', 'FIO_users', 'users_name');
    fmFilter._SetUsersChooseCopy := True;
    if fmFilter.ShowModal = mrOk then begin
      sp_users_rights_copy := TADOStoredProc.Create(nil);
      sp_users_rights_copy.Connection := fmUsersRole.ADOUsersRole;
      sp_users_rights_copy.ProcedureName := 'sp_users_rights_copy';
      sp_users_rights_copy.Parameters.Refresh;
      sp_users_rights_copy.Parameters.ParamByName('@users_id'     ).Value := cxGrid1DBBandedTableView1users_id.DataBinding.Field.AsInteger;
      sp_users_rights_copy.Parameters.ParamByName('@users_from_id').Value := fmFilter.GetId;
      sp_users_rights_copy.Parameters.ParamByName('@type_copy'    ).Value := 2;
      try
        sp_users_rights_copy.ExecProc;
      except
      end;
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'users_id');
    end;
  finally
    Q.Free;
    sp_users_rights_copy.Free;
  end;
end;

procedure TfmUsersRole.dxBarButton13Click(Sender: TObject);
var SP_UsersUsersModify : TADOStoredProc;
begin
  if Application.MessageBox(Pchar('Будут даны права на просмотр ВСЕМ пользователям группы "' + Query_Users.FieldByName('users_group_name').AsString + '".' + #10 + 'Продолжить?'),'Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then Exit;
  Screen.Cursor := crHourglass;

  SP_UsersUsersModify := TADOStoredProc.Create(Application);
  SP_UsersUsersModify.Connection := ADOUsersRole;
  SP_UsersUsersModify.ProcedureName := 'sp_users_users_modify;1';
  SP_UsersUsersModify.Parameters.Refresh;

  SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value := 4;
  SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value := Query_Users.FieldByName('users_id').AsInteger;
  SP_UsersUsersModify.ExecProc;

  if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then begin
    Application.MessageBox(PChar('Нельзя очистить список "ЕГО видит"'), 'Внимание', MB_OK);
    exit;
  end;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT users_id as users_master_id, ' + Query_Users.FieldByName('users_id').AsString + ' as users_detail_id ');
  Query1.SQL.Add('FROM users ');
  Query1.SQL.Add('WHERE users_group_id = ' + Query_Users.FieldByName('users_group_id').AsString);
  Query1.SQL.Add(' AND users_id <> ' + Query_Users.FieldByName('users_id').AsString);
  Query1.Open;

  while not Query1.Eof do begin
    SP_UsersUsersModify.Close;
    SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value := 0;
    SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value := Query1.FieldByName('users_master_id').AsInteger;
    SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value := Query1.FieldByName('users_detail_id').AsInteger;
    SP_UsersUsersModify.Parameters.ParamByName('@rights'         ).Value := 1;
    SP_UsersUsersModify.ExecProc;
    if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then
      Application.MessageBox(PChar('Нельзя добавить запись с параметрами users_master_id = ' + Query1.FieldByName('users_master_id').AsString + '; users_detail_id = ' + Query1.FieldByName('users_detail_id').AsString), 'Внимание', MB_OK);
    Query1.Next;
  end;

  RefreshQueryGrid(cxGrid3DBBandedTableView1, 'users_master_id');
  Screen.Cursor := crDefault;

end;

procedure TfmUsersRole.dxBarButton14Click(Sender: TObject);
var users_master_id       : string;
    i                     : integer;
    SP_UsersUsersModify : TADOStoredProc;
begin
  if cxGrid3DBBandedTableView1.Controller.SelectedRecordCount > 0 then begin
    if Application.MessageBox('Удалить доступ для выбранных пользователей?','Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then Exit;
  end else exit;
  Screen.Cursor := crHourglass;
  users_master_id := '';
  for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    users_master_id := users_master_id + ', ' + IntToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1users_master_id.Index]);
  Delete(users_master_id, 1, 2);

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT users_master_id, users_detail_id FROM users_users ');
  Query1.SQL.Add('WHERE users_detail_id = ' + Query_Users.FieldByName('users_id').AsString);
  Query1.SQL.Add(' AND users_master_id in (' + users_master_id + ')');
  Query1.Open;

  SP_UsersUsersModify := TADOStoredProc.Create(Application);
  SP_UsersUsersModify.Connection := ADOUsersRole;
  SP_UsersUsersModify.ProcedureName := 'sp_users_users_modify;1';
  SP_UsersUsersModify.Parameters.Refresh;

  while not Query1.Eof do begin
    SP_UsersUsersModify.Close;
    SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value := 2;
    SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value := Query1.FieldByName('users_master_id').AsInteger;
    SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value := Query1.FieldByName('users_detail_id').AsInteger;
    SP_UsersUsersModify.ExecProc;
    if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then
      Application.MessageBox(PChar('Нельзя удалить запись с параметрами users_master_id = ' + Query1.FieldByName('users_master_id').AsString + '; users_detail_id = ' + Query1.FieldByName('users_detail_id').AsString), 'Внимание', MB_OK);
    Query1.Next;
  end;

  RefreshQueryGrid(cxGrid3DBBandedTableView1, 'users_master_id');
  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.dxBarButton15Click(Sender: TObject);
var    SP : TADOStoredProc;
        s : string;
        Q : TADOQuery;
 users_id : integer;
begin
  users_id := -9;
  Q:=TADOQuery.Create(nil);
  Q.Connection := fmUsersRole.ADOUsersRole;
  Q.SQL.Add('SELECT FIO_users, users_stack_num, users_id, users_group_name, users_name FROM view_users ORDER BY FIO_users');
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'users_id', 'users_stack_num', 'FIO_users');
  fmFilter._SetUsersStack := true;
  if fmFilter.ShowModal = mrOk then begin
    users_id := fmFilter.GetId;
  end;

  if users_id = -9 then exit;

  s := 'Вы действительно хотите копировать пользователя ' + fmFilter.GetName + ' ?';

  if Application.MessageBox(PChar(s),'Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then
    Exit;

  SP := TADOStoredProc.Create(Application);
  SP.Connection := fmUsersRole.ADOUsersRole;
  SP.ProcedureName := 'sp_users_modify;1';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@type_action'     ).Value := 3;
  SP.Parameters.ParamByName('@in_users_id'     ).Value := users_id;
  SP.Parameters.ParamByName('@users_group_id'  ).Value := Fusr_pwd.user_group_id;

  try
    SP.ExecProc;
    users_id :=  SP.Parameters.ParamByName('@out_users_id').value;
  except on E: Exception do
    Application.MessageBox(pWideChar(E.Message), 'Внимание', MB_OK + MB_ICONERROR);
  end;

  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'users_id', users_id);
end;

procedure TfmUsersRole.dxBarButton16Click(Sender: TObject);
var                     i : integer;
  SP_UsersFunctionsModify : TADOStoredProc;
                        Q : TADOQuery;
                 users_id : integer;
begin
  users_id := -9;
  Q:= TADOQuery.Create(nil);
  Q.Connection := fmUsersRole.ADOUsersRole;

  SP_UsersFunctionsModify := TADOStoredProc.Create(Application);
  SP_UsersFunctionsModify.Connection := ADOUsersRole;
  SP_UsersFunctionsModify.ProcedureName := 'sp_users_functions_modify;1';

  //Удаляем доступ к функциям который был чтобы копирование было точным
  Q.Close;
  Q.SQL.Text := 'SELECT functions_id FROM USERS_FUNCTIONS WHERE users_id = ' + Query_Users.FieldByName('users_id').AsString;
  Q.Open;
  Q.First;
  while not Q.Eof do begin
     SP_UsersFunctionsModify.Close;
     SP_UsersFunctionsModify.Parameters.Refresh;
     SP_UsersFunctionsModify.Parameters.ParamByName('@type_action'  ).Value := 2;
     SP_UsersFunctionsModify.Parameters.ParamByName('@functions_id' ).Value := Q.FieldByName('functions_id').AsInteger;
     SP_UsersFunctionsModify.Parameters.ParamByName('@users_id'     ).Value := cxGrid1DBBandedTableView1users_id.DataBinding.Field.Value;
     SP_UsersFunctionsModify.ExecProc;
     Q.Next;
  end;

  Q.Close;
  Q.SQL.Text := 'SELECT users_id, FIO_users, users_name, users_stack_num, users_group_name FROM view_users WHERE users_id <> '
  + Query_Users.FieldByName('users_id').AsString + ' ORDER BY FIO_users';
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'users_id', 'FIO_users', 'users_name');
  fmFilter._SetUsersStack := true;
  if fmFilter.ShowModal = mrOk then
    users_id := fmFilter.GetId;

  if users_id = -9 then exit;

  if Application.MessageBox(PChar('Добавить доступ к функциям как у ' + fmFilter.GetName + ' ?'),'Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then Exit;

  Screen.Cursor := crHourglass;

  SP_UsersFunctionsModify := TADOStoredProc.Create(Application);
  SP_UsersFunctionsModify.Connection := ADOUsersRole;
  SP_UsersFunctionsModify.ProcedureName := 'sp_users_functions_modify;1';


  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT functions_id FROM USERS_FUNCTIONS WHERE users_id =:users_id');
  Q.Parameters.ParamByName('users_id').Value := users_id;
  Q.Open;
  while not Q.Eof do begin
     SP_UsersFunctionsModify.Close;
     SP_UsersFunctionsModify.Parameters.Refresh;
     SP_UsersFunctionsModify.Parameters.ParamByName('@type_action').Value   := 0;
     SP_UsersFunctionsModify.Parameters.ParamByName('@functions_id').Value  := Q.FieldByName('functions_id').AsInteger;
     SP_UsersFunctionsModify.Parameters.ParamByName('@users_id').Value      := Query_Users.FieldByName('users_id').AsInteger;
     SP_UsersFunctionsModify.Parameters.ParamByName('@rights').Value        := 0;
     SP_UsersFunctionsModify.ExecProc;
     Q.Next;
  end;

  Q.Free;
  RefreshQueryGrid(cxGrid6DBBandedTableView1, 'functions_id');
  //RefreshQueryGrid(cxGrid2DBBandedTableView1, 'users_detail_id');
  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.dxBarButton10Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid4DBBandedTableView1);
end;

procedure TfmUsersRole.dxBarButton17Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid4DBBandedTableView1, 'spid');
end;

procedure TfmUsersRole.dxBarButton18Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid4DBBandedTableView1);
end;

procedure TfmUsersRole.dxBarButton21Click(Sender: TObject);
begin
  cxGrid4DBBandedTableView1.OptionsView.GroupByBox := not cxGrid4DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmUsersRole.dxBarButton19Click(Sender: TObject);
var                      i : integer;
   SP_UsersFunctionsModify : TADOStoredProc;
begin
  if cxGrid6DBBandedTableView1.Controller.SelectedRecordCount > 0 then begin
    if Application.MessageBox('Добавить доступ к выбранным функциям?','Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then Exit;
  end else exit;
  Screen.Cursor := crHourglass;

  SP_UsersFunctionsModify := TADOStoredProc.Create(Application);
  SP_UsersFunctionsModify.Connection := ADOUsersRole;
  SP_UsersFunctionsModify.ProcedureName := 'sp_users_functions_modify;1';
  SP_UsersFunctionsModify.Parameters.Refresh;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('DECLARE @functions_id int, @users_id int ');
  Query1.SQL.Add('SET @functions_id = :functions_id ');
  Query1.SQL.Add('SET @users_id = :users_id');
  Query1.SQL.Add('SELECT inf_obj_id as functions_id, @users_id AS users_id, 0 as rights FROM inf_obj ');
  Query1.SQL.Add('WHERE inf_obj_id = @functions_id ');
  Query1.SQL.Add('AND inf_obj_id NOT IN (SELECT functions_id FROM users_functions WHERE functions_id = @functions_id AND users_id = @users_id)');
  for i:=0 to cxGrid6DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    Query1.Close;
    Query1.Parameters.ParamByName('functions_id').Value := cxGrid6DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid6DBBandedTableView1functions_id.Index];
    Query1.Parameters.ParamByName('users_id').Value :=  Query_Users.FieldByName('users_id').AsInteger;
    Query1.Open;

    if Query1.RecordCount > 0 then begin
      SP_UsersFunctionsModify.Close;
      SP_UsersFunctionsModify.Parameters.ParamByName('@type_action').Value := 0;
      SP_UsersFunctionsModify.Parameters.ParamByName('@functions_id').Value  := Query1.FieldByName('functions_id').AsInteger;
      SP_UsersFunctionsModify.Parameters.ParamByName('@users_id').Value    := Query1.FieldByName('users_id').AsInteger;
      SP_UsersFunctionsModify.Parameters.ParamByName('@rights').Value := 0;
      SP_UsersFunctionsModify.ExecProc;

      if SP_UsersFunctionsModify.Parameters.ParamByName('@functions_id').Value = -9 then
        Application.MessageBox(PChar('Нельзя добавить доступ к функции - ' + string(cxGrid6DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid6DBBandedTableView1functions_name.Index])), 'Внимание', MB_OK);
    end;
  end;
  RefreshQueryGrid(cxGrid6DBBandedTableView1, 'functions_id');
  RefreshQueryGrid(cxGrid2DBBandedTableView1, 'users_detail_id');

  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.dxBarButton1Click(Sender: TObject);
begin
  if Application.MessageBox(Pchar(' ' + Query_Users.FieldByName('users_name').AsString + ' будет удален только из пользователей сервера' + #10 + 'Удалить Логин?'),'Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then
    Exit;

  Screen.Cursor := crHourglass;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('BEGIN TRANSACTION');
  Query1.SQL.Add('DELETE users_users WHERE users_master_id = ' + Query_Users.FieldByName('users_id').AsString);
  Query1.SQL.Add('DELETE users WHERE users_id = ' + Query_Users.FieldByName('users_id').AsString);
  Query1.SQL.Add('DROP USER ' + Query_Users.FieldByName('users_name').AsString);
  Query1.SQL.Add('DROP LOGIN ' + Query_Users.FieldByName('users_name').AsString);
  Query1.SQL.Add('COMMIT TRANSACTION');
  try
    Query1.ExecSQL;
  except on E: Exception do
    Application.MessageBox(PWideChar(E.Message), 'Внимание', MB_OK or MB_ICONERROR);
  end;

  Query_Users.Close;
  Query_Users.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.dxBarButton20Click(Sender: TObject);
var                     i : integer;
  SP_UsersFunctionsModify : TADOStoredProc;
begin
  if cxGrid6DBBandedTableView1.Controller.SelectedRecordCount > 0 then begin
    if Application.MessageBox('Удалить доступ к выбранным функциям?','Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then Exit;
  end else exit;

  Screen.Cursor := crHourglass;

  SP_UsersFunctionsModify := TADOStoredProc.Create(Application);
  SP_UsersFunctionsModify.Connection := ADOUsersRole;
  SP_UsersFunctionsModify.ProcedureName := 'sp_users_functions_modify;1';
  SP_UsersFunctionsModify.Parameters.Refresh;

  for i:=0 to cxGrid6DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    SP_UsersFunctionsModify.Close;
    SP_UsersFunctionsModify.Parameters.ParamByName('@type_action').Value := 2;
    SP_UsersFunctionsModify.Parameters.ParamByName('@functions_id').Value  := cxGrid6DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid6DBBandedTableView1functions_id.Index];
    SP_UsersFunctionsModify.Parameters.ParamByName('@users_id').Value    := Query_Users.FieldByName('users_id').AsInteger;
    SP_UsersFunctionsModify.ExecProc;

    if SP_UsersFunctionsModify.Parameters.ParamByName('@functions_id').Value = -9 then
      Application.MessageBox(PChar('Нельзя удалить доступ к функции - ' + string(cxGrid6DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid6DBBandedTableView1functions_name.Index])), 'Внимание', MB_OK);
  end;
  RefreshQueryGrid(cxGrid6DBBandedTableView1, 'functions_id');

  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.dxBarButton22Click(Sender: TObject);
begin
  case TdxBarManager(TdxBarButton(Sender).GetParentComponent).Tag of
    10 : cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
    11 : cxGrid2DBBandedTableView1.OptionsView.GroupByBox := not cxGrid2DBBandedTableView1.OptionsView.GroupByBox;
    12 : cxGrid3DBBandedTableView1.OptionsView.GroupByBox := not cxGrid3DBBandedTableView1.OptionsView.GroupByBox;
    15 : cxGrid6DBBandedTableView1.OptionsView.GroupByBox := not cxGrid6DBBandedTableView1.OptionsView.GroupByBox;
    16 : cxGrid7DBBandedTableView1.OptionsView.GroupByBox := not cxGrid7DBBandedTableView1.OptionsView.GroupByBox;
    17 : cxGrid5DBBandedTableView1.OptionsView.GroupByBox := not cxGrid5DBBandedTableView1.OptionsView.GroupByBox;
    18 : cxGrid8DBBandedTableView1.OptionsView.GroupByBox := not cxGrid8DBBandedTableView1.OptionsView.GroupByBox;
  end;
end;

procedure TfmUsersRole.dxBarButton23Click(Sender: TObject);

begin
  case TdxBarManager(TdxBarButton(Sender).GetParentComponent).Tag of
    10 : SetdxDBGridColumns(cxGrid1DBBandedTableView1);
    11 : SetdxDBGridColumns(cxGrid2DBBandedTableView1);
    12 : SetdxDBGridColumns(cxGrid3DBBandedTableView1);
    15 : SetdxDBGridColumns(cxGrid6DBBandedTableView1);
    16 : SetdxDBGridColumns(cxGrid7DBBandedTableView1);
    17 : SetdxDBGridColumns(cxGrid5DBBandedTableView1);
    18 : SetdxDBGridColumns(cxGrid8DBBandedTableView1);
  end;
end;

procedure TfmUsersRole.dxBarButton24Click(Sender: TObject);
begin
  case TdxBarManager(TdxBarButton(Sender).GetParentComponent).Tag of
    10 : PrintcxGrid(cxGrid1DBBandedTableView1);
    11 : PrintcxGrid(cxGrid2DBBandedTableView1);
    12 : PrintcxGrid(cxGrid3DBBandedTableView1);
    15 : PrintcxGrid(cxGrid6DBBandedTableView1);
    16 : PrintcxGrid(cxGrid7DBBandedTableView1);
    17 : PrintcxGrid(cxGrid5DBBandedTableView1);
    18 : PrintcxGrid(cxGrid8DBBandedTableView1);
  end;
end;

procedure TfmUsersRole.dxBarButton25Click(Sender: TObject);
begin
  case cxPageControl2.ActivePageIndex of
    0 : begin
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'users_id');
      case cxPageControl1.ActivePageIndex of
        0 : RefreshQueryGrid(cxGrid2DBBandedTableView1, 'users_detail_id');
        1 : RefreshQueryGrid(cxGrid3DBBandedTableView1, 'users_master_id');
        2 : RefreshQueryGrid(cxGrid6DBBandedTableView1, 'functions_id');
        3 : RefreshQueryGrid(cxGrid7DBBandedTableView1, 'module_rights_id');
      end;
    end;
    1 : begin
      RefreshQueryGrid(cxGrid5DBBandedTableView1, 'functions_id');
      RefreshQueryGrid(cxGrid8DBBandedTableView1, 'users_id');
    end;
    2 : RefreshQueryGrid(cxGrid4DBBandedTableView1, 'spid');
  end;
end;

procedure TfmUsersRole.dxBarButton26Click(Sender: TObject);
begin
  Client_UsersModuleRights.Append;
  Client_UsersModuleRights.FieldByName('users_id'                  ).AsInteger := Query_Users.FieldByName('users_id').AsInteger;
  Client_UsersModuleRights.FieldByName('component_properties_value').AsString := 'False';
  Client_UsersModuleRights.FieldByName('action').AsInteger := 0;
end;

procedure TfmUsersRole.dxBarButton27Click(Sender: TObject);
begin
  if cxGrid7DBBandedTableView1.Controller.SelectedRecordCount > 0 then begin
    if Application.MessageBox('Удалить выделенные записи?','Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then Exit;
  end else
    exit;

  Screen.Cursor := crHourglass;
  while cxGrid7DBBandedTableView1.Controller.SelectedRecordCount <> 0 do begin
    if Client_UsersModuleRights.Locate('id', cxGrid7DBBandedTableView1.Controller.SelectedRows[0].Values[cxGrid7DBBandedTableView1id.Index], [loCaseInsensitive]) then begin
      if Client_UsersModuleRights.State in [dsInsert, dsEdit] then Client_UsersModuleRights.FieldByName('action').AsInteger := 2
      else begin
        Client_UsersModuleRights.Edit;
        Client_UsersModuleRights.FieldByName('action').AsInteger := 2;
      end;
      Client_UsersModuleRights.Post;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.dxBarButton28Click(Sender: TObject);
var              Q, Q_filter : TADOQuery;
  SP_UsersModuleRightsModify : TADOStoredProc;

begin
  if Application.MessageBox(Pchar('Будет скопирован интерфейс другого пользователя!' + #10 + 'Продолжить?'),'Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then
    Exit;
  Screen.Cursor := crHourglass;

  Q_filter := TADOQuery.Create(nil);
  Q_filter.Connection := fmUsersRole.ADOUsersRole;
  Q_filter.SQL.Text := 'SELECT users_id, FIO_users, users_name, users_stack_num, users_group_name FROM view_users WHERE users_id <> '
  + Query_Users.FieldByName('users_id').AsString +' ORDER BY FIO_users ';
  Q_filter.Open;

  fmFilter := TfmFilter.Create(0, Q_filter, 'users_id', 'FIO_users', 'users_name');
  fmFilter._SetUsersStack := true;

  if (fmFilter.ShowModal = mrOk) and (fmFilter._GetStrId <> '') then begin
    SP_UsersModuleRightsModify := TADOStoredProc.Create(Application);
    SP_UsersModuleRightsModify.Connection := ADOUsersRole;
    SP_UsersModuleRightsModify.ProcedureName := 'sp_users_module_rights_modify;1';
    SP_UsersModuleRightsModify.Parameters.Refresh;

    SP_UsersModuleRightsModify.Close;
    SP_UsersModuleRightsModify.Parameters.ParamByName('@type_action').Value := 3;
    SP_UsersModuleRightsModify.Parameters.ParamByName('@users_id'   ).Value := Query_Users.FieldByName('users_id').AsInteger;
    SP_UsersModuleRightsModify.ExecProc;

    SP_UsersModuleRightsModify.Free;

    Q := TADOQuery.Create(nil);
    Q.Connection := ADOUsersRole;
    Q.SQL.Add('SELECT module_rights_id = null, users_id = ' + IntToStr(Query_Users.FieldByName('users_id').AsInteger) + ', module_name, component_name, component_properties_name, component_properties_value FROM users_module_rights WHERE users_id = ' + fmFilter._GetStrId);
    Q.Open;

    RefreshClientUsersModuleRights(Q, 0);

    Q.Free;
  end;
  Q_filter.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.dxBarButton29Click(Sender: TObject);
begin
  Query_Users.Close;
  Query_Users_Users.Close;
  Query_Open_Users.Close;
  Query_Func_Users.Close;

  Query_Users.SQL.Clear;
  Query_Users_Users.SQL.Clear;
  Query_Open_Users.SQL.Clear;
  Query_Func_Users.SQL.Clear;

  if dxBarButton29.Down then begin
    dxBarButton29.Caption := 'Показать всех пользователей';
    Query_Users.SQL.Add('SELECT v.* FROM view_users v INNER JOIN view_users_group vug ON v.users_id = vug.users_id WHERE (date_end IS NULL)');
    Query_Users_Users.SQL.Add('SELECT * FROM view_users_users WHERE users_master_id = :users_master_id AND (users_detail_date_end IS NULL)');
    Query_Open_Users.SQL.Add('SELECT * FROM view_users_users WHERE users_detail_id = :users_detail_id AND (users_master_date_end IS NULL)');
    Query_Func_Users.SQL.Add('SELECT u.users_id, u.FIO_users, CAST(case uf.rights WHEN 0 THEN 1 ELSE 0 END AS BIT) AS users_rights, u.date_end, u.users_name FROM users u');
    Query_Func_Users.SQL.Add('INNER JOIN view_users_group vug ON u.users_id = vug.users_id');
    Query_Func_Users.SQL.Add('JOIN users_functions uf ON u.users_id = uf.users_id AND functions_id = :functions_id WHERE (date_end IS NULL)');

  end else begin
    dxBarButton29.Caption := 'Показать действующих пользователей';
    Query_Users.SQL.Add('SELECT v.* FROM view_users v INNER JOIN view_users_group vug ON v.users_id = vug.users_id');
    Query_Users_Users.SQL.Add('SELECT * FROM view_users_users WHERE users_master_id = :users_master_id');
    Query_Open_Users.SQL.Add('SELECT * FROM view_users_users WHERE users_detail_id = :users_detail_id');
    Query_Func_Users.SQL.Add('SELECT u.users_id, u.FIO_users, CAST(case uf.rights WHEN 0 THEN 1 ELSE 0 END AS BIT) AS users_rights, u.date_end, u.users_name FROM users u');
    Query_Func_Users.SQL.Add('INNER JOIN view_users_group vug ON u.users_id = vug.users_id');
    Query_Func_Users.SQL.Add('JOIN users_functions uf ON u.users_id = uf.users_id AND functions_id = :functions_id');
  end;

  if cxPageControl2.ActivePageIndex = 0 then begin
    Query_Users.Open;
  end;

  if cxPageControl1.ActivePageIndex = 0 then begin
    RefreshQueryGrid(cxGrid5DBBandedTableView1, 'functions_id');
  end;

end;

procedure TfmUsersRole.dxBarButton2Click(Sender: TObject);
var SP_UsersUsersModify : TADOStoredProc;
    Q                   : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmUsersRole.ADOUsersRole;
  Q.SQL.Add('SELECT u.* FROM view_users u ');
  Q.SQL.Add(' INNER JOIN view_users_group vug ON u.users_id = vug.users_id ');
  Q.SQL.Add(' WHERE u.users_id not in (SELECT users_detail_id FROM users_users WHERE users_master_id = ' + Query_Users.FieldByName('users_id').AsString + ')');
  Q.SQL.Add('ORDER BY fio_users');
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'users_id', 'FIO_users', 'users_group_name');
  fmFilter.GetUserRole(True);
  fmFilter.ShowModal;

  if fmFilter._GetStrId <> '' then begin
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT ' + Query_Users.FieldByName('users_id').AsString + ' AS users_master_id, users_id AS users_detail_id FROM users WHERE users_id in (' + fmFilter._GetStrId + ')');
    Query1.Open;
    SP_UsersUsersModify := TADOStoredProc.Create(Application);
    SP_UsersUsersModify.Connection := ADOUsersRole;
    SP_UsersUsersModify.ProcedureName := 'sp_users_users_modify;1';
    SP_UsersUsersModify.Parameters.Refresh;
    while not Query1.Eof do begin
      SP_UsersUsersModify.Close;
      SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value      := 2;
      SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value  := Query1.FieldByName('users_master_id').AsInteger;
      SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value  := Query1.FieldByName('users_detail_id').AsInteger;
      SP_UsersUsersModify.ExecProc;
      SP_UsersUsersModify.Close;
      SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value      := 0;
      SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value  := Query1.FieldByName('users_master_id').AsInteger;
      SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value  := Query1.FieldByName('users_detail_id').AsInteger;
      SP_UsersUsersModify.Parameters.ParamByName('@rights'         ).Value  := 1;
      SP_UsersUsersModify.ExecProc;
      if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then
        Showmessage('Ошибка - не могу добавить запись с параметрами users_master_id = ' + Query1.FieldByName('users_master_id').AsString + '; users_detail_id = ' + Query1.FieldByName('users_detail_id').AsString);
      Query1.Next;
    end;
  end;
  Q.Free;
  RefreshQueryGrid(cxGrid2DBBandedTableView1, 'users_detail_id');
  Screen.Cursor := crDefault;
end;



procedure TfmUsersRole.dxBarButton3Click(Sender: TObject);
{
var SP_UsersUsersModify : TADOStoredProc;
    Q                   : TADOQuery;
begin

  if Application.MessageBox(Pchar('Все доступные пользователи удалелятся!' + #10 + 'Будет скопированны права доступа другого пользователя!' + #10 + 'Продолжить?'),'Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then Exit;
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := fmUsersRole.ADOUsersRole;
  Q.SQL.Add('SELECT * FROM view_users ');
  Q.SQL.Add('WHERE users_id <> ' + Query_Users.FieldByName('users_id').AsString);
  Q.SQL.Add('ORDER BY fio_users');
  Q.Open;

  fmFilter := TfmFilter.Create(0, Q, 'users_id', 'FIO_users', 'users_group_name');
  fmFilter.GetUserRole(False);
  fmFilter.ShowModal;

  if fmFilter._GetStrId <> '' then begin
    SP_UsersUsersModify := TADOStoredProc.Create(Application);
    SP_UsersUsersModify.Connection := ADOUsersRole;
    SP_UsersUsersModify.ProcedureName := 'sp_users_users_modify;1';
    SP_UsersUsersModify.Parameters.Refresh;

    SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value := 3;
    SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value := Query_Users.FieldByName('users_id').AsInteger;
    SP_UsersUsersModify.ExecProc;

    if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then begin
      Showmessage('Ошибка - не могу очистить список "Он видит"');
      exit;
    end;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT DISTINCT ' + Query_Users.FieldByName('users_id').AsString + ' as users_master_id, uu.users_detail_id, uu.rights ');
    Query1.SQL.Add('FROM users_users uu ');
    Query1.SQL.Add('INNER JOIN users u ON uu.users_detail_id = u.users_id ');
    Query1.SQL.Add('WHERE uu.users_master_id in (' + fmFilter._GetStrId + ') ');
    Query1.SQL.Add(' AND u.users_id <> ' + Query_Users.FieldByName('users_id').AsString);
    Query1.Open;

    Query1.First;

    while not Query1.Eof do begin
      SP_UsersUsersModify.Close;
      SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value     := 0;
      SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value := Query1.FieldByName('users_master_id').AsInteger;
      SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value := Query1.FieldByName('users_detail_id').AsInteger;
      SP_UsersUsersModify.Parameters.ParamByName('@rights'         ).Value := Query1.FieldByName('rights').AsInteger;
      SP_UsersUsersModify.ExecProc;
      if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then
        Showmessage('Ошибка - не могу добавить запись с параметрами users_master_id = ' + Query1.FieldByName('users_master_id').AsString + '; users_detail_id = ' + Query1.FieldByName('users_detail_id').AsString);
      Query1.Next;
    end;
  end;
  Q.Free;
  RefreshQueryGrid(cxGrid2DBBandedTableView1, 'users_detail_id');
  Screen.Cursor := crDefault;
  }

  var                    Q : TADOQuery;
      sp_users_rights_copy : TADOStoredProc;
begin
  try
    if Application.MessageBox(Pchar('Будет скопированны права доступа другого пользователя!' + #10 + 'Продолжить?'),'Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then Exit;

    Q := TADOQuery.Create(nil);
    Q.Connection := fmUsersRole.ADOUsersRole;
    Q.SQL.Text := 'SELECT users_id, FIO_users, users_name, users_stack_num, users_group_name FROM view_users WHERE users_id <> '
    + Query_Users.FieldByName('users_id').AsString +' ORDER BY FIO_users ';
    Q.Open;

    fmFilter := TfmFilter.Create(0, Q, 'users_id', 'FIO_users', 'users_name');
    fmFilter._SetUsersChooseCopy := True;
    if fmFilter.ShowModal = mrOk then begin
      sp_users_rights_copy := TADOStoredProc.Create(nil);
      sp_users_rights_copy.Connection := fmUsersRole.ADOUsersRole;
      sp_users_rights_copy.ProcedureName := 'sp_users_rights_copy';
      sp_users_rights_copy.Parameters.Refresh;
      sp_users_rights_copy.Parameters.ParamByName('@users_id'     ).Value := cxGrid1DBBandedTableView1users_id.DataBinding.Field.AsInteger;
      sp_users_rights_copy.Parameters.ParamByName('@users_from_id').Value := fmFilter.GetId;
      sp_users_rights_copy.Parameters.ParamByName('@type_copy'    ).Value := 1;
      sp_users_rights_copy.ExecProc;
      RefreshQueryGrid(cxGrid1DBBandedTableView1, 'users_id');
    end;
  finally
    Q.Free;
    sp_users_rights_copy.Free;
  end;
end;


procedure TfmUsersRole.dxBarButton4Click(Sender: TObject);
var users_detail_id     : string;
    i                   : integer;
    SP_UsersUsersModify : TADOStoredProc;
begin
  if cxGrid2DBBandedTableView1.Controller.SelectedRecordCount > 0 then begin
    if Application.MessageBox('Удалить доступ к выбранным пользователям?','Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then Exit;
  end else exit;
  Screen.Cursor := crHourglass;
  users_detail_id := '';
  for i:=0 to cxGrid2DBBandedTableView1.Controller.SelectedRecordCount - 1 do
    users_detail_id := users_detail_id + ', ' + IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1users_detail_id.Index]);
  Delete(users_detail_id, 1, 2);

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT users_master_id, users_detail_id FROM users_users ');
  Query1.SQL.Add('WHERE users_master_id = ' + Query_Users.FieldByName('users_id').AsString);
  Query1.SQL.Add('AND users_detail_id IN (' + users_detail_id + ')');
  Query1.Open;

  SP_UsersUsersModify := TADOStoredProc.Create(Application);
  SP_UsersUsersModify.Connection := ADOUsersRole;
  SP_UsersUsersModify.ProcedureName := 'sp_users_users_modify;1';
  SP_UsersUsersModify.Parameters.Refresh;

  while not Query1.Eof do begin
    SP_UsersUsersModify.Close;
    SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value     := 2;
    SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value := Query1.FieldByName('users_master_id').AsInteger;
    SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value := Query1.FieldByName('users_detail_id').AsInteger;
    SP_UsersUsersModify.ExecProc;
    if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then
      Application.MessageBox(PChar('Нельзя удалить запись с параметрами users_master_id = ' + Query1.FieldByName('users_master_id').AsString + '; users_detail_id = ' + Query1.FieldByName('users_detail_id').AsString), 'Внимание', MB_OK);

    Query1.Next;
  end;

  RefreshQueryGrid(cxGrid2DBBandedTableView1, 'users_detail_id');
  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.dxBarButton5Click(Sender: TObject);
begin
  fmUsersAdd := TfmUsersAdd.Create(Application, Fusr_pwd);
  if fmUsersAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'users_id', fmUsersAdd._GetUsersId);
end;

procedure TfmUsersRole.dxBarButton6Click(Sender: TObject);
begin
  fmUsersAdd := TfmUsersAdd.Create(Application, Fusr_pwd);
  fmUsersAdd._SetUpdateUser := Query_Users.FieldByName('users_id').AsInteger;
  if fmUsersAdd.ShowModal = mrOk then
    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'users_id', fmUsersAdd._GetUsersId);
end;

procedure TfmUsersRole.dxBarButton7Click(Sender: TObject);
var SP_UsersUsersModify : TADOStoredProc;
begin
  if Application.MessageBox(Pchar('1. Доступ ко всем пользователям будет закрыт!' + #10 + '2. Будут даны права на просмотр ВСЕХ пользователей группы "' + Query_Users.FieldByName('users_group_name').AsString + '".' + #10 + 'Продолжить?'),'Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then Exit;
  Screen.Cursor := crHourglass;

  SP_UsersUsersModify := TADOStoredProc.Create(Application);
  SP_UsersUsersModify.Connection := ADOUsersRole;
  SP_UsersUsersModify.ProcedureName := 'sp_users_users_modify;1';
  SP_UsersUsersModify.Parameters.Refresh;

  SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value     := 3;
  SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value := Query_Users.FieldByName('users_id').AsInteger;
  SP_UsersUsersModify.ExecProc;

  if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then begin
    Application.MessageBox(PChar('Нельзя очистить список "Он видит"'), 'Внимание', MB_OK);
    exit;
  end;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('SELECT ' + Query_Users.FieldByName('users_id').AsString + ' AS users_master_id, users_id AS users_detail_id, 1 AS rights ');
  Query1.SQL.Add('FROM users ');
  Query1.SQL.Add('WHERE users_group_id = ' + Query_Users.FieldByName('users_group_id').AsString);
  Query1.SQL.Add(' AND users_id <> ' + Query_Users.FieldByName('users_id').AsString);
  Query1.Open;

  while not Query1.Eof do begin
    SP_UsersUsersModify.Close;
    SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value     := 0;
    SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value := Query1.FieldByName('users_master_id').AsInteger;
    SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value := Query1.FieldByName('users_detail_id').AsInteger;
    SP_UsersUsersModify.Parameters.ParamByName('@rights'         ).Value := 1;
    SP_UsersUsersModify.ExecProc;
    if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then
      Showmessage('Ошибка - не могу добавить запись с параметрами users_master_id = ' + Query1.FieldByName('users_master_id').AsString + '; users_detail_id = ' + Query1.FieldByName('users_detail_id').AsString);
    Query1.Next;
  end;

  RefreshQueryGrid(cxGrid2DBBandedTableView1, 'users_detail_id');
  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.dxBarButton8Click(Sender: TObject);
var                 i : integer;
  SP_UsersUsersModify : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  case cxPageControl1.ActivePageIndex of
    // ------ он видит ---------
    0 : begin
          SP_UsersUsersModify := TADOStoredProc.Create(Application);
          SP_UsersUsersModify.Connection := ADOUsersRole;
          SP_UsersUsersModify.ProcedureName := 'sp_users_users_modify;1';
          SP_UsersUsersModify.Parameters.Refresh;
          for i:=0 to cxGrid2DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
            SP_UsersUsersModify.Close;
            SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value     := 1;
            SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1users_master_id.Index];
            SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value := cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1users_detail_id.Index];
            SP_UsersUsersModify.Parameters.ParamByName('@rights'         ).Value := TdxBarButton(Sender).Tag;
            SP_UsersUsersModify.ExecProc;
            if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then
              Application.MessageBox(PChar('Нельзя изменить состояние у записи с параметрами users_master_id = '
              + IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1users_master_id.Index])
              + '; users_detail_id = ' + IntToStr(cxGrid2DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid2DBBandedTableView1users_detail_id.Index])), 'Внимание', MB_OK);
          end;
          RefreshQueryGrid(cxGrid2DBBandedTableView1, 'users_master_id');
        end;
    // ------- его видят ---------
    1 : begin
          SP_UsersUsersModify := TADOStoredProc.Create(Application);
          SP_UsersUsersModify.Connection := ADOUsersRole;
          SP_UsersUsersModify.ProcedureName := 'sp_users_users_modify;1';
          SP_UsersUsersModify.Parameters.Refresh;
          for i:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
            SP_UsersUsersModify.Close;
            SP_UsersUsersModify.Parameters.ParamByName('@type_action').Value     := 1;
            SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1users_master_id.Index];
            SP_UsersUsersModify.Parameters.ParamByName('@users_detail_id').Value := cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1users_detail_id.Index];
            SP_UsersUsersModify.Parameters.ParamByName('@rights'         ).Value := TdxBarButton(Sender).Tag;
            SP_UsersUsersModify.ExecProc;
            if SP_UsersUsersModify.Parameters.ParamByName('@users_master_id').Value = -9 then
              Application.MessageBox(PChar('Нельзя изменить состояние у записи с параметрами users_master_id = '
              + IntToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1users_master_id.Index])
              + '; users_detail_id = ' + IntToStr(cxGrid3DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid3DBBandedTableView1users_detail_id.Index])), 'Внимание', MB_OK);
          end;
          RefreshQueryGrid(cxGrid3DBBandedTableView1, 'users_master_id');
        end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.dxBarButton_AddFuncClick(Sender: TObject);
var i : integer;
begin
  if cxGrid8DBBandedTableView1.Controller.SelectedRecordCount > 0 then begin
    if TdxBarButton(Sender).tag = 0 then begin
      if Application.MessageBox('Добавить доступ к функции для выбранных пользователей?','Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then
        Exit;
    end
    else begin
      if Application.MessageBox('Удалить доступ к функции для выбранных пользователей?','Внимание!',MB_OKCANCEL+MB_ICONWARNING) <> ID_OK then
        Exit;
    end;
  end else
    exit;

  Screen.Cursor := crHourglass;

  for i:=0 to cxGrid8DBBandedTableView1.Controller.SelectedRecordCount - 1 do begin
    SetFunctionUsers(cxGrid5DBBandedTableView1functions_id.DataBinding.Field.AsInteger,
                      StrToInt(VarToStr(cxGrid8DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid8DBBandedTableView1users_id.Index])), TdxBarButton(Sender).tag);
  end;
  RefreshQueryGrid(cxGrid8DBBandedTableView1, 'users_id');
  Screen.Cursor := crDefault;
end;

procedure TfmUsersRole.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  case TdxBarManager(TdxBarButton(Sender).GetParentComponent).Tag of
    10 : cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
    11 : cxGrid2DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
    12 : cxGrid3DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
    15 : cxGrid6DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
    16 : cxGrid7DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
    17 : cxGrid5DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
    18 : cxGrid8DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
  end;

end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmUsersRole.dxBarPopup_UserPopup(Sender: TObject);
begin
  dxBarManager1.Tag := TdxBarPopupMenu(Sender).Tag;
  case TdxBarPopupMenu(Sender).Tag of
    11 : if Query_Users_Users.RecordCount = 0 then BarButtonEnable(False)
         else BarButtonEnable(True);

    12 : if Query_open_users.RecordCount = 0 then BarButtonEnable(False)
         else BarButtonEnable(True);

    15 : if Query_Functions.RecordCount = 0 then BarButtonEnable(False)
         else BarButtonEnable(True);
  end;
end;

procedure TfmUsersRole.ADOUsersRoleExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(error.Description), 'Внимание', MB_OK);
    ShowTextMessage('', True);
  end;
end;

procedure TfmUsersRole.BarButtonEnable(flag : boolean);
begin
  dxBarButton8.Enabled  := flag;
  dxBarButton9.Enabled  := flag;
end;

procedure TfmUsersRole.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UsersModuleRightsModify;
  Client_UsersModuleRights.Free;
  StoreRegistryGrid(rgSave,'\Software\Lis1\UsersRole_Grid', cxGrid1DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\UsersRole_Grid', cxGrid2DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\UsersRole_Grid', cxGrid3DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\UsersRole_Grid', cxGrid6DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\UsersRole_Grid', cxGrid7DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\UsersRole_Grid', cxGrid5DBBandedTableView1);
  StoreRegistryGrid(rgSave,'\Software\Lis1\UsersRole_Grid', cxGrid8DBBandedTableView1);
  Action := caFree;
end;

procedure TfmUsersRole.FormDestroy(Sender: TObject);
begin
  FreeLibrary(Fhandle);
end;


function TfmUsersRole.SetFunctionUsers(function_id : integer; users_id : integer; type_action : integer) : boolean;
var  SP_UsersFunctionsModify  : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  result := False;
  SP_UsersFunctionsModify := TADOStoredProc.Create(Application);
  SP_UsersFunctionsModify.Connection := ADOUsersRole;
  SP_UsersFunctionsModify.ProcedureName := 'sp_users_functions_modify;1';
  SP_UsersFunctionsModify.Parameters.Refresh;
  SP_UsersFunctionsModify.Parameters.ParamByName('@type_action').Value := type_action;
  SP_UsersFunctionsModify.Parameters.ParamByName('@functions_id').Value  := function_id;
  SP_UsersFunctionsModify.Parameters.ParamByName('@users_id').Value    := users_id;
  SP_UsersFunctionsModify.Parameters.ParamByName('@rights').Value := 0;
  SP_UsersFunctionsModify.ExecProc;
  if SP_UsersFunctionsModify.Parameters.ParamByName('@functions_id').Value <> -9 then
    result := True;

  Screen.Cursor := crDefault;
end;



initialization
  dxInitialize;
finalization
  dxFinalize;

end.
