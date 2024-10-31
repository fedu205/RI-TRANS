unit VagonModelAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxPropertiesStore, DB, ADODB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxMemo, cxCurrencyEdit, cxTextEdit, cxCheckBox, cxClasses,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBEdit, Menus, cxButtons, cxDBLookupComboBox;

type
  TfmVagonModelAdd = class(TForm)
    Panel2: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label5: TLabel;
    cxCurrencyEdit3: TcxCurrencyEdit;
    Label6: TLabel;
    cxCurrencyEdit4: TcxCurrencyEdit;
    Label7: TLabel;
    Label8: TLabel;
    cxCurrencyEdit5: TcxCurrencyEdit;
    Label9: TLabel;
    cxCurrencyEdit6: TcxCurrencyEdit;
    Label10: TLabel;
    cxCurrencyEdit7: TcxCurrencyEdit;
    Label11: TLabel;
    cxCurrencyEdit8: TcxCurrencyEdit;
    Label12: TLabel;
    cxCurrencyEdit9: TcxCurrencyEdit;
    cxCurrencyEdit10: TcxCurrencyEdit;
    Label13: TLabel;
    cxCurrencyEdit11: TcxCurrencyEdit;
    Label14: TLabel;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    Label1: TLabel;
    Label15: TLabel;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    Label16: TLabel;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    Label17: TLabel;
    cxCurrencyEdit12: TcxCurrencyEdit;
    Label18: TLabel;
    cxCurrencyEdit13: TcxCurrencyEdit;
    cxCheckBox1: TcxCheckBox;
    Label19: TLabel;
    cxTextEdit11: TcxTextEdit;
    cxTextEdit12: TcxTextEdit;
    Label20: TLabel;
    cxCurrencyEdit14: TcxCurrencyEdit;
    cxCurrencyEdit15: TcxCurrencyEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    cxCurrencyEdit16: TcxCurrencyEdit;
    cxCurrencyEdit17: TcxCurrencyEdit;
    cxCurrencyEdit18: TcxCurrencyEdit;
    Label21: TLabel;
    Label26: TLabel;
    cxTextEdit13: TcxTextEdit;
    cxTextEdit14: TcxTextEdit;
    cxTextEdit15: TcxTextEdit;
    cxTextEdit16: TcxTextEdit;
    Label27: TLabel;
    cxTextEdit17: TcxTextEdit;
    cxTextEdit18: TcxTextEdit;
    Label28: TLabel;
    Query_RodVagon: TADOQuery;
    DS_Query_RodVagon: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    cxTextEdit19: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Fvagon_model_id : integer;
    Ftype_action    : integer;
    procedure SetUpdate(vagon_model_id: integer);
  public
    constructor Create(Aowner: TApplication);
  published
    property _GetVagonModelId : integer read Fvagon_model_id;
    property _SetUpdate : integer write SetUpdate;
  end;

var
  fmVagonModelAdd: TfmVagonModelAdd;

implementation
  uses VagonModel, Raznoe;
{$R *.dfm}

