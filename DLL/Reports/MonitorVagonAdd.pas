unit MonitorVagonAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo, cxLabel,
  cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGroupBox, DB, ADODB, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, Filter,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, Raznoe, Default,
  dxSkinXmas2008Blue, ComCtrls, dxCore, cxDateUtils, cxCalendar, cxCurrencyEdit,
  cxClasses, cxPropertiesStore, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  Menus, cxButtons, dxScreenTip, dxCustomHint, cxHint, AppEvnts, CommCtrl, dxSkinTheBezier;

type
  TfmMonitorVagonAdd = class(TForm)
    Panel18: TPanel;
    BitBtn_Ok: TBitBtn;
    BitBtn_Cancel: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    cxMemo1: TcxMemo;
    cxLabel1: TcxLabel;
    Query_Client: TADOQuery;
    DS_Client: TDataSource;
    cxLabel2: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel3: TcxLabel;
    cxButtonEdit13: TcxButtonEdit;
    cxButtonEdit14: TcxButtonEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxButtonEdit1: TcxButtonEdit;
    DS_TypeBargain: TDataSource;
    Query_TypeBargain: TADOQuery;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxMemo2: TcxMemo;
    cxPropertiesStore1: TcxPropertiesStore;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    ApplicationEvents1: TApplicationEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BitBtn_OkClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
  private
    Fconnect : TADOConnection;
    Fmonitor_vagon_id : integer;
    function  CheckEmailAddress(email: string): boolean;
    function  CheckEmailString(email: string): string;
    procedure SetUpdate(monitor_vagon_id: integer);
    function  MemoToSQL  (memo: TcxMemo; type_return: integer): string;
    procedure MemoFromSQL(memo: TcxMemo; str_value: string);
  public
    constructor Create(AOwner: TApplication; connect: TADOConnection);
  published
    property _GetMonitorVaginId : integer read Fmonitor_vagon_id;
    property _SetUpdate : integer write SetUpdate;
  end;

var
  fmMonitorVagonAdd: TfmMonitorVagonAdd;

implementation

uses MonitorVagon;

{$R *.dfm}

constructor TfmMonitorVagonAdd.Create(AOwner: TApplication; connect: TADOConnection);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);
  Fconnect := connect;

  Fmonitor_vagon_id := -9;

  cxDateEdit2.Date := Date;

  Query_Client.Connection := Fconnect;
  Query_TypeBargain.Connection := Fconnect;


  Query_Client.Close;
  Query_Client.Parameters.ParamByName('date_current').Value := Date;
  Query_Client.Open;
  cxLookupComboBox1.EditValue := Query_Client.FieldByName('contract_id').AsInteger;

  Query_TypeBargain.Open;
  cxLookupComboBox2.EditValue := Query_TypeBargain.FieldByName('inf_obj_id').Value;

  Screen.Cursor := crDefault;
end;

procedure TfmMonitorVagonAdd.SetUpdate(monitor_vagon_id: integer);
var Q: TADOQuery;
begin
  Screen.Cursor := crHourglass;

  Fmonitor_vagon_id := monitor_vagon_id;

  Q := TADOQuery.Create(nil);
  Q.Connection := Fconnect;
  Q.SQL.Add('SELECT * FROM view_monitor_vagon WHERE monitor_vagon_id = ' + IntToStr(Fmonitor_vagon_id));
  Q.Open;

  MemoFromSQL(cxMemo1, Q.FieldByName('str_num_vagon').AsString);
  cxDateEdit2.EditValue       := Q.FieldByName('monitor_begin'   ).Value;
  cxDateEdit3.EditValue       := Q.FieldByName('monitor_end'     ).Value;
  cxButtonEdit1.EditValue     := Q.FieldByName('monitor_email'   ).Value;
  cxLookupComboBox1.EditValue := Q.FieldByName('contract_id'     ).Value;
  cxLookupComboBox2.EditValue := Q.FieldByName('type_bargain_id' ).Value;
  cxCurrencyEdit1.EditValue   := Q.FieldByName('cnt_day_delay'   ).Value;
  cxMemo2.EditValue           := Q.FieldByName('monitor_result'  ).Value;

  Q.Free;
  Screen.Cursor := crDefault;
end;

procedure TfmMonitorVagonAdd.cxButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHelp;
end;

procedure TfmMonitorVagonAdd.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
type TFuncList = function (AppHand: THandle) : variant;
var
  FPersonList : TFuncList;
       handle : THandle;
            Q : TADODataSet;
     str_list : TStringList;
            v : variant;
            i : integer;
    str_email : string;
