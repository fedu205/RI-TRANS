unit Raznoe1C;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.StdCtrls, System.Net.HttpClient, System.Net.URLClient,
  System.Net.HttpClientComponent, EncdDecd, System.StrUtils, System.DateUtils,
  System.JSON, System.JSONConsts,  Data.DB, Datasnap.DBClient,
  Data.DBXDataSnap, Data.DBXCommon, Data.SqlExpr,
  Data.Win.ADODB, Xml.XMLDoc, Character, Vcl.Grids, Vcl.DBGrids;

function Get1C_Contract(ip_address: string; users_name: string; users_password: string; date_begin_load: TDateTime): string;
function Get1C_PayIn   (ip_address: string; users_name: string; users_password: string; connection_string: string; users_group_cod: string; period: integer): string;
function Get1C_PayOut  (ip_address: string; users_name: string; users_password: string; connection_string: string; users_group_cod: string; period: integer): string;

implementation

function AnyStringToDate(fmt, dt: String) : TDateTime;
var
  fs : TFormatSettings;
Begin
  fs := TFormatSettings.Create;
  fs.DateSeparator := '-';
  fs.ShortDateFormat := fmt;
  dt := LeftStr(dt, Length(fmt));
  result := StrToDate(dt, fs);
end;


procedure Get1C_InfBankAccount(ip_address: string; users_name: string; users_password: string; var ClientDS: TClientDataSet);
var
  http            : THTTPClient;
  headers         : TNetHeaders;   // заголовок для http запроса
  response        : IHTTPResponse; // результат http запроса
  MessageResult   : TStringStream; // Результат
  json_obj        : TJSONObject;
  json_arr        : TJSONArray;
  json_arr_el     : TJSONObject;
  k               : integer;
begin
  try
    http := THTTPClient.Create;
    http.ContentType := '';
    http.UserAgent   := '';
    http.Accept      := '*/*';

    SetLength(headers, 1);
    headers[0].Name  := 'Authorization';
    headers[0].Value := 'Basic ' + EncodeString(users_name+ ':' + users_password);
    response := http.Get(ip_address + '/Catalog_БанковскиеСчета?$format=json;odata=nometadata&$select=Ref_Key, Банк_Key', nil, headers);

    MessageResult := TStringStream.Create;
    MessageResult.LoadFromStream(response.ContentStream);
    if MessageResult.DataString <> '' then begin
      json_obj := TJSONObject.ParseJSONValue(UTF8ToString(MessageResult.DataString)) as TJSONObject;
      json_arr := json_obj.GetValue('value') as TJSONArray;

      for k := 0 to json_arr.Count-1 do begin
        json_arr_el := json_arr.Items[k] as TJSONObject;

        ClientDS.Append;
        ClientDS.FieldByName('inf_obj_guid'     ).Value := json_arr_el.GetValue('Ref_Key').Value;
        ClientDS.FieldByName('inf_obj_name'     ).Value := json_arr_el.GetValue('Банк_Key').Value;
        ClientDS.Post;
      end;
      json_obj.Free;
    end;

    MessageResult.Free;
    http.Free;
  except
    on E: Exception do begin
      if json_obj<>nil      then json_obj.Free;
      if MessageResult<>nil then MessageResult.Free;
      if http<>nil          then http.Free;
    end;
  end;
end;

procedure Get1C_InfBank(ip_address: string; users_name: string; users_password: string; var ClientDS: TClientDataSet);
var
  http            : THTTPClient;
  headers         : TNetHeaders;   // заголовок для http запроса
  response        : IHTTPResponse; // результат http запроса
  MessageResult   : TStringStream; // Результат
  json_obj        : TJSONObject;
  json_arr        : TJSONArray;
  json_arr_el     : TJSONObject;
  k               : integer;
begin
  try
    http := THTTPClient.Create;
    http.ContentType := '';
    http.UserAgent   := '';
    http.Accept      := '*/*';

    SetLength(headers, 1);
    headers[0].Name  := 'Authorization';
    headers[0].Value := 'Basic ' + EncodeString(users_name+ ':' + users_password);
    response := http.Get(ip_address + '/Catalog_Банки?$format=json;odata=nometadata&$select=Ref_Key, Code, Description', nil, headers);

    MessageResult := TStringStream.Create;
    MessageResult.LoadFromStream(response.ContentStream);
    if MessageResult.DataString <> '' then begin
      json_obj := TJSONObject.ParseJSONValue(UTF8ToString(MessageResult.DataString)) as TJSONObject;
      json_arr := json_obj.GetValue('value') as TJSONArray;

      for k := 0 to json_arr.Count-1 do begin
        json_arr_el := json_arr.Items[k] as TJSONObject;

        ClientDS.Append;
        ClientDS.FieldByName('inf_obj_guid'     ).Value := json_arr_el.GetValue('Ref_Key').Value;
        ClientDS.FieldByName('inf_obj_cod'      ).Value := json_arr_el.GetValue('Code').Value;
        ClientDS.FieldByName('inf_obj_name'     ).Value := json_arr_el.GetValue('Description').Value;
        ClientDS.Post;
      end;
      json_obj.Free;
    end;

    MessageResult.Free;
    http.Free;
  except
    on E: Exception do begin
      if json_obj<>nil      then json_obj.Free;
      if MessageResult<>nil then MessageResult.Free;
      if http<>nil          then http.Free;
    end;
  end;
end;


procedure Get1C_InfFirm(ip_address: string; users_name: string; users_password: string; var ClientDS: TClientDataSet);
var
  http            : THTTPClient;
  headers         : TNetHeaders;   // заголовок для http запроса
  response        : IHTTPResponse; // результат http запроса
  MessageResult   : TStringStream; // Результат
  json_obj        : TJSONObject;
  json_arr        : TJSONArray;
  json_arr_el     : TJSONObject;
  k               : integer;
begin
  try
    http := THTTPClient.Create;
    http.ContentType := '';
    http.UserAgent   := '';
    http.Accept      := '*/*';

    SetLength(headers, 1);
    headers[0].Name  := 'Authorization';
    headers[0].Value := 'Basic ' + EncodeString(users_name+ ':' + users_password);
    response := http.Get(ip_address + '/Catalog_Контрагенты?$format=json;odata=nometadata&$select=НаименованиеПолное, Description, Ref_Key, ИНН, КПП', nil, headers);

    MessageResult := TStringStream.Create;
    MessageResult.LoadFromStream(response.ContentStream);
    if MessageResult.DataString <> '' then begin
      json_obj := TJSONObject.ParseJSONValue(UTF8ToString(MessageResult.DataString)) as TJSONObject;
      json_arr := json_obj.GetValue('value') as TJSONArray;

      for k := 0 to json_arr.Count-1 do begin
        json_arr_el := json_arr.Items[k] as TJSONObject;

        ClientDS.Append;
        ClientDS.FieldByName('inf_obj_guid'     ).Value := json_arr_el.GetValue('Ref_Key').Value;
        ClientDS.FieldByName('inf_obj_name'     ).Value := json_arr_el.GetValue('Description').Value;
        ClientDS.FieldByName('inf_obj_name_full').Value := json_arr_el.GetValue('НаименованиеПолное').Value;
        ClientDS.FieldByName('inn'              ).Value := json_arr_el.GetValue('ИНН').Value;
        ClientDS.FieldByName('kpp'              ).Value := json_arr_el.GetValue('КПП').Value;
        ClientDS.Post;
      end;
      json_obj.Free;
    end;

    MessageResult.Free;
    http.Free;
  except
    on E: Exception do begin
      if json_obj<>nil      then json_obj.Free;
      if MessageResult<>nil then MessageResult.Free;
      if http<>nil          then http.Free;
    end;
  end;
