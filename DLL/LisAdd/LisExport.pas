unit LisExport;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, OrdersAgree, ADODB, Default, Pretenzia, PretenziaAdd,
  OrdersAgreeAdd, Contract, DBClient, Acts, Raznoe, ClientInvoice, ClientInvoiceAdd, StrUtils, ShellAPI, Vcl.Dialogs, dxGDIPlusAPI, Firm,
  InvoiceScore, InvoiceScoreAdd, DocBlobAdd, InvoiceScoreCorrAdd, DB, VagonArenda, VagonArendaActs, dxCore,
  OrdersPay, OrdersPayAdd, Other,  DocBlob;

function CreateWndContract (AppHand: THandle; type_contract: byte; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd; contract_id: integer): variant; export;
function CreateWndPretenzia(usr_pwd_lis: PUser_pwd; ClientDS: TClientDataSet; type_cod: string): variant; export;
function CreateWndPretenziaParam(pretenzia_id: integer; usr_pwd_lis: PUser_pwd; ClientDS: TClientDataSet): variant; export;
function CreateWndPretenziaFiles(pretenzia_id: integer; usr_pwd_lis: PUser_pwd; ClientDS: TClientDataSet): variant; export;

function CreateWndContractView(AppHand: THandle; type_contract: byte; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd; contract_id: integer): variant; export;
function CreateWndFirmView    (AppHand: THandle; type_contract: byte; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd; firm_id: integer): variant; export;

function CreateGetParamContract(contract_id: integer; var ClientDS: TClientDataSet; usr_pwd_lis: PUser_pwd): variant; export;
function CreateGetBalancePlanContract(contract_id: integer; usr_pwd_lis: PUser_pwd): variant; export;
procedure CreateGetOrdersPayBalance(orders_pay_id: integer; currency_id: integer; usr_pwd_lis: PUser_pwd; var ClientDS: TClientDataSet); export;

function CreateWndDocument     (AppHand: THandle; document_type_cod: string; contract_id: integer; var ClientDS: TClientDataSet; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd; CliantDS_param: TClientDataSet): variant; export;
function CreateGetParamDocument(global_id: integer; var ClientDS: TClientDataSet; ClientDS_Blob: TClientDataSet; usr_pwd_lis: PUser_pwd): variant; export;
function CreateWndDocumentAdd  (AppHand: THandle; global_id: integer; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd; param: integer): variant; export;
function CreateDocumentPrint   (global_id: integer; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd): variant; export;
function CreateDocumentPrint2  (global_id: integer; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd): variant; export;
function CreateSaveDocument    (var ClientDS: TClientDataSet; usr_pwd_lis: PUser_pwd): variant;
function CreateSaveDocBlob     (str_global_id: string; docs_id: integer; docs_status_id: integer; docs_status_cod: string; docs_status_name: string; process_step_name: string; usr_pwd_lis: PUser_pwd): variant;
function CreateDocBlobDelete   (AppHand: THandle; doc_id: integer; usr_pwd: PUser_pwd): variant; export;

function CreateCheckDocument(usr_pwd_lis: PUser_pwd; ClientDS_Main: TClientDataSet; var ClientDS_Detail: TClientDataSet): variant; export;

function CreateGetDocBlobType  (usr_pwd_lis: PUser_pwd; ClientDS: TClientDataSet): variant; export;

function CreateWndDocBlobAdd  (AppHand: THandle; doc_id: integer; global_id: integer; doc_type_cod: string; ClientDS: TClientDataSet; usr_pwd: PUser_pwd):variant; export;
function CreateWndDocBlobList (AppHand: THandle; global_id: integer; caption: string; usr_pwd: PUser_pwd):variant; export;


function CreateWndOrdersAgree(AppHand: THandle; process_id: integer; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd): variant; export;
function CreateWndOrdersAgreeAdd(AppHand: THandle; orders_agree_id: integer; schedule_id: integer; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd): variant; export;
//function CreateWndVagonArenda(AppHand: THandle; usr_pwd_lis: PUser_pwd; type_action: integer; act_num: string; contract_id: integer; act_date: TDateTime): variant; export;
procedure CreateWndPrintInvoiceScore(invoice_score_id: integer; usr_pwd: PUser_pwd); export;

function CreateDocumentSign(global_id: integer; usr_pwd_lis: PUser_pwd): variant; export;

implementation

procedure CreateWndPrintInvoiceScore(invoice_score_id: integer; usr_pwd: PUser_pwd);
var      connect : TADOConnection;
begin
  connect := TADOConnection.Create(nil);
  connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  connect.KeepConnection   := False;
  connect.LoginPrompt      := False;

  PrintInvoiceScore(IntToStr(invoice_score_id), 0, -9, connect);

  connect.Free;
end;


function CreateWndOrdersAgree(AppHand: THandle; process_id: integer; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd): variant;
var local_usr_pwd_docs: PUser_pwd;
begin
  Application.Handle := AppHand;
  new(local_usr_pwd_docs);
  
  try
    local_usr_pwd_docs.users_id     := usr_pwd_docs.users_id;
    local_usr_pwd_docs.user_name    := usr_pwd_docs.user_name;
    local_usr_pwd_docs.user_pass    := usr_pwd_docs.user_pass;
    local_usr_pwd_docs.user_cod     := usr_pwd_docs.user_cod;
    local_usr_pwd_docs.server       := usr_pwd_docs.server;
    local_usr_pwd_docs.catalog      := usr_pwd_docs.catalog;
    local_usr_pwd_docs.session      := usr_pwd_docs.session;
    local_usr_pwd_docs.user_func    := usr_pwd_docs.user_func;
    local_usr_pwd_docs.user_group_id:= usr_pwd_docs.user_group_id;

//    fmOrdersAgree := TfmOrdersAgree.CreateDLL(Application, True, usr_pwd_lis, local_usr_pwd_docs);
//    fmOrdersAgree._SetProcessId := process_id;
//    fmOrdersAgree.ShowModal;

  finally
    dispose(local_usr_pwd_docs);
    fmOrdersAgree.Free;
  end;
end;

function CreateWndOrdersAgreeAdd(AppHand: THandle; orders_agree_id: integer; schedule_id: integer; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd): variant;
var local_usr_pwd_docs: PUser_pwd;
begin
  Application.Handle := AppHand;
  new(local_usr_pwd_docs);
  try
    local_usr_pwd_docs.users_id     := usr_pwd_docs.users_id;
    local_usr_pwd_docs.user_name    := usr_pwd_docs.user_name;
    local_usr_pwd_docs.user_pass    := usr_pwd_docs.user_pass;
    local_usr_pwd_docs.user_cod     := usr_pwd_docs.user_cod;
    local_usr_pwd_docs.server       := usr_pwd_docs.server;
    local_usr_pwd_docs.catalog      := usr_pwd_docs.catalog;
    local_usr_pwd_docs.session      := usr_pwd_docs.session;
    local_usr_pwd_docs.user_func    := usr_pwd_docs.user_func;
    local_usr_pwd_docs.user_group_id:= usr_pwd_docs.user_group_id;

//    fmOrdersAgreeAdd := TfmOrdersAgreeAdd.CreateDLL(Application, usr_pwd_lis, local_usr_pwd_docs);
//    fmOrdersAgreeAdd._SetUpdate   := orders_agree_id;
//    fmOrdersAgreeAdd._SetSchedule := schedule_id;
//    fmOrdersAgreeAdd.ShowModal;
  finally
    dispose(local_usr_pwd_docs);
    fmOrdersAgreeAdd.Free;
  end;
end;


function CreateWndContract(AppHand: THandle; type_contract: byte; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd; contract_id: integer): variant;
var local_usr_pwd_docs: PUser_pwd;
begin
  Application.Handle := AppHand;
  new(local_usr_pwd_docs);

  try
    local_usr_pwd_docs.users_id     := usr_pwd_docs.users_id;
    local_usr_pwd_docs.user_name    := usr_pwd_docs.user_name;
    local_usr_pwd_docs.user_pass    := usr_pwd_docs.user_pass;
    local_usr_pwd_docs.user_cod     := usr_pwd_docs.user_cod;
    local_usr_pwd_docs.server       := usr_pwd_docs.server;
    local_usr_pwd_docs.catalog      := usr_pwd_docs.catalog;
    local_usr_pwd_docs.session      := usr_pwd_docs.session;
    local_usr_pwd_docs.user_func    := usr_pwd_docs.user_func;
    local_usr_pwd_docs.user_group_id:= usr_pwd_docs.user_group_id;


    fmContract := TfmContract.CreateDLL(Application, True, type_contract, usr_pwd_lis, local_usr_pwd_docs);
    fmContract._SetContractId := contract_id;
    if fmContract.ShowModal = mrOk then begin
      if type_contract = 0 then begin
        if fmContract._GetTypeContract in [0,1] then result := VarArrayOf([fmContract._GetContractId])
        else result := VarArrayOf([-8]);
      end;
      if type_contract = 1 then begin
        if fmContract._GetTypeContract = 2 then result := VarArrayOf([fmContract._GetContractId])
        else result := VarArrayOf([-8]);
      end;

    end else result := VarArrayOf([-9]);

  finally
    dispose(local_usr_pwd_docs);
    fmContract.Free;
  end;
end;

function CreateWndPretenziaFiles(pretenzia_id: integer; usr_pwd_lis: PUser_pwd; ClientDS: TClientDataSet): variant;
var  Q, Q2 : TADOQuery;
        SP : TADOStoredProc;
   connect : TADOConnection;
