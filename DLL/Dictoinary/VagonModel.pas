unit VagonModel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxClasses, dxBar, ImgList,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridLevel, cxGrid, ADODB, cxPropertiesStore, cxCurrencyEdit, cxCalendar, cxCheckBox, cxColorComboBox, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxNavigator, dxSkinsdxBarPainter, System.ImageList, cxImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxSkinTheBezier, dxDateRanges, dxSkinOffice2019Colorful;

type
  TfmVagonModel = class(TForm)
    ADOModel: TADOConnection;
    Query_VagonModel: TADOQuery;
    DS_VagonModel: TDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarManager1Bar1: TdxBar;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_Bold: TcxStyle;
    cxStyle_AgreeFactInc_Between: TcxStyle;
    cxStyle_AgreeFactInc_Sum: TcxStyle;
    cxStyle_AgreeFactInc_AddProfit: TcxStyle;
    cxStyle_ClientFrahtCard_Rashod: TcxStyle;
    cxStyle_ClientFrahtCard_Profitt: TcxStyle;
    cxStyle_AgreeFact: TcxStyle;
    cxStyle_Orders_cod: TcxStyle;
    cxStyle_Bargain_Cod: TcxStyle;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cxGrid1DBBandedTableView1vagon_model_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1model_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1model_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rod_vagon_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1osob_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1osob_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1uchet_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1uchet_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1material_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1material_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1factory_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1factory_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1capacity: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tara_min: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tara_max: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1length: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1axis: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1nagruz_axis: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cross_area: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1volume: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1copper_calibration: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1truck_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gabarit_cod: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gabarit_name: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1year_build: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1year_end: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1service_life: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_after_build: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1from_depo_to_1cap: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_after_1cap: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1depo_after_cap: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cap_after_build: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1cap_after_cap: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1inventory_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1sps_type: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1probeg_after_build: TcxGridDBBandedColumn;
    cxImageList1: TcxImageList;
    cxGrid1DBBandedTableView1global_color: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1rod_vagon_name: TcxGridDBBandedColumn;
    dxBarButton_FilterRecords1: TdxBarButton;
    cxGrid1DBBandedTableView1comments: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton_FilterRecords1Click(Sender: TObject);
  private
    Fvagon_model_id : integer;
    Fmodel_cod      : string;
  public
    constructor Create(App: TApplication; flag: boolean; usr_pwd: PUser_pwd);
  published
    property _GetVagonModelId : integer read Fvagon_model_id;
    property _GetVagonModelCod : string read Fmodel_cod;
  end;

function CreateWndVagonModel(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd) : variant; export;

var
  fmVagonModel: TfmVagonModel;

implementation
   uses VagonModelAdd, Other, Raznoe;
{$R *.dfm}

function CreateWndVagonModel(AppHand: THandle; flag: boolean; usr_pwd:PUser_pwd) : variant; export;
var i : integer;
begin
   Application.Handle := AppHand;
   fmVagonModel := TfmVagonModel.Create(Application, flag, usr_pwd);
   with fmVagonModel do
    try
      if ShowModal=mrOK then result := VarArrayOf([fmVagonModel._GetVagonModelId, fmVagonModel._GetVagonModelCod])
      else result := VarArrayOf([-9, '']);
    finally
      Free;
    end;
end;

constructor TfmVagonModel.Create(App:TApplication; flag:boolean; usr_pwd:PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(App);
//  Fusr_pwd := usr_pwd;
  ADOModel.Connected := False;
  ADOModel.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  ADOModel.Connected := True;

  Query_VagonModel.Open;

  StoreRegistryGrid(rgLoad, '\Software\Lis1\VagonModel_Grids', cxGrid1DBBandedTableView1);

  SetUsersModuleRights(self, ADOModel);

  MonitorEventFormOpen('OPEN_FORM', self.Name, ADOModel, -9);
  Screen.Cursor := crDefault;
end;


procedure TfmVagonModel.cxGrid1DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index]<>NULL) then ACanvas.Brush.Color := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1global_color.Index];

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmVagonModel.cxGrid1DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Column.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfmVagonModel.cxGrid1DBBandedTableView1DataControllerFilterChanged(Sender: TObject);
begin
  DrawcxGridColumnOnFiltered(Sender);