end;

procedure Get1C_InfOrg(ip_address: string; users_name: string; users_password: string; var ClientDS: TClientDataSet);
var
  http            : THTTPClient;
  headers         : TNetHeaders;   // заголовок для http запроса
  response        : IHTTPResponse; // результат http запроса
  MessageResult   : TStringStream; // Результат
  json_obj        : TJSONObject;
  json_arr        : TJSONArray;
  json_arr_el     : TJSONObject;
  k               : integer;
begin
  try
    http := THTTPClient.Create;
    http.ContentType := '';
    http.UserAgent   := '';
    http.Accept      := '*/*';

    SetLength(headers, 1);
    headers[0].Name  := 'Authorization';
    headers[0].Value := 'Basic ' + EncodeString(users_name+ ':' + users_password);
    response := http.Get(ip_address + '/Catalog_Организации?$format=json;odata=nometadata&$select=Ref_Key, Description, НаименованиеПолное', nil, headers);

    MessageResult := TStringStream.Create;
    MessageResult.LoadFromStream(response.ContentStream);
    if MessageResult.DataString <> '' then begin
      json_obj := TJSONObject.ParseJSONValue(UTF8ToString(MessageResult.DataString)) as TJSONObject;
      json_arr := json_obj.GetValue('value') as TJSONArray;

      for k := 0 to json_arr.Count-1 do begin
        json_arr_el := json_arr.Items[k] as TJSONObject;

        ClientDS.Append;
        ClientDS.FieldByName('inf_obj_guid'     ).Value := json_arr_el.GetValue('Ref_Key').Value;
        ClientDS.FieldByName('inf_obj_name'     ).Value := json_arr_el.GetValue('Description').Value;
        ClientDS.FieldByName('inf_obj_name_full').Value := json_arr_el.GetValue('НаименованиеПолное').Value;
        ClientDS.Post;
      end;
      json_obj.Free;
    end;

    MessageResult.Free;
    http.Free;
  except
    on E: Exception do begin
      if json_obj<>nil      then json_obj.Free;
      if MessageResult<>nil then MessageResult.Free;
      if http<>nil          then http.Free;
    end;
  end;
end;

procedure Get1C_InfCurrency(ip_address: string; users_name: string; users_password: string; var ClientDS: TClientDataSet);
var
  http            : THTTPClient;
  headers         : TNetHeaders;   // заголовок для http запроса
  response        : IHTTPResponse; // результат http запроса
  MessageResult   : TStringStream; // Результат
  json_obj        : TJSONObject;
  json_arr        : TJSONArray;
  json_arr_el     : TJSONObject;
  k               : integer;
begin
  try
    http := THTTPClient.Create;
    http.ContentType := '';
    http.UserAgent   := '';
    http.Accept      := '*/*';

    SetLength(headers, 1);
    headers[0].Name  := 'Authorization';
    headers[0].Value := 'Basic ' + EncodeString(users_name+ ':' + users_password);
    response := http.Get(ip_address + '/Catalog_Валюты?$format=json;odata=nometadata&$select=Ref_Key, Code, Description, НаименованиеПолное', nil, headers);

    MessageResult := TStringStream.Create;
    MessageResult.LoadFromStream(response.ContentStream);
    if MessageResult.DataString <> '' then begin
      json_obj := TJSONObject.ParseJSONValue(UTF8ToString(MessageResult.DataString)) as TJSONObject;
      json_arr := json_obj.GetValue('value') as TJSONArray;

      for k := 0 to json_arr.Count-1 do begin
        json_arr_el := json_arr.Items[k] as TJSONObject;

        ClientDS.Append;
        ClientDS.FieldByName('inf_obj_guid'     ).Value := json_arr_el.GetValue('Ref_Key').Value;
        ClientDS.FieldByName('inf_obj_cod'      ).Value := json_arr_el.GetValue('Code').Value;
        ClientDS.FieldByName('inf_obj_name'     ).Value := json_arr_el.GetValue('Description').Value;
        ClientDS.FieldByName('inf_obj_name_full').Value := json_arr_el.GetValue('НаименованиеПолное').Value;
        ClientDS.Post;
      end;
      json_obj.Free;
    end;

    MessageResult.Free;
    http.Free;
  except
    on E: Exception do begin
      if json_obj<>nil      then json_obj.Free;
      if MessageResult<>nil then MessageResult.Free;
      if http<>nil          then http.Free;
    end;
  end;
end;

function Get1C_Contract(ip_address: string; users_name: string; users_password: string; date_begin_load: TDateTime): string;
var
  ClientDS_InfObj : TClientDataSet;
  ClientDS_Result : TClientDataSet;
  http            : THTTPClient;
  headers         : TNetHeaders;   // заголовок для http запроса
  response        : IHTTPResponse; // результат http запроса
  MessageResult   : TStringStream; // Результат
  json_obj        : TJSONObject;
  json_arr        : TJSONArray;
  json_arr_el     : TJSONObject;
  k               : integer;
  res             : string;
  str_date : string;
  dt: TDateTime;
