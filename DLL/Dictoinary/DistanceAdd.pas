unit DistanceAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, StdCtrls, ExtCtrls, Data.Win.ADODB,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxClasses, cxPropertiesStore, cxCurrencyEdit, cxButtons, Menus, dxCoreGraphics;

type
  TfmDistanceAdd = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxPropertiesStore1: TcxPropertiesStore;
    Label1: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label2: TLabel;
    cxCurrencyEdit3: TcxCurrencyEdit;
    Label3: TLabel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    Ftype_action    : integer;
    Fconnect : TADOConnection;

    procedure SetUpdate(inf_obj_id : integer);
  public
    constructor Create(AOwner: TApplication; type_action: integer; conn: TADOConnection);
  published
    property _SetUpdate : integer write SetUpdate;
  end;

var
  fmDistanceAdd: TfmDistanceAdd;

implementation
  uses Raznoe, Filter;

{$R *.dfm}

constructor TfmDistanceAdd.Create(AOwner: TApplication; type_action: integer; conn: TADOConnection);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Ftype_action  := type_action;
  Fconnect := conn;

  Caption := 'Добавить расчет расстояния';

  Screen.Cursor := crDefault;
end;

procedure TfmDistanceAdd.SetUpdate(inf_obj_id : integer);
var Q : TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Text := 'SELECT * FROM inf_obj_distance WHERE inf_obj_id = ' + IntToStr(inf_obj_id);
  Q.Open;

  cxButtonEdit1.EditValue   := Q.FieldByName('node1_name').Value;
  cxButtonEdit2.EditValue   := Q.FieldByName('node1_cod' ).Value;

  cxButtonEdit3.EditValue   := Q.FieldByName('node2_name').Value;
  cxButtonEdit4.EditValue   := Q.FieldByName('node2_cod' ).Value;

  cxCurrencyEdit1.EditValue := Q.FieldByName('distance').Value;
  cxCurrencyEdit2.EditValue := Q.FieldByName('days_way').Value;
  cxCurrencyEdit3.EditValue := Q.FieldByName('speed').Value;

  Q.Free;

  Screen.Cursor := crDefault;
end;


procedure TfmDistanceAdd.cxButton1Click(Sender: TObject);
var                Err_param : string;
                  set_recalc : boolean;
  SP_inf_obj_distance_modify : TADOStoredProc;
begin
  Err_param := ''; set_recalc := False;
  //проверка заполнения полей поиска на форме
  if (cxButtonEdit1.EditValue = Null) or (cxButtonEdit2.EditValue = Null) then Err_param := Err_param + 'Необходимо заполнить значение "Ст. отпр.".' + #9;
  if (cxButtonEdit3.EditValue = Null) or (cxButtonEdit4.EditValue = Null) then Err_param := Err_param + 'Необходимо заполнить значение "Ст. назн.".' + #9;

  if Length(Err_param) > 0 then begin
    Application.MessageBox(PChar(Err_param), 'Ошибка ...', MB_ICONERROR + MB_OK);
    ModalResult := mrNone;
    Exit;
  end;

  if (cxCurrencyEdit1.EditValue = NULL) and (cxCurrencyEdit2.EditValue = NULL) and (cxCurrencyEdit3.EditValue = NULL) then begin
    GetCalcDistanceDB(cxButtonEdit2.Text, cxButtonEdit4.Text, Fconnect, False, Date)
  end else begin
    SP_inf_obj_distance_modify := TADOStoredProc.Create(nil);
    SP_inf_obj_distance_modify.Connection := Fconnect;
    SP_inf_obj_distance_modify.ProcedureName := 'sp_inf_obj_distance_modify';
    SP_inf_obj_distance_modify.Parameters.Refresh;
    SP_inf_obj_distance_modify.Parameters.ParamByName('@type_action'   ).Value := Ftype_action;
    SP_inf_obj_distance_modify.Parameters.ParamByName('@node_begin_cod').Value := cxButtonEdit2.EditValue;
    SP_inf_obj_distance_modify.Parameters.ParamByName('@node_end_cod'  ).Value := cxButtonEdit4.EditValue;
    SP_inf_obj_distance_modify.Parameters.ParamByName('@distance'      ).Value := cxCurrencyEdit1.EditValue;
    SP_inf_obj_distance_modify.Parameters.ParamByName('@days_way'      ).Value := cxCurrencyEdit2.EditValue;
    SP_inf_obj_distance_modify.Parameters.ParamByName('@speed'         ).Value := cxCurrencyEdit3.EditValue;
    SP_inf_obj_distance_modify.ExecProc;
    SP_inf_obj_distance_modify.Free;
  end;

end;

procedure TfmDistanceAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
var new_str : string;
     set_ok : boolean;
          Q : TADOQuery;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;

  set_ok := False;
  case AButtonIndex of
    0 : begin
          case TcxButtonEdit(Sender).Tag of
            0,2 : if InputQuery('Поиск', 'Шаблон поиска НАИМЕНОВАНИЯ станции : ', new_str) then begin
                  set_ok := True;
                  Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE WHERE inf_obj_name LIKE ''%'+new_str+'%'' AND GETDATE() BETWEEN date_begin AND date_end ORDER BY inf_obj_name');
                end;
            1,3 : if InputQuery('Поиск', 'Шаблон поиска КОДА станции : ', new_str) then begin
                  set_ok := True;
                  Q.SQL.Add('SELECT inf_obj_id, inf_obj_name, inf_obj_cod FROM inf_obj_NODE WHERE inf_obj_cod  LIKE ''%'+new_str+'%'' AND GETDATE() BETWEEN date_begin AND date_end ORDER BY inf_obj_name');
                end;
          end;
        end;
    1 : begin
          case TcxButtonEdit(Sender).Tag of
            0,1 : SetClear(cxButtonEdit1, cxButtonEdit2);
            2,3 : SetClear(cxButtonEdit3, cxButtonEdit4);
          end;
        end;
  end;

  if set_ok then begin
    Q.Open;
    fmFilter := TfmFilter.Create(0, Q, 'inf_obj_id', 'inf_obj_cod', 'inf_obj_name');
    if fmFilter.ShowModal = mrOk then begin
      case TcxButtonEdit(Sender).Tag of  //Fnode_begin_id := fmFilter.GetId;
        {устанавливаем выборанные наименования и коды}
        0,1 : begin
                cxButtonEdit1.EditValue := fmFilter.GetName;
                cxButtonEdit2.EditValue := fmFilter.GetCod;
              end;
        2,3 : begin
                cxButtonEdit3.EditValue := fmFilter.GetName;
                cxButtonEdit4.EditValue := fmFilter.GetCod;
              end;
      end;
    end;
  end;

  Q.Free;
end;

procedure TfmDistanceAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
