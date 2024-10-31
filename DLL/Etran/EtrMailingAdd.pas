unit EtrMailingAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Default,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxCurrencyEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit, DB, ADODB, cxPropertiesStore, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxClasses, cxGridLevel, cxGrid, cxPC, cxMemo, DBClient, dxBar, cxCheckBox, cxButtonEdit, ComCtrls, dxCore, cxDateUtils,
  cxCheckComboBox, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxButtons, cxLabel, dxSkinOffice2019Colorful, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinsForm;

type
  TfmEtrMailingAdd = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label7: TLabel;
    cxDateEdit2: TcxDateEdit;
    cxTextEdit1: TcxTextEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    GroupBox1: TGroupBox;
    cxMemo1: TcxMemo;
    cxCheckComboBox1: TcxCheckComboBox;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Query_Firm: TADOQuery;
    DS_Firm: TDataSource;
    Query_Field: TADOQuery;
    DS_Field: TDataSource;
    Query_Condition: TADOQuery;
    DS_Condition: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxPropertiesStore1: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Button1Click(Sender: TObject);
    procedure cxCheckComboBox1PropertiesEditValueToStates(Sender: TObject; const AValue: Variant; var ACheckStates: TcxCheckStates);
    procedure cxCheckComboBox1PropertiesStatesToEditValue(Sender: TObject; const ACheckStates: TcxCheckStates; out AValue: Variant);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    Fconnect     : TADOConnection;
    Fmailing_id  : integer;
    Ftype_action : integer;
    Fnode1_id    : integer;
    Fnode2_id    : integer;
    procedure SetUpdate(mailing_id : integer);
    procedure SetInsert(mailing_id : integer);
    procedure SetTime;
  public
    constructor Create(AOwner: TApplication; conn : TADOConnection);
  published
    property _SetUpdate : integer write SetUpdate;
    property _SetInsert : integer write SetInsert;
    property _GetMailingeId :Integer read Fmailing_id;
  end;

var
  fmEtrMailingAdd: TfmEtrMailingAdd;

implementation
  uses Raznoe, StrUtils, EtrMailing;

{$R *.dfm}

{ TfmVagonAdd }


constructor TfmEtrMailingAdd.Create(Aowner: TApplication; conn : TADOConnection);
begin
  Screen.Cursor := crHourglass;
  inherited Create(Aowner);

  Fconnect := conn;
  Ftype_action := 0;


  Query_Firm.Connection := Fconnect;
  Query_Field.Connection := Fconnect;
  Query_Condition.Connection := Fconnect;

  Query_Firm.Open;
  Query_Field.Open;
  Query_Condition.Open;

  cxLookupComboBox1.EditValue := 0;
  cxLookupComboBox2.EditValue := 10;
  cxLookupComboBox3.EditValue := 0;

  cxDateEdit1.EditValue := Date;

  SetTime;

  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, -9);
  Screen.Cursor := crDefault;
end;

procedure TfmEtrMailingAdd.cxButtonEdit2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var     new_str : string;
 type_condition : integer;
begin
//  cxButtonEdit2.Properties.ReadOnly := True;
//  case AButtonIndex of
//    0 : begin
//          new_str := cxButtonEdit2.Text;
//          Query_TypeCondition.Locate('inf_obj_id', cxLookupComboBox1.EditValue, []);
//          type_condition := Query_TypeCondition.FieldByName('inf_obj_cod').AsInteger;
//          case type_condition of
//            4 : begin
//                  new_str := ReplaceStr(new_str, ',', #13#10);
//                  new_str := ReplaceStr(new_str, ';', #13#10);
//                  fmVagonChoose:= TfmVagonChoose.Create(Application);
//                  fmVagonChoose._SetStrVagonNum := new_str;
//                  if fmVagonChoose.ShowModal=mrOK then begin
//                    new_str := fmVagonChoose._GetStrVagonNum;
//                    cxButtonEdit2.Text := ReplaceStr(new_str, #13#10, ',');
//                  end
//                end;
//
//            10: begin
//                  cxButtonEdit2.Properties.ReadOnly := False;
//                end;
//            else
//              if InputQuery(cxLookupComboBox1.EditText, cxLookupComboBox1.EditText, new_str) then begin
//                new_str := ReplaceStr(new_str, ';', ',');
//                cxButtonEdit2.EditValue := new_str;
//              end;
//          end;
//        end;
//
//    1 : begin
//          cxButtonEdit2.EditValue := null;
//        end;
//  end;
end;