end;

procedure TfmVagonModel.cxGrid1DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmVagonModel.cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
begin
  FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmVagonModel.dxBarButton10Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmVagonModel.dxBarButton1Click(Sender: TObject);
begin
  fmVagonModelAdd := TfmVagonModelAdd.Create(Application);
  if fmVagonModelAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_model_id', fmVagonModelAdd._GetVagonModelId);
end;

procedure TfmVagonModel.dxBarButton2Click(Sender: TObject);
begin
  fmVagonModelAdd := TfmVagonModelAdd.Create(Application);
  fmVagonModelAdd._SetUpdate := cxGrid1DBBandedTableView1vagon_model_id.DataBinding.Field.AsInteger;
  if fmVagonModelAdd.ShowModal = mrOk then RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_model_id', fmVagonModelAdd._GetVagonModelId);
end;

procedure TfmVagonModel.dxBarButton5Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_model_id');
end;

procedure TfmVagonModel.dxBarButton6Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmVagonModel.dxBarButton7Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : begin
        SetRecordColor('vagon_model_id', cxGrid1DBBandedTableView1, 'VAGON_MODEL', TComponent(Sender).Tag = 1);
        RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_model_id', cxGrid1DBBandedTableView1vagon_model_id.DataBinding.Field.AsInteger);
        end;
  end;
end;

procedure TfmVagonModel.dxBarButton8Click(Sender: TObject);
begin
  case TdxBarButton(Sender).ClickItemLink.Owner.Owner.Tag of
    0 : begin
        SetRecordColor('vagon_model_id', cxGrid1DBBandedTableView1, 'VAGON_MODEL', TComponent(Sender).Tag = 1);
        RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_model_id', cxGrid1DBBandedTableView1vagon_model_id.DataBinding.Field.AsInteger);
        end;
  end;
end;

procedure TfmVagonModel.dxBarButton9Click(Sender: TObject);
begin
  SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

{$REGION 'Фильтр по всем записям'}
procedure TfmVagonModel.dxBarButton_FilterRecords1Click(Sender: TObject);
begin
  cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton_FilterRecords1.Down;
end;
{$ENDREGION 'Фильтр по всем записям'}

procedure TfmVagonModel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  StoreRegistryGrid(rgSave, '\Software\Lis1\VagonModel_Grids', cxGrid1DBBandedTableView1);
  Action := caFree;
end;

procedure TfmVagonModel.dxBarButton3Click(Sender: TObject);
var i : integer;
   SP : TADOStoredProc;
begin
  if Application.MessageBox('Вы точно уверены, что хотите удалить?', 'Внимание', MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := crHourglass;

    SP := TADOStoredProc.Create(nil);
    SP.Connection := ADOModel;
    SP.ProcedureName := 'sp_vagon_model_modify;1';
    SP.Parameters.Refresh;
    for i := 0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      SP.Close;
      SP.Parameters.Refresh;
      SP.Parameters.ParamByName('@type_action').Value := 2;
      SP.Parameters.ParamByName('@vagon_model_id').Value := cxGrid1DBBandedTableView1.Controller.SelectedRows[i].Values[cxGrid1DBBandedTableView1vagon_model_id.Index];
      try
        SP.ExecProc;
      except
      end;
      ShowTextMessage('Осталось ' + IntToStr(cxGrid1DBBandedTableView1.Controller.SelectedRowCount - i) + ' записей...', False);
    end;
    ShowTextMessage;

    RefreshQueryGrid(cxGrid1DBBandedTableView1, 'vagon_model_id');
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmVagonModel.dxBarButton4Click(Sender: TObject);
begin
  Fvagon_model_id := cxGrid1DBBandedTableView1vagon_model_id.DataBinding.Field.AsInteger;
  Fmodel_cod := cxGrid1DBBandedTableView1model_cod.DataBinding.Field.AsString;
  ModalResult := mrOk;
end;

end.
