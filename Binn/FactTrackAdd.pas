unit FactTrackAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, DB, ADODB, DateUtils, ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxPropertiesStore, cxButtonEdit, cxSpinEdit, cxTimeEdit, cxCurrencyEdit, cxGroupBox, cxClasses, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinTheBezier, cxButtons, dxSkinOffice2019Colorful, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView, cxGrid,
  dxBarBuiltInMenu, cxLabel, cxPC, dxCore, cxDateUtils, dxScrollbarAnnotations, dxSkinWXI, dxBar, System.ImageList, Vcl.ImgList, cxImageList;

type
  TfmFactTrackAdd = class(TForm)
    Panel2: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    Query1: TADOQuery;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    cxTextEdit_num_vagon: TcxTextEdit;
    Label3: TLabel;
    cxTextEdit2: TcxTextEdit;
    Label5: TLabel;
    cxTextEdit1: TcxTextEdit;
    Label6: TLabel;
    cxTextEdit3: TcxTextEdit;
    Splitter2: TSplitter;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    Panel7: TPanel;
    SP_RemontDict: TADOStoredProc;
    DS_RemontDict: TDataSource;
    cxPageControl2: TcxPageControl;
    cxTabSheet2612: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid3DBBandedTableView1remont_dict_id: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1remont_dict_sort: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1remont_dict_name: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1remont_dict_val: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1remont_dict_val2: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1remont_dict_cod: TcxGridDBBandedColumn;
    cxGrid3Level1: TcxGridLevel;
    cxTabSheet2651: TcxTabSheet;
    cxTabSheet2730: TcxTabSheet;
    cxTabSheet2731: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1NOM_TELEGA: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1type_det_name: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1DATE_VVOD: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1KOD_GOS_DET: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1DEPO_CREATER_KOD: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1NOM_DET: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1YEAR_CREATE: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1DEPO_OSVID_KOD: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1DATE_OSVID: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Column9: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1LKOL_OBOD_WIDTH: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1RKOL_OBOD_WIDTH: TcxGridDBBandedColumn;
    cxGrid4Level1: TcxGridLevel;
    Panel1: TPanel;
    cxGroupBox2: TcxGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxGroupBox5: TcxGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label27: TLabel;
    cxTextEdit11: TcxTextEdit;
    cxTextEdit12: TcxTextEdit;
    cxTextEdit13: TcxTextEdit;
    cxTextEdit14: TcxTextEdit;
    cxTextEdit15: TcxTextEdit;
    cxTextEdit28: TcxTextEdit;
    cxTextEdit16: TcxTextEdit;
    cxGroupBox6: TcxGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cxGroupBox8: TcxGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    cxTextEdit25: TcxTextEdit;
    cxTextEdit26: TcxTextEdit;
    cxTextEdit27: TcxTextEdit;
    cxTextEdit21: TcxTextEdit;
    cxTextEdit22: TcxTextEdit;
    cxTextEdit23: TcxTextEdit;
    cxTextEdit24: TcxTextEdit;
    Label16: TLabel;
    Label17: TLabel;
    cxTextEdit17: TcxTextEdit;
    cxTabSheet1: TcxTabSheet;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle_WhiteColor: TcxStyle;
    cxDateEdit1: TcxDateEdit;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    cxImageList1: TcxImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxPageControl2Change(Sender: TObject);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid3DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid3DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure dxBarButton1Click(Sender: TObject);
  private
    Fnum_vagon : integer;
    Fconnect : TADOConnection;
    Fdate_query : TDateTime;    //дата запроса справки

    procedure SetUpdate(num_SPRV: integer);
    procedure SetNumVagon(num_vagon: integer);
    procedure SetDateQuery(date_query: TDateTime);
  public
    constructor Create(AOwner: TApplication; str_connect: string);
  published
    property _SetNumVagon : integer write SetNumVagon;
    property _SetDateQuery : TDateTime write SetDateQuery;

    property _SetUpdate : integer write SetUpdate;
  end;