procedure TfmEtrMailingAdd.cxButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var str : string;
begin
  case AButtonIndex of
    0 : begin
         str := cxButtonEdit3.Text;
         if InputQuery('Кому', 'Кому', str) then begin
          str := ReplaceStr(str,' ','');
          str := ReplaceStr(str,',',';');
          cxButtonEdit3.EditValue := str;
         end;
        end;
    1 : begin
          cxButtonEdit3.EditValue := null;
        end;
  end;
end;

procedure TfmEtrMailingAdd.cxButtonEdit4PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var str : string;
begin
  case AButtonIndex of
    0 : begin
         str := cxButtonEdit4.Text;
         if InputQuery('Копия', 'Копия', str) then begin
          str := ReplaceStr(str,' ','');
          str := ReplaceStr(str,',',';');
          cxButtonEdit4.EditValue := str;
         end;
        end;
    1 : begin
          cxButtonEdit4.EditValue := null;
        end;
  end;
end;

procedure TfmEtrMailingAdd.cxCheckComboBox1PropertiesEditValueToStates(Sender: TObject; const AValue: Variant; var ACheckStates: TcxCheckStates);
var
  ADescription, AString: String;
                      I: Integer;
begin
//  if Length(ACheckStates)  = 0 then exit;
//
//  AString := AValue;
//  for I := 0 to Length(ACheckStates) do
//    ACheckStates[I] := cbsUnchecked;
//
//  while Pos(';', AString) > 0 do
//  begin
//    ADescription := copy(AString, 1 , pos(';', AString) - 1);
//    for I := 0 to TcxCheckComboBox(Sender).Properties.Items.Count - 1 do
//      if TcxCheckComboBox(Sender).Properties.Items[I].Description = ADescription then
//        ACheckStates[I] := cbsChecked;
//    AString := copy(AString, pos(';', AString) + 1, Length(AString));
//  end;
end;

procedure TfmEtrMailingAdd.cxCheckComboBox1PropertiesStatesToEditValue(Sender: TObject; const ACheckStates: TcxCheckStates; out AValue: Variant);
var i: Integer;
begin
  if Length(ACheckStates)  = 0 then exit;
  for i := 0 to Length(ACheckStates) do
   if ACheckStates[I] = cbsChecked then
    AValue := AValue +  ';' + TcxCheckComboBox(Sender).Properties.Items[i].Description;
   AValue := Copy(AValue, 2, Length(AValue)-1);
end;

procedure TfmEtrMailingAdd.cxLookupComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
//  cxLabel1.EditValue := null;
//  Query_TypeCondition.Locate('inf_obj_id', cxLookupComboBox1.EditValue, []);
//  cxLabel1.EditValue := Query_TypeCondition.FieldByName('inf_obj_name_full').Value;
//  cxButtonEdit2.Properties.ReadOnly := True;
//
//  if Query_TypeCondition.FieldByName('inf_obj_cod').Value = '10' then
//    cxButtonEdit2.Properties.ReadOnly := False;


end;

procedure TfmEtrMailingAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEtrMailingAdd.SetInsert(mailing_id: integer);
begin
  Fmailing_id := -9;
end;

procedure TfmEtrMailingAdd.SetTime;
var i,h,m : integer;
        s : string;
begin
  cxCheckComboBox1.Properties.BeginUpdate;
  cxCheckComboBox1.Properties.Items.Clear;
  for i := 0 to 23 do begin
    s := '0' + IntToStr(i);
    s:= Copy(s,Length(s)-1,2);

    with cxCheckComboBox1.Properties.Items.Add do begin
      Description := s + ':00';
    end;

    with cxCheckComboBox1.Properties.Items.Add do begin
      Description := s + ':30';
    end;
  end;
  cxCheckComboBox1.Properties.EndUpdate;