begin
  try
    ClientDS_InfObj := TClientDataSet.Create(nil);
    ClientDS_InfObj.FieldDefs.Add('row_id', ftAutoInc);
    ClientDS_InfObj.FieldDefs.Add('inf_obj_guid', ftString, 200);
    ClientDS_InfObj.FieldDefs.Add('inf_obj_cod' , ftString, 800);
    ClientDS_InfObj.FieldDefs.Add('inf_obj_name', ftString, 800);
    ClientDS_InfObj.FieldDefs.Add('inf_obj_name_full', ftString, 800);
    ClientDS_InfObj.FieldDefs.Add('inn', ftString, 200);
    ClientDS_InfObj.FieldDefs.Add('kpp', ftString, 200);
    ClientDS_InfObj.CreateDataSet;
    ClientDS_InfObj.LogChanges := False;
    ClientDS_InfObj.IndexDefs.Add('ClientDS_Index1', 'inf_obj_guid', []);
    ClientDS_InfObj.IndexName := 'ClientDS_Index1';

    ClientDS_Result := TClientDataSet.Create(nil);
    ClientDS_Result.FieldDefs.Add('id', ftAutoInc);
    ClientDS_Result.FieldDefs.Add('contract_1c_id', ftInteger);
    ClientDS_Result.FieldDefs.Add('contract_id',    ftInteger);
    ClientDS_Result.FieldDefs.Add('contract_1c_GUID',   ftString, 50);
    ClientDS_Result.FieldDefs.Add('firm_customer_GUID', ftString, 50);
    ClientDS_Result.FieldDefs.Add('firm_self_GUID',     ftString, 50);
    ClientDS_Result.FieldDefs.Add('contract_cod',  ftString, 100);
    ClientDS_Result.FieldDefs.Add('date_begin',    ftDateTime);
    ClientDS_Result.FieldDefs.Add('contract_name', ftString, 200);
    ClientDS_Result.FieldDefs.Add('firm_customer_name', ftString, 50);
    ClientDS_Result.FieldDefs.Add('firm_self_name', ftString, 50);
    ClientDS_Result.FieldDefs.Add('date_begin_load', ftDateTime);
    ClientDS_Result.FieldDefs.Add('base_1C_name', ftString, 50);
    ClientDS_Result.FieldDefs.Add('contract_type_name', ftString, 20);
    ClientDS_Result.FieldDefs.Add('inn', ftString, 20);
    ClientDS_Result.FieldDefs.Add('kpp', ftString, 20);
    ClientDS_Result.FieldDefs.Add('version_1C', ftInteger);
    ClientDS_Result.FieldDefs.Add('currency_name', ftString, 20);
    ClientDS_Result.FieldDefs.Add('set_delete', ftBoolean);

    ClientDS_Result.CreateDataSet;
    ClientDS_Result.LogChanges := False;



    http := THTTPClient.Create;
    http.ContentType := '';
    http.UserAgent   := '';
    http.Accept      := '*/*';

    SetLength(headers, 1);
    headers[0].Name  := 'Authorization';
    headers[0].Value := 'Basic ' + EncodeString(users_name+ ':' + users_password);
    response := http.Get(ip_address + '/Catalog_ДоговорыКонтрагентов?$format=json;odata=nometadata&$inlinecount=allpages&$select=Ref_Key, Номер, Дата, Owner_Key, ВидДоговора, Организация_Key, Комментарий, Description, Code, ВалютаВзаиморасчетов_Key&$filter=IsFolder ne true', nil, headers);

    Get1C_InfFirm    (ip_address, users_name, users_password, ClientDS_InfObj); // Загружаем справочник контрагентов
    Get1C_InfOrg     (ip_address, users_name, users_password, ClientDS_InfObj); // Загружаем справочник собственных
    Get1C_InfCurrency(ip_address, users_name, users_password, ClientDS_InfObj); // Загружаем справочник валют

    MessageResult := TStringStream.Create;
    MessageResult.LoadFromStream(response.ContentStream);

    json_obj := TJSONObject.ParseJSONValue(UTF8ToString(MessageResult.DataString)) as TJSONObject;
    json_arr := json_obj.GetValue('value') as TJSONArray;

    for k := 0 to json_arr.Count-1 do begin
      json_arr_el := json_arr.Items[k] as TJSONObject;

      ClientDS_Result.Append;

      ClientDS_Result.FieldByName('contract_1c_id'     ).Value := null;
      ClientDS_Result.FieldByName('contract_id'        ).Value := null;

      ClientDS_Result.FieldByName('contract_1c_GUID'   ).Value := json_arr_el.GetValue('Ref_Key').Value;
      ClientDS_Result.FieldByName('firm_customer_GUID' ).Value := json_arr_el.GetValue('Owner_Key').Value;
      ClientDS_Result.FieldByName('firm_self_GUID'     ).Value := json_arr_el.GetValue('Организация_Key').Value;

      ClientDS_Result.FieldByName('contract_cod'       ).Value := json_arr_el.GetValue('Номер').Value;

      str_date := json_arr_el.GetValue('Дата').Value;
      if str_date.Substring(0,4).ToInteger() < 1990 then begin
        ClientDS_Result.FieldByName('date_begin'         ).Value := null;
      end else begin
        dt := EncodeDate(str_date.Substring(0,4).ToInteger(), str_date.Substring(5,2).ToInteger(), str_date.Substring(8,2).ToInteger());
        ClientDS_Result.FieldByName('date_begin'         ).Value := DateToStr(dt);
      end;
      ClientDS_Result.FieldByName('contract_name'      ).Value := json_arr_el.GetValue('Description').Value;

      if ClientDS_InfObj.FindKey([json_arr_el.GetValue('Owner_Key').Value]) then  begin
        ClientDS_Result.FieldByName('firm_customer_name').Value := ClientDS_InfObj.FieldByName('inf_obj_name').Value;
        ClientDS_Result.FieldByName('inn'               ).Value := ClientDS_InfObj.FieldByName('inn').Value;
        ClientDS_Result.FieldByName('kpp'               ).Value := ClientDS_InfObj.FieldByName('kpp').Value;
      end;

      if ClientDS_InfObj.FindKey([json_arr_el.GetValue('Организация_Key').Value]) then
        ClientDS_Result.FieldByName('firm_self_name').Value := ClientDS_InfObj.FieldByName('inf_obj_name').Value;

      if ClientDS_InfObj.FindKey([json_arr_el.GetValue('ВалютаВзаиморасчетов_Key').Value]) then
        ClientDS_Result.FieldByName('currency_name').Value := ClientDS_InfObj.FieldByName('inf_obj_name').Value;

      ClientDS_Result.FieldByName('date_begin_load'    ).Value := date_begin_load;
      ClientDS_Result.FieldByName('base_1C_name'       ).Value := null;
      ClientDS_Result.FieldByName('contract_type_name' ).Value := json_arr_el.GetValue('ВидДоговора').Value;
      ClientDS_Result.FieldByName('version_1C'         ).Value := null;
      ClientDS_Result.FieldByName('set_delete'         ).Value := False;

      ClientDS_Result.Post;
    end;

    res := ClientDS_Result.XMLData;

    json_obj.Free;
    MessageResult.Free;
    http.Free;
    ClientDS_InfObj.Free;
    ClientDS_Result.Free;
  except
    on E: Exception do begin
      ShowMessage(E.Message);
      res := '';
      if MessageResult <> nil then MessageResult.Free;
      if http <> nil then http.Free;
      ClientDS_InfObj.Free;
      ClientDS_Result.Free;
    end;
  end;
  Result := res;
end;


function Get1C_PayIn(ip_address: string; users_name: string; users_password: string; connection_string: string; users_group_cod: string; period: integer): string;
var
  ClientDS_InfObj : TClientDataSet;
  ClientDS_Result : TClientDataSet;
  http            : THTTPClient;
  headers         : TNetHeaders;   // заголовок для http запроса
  response        : IHTTPResponse; // результат http запроса
  MessageResult   : TStringStream; // Результат
  json_obj        : TJSONObject;
  json_arr        : TJSONArray;
  json_pay        : TJSONObject;
  json_arr_pay_detail    : TJSONArray;
  json_pay_detail : TJSONObject;
  k,j             : integer;
  res             : string;
  task_address    : string;
  connect         : TADOConnection;
  Q, Q_Contract   : TADOQuery;
  contract_id     : integer;

  type_nds_name_1C : string;
  pay_1C_guid      : string;
  type_contract    : integer;
  type_contract_1C : integer;
  contract_GUID    : string;