constructor TfmVagonModelAdd.Create(Aowner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(Aowner);
  Ftype_action := 0;
  Fvagon_model_id := -9;

  Query_RodVagon.Open;

  SetUsersModuleRights(self, fmVagonModel.ADOModel);
  MonitorEventFormOpen('OPEN_FORM', self.Name, fmVagonModel.ADOModel, -9);

  Screen.Cursor := crDefault;
end;

procedure TfmVagonModelAdd.cxButton1Click(Sender: TObject);
var SP : TADOStoredProc;
begin
  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := fmVagonModel.ADOModel;
  SP.ProcedureName := 'sp_vagon_model_modify;1';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@vagon_model_id'       ).Value := Fvagon_model_id;
  SP.Parameters.ParamByName('@type_action'          ).Value := Ftype_action;
  SP.Parameters.ParamByName('@model_cod'            ).Value := cxTextEdit1.EditValue;
  SP.Parameters.ParamByName('@model_name'           ).Value := cxTextEdit2.EditValue;

  SP.Parameters.ParamByName('@rod_vagon_cod'        ).Value := cxTextEdit19.EditValue;
  SP.Parameters.ParamByName('@rod_vagon_name'       ).Value := cxLookupComboBox1.Text;
  SP.Parameters.ParamByName('@rod_vagon_id'         ).Value := cxLookupComboBox1.EditValue;

  SP.Parameters.ParamByName('@osob_cod'             ).Value := cxTextEdit5.EditValue;
  SP.Parameters.ParamByName('@osob_name'            ).Value := cxTextEdit6.EditValue;
  SP.Parameters.ParamByName('@uchet_cod'            ).Value := cxTextEdit4.EditValue;
  SP.Parameters.ParamByName('@uchet_name'           ).Value := cxTextEdit3.EditValue;
  SP.Parameters.ParamByName('@material_cod'         ).Value := cxTextEdit7.EditValue;
  SP.Parameters.ParamByName('@material_name'        ).Value := cxTextEdit8.EditValue;
  SP.Parameters.ParamByName('@factory_cod'          ).Value := cxTextEdit9.EditValue;
  SP.Parameters.ParamByName('@factory_name'         ).Value := cxTextEdit10.EditValue;
  SP.Parameters.ParamByName('@capacity'             ).Value := cxCurrencyEdit1.EditValue;
  SP.Parameters.ParamByName('@tara_min'             ).Value := cxCurrencyEdit4.EditValue;
  SP.Parameters.ParamByName('@tara_max'             ).Value := cxCurrencyEdit5.EditValue;
  SP.Parameters.ParamByName('@length'               ).Value := cxCurrencyEdit2.EditValue;
  SP.Parameters.ParamByName('@axis'                 ).Value := cxCurrencyEdit3.EditValue;
  SP.Parameters.ParamByName('@nagruz_axis'          ).Value := cxCurrencyEdit12.EditValue;
  SP.Parameters.ParamByName('@cross_area'           ).Value := cxCheckBox1.EditValue;
  SP.Parameters.ParamByName('@volume'               ).Value := cxCurrencyEdit6.EditValue;
  SP.Parameters.ParamByName('@copper_calibration'   ).Value := cxCurrencyEdit13.EditValue;
  SP.Parameters.ParamByName('@truck_cod'            ).Value := cxTextEdit11.EditValue;
  SP.Parameters.ParamByName('@truck_name'           ).Value := cxTextEdit12.EditValue;
  SP.Parameters.ParamByName('@gabarit_cod'          ).Value := cxTextEdit17.EditValue;
  SP.Parameters.ParamByName('@gabarit_name'         ).Value := cxTextEdit18.EditValue;
  SP.Parameters.ParamByName('@year_build'           ).Value := cxCurrencyEdit7.EditValue;
  SP.Parameters.ParamByName('@year_end'             ).Value := cxCurrencyEdit8.EditValue;
  SP.Parameters.ParamByName('@service_life'         ).Value := cxCurrencyEdit9.EditValue;
  SP.Parameters.ParamByName('@depo_after_build'     ).Value := cxCurrencyEdit17.EditValue;
  SP.Parameters.ParamByName('@from_depo_to_1cap'    ).Value := cxCurrencyEdit10.EditValue;
  SP.Parameters.ParamByName('@depo_after_1cap'      ).Value := cxCurrencyEdit16.EditValue;
  SP.Parameters.ParamByName('@depo_after_cap'       ).Value := cxCurrencyEdit15.EditValue;
  SP.Parameters.ParamByName('@cap_after_build'      ).Value := cxCurrencyEdit18.EditValue;
  SP.Parameters.ParamByName('@cap_after_cap'        ).Value := cxCurrencyEdit11.EditValue;
  SP.Parameters.ParamByName('@inventory_type'       ).Value := cxTextEdit13.EditValue;
  SP.Parameters.ParamByName('@sps_type'             ).Value := cxTextEdit14.EditValue;
  SP.Parameters.ParamByName('@probeg_after_build'   ).Value := cxCurrencyEdit14.EditValue;
  SP.Parameters.ParamByName('@comments'             ).Value := cxMemo1.EditValue;

  try
    SP.ExecProc;
  except
    Screen.Cursor := crDefault;
  end;

  SP.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmVagonModelAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  if Query_RodVagon.Locate('rod_vagon_id', cxLookupComboBox1.EditValue, []) then
    cxTextEdit19.EditValue := Query_RodVagon.FieldByName('rod_vagon_cod').Value;
end;

procedure TfmVagonModelAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmVagonModelAdd.SetUpdate(vagon_model_id: integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Ftype_action := 1;
  Fvagon_model_id := vagon_model_id;
  Q := TADOQuery.Create(nil);
  Q.Connection := fmVagonModel.ADOModel;
  Q.SQL.Add('SELECT * FROM vagon_model WHERE vagon_model_id=' + IntToStr(Fvagon_model_id));
  Q.Open;

  cxTextEdit1.EditValue      := Q.FieldByName('model_cod').Value;
  cxTextEdit2.EditValue      := Q.FieldByName('model_name').Value;
  cxTextEdit3.EditValue      := Q.FieldByName('uchet_name').Value;
  cxTextEdit4.EditValue      := Q.FieldByName('uchet_cod').Value;
  cxTextEdit5.EditValue      := Q.FieldByName('osob_cod').Value;
  cxTextEdit6.EditValue      := Q.FieldByName('osob_name').Value;
  cxTextEdit7.EditValue      := Q.FieldByName('material_cod').Value;
  cxTextEdit8.EditValue      := Q.FieldByName('material_name').Value;
  cxTextEdit9.EditValue      := Q.FieldByName('factory_cod').Value;
  cxTextEdit10.EditValue     := Q.FieldByName('factory_name').Value;
  cxTextEdit11.EditValue     := Q.FieldByName('truck_cod').Value;
  cxTextEdit12.EditValue     := Q.FieldByName('truck_name').Value;
  cxTextEdit13.EditValue     := Q.FieldByName('inventory_type').Value;
  cxTextEdit14.EditValue     := Q.FieldByName('sps_type').Value;
  cxTextEdit17.EditValue     := Q.FieldByName('gabarit_cod').Value;
  cxTextEdit18.EditValue     := Q.FieldByName('gabarit_name').Value;
  cxLookupComboBox1.EditValue:= Q.FieldByName('rod_vagon_id').Value;

  cxCurrencyEdit1.EditValue  := Q.FieldByName('capacity').Value;
  cxCurrencyEdit2.EditValue  := Q.FieldByName('length').Value;
  cxCurrencyEdit3.EditValue  := Q.FieldByName('axis').Value;
  cxCurrencyEdit4.EditValue  := Q.FieldByName('tara_min').Value;
  cxCurrencyEdit5.EditValue  := Q.FieldByName('tara_max').Value;
  cxCurrencyEdit6.EditValue  := Q.FieldByName('volume').Value;

  cxCurrencyEdit12.EditValue := Q.FieldByName('nagruz_axis').Value;
  cxCurrencyEdit13.EditValue := Q.FieldByName('copper_calibration').Value;
  cxCheckBox1.EditValue      := Q.FieldByName('cross_area').Value;

  cxCurrencyEdit7.EditValue  := Q.FieldByName('year_build').Value;
  cxCurrencyEdit9.EditValue  := Q.FieldByName('service_life').Value;
  cxCurrencyEdit10.EditValue := Q.FieldByName('from_depo_to_1cap').Value;
  cxCurrencyEdit16.EditValue := Q.FieldByName('depo_after_1cap').Value;
  cxCurrencyEdit17.EditValue := Q.FieldByName('depo_after_build').Value;

  cxCurrencyEdit8.EditValue  := Q.FieldByName('year_end').Value;
  cxCurrencyEdit14.EditValue := Q.FieldByName('probeg_after_build').Value;
  cxCurrencyEdit15.EditValue := Q.FieldByName('depo_after_cap').Value;
  cxCurrencyEdit11.EditValue := Q.FieldByName('cap_after_cap').Value;
  cxCurrencyEdit18.EditValue := Q.FieldByName('cap_after_build').Value;
  cxMemo1.EditValue          := Q.FieldByName('comments').Value;

  Caption := Caption + ' [' + IntToStr(vagon_model_id) + ']';

  Q.Free;
  MonitorEventFormOpen('UPDATE_FORM', self.Name, fmVagonModel.ADOModel, Fvagon_model_id);

  Screen.Cursor := crDefault;
end;


end.