end;

procedure TfmEtrMailingAdd.SetUpdate(mailing_id: integer);
var         Q : TADOQuery;
 str_time,str : string;
            i : integer;
begin
  Screen.Cursor := crHourglass;
  Caption := Caption + ' [' + IntToStr(mailing_id) + ']';

  Ftype_action := 1;
  Fmailing_id := mailing_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_etran_mailing WHERE mailing_id =' + IntToStr(Fmailing_id));
  Q.Open;

  cxTextEdit1.EditValue       := Q.FieldByName('mailing_name').Value;
  cxDateEdit1.EditValue       := Q.FieldByName('date_begin').Value;
  cxDateEdit2.EditValue       := Q.FieldByName('date_end').Value;
//  cxCheckComboBox1.EditValue  := Q.FieldByName('mailing_time').Value;
  cxButtonEdit3.EditValue     := Q.FieldByName('mailing_recipients').Value;
  cxButtonEdit4.EditValue     := Q.FieldByName('mailing_copy_recipients').Value;
  cxMemo1.EditValue           := Q.FieldByName('comment').Value;

  cxLookupComboBox1.EditValue := Q.FieldByName('mailing_firm_id').Value;
  cxLookupComboBox2.EditValue := Q.FieldByName('mailing_field_id').Value;
  cxLookupComboBox3.EditValue := Q.FieldByName('mailing_condition_id').Value;
  cxCurrencyEdit1.EditValue   := Q.FieldByName('mailing_sum').Value;

  Q.Free;

//  MonitorEventFormOpen('OPEN_FORM', self.Name, Fconnect, Fmailing_id);

  Screen.Cursor := crDefault;
end;

procedure TfmEtrMailingAdd.Button1Click(Sender: TObject);
begin
  SetTime;
end;

procedure TfmEtrMailingAdd.cxButton1Click(Sender: TObject);
var     SP : TADOStoredProc;
  str_time : string;

begin
  Screen.Cursor := crHourglass;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := Fconnect;
  SP.ProcedureName := 'sp_etran_mailing_modify';
  SP.Parameters.Refresh;

  SP.Parameters.ParamByName('@mailing_id'               ).Value := iif(Fmailing_id=-9, null, Fmailing_id);
  SP.Parameters.ParamByName('@type_action'              ).Value := iif(Fmailing_id=-9, 0, 1);

  SP.Parameters.ParamByName('@mailing_name'             ).Value := cxTextEdit1.EditValue;
  SP.Parameters.ParamByName('@mailing_time'             ).Value := cxCheckComboBox1.EditValue;
  SP.Parameters.ParamByName('@mailing_recipients'       ).Value := cxButtonEdit3.EditValue;
  SP.Parameters.ParamByName('@mailing_copy_recipients'  ).Value := cxButtonEdit4.EditValue;

  SP.Parameters.ParamByName('@mailing_firm_id'          ).Value := cxLookupComboBox1.EditValue;
  SP.Parameters.ParamByName('@mailing_field_id'         ).Value := cxLookupComboBox2.EditValue;
  SP.Parameters.ParamByName('@mailing_condition_id'     ).Value := cxLookupComboBox3.EditValue;
  SP.Parameters.ParamByName('@mailing_sum'              ).Value := cxCurrencyEdit1.EditValue;

  SP.Parameters.ParamByName('@date_begin'               ).Value := cxDateEdit1.EditValue;
  SP.Parameters.ParamByName('@date_end'                 ).Value := cxDateEdit2.EditValue;
  SP.Parameters.ParamByName('@comment'                  ).Value := cxMemo1.EditValue;

  try
    SP.ExecProc;
  except on E: Exception do begin
    Application.MessageBox(PChar(E.Message),'ВНИМАНИЕ!!!' , MB_OKCANCEL + MB_ICONERROR);
    ModalResult := mrNone;
  end;
  end;
  Fmailing_id := SP.Parameters.ParamByName('@mailing_id').Value;
  SP.Free;

  Screen.Cursor := crDefault;
end;



end.