begin
  Connect := TADOConnection.Create(nil);
  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
  Connect.KeepConnection   := False;
  Connect.LoginPrompt      := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT doc_blob.doc_id FROM doc_blob WHERE pretenzia_id = ' + IntToStr(pretenzia_id));
  Q.Open;

  SP := TADOStoredProc.Create(nil);
  SP.Connection := connect;
  SP.ProcedureName := 'sp_blob_GET';

  while not Q.Eof do begin
    ShowTextMessage('Загрузка файлов...' + #10 + 'Осталось ' + IntToStr(Q.RecordCount - Q.RecNo + 1) + ' ...', False);
    SP.Close;
    SP.Parameters.Refresh;
    SP.Parameters.ParamByName('@doc_id').Value := Q.FieldByName('doc_id').Value;
    SP.Open;

    ClientDS.Append;
    ClientDS.FieldByName('doc_id'                    ).Value := SP.FieldByName('doc_id').Value;
    ClientDS.FieldByName('doc_type_cod'              ).Value := SP.FieldByName('doc_type_cod').Value;
    ClientDS.FieldByName('doc_type_describe'         ).Value := SP.FieldByName('doc_type_describe').Value;
    ClientDS.FieldByName('doc_describe'              ).Value := SP.FieldByName('doc_describe').Value;
    ClientDS.FieldByName('file_name'                 ).Value := SP.FieldByName('file_name').Value;
    ClientDS.FieldByName('doc_location_FIO_users_id' ).Value := SP.FieldByName('doc_location_FIO_users_id').Value;
    ClientDS.FieldByName('doc_location_FIO_users'    ).Value := SP.FieldByName('doc_location_FIO_users').Value;
    ClientDS.FieldByName('doc_image_date'            ).Value := SP.FieldByName('doc_image_date').Value;
    ClientDS.FieldByName('doc_location_id'           ).Value := SP.FieldByName('doc_location_id').Value;
    ClientDS.FieldByName('doc_location_name'         ).Value := SP.FieldByName('doc_location_name').Value;
    ClientDS.FieldByName('doc_location_date'         ).Value := SP.FieldByName('doc_location_date').Value;
    ClientDS.FieldByName('sign_customer_id'          ).Value := SP.FieldByName('sign_customer_id').Value;
    ClientDS.FieldByName('sign_customer_name'        ).Value := SP.FieldByName('sign_customer_name').Value;
    ClientDS.FieldByName('sign_self_id'              ).Value := SP.FieldByName('sign_self_id').Value;
    ClientDS.FieldByName('sign_self_name'            ).Value := SP.FieldByName('sign_self_name').Value;
    ClientDS.FieldByName('doc_image_lzh'             ).Value := null;
    ClientDS.FieldByName('global_color'              ).Value := SP.FieldByName('global_color').Value;
    ClientDS.FieldByName('doc_image_size'            ).Value := SP.FieldByName('doc_image_size').Value;
    ClientDS.FieldByName('set_new'                   ).Value := False;
    ClientDS.FieldByName('doc_cod'                   ).Value := SP.FieldByName('doc_cod').Value;
    ClientDS.FieldByName('doc_cod1'                  ).Value := SP.FieldByName('doc_cod1').Value;
    ClientDS.FieldByName('contract_id'               ).Value := SP.FieldByName('contract_id').Value;
    ClientDS.FieldByName('firm_id'                   ).Value := SP.FieldByName('firm_id').Value;
    ClientDS.FieldByName('invoice_id'                ).Value := SP.FieldByName('invoice_id').Value;
    ClientDS.FieldByName('pretenzia_id'              ).Value := SP.FieldByName('pretenzia_id').Value;
    ClientDS.FieldByName('fact_repair_id'            ).Value := SP.FieldByName('fact_repair_id').Value;
    ClientDS.FieldByName('doc_original_date'         ).Value := SP.FieldByName('doc_original_date').Value;
    ClientDS.FieldByName('doc_invoice_score_cod'     ).Value := SP.FieldByName('doc_invoice_score_cod').Value;
    ClientDS.FieldByName('doc_kind_id'               ).Value := SP.FieldByName('doc_kind_id').Value;
    ClientDS.FieldByName('doc_kind_name'             ).Value := SP.FieldByName('doc_kind_name').Value;

    ClientDS.Post;
    Q.Next;
  end;
  ShowTextMessage();

  connect.Free;
  Q.Free;
  SP.Free;
end;

function CreateWndPretenzia(usr_pwd_lis: PUser_pwd; ClientDS: TClientDataSet; type_cod: string): variant;
var pretenzia_id : integer;
    Q : TADOQuery;
    Connect : TADOConnection;
begin
  try
    fmPretenzia := TfmPretenzia.Create(nil, True, usr_pwd_lis);
    if fmPretenzia.ShowModal = mrOk then begin
      pretenzia_id := fmPretenzia._GetPretenziaId;

      Connect := TADOConnection.Create(nil);
      Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
      Connect.KeepConnection   := False;
      Connect.LoginPrompt      := False;

      Q := TADOQuery.Create(nil);
      Q.Connection := Connect;
      Q.SQL.Add('SELECT * FROM view_pretenzia WHERE pretenzia_id = ' + IntToStr(pretenzia_id));
      Q.Open;


      if (type_cod = '4') and (Q.FieldByName('type_pretenzia').AsInteger = 0) then begin
        Result := VarArrayOf([-6]);

      end else if (type_cod = '5') and (Q.FieldByName('type_pretenzia').AsInteger = 1) then begin
        Result := VarArrayOf([-6]);

      end else if (not Q.FieldByName('docs_id').IsNull) and (Q.FieldByName('docs_status_cod').AsString<>'5') then begin
        Result := VarArrayOf([-7]);

      end else begin
        ClientDS.EmptyDataSet;
        ClientDS.Append;
        ClientDS.FieldByName('contract_id'                 ).Value := Q.FieldByName('contract_id').Value;
        ClientDS.FieldByName('contract_cod'                ).Value := Q.FieldByName('contract_cod').Value;
        ClientDS.FieldByName('type_contract'               ).Value := Q.FieldByName('type_contract').Value;
        ClientDS.FieldByName('firm_self_id'                ).Value := Q.FieldByName('firm_self').Value;
        ClientDS.FieldByName('firm_self_name'              ).Value := Q.FieldByName('firm_self_name').Value;
        ClientDS.FieldByName('firm_customer_id'            ).Value := Q.FieldByName('firm_customer').Value;
        ClientDS.FieldByName('firm_customer_name'          ).Value := Q.FieldByName('firm_customer_name').Value;
        ClientDS.FieldByName('firm_property_name'          ).Value := Q.FieldByName('firm_property_name').Value;
        ClientDS.FieldByName('set_passport'                ).Value := Q.FieldByName('set_passport').Value;
        ClientDS.FieldByName('date_begin'                  ).Value := Q.FieldByName('date_begin').Value;
        ClientDS.FieldByName('currency_id'                 ).Value := Q.FieldByName('contract_currency_id').Value;
        ClientDS.FieldByName('brief_name'                  ).Value := Q.FieldByName('contract_brief_name').Value;
        ClientDS.FieldByName('curator_FIO_users'           ).Value := Q.FieldByName('contract_curator_FIO_users').Value;
        ClientDS.FieldByName('set_credit'                  ).Value := Q.FieldByName('set_credit').Value;
        ClientDS.FieldByName('firm_property_cod'           ).Value := Q.FieldByName('firm_property_cod').Value;
        ClientDS.FieldByName('passport_date_end'           ).Value := Q.FieldByName('passport_date_end').Value;
        ClientDS.FieldByName('set_court'                   ).Value := Q.FieldByName('set_court').Value;
        ClientDS.FieldByName('pretenzia_currency_id'       ).Value := Q.FieldByName('currency_id').Value;
        ClientDS.FieldByName('pretenzia_brief_name'        ).Value := Q.FieldByName('brief_name').Value;
        ClientDS.FieldByName('pretenzia_cod'               ).Value := Q.FieldByName('pretenzia_cod').Value;
        ClientDS.FieldByName('pretenzia_date'              ).Value := Q.FieldByName('date_begin').Value;
        ClientDS.FieldByName('pretenzia_sum'               ).Value := Q.FieldByName('pretenzia_sum').Value;
        ClientDS.FieldByName('pretenzia_curator_FIO_users' ).Value := Q.FieldByName('curator_FIO_users').Value;
        ClientDS.FieldByName('type_pretenzia'              ).Value := Q.FieldByName('type_pretenzia').Value;
        ClientDS.FieldByName('type_pretenzia_name'         ).Value := Q.FieldByName('type_pretenzia_name').Value;
        ClientDS.FieldByName('pretenzia_id'                ).Value := Q.FieldByName('pretenzia_id').Value;
        ClientDS.Post;
        result := VarArrayOf([pretenzia_id]);
      end;

      Connect.Free;
      Q.Free;



    end else
      result := VarArrayOf([-9]);
  finally
    fmPretenzia.Free;
  end;
end;


function CreateWndPretenziaParam(pretenzia_id: integer; usr_pwd_lis: PUser_pwd; ClientDS: TClientDataSet): variant;
var Q : TADOQuery;
    Connect : TADOConnection;
begin
  Connect := TADOConnection.Create(nil);
  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
  Connect.KeepConnection   := False;
  Connect.LoginPrompt      := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := Connect;
  Q.SQL.Add('SELECT * FROM view_pretenzia WHERE pretenzia_id = ' + IntToStr(pretenzia_id));
  Q.Open;


  ClientDS.EmptyDataSet;
  ClientDS.Append;
  ClientDS.FieldByName('contract_id'                 ).Value := Q.FieldByName('contract_id').Value;
  ClientDS.FieldByName('contract_cod'                ).Value := Q.FieldByName('contract_cod').Value;
  ClientDS.FieldByName('type_contract'               ).Value := Q.FieldByName('type_contract').Value;
  ClientDS.FieldByName('firm_self_id'                ).Value := Q.FieldByName('firm_self').Value;
  ClientDS.FieldByName('firm_self_name'              ).Value := Q.FieldByName('firm_self_name').Value;
  ClientDS.FieldByName('firm_customer_id'            ).Value := Q.FieldByName('firm_customer').Value;
  ClientDS.FieldByName('firm_customer_name'          ).Value := Q.FieldByName('firm_customer_name').Value;
  ClientDS.FieldByName('firm_property_name'          ).Value := Q.FieldByName('firm_property_name').Value;
  ClientDS.FieldByName('set_passport'                ).Value := Q.FieldByName('set_passport').Value;
  ClientDS.FieldByName('date_begin'                  ).Value := Q.FieldByName('date_begin').Value;
  ClientDS.FieldByName('currency_id'                 ).Value := Q.FieldByName('contract_currency_id').Value;
  ClientDS.FieldByName('brief_name'                  ).Value := Q.FieldByName('contract_brief_name').Value;
  ClientDS.FieldByName('curator_FIO_users'           ).Value := Q.FieldByName('contract_curator_FIO_users').Value;
  ClientDS.FieldByName('set_credit'                  ).Value := Q.FieldByName('set_credit').Value;
  ClientDS.FieldByName('firm_property_cod'           ).Value := Q.FieldByName('firm_property_cod').Value;
  ClientDS.FieldByName('passport_date_end'           ).Value := Q.FieldByName('passport_date_end').Value;
  ClientDS.FieldByName('set_court'                   ).Value := Q.FieldByName('set_court').Value;
  ClientDS.FieldByName('pretenzia_currency_id'       ).Value := Q.FieldByName('currency_id').Value;
  ClientDS.FieldByName('pretenzia_brief_name'        ).Value := Q.FieldByName('brief_name').Value;
  ClientDS.FieldByName('pretenzia_cod'               ).Value := Q.FieldByName('pretenzia_cod').Value;
  ClientDS.FieldByName('pretenzia_date'              ).Value := Q.FieldByName('date_begin').Value;
  ClientDS.FieldByName('pretenzia_sum'               ).Value := Q.FieldByName('pretenzia_sum').Value;
  ClientDS.FieldByName('pretenzia_curator_FIO_users' ).Value := Q.FieldByName('curator_FIO_users').Value;
  ClientDS.FieldByName('type_pretenzia'              ).Value := Q.FieldByName('type_pretenzia').Value;
  ClientDS.FieldByName('type_pretenzia_name'         ).Value := Q.FieldByName('type_pretenzia_name').Value;
  ClientDS.FieldByName('pretenzia_id'                ).Value := Q.FieldByName('pretenzia_id').Value;
  ClientDS.Post;

  Connect.Free;
  Q.Free;


  result := VarArrayOf([pretenzia_id]);
end;


function CreateGetParamContract(contract_id: integer; var ClientDS: TClientDataSet; usr_pwd_lis: PUser_pwd): variant; export;
var       Q : TADOQuery;
    Connect : TADOConnection;
begin
  try
    Connect := TADOConnection.Create(nil);
    Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
    Connect.KeepConnection   := False;
    Connect.LoginPrompt      := False;

    Q := TADOQuery.Create(nil);
    Q.Connection := Connect;
    Q.SQL.Add('SELECT * FROM view_contract WHERE contract_id = ' + IntToStr(contract_id));
    Q.Open;

    if Q.RecordCount = 1 then begin
      ClientDS.EmptyDataSet;
      ClientDS.Append;
      ClientDS.FieldByName('contract_id'        ).Value := Q.FieldByName('contract_id').Value;
      ClientDS.FieldByName('contract_cod'       ).Value := Q.FieldByName('contract_cod').Value;
      ClientDS.FieldByName('type_contract'      ).Value := Q.FieldByName('type_contract').Value;
      ClientDS.FieldByName('firm_self_id'       ).Value := Q.FieldByName('firm_self').Value;
      ClientDS.FieldByName('firm_self_name'     ).Value := Q.FieldByName('firm_self_name').Value;
      ClientDS.FieldByName('firm_customer_id'   ).Value := Q.FieldByName('firm_customer').Value;
      ClientDS.FieldByName('firm_customer_name' ).Value := Q.FieldByName('firm_customer_name').Value;
      ClientDS.FieldByName('firm_property_name' ).Value := Q.FieldByName('firm_property_name').Value;
      ClientDS.FieldByName('firm_property_cod'  ).Value := Q.FieldByName('firm_property_cod').Value;
      ClientDS.FieldByName('set_passport'       ).Value := Q.FieldByName('set_passport').Value;
      ClientDS.FieldByName('date_begin'         ).Value := Q.FieldByName('date_begin').Value;
      ClientDS.FieldByName('currency_id'        ).Value := Q.FieldByName('currency_id').Value;
      ClientDS.FieldByName('brief_name'         ).Value := Q.FieldByName('brief_name').Value;
      ClientDS.FieldByName('curator_FIO_users'  ).Value := Q.FieldByName('curator_FIO_users').Value;
      ClientDS.FieldByName('set_credit'         ).Value := Q.FieldByName('set_credit').Value;
      ClientDS.FieldByName('passport_date_end'  ).Value := Q.FieldByName('passport_date_end').Value;
      ClientDS.FieldByName('set_court'          ).Value := Q.FieldByName('set_court').Value;
      if ClientDS.FindField('firm_customer_inn') <> nil then ClientDS.FieldByName('firm_customer_inn'  ).Value := Q.FieldByName('firm_customer_inn').Value;
      ClientDS.Post;
    end;

    Q.Free;
    Connect.Free;

    result := VarArrayOf([contract_id]);
  except
    result := VarArrayOf([-9]);
  end;
end;

procedure CreateGetOrdersPayBalance(orders_pay_id: integer; currency_id: integer; usr_pwd_lis: PUser_pwd; var ClientDS: TClientDataSet);
var SP_shp_invoice_balance_GET : TADOStoredProc;
                       Connect : TADOConnection;
                             Q : TADOQuery;
                            id : integer;
begin
  Connect := TADOConnection.Create(nil);
  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
  Connect.KeepConnection   := False;
  Connect.LoginPrompt      := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT * FROM view_orders_pay_detail WHERE orders_pay_id =' + IntToStr(orders_pay_id));
  Q.Open;

  SP_shp_invoice_balance_GET := TADOStoredProc.Create(nil);
  SP_shp_invoice_balance_GET.Connection := Connect;
  SP_shp_invoice_balance_GET.ProcedureName := 'SP_shp_invoice_balance_GET_new';


  while not Q.Eof do begin

    SP_shp_invoice_balance_GET.Parameters.Refresh;
    SP_shp_invoice_balance_GET.Parameters.ParamByName('@contract_id').Value := Q.FieldByName('contract_id').AsInteger;
    SP_shp_invoice_balance_GET.Parameters.ParamByName('@date_begin' ).Value := Date;
    SP_shp_invoice_balance_GET.Parameters.ParamByName('@date_end'   ).Value := Date;
    SP_shp_invoice_balance_GET.Parameters.ParamByName('@type_result').Value := 10;
    SP_shp_invoice_balance_GET.Parameters.ParamByName('@currency_id').Value := Q.FieldByName('currency_id').AsInteger;
    SP_shp_invoice_balance_GET.Parameters.ParamByName('@set_return' ).Value := False;
    SP_shp_invoice_balance_GET.Parameters.ParamByName('@str_orders_pay_id').Value := IntToStr(orders_pay_id);

    try
      SP_shp_invoice_balance_GET.ExecProc;
      if SP_shp_invoice_balance_GET.Parameters.ParamByName('@str_error').Value <> null then begin

        ClientDS.Append;
        ClientDS.FieldByName('contract_id'        ).Value := Q.FieldByName('contract_id').AsInteger;
        ClientDS.FieldByName('firm_customer_name' ).Value := Q.FieldByName('client_firm_customer_name').AsString + ' (' + SP_shp_invoice_balance_GET.Parameters.ParamByName('@str_error').Value + ')';
        ClientDS.FieldByName('type_sum'           ).Value := 1;
        ClientDS.FieldByName('type_sum_name'      ).Value := '';
        ClientDS.FieldByName('balance_sum'        ).Value := null;
        ClientDS.FieldByName('image_index'        ).Value := 27;
        ClientDS.Post;

      end else begin

        ClientDS.Append;
        ClientDS.FieldByName('contract_id'        ).Value := Q.FieldByName('contract_id').AsInteger;
        ClientDS.FieldByName('firm_customer_name' ).Value := Q.FieldByName('client_firm_customer_name').AsString + ' (' + FormatDateTime('dd.mm.yyyy', Date) + ')';
        ClientDS.FieldByName('type_sum'           ).Value := 1;
        ClientDS.FieldByName('type_sum_name'      ).Value := 'Баланс после согласования заявки';
        ClientDS.FieldByName('balance_sum'        ).Value := SP_shp_invoice_balance_GET.Parameters.ParamByName('@out_balance_plan_end').Value;// - SP_shp_invoice_balance_GET.Parameters.ParamByName('@out_orders_pay_active').Value - SP_shp_invoice_balance_GET.Parameters.ParamByName('@out_orders_pay_wait').Value;
        ClientDS.FieldByName('image_index'        ).Value := 27;
        ClientDS.Post;

        id := ClientDS.FieldByName('balance_id').Value;
//        ClientDS.Append;
//        ClientDS.FieldByName('balance_parent_id'  ).Value := id;
//        ClientDS.FieldByName('contract_id'        ).Value := Q.FieldByName('contract_id').AsInteger;
//        ClientDS.FieldByName('firm_customer_name' ).Value := 'Баланс на ' + FormatDateTime('dd.mm.yyyy', Date);
//        ClientDS.FieldByName('type_sum'           ).Value := 2;
//        ClientDS.FieldByName('type_sum_name'      ).Value := 'Баланс на ' + FormatDateTime('dd.mm.yyyy', Date);
//        ClientDS.FieldByName('balance_sum'        ).Value := SP_shp_invoice_balance_GET.Parameters.ParamByName('@out_balance_plan_end').Value;
//        ClientDS.FieldByName('image_index'        ).Value := 27;
//        ClientDS.Post;

        ClientDS.Append;
        ClientDS.FieldByName('balance_parent_id'  ).Value := id;
        ClientDS.FieldByName('contract_id'        ).Value := Q.FieldByName('contract_id').AsInteger;
        ClientDS.FieldByName('firm_customer_name' ).Value := 'Сумма запущенных заявок';
        ClientDS.FieldByName('type_sum'           ).Value := 3;
        ClientDS.FieldByName('type_sum_name'      ).Value := 'Сумма запущенных заявок';
        ClientDS.FieldByName('balance_sum'        ).Value := SP_shp_invoice_balance_GET.Parameters.ParamByName('@out_orders_pay_work').Value;
        ClientDS.FieldByName('image_index'        ).Value := 27;
        ClientDS.Post;

        ClientDS.Append;
        ClientDS.FieldByName('balance_parent_id'  ).Value := id;
        ClientDS.FieldByName('contract_id'        ).Value := Q.FieldByName('contract_id').AsInteger;
        ClientDS.FieldByName('firm_customer_name' ).Value := 'Сумма заявки';
        ClientDS.FieldByName('type_sum'           ).Value := 4;
        ClientDS.FieldByName('type_sum_name'      ).Value := 'Сумма заявки';
        ClientDS.FieldByName('balance_sum'        ).Value := SP_shp_invoice_balance_GET.Parameters.ParamByName('@out_orders_pay_active').Value;
        ClientDS.FieldByName('image_index'        ).Value := 27;
        ClientDS.Post;

        ClientDS.Append;
        ClientDS.FieldByName('balance_parent_id'  ).Value := id;
        ClientDS.FieldByName('contract_id'        ).Value := Q.FieldByName('contract_id').AsInteger;
        ClientDS.FieldByName('firm_customer_name' ).Value := 'Сумма заявок на оплате';
        ClientDS.FieldByName('type_sum'           ).Value := 5;
        ClientDS.FieldByName('type_sum_name'      ).Value := 'Сумма заявок на оплате';
        ClientDS.FieldByName('balance_sum'        ).Value := SP_shp_invoice_balance_GET.Parameters.ParamByName('@out_orders_pay_wait').Value;
        ClientDS.FieldByName('image_index'        ).Value := 27;
        ClientDS.Post;

        ClientDS.Append;
        ClientDS.FieldByName('balance_parent_id'  ).Value := id;
        ClientDS.FieldByName('contract_id'        ).Value := Q.FieldByName('contract_id').AsInteger;
        ClientDS.FieldByName('firm_customer_name' ).Value := 'Баланс после согласования заявки';
        ClientDS.FieldByName('type_sum'           ).Value := 6;
        ClientDS.FieldByName('type_sum_name'      ).Value := 'Баланс после согласования заявки';
        ClientDS.FieldByName('balance_sum'        ).Value := SP_shp_invoice_balance_GET.Parameters.ParamByName('@out_balance_plan_end').Value - SP_shp_invoice_balance_GET.Parameters.ParamByName('@out_orders_pay_active').Value - SP_shp_invoice_balance_GET.Parameters.ParamByName('@out_orders_pay_wait').Value;
        ClientDS.FieldByName('image_index'        ).Value := 27;
        ClientDS.Post;

      end;
    except
    end;

    Q.Next;
  end;

  Q.Free;
  SP_shp_invoice_balance_GET.Free;
  Connect.Free;
end;

function CreateGetBalancePlanContract(contract_id: integer; usr_pwd_lis: PUser_pwd): variant;
var SP_invoice_balance_GET : TADOStoredProc;
                   Connect : TADOConnection;
begin
  Connect := TADOConnection.Create(nil);
  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
  Connect.KeepConnection   := False;
  Connect.LoginPrompt      := False;


  SP_invoice_balance_GET := TADOStoredProc.Create(nil);
  SP_invoice_balance_GET.Connection := Connect;
  SP_invoice_balance_GET.ProcedureName := 'SP_invoice_balance_GET_new';
  SP_invoice_balance_GET.Parameters.Refresh;
  SP_invoice_balance_GET.Parameters.ParamByName('@contract_id'  ).Value := contract_id;
  SP_invoice_balance_GET.Parameters.ParamByName('@date_begin'   ).Value := Date;
  SP_invoice_balance_GET.Parameters.ParamByName('@date_end'     ).Value := Date;
  SP_invoice_balance_GET.Parameters.ParamByName('@date_current' ).Value := Date;

  try
    SP_invoice_balance_GET.ExecProc;
    if SP_invoice_balance_GET.Parameters.ParamByName('@str_error').Value <> null then begin
      Result := VarArrayOf([-9,SP_invoice_balance_GET.Parameters.ParamByName('@str_error').Value]);
    end else begin
      Result := VarArrayOf([SP_invoice_balance_GET.Parameters.ParamByName('@out_balance_plan_end').Value]);
    end;
  except
    Result := VarArrayOf([-9,'Ошибка.']);
  end;

  SP_invoice_balance_GET.Free;
  Connect.Free;


end;


function CreateGetParamDocument(global_id: integer; var ClientDS: TClientDataSet; ClientDS_Blob: TClientDataSet; usr_pwd_lis: PUser_pwd): variant;
var             Q, Q2 : TADOQuery;
              Connect : TADOConnection;
       sp_acts_modify : TADOStoredProc;
sp_BLOB_DETAIL_modify : TADOStoredProc;
    sp_invoice_modify : TADOStoredProc;

begin
  try

    Connect := TADOConnection.Create(nil);
    Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
    Connect.KeepConnection   := False;
    Connect.LoginPrompt      := False;

    Q := TADOQuery.Create(nil);
    Q.Connection := Connect;
    Q.SQL.Add('SELECT	global_id, object_physic_name ');
    Q.SQL.Add('FROM	  global_id LEFT JOIN object_base ON global_id.object_id = object_base.object_id');
    Q.SQL.Add('WHERE	global_id = ' + IntToStr(global_id));
    Q.Open;
    case IndexText(Q.FieldByName('object_physic_name').AsString, ['INVOICE','ACTS','INVOICE_SCORE','PRETENZIA','DOC_BLOB','VAGON_ARENDA_ACTS','ORDERS_PAY','SHP_BARGAIN_ADD']) of
       0:begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT * FROM view_invoice WHERE invoice_id = ' + IntToStr(global_id));
          Q.Open;

          if Q.RecordCount = 1 then begin
            ClientDS.EmptyDataSet;

            SP_invoice_modify := TADOStoredProc.Create(nil);
            SP_invoice_modify.Connection := connect;
            SP_invoice_modify.ProcedureName := 'sp_invoice_modify';
            SP_invoice_modify.Parameters.Refresh;
            SP_invoice_modify.Parameters.ParamByName('@invoice_id' ).Value := global_id;
            SP_invoice_modify.Parameters.ParamByName('@type_action').Value := 10;
            SP_invoice_modify.Open;

            ClientDS.Append;
            ClientDS.FieldByName('document_id'          ).Value := Q.FieldByName('invoice_id').Value;
            ClientDS.FieldByName('document_type_cod'    ).Value := 10;
            ClientDS.FieldByName('document_type_name'   ).Value := 'Счет';
            ClientDS.FieldByName('document_cod'         ).Value := Q.FieldByName('invoice_cod').Value;
            ClientDS.FieldByName('document_date'        ).Value := Q.FieldByName('invoice_date').Value;
            ClientDS.FieldByName('document_sum'         ).Value := Q.FieldByName('invoice_sum').Value;
            ClientDS.FieldByName('document_currency_id' ).Value := Q.FieldByName('currency_id').Value;
            ClientDS.FieldByName('brief_name'           ).Value := Q.FieldByName('brief_name').Value;
            ClientDS.FieldByName('document_date_delete' ).Value := null;
            ClientDS.FieldByName('contract_id'          ).Value := Q.FieldByName('contract_id').Value;
            ClientDS.FieldByName('contract_cod'         ).Value := Q.FieldByName('contract_cod').Value;
            ClientDS.FieldByName('type_contract'        ).Value := Q.FieldByName('type_contract').Value;
            case Q.FieldByName('type_contract').Value of
               0: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с клиентом';
               1: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с субподрядчиком';
               2: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор администрации';
              -1: ClientDS.FieldByName('type_contract_name'   ).Value := null;
            end;
            ClientDS.FieldByName('date_begin'           ).Value := Q.FieldByName('date_begin').Value;
            ClientDS.FieldByName('firm_self_id'         ).Value := Q.FieldByName('firm_self').Value;
            ClientDS.FieldByName('firm_self_name'       ).Value := Q.FieldByName('firm_self_name').Value;
            ClientDS.FieldByName('firm_customer_id'     ).Value := Q.FieldByName('firm_customer').Value;
            ClientDS.FieldByName('firm_customer_name'   ).Value := Q.FieldByName('firm_customer_name').Value;
            if ClientDS.FindField('files_name') <> nil then ClientDS.FieldByName('files_name').Value := SP_invoice_modify.FieldByName('file_name').AsString;
            if ClientDS.FindField('files_blob') <> nil then ClientDS.FieldByName('files_blob').Value := TArray<Byte>(LZHUnPack(SP_invoice_modify.FieldByName('invoice_image').AsBytes));
            if ClientDS.FindField('bank_firm_contact_name') <> nil then ClientDS.FieldByName('bank_firm_contact_name').Value := Q.FieldByName('header_bank').Value;
            ClientDS.Post;

            if ClientDS_Blob <> nil then begin
              ClientDS_Blob.Append;
              ClientDS_Blob.FieldByName('files_name').Value := SP_invoice_modify.FieldByName('file_name').AsString;
              ClientDS_Blob.FieldByName('files_date').Value := Q.FieldByName('invoice_date').Value;
              ClientDS_Blob.FieldByName('set_main'  ).Value := True;
              ClientDS_Blob.FieldByName('comment'   ).Value := null;
              ClientDS_Blob.FieldByName('files_blob_lzh').Value := SP_invoice_modify.FieldByName('invoice_image').Value;
              ClientDS_Blob.Post;
            end;

            SP_invoice_modify.Free;
          end;

          result := VarArrayOf([global_id]);
        end;
      1:begin
          SP_acts_modify := TADOStoredProc.Create(nil);
          SP_acts_modify.Connection := connect;
          SP_acts_modify.ProcedureName := 'sp_acts_modify';
          SP_acts_modify.Parameters.Refresh;
          SP_acts_modify.Parameters.ParamByName('@acts_id'    ).Value := global_id;
          SP_acts_modify.Parameters.ParamByName('@type_action').Value := 10;
          SP_acts_modify.Open;

          Q.SQL.Clear;
          Q.SQL.Add('SELECT * FROM view_acts WHERE acts_id = ' + IntToStr(global_id));
          Q.Open;

//          Q2 := TADOQuery.Create(nil);
//          Q2.Connection := Connect;

          if Q.RecordCount = 1 then begin
            ClientDS.EmptyDataSet;
            ClientDS.Append;
            ClientDS.FieldByName('document_id'          ).Value := Q.FieldByName('acts_id').Value;
            ClientDS.FieldByName('document_type_cod'    ).Value := 20;
            ClientDS.FieldByName('document_type_name'   ).Value := 'LIS: Акт';
            ClientDS.FieldByName('document_cod'         ).Value := Q.FieldByName('acts_cod').Value;
            ClientDS.FieldByName('document_date'        ).Value := Q.FieldByName('acts_date').Value;

//            Q2.SQL.Clear;
//            Q2.SQL.Add('SELECT  isnull(sum(view_shp_bargain_add.add_sum),0) add_sum');
//            Q2.SQL.Add('FROM	  view_shp_bargain_add');
//            Q2.SQL.Add('        inner join acts_bargain on view_shp_bargain_add.bargain_add_id = acts_bargain.bargain_id');
//            Q2.SQL.Add('WHERE	  acts_id = ' + IntToStr(Q.FieldByName('acts_id').AsInteger));
//            Q2.Open;
//
//            if Q2.RecordCount > 0 then
//              if Q2.FieldByName('add_sum').AsCurrency <> 0 then begin
//                ClientDS.FieldByName('document_sum'         ).Value := Q2.FieldByName('add_sum').Value
//              end
//              else
//                ClientDS.FieldByName('document_sum'         ).Value := Q.FieldByName('acts_sum').Value
//            else
            ClientDS.FieldByName('document_sum'         ).Value := Q.FieldByName('acts_sum').Value;
            ClientDS.FieldByName('document_currency_id' ).Value := Q.FieldByName('acts_currency_id').Value;
            ClientDS.FieldByName('brief_name'           ).Value := Q.FieldByName('brief_name').Value;
            ClientDS.FieldByName('document_date_delete' ).Value := null;
            ClientDS.FieldByName('contract_id'          ).Value := Q.FieldByName('contract_id').Value;
            ClientDS.FieldByName('contract_cod'         ).Value := Q.FieldByName('contract_cod').Value;
            ClientDS.FieldByName('type_contract'        ).Value := Q.FieldByName('type_contract').Value;
            case Q.FieldByName('type_contract').Value of
               0: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с клиентом';
               1: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с субподрядчиком';
               2: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор администрации';
              -1: ClientDS.FieldByName('type_contract_name'   ).Value := null;
            end;
            ClientDS.FieldByName('date_begin'           ).Value := Q.FieldByName('contract_date_begin').Value;
            ClientDS.FieldByName('firm_self_id'         ).Value := Q.FieldByName('firm_self_id').Value;
            ClientDS.FieldByName('firm_self_name'       ).Value := Q.FieldByName('firm_self_name').Value;
            ClientDS.FieldByName('firm_customer_id'     ).Value := Q.FieldByName('firm_customer_id').Value;
            ClientDS.FieldByName('firm_customer_name'   ).Value := Q.FieldByName('firm_customer_name').Value;

            if ClientDS.FindField('files_name') <> nil then
              ClientDS.FieldByName('files_name').Value := SP_acts_modify.FieldByName('file_name').AsString;

            if ClientDS.FindField('files_blob') <> nil then
              ClientDS.FieldByName('files_blob').Value := TArray<Byte>(LZHUnPack(SP_acts_modify.FieldByName('acts_image').AsBytes));

            ClientDS.Post;

            if ClientDS_Blob <> nil then begin
              ClientDS_Blob.Append;
              ClientDS_Blob.FieldByName('files_name').Value := SP_acts_modify.FieldByName('file_name').AsString;
              ClientDS_Blob.FieldByName('files_date').Value := Q.FieldByName('acts_date').Value;
              ClientDS_Blob.FieldByName('set_main'  ).Value := True;
              ClientDS_Blob.FieldByName('comment'   ).Value := null;
              ClientDS_Blob.FieldByName('files_blob_lzh').Value := SP_acts_modify.FieldByName('acts_image').Value;
              ClientDS_Blob.Post;
            end;
          end;

//          Q2.Free;
          SP_acts_modify.Free;
          result := VarArrayOf([global_id]);
        end;
      2:begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT * FROM view_invoice_score WHERE invoice_score_id = ' + IntToStr(global_id));
          Q.Open;

          Q2 := TADOQuery.Create(nil);
          Q2.Connection := Connect;
          Q2.SQL.Add('SELECT acts_id FROM view_acts WHERE global_id = ' + IntToStr(global_id));
          Q2.Open;

          SP_acts_modify := TADOStoredProc.Create(nil);
          SP_acts_modify.Connection := connect;
          SP_acts_modify.ProcedureName := 'sp_acts_modify';
          SP_acts_modify.Parameters.Refresh;
          SP_acts_modify.Parameters.ParamByName('@acts_id'    ).Value := Q2.FieldByName('acts_id').Value;
          SP_acts_modify.Parameters.ParamByName('@type_action').Value := 10;
          SP_acts_modify.Open;

          if Q.RecordCount = 1 then begin
            ClientDS.EmptyDataSet;

            ClientDS.Append;
            ClientDS.FieldByName('document_id'          ).Value := Q.FieldByName('invoice_score_id').Value;
            ClientDS.FieldByName('document_type_cod'    ).Value := 30;
            ClientDS.FieldByName('document_type_name'   ).Value := 'Счет-Фактура';
            ClientDS.FieldByName('document_cod'         ).Value := Q.FieldByName('score_cod').Value;
            ClientDS.FieldByName('document_date'        ).Value := Q.FieldByName('score_date').Value;
            ClientDS.FieldByName('document_sum'         ).Value := Q.FieldByName('score_sum').Value;
            ClientDS.FieldByName('document_currency_id' ).Value := Q.FieldByName('currency_id').Value;
            ClientDS.FieldByName('brief_name'           ).Value := Q.FieldByName('brief_name').Value;
            ClientDS.FieldByName('document_date_delete' ).Value := null;
            ClientDS.FieldByName('contract_id'          ).Value := Q.FieldByName('contract_id').Value;
            ClientDS.FieldByName('contract_cod'         ).Value := Q.FieldByName('contract_cod').Value;
            ClientDS.FieldByName('type_contract'        ).Value := Q.FieldByName('type_contract').Value;
            case Q.FieldByName('type_contract').Value of
               0: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с клиентом';
               1: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с субподрядчиком';
               2: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор администрации';
              -1: ClientDS.FieldByName('type_contract_name'   ).Value := null;
            end;
            ClientDS.FieldByName('date_begin'           ).Value := Q.FieldByName('date_begin').Value;
            ClientDS.FieldByName('firm_self_id'         ).Value := Q.FieldByName('firm_self').Value;
            ClientDS.FieldByName('firm_self_name'       ).Value := Q.FieldByName('firm_self_name').Value;
            ClientDS.FieldByName('firm_customer_id'     ).Value := Q.FieldByName('firm_customer').Value;
            ClientDS.FieldByName('firm_customer_name'   ).Value := Q.FieldByName('firm_customer_name').Value;
//            ClientDS.FieldByName('files_name'           ).Value := SP_acts_modify.FieldByName('file_name').AsString;
//            ClientDS.FieldByName('files_blob'           ).Value := TArray<Byte>(LZHUnPack(SP_acts_modify.FieldByName('acts_image').AsBytes));

            if ClientDS.FindField('files_name') <> nil then
              ClientDS.FieldByName('files_name').Value := SP_acts_modify.FieldByName('file_name').AsString;

            if ClientDS.FindField('files_blob') <> nil then
              ClientDS.FieldByName('files_blob').Value := TArray<Byte>(LZHUnPack(SP_acts_modify.FieldByName('acts_image').AsBytes));

            ClientDS.Post;

            if ClientDS_Blob <> nil then begin
              ClientDS_Blob.Append;
              ClientDS_Blob.FieldByName('files_name').Value := SP_acts_modify.FieldByName('file_name').AsString;
              ClientDS_Blob.FieldByName('files_date').Value := Q.FieldByName('score_date').Value;
              ClientDS_Blob.FieldByName('set_main'  ).Value := True;
              ClientDS_Blob.FieldByName('comment'   ).Value := null;
              ClientDS_Blob.FieldByName('files_blob_lzh').Value := SP_acts_modify.FieldByName('acts_image').Value;
              ClientDS_Blob.Post;
            end;

          end;

          Q2.Free;
          SP_acts_modify.Free;
          result := VarArrayOf([global_id]);
        end;
      3:begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT * FROM view_pretenzia WHERE pretenzia_id = ' + IntToStr(global_id));
          Q.Open;

          if Q.RecordCount = 1 then begin
            ClientDS.EmptyDataSet;

            ClientDS.Append;
            ClientDS.FieldByName('document_id'          ).Value := Q.FieldByName('pretenzia_id').Value;
            ClientDS.FieldByName('document_type_cod'    ).Value := '40';
            ClientDS.FieldByName('document_type_name'   ).Value := 'Претензия';
            ClientDS.FieldByName('document_cod'         ).Value := Q.FieldByName('pretenzia_cod').Value;
            ClientDS.FieldByName('document_date'        ).Value := Q.FieldByName('date_begin').Value;
            ClientDS.FieldByName('document_sum'         ).Value := Q.FieldByName('pretenzia_sum').Value;
            ClientDS.FieldByName('document_currency_id' ).Value := Q.FieldByName('currency_id').Value;
            ClientDS.FieldByName('brief_name'           ).Value := Q.FieldByName('brief_name').Value;
            ClientDS.FieldByName('document_date_delete' ).Value := null;
            ClientDS.FieldByName('contract_id'          ).Value := Q.FieldByName('contract_id').Value;
            ClientDS.FieldByName('contract_cod'         ).Value := Q.FieldByName('contract_cod').Value;
            ClientDS.FieldByName('type_contract'        ).Value := Q.FieldByName('type_contract').Value;
            case Q.FieldByName('type_contract').Value of
               0: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с клиентом';
               1: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с субподрядчиком';
               2: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор администрации';
              -1: ClientDS.FieldByName('type_contract_name'   ).Value := null;
            end;
            ClientDS.FieldByName('date_begin'           ).Value := Q.FieldByName('contract_date_begin').Value;
            ClientDS.FieldByName('firm_self_id'         ).Value := Q.FieldByName('firm_self').Value;
            ClientDS.FieldByName('firm_self_name'       ).Value := Q.FieldByName('firm_self_name').Value;
            ClientDS.FieldByName('firm_customer_id'     ).Value := Q.FieldByName('firm_customer').Value;
            ClientDS.FieldByName('firm_customer_name'   ).Value := Q.FieldByName('firm_customer_name').Value;
            ClientDS.Post;
          end;

          result := VarArrayOf([global_id]);
        end;
      4:begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT * FROM view_doc_blob WHERE doc_id = ' + IntToStr(global_id));
          Q.Open;

          if Q.RecordCount = 1 then begin
            ClientDS.EmptyDataSet;

            if Q.FieldByName('doc_type_cod').AsString = '18' then begin // Акты ЭДО

              sp_BLOB_DETAIL_modify := TADOStoredProc.Create(nil);
              sp_BLOB_DETAIL_modify.Connection := Connect;
              sp_BLOB_DETAIL_modify.ProcedureName := 'sp_BLOB_DETAIL_modify';
              sp_BLOB_DETAIL_modify.Parameters.Refresh;


              Q2 := TADOQuery.Create(nil);
              Q2.Connection := Connect;
              Q2.SQL.Add('SELECT * FROM view_acts WHERE acts_id = ' + IntToStr(Q.FieldByName('global_id').AsInteger));
              Q2.Open;

              ClientDS.Append;
              ClientDS.FieldByName('document_id'          ).Value := Q.FieldByName('doc_id').Value;
              ClientDS.FieldByName('document_type_cod'    ).Value := '1001';
              ClientDS.FieldByName('document_type_name'   ).Value := 'LIS: Акт ЭЦП';
              ClientDS.FieldByName('document_cod'         ).Value := Q2.FieldByName('acts_cod').Value;
              ClientDS.FieldByName('document_date'        ).Value := Q2.FieldByName('acts_date').Value;
              ClientDS.FieldByName('document_sum'         ).Value := Q2.FieldByName('acts_sum').Value;
              ClientDS.FieldByName('document_currency_id' ).Value := Q2.FieldByName('acts_currency_id').Value;
              ClientDS.FieldByName('brief_name'           ).Value := Q2.FieldByName('brief_name').Value;
              ClientDS.FieldByName('document_date_delete' ).Value := null;
              ClientDS.FieldByName('contract_id'          ).Value := Q2.FieldByName('contract_id').Value;
              ClientDS.FieldByName('contract_cod'         ).Value := Q2.FieldByName('contract_cod').Value;
              ClientDS.FieldByName('type_contract'        ).Value := Q2.FieldByName('type_contract').Value;
              case Q2.FieldByName('type_contract').Value of
                 0: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с клиентом';
                 1: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с субподрядчиком';
                 2: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор администрации';
                -1: ClientDS.FieldByName('type_contract_name'   ).Value := null;
              end;
              ClientDS.FieldByName('date_begin'           ).Value := Q2.FieldByName('contract_date_begin').Value;
              ClientDS.FieldByName('firm_self_id'         ).Value := Q2.FieldByName('firm_self_id').Value;
              ClientDS.FieldByName('firm_self_name'       ).Value := Q2.FieldByName('firm_self_name').Value;
              ClientDS.FieldByName('firm_customer_id'     ).Value := Q2.FieldByName('firm_customer_id').Value;
              ClientDS.FieldByName('firm_customer_name'   ).Value := Q2.FieldByName('firm_customer_name').Value;
              ClientDS.Post;

              if ClientDS_Blob <> nil then begin

                Q2.SQL.Clear;
                Q2.SQL.Add('SELECT doc_detail_id,	files_name, files_date, set_main, comment FROM view_DOC_BLOB_DETAIL WHERE doc_id = ' + IntToStr(global_id));
                Q2.Open;
                while not Q2.Eof do begin

                  sp_BLOB_DETAIL_modify.Parameters.Refresh;
                  sp_BLOB_DETAIL_modify.Parameters.ParamByName('@doc_detail_id').Value := Q2.FieldByName('doc_detail_id').Value;
                  sp_BLOB_DETAIL_modify.Parameters.ParamByName('@type_action'  ).Value := 10;
                  sp_BLOB_DETAIL_modify.Open;

                  ClientDS_Blob.Append;
                  ClientDS_Blob.FieldByName('files_name').Value := Q2.FieldByName('files_name').Value;
                  ClientDS_Blob.FieldByName('files_date').Value := Q2.FieldByName('files_date').Value;
                  ClientDS_Blob.FieldByName('set_main'  ).Value := Q2.FieldByName('set_main'  ).Value;
                  ClientDS_Blob.FieldByName('comment'   ).Value := Q2.FieldByName('comment'   ).Value;
                  ClientDS_Blob.FieldByName('files_blob_lzh').Value := sp_BLOB_DETAIL_modify.FieldByName('doc_image').Value;
                  ClientDS_Blob.Post;
                  sp_BLOB_DETAIL_modify.Close;

                  Q2.Next;
                end;
              end;

              Q2.Free;
              sp_BLOB_DETAIL_modify.Free;

            end else begin
              ClientDS.Append;
              ClientDS.FieldByName('document_id'          ).Value := Q.FieldByName('doc_id').Value;
              ClientDS.FieldByName('document_type_cod'    ).Value := '50';
              ClientDS.FieldByName('document_type_name'   ).Value := 'Файл (LIS)';
              ClientDS.FieldByName('document_cod'         ).Value := Q.FieldByName('file_name').Value;
              ClientDS.FieldByName('document_date'        ).Value := Q.FieldByName('doc_image_date').Value;
              ClientDS.Post;
            end;
          end;

          result := VarArrayOf([global_id]);
        end;
      5:begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT * FROM view_vagon_arenda_acts WHERE vagon_arenda_acts_id = ' + IntToStr(global_id));
          Q.Open;

          if Q.RecordCount = 1 then begin
            ClientDS.EmptyDataSet;

            ClientDS.Append;
            ClientDS.FieldByName('document_id'          ).Value := Q.FieldByName('vagon_arenda_acts_id').Value;
            ClientDS.FieldByName('document_type_cod'    ).Value := 70;
            ClientDS.FieldByName('document_type_name'   ).Value := 'Акты по аренде';
            ClientDS.FieldByName('document_cod'         ).Value := Q.FieldByName('vagon_arenda_acts_cod').Value;
            ClientDS.FieldByName('document_date'        ).Value := Q.FieldByName('vagon_arenda_acts_date').Value;
            ClientDS.FieldByName('document_sum'         ).Value := null;
            ClientDS.FieldByName('document_currency_id' ).Value := null;
            ClientDS.FieldByName('brief_name'           ).Value := null;
            ClientDS.FieldByName('document_date_delete' ).Value := null;
            ClientDS.FieldByName('contract_id'          ).Value := Q.FieldByName('contract_id').Value;
            ClientDS.FieldByName('contract_cod'         ).Value := Q.FieldByName('contract_cod').Value;
            ClientDS.FieldByName('type_contract'        ).Value := Q.FieldByName('type_contract').Value;
            case Q.FieldByName('type_contract').Value of
               0: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с клиентом';
               1: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с субподрядчиком';
               2: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор администрации';
              -1: ClientDS.FieldByName('type_contract_name'   ).Value := null;
            end;
            ClientDS.FieldByName('date_begin'           ).Value := Q.FieldByName('date_begin').Value;
            ClientDS.FieldByName('firm_self_id'         ).Value := Q.FieldByName('firm_self').Value;
            ClientDS.FieldByName('firm_self_name'       ).Value := Q.FieldByName('firm_self_name').Value;
            ClientDS.FieldByName('firm_customer_id'     ).Value := Q.FieldByName('firm_customer').Value;
            ClientDS.FieldByName('firm_customer_name'   ).Value := Q.FieldByName('firm_customer_name').Value;
            ClientDS.Post;
          end;

          result := VarArrayOf([global_id]);
        end;
      6:begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT * FROM view_orders_pay WHERE orders_pay_id = ' + IntToStr(global_id));
          Q.Open;

          if Q.RecordCount = 1 then begin
            ClientDS.EmptyDataSet;

            ClientDS.Append;
            ClientDS.FieldByName('document_id'          ).Value := Q.FieldByName('orders_pay_id').Value;
            ClientDS.FieldByName('document_type_cod'    ).Value := 80;
            ClientDS.FieldByName('document_type_name'   ).Value := 'Заявка на платеж';
            ClientDS.FieldByName('document_cod'         ).Value := Q.FieldByName('invoice_cod').Value;
            ClientDS.FieldByName('document_date'        ).Value := Q.FieldByName('invoce_date').Value;
            ClientDS.FieldByName('document_sum'         ).Value := Q.FieldByName('orders_pay_sum').Value;
            ClientDS.FieldByName('document_currency_id' ).Value := Q.FieldByName('currency_id').Value;
            ClientDS.FieldByName('brief_name'           ).Value := Q.FieldByName('brief_name').Value;
            ClientDS.FieldByName('document_date_delete' ).Value := null;
            ClientDS.FieldByName('contract_id'          ).Value := Q.FieldByName('contract_id').Value;
            ClientDS.FieldByName('contract_cod'         ).Value := Q.FieldByName('contract_cod').Value;
            ClientDS.FieldByName('type_contract'        ).Value := Q.FieldByName('type_contract').Value;
            case Q.FieldByName('type_contract').Value of
               0: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с клиентом';
               1: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с субподрядчиком';
               2: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор администрации';
              -1: ClientDS.FieldByName('type_contract_name'   ).Value := null;
            end;
            ClientDS.FieldByName('date_begin'           ).Value := Q.FieldByName('date_begin').Value;
            ClientDS.FieldByName('firm_self_id'         ).Value := Q.FieldByName('firm_self').Value;
            ClientDS.FieldByName('firm_self_name'       ).Value := Q.FieldByName('firm_self_name').Value;
            ClientDS.FieldByName('firm_customer_id'     ).Value := Q.FieldByName('firm_customer').Value;
            ClientDS.FieldByName('firm_customer_name'   ).Value := Q.FieldByName('firm_customer_name').Value;
            ClientDS.Post;
          end;

          result := VarArrayOf([global_id]);
        end;
      7:begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT * FROM view_shp_bargain_add WHERE bargain_add_id = ' + IntToStr(global_id));
          Q.Open;

          if Q.RecordCount = 1 then begin
            ClientDS.EmptyDataSet;

            ClientDS.Append;
            ClientDS.FieldByName('document_id'          ).Value := Q.FieldByName('bargain_add_id').Value;
            ClientDS.FieldByName('document_type_cod'    ).Value := 90;
            ClientDS.FieldByName('document_type_name'   ).Value := 'LIS: Услуга';
            ClientDS.FieldByName('document_cod'         ).Value := null;
            ClientDS.FieldByName('document_date'        ).Value := null;
            ClientDS.FieldByName('document_sum'         ).Value := Q.FieldByName('add_sum').Value;
            ClientDS.FieldByName('document_currency_id' ).Value := Q.FieldByName('currency_id').Value;
            ClientDS.FieldByName('brief_name'           ).Value := Q.FieldByName('brief_name').Value;
            ClientDS.FieldByName('document_date_delete' ).Value := null;
            ClientDS.FieldByName('contract_id'          ).Value := Q.FieldByName('contract_id').Value;
            ClientDS.FieldByName('contract_cod'         ).Value := Q.FieldByName('contract_cod').Value;
            ClientDS.FieldByName('type_contract'        ).Value := Q.FieldByName('type_contract').Value;
            case Q.FieldByName('type_contract').Value of
               0: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с клиентом';
               1: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор с субподрядчиком';
               2: ClientDS.FieldByName('type_contract_name'   ).Value := 'Договор администрации';
              -1: ClientDS.FieldByName('type_contract_name'   ).Value := null;
            end;
            ClientDS.FieldByName('date_begin'           ).Value := Q.FieldByName('contract_date_begin').Value;
            ClientDS.FieldByName('firm_self_id'         ).Value := Q.FieldByName('firm_self').Value;
            ClientDS.FieldByName('firm_self_name'       ).Value := Q.FieldByName('firm_self_name').Value;
            ClientDS.FieldByName('firm_customer_id'     ).Value := Q.FieldByName('firm_customer').Value;
            ClientDS.FieldByName('firm_customer_name'   ).Value := Q.FieldByName('firm_customer_name').Value;

            ClientDS.Post;
          end;

          result := VarArrayOf([global_id]);
        end;

      else result := VarArrayOf([-9]);
    end;

  except
    on E: Exception do begin
      ShowMessage(E.Message);
      result := VarArrayOf([-9, E.Message]);
    end;
  end;
  Q.Free;
  Connect.Free;
end;


//function CreateSaveDocument(str_global_id: string; docs_id: integer; docs_status_id: integer; docs_status_cod: string; docs_status_name: string; process_step_name: string; orders_payment_sum: currency; orders_payment_date: TDateTime; usr_pwd_lis: PUser_pwd): variant;

function CreateSaveDocument(var ClientDS: TClientDataSet; usr_pwd_lis: PUser_pwd): variant;
var SP_global_docs_link_modify : TADOStoredProc;
                       Connect : TADOConnection;
begin
  try
    Connect := TADOConnection.Create(nil);
    Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
    Connect.KeepConnection   := False;
    Connect.LoginPrompt      := False;

    SP_global_docs_link_modify := TADOStoredProc.Create(nil);
    SP_global_docs_link_modify.Connection := Connect;
    SP_global_docs_link_modify.ProcedureName := 'sp_global_docs_link_modify';
    SP_global_docs_link_modify.Parameters.Refresh;
    SP_global_docs_link_modify.Parameters.ParamByName('@docs_link_id'       ).Value := null;
    SP_global_docs_link_modify.Parameters.ParamByName('@type_action'        ).Value := 10;
    SP_global_docs_link_modify.Parameters.ParamByName('@str_global_id'      ).Value := ClientDS.FieldByName('str_global_id').Value;
    SP_global_docs_link_modify.Parameters.ParamByName('@docs_id'            ).Value := ClientDS.FieldByName('docs_id').Value;
    SP_global_docs_link_modify.Parameters.ParamByName('@docs_status_id'     ).Value := ClientDS.FieldByName('docs_status_id').Value;
    SP_global_docs_link_modify.Parameters.ParamByName('@docs_status_cod'    ).Value := ClientDS.FieldByName('docs_status_cod').Value;
    SP_global_docs_link_modify.Parameters.ParamByName('@docs_status_name'   ).Value := ClientDS.FieldByName('docs_status_name').Value;
    SP_global_docs_link_modify.Parameters.ParamByName('@process_step_name'  ).Value := ClientDS.FieldByName('process_step_name').Value;
    SP_global_docs_link_modify.Parameters.ParamByName('@orders_payment_sum' ).Value := ClientDS.FieldByName('orders_payment_sum').Value;
    SP_global_docs_link_modify.Parameters.ParamByName('@orders_payment_date').Value := ClientDS.FieldByName('orders_payment_date').Value;
    SP_global_docs_link_modify.Parameters.ParamByName('@set_wait_payment'   ).Value := ClientDS.FieldByName('set_wait_payment').Value;
    try
      SP_global_docs_link_modify.ExecProc;
      result := VarArrayOf([0]);
    except
      result := VarArrayOf([-9]);
    end;

    SP_global_docs_link_modify.Free;
    Connect.Free;
  except
    result := VarArrayOf([-9]);
  end;
end;

function CreateSaveDocBlob(str_global_id: string; docs_id: integer; docs_status_id: integer; docs_status_cod: string; docs_status_name: string; process_step_name: string; usr_pwd_lis: PUser_pwd): variant;
var SP_global_docs_link_modify : TADOStoredProc;
                       Connect : TADOConnection;
begin
  try
    Connect := TADOConnection.Create(nil);
    Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
    Connect.KeepConnection   := False;
    Connect.LoginPrompt      := False;

    SP_global_docs_link_modify := TADOStoredProc.Create(nil);
    SP_global_docs_link_modify.Connection := Connect;
    SP_global_docs_link_modify.ProcedureName := 'sp_global_docs_link_modify';
    SP_global_docs_link_modify.Parameters.Refresh;
    SP_global_docs_link_modify.Parameters.ParamByName('@docs_link_id' ).Value := null;
    SP_global_docs_link_modify.Parameters.ParamByName('@type_action'  ).Value := 11;
    SP_global_docs_link_modify.Parameters.ParamByName('@str_global_id').Value := str_global_id;

    SP_global_docs_link_modify.Parameters.ParamByName('@docs_id'          ).Value := docs_id;
    SP_global_docs_link_modify.Parameters.ParamByName('@docs_status_id'   ).Value := docs_status_id;
    SP_global_docs_link_modify.Parameters.ParamByName('@docs_status_cod'  ).Value := docs_status_cod;
    SP_global_docs_link_modify.Parameters.ParamByName('@docs_status_name' ).Value := docs_status_name;
    SP_global_docs_link_modify.Parameters.ParamByName('@process_step_name').Value := process_step_name;

    try
      SP_global_docs_link_modify.ExecProc;
      result := VarArrayOf([0]);
    except
      result := VarArrayOf([-9]);
    end;

    SP_global_docs_link_modify.Free;
    Connect.Free;
  except
    result := VarArrayOf([-9]);
  end;
end;

function CreateWndDocument(AppHand: THandle; document_type_cod: string; contract_id: integer; var ClientDS: TClientDataSet; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd; CliantDS_param: TClientDataSet): variant;
var   local_usr_pwd_docs: PUser_pwd;
      Q, Q2 : TADOQuery;
      Connect : TADOConnection;
      str_result : string;
      docs_id : integer;
begin
  Application.Handle := AppHand;
  new(local_usr_pwd_docs);
  local_usr_pwd_docs.users_id     := usr_pwd_docs.users_id;
  local_usr_pwd_docs.user_name    := usr_pwd_docs.user_name;
  local_usr_pwd_docs.user_pass    := usr_pwd_docs.user_pass;
  local_usr_pwd_docs.user_cod     := usr_pwd_docs.user_cod;
  local_usr_pwd_docs.server       := usr_pwd_docs.server;
  local_usr_pwd_docs.catalog      := usr_pwd_docs.catalog;
  local_usr_pwd_docs.session      := usr_pwd_docs.session;
  local_usr_pwd_docs.user_func    := usr_pwd_docs.user_func;
  local_usr_pwd_docs.user_group_id:= usr_pwd_docs.user_group_id;

  case IndexText(document_type_cod, ['10','20','30','40','60','70','80', '1001']) of
    //Счет
     0:begin
        try
          fmClientInvoice := TfmClientInvoice.CreateDLL(Application, True, usr_pwd_lis, local_usr_pwd_docs);
          if contract_id <> -9 then fmClientInvoice._SetContractID := contract_id;
          fmClientInvoice._TypeInvoice  := 0;

          if fmClientInvoice.ShowModal = mrOk then
            if (fmClientInvoice._GetContractId = contract_id) OR (contract_id = -9) then begin
              if fmClientInvoice._GetDocsId = -9 then begin
                ClientDS.Append;
                ClientDS.FieldByName('global_id'        ).Value := fmClientInvoice._GetInvoiceID;
                ClientDS.FieldByName('contract_id'      ).Value := fmClientInvoice._GetContractId;
                ClientDS.FieldByName('document_type_cod').Value := '10';
                ClientDS.FieldByName('result'            ).Value := True;
                ClientDS.FieldByName('comment'           ).Value := null;
                ClientDS.Post;

                result := VarArrayOf([0]);
              end else
                result := VarArrayOf([-7]);
            end else begin
              result := VarArrayOf([-8])
            end
          else result := VarArrayOf([-9]);
        finally
          fmClientInvoice.Free;
        end;
      end;

    //Акт
     1:begin
        try
          Connect := TADOConnection.Create(nil);
          Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
          Connect.KeepConnection   := False;
          Connect.LoginPrompt      := False;

          Q := TADOQuery.Create(nil);
          Q.Connection := Connect;

          Q2 := TADOQuery.Create(nil);
          Q2.Connection := Connect;

          fmActs := TfmActs.CreateDLL(Application, False, usr_pwd_lis, local_usr_pwd_docs);

          if CliantDS_param<>nil then begin
            if CliantDS_param.Locate('param_name', 'docs_id', []) then begin
              docs_id := CliantDS_param.FieldByName('param_value').AsInteger;
            end else docs_id := -9;
          end else docs_id := -9;

          if fmActs.ShowModal = mrOk then begin
            str_result := fmActs._GetStrActsID;
            if str_result <> '' then begin
              Q.SQL.Clear;
              Q.SQL.Add('SELECT acts_id, contract_id, docs_id, acts_cod, docs_status_cod FROM view_acts WHERE acts_id in (' + str_result + ')');
              Q.Open;
              while not Q.Eof do begin
                ClientDS.Append;
                ClientDS.FieldByName('global_id'         ).Value := Q.FieldByName('acts_id').Value;
                ClientDS.FieldByName('contract_id'       ).Value := Q.FieldByName('contract_id').AsInteger;
                ClientDS.FieldByName('document_type_cod' ).Value := 20;
                ClientDS.FieldByName('result'            ).Value := True;
                ClientDS.FieldByName('comment'           ).Value := null;
                if ClientDS.FindField('set_main') <> nil then
                  ClientDS.FieldByName('set_main').Value := True;

                if (Q.FieldByName('contract_id').AsInteger <> contract_id) AND (contract_id <> -9) then begin
                  ClientDS.FieldByName('result' ).Value := False;
                  ClientDS.FieldByName('comment').Value := 'У атка №' + Q.FieldByName('acts_cod').AsString + ' не совпадает договор!';
                end;

                if not Q.FieldByName('docs_id').IsNull then begin
                  if (Q.FieldByName('docs_status_cod').AsString <> '3') or (docs_id <> Q.FieldByName('docs_id').AsInteger) then begin
                    ClientDS.FieldByName('result' ).Value := False;
                    ClientDS.FieldByName('comment').Value := 'Акт №' + Q.FieldByName('acts_cod').AsString + ' уже запущен в документообороте!';
                  end;
                end;
                ClientDS.Post;

                Q2.SQL.Clear;
                Q2.SQL.Add('SELECT  view_shp_bargain_add.*');
                Q2.SQL.Add('FROM	  view_shp_bargain_add');
                Q2.SQL.Add('        inner join acts_bargain on view_shp_bargain_add.bargain_add_id = acts_bargain.bargain_id');
                Q2.SQL.Add('WHERE	  acts_id = ' + IntToStr(Q.FieldByName('acts_id').AsInteger));
                Q2.Open;

                while not Q2.Eof do begin
                  ClientDS.Append;
                  ClientDS.FieldByName('global_id'         ).Value := Q2.FieldByName('bargain_add_id').Value;
                  ClientDS.FieldByName('contract_id'       ).Value := Q.FieldByName('contract_id').AsInteger;
                  ClientDS.FieldByName('document_type_cod' ).Value := 90;
                  ClientDS.FieldByName('result'            ).Value := True;
                  ClientDS.FieldByName('comment'           ).Value := null;
                  if ClientDS.FindField('set_main') <> nil then
                    ClientDS.FieldByName('set_main').Value := False;
                  ClientDS.Post;

                  Q2.Next;
                end;


                Q.Next;
              end;
            end;
            result := VarArrayOf([0]);
          end else
            result := VarArrayOf([-9]);
        finally
          Connect.Free;
          Q.Free;
          Q2.Free;
          fmActs.Free;
        end;
      end;
    //Счет-Фактура
     2:begin
        try
          Connect := TADOConnection.Create(nil);
          Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
          Connect.KeepConnection   := False;
          Connect.LoginPrompt      := False;

          Q := TADOQuery.Create(nil);
          Q.Connection := Connect;

          fmInvoiceScore := TfmInvoiceScore.CreateDLL(Application, True, 0, usr_pwd_lis);
          if contract_id <> -9 then fmInvoiceScore._SetContractId := contract_id;

          if fmInvoiceScore.ShowModal = mrOk then begin
            str_result := fmInvoiceScore._GetStrInvoiceScoreId;
            if str_result <> '' then begin
              Q.SQL.Clear;
              Q.SQL.Add('SELECT invoice_score_id, contract_id, docs_id, score_cod FROM view_invoice_score WHERE invoice_score_id in (' + str_result + ')');
              Q.Open;
              while not Q.Eof do begin
                ClientDS.Append;
                ClientDS.FieldByName('global_id'         ).Value := Q.FieldByName('invoice_score_id').Value;
                ClientDS.FieldByName('contract_id'       ).Value := Q.FieldByName('contract_id').Value;
                ClientDS.FieldByName('document_type_cod' ).Value := 30;
                ClientDS.FieldByName('result'            ).Value := True;
                ClientDS.FieldByName('comment'           ).Value := null;

                if (Q.FieldByName('contract_id').AsInteger <> contract_id) AND (contract_id<>-9) then begin
                  ClientDS.FieldByName('result' ).Value := False;
                  ClientDS.FieldByName('comment').Value := 'У с\ф №' + Q.FieldByName('score_cod').AsString + ' не совпадает договор!';
                end;

                if not Q.FieldByName('docs_id').IsNull then begin
                  ClientDS.FieldByName('result' ).Value := False;
                  ClientDS.FieldByName('comment').Value := 'С\ф №' + Q.FieldByName('score_cod').AsString + ' уже запущена в документообороте!';
                end;

                ClientDS.Post;

                Q.Next;
              end;
            end;
            result := VarArrayOf([0]);
          end else
            result := VarArrayOf([-9]);
        finally
          Q.Free;
          Connect.Free;
          if Assigned(fmInvoiceScore) then
            fmInvoiceScore.Free;
        end;
      end;

    //Претензия
     3:begin
        try
          fmPretenzia := TfmPretenzia.Create(Application, True, usr_pwd_lis);
          if contract_id <> -9 then fmPretenzia._SetContractID  := contract_id;
          fmPretenzia._SetSelectFiles := True;

          if fmPretenzia.ShowModal = mrOk then
            if (fmPretenzia._GetContractId = contract_id) OR (contract_id = -9) then begin
              //if (fmPretenzia._GetPretenziaDocsId = -9) AND (fmPretenzia._GetDocBlobDocsId = -9) then begin
              if (fmPretenzia._GetPretenziaDocsId = -9) then begin

                ClientDS.Append;
                ClientDS.FieldByName('global_id'        ).Value := fmPretenzia._GetPretenziaID;
                ClientDS.FieldByName('contract_id'      ).Value := fmPretenzia._GetContractId;
                ClientDS.FieldByName('document_type_cod').Value := '40';
                ClientDS.FieldByName('result'           ).Value := True;
                ClientDS.FieldByName('comment'          ).Value := null;
                ClientDS.Post;

//                ClientDS.Append;
//                ClientDS.FieldByName('global_id'        ).Value := fmPretenzia._GetFilesID;
//                ClientDS.FieldByName('contract_id'      ).Value := fmPretenzia._GetContractId;
//                ClientDS.FieldByName('document_type_cod').Value := '50';
//                ClientDS.FieldByName('result'           ).Value := True;
//                ClientDS.FieldByName('comment'          ).Value := null;
//                ClientDS.Post;

                result := VarArrayOf([0]);
              end else
                result := VarArrayOf([-7]);
            end else begin
              result := VarArrayOf([-8])
            end
          else result := VarArrayOf([-9]);
        finally
          if Assigned(fmPretenzia) then fmPretenzia.Free;
        end;
      end;

      // Аренда
      4:begin
        try
          fmVagonArenda := TfmVagonArenda.CreateDLL(Application, True, usr_pwd_lis);
          if fmVagonArenda.ShowModal = mrOk then begin
//            str_result := fmActs._GetStrActsID;
//            if str_result <> '' then begin
//              Q.SQL.Clear;
//              Q.SQL.Add('SELECT acts_id, contract_id, docs_id, acts_cod FROM view_acts WHERE acts_id in (' + str_result + ')');
//              Q.Open;
//              while not Q.Eof do begin
//                ClientDS.Append;
//                ClientDS.FieldByName('global_id'         ).Value := Q.FieldByName('acts_id').Value;
//                ClientDS.FieldByName('document_type_cod' ).Value := 60;
//                ClientDS.FieldByName('result'            ).Value := True;
//                ClientDS.FieldByName('comment'           ).Value := null;
//
//                if Q.FieldByName('contract_id').AsInteger <> contract_id then begin
//                  ClientDS.FieldByName('result' ).Value := False;
//                  ClientDS.FieldByName('comment').Value := 'У атка №' + Q.FieldByName('acts_cod').AsString + ' не совпадает договор!';
//                end;
//
//                if not Q.FieldByName('docs_id').IsNull then begin
//                  ClientDS.FieldByName('result' ).Value := False;
//                  ClientDS.FieldByName('comment').Value := 'Акт №' + Q.FieldByName('acts_cod').AsString + ' уже запущен в документообороте!';
//                end;
//
//                ClientDS.Post;
//
//                Q.Next;
//              end;
//            end;
            result := VarArrayOf([0]);
          end else
            result := VarArrayOf([-9]);
        finally
          if Assigned(fmVagonArenda) then fmVagonArenda.Free;
        end;
      end;


      // Аренда акты
      5:begin
        try

          Connect := TADOConnection.Create(nil);
          Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
          Connect.KeepConnection   := False;
          Connect.LoginPrompt      := False;

          Q := TADOQuery.Create(nil);
          Q.Connection := Connect;

          fmVagonArendaActs := TfmVagonArendaActs.Create(Application, Connect, -9, 0, True);

          if CliantDS_param<>nil then begin
            if CliantDS_param.Locate('param_name', 'acts_date', []) then begin
              fmVagonArendaActs._SetActsDate := StrToDate(CliantDS_param.FieldByName('param_value').AsString);
            end;
            if CliantDS_param.Locate('param_name', 'contract_id', []) then begin
              fmVagonArendaActs._SetContractId := StrToInt(CliantDS_param.FieldByName('param_value').AsString);
            end;
          end;

          fmVagonArendaActs._SetShowVagon := True;
          fmVagonArendaActs._SetOpenDLL   := True;



          if fmVagonArendaActs.ShowModal = mrOk then begin
            str_result := fmVagonArendaActs._GetStrActsId;
            if str_result <> '' then begin
              Q.SQL.Clear;
              Q.SQL.Add('SELECT vagon_arenda_acts_id, contract_id, docs_id, vagon_arenda_acts_cod FROM view_vagon_arenda_acts WHERE vagon_arenda_acts_id in (' + str_result + ')');
              Q.Open;
              while not Q.Eof do begin
                ClientDS.Append;
                ClientDS.FieldByName('global_id'         ).Value := Q.FieldByName('vagon_arenda_acts_id').Value;
                ClientDS.FieldByName('contract_id'       ).Value := Q.FieldByName('contract_id').Value;
                ClientDS.FieldByName('document_type_cod' ).Value := 70;
                ClientDS.FieldByName('result'            ).Value := True;
                ClientDS.FieldByName('comment'           ).Value := null;

                if (Q.FieldByName('contract_id').AsInteger <> contract_id) AND (contract_id <> -9) then begin
                  ClientDS.FieldByName('result' ).Value := False;
                  ClientDS.FieldByName('comment').Value := 'У атка №' + Q.FieldByName('vagon_arenda_acts_cod').AsString + ' не совпадает договор!';
                end;

                if not Q.FieldByName('docs_id').IsNull then begin
                  ClientDS.FieldByName('result' ).Value := False;
                  ClientDS.FieldByName('comment').Value := 'Акт №' + Q.FieldByName('vagon_arenda_acts_cod').AsString + ' уже запущен в документообороте!';
                end;

                ClientDS.Post;

                Q.Next;
              end;
            end;
            result := VarArrayOf([0]);
          end else
            result := VarArrayOf([-9]);
        finally
          Connect.Free;
          Q.Free;
          if Assigned(fmVagonArendaActs) then fmVagonArendaActs.Free;
        end;
      end;

      // Заявки на платеж
      6:begin
        try
          fmOrdersPay := TfmOrdersPay.CreateDLL(Application, usr_pwd_lis);

          if fmOrdersPay.ShowModal = mrOk then begin
            if (fmOrdersPay._GetContractId = contract_id) OR (contract_id = -9) then begin
              if fmOrdersPay._GetDocsId = -9 then begin
                ClientDS.Append;
                ClientDS.FieldByName('global_id'        ).Value := fmOrdersPay._GetOrdersPayID;
                ClientDS.FieldByName('contract_id'      ).Value := fmOrdersPay._GetContractId;
                ClientDS.FieldByName('document_type_cod').Value := '80';
                ClientDS.FieldByName('result'           ).Value := True;
                ClientDS.FieldByName('comment'          ).Value := null;
                ClientDS.Post;

                result := VarArrayOf([0]);
              end else begin // if fmOrdersPay._GetDocsId = -9 then begin
                result := VarArrayOf([-7]);
              end;
            end else begin // if fmOrdersPay._GetContractId = contract_id then begin
              result := VarArrayOf([-8])
            end;
          end else begin //if fmOrdersPay.ShowModal = mrOk then begin
            result := VarArrayOf([-9]);
          end;
        finally
          fmOrdersPay.Free;
        end;
      end;
      // Акты ЭЦП
      7:begin
        try
          Connect := TADOConnection.Create(nil);
          Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
          Connect.KeepConnection   := False;
          Connect.LoginPrompt      := False;

          Q := TADOQuery.Create(nil);
          Q.Connection := Connect;

          fmActs := TfmActs.CreateDLL(Application, False, usr_pwd_lis, local_usr_pwd_docs);

          if fmActs.ShowModal = mrOk then begin
            str_result := fmActs._GetStrDocID;
            if str_result <> '' then begin
              Q.SQL.Clear;
              Q.SQL.Add('SELECT doc_id, contract_id, docs_id, doc_cod, doc_type_cod FROM view_doc_blob WHERE doc_id in (' + str_result + ')');
              Q.Open;
              while not Q.Eof do begin
                ClientDS.Append;
                ClientDS.FieldByName('global_id'         ).Value := Q.FieldByName('doc_id').Value;
                ClientDS.FieldByName('contract_id'       ).Value := Q.FieldByName('contract_id').AsInteger;
                ClientDS.FieldByName('document_type_cod' ).Value := '1001';
                ClientDS.FieldByName('result'            ).Value := True;
                ClientDS.FieldByName('comment'           ).Value := null;

                if (Q.FieldByName('contract_id').AsInteger <> contract_id) AND (contract_id <> -9) then begin
                  ClientDS.FieldByName('result' ).Value := False;
                  ClientDS.FieldByName('comment').Value := 'У атка №' + Q.FieldByName('doc_cod').AsString + ' не совпадает договор!';
                end;

                if not Q.FieldByName('docs_id').IsNull then begin
                  ClientDS.FieldByName('result' ).Value := False;
                  ClientDS.FieldByName('comment').Value := 'Акт №' + Q.FieldByName('doc_cod').AsString + ' уже запущен в документообороте!';
                end;

                if Q.FieldByName('doc_type_cod').AsString <> '18' then begin
                  ClientDS.FieldByName('result' ).Value := False;
                  ClientDS.FieldByName('comment').Value := 'Акт №' + Q.FieldByName('doc_cod').AsString + ' не является электронным!';
                end;

                ClientDS.Post;

                Q.Next;
              end;
            end;
            result := VarArrayOf([0]);
          end else
            result := VarArrayOf([-9]);
        finally
          Connect.Free;
          Q.Free;
          fmActs.Free;
        end;
      end

    else result := VarArrayOf([-9]);
  end;

  dispose(local_usr_pwd_docs);
end;

function CreateWndDocumentAdd(AppHand: THandle; global_id: integer; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd; param: integer): variant;
var  local_usr_pwd_docs : PUser_pwd;
                      Q : TADOQuery;
                Connect : TADOConnection;
                     SP : TADOStoredProc;
              file_data : TArray<Byte>;
              file_name : string;
                  hFile : THandle;
              num_write : Cardinal;
begin
  Application.Handle := AppHand;
  new(local_usr_pwd_docs);
  local_usr_pwd_docs.users_id     := usr_pwd_docs.users_id;
  local_usr_pwd_docs.user_name    := usr_pwd_docs.user_name;
  local_usr_pwd_docs.user_pass    := usr_pwd_docs.user_pass;
  local_usr_pwd_docs.user_cod     := usr_pwd_docs.user_cod;
  local_usr_pwd_docs.server       := usr_pwd_docs.server;
  local_usr_pwd_docs.catalog      := usr_pwd_docs.catalog;
  local_usr_pwd_docs.session      := usr_pwd_docs.session;
  local_usr_pwd_docs.user_func    := usr_pwd_docs.user_func;
  local_usr_pwd_docs.user_group_id:= usr_pwd_docs.user_group_id;

  Connect := TADOConnection.Create(nil);
  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
  Connect.KeepConnection   := False;
  Connect.LoginPrompt      := False;
  Q := TADOQuery.Create(nil);
  Q.Connection := Connect;
  Q.SQL.Add('SELECT	global_id, object_physic_name ');
  Q.SQL.Add('FROM	  global_id LEFT JOIN object_base ON global_id.object_id = object_base.object_id');
  Q.SQL.Add('WHERE	global_id = ' + IntToStr(global_id));
  Q.Open;

  case IndexText(Q.FieldByName('object_physic_name').AsString, ['INVOICE','ACTS','INVOICE_SCORE','PRETENZIA','DOC_BLOB','VAGON_ARENDA_ACTS','ORDERS_PAY']) of
    //Счет
     0:begin
        try
          Q.SQL.Clear;
          Q.SQL.Add('SELECT type_invoice FROM view_invoice WHERE invoice_id=' + IntToStr(global_id));
          Q.Open;

          fmClientInvoiceAdd := TfmClientInvoiceAdd.CreateDLL(Application, usr_pwd_lis, local_usr_pwd_docs);
          fmClientInvoiceAdd._TypeInvoice := 0;//Q.FieldByName('type_invoice').AsInteger;
          fmClientInvoiceAdd._SetUpdate := global_id;
          fmClientInvoiceAdd.ShowModal;
        finally
          fmClientInvoiceAdd.Free;
        end;

        result := VarArrayOf([global_id]);
      end;

    //Акт
     1:begin
        //GetActsView(global_id, Connect, True);

        SP := TADOStoredProc.Create(nil);
        SP.Connection := connect;
        SP.ProcedureName := 'sp_acts_modify';
        SP.Parameters.Refresh;
        SP.Parameters.ParamByName('@acts_id'    ).Value := global_id;
        SP.Parameters.ParamByName('@type_action').Value := 10;
        SP.Open;

        if (not SP.Eof) and (not SP.FieldByName('file_name').IsNull) then begin
          // Проверка и создание директории
          ForceDirectories(ExtractFilePath(ParamStr(0)) + 'Temp\');
          file_name := SP.FieldByName('file_name').AsString;
          file_data := LZHUnPack(SP.FieldByName('acts_image').AsBytes);
          file_name := ExtractFilePath(ParamStr(0)) + 'Temp' + '\' +  file_name;

          hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
          WriteFile(hFile, PAnsiChar(file_data)^, Length(file_data), num_write, nil);
          CloseHandle(hFile);
          ShellExecute(HWND(nil), 'open', PChar(file_name), nil, nil, SW_SHOWNORMAL);
        end else
          Application.MessageBox('НЕТ ФАЙЛА К ДАННОЙ ЗАПИСИ', 'ВНИМАНИЕ', MB_OK);

        SP.Free;

        result := VarArrayOf([global_id]);
      end;

    //Счет-Фактура
    2:begin
        Q.SQL.Clear;
        Q.SQL.Add('SELECT type_invoice_score, parent_id FROM view_invoice_score WHERE invoice_score_id=' + IntToStr(global_id));
        Q.Open;

        if Q.FieldByName('parent_id').IsNull then begin
          try
            fmInvoiceScoreAdd := TfmInvoiceScoreAdd.CreateDLL(Application, False, Q.FieldByName('type_invoice_score').AsInteger, usr_pwd_lis);
            fmInvoiceScoreAdd._UpdateInvoiceScore := global_id;
            fmInvoiceScoreAdd.ShowModal;
          finally
            fmInvoiceScoreAdd.Free;
          end;
        end else begin
          try
            fmInvoiceScoreCorrAdd := TfmInvoiceScoreCorrAdd.CreateDLL(Application, False, Q.FieldByName('type_invoice_score').AsInteger, usr_pwd_lis);
            fmInvoiceScoreCorrAdd._UpdateInvoiceScore := global_id;
            fmInvoiceScoreCorrAdd.ShowModal;
          finally
            fmInvoiceScoreCorrAdd.Free;
          end;
        end;
        result := VarArrayOf([global_id]);
      end;

    3:begin
        try
          fmPretenziaAdd := TfmPretenziaAdd.Create(Application, usr_pwd_lis);
          fmPretenziaAdd._SetUpdate := global_id;
          if param = 1 then // Возможно изменить запущенную претензию
            fmPretenziaAdd._SetModifyRunDocs := True;

          fmPretenziaAdd.ShowModal;
        finally
          fmPretenziaAdd.Free;
        end;
        result := VarArrayOf([global_id]);
      end;

    4:begin
        GetDocBlobView(global_id, nil, '', Connect);
        result := VarArrayOf([global_id]);
//        Q.SQL.Clear;
//        Q.SQL.Add('SELECT doc_image, file_name FROM doc_blob WHERE doc_id=' + IntToStr(global_id));
//        Q.Open;
//
//        s := LZHUnPack(Q.FieldByName('doc_image').AsString);
//        file_name := Q.FieldByName('file_name').AsString;
//
//        file_name := ExtractFilePath(ParamStr(0)) + 'Temp' + '\' +  file_name;
//        hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
//        WriteFile(hFile, PAnsiChar(s)^ , Length(s), num_write, nil);
//        CloseHandle(hFile);
//        ShellExecute(HWND(nil), 'open', PChar(file_name), nil, nil, SW_SHOWNORMAL);
      end;

      // Акты по аренде
      5:begin
        try
          Connect := TADOConnection.Create(nil);
          Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
          Connect.KeepConnection   := False;
          Connect.LoginPrompt      := False;

          Q := TADOQuery.Create(nil);
          Q.Connection := Connect;

          fmVagonArendaActs := TfmVagonArendaActs.Create(Application, Connect, -9, 0, True);
          fmVagonArendaActs._SetActsId := global_id;
          fmVagonArendaActs._SetShowVagon := True;
          fmVagonArendaActs._SetOpenDLL   := True;
          fmVagonArendaActs.ShowModal;
        finally
          Connect.Free;
          if Assigned(fmVagonArendaActs) then fmVagonArendaActs.Free;
        end;
        result := VarArrayOf([global_id]);
      end;
      6:begin
        try
          fmOrdersPayAdd := TfmOrdersPayAdd.Create(Application, connect, usr_pwd_lis);
          fmOrdersPayAdd._SetUpdate   := global_id;
          fmOrdersPayAdd._SetReadOnly := True;
          fmOrdersPayAdd.ShowModal;
        finally
          fmOrdersPayAdd.Free;
        end;
        result := VarArrayOf([global_id]);
      end;
    else result := VarArrayOf([-9]);
  end;

  Q.Free;
  Connect.Free;
  dispose(local_usr_pwd_docs);
end;

function CreateDocumentPrint(global_id: integer; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd): variant;
var  local_usr_pwd_docs : PUser_pwd;
//              file_name : string;
                      Q : TADOQuery;
                Connect : TADOConnection;
//                      s : RawByteString;
//                  hFile : THandle;
//              num_write : Cardinal;
               tmp_path : string;
begin
  new(local_usr_pwd_docs);
  local_usr_pwd_docs.users_id     := usr_pwd_docs.users_id;
  local_usr_pwd_docs.user_name    := usr_pwd_docs.user_name;
  local_usr_pwd_docs.user_pass    := usr_pwd_docs.user_pass;
  local_usr_pwd_docs.user_cod     := usr_pwd_docs.user_cod;
  local_usr_pwd_docs.server       := usr_pwd_docs.server;
  local_usr_pwd_docs.catalog      := usr_pwd_docs.catalog;
  local_usr_pwd_docs.session      := usr_pwd_docs.session;
  local_usr_pwd_docs.user_func    := usr_pwd_docs.user_func;
  local_usr_pwd_docs.user_group_id:= usr_pwd_docs.user_group_id;

  Connect := TADOConnection.Create(nil);
  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
  Connect.KeepConnection   := False;
  Connect.LoginPrompt      := False;
  Q := TADOQuery.Create(nil);
  Q.Connection := Connect;
  Q.SQL.Add('SELECT	global_id, object_physic_name ');
  Q.SQL.Add('FROM	  global_id LEFT JOIN object_base ON global_id.object_id = object_base.object_id');
  Q.SQL.Add('WHERE	global_id = ' + IntToStr(global_id));
  Q.Open;

  case IndexText(Q.FieldByName('object_physic_name').AsString, ['INVOICE','ACTS','INVOICE_SCORE','DOC_BLOB','SHP_BARGAIN_ADD','PRETENZIA', 'VAGON_ARENDA_ACTS']) of
    //Счет
     0:begin
        Q.SQL.Clear;
        Q.SQL.Add('SELECT * FROM view_invoice WHERE invoice_id=' + IntToStr(global_id));
        Q.Open;

        case Q.FieldByName('type_contract').AsInteger of
          // --- Клиент ---
          0 : begin
                case Q.FieldByName('header_language_cod').AsInteger of
                  0 : begin
                      if  (Q.FieldByName('print_form_cod').AsString = '01') or
                          (Q.FieldByName('print_form_cod').AsString = '05') then
                          PrintInvoiceSFH_RUS(global_id, connect, tmp_path);
                      if Q.FieldByName('print_form_cod').AsString = '02' then
                          PrintInvoiceSFH_RUS_WITHOUT_NDS(global_id, connect, tmp_path);
                      if Q.FieldByName('print_form_cod').AsString = '03' then
                          PrintInvoiceSFH_RUS_WITH_NDS(global_id, connect, tmp_path);
                      if Q.FieldByName('print_form_cod').AsString = '04' then
                          PrintInvoiceSFH_RUS_MA(global_id, connect, tmp_path);
                      if Q.FieldByName('print_form_cod').AsString = '06' then
                          PrintInvoiceSFH_RUS_PTA(global_id, connect, tmp_path);
                      end;
                  1 : PrintInvoiceSFH_ENG(global_id, connect, tmp_path);
                else PrintInvoiceSFH_RUS(global_id, connect, tmp_path);
              end;
             end;
          // ---- Подрядчик ---
          1 : begin
                PrintInvoiceSFH_RUS(global_id, connect, tmp_path);
              end;
          // ---- Администрация ---
          2 : begin
                case Q.FieldByName('header_language_cod').AsInteger of
                  0 : PrintInvoiceSFH_RUS(global_id, connect, tmp_path);
                  1 : PrintInvoiceSFH_ENG(global_id, connect, tmp_path);
                end;
              end;
        end;

        result := VarArrayOf([global_id]);
      end;

    //Акт
     1:begin
//        Q.SQL.Clear;
//        Q.SQL.Add('SELECT acts_image, acts_type_cod FROM view_acts WHERE acts_id=' + IntToStr(global_id));
//        Q.Open;
//
//        file_name := 'Act_' + Q.FieldByName('acts_type_cod').AsString +
//                     '_' + FormatDateTime('yyyymmddhhnnss', Now) + '.xls';
//        LoadFileFromDB(file_name, Q.FieldByName('acts_image'), False);

        GetActsView(global_id, Connect, True);
        result := VarArrayOf([global_id]);
      end;

    //Счет-Фактура
    2:begin
        PrintInvoiceScore(IntToStr(global_id), 0, -9, connect);
        result := VarArrayOf([global_id]);
      end;

    3:begin
//        Q.SQL.Clear;
//        Q.SQL.Add('SELECT doc_image, file_name FROM doc_blob WHERE doc_id=' + IntToStr(global_id));
//        Q.Open;
//
//        s := LZHUnPack(Q.FieldByName('doc_image').AsString);
//        file_name := Q.FieldByName('file_name').AsString;
//
//        file_name := ExtractFilePath(ParamStr(0)) + 'Temp' + '\' +  file_name;
//        hFile:=CreateFile(PChar(file_name), Generic_Write, 0, nil, Create_Always, File_Attribute_Normal, 0);
//        WriteFile(hFile, PAnsiChar(s)^ , Length(s), num_write, nil);
//        CloseHandle(hFile);
//        ShellExecute(HWND(nil), 'open', PChar(file_name), nil, nil, SW_SHOWNORMAL);
        GetDocBlobView(global_id, nil, '', Connect);

        result := VarArrayOf([global_id]);
      end;
   4: begin
//        fmShpAgreeAdd := TfmShpAgreeAdd.CreateDLL(Application, usr_pwd_lis, connect);
//        fmShpAgreeAdd._SetUpdateAdd := global_id;
//        fmShpAgreeAdd.ShowModal;
//        fmShpAgreeAdd.Free;
      end;
   5: begin
        try
          fmPretenziaAdd := TfmPretenziaAdd.Create(Application, usr_pwd_lis);
          fmPretenziaAdd._SetUpdate := global_id;
          //if param = 1 then // Возможно изменить запущенную претензию
            fmPretenziaAdd._SetModifyRunDocs := False;

          fmPretenziaAdd.ShowModal;
        finally
          fmPretenziaAdd.Free;
        end;
        result := VarArrayOf([global_id]);
      end;
   // Акты по аренде
   6:begin
        try
          Connect := TADOConnection.Create(nil);
          Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
          Connect.KeepConnection   := False;
          Connect.LoginPrompt      := False;

          Q := TADOQuery.Create(nil);
          Q.Connection := Connect;

          fmVagonArendaActs := TfmVagonArendaActs.Create(Application, Connect, -9, 0, True);
          fmVagonArendaActs._SetActsId := global_id;
          fmVagonArendaActs._SetShowVagon := True;
          fmVagonArendaActs._SetOpenDLL   := True;
          fmVagonArendaActs.ShowModal;
        finally
          Connect.Free;
          if Assigned(fmVagonArendaActs) then fmVagonArendaActs.Free;
        end;
        result := VarArrayOf([global_id]);
      end;

    else result := VarArrayOf([-9]);
  end;

  Q.Free;
  Connect.Free;
  dispose(local_usr_pwd_docs);
end;


function CreateDocumentPrint2(global_id: integer; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd): variant;
var  local_usr_pwd_docs : PUser_pwd;
              file_name : string;
                      Q : TADOQuery;
                Connect : TADOConnection;
                      s : RawByteString;
                  hFile : THandle;
              num_write : Cardinal;
               tmp_path : string;
begin
  new(local_usr_pwd_docs);
  local_usr_pwd_docs.users_id     := usr_pwd_docs.users_id;
  local_usr_pwd_docs.user_name    := usr_pwd_docs.user_name;
  local_usr_pwd_docs.user_pass    := usr_pwd_docs.user_pass;
  local_usr_pwd_docs.user_cod     := usr_pwd_docs.user_cod;
  local_usr_pwd_docs.server       := usr_pwd_docs.server;
  local_usr_pwd_docs.catalog      := usr_pwd_docs.catalog;
  local_usr_pwd_docs.session      := usr_pwd_docs.session;
  local_usr_pwd_docs.user_func    := usr_pwd_docs.user_func;
  local_usr_pwd_docs.user_group_id:= usr_pwd_docs.user_group_id;

  Connect := TADOConnection.Create(nil);
  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
  Connect.KeepConnection   := False;
  Connect.LoginPrompt      := False;
  Q := TADOQuery.Create(nil);
  Q.Connection := Connect;
  Q.SQL.Add('SELECT	global_id, object_physic_name ');
  Q.SQL.Add('FROM	  global_id LEFT JOIN object_base ON global_id.object_id = object_base.object_id');
  Q.SQL.Add('WHERE	global_id = ' + IntToStr(global_id));
  Q.Open;

  case IndexText(Q.FieldByName('object_physic_name').AsString, ['INVOICE','ACTS','INVOICE_SCORE','DOC_BLOB']) of
    //Счет
     0:begin
        Q.SQL.Clear;
        Q.SQL.Add('SELECT * FROM view_invoice WHERE invoice_id=' + IntToStr(global_id));
        Q.Open;

        case Q.FieldByName('type_contract').AsInteger of
          // --- Клиент ---
          0 : begin
                case Q.FieldByName('header_language_cod').AsInteger of
                  0 : begin
                      if Q.FieldByName('print_form_cod').AsString = '01' then
                          PrintInvoiceSFH_RUS(global_id, connect, tmp_path);
                      if Q.FieldByName('print_form_cod').AsString = '02' then
                          PrintInvoiceSFH_RUS_WITHOUT_NDS(global_id, connect, tmp_path);
                      if Q.FieldByName('print_form_cod').AsString = '03' then
                          PrintInvoiceSFH_RUS_WITH_NDS(global_id, connect, tmp_path);
                      end;
                  1 : PrintInvoiceSFH_ENG(global_id, connect, tmp_path);
                else PrintInvoiceSFH_RUS(global_id, connect, tmp_path);
              end;
             end;
          // ---- Подрядчик ---
          1 : begin
                PrintInvoiceSFH_RUS(global_id, connect, tmp_path);
              end;
          // ---- Администрация ---
          2 : begin
                case Q.FieldByName('header_language_cod').AsInteger of
                  0 : PrintInvoiceSFH_RUS(global_id, connect, tmp_path);
                  1 : PrintInvoiceSFH_ENG(global_id, connect, tmp_path);
                end;
              end;
        end;
        result := VarArrayOf([global_id]);
      end;
    else result := VarArrayOf([-9]);
  end;

  Q.Free;
  Connect.Free;
  dispose(local_usr_pwd_docs);
end;



function CreateWndContractView(AppHand: THandle; type_contract: byte; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd; contract_id: integer): variant;
var local_usr_pwd_docs: PUser_pwd;
begin
  Application.Handle := AppHand;
  new(local_usr_pwd_docs);

  try
    local_usr_pwd_docs.users_id     := usr_pwd_docs.users_id;
    local_usr_pwd_docs.user_name    := usr_pwd_docs.user_name;
    local_usr_pwd_docs.user_pass    := usr_pwd_docs.user_pass;
    local_usr_pwd_docs.user_cod     := usr_pwd_docs.user_cod;
    local_usr_pwd_docs.server       := usr_pwd_docs.server;
    local_usr_pwd_docs.catalog      := usr_pwd_docs.catalog;
    local_usr_pwd_docs.session      := usr_pwd_docs.session;
    local_usr_pwd_docs.user_func    := usr_pwd_docs.user_func;
    local_usr_pwd_docs.user_group_id:= usr_pwd_docs.user_group_id;


    fmContract := TfmContract.CreateDLL(Application, True, type_contract, usr_pwd_lis, local_usr_pwd_docs);
    fmContract._SetShowContract := True;
    if contract_id <> -9 then fmContract._SetContractId := contract_id;

    fmContract.ShowModal;
    result := VarArrayOf([-9]);
  finally
    dispose(local_usr_pwd_docs);
    fmContract.Free;
  end;
end;

function CreateWndFirmView(AppHand: THandle; type_contract: byte; usr_pwd_lis: PUser_pwd; usr_pwd_docs: PUser_pwd; firm_id: integer): variant;
var local_usr_pwd_docs: PUser_pwd;
    type_self: integer;
begin
  Application.Handle := AppHand;
  new(local_usr_pwd_docs);

  try
    local_usr_pwd_docs.users_id     := usr_pwd_docs.users_id;
    local_usr_pwd_docs.user_name    := usr_pwd_docs.user_name;
    local_usr_pwd_docs.user_pass    := usr_pwd_docs.user_pass;
    local_usr_pwd_docs.user_cod     := usr_pwd_docs.user_cod;
    local_usr_pwd_docs.server       := usr_pwd_docs.server;
    local_usr_pwd_docs.catalog      := usr_pwd_docs.catalog;
    local_usr_pwd_docs.session      := usr_pwd_docs.session;
    local_usr_pwd_docs.user_func    := usr_pwd_docs.user_func;
    local_usr_pwd_docs.user_group_id:= usr_pwd_docs.user_group_id;


    if type_contract = 1 then
      type_self := 3
    else
      type_self := 0;

    fmFirm := TfmFirm.CreateDLL(Application, True, type_self, usr_pwd_lis);
    if firm_id <> -9 then fmFirm._LocateFirmId := firm_id;
    fmFirm._SetShowFirm := True;
    fmFirm.ShowModal;
    result := VarArrayOf([-9]);

  finally
    dispose(local_usr_pwd_docs);
    fmFIrm.Free;
  end;
end;

function CreateGetDocBlobType  (usr_pwd_lis: PUser_pwd; ClientDS: TClientDataSet): variant;
var Connect : TADOConnection;
          Q : TADOQuery;
begin
  Connect := TADOConnection.Create(nil);
  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
  Connect.KeepConnection   := False;
  Connect.LoginPrompt      := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := Connect;
  Q.SQL.Add('SELECT * FROM inf_obj WHERE (type_inf_id = -101) AND (inf_obj_cod  in (''1'', ''2'', ''3'', ''5'', ''8'', ''9'', ''10'', ''11'', ''12'', ''13'', ''18'')) ORDER BY inf_obj_name_full');
  Q.Open;

  while not Q.Eof do begin
    ClientDS.Append;
    ClientDS.FieldByName('inf_obj_cod' ).Value := Q.FieldByName('inf_obj_cod' ).Value;
    ClientDS.FieldByName('inf_obj_name').Value := Q.FieldByName('inf_obj_name').Value;
    ClientDS.Post;
    Q.Next;
  end;

  Q.Free;
  Connect.Free;
end;

function CreateWndDocBlobAdd(AppHand: THandle; doc_id: integer; global_id: integer; doc_type_cod: string; ClientDS: TClientDataSet; usr_pwd: PUser_pwd): variant;
var Connect : TADOConnection;
      Q, Q2 : TADOQuery;
FilesStream : TMemoryStream;
begin
  Connect := TADOConnection.Create(nil);
  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  Connect.KeepConnection   := False;
  Connect.LoginPrompt      := False;
  try
    fmDocBlobAdd := TfmDocBlobAdd.Create(Application, usr_pwd);

    Q := TADOQuery.Create(nil);
    Q.Connection := Connect;
    Q.SQL.Add('SELECT	global_id, object_physic_name ');
    Q.SQL.Add('FROM	  global_id LEFT JOIN object_base ON global_id.object_id = object_base.object_id');
    Q.SQL.Add('WHERE	global_id = ' + IntToStr(global_id));
    Q.Open;

    fmDocBlobAdd._SetDocType := doc_type_cod;
    case IndexText(Q.FieldByName('object_physic_name').AsString, ['CONTRACT','FIRM','INVOICE','PRETENZIA','FACT_REPAIR','ZFTO_SCORE']) of
      0: fmDocBlobAdd._SetContractID   := global_id;
      1: fmDocBlobAdd._SetFirmID       := global_id;
      2: fmDocBlobAdd._SetInvoiceID    := global_id;
      3: begin
            Q := TADOQuery.Create(nil);
            Q.Connection := Connect;
            Q.SQL.Add('SELECT	* FROM view_pretenzia WHERE pretenzia_id = ' + IntToStr(global_id));
            Q.Open;
            fmDocBlobAdd._SetEnabledContract := False;
            fmDocBlobAdd._SetContractID   := Q.FieldByName('contract_id').AsInteger;
            fmDocBlobAdd._SetPretenziaID  := global_id;
         end;
      4: fmDocBlobAdd._SetFactRepairID := global_id;
      5: fmDocBlobAdd._SetZftoScoreID  := global_id;
    end;
    Q.Free;

    if ClientDS <> nil then begin
      fmDocBlobAdd._SetParamFromClientDS := ClientDS;
    end;

    if doc_id <> -9 then fmDocBlobAdd._SetUpdate := doc_id;

    if fmDocBlobAdd.ShowModal = mrOk then begin
      result := VarArrayOf([fmDocBlobAdd._GetDocId]);
    end else begin
      result := VarArrayOf([-9]);
    end;


  finally
    fmDocBlobAdd.Free;
  end;
end;

function CreateDocBlobDelete(AppHand: THandle; doc_id: integer; usr_pwd: PUser_pwd): variant;
var SP_BLOB_modify: TADOStoredProc;
    Connect : TADOConnection;
begin
  Connect := TADOConnection.Create(nil);
  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  Connect.KeepConnection   := False;
  Connect.LoginPrompt      := False;

  SP_BLOB_modify := TADOStoredProc.Create(nil);
  SP_BLOB_modify.Connection := connect;
  SP_BLOB_modify.ProcedureName := 'SP_BLOB_modify';
  SP_BLOB_modify.Parameters.Refresh;
  SP_BLOB_modify.Parameters.ParamByName('@type_action').Value := 2;
  SP_BLOB_modify.Parameters.ParamByName('@doc_id'     ).Value := doc_id;
  SP_BLOB_modify.ExecProc;
  SP_BLOB_modify.Free;
  connect.Free;

  result := VarArrayOf([doc_id]);
end;


//function CreateWndVagonArenda(AppHand: THandle; usr_pwd_lis: PUser_pwd; type_action: integer; act_num: string; contract_id: integer; act_date: TDateTime): variant;
//var sp_vagon_arenda_modify_GROUP: TADOStoredProc;
//    connect : TADOConnection;
//begin
//  try
//    fmVagonArenda := TfmVagonArenda.CreateDLL(Application, True, usr_pwd_lis);
//    fmVagonArenda._SetContractID := contract_id;
//    if type_action = 0 then
//      fmVagonArenda._SetActBeginDate := act_date
//    else
//      fmVagonArenda._SetActEndDate := act_date;
//
//    if fmVagonArenda.ShowModal = mrOk then begin
//
//      connect := TADOConnection.Create(nil);
//      connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
//      connect.KeepConnection   := False;
//      connect.LoginPrompt      := False;
//
//      sp_vagon_arenda_modify_GROUP := TADOStoredProc.Create(nil);
//      sp_vagon_arenda_modify_GROUP.Connection := connect;
//      sp_vagon_arenda_modify_GROUP.ProcedureName := 'sp_vagon_arenda_modify_GROUP';
//      sp_vagon_arenda_modify_GROUP.Parameters.Refresh;
//      sp_vagon_arenda_modify_GROUP.Parameters.ParamByName('@str_vagon_arenda_id').Value := fmVagonArenda._str_vagon_arenda_id;
//      if type_action = 0 then begin
//        sp_vagon_arenda_modify_GROUP.Parameters.ParamByName('@act_begin_num'      ).Value := act_num;
//        sp_vagon_arenda_modify_GROUP.Parameters.ParamByName('@check_act_begin_num').Value := True;
//      end;
//      if type_action = 1 then begin
//        sp_vagon_arenda_modify_GROUP.Parameters.ParamByName('@act_end_num'      ).Value := act_num;
//        sp_vagon_arenda_modify_GROUP.Parameters.ParamByName('@check_act_end_num').Value := True;
//      end;
//
//      sp_vagon_arenda_modify_GROUP.ExecProc;
//
//      sp_vagon_arenda_modify_GROUP.Free;
//      connect.Free;
//
//      result := VarArrayOf([fmVagonArenda._GetCountVagon]);
//    end else begin
//      result := VarArrayOf([-9]);
//    end;
//  finally
//    fmVagonArenda.Free;
//  end;
//end;


function CreateDocumentSign(global_id: integer; usr_pwd_lis: PUser_pwd): variant;
type
  TFunc = function(users_group_cod: string; DocumentType: string; data_xml: TArray<Byte>; data_size: integer; lis_id: integer; contract_inn: string; ClientDS: TClientDataSet): variant;
var
  FFirm  : TFunc;
  handle : THandle;
  v      : Variant;
  Q      : TADOQuery;
  connect : TADOConnection;
  files_type_id : integer;
  doc_detail_id : integer;
  sp_BLOB_DETAIL_modify : TADOStoredProc;
  mem_bytes : TStringStream;
  doc_id : integer;
  acts_id : integer;
  ClientDS : TClientDataSet;
  sp_global_edo_link_modify : TADOStoredProc;
begin
  connect := TADOConnection.Create(nil);
  connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
  connect.KeepConnection   := False;
  connect.LoginPrompt      := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('SELECT * FROM view_doc_blob WHERE doc_id = ' + IntToStr(global_id));
  Q.Open;

  if Q.FieldByName('doc_type_cod').AsString <> '18' then begin
    Application.MessageBox('Данный акт не может быть отправлен в Диадок!', 'Внимание!', MB_ICONWARNING or MB_OK);
    connect.Free;
    Q.Free;
    Exit;
  end;

  if not Q.FieldByName('edo_docs_id').IsNull then begin
    Application.MessageBox('Акт уже отправлен в Диадок!', 'Внимание!', MB_ICONWARNING or MB_OK);
    connect.Free;
    Q.Free;
    Exit;
  end;

  if Application.MessageBox('Подписать и отправить Акт?', 'Внимание!', MB_ICONQUESTION or MB_OKCANCEL or MB_DEFBUTTON2) <> ID_OK then begin
    connect.Free;
    Q.Free;
    Exit;
  end;


  doc_id  := Q.FieldByName('doc_id').AsInteger;
  acts_id := Q.FieldByName('global_id').AsInteger;

  ClientDS := TClientDataSet.Create(nil);
  ClientDS.FieldDefs.Add('FileName',        ftString, 500);
  ClientDS.FieldDefs.Add('DocumentDate',    ftDateTime);
  ClientDS.FieldDefs.Add('DocumentNumber',  ftString, 500);
  ClientDS.FieldDefs.Add('ContractDocumentNumber', ftString, 50);
  ClientDS.FieldDefs.Add('ContractDocumentDate',   ftDateTime);
  ClientDS.FieldDefs.Add('total',   ftCurrency);
  ClientDS.FieldDefs.Add('vat',     ftCurrency);
  ClientDS.CreateDataSet;
  ClientDS.LogChanges := False;

  // Запросить pdf форму
  Q.SQL.Clear;
  Q.SQL.Add('SELECT inf_obj_id FROM inf_obj WHERE type_inf_id = 151 AND inf_obj_cod = ''02'''); // Формат XML
  Q.Open;
  files_type_id := Q.FieldByName('inf_obj_id').AsInteger;

  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_doc_blob_detail WHERE doc_id = ' + IntToStr(doc_id) + ' AND files_type_id = ' + IntToStr(files_type_id));
  Q.Open;

  doc_detail_id := Q.FieldByName('doc_detail_id').AsInteger;


  sp_BLOB_DETAIL_modify := TADOStoredProc.Create(nil);
  sp_BLOB_DETAIL_modify.Connection := connect;
  sp_BLOB_DETAIL_modify.ProcedureName := 'sp_BLOB_DETAIL_modify';
  sp_BLOB_DETAIL_modify.Parameters.Refresh;
  sp_BLOB_DETAIL_modify.Parameters.ParamByName('@doc_detail_id').Value := doc_detail_id;
  sp_BLOB_DETAIL_modify.Parameters.ParamByName('@type_action'  ).Value := 10;
  sp_BLOB_DETAIL_modify.Open;
  mem_bytes := TStringStream.Create(TArray<Byte>(LZHUnPack(sp_BLOB_DETAIL_modify.FieldByName('doc_image').AsBytes)));


  Q.SQL.Clear;
  Q.SQL.Add('SELECT * FROM view_acts WHERE acts_id = ' + IntToStr(acts_id));
  Q.Open;

  ClientDS.Append;
  ClientDS.FieldByName('FileName'               ).Value := sp_BLOB_DETAIL_modify.FieldByName('files_name').Value;
  ClientDS.FieldByName('DocumentDate'           ).Value := Q.FieldByName('acts_date').Value;
  ClientDS.FieldByName('DocumentNumber'         ).Value := Q.FieldByName('acts_cod').Value;
  ClientDS.FieldByName('ContractDocumentNumber' ).Value := Q.FieldByName('contract_cod').Value;
  ClientDS.FieldByName('ContractDocumentDate'   ).Value := Q.FieldByName('contract_date_begin').Value;
  ClientDS.FieldByName('total'                  ).Value := Q.FieldByName('acts_sum').Value;
  ClientDS.FieldByName('vat'                    ).Value := null;
  ClientDS.Post;


  handle := LoadLibrary('work_edo.dll');
  @FFirm := GetProcAddress(handle, 'CreateWndSendDocumnet');
  v := FFirm('100', 'XmlAcceptanceCertificate', mem_bytes.Bytes, mem_bytes.Size, doc_id, '9687524981', ClientDS);
  FreeLibrary(handle);

  mem_bytes.Free;
  sp_BLOB_DETAIL_modify.Free;
  Q.Free;

  if v[0] <> -9 then begin
    sp_global_edo_link_modify := TADOStoredProc.Create(nil);
    sp_global_edo_link_modify.Connection := connect;
    sp_global_edo_link_modify.ProcedureName := 'sp_global_edo_link_modify';
    sp_global_edo_link_modify.Parameters.Refresh;
    sp_global_edo_link_modify.Parameters.ParamByName('@global_id'  ).Value := doc_id;
    sp_global_edo_link_modify.Parameters.ParamByName('@edo_docs_id').Value := v[0];
    sp_global_edo_link_modify.ExecProc;
    sp_global_edo_link_modify.Free;

    Application.MessageBox('Документ успешно отправлен!', 'Внимание', MB_ICONINFORMATION or MB_OK);
  end else begin
    Application.MessageBox('Ошибка при отправлении документа!', 'Внимание', MB_ICONERROR or MB_OK);
  end;

  connect.Free;
end;


function CreateCheckDocument(usr_pwd_lis: PUser_pwd; ClientDS_Main: TClientDataSet; var ClientDS_Detail: TClientDataSet): variant; export;
var Connect : TADOConnection;
          Q : TADOQuery;
set_main_exists : boolean;
begin
  Connect := TADOConnection.Create(nil);
  Connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd_lis^.user_name+';Password='+usr_pwd_lis^.user_pass+';Initial Catalog='+usr_pwd_lis^.catalog+';Data Source='+usr_pwd_lis^.server+';';
  Connect.KeepConnection   := False;
  Connect.LoginPrompt      := False;

  Q := TADOQuery.Create(nil);
  Q.Connection := Connect;

  ClientDS_Detail.First;
  while not ClientDS_Detail.Eof do begin

    Q.SQL.Clear;
    Q.SQL.Add('SELECT acts_id FROM ACTS_BARGAIN WHERE bargain_id = ' + ClientDS_Detail.FieldByName('document_id').AsString);
    Q.Open;

    if Q.RecordCount = 0 then begin
      ClientDS_Detail.Edit;
      ClientDS_Detail.FieldByName('document_date_delete').Value := Date;
      ClientDS_Detail.Post;
    end else begin
      Q.First;
      set_main_exists := False;
      while not Q.Eof do begin

        if ClientDS_Main.Locate('document_id', Q.FieldByName('acts_id').AsInteger, []) then begin
          set_main_exists := True;
          break;
        end;


        Q.Next;
      end;

      if set_main_exists = False then begin
        ClientDS_Detail.Edit;
        ClientDS_Detail.FieldByName('document_date_delete').Value := Date;
        ClientDS_Detail.Post;
      end;
    end;

    ClientDS_Detail.Next;
  end;

  Q.Free;
  Connect.Free;
end;


function CreateWndDocBlobList (AppHand: THandle; global_id: integer; caption: string; usr_pwd: PUser_pwd):variant; export;
begin
  Application.Handle := AppHand;
  fmDocBlob := TfmDocBlob.Create(Application, global_id, caption, usr_pwd);
  try
    fmDocBlob.ShowModal;
    result := VarArrayOf([-9, '', '']);
  finally
    fmDocBlob.Free;
  end;
end;

initialization
  dxInitialize;

finalization
  dxFinalize;


end.