var
  fmFactTrackAdd: TfmFactTrackAdd;

implementation
   uses Filter, Raznoe;
{$R *.dfm}

{ TfmFactTrackAdd }

constructor TfmFactTrackAdd.Create(AOwner: TApplication; str_connect: string);
begin
  inherited Create(AOwner);

  Fconnect := TADOConnection.Create(nil);
  Fconnect.ConnectionString := str_connect;
  Fconnect.KeepConnection   := False;
  Fconnect.LoginPrompt      := False;

  SP_RemontDict.Connection := Fconnect;

end;

procedure TfmFactTrackAdd.SetUpdate(num_SPRV: integer);
var      Q : TADOQuery;
  vagon_id : integer;
         i : integer;
begin
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  case num_SPRV of
    // дислокация и все справки
    0 : begin
          Q.SQL.Add('SELECT * FROM fact_track_stat WHERE num_vagon = ' + IntToStr(Fnum_vagon));
          Q.Open;
          vagon_id   := Q.FieldByName('vagon_id').AsInteger;

          // ---- тех.состояние вагона и все остальные справки
          cxPageControl2.OnChange := nil;
          for i:=0 to cxPageControl2.PageCount - 1 do begin
            if cxPageControl2.Pages[i].Tag = 4659 then
              cxPageControl2.ActivePageIndex := cxPageControl2.Pages[i].PageIndex;
          end;
          cxPageControl2.OnChange := cxPageControl2Change;
          cxPageControl2Change(cxPageControl2);

          cxGroupBox1.Caption := 'Информация о вагоне на ' + DateToStr(Fdate_query);
          cxTextEdit_num_vagon.EditValue := Fnum_vagon;
          cxTextEdit21.EditValue    := Q.FieldByName('node_begin_name').Value;
          cxTextEdit22.EditValue    := Q.FieldByName('node_operation_name').Value;
          cxTextEdit23.EditValue    := Q.FieldByName('node_end_name').Value;
          cxTextEdit24.EditValue    := Q.FieldByName('kargoETSNG_name').Value;
          cxDateEdit1.EditValue     := Q.FieldByName('date_operation').Value;
          cxTextEdit4.EditValue     := FormatDateTime('dd.mm.yyyy', Q.FieldByName('date_build').Value);
          cxTextEdit5.EditValue     := Q.FieldByName('factory_name').Value;
          cxTextEdit17.EditValue    := Q.FieldByName('count_stay0').Value;
          cxTextEdit9.EditValue     := Q.FieldByName('OwnerOkpoName').Value;
          cxTextEdit10.EditValue    := Q.FieldByName('ArendOkpoName').Value;
          cxTextEdit15.EditValue    := FormatFloat('# ##0', Q.FieldByName('milage_passed').AsInteger);
          cxTextEdit28.EditValue    := FormatFloat('# ##0', Q.FieldByName('milage_rest').AsInteger);


          if Q.FieldByName('fact_weight').Value > 0 then
            cxTextEdit11.EditValue := 'Груженый'
          else
            cxTextEdit11.EditValue := 'Порожний';

          cxTextEdit12.EditValue := Q.FieldByName('type_park_vagon_name').Value;

          if Q.FieldByName('type_park_vagon').Value = 0 then begin
            cxTextEdit12.Style.TextColor := clRed;
            Q.Close;
            Q.SQL.Clear;
            Q.SQL.Add('SELECT TOP 1 date_breakage, breakage_name, station_detaching_name FROM view_fact_tech WHERE num_vagon = :num_vagon AND file_load_date <= :date_qyery ORDER BY file_load_date desc');
            Q.Parameters.ParamByName('num_vagon').Value := Fnum_vagon;
            Q.Parameters.ParamByName('date_qyery').Value := Fdate_query;
            Q.Open;

            cxTextEdit25.EditValue := Q.FieldByName('breakage_name').Value;
            cxTextEdit26.EditValue := Q.FieldByName('date_breakage').Value;
            cxTextEdit27.EditValue := Q.FieldByName('station_detaching_name').Value;
          end;

          //Справочник вагонов
          Q.Close;
          Q.SQL.Clear;
          Q.SQL.Add('SELECT model_name, rod_vagon_name,factory_name,capacity ,dbo.func_GetVagonArenda(vagon_id,:date_qyery) as arenda_firm_name FROM view_vagon WHERE vagon_id = :vagon_id');
          Q.Parameters.ParamByName('vagon_id').Value := vagon_id;
          Q.Parameters.ParamByName('date_qyery').Value := Fdate_query;
          Q.Open;

          cxTextEdit5.EditValue := Q.FieldByName('factory_name').AsString;
        //  cxTextEdit10.EditValue := Q.FieldByName('arenda_firm_name').AsString;
          cxTextEdit2.EditValue := Q.FieldByName('rod_vagon_name').AsString;
          cxTextEdit1.EditValue := Q.FieldByName('model_name').AsString;
          cxTextEdit3.EditValue := Q.FieldByName('capacity').AsString;
      end;


      // справка тех.состояние вагона
    4659 : begin
          cxPageControl2.OnChange := nil;
          for i:=0 to cxPageControl2.PageCount - 1 do begin
            if cxPageControl2.Pages[i].Tag = num_SPRV then
              cxPageControl2.ActivePageIndex := cxPageControl2.Pages[i].PageIndex
            else
              cxPageControl2.Pages[i].TabVisible := False;
          end;

          cxPageControl2.OnChange := cxPageControl2Change;
          cxPageControl2Change(cxPageControl2);

          cxTextEdit_num_vagon.EditValue := Fnum_vagon;

          Panel1.Visible := False;
          Splitter2.Visible := False;
      end;


  end;

  Q.Free;