begin
  if AButtonIndex = 0 then begin
    Q := TADODataSet.Create(nil);

    handle := LoadLibrary(PChar('Tel_users.dll'));
    @FPersonList := GetProcAddress(handle, 'GetPersonList');
    v := FPersonList(Application.Handle);
    FreeLibrary(handle);

    Q := TADODataSet.Create(nil);
    Q.Recordset := RecordsetFromXML(v[1]);

    fmFilter := TfmFilter.Create(0, Q, 'users_id', 'users_id', 'FIO_users');
    fmFilter._SetUsersTelEMail := True;
    if fmFilter.ShowModal = mrOk then begin
      str_list := TStringList.Create;
      str_list.Delimiter := ',';
      str_list.StrictDelimiter := True;
      str_list.DelimitedText := fmFilter._GetStrId;
      str_email := '';
      for i := 0 to str_list.Count - 1 do begin
        if Q.Locate('users_id', StrToInt(str_list.Strings[i]), []) then begin
          if Q.FieldByName('email_full').AsString <> '' then begin
            if Length(str_email) > 0 then str_email := str_email + ';';
            str_email := str_email + Q.FieldByName('email_full').AsString;
          end;
        end;
      end;
      str_list.Free;

      str_email := CheckEmailString(cxButtonEdit1.Text + ';' + str_email);
      cxButtonEdit1.Text := str_email;

    end;
    Q.Free;
  end else begin
    cxButtonEdit1.Text := '';
  end;
end;

procedure TfmMonitorVagonAdd.cxLookupComboBox1PropertiesChange(Sender: TObject);
var contract_id  : integer;
    agreement_id : integer;
begin
  cxButtonEdit13.EditValue := '';
  cxButtonEdit14.EditValue := '';

  if Query_Client.Active then begin
    contract_id := iif(cxLookupComboBox1.EditValue = null, -9, cxLookupComboBox1.EditValue);

    if Query_Client.Locate('contract_id', contract_id, []) then begin
      cxButtonEdit13.EditValue    := Query_Client.FieldByName('firm_self_name').AsString;
      cxButtonEdit14.EditValue    := Query_Client.FieldByName('contract_cod'  ).AsString;
      cxDateEdit1.EditValue       := Query_Client.FieldByName('date_begin'    ).Value;
    end;

  end;
end;

procedure TfmMonitorVagonAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TfmMonitorVagonAdd.ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
var control : TWinControl;
          p : TPoint;
begin
  if Screen.Cursor = crHelp then
    if Msg.message = WM_LBUTTONDOWN then begin
      Screen.Cursor := crDefault;

      GetCursorPos(p);
      control := FindVCLWindow(p);
      if control <> nil then begin
        if control.Name = '' then
          control := control.Parent;

        Application.ActivateHint(p);
        Msg.message := 0;

      end;
    end;
end;

