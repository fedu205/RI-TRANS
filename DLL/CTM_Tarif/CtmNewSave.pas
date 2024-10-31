unit CtmNewSave;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Default, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCalendar, dxBar, ADODB, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls,
  Buttons, ExtCtrls, cxPropertiesStore, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter,
  ImgList, Other, System.ImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList, dxSkinTheBezier, dxDateRanges;

type
  TfmCtmNewSave = class(TForm)
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    CTM_Save: TADOQuery;
    DS_CTM_Save: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    cxGridDBBandedTableView1ctm_save_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ctm_save_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ctm_save_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1kargoETSNG_cod: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1users_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1calc_date: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1node_begin_name: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1node_end_name: TcxGridDBBandedColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarButton4: TdxBarButton;
    cxImageList1: TcxImageList;
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn_OkClick(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
  private
    Fusr_pwd     : PUser_pwd;
    Fctm_save_id : integer;
    Fctm_save_name : string;
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd); reintroduce;
  published
    property _GetCTMSaveId   : integer read Fctm_save_id;
    property _GetCTMSaveName : string read Fctm_save_name;
  end;

var
  fmCtmNewSave: TfmCtmNewSave;

implementation

uses CtmNewMain, CtmRaznoe;

{$R *.dfm}

constructor TfmCtmNewSave.Create(AOwner: TApplication; usr_pwd: PUser_pwd);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Fusr_pwd := usr_pwd;
  Fctm_save_id := -9;
  Fctm_save_name := '';


  CTM_Save.Parameters.ParamByName('users_id').Value := Fusr_pwd.users_id;
  CTM_Save.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmCtmNewSave.cxGridDBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmCtmNewSave.dxBarButton1Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmCtmNewSave.dxBarButton2Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmCtmNewSave.dxBarButton3Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.OptionsView.GroupByBox := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmCtmNewSave.dxBarButton4Click(Sender: TObject);
var                    i : integer;
  sp_CTM_NEW_SAVE_modify : TADOStoredProc;
begin
  if Application.MessageBox(PChar('Вы точно уверены, что хотите удалить выделенные записи?'),'Внимание',MB_OKCANCEL) = ID_OK then begin
    Screen.Cursor := -11;

    sp_CTM_NEW_SAVE_modify := TADOStoredProc.Create(nil);
    sp_CTM_NEW_SAVE_modify.Connection := fmCtmNewMain.CTMConnect;
    sp_CTM_NEW_SAVE_modify.ProcedureName := 'sp_CTM_NEW_SAVE_modify';

    for i := 0 to cxGridDBBandedTableView1.Controller.SelectedRowCount - 1 do begin
      sp_CTM_NEW_SAVE_modify.Close;
      sp_CTM_NEW_SAVE_modify.Parameters.Refresh;
      sp_CTM_NEW_SAVE_modify.Parameters.ParamByName('@ctm_save_id' ).Value := cxGridDBBandedTableView1.Controller.SelectedRows[i].Values[cxGridDBBandedTableView1ctm_save_id.Index];
      sp_CTM_NEW_SAVE_modify.Parameters.ParamByName('@type_action').Value := 2;
      try
        sp_CTM_NEW_SAVE_modify.ExecProc;
        ShowTextMessage('Осталось '+IntToStr(cxGridDBBandedTableView1.Controller.SelectedRowCount - i)+' записей...', False);
      except
      end;
    end;

    sp_CTM_NEW_SAVE_modify.Free;
    RefreshQueryGrid(cxGridDBBandedTableView1, 'ctm_save_id');
    ShowTextMessage;
  end;
end;

procedure TfmCtmNewSave.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCtmNewSave.BitBtn_OkClick(Sender: TObject);
begin
  ModalResult := mrOk;
  if cxGridDBBandedTableView1ctm_save_id.DataBinding.Field <> nil then begin
    Fctm_save_id   := cxGridDBBandedTableView1ctm_save_id.DataBinding.Field.AsInteger;
    Fctm_save_name := cxGridDBBandedTableView1ctm_save_name.DataBinding.Field.AsString;
  end;
end;


end.