begin
  try
    connect                  := TADOConnection.Create(nil);
    connect.ConnectionString := connection_string;
    connect.KeepConnection   := False;
    connect.LoginPrompt      := False;
    connect.Connected        := True;

    Q := TADOQuery.Create(nil);
    Q.Connection := connect;

    Q_Contract := TADOQuery.Create(nil);
    Q_Contract.Connection := connect;
    Q_Contract.SQL.Add('SELECT contract_id, contract_1c_GUID, date_begin_load, type_contract, contract_type_name FROM view_contract_1C WHERE users_group_cod = ''' + users_group_cod + ''' ');
    Q_Contract.Open;


    ClientDS_InfObj := TClientDataSet.Create(nil);
    ClientDS_InfObj.FieldDefs.Add('row_id', ftAutoInc);
    ClientDS_InfObj.FieldDefs.Add('inf_obj_guid', ftString, 200);
    ClientDS_InfObj.FieldDefs.Add('inf_obj_cod' , ftString, 800);
    ClientDS_InfObj.FieldDefs.Add('inf_obj_name', ftString, 800);
    ClientDS_InfObj.FieldDefs.Add('inf_obj_name_full', ftString, 800);
    ClientDS_InfObj.CreateDataSet;
    ClientDS_InfObj.LogChanges := False;
    ClientDS_InfObj.IndexDefs.Add('ClientDS_Index1', 'inf_obj_guid', []);
    ClientDS_InfObj.IndexName := 'ClientDS_Index1';

    ClientDS_Result := TClientDataSet.Create(nil);
    ClientDS_Result.FieldDefs.Add('id', ftAutoInc);

    ClientDS_Result.FieldDefs.Add('pay_id', ftInteger);
    ClientDS_Result.FieldDefs.Add('set_load', ftBoolean);
    ClientDS_Result.FieldDefs.Add('result', ftInteger);

    ClientDS_Result.FieldDefs.Add('contract_id',      ftInteger);
    ClientDS_Result.FieldDefs.Add('type_contract',    ftInteger);
    ClientDS_Result.FieldDefs.Add('type_contract_1C', ftInteger);

    ClientDS_Result.FieldDefs.Add('pay_1C_GUID', ftString, 50);

    ClientDS_Result.FieldDefs.Add('pay_cod', ftString, 250);
    ClientDS_Result.FieldDefs.Add('incomming_cod', ftString, 250);
    ClientDS_Result.FieldDefs.Add('pay_date', ftDateTime);
    ClientDS_Result.FieldDefs.Add('pay_sum', ftCurrency);
    ClientDS_Result.FieldDefs.Add('type_nds_id', ftInteger);
    ClientDS_Result.FieldDefs.Add('type_nds_name', ftString, 20);
    ClientDS_Result.FieldDefs.Add('type_pay', ftInteger);
    ClientDS_Result.FieldDefs.Add('type_pay_name', ftString, 20);
    ClientDS_Result.FieldDefs.Add('set_return', ftBoolean);
    ClientDS_Result.FieldDefs.Add('pay_note', ftString, 250);
    ClientDS_Result.FieldDefs.Add('pay_comment', ftString, 250);

//    ClientDS_Result.FieldDefs.Add('contract_GUID_1C', ftString, 50);
//    ClientDS_Result.FieldDefs.Add('contract_id_1C',   ftInteger);
//    ClientDS_Result.FieldDefs.Add('contract_cod_1C',  ftString, 200);
//    ClientDS_Result.FieldDefs.Add('firm_customer_name_1C', ftString, 200);
//    ClientDS_Result.FieldDefs.Add('firm_self_name_1C', ftString, 200);
//    ClientDS_Result.FieldDefs.Add('contract_cod',     ftString, 200);
//    ClientDS_Result.FieldDefs.Add('contract_1C_id', ftInteger);
//    ClientDS_Result.FieldDefs.Add('oper_name_1C', ftString, 10);
//    ClientDS_Result.FieldDefs.Add('doc_type_1C', ftString, 10);
//    ClientDS_Result.FieldDefs.Add('type_contract_1C', ftInteger);


//    ClientDS_Result.FieldDefs.Add('pay_id', ftInteger);
//    ClientDS_Result.FieldDefs.Add('pay_date', ftDateTime);
//    ClientDS_Result.FieldDefs.Add('firm_self_name', ftString, 200);
//    ClientDS_Result.FieldDefs.Add('firm_customer_name', ftString, 200);
//    ClientDS_Result.FieldDefs.Add('pay_sum', ftCurrency);
//
//    ClientDS_Result.FieldDefs.Add('pay_cod', ftString, 100);
//    ClientDS_Result.FieldDefs.Add('type_nds_id', ftInteger);
//    ClientDS_Result.FieldDefs.Add('type_nds_name', ftString, 20);
//    ClientDS_Result.FieldDefs.Add('incomming_cod', ftString, 200);
//    ClientDS_Result.FieldDefs.Add('set_return', ftBoolean);
//    ClientDS_Result.FieldDefs.Add('pay_comment', ftString, 200);
//    ClientDS_Result.FieldDefs.Add('set_pay_date', ftBoolean);
//    ClientDS_Result.FieldDefs.Add('set_contract_id', ftBoolean);
//    ClientDS_Result.FieldDefs.Add('set_pay_sum', ftBoolean);
//    ClientDS_Result.FieldDefs.Add('set_brief_name', ftBoolean);
//    ClientDS_Result.FieldDefs.Add('set_pay_cod', ftBoolean);
//    ClientDS_Result.FieldDefs.Add('set_type_nds_id', ftBoolean);
//    ClientDS_Result.FieldDefs.Add('set_incomming_cod', ftBoolean);
//    ClientDS_Result.FieldDefs.Add('set_set_return', ftBoolean);
//    ClientDS_Result.FieldDefs.Add('set_pay_comment', ftBoolean);
//    ClientDS_Result.FieldDefs.Add('pay_note', ftString, 200);
    ClientDS_Result.FieldDefs.Add('currency_id', ftInteger);
    ClientDS_Result.FieldDefs.Add('currency_cod', ftString, 10);
    ClientDS_Result.FieldDefs.Add('brief_name', ftString, 20);
//    ClientDS_Result.FieldDefs.Add('set_difference', ftBoolean);
//    ClientDS_Result.FieldDefs.Add('set_pay_note', ftBoolean);
//
//    ClientDS_Result.FieldDefs.Add('result_cod', ftInteger);
//    ClientDS_Result.FieldDefs.Add('result_name', ftString, 200);
//    ClientDS_Result.FieldDefs.Add('status_load_name', ftString, 20);
//    ClientDS_Result.FieldDefs.Add('status_load_cod', ftInteger);
    ClientDS_Result.FieldDefs.Add('excange_val', ftCurrency);
//    ClientDS_Result.FieldDefs.Add('pay_1C_GUID_LIS', ftString, 50);
//    ClientDS_Result.FieldDefs.Add('set_type_pay', ftBoolean);
//    ClientDS_Result.FieldDefs.Add('type_pay', ftInteger);
    ClientDS_Result.CreateDataSet;
    ClientDS_Result.LogChanges := False;

    ClientDS_Result.IndexDefs.Add('ClientDS_Index1', 'pay_id', []);
    ClientDS_Result.IndexName := 'ClientDS_Index1';
    ClientDS_Result.IndexDefs.Add('ClientDS_Index2', 'pay_1C_GUID;contract_id;type_nds_name', []);
    ClientDS_Result.IndexName := 'ClientDS_Index2';

    http := THTTPClient.Create;
    http.ContentType := '';
    http.UserAgent   := '';
    http.Accept      := '*/*';

    SetLength(headers, 1);
    headers[0].Name  := 'Authorization';
    headers[0].Value := 'Basic ' + EncodeString(users_name+ ':' + users_password);

    task_address := ip_address + '/Document_ПоступлениеНаРасчетныйСчет';
    task_address := task_address + '?$format=json;odata=nometadata';
    task_address := task_address + '&$inlinecount=allpages';
//    task_address := task_address + '&$select=Ref_Key,НомерВходящегоДокумента,ДатаВходящегоДокумента,СуммаДокумента,ВалютаДокумента_Key,ДоговорКонтрагента_Key,НазначениеПлатежа,СчетОрганизации_Key,СчетБанк_Key, DataVersion';
    task_address := task_address + '&$filter=DeletionMark ne true and ДоговорКонтрагента_Key ne guid''00000000-0000-0000-0000-000000000000'' and ДатаВходящегоДокумента gt datetime''' + FormatDateTime('yyyy-mm-dd', Date-period) + 'T00:00:00''';

    response := http.Get(task_address, nil, headers);

    Get1C_InfCurrency   (ip_address, users_name, users_password, ClientDS_InfObj);
    Get1C_InfBankAccount(ip_address, users_name, users_password, ClientDS_InfObj);
    Get1C_InfBank       (ip_address, users_name, users_password, ClientDS_InfObj);

    MessageResult := TStringStream.Create;
    MessageResult.LoadFromStream(response.ContentStream);
    json_obj := TJSONObject.ParseJSONValue(UTF8ToString(MessageResult.DataString)) as TJSONObject;
    json_arr := json_obj.GetValue('value') as TJSONArray;

    for k := 0 to json_arr.Count-1 do begin
      json_pay := json_arr.Items[k] as TJSONObject;
      json_arr_pay_detail := json_pay.GetValue('РасшифровкаПлатежа') as TJSONArray;
      for j := 0 to json_arr_pay_detail.Count-1 do begin
        json_pay_detail := json_arr_pay_detail.Items[j] as TJSONObject;
        contract_GUID   := json_pay_detail.GetValue('ДоговорКонтрагента_Key').Value;

        if Q_Contract.Locate('contract_1C_guid', contract_GUID, []) then begin
          if AnyStringToDate('YYYY-MM-DD',json_pay.GetValue('Date').Value) >= Q_Contract.FieldByName('date_begin_load').AsDateTime  then begin
            contract_id   := Q_Contract.FieldByName('contract_id').AsInteger;
            type_contract := Q_Contract.FieldByName('type_contract').AsInteger;
            if Q_Contract.FieldByName('contract_type_name').AsString = 'СПокупателем' then
              type_contract_1C := 0
            else
              type_contract_1C := 1;

            pay_1C_guid      := json_pay_detail.GetValue('Ref_Key').Value;
            type_nds_name_1C := json_pay_detail.GetValue('СтавкаНДС').Value;

            if ClientDS_Result.FindKey([pay_1C_guid, contract_id, type_nds_name_1C]) then begin
              // Если платеж найден, то обновляем сумму
              ClientDS_Result.Edit;
              if ClientDS_Result.FieldByName('pay_sum').AsCurrency >= 0 then
                ClientDS_Result.FieldByName('pay_sum').Value := ClientDS_Result.FieldByName('pay_sum').AsCurrency + StrToCurrDef(ReplaceStr(json_pay_detail.GetValue('СуммаПлатежа').Value,'.',','), 0)
              else
                ClientDS_Result.FieldByName('pay_sum').Value := ClientDS_Result.FieldByName('pay_sum').AsCurrency - StrToCurrDef(ReplaceStr(json_pay_detail.GetValue('СуммаПлатежа').Value,'.',','), 0);


              Q.SQL.Clear;
              Q.SQL.Add('SELECT pay_id, pay_cod, pay_sum, pay_date, contract_id, currency_id, pay_note, pay_comment, incomming_cod FROM pay WHERE pay_1C_GUID = ''' + json_pay_detail.GetValue('Ref_Key').Value + '''');
              Q.Open;

              if Q.RecordCount > 0 then begin
                ClientDS_Result.FieldByName('pay_id').Value := Q.FieldByName('pay_id').AsInteger;

                if  (ClientDS_Result.FieldByName('pay_sum').Value <> Q.FieldByName('pay_sum').Value) or
                    (ClientDS_Result.FieldByName('pay_cod').Value <> Q.FieldByName('pay_cod').Value) or
                    (ClientDS_Result.FieldByName('incomming_cod').Value <> Q.FieldByName('incomming_cod').Value) or
                    (ClientDS_Result.FieldByName('pay_date').Value <> Q.FieldByName('pay_date').Value) or
                    (ClientDS_Result.FieldByName('contract_id').Value <> Q.FieldByName('contract_id').Value) or
                    (ClientDS_Result.FieldByName('currency_id').Value <> Q.FieldByName('currency_id').Value) or
                    (ClientDS_Result.FieldByName('pay_note').Value <> Q.FieldByName('pay_note').Value) or
                    (ClientDS_Result.FieldByName('pay_comment').Value <> Q.FieldByName('pay_comment').Value)
                then begin
                  ClientDS_Result.FieldByName('result').Value := 1;
                end else
                  ClientDS_Result.FieldByName('result').Value := -9;
              end else begin
                ClientDS_Result.FieldByName('pay_id').Value := null;
                ClientDS_Result.FieldByName('result').Value := 0;
              end;

              ClientDS_Result.Post;

            end else begin
              // Добавляем новый платеж

              ClientDS_Result.Append;
              ClientDS_Result.FieldByName('contract_id'       ).Value := contract_id;
              ClientDS_Result.FieldByName('type_contract'     ).Value := type_contract;
              ClientDS_Result.FieldByName('type_contract_1C'  ).Value := type_contract_1C;

              ClientDS_Result.FieldByName('pay_1C_GUID'       ).Value := json_pay_detail.GetValue('Ref_Key').Value;
              ClientDS_Result.FieldByName('pay_cod'           ).Value := json_pay.GetValue('Number').Value;
              ClientDS_Result.FieldByName('incomming_cod'     ).Value := json_pay.GetValue('НомерВходящегоДокумента').Value;
              ClientDS_Result.FieldByName('pay_date'          ).Value := AnyStringToDate('YYYY-MM-DD',json_pay.GetValue('Date').Value);
              ClientDS_Result.FieldByName('pay_sum'           ).Value := StrToCurrDef(ReplaceStr(json_pay_detail.GetValue('СуммаПлатежа').Value,'.',','), 0);
              ClientDS_Result.FieldByName('pay_note'          ).Value := json_pay.GetValue('НазначениеПлатежа').Value;
              ClientDS_Result.FieldByName('excange_val'       ).Value := json_pay_detail.GetValue('КурсВзаиморасчетов').Value;

              if ClientDS_InfObj.FindKey([json_pay.GetValue('СчетОрганизации_Key').Value]) then begin
                if ClientDS_InfObj.FindKey([ClientDS_InfObj.FieldByName('inf_obj_name').AsString]) then begin
                  ClientDS_Result.FieldByName('pay_comment'           ).Value := ClientDS_InfObj.FieldByName('inf_obj_cod').AsString + ' ' + ClientDS_InfObj.FieldByName('inf_obj_name').AsString;
                end;
              end;

              ClientDS_Result.FieldByName('type_nds_name'     ).Value := json_pay_detail.GetValue('СтавкаНДС').Value;
              if json_pay_detail.GetValue('СтавкаНДС').Value = 'НДС20' then begin
                ClientDS_Result.FieldByName('type_nds_id'     ).Value := 966043;
              end;
              if json_pay_detail.GetValue('СтавкаНДС').Value = 'НДС0' then begin
                ClientDS_Result.FieldByName('type_nds_id'     ).Value := 523379;
              end;
              if json_pay_detail.GetValue('СтавкаНДС').Value = '' then begin
                ClientDS_Result.FieldByName('type_nds_id'     ).Value := 523380;
              end;

              if ClientDS_InfObj.FindKey([json_pay.GetValue('ВалютаДокумента_Key').Value]) then begin
                Q.SQL.Clear;
                Q.SQL.Add('SELECT * FROM currency WHERE currency_cod = ''' + ClientDS_InfObj.FieldByName('inf_obj_cod').AsString + '''');
                Q.Open;

                ClientDS_Result.FieldByName('currency_id'        ).Value := Q.FieldByName('currency_id').Value;
                ClientDS_Result.FieldByName('currency_cod'       ).Value := Q.FieldByName('currency_cod').Value;
                ClientDS_Result.FieldByName('brief_name'         ).Value := Q.FieldByName('brief_name').Value;
              end;

              Q.SQL.Clear;
              Q.SQL.Add('SELECT pay_id, pay_cod, pay_sum, pay_date, contract_id, currency_id, pay_note, pay_comment, incomming_cod FROM pay WHERE pay_1C_GUID = ''' + json_pay_detail.GetValue('Ref_Key').Value + '''');
              Q.Open;

              if Q.RecordCount > 0 then begin
                ClientDS_Result.FieldByName('pay_id').Value := Q.FieldByName('pay_id').AsInteger;

                if  (ClientDS_Result.FieldByName('pay_sum').Value <> Q.FieldByName('pay_sum').Value) or
                    (ClientDS_Result.FieldByName('pay_cod').Value <> Q.FieldByName('pay_cod').Value) or
                    (ClientDS_Result.FieldByName('incomming_cod').Value <> Q.FieldByName('incomming_cod').Value) or
                    (ClientDS_Result.FieldByName('pay_date').Value <> Q.FieldByName('pay_date').Value) or
                    (ClientDS_Result.FieldByName('contract_id').Value <> Q.FieldByName('contract_id').Value) or
                    (ClientDS_Result.FieldByName('currency_id').Value <> Q.FieldByName('currency_id').Value) or
                    (ClientDS_Result.FieldByName('pay_note').Value <> Q.FieldByName('pay_note').Value) or
                    (ClientDS_Result.FieldByName('pay_comment').Value <> Q.FieldByName('pay_comment').Value)
                then begin
                  ClientDS_Result.FieldByName('result').Value := 1;
                end else
                  ClientDS_Result.FieldByName('result').Value := -9;
              end else begin
                ClientDS_Result.FieldByName('pay_id').Value := null;
                ClientDS_Result.FieldByName('result').Value := 0;
              end;

              ClientDS_Result.Post;
            end;
          end;
        end;
      end;
    end;

    Q.SQL.Clear;
    Q.SQL.Add('SELECT pay_id, pay_1C_GUID FROM view_pay WHERE pay_1C_GUID is not null and type_pay=0 and pay_date>''' + FormatDateTime('yyyymmdd', Date-period) + ''' and users_group_cod = ''' + users_group_cod + '''');
    Q.Open;
    while not Q.Eof do begin
      if not ClientDS_Result.FindKey([Q.FieldByName('pay_1C_GUID').Value]) then begin
        ClientDS_Result.Append;
        ClientDS_Result.FieldByName('pay_id').Value := Q.FieldByName('pay_id').Value;
        ClientDS_Result.FieldByName('result').Value := 2;
        ClientDS_Result.Post;
      end;
      Q.Next;
    end;

    res := ClientDS_Result.XMLData;

    json_obj.Free;
    MessageResult.Free;
    http.Free;
    ClientDS_InfObj.Free;
    ClientDS_Result.Free;
    Q_Contract.Free;
    Q.Free;
    connect.Free;
  except
    on E: Exception do begin
      res := '';
      if MessageResult <> nil then MessageResult.Free;
      if http <> nil then http.Free;
      ClientDS_InfObj.Free;
      ClientDS_Result.Free;
      Q_Contract.Free;
      Q.Free;
      connect.Free;
    end;
  end;
  Result := res;
end;


function Get1C_PayOut(ip_address: string; users_name: string; users_password: string; connection_string: string; users_group_cod: string; period: integer): string;
var
  ClientDS_InfObj : TClientDataSet;
  ClientDS_Result : TClientDataSet;
  http            : THTTPClient;
  headers         : TNetHeaders;   // заголовок для http запроса
  response        : IHTTPResponse; // результат http запроса
  MessageResult   : TStringStream; // Результат
  json_obj        : TJSONObject;
  json_arr        : TJSONArray;
  json_pay        : TJSONObject;
  json_arr_pay_detail    : TJSONArray;
  json_pay_detail : TJSONObject;
  k,j             : integer;
  res             : string;
  task_address    : string;
  connect         : TADOConnection;
  Q, Q_Contract   : TADOQuery;
  contract_id     : integer;

  type_nds_name_1C : string;
  pay_1C_guid      : string;
  type_contract    : integer;
  type_contract_1C : integer;
  contract_GUID    : string;
begin
  try
    connect                  := TADOConnection.Create(nil);
    connect.ConnectionString := connection_string;
    connect.KeepConnection   := False;
    connect.LoginPrompt      := False;
    connect.Connected        := True;

    Q := TADOQuery.Create(nil);
    Q.Connection := connect;

    Q_Contract := TADOQuery.Create(nil);
    Q_Contract.Connection := connect;
    Q_Contract.SQL.Add('SELECT contract_id, contract_1c_GUID, date_begin_load, type_contract, contract_type_name FROM view_contract_1C WHERE users_group_cod = ''' + users_group_cod + ''' ');
    Q_Contract.Open;


    ClientDS_InfObj := TClientDataSet.Create(nil);
    ClientDS_InfObj.FieldDefs.Add('row_id', ftAutoInc);
    ClientDS_InfObj.FieldDefs.Add('inf_obj_guid', ftString, 200);
    ClientDS_InfObj.FieldDefs.Add('inf_obj_cod' , ftString, 800);
    ClientDS_InfObj.FieldDefs.Add('inf_obj_name', ftString, 800);
    ClientDS_InfObj.FieldDefs.Add('inf_obj_name_full', ftString, 800);
    ClientDS_InfObj.CreateDataSet;
    ClientDS_InfObj.LogChanges := False;
    ClientDS_InfObj.IndexDefs.Add('ClientDS_Index1', 'inf_obj_guid', []);
    ClientDS_InfObj.IndexName := 'ClientDS_Index1';

    ClientDS_Result := TClientDataSet.Create(nil);
    ClientDS_Result.FieldDefs.Add('id', ftAutoInc);
    ClientDS_Result.FieldDefs.Add('pay_id', ftInteger);
    ClientDS_Result.FieldDefs.Add('set_load', ftBoolean);
    ClientDS_Result.FieldDefs.Add('result', ftInteger);
    ClientDS_Result.FieldDefs.Add('contract_id',      ftInteger);
    ClientDS_Result.FieldDefs.Add('type_contract',    ftInteger);
    ClientDS_Result.FieldDefs.Add('type_contract_1C', ftInteger);
    ClientDS_Result.FieldDefs.Add('pay_1C_GUID', ftString, 50);
    ClientDS_Result.FieldDefs.Add('pay_cod', ftString, 250);
    ClientDS_Result.FieldDefs.Add('incomming_cod', ftString, 250);
    ClientDS_Result.FieldDefs.Add('pay_date', ftDateTime);
    ClientDS_Result.FieldDefs.Add('pay_sum', ftCurrency);
    ClientDS_Result.FieldDefs.Add('type_nds_id', ftInteger);
    ClientDS_Result.FieldDefs.Add('type_nds_name', ftString, 20);
    ClientDS_Result.FieldDefs.Add('type_pay', ftInteger);
    ClientDS_Result.FieldDefs.Add('type_pay_name', ftString, 20);
    ClientDS_Result.FieldDefs.Add('set_return', ftBoolean);
    ClientDS_Result.FieldDefs.Add('pay_note', ftString, 250);
    ClientDS_Result.FieldDefs.Add('pay_comment', ftString, 250);
    ClientDS_Result.FieldDefs.Add('currency_id', ftInteger);
    ClientDS_Result.FieldDefs.Add('currency_cod', ftString, 10);
    ClientDS_Result.FieldDefs.Add('brief_name', ftString, 20);
    ClientDS_Result.FieldDefs.Add('excange_val', ftCurrency);
    ClientDS_Result.CreateDataSet;
    ClientDS_Result.LogChanges := False;

    ClientDS_Result.IndexDefs.Add('ClientDS_Index1', 'pay_id', []);
    ClientDS_Result.IndexName := 'ClientDS_Index1';
    ClientDS_Result.IndexDefs.Add('ClientDS_Index2', 'pay_1C_GUID;contract_id;type_nds_name', []);
    ClientDS_Result.IndexName := 'ClientDS_Index2';

    http := THTTPClient.Create;
    http.ContentType := '';
    http.UserAgent   := '';
    http.Accept      := '*/*';

    SetLength(headers, 1);
    headers[0].Name  := 'Authorization';
    headers[0].Value := 'Basic ' + EncodeString(users_name+ ':' + users_password);

    task_address := ip_address + '/Document_СписаниеСРасчетногоСчета';
    task_address := task_address + '?$format=json;odata=nometadata';
    task_address := task_address + '&$inlinecount=allpages';
//    task_address := task_address + '&$select=Ref_Key,НомерВходящегоДокумента,ДатаВходящегоДокумента,СуммаДокумента,ВалютаДокумента_Key,ДоговорКонтрагента_Key,НазначениеПлатежа,СчетОрганизации_Key,СчетБанк_Key, DataVersion';
    task_address := task_address + '&$filter=DeletionMark ne true and ДоговорКонтрагента_Key ne guid''00000000-0000-0000-0000-000000000000'' and ДатаВходящегоДокумента gt datetime''' + FormatDateTime('yyyy-mm-dd', Date-period) + 'T00:00:00''';

    response := http.Get(task_address, nil, headers);

    Get1C_InfCurrency   (ip_address, users_name, users_password, ClientDS_InfObj);
    Get1C_InfBankAccount(ip_address, users_name, users_password, ClientDS_InfObj);
    Get1C_InfBank       (ip_address, users_name, users_password, ClientDS_InfObj);

    MessageResult := TStringStream.Create;
    MessageResult.LoadFromStream(response.ContentStream);
    json_obj := TJSONObject.ParseJSONValue(UTF8ToString(MessageResult.DataString)) as TJSONObject;
    json_arr := json_obj.GetValue('value') as TJSONArray;

    for k := 0 to json_arr.Count-1 do begin
      json_pay := json_arr.Items[k] as TJSONObject;
      json_arr_pay_detail := json_pay.GetValue('РасшифровкаПлатежа') as TJSONArray;
      for j := 0 to json_arr_pay_detail.Count-1 do begin
        json_pay_detail := json_arr_pay_detail.Items[j] as TJSONObject;
        contract_GUID   := json_pay_detail.GetValue('ДоговорКонтрагента_Key').Value;

        if Q_Contract.Locate('contract_1C_guid', contract_GUID, []) then begin
          if AnyStringToDate('YYYY-MM-DD',json_pay.GetValue('Date').Value) >= Q_Contract.FieldByName('date_begin_load').AsDateTime  then begin
            contract_id   := Q_Contract.FieldByName('contract_id').AsInteger;
            type_contract := Q_Contract.FieldByName('type_contract').AsInteger;
            if Q_Contract.FieldByName('contract_type_name').AsString = 'СПокупателем' then
              type_contract_1C := 0
            else
              type_contract_1C := 1;

            pay_1C_guid      := json_pay_detail.GetValue('Ref_Key').Value;
            type_nds_name_1C := json_pay_detail.GetValue('СтавкаНДС').Value;

            if ClientDS_Result.FindKey([pay_1C_guid, contract_id, type_nds_name_1C]) then begin
              // Если платеж найден, то обновляем сумму
              ClientDS_Result.Edit;
              if ClientDS_Result.FieldByName('pay_sum').AsCurrency >= 0 then
                ClientDS_Result.FieldByName('pay_sum').Value := ClientDS_Result.FieldByName('pay_sum').AsCurrency + StrToCurrDef(ReplaceStr(json_pay_detail.GetValue('СуммаПлатежа').Value,'.',','), 0)
              else
                ClientDS_Result.FieldByName('pay_sum').Value := ClientDS_Result.FieldByName('pay_sum').AsCurrency - StrToCurrDef(ReplaceStr(json_pay_detail.GetValue('СуммаПлатежа').Value,'.',','), 0);


              Q.SQL.Clear;
              Q.SQL.Add('SELECT pay_id, pay_cod, pay_sum, pay_date, contract_id, currency_id, pay_note, pay_comment, incomming_cod FROM pay WHERE pay_1C_GUID = ''' + json_pay_detail.GetValue('Ref_Key').Value + '''');
              Q.Open;

              if Q.RecordCount > 0 then begin
                ClientDS_Result.FieldByName('pay_id').Value := Q.FieldByName('pay_id').AsInteger;

                if  (ClientDS_Result.FieldByName('pay_sum').Value <> Q.FieldByName('pay_sum').Value) or
                    (ClientDS_Result.FieldByName('pay_cod').Value <> Q.FieldByName('pay_cod').Value) or
                    (ClientDS_Result.FieldByName('incomming_cod').Value <> Q.FieldByName('incomming_cod').Value) or
                    (ClientDS_Result.FieldByName('pay_date').Value <> Q.FieldByName('pay_date').Value) or
                    (ClientDS_Result.FieldByName('contract_id').Value <> Q.FieldByName('contract_id').Value) or
                    (ClientDS_Result.FieldByName('currency_id').Value <> Q.FieldByName('currency_id').Value) or
                    (ClientDS_Result.FieldByName('pay_note').Value <> Q.FieldByName('pay_note').Value) or
                    (ClientDS_Result.FieldByName('pay_comment').Value <> Q.FieldByName('pay_comment').Value)
                then begin
                  ClientDS_Result.FieldByName('result').Value := 1;
                end else
                  ClientDS_Result.FieldByName('result').Value := -9;
              end else begin
                ClientDS_Result.FieldByName('pay_id').Value := null;
                ClientDS_Result.FieldByName('result').Value := 0;
              end;

              ClientDS_Result.Post;

            end else begin
              // Добавляем новый платеж

              ClientDS_Result.Append;
              ClientDS_Result.FieldByName('contract_id'       ).Value := contract_id;
              ClientDS_Result.FieldByName('type_contract'     ).Value := type_contract;
              ClientDS_Result.FieldByName('type_contract_1C'  ).Value := type_contract_1C;

              ClientDS_Result.FieldByName('pay_1C_GUID'       ).Value := json_pay_detail.GetValue('Ref_Key').Value;
              ClientDS_Result.FieldByName('pay_cod'           ).Value := json_pay.GetValue('Number').Value;
              ClientDS_Result.FieldByName('incomming_cod'     ).Value := json_pay.GetValue('НомерВходящегоДокумента').Value;
              ClientDS_Result.FieldByName('pay_date'          ).Value := AnyStringToDate('YYYY-MM-DD',json_pay.GetValue('Date').Value);
              ClientDS_Result.FieldByName('pay_sum'           ).Value := StrToCurrDef(ReplaceStr(json_pay_detail.GetValue('СуммаПлатежа').Value,'.',','), 0);
              ClientDS_Result.FieldByName('pay_note'          ).Value := json_pay.GetValue('НазначениеПлатежа').Value;
              ClientDS_Result.FieldByName('excange_val'       ).Value := json_pay_detail.GetValue('КурсВзаиморасчетов').Value;

              if ClientDS_InfObj.FindKey([json_pay.GetValue('СчетОрганизации_Key').Value]) then begin
                if ClientDS_InfObj.FindKey([ClientDS_InfObj.FieldByName('inf_obj_name').AsString]) then begin
                  ClientDS_Result.FieldByName('pay_comment'           ).Value := ClientDS_InfObj.FieldByName('inf_obj_cod').AsString + ' ' + ClientDS_InfObj.FieldByName('inf_obj_name').AsString;
                end;
              end;

              ClientDS_Result.FieldByName('type_nds_name'     ).Value := json_pay_detail.GetValue('СтавкаНДС').Value;
              if json_pay_detail.GetValue('СтавкаНДС').Value = 'НДС20' then begin
                ClientDS_Result.FieldByName('type_nds_id'     ).Value := 966043;
              end;
              if json_pay_detail.GetValue('СтавкаНДС').Value = 'НДС0' then begin
                ClientDS_Result.FieldByName('type_nds_id'     ).Value := 523379;
              end;
              if json_pay_detail.GetValue('СтавкаНДС').Value = '' then begin
                ClientDS_Result.FieldByName('type_nds_id'     ).Value := 523380;
              end;

              if ClientDS_InfObj.FindKey([json_pay.GetValue('ВалютаДокумента_Key').Value]) then begin
                Q.SQL.Clear;
                Q.SQL.Add('SELECT * FROM currency WHERE currency_cod = ''' + ClientDS_InfObj.FieldByName('inf_obj_cod').AsString + '''');
                Q.Open;

                ClientDS_Result.FieldByName('currency_id'        ).Value := Q.FieldByName('currency_id').Value;
                ClientDS_Result.FieldByName('currency_cod'       ).Value := Q.FieldByName('currency_cod').Value;
                ClientDS_Result.FieldByName('brief_name'         ).Value := Q.FieldByName('brief_name').Value;
              end;

              Q.SQL.Clear;
              Q.SQL.Add('SELECT pay_id, pay_cod, pay_sum, pay_date, contract_id, currency_id, pay_note, pay_comment, incomming_cod FROM pay WHERE pay_1C_GUID = ''' + json_pay_detail.GetValue('Ref_Key').Value + '''');
              Q.Open;

              if Q.RecordCount > 0 then begin
                ClientDS_Result.FieldByName('pay_id').Value := Q.FieldByName('pay_id').AsInteger;

                if  (ClientDS_Result.FieldByName('pay_sum').Value <> Q.FieldByName('pay_sum').Value) or
                    (ClientDS_Result.FieldByName('pay_cod').Value <> Q.FieldByName('pay_cod').Value) or
                    (ClientDS_Result.FieldByName('incomming_cod').Value <> Q.FieldByName('incomming_cod').Value) or
                    (ClientDS_Result.FieldByName('pay_date').Value <> Q.FieldByName('pay_date').Value) or
                    (ClientDS_Result.FieldByName('contract_id').Value <> Q.FieldByName('contract_id').Value) or
                    (ClientDS_Result.FieldByName('currency_id').Value <> Q.FieldByName('currency_id').Value) or
                    (ClientDS_Result.FieldByName('pay_note').Value <> Q.FieldByName('pay_note').Value) or
                    (ClientDS_Result.FieldByName('pay_comment').Value <> Q.FieldByName('pay_comment').Value)
                then begin
                  ClientDS_Result.FieldByName('result').Value := 1;
                end else
                  ClientDS_Result.FieldByName('result').Value := -9;
              end else begin
                ClientDS_Result.FieldByName('pay_id').Value := null;
                ClientDS_Result.FieldByName('result').Value := 0;
              end;

              ClientDS_Result.Post;
            end;
          end;
        end;
      end;
    end;

    Q.SQL.Clear;
    Q.SQL.Add('SELECT pay_id, pay_1C_GUID FROM view_pay WHERE (pay_1C_GUID is not null) AND (type_pay=1) AND (pay_date>''' + FormatDateTime('yyyymmdd', Date-period) + ''') AND (users_group_cod = ''' + users_group_cod + ''')');
    Q.Open;
    while not Q.Eof do begin
      if not ClientDS_Result.FindKey([Q.FieldByName('pay_1C_GUID').Value]) then begin
        ClientDS_Result.Append;
        ClientDS_Result.FieldByName('pay_id').Value := Q.FieldByName('pay_id').Value;
        ClientDS_Result.FieldByName('result').Value := 2;
        ClientDS_Result.Post;
      end;
      Q.Next;
    end;

    res := ClientDS_Result.XMLData;

    json_obj.Free;
    MessageResult.Free;
    http.Free;
    ClientDS_InfObj.Free;
    ClientDS_Result.Free;
    Q_Contract.Free;
    Q.Free;
    connect.Free;

  except
    on E: Exception do begin
      res := '';
      if MessageResult <> nil then MessageResult.Free;
      if http <> nil then http.Free;
      ClientDS_InfObj.Free;
      ClientDS_Result.Free;
      Q_Contract.Free;
      Q.Free;
      connect.Free;
    end;
  end;
  Result := res;

end;


end.