procedure TfmMonitorVagonAdd.BitBtn_OkClick(Sender: TObject);
var SP_monitor_vagon_modify : TADOStoredProc;
begin

  if cxDateEdit2.EditValue = null then begin
    Application.MessageBox('Заполните дату начала мониторинга!', 'Внимание', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  if cxMemo1.EditValue = null then begin
    Application.MessageBox('Заполните список вагонов!', 'Внимание', MB_ICONWARNING or MB_OK);
    Exit;
  end;

  ModalResult := mrOk;

  SP_monitor_vagon_modify := TADOStoredProc.Create(nil);
  SP_monitor_vagon_modify.Connection := Fconnect;
  SP_monitor_vagon_modify.ProcedureName := 'SP_monitor_vagon_modify';
  SP_monitor_vagon_modify.Parameters.Refresh;
  SP_monitor_vagon_modify.Parameters.ParamByName('@monitor_vagon_id').Value := iif(Fmonitor_vagon_id = -9, null, Fmonitor_vagon_id);
  SP_monitor_vagon_modify.Parameters.ParamByName('@type_action'     ).Value := iif(Fmonitor_vagon_id = -9, 0, 1);
  SP_monitor_vagon_modify.Parameters.ParamByName('@str_num_vagon'   ).Value := MemoToSQL(cxMemo1, 1);
  SP_monitor_vagon_modify.Parameters.ParamByName('@monitor_begin'   ).Value := cxDateEdit2.EditValue;
  SP_monitor_vagon_modify.Parameters.ParamByName('@monitor_end'     ).Value := cxDateEdit3.EditValue;
  SP_monitor_vagon_modify.Parameters.ParamByName('@monitor_email'   ).Value := cxButtonEdit1.Text;
  SP_monitor_vagon_modify.Parameters.ParamByName('@contract_id'     ).Value := cxLookupComboBox1.EditValue;
  SP_monitor_vagon_modify.Parameters.ParamByName('@type_bargain_id' ).Value := cxLookupComboBox2.EditValue;
  SP_monitor_vagon_modify.Parameters.ParamByName('@cnt_day_delay'   ).Value := cxCurrencyEdit1.EditValue;

  SP_monitor_vagon_modify.ExecProc;
  Fmonitor_vagon_id := SP_monitor_vagon_modify.Parameters.ParamByName('@monitor_vagon_id').Value;

  SP_monitor_vagon_modify.Free;
end;

function TfmMonitorVagonAdd.CheckEmailAddress(email: string): boolean;
var
  user,domen: string;
  i: Integer;
begin
  Result := False;
  //CheckEmail := false;
  {Проверка на недопустимые символы}
  for i:= 1 to Length(email) do begin
      if not (email[i] in ['a'..'z', 'A'..'Z', '0'..'9', '_', '-', '.', '@']) then Exit;
  end;

  {Проверка на наличие разделителя символа @}
  if (Pos('@',email)=0) then Exit;

  user := Copy(email, 1, Pos('@',email)-1);
  domen := Copy(email, Pos('@',email)+1, Length(email) - Pos('@',email));

  {Имя пользователя должно быть не меньше 1 символа}
  if Length(user)=0 then Exit;

  {Имя сервера должно быть не меньше 4 символа}
  if Length(domen)=0 then Exit;

  {Проверка на допустимые символы в имени пользователя}
  for i:= 1 to Length(user) do begin
    if not (user[i] in ['a'..'z', 'A'..'Z', '0'..'9', '_', '-', '.']) then
      Exit;
  end;

  {Проверка на допустимые символы в домене}
  for i:= 1 to Length(domen) do begin
    if not (domen[i] in ['a'..'z', 'A'..'Z', '0'..'9', '-', '.']) then
      Exit;
  end;

  {Имя пользователя не может начинаться с точки}
  if (user[1] = '.') then Exit;

  {Имя домена не может начинаться с точки}
  if (domen[1] = '.') then Exit;

  {Имя домена не может заканчиваться точкой}
  if (domen[Length(domen)] = '.') then Exit;

  {В домене не может быть две точки подряд}
  if (Pos('..', domen) <> 0) then Exit;

  Result := true;
end;


function  TfmMonitorVagonAdd.CheckEmailString(email: string): string;
var  str_list1 : TStringList;
     str_list2 : TStringList;
    str_result : string;
             i : integer;
begin
  email := LowerCase(email);

  str_list1  := TStringList.Create;
  str_list2  := TStringList.Create;
  str_list1.Delimiter := ';';
  str_list1.StrictDelimiter := True;
  str_list1.DelimitedText := email;

  for i := 0 to str_list1.Count - 1 do begin
    if CheckEmailAddress(trim(str_list1.Strings[i])) then begin
      if str_list2.IndexOf(trim(str_list1.Strings[i])) = -1 then begin
        str_list2.Add(trim(str_list1.Strings[i]));
      end;
    end;
  end;

  str_result := '';
  for i := 0 to str_list2.Count - 1 do begin
    if str_result <> '' then str_result := str_result + ';';
    str_result := str_result + str_list2.Strings[i];
  end;


  str_list1.Free;
  str_list2.Free;

  Result := str_result;
end;

function TfmMonitorVagonAdd.MemoToSQL(memo: TcxMemo; type_return: integer): string;
var i  : integer;
    str: string;
begin
  str := '';
  for i:=0 to memo.Lines.Count-1 do begin
    if Trim(memo.Lines[i])<>'' then begin
      if type_return = 1 then memo.Lines[i] := IntToStr(StrToInt64Def(memo.Lines[i], -9));
      str := str + ',' + memo.Lines[i];
    end;
  end;
  if Length(str) > 0 then Delete(str, 1, 1);
  Result := str;
end;

procedure TfmMonitorVagonAdd.MemoFromSQL(memo: TcxMemo; str_value: string);
var str_list: TStringList;
begin
  str_list := TStringList.Create;
  str_list.CommaText := str_value;

  memo.Lines.Add(str_list.Text);

  str_list.Free;
end;


end.