//  MonitorEventFormOpen('UPDATE_FORM', self.Name, Fconnect, fact_track_id);
  Screen.Cursor := crDefault;
end;


procedure TfmFactTrackAdd.SetNumVagon(num_vagon: integer);
begin
  Fnum_vagon := num_vagon;
end;

procedure TfmFactTrackAdd.SetDateQuery(date_query: TDateTime);
begin
  Fdate_query := date_query;
end;

procedure TfmFactTrackAdd.cxGrid3DBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[cxGrid3DBBandedTableView1remont_dict_cod.Index] = 'title') then begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Brush.Color := clBtnFace;
  end;

  if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
    ACanvas.Brush.Color := clNavy;
    ACanvas.Font.Color := clWhite;
    if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
  end;
end;

procedure TfmFactTrackAdd.cxGrid3DBBandedTableView1CustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  DrawcxGridColumnOnFocused(Sender, ACanvas, AViewInfo);
end;

procedure TfmFactTrackAdd.cxGrid3DBBandedTableView1FocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  Sender.Painter.Invalidate;
end;

procedure TfmFactTrackAdd.cxPageControl2Change(Sender: TObject);
begin
  if cxPageControl2.ActivePage.Tag = 2730 then
    cxGrid3DBBandedTableView1remont_dict_val2.Visible := True
  else
    cxGrid3DBBandedTableView1remont_dict_val2.Visible := False;

  SP_RemontDict.Close;
  if (cxPageControl2.ActivePage.Tag  <> 2731) then begin
    SP_RemontDict.Parameters.ParamByName('@remont_dict_type').Value := cxPageControl2.ActivePage.Tag;
    SP_RemontDict.Parameters.ParamByName('@num_vagon'       ).Value := Fnum_vagon;
    SP_RemontDict.Open;
    cxGrid3.Parent := cxPageControl2.ActivePage;
  end;


end;

procedure TfmFactTrackAdd.dxBarButton1Click(Sender: TObject);
begin
  PrintcxGrid(cxGrid3DBBandedTableView1);
end;

procedure TfmFactTrackAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
