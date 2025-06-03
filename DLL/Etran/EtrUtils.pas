unit EtrUtils;

interface
uses Default,   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, cxStyles, StdCtrls, DBClient, ComCtrls, ToolWin;

function  GetEtranConnect(users_group_cod: string; usr_pwd: PUser_pwd): string;
procedure GetListPPLand  (users_group_cod: string; usr_pwd: PUser_pwd; etran_doc_id: integer; var ClientDS: TClientDataSet); export;

implementation

function GetEtranConnect(users_group_cod: string; usr_pwd: PUser_pwd): string;
var   login : string;
    db_name : string;
begin
  if users_group_cod =  '0' then begin login := 'Etran_rtr'; db_name := 'lis_etran'; end;
  if users_group_cod =  '1' then begin login := 'Etran_KHT'; db_name := 'depo_etran'; end;
  if users_group_cod =  '3' then begin login := 'Etran_PRV'; db_name := 'depo_etran'; end;
  if users_group_cod =  '5' then begin login := 'Etran_STS'; db_name := 'depo_etran'; end;
  if users_group_cod =  '6' then begin login := 'Etran_KAZ'; db_name := 'depo_etran'; end;
  if users_group_cod =  '7' then begin login := 'Etran_RTR'; db_name := 'depo_etran'; end;
  if users_group_cod =  '9' then begin login := 'Etran_SMT'; db_name := 'lis_cont_etran'; end;
  if users_group_cod = '30' then begin login := 'Etran_SNN'; db_name := 'depo_etran'; end;
  if users_group_cod = '10' then begin login := 'Etran_MD';  db_name := 'depo_etran'; end;
  if users_group_cod = '16' then begin login := 'Etran_ITL'; db_name := 'lis_itek_etran'; end;
  if users_group_cod = '18' then begin login := 'Etran_ILG'; db_name := 'depo_etran'; end;
  if users_group_cod = '17' then begin login := 'Etran_DEMO'; db_name := 'depo_etran'; end;
  if users_group_cod = '19' then begin login := 'Etran_LGT'; db_name := 'depo_etran'; end;
  if users_group_cod = '20' then begin login := 'Etran_RZL'; db_name := 'depo_etran'; end;
  if users_group_cod = '21' then begin login := 'Etran_SMT'; db_name := 'depo_etran'; end;
  if users_group_cod = '27' then begin login := 'Etran_NGS'; db_name := 'depo_etran'; end;
  if users_group_cod = '35' then begin login := 'Etran_depo'; db_name := 'depo_etran'; end;

  Result := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+login+';Password='+'etran'+';Initial Catalog='+db_name+';Data Source='+usr_pwd^.server+';';
end;

procedure GetListPPLand(users_group_cod: string; usr_pwd: PUser_pwd; etran_doc_id: integer; var ClientDS: TClientDataSet);
var connect: TADOConnection;
    Q: TADOQuery;
begin
  connect := TADOConnection.Create(nil);
  connect.ConnectionString := GetEtranConnect(users_group_cod, usr_pwd);
  connect.LoginPrompt := False;
  connect.KeepConnection := False;
  connect.Open;

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;
  Q.SQL.Add('DECLARE @invoiceID int, @invoice_id int, @invFromCountryCode int');
  Q.SQL.Add('SET @invoiceID = ' + IntToStr(etran_doc_id));

  Q.SQL.Add('SELECT	@invoice_id = invoice_id, @invFromCountryCode = invFromCountryCode');
  Q.SQL.Add('FROM	invoice');
  Q.SQL.Add('WHERE	invoiceID = @invoiceID');

  Q.SQL.Add('SELECT x2.*, inf_obj_name node_type_name FROM');
  Q.SQL.Add('(');
  Q.SQL.Add('SELECT	case when (@invFromCountryCode <> 643 and rw%2=1) or (@invFromCountryCode = 643 and rw%2=0)');
  Q.SQL.Add('			then (SELECT inf_obj_id FROM lis1..inf_obj WHERE type_inf_id = -102 AND inf_obj_cod = ''1'')');
  Q.SQL.Add('			else (SELECT inf_obj_id FROM lis1..inf_obj WHERE type_inf_id = -102 AND inf_obj_cod = ''2'') end node_type_id, *');
  Q.SQL.Add('FROM');
  Q.SQL.Add('(');
  Q.SQL.Add('	SELECT	row_number() over(order by invDistance_id) rw, inf_obj_id node_id, inf_obj_cod node_cod, inf_obj_name node_name');
  Q.SQL.Add('	FROM	invDistance inner join (SELECT * FROM lis1..inf_obj_NODE WHERE set_ppland = 1 and convert(varchar(6), getdate(), 112) BETWEEN convert(varchar(6), date_begin, 112) AND convert(varchar(6), date_end, 112)) x1 on');
  Q.SQL.Add('			invDistance.distStationCode COLLATE Cyrillic_General_CI_AS = x1.inf_obj_cod');
  Q.SQL.Add('	WHERE	invoice_id = @invoice_id');
  Q.SQL.Add(') x1) x2 left join lis1..inf_obj on x2.node_type_id = inf_obj.inf_obj_id');
  Q.Open;

  while not Q.Eof do begin
    ClientDS.Append;
    ClientDS.FieldByName('node_id'        ).Value := Q.FieldByName('node_id').Value;
    ClientDS.FieldByName('node_cod'       ).Value := Q.FieldByName('node_cod').Value;
    ClientDS.FieldByName('node_name'      ).Value := Q.FieldByName('node_name').Value;
    ClientDS.FieldByName('node_type_id'   ).Value := Q.FieldByName('node_type_id').Value;
    ClientDS.FieldByName('node_type_name' ).Value := Q.FieldByName('node_type_name').Value;
    ClientDS.Post;
    Q.Next;
  end;


  Q.Free;
  connect.Free;
end;

end.
