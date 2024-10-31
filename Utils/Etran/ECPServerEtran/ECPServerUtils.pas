unit ECPServerUtils;

interface

uses  SysUtils, Windows, Forms, Variants, StrUtils, Dialogs, Registry, Messages, EtranSOAP,
      Data.DB, Datasnap.DBClient, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, System.Classes, Soap.EncdDecd, Wcrypt2,
      Data.Win.ADODB;


procedure ClientDSAppendField(ClientDS: TClientDataSet; field_name: string; value: string);

// Запрос к ЭТРАНу
function GetEtran(ip: string; login: string; password: string; var query_xml: string; var message_error: string): Boolean;

// Проверка полученного сообщения на предмет ошибок (Если ошибка, то error_message заполнена)
function CheckEtranXML(query_xml: string; var message_error: string; var error_cod: string): boolean;

// Возвращает список НСИ вагонов в ClientDataSet.XMLData
function ParserVagonNSI(query_xml: string): string;
function ParserVagonNSI2(str_num_vagon: string): string;

// Возвращает список Организаций ClientDataSet.XMLData
function ParserPassport(query_xml: string): string;

// Возвращает список Документов ожидающих ЭП ClientDataSet.XMLData
function ParserECPList(query_xml: string): string;

// Получить текст для подписи
function ParserECPText(query_xml: string): string;
function ParserECPBinary(query_xml: string): string;

// Подписать документ
function Diadoc_SignBASE64(cert_num: string; file_blob: TMemoryStream; var result_xml: string; var message_error: string): boolean;

// Перевести stream в base64
function Diadoc_StreamToBASE64  (file_blob: TStream): string;
function Diadoc_StreamFromBASE64(file_base64: string): string;

// Получить версию ЭТРАНа
function ParserEtranVersion(query_xml: string): string;

function GetSerialNumber(CertInfo: PCCERT_CONTEXT): String;

procedure SQLLogBegin(functions: string; duration: integer; xml1: string; xml2: string);

implementation


procedure SQLLogBegin(functions: string; duration: integer; xml1: string; xml2: string);
var sp_log_ecp: TADOStoredProc;
begin
//  try
//    sp_log_ecp := TADOStoredProc.Create(nil);
//    sp_log_ecp.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;Password=cjnhfkjubcnbrf;Initial Catalog=lis_etran;Data Source=10.10.101.11;';
//    sp_log_ecp.ProcedureName := 'sp_log_ecp';
//    sp_log_ecp.Parameters.Refresh;
//    sp_log_ecp.Parameters.ParamByName('@functions' ).Value := functions;
//    sp_log_ecp.Parameters.ParamByName('@duration'  ).Value := duration;
//    sp_log_ecp.Parameters.ParamByName('@xml1'      ).Value := xml1;
//    sp_log_ecp.Parameters.ParamByName('@xml2'      ).Value := xml2;
//    sp_log_ecp.Parameters.ParamByName('@xml3'      ).Value := xml3;
//    sp_log_ecp.ExecProc;
//    sp_log_ecp.Free;
//  except
//    on E: Exception do begin
////      ShowMessage(E.Message);
//    end;
//  end;
end;



function GetEtran(ip: string; login: string; password: string; var query_xml: string; var message_error: string): Boolean;
var    res : Boolean;
      text : string;
begin

//  text := query_xml;
//  TThread.Synchronize(nil,
//  procedure
//  var
//     log_path : string;
//     log_name : string;
//   log_stream : TStringList;
//  begin
//    log_path := ExtractFilePath(ParamStr(0)) + '\LOG_SEND';
//    if not DirectoryExists(log_path) then ForceDirectories(log_path);
//    log_name := log_path + '\' + FormatDateTime('yyyymmdd', Date) + '.txt';
//
//    log_stream := TStringList.Create();
//    if FileExists(log_name) then log_stream.LoadFromFile(log_name);
//    log_stream.Add('================================================================================');
//    log_stream.Add('BEGIN login=' + login + ', password=' + password + ', text=' + LeftStr(text, 800));
//    log_stream.SaveToFile(log_name);
//    log_stream.Free;
//  end);


  try
    GetIEtranSys(False,ip).GetBlock(login, password, query_xml);
    res := True;
    message_error := '';
  except
    on E: Exception do begin
      message_error := 'Запрос ЭТРАН (GetIEtranSys.GetBlock)' + E.Message;
      res := False;
    end;
  end;

  text := query_xml;
//  TThread.Synchronize(nil,
//  procedure
//  var
//     log_path : string;
//     log_name : string;
//   log_stream : TStringList;
//  begin
//    log_path := ExtractFilePath(ParamStr(0)) + '\LOG_SEND';
//    if not DirectoryExists(log_path) then ForceDirectories(log_path);
//    log_name := log_path + '\' + FormatDateTime('yyyymmdd', Date) + '.txt';
//
//    log_stream := TStringList.Create();
//    if FileExists(log_name) then log_stream.LoadFromFile(log_name);
//    log_stream.Add('END res =' + BoolToStr(res, True) + ' login=' + login + ', password=' + password + ', text=' + LeftStr(text, 800));
//    log_stream.Add('++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
//    log_stream.SaveToFile(log_name);
//    log_stream.Free;
//  end);

  Result := res;
end;

function CheckEtranXML(query_xml: string; var message_error: string; var error_cod: string): boolean;
var         res : Boolean;
            xml : TXMLDocument;
           node : IDOMNode;
      node_attr : IDOMNode;
              i : integer;
      errorCode : string;
   errorMessage : string;
errorStatusCode : string;
begin
  if Pos('<error>', query_xml) <> 0 then begin

    xml := TXMLDocument.Create(Application);
    xml.XML.Text := query_xml;
    xml.Active := True;

    errorCode := '';
    errorMessage := '';
    errorStatusCode := '';

    for i:=0 to xml.DOMDocument.documentElement.childNodes.length-1 do begin
      node := xml.DOMDocument.documentElement.childNodes.item[i];
      node_attr := node.attributes.getNamedItem('value');

      if (node.nodeName = 'errorCode') and (node_attr <> nil) then  errorCode := node_attr.nodeValue;
      if (node.nodeName = 'errorMessage') and (node_attr <> nil) then  errorMessage := node_attr.nodeValue;
      if (node.nodeName = 'errorStatusCode') and (node_attr <> nil) then  errorStatusCode := node_attr.nodeValue;
    end;

    message_error := errorCode + ' (' + errorStatusCode + '):' + errorMessage;
    error_cod     := errorCode;

    res := False;
  end else begin
    message_error := '';
    error_cod     := '';
    res := True;
  end;

  Result := res;
end;


function ParserEtranVersion(query_xml: string): string;
var         res : string;
            xml : TXMLDocument;
           node : IDOMNode;
      node_attr : IDOMNode;
              i : integer;
      errorCode : string;
   errorMessage : string;
errorStatusCode : string;
begin
  xml := TXMLDocument.Create(Application);
  xml.XML.Text := query_xml;
  xml.Active := True;

  for i:=0 to xml.DOMDocument.documentElement.childNodes.length-1 do begin
    node := xml.DOMDocument.documentElement.childNodes.item[i];
    node_attr := node.attributes.getNamedItem('value');

    if (node.nodeName = 'version') and (node_attr <> nil) then  res := node_attr.nodeValue;
  end;

  Result := res;
end;


function ParserVagonNSI(query_xml: string): string;
var Client_Vagon : TClientDataSet;
             xml : TXMLDocument;
            node : IXMLNode;
       node_attr : IXMLNode;
//            node : IDOMNode;
//       node_attr : IDOMNode;
             i,k : integer;
      field_name : string;
begin
  Client_Vagon := TClientDataSet.Create(nil);
  Client_Vagon.FieldDefs.Add('id', ftAutoInc);
  Client_Vagon.FieldDefs.Add('num_vagon', ftInteger);
  Client_Vagon.FieldDefs.Add('vagon_xml', ftString, 8000);
  Client_Vagon.FieldDefs.Add('carNumber', ftString, 20);
  Client_Vagon.FieldDefs.Add('carLength', ftString, 20);
  Client_Vagon.FieldDefs.Add('carEndArendaDate', ftDateTime);
  Client_Vagon.FieldDefs.Add('carRace', ftString, 20);
  Client_Vagon.FieldDefs.Add('carSign', ftString, 20);
  Client_Vagon.FieldDefs.Add('carYear', ftString, 20);
  Client_Vagon.FieldDefs.Add('carNextRepair', ftDateTime);
  Client_Vagon.FieldDefs.Add('carLastRepair', ftDateTime);
  Client_Vagon.FieldDefs.Add('carTypeRepair', ftString, 20);
  Client_Vagon.FieldDefs.Add('carDateSob', ftDateTime);
  Client_Vagon.FieldDefs.Add('carModel', ftString, 200);
  Client_Vagon.FieldDefs.Add('carNSIDate', ftDateTime);
  Client_Vagon.FieldDefs.Add('carTypeID', ftInteger);
  Client_Vagon.FieldDefs.Add('carTypeName', ftString, 200);
  Client_Vagon.FieldDefs.Add('carOwnerId', ftInteger);
  Client_Vagon.FieldDefs.Add('carOwnerCountryCode', ftString, 20);
  Client_Vagon.FieldDefs.Add('carOwnerCountryName', ftString, 200);
  Client_Vagon.FieldDefs.Add('carOwnerTypeID', ftInteger);
  Client_Vagon.FieldDefs.Add('carOwnerTypeName', ftString, 200);
  Client_Vagon.FieldDefs.Add('carOwnerOKPO', ftString, 20);
  Client_Vagon.FieldDefs.Add('carOwnerName', ftString, 200);
  Client_Vagon.FieldDefs.Add('carArendatorID', ftInteger);
  Client_Vagon.FieldDefs.Add('carArendatorName', ftString, 200);
  Client_Vagon.FieldDefs.Add('carTonnage', ftString, 20);
  Client_Vagon.FieldDefs.Add('carAxles', ftString, 20);
  Client_Vagon.FieldDefs.Add('carVolume', ftString, 20);
  Client_Vagon.FieldDefs.Add('carWeightDep', ftString, 20);
  Client_Vagon.FieldDefs.Add('carTankType', ftString, 200);
  Client_Vagon.FieldDefs.Add('carISKLDate', ftDateTime);
  Client_Vagon.FieldDefs.Add('carResponse', ftString, 20);
  Client_Vagon.FieldDefs.Add('carNerab', ftString, 20);
  Client_Vagon.FieldDefs.Add('carApproachLine', ftString, 20);
  Client_Vagon.FieldDefs.Add('carArendatorOKPO', ftString, 20);
  Client_Vagon.FieldDefs.Add('carRepairProlong', ftDateTime);
  Client_Vagon.FieldDefs.Add('carEndRepairProlong', ftDateTime);
  Client_Vagon.FieldDefs.Add('carWeightDepSign', ftString, 20);
  Client_Vagon.FieldDefs.Add('carTonnageNSI', ftString, 20);
  Client_Vagon.FieldDefs.Add('carWeightDepNSI', ftString, 20);
  Client_Vagon.FieldDefs.Add('dateTeleg', ftDateTime);
  Client_Vagon.FieldDefs.Add('numTeleg', ftString, 20);
  Client_Vagon.FieldDefs.Add('textTeleg', ftString, 4000);
  Client_Vagon.FieldDefs.Add('carConsPark', ftString, 20);
  Client_Vagon.FieldDefs.Add('carTrustedOperator', ftString, 200);
  Client_Vagon.FieldDefs.Add('carStateDate', ftDateTime);
  Client_Vagon.CreateDataSet;
  Client_Vagon.LogChanges := False;

  xml := TXMLDocument.Create(Application);
  xml.XML.Text := query_xml;
  xml.Active := True;

  for i := 0 to xml.documentElement.childNodes.Count - 1 do begin
    node := xml.documentElement.childNodes.Nodes[i];

    Client_Vagon.Append;
    Client_Vagon.FieldByName('vagon_xml').Value := node.XML;

    for k := 0 to node.childNodes.Count - 1 do begin
      node_attr := node.childNodes.Nodes[k].AttributeNodes.Nodes['value'];
      if node_attr <> nil then begin
        field_name := node.childNodes.Nodes[k].nodeName;
        if Client_Vagon.FindField(field_name) <> nil then begin

          case Client_Vagon.FindField(field_name).DataType of
            ftInteger : begin
                          Client_Vagon.FieldByName(field_name).Value := StrToInt(node_attr.Text);
                        end;
            ftString  : begin
                          Client_Vagon.FieldByName(field_name).Value := node_attr.Text;
                        end;
            ftDateTime: begin
                          Client_Vagon.FieldByName(field_name).Value := StrToDateTime(node_attr.Text);
                        end;
          end;
        end;
      end;
    end;

    Client_Vagon.Post;
  end;

  Result := Client_Vagon.XMLData;

  Client_Vagon.Free;
end;


function ParserVagonNSI2(str_num_vagon: string): string;
var Client_Vagon : TClientDataSet;
             i,k : integer;
  str_vagon_list : TStringList;
begin
  Client_Vagon := TClientDataSet.Create(nil);
  Client_Vagon.FieldDefs.Add('id', ftAutoInc);
  Client_Vagon.FieldDefs.Add('num_vagon', ftInteger);
  Client_Vagon.FieldDefs.Add('vagon_xml', ftString, 8000);
  Client_Vagon.FieldDefs.Add('carNumber', ftString, 20);
  Client_Vagon.FieldDefs.Add('carLength', ftString, 20);
  Client_Vagon.FieldDefs.Add('carEndArendaDate', ftDateTime);
  Client_Vagon.FieldDefs.Add('carRace', ftString, 20);
  Client_Vagon.FieldDefs.Add('carSign', ftString, 20);
  Client_Vagon.FieldDefs.Add('carYear', ftString, 20);
  Client_Vagon.FieldDefs.Add('carNextRepair', ftDateTime);
  Client_Vagon.FieldDefs.Add('carLastRepair', ftDateTime);
  Client_Vagon.FieldDefs.Add('carTypeRepair', ftString, 20);
  Client_Vagon.FieldDefs.Add('carDateSob', ftDateTime);
  Client_Vagon.FieldDefs.Add('carModel', ftString, 200);
  Client_Vagon.FieldDefs.Add('carNSIDate', ftDateTime);
  Client_Vagon.FieldDefs.Add('carTypeID', ftInteger);
  Client_Vagon.FieldDefs.Add('carTypeName', ftString, 200);
  Client_Vagon.FieldDefs.Add('carOwnerId', ftInteger);
  Client_Vagon.FieldDefs.Add('carOwnerCountryCode', ftString, 20);
  Client_Vagon.FieldDefs.Add('carOwnerCountryName', ftString, 200);
  Client_Vagon.FieldDefs.Add('carOwnerTypeID', ftInteger);
  Client_Vagon.FieldDefs.Add('carOwnerTypeName', ftString, 200);
  Client_Vagon.FieldDefs.Add('carOwnerOKPO', ftString, 20);
  Client_Vagon.FieldDefs.Add('carOwnerName', ftString, 200);
  Client_Vagon.FieldDefs.Add('carArendatorID', ftInteger);
  Client_Vagon.FieldDefs.Add('carArendatorName', ftString, 200);
  Client_Vagon.FieldDefs.Add('carTonnage', ftString, 20);
  Client_Vagon.FieldDefs.Add('carAxles', ftString, 20);
  Client_Vagon.FieldDefs.Add('carVolume', ftString, 20);
  Client_Vagon.FieldDefs.Add('carWeightDep', ftString, 20);
  Client_Vagon.FieldDefs.Add('carTankType', ftString, 200);
  Client_Vagon.FieldDefs.Add('carISKLDate', ftDateTime);
  Client_Vagon.FieldDefs.Add('carResponse', ftString, 20);
  Client_Vagon.FieldDefs.Add('carNerab', ftString, 20);
  Client_Vagon.FieldDefs.Add('carApproachLine', ftString, 20);
  Client_Vagon.FieldDefs.Add('carArendatorOKPO', ftString, 20);
  Client_Vagon.FieldDefs.Add('carRepairProlong', ftDateTime);
  Client_Vagon.FieldDefs.Add('carEndRepairProlong', ftDateTime);
  Client_Vagon.FieldDefs.Add('carWeightDepSign', ftString, 20);
  Client_Vagon.FieldDefs.Add('carTonnageNSI', ftString, 20);
  Client_Vagon.FieldDefs.Add('carWeightDepNSI', ftString, 20);
  Client_Vagon.FieldDefs.Add('dateTeleg', ftDateTime);
  Client_Vagon.FieldDefs.Add('numTeleg', ftString, 20);
  Client_Vagon.FieldDefs.Add('textTeleg', ftString, 4000);
  Client_Vagon.FieldDefs.Add('carConsPark', ftString, 20);
  Client_Vagon.FieldDefs.Add('carTrustedOperator', ftString, 200);
  Client_Vagon.FieldDefs.Add('carStateDate', ftDateTime);
  Client_Vagon.CreateDataSet;
  Client_Vagon.LogChanges := False;

  str_vagon_list := TStringList.Create;
  str_vagon_list.CommaText := str_num_vagon;
  str_vagon_list.Delimiter := ',';


  for i := 0 to str_vagon_list.Count-1 do begin
    Client_Vagon.Append;
    Client_Vagon.FieldByName('num_vagon').Value := StrToIntDef(str_vagon_list.Strings[i], -9);
    Client_Vagon.FieldByName('carNumber').Value := str_vagon_list.Strings[i];
    Client_Vagon.Post;
  end;
  Result := Client_Vagon.XMLData;

  str_vagon_list.Free;
  Client_Vagon.Free;
end;


function ParserPassport(query_xml: string): string;
var Client_Passport : TClientDataSet;
                xml : TXMLDocument;
               node : IDOMNode;
          node_list : IDOMNodeList;
          node_attr : IDOMNode;
              i,k,x : integer;
         field_name : string;

              orgID : integer;
            orgOKPO : string;
             orgINN : string;
             orgKpp : string;
            orgName : string;
       orgShortName : string;
            orgType : string;


begin
  Client_Passport := TClientDataSet.Create(nil);
  Client_Passport.FieldDefs.Add('id', ftAutoInc);
  Client_Passport.FieldDefs.Add('orgID', ftInteger);
  Client_Passport.FieldDefs.Add('orgOKPO', ftString, 250);
  Client_Passport.FieldDefs.Add('orgINN', ftString, 250);
  Client_Passport.FieldDefs.Add('orgKpp', ftString, 250);
  Client_Passport.FieldDefs.Add('orgName', ftString, 250);
  Client_Passport.FieldDefs.Add('orgShortName', ftString, 250);
  Client_Passport.FieldDefs.Add('orgType', ftString, 250);

  Client_Passport.FieldDefs.Add('addressID', ftString, 250);
  Client_Passport.FieldDefs.Add('addressType', ftString, 250);
  Client_Passport.FieldDefs.Add('addressText', ftString, 250);
  Client_Passport.FieldDefs.Add('addressTGNL', ftString, 250);
  Client_Passport.FieldDefs.Add('addressPostInd', ftString, 250);
  Client_Passport.FieldDefs.Add('ADR_COUNTRY', ftString, 250);
  Client_Passport.FieldDefs.Add('ADR_REGION', ftString, 250);
  Client_Passport.FieldDefs.Add('ADR_CITYTYPE', ftString, 250);
  Client_Passport.FieldDefs.Add('ADR_CITY', ftString, 250);
  Client_Passport.FieldDefs.Add('ADR_STREET', ftString, 250);
  Client_Passport.FieldDefs.Add('ADR_BUILDING', ftString, 250);
  Client_Passport.FieldDefs.Add('ADR_FLAT', ftString, 250);
  Client_Passport.FieldDefs.Add('ADR_NOTES', ftString, 250);
  Client_Passport.FieldDefs.Add('ADR_PHONE', ftString, 250);

  Client_Passport.CreateDataSet;
  Client_Passport.LogChanges := False;



  xml := TXMLDocument.Create(Application);
  xml.XML.Text := query_xml;
  xml.Active := True;

  for i:=0 to xml.DOMDocument.documentElement.childNodes.length-1 do begin
    node := xml.DOMDocument.documentElement.childNodes.item[i];
    node_list := node.childNodes;

    orgID        := -9;
    orgOKPO      := '';
    orgINN       := '';
    orgKpp       := '';
    orgName      := '';
    orgShortName := '';
    orgType      := '';

    for k:=0 to node_list.length-1 do begin
      node_attr := node_list.item[k].attributes.getNamedItem('value');

      if node_attr <> nil then begin
        if node_list.item[k].nodeName = 'orgID'         then orgID := StrToInt(node_attr.nodeValue);
        if node_list.item[k].nodeName = 'orgOKPO'       then orgOKPO := node_attr.nodeValue;
        if node_list.item[k].nodeName = 'orgINN'        then orgINN := node_attr.nodeValue;
        if node_list.item[k].nodeName = 'orgKpp'        then orgKpp := node_attr.nodeValue;
        if node_list.item[k].nodeName = 'orgName'       then orgName := node_attr.nodeValue;
        if node_list.item[k].nodeName = 'orgShortName'  then orgShortName := node_attr.nodeValue;
        if node_list.item[k].nodeName = 'orgType'       then orgType := node_attr.nodeValue;
      end;


      if node_list.item[k].hasChildNodes then begin
        Client_Passport.Append;
        Client_Passport.FieldByName('orgID'        ).Value := orgID;
        Client_Passport.FieldByName('orgOKPO'      ).Value := orgOKPO;
        Client_Passport.FieldByName('orgINN'       ).Value := orgINN;
        Client_Passport.FieldByName('orgKpp'       ).Value := orgKpp;
        Client_Passport.FieldByName('orgName'      ).Value := orgName;
        Client_Passport.FieldByName('orgShortName' ).Value := orgShortName;
        Client_Passport.FieldByName('orgType'      ).Value := orgType;

        for x := 0 to node_list.item[k].childNodes.length-1 do begin
          node_attr := node_list.item[k].childNodes.item[x].attributes.getNamedItem('value');

          if node_attr <> nil then begin
            field_name := node_list.item[k].childNodes.item[x].nodeName;
            if Client_Passport.FindField(field_name) <> nil then begin
              case Client_Passport.FindField(field_name).DataType of
                ftInteger : begin
                              Client_Passport.FieldByName(field_name).Value := StrToInt(node_attr.nodeValue);
                            end;
                ftString  : begin
                              Client_Passport.FieldByName(field_name).Value := node_attr.nodeValue;
                            end;
                ftDateTime: begin
                              Client_Passport.FieldByName(field_name).Value := StrToDateTime(node_attr.nodeValue);
                            end;
              end;
            end;
          end;

        end;
        Client_Passport.Post;
      end;

    end;

  end;

  Result := Client_Passport.XMLData;

  Client_Passport.Free;
end;


procedure ClientDSAppendField(ClientDS: TClientDataSet; field_name: string; value: string);
begin
  if ClientDS.FindField(field_name) <> nil then begin
    case ClientDS.FindField(field_name).DataType of
      ftInteger : begin
                    ClientDS.FieldByName(field_name).Value := StrToInt(value);
                  end;
      ftString  : begin
                    ClientDS.FieldByName(field_name).Value := value;
                  end;
      ftDateTime: begin
                    ClientDS.FieldByName(field_name).Value := StrToDateTime(value);
                  end;
    end;
  end;
end;

// Возвращает список Документов ожидающих ЭП ClientDataSet.XMLData
function ParserECPList(query_xml: string): string;
var    Client_ECPList : TClientDataSet;
                  xml : TXMLDocument;
         node, node2  : IDOMNode;
         node3, node4 : IDOMNode;
node_list, node_list2 : IDOMNodeList;
node_list3, node_list4: IDOMNodeList;
              i,k,j,x : integer;
begin
  Client_ECPList := TClientDataSet.Create(nil);
  Client_ECPList.FieldDefs.Add('id', ftAutoInc);
  Client_ECPList.FieldDefs.Add('DOC_ID', ftInteger);
  Client_ECPList.FieldDefs.Add('DocDescription', ftString, 250);
  Client_ECPList.FieldDefs.Add('StateId', ftInteger);
  Client_ECPList.FieldDefs.Add('StateName', ftString, 250);
  Client_ECPList.FieldDefs.Add('DocTypeId', ftInteger);
  Client_ECPList.FieldDefs.Add('DocTypeName', ftString, 250);
  Client_ECPList.FieldDefs.Add('ECPDate', ftDateTime);
  Client_ECPList.FieldDefs.Add('ECPDocTypeID', ftInteger);
  Client_ECPList.FieldDefs.Add('ECPDocTypeName', ftString, 250);
  Client_ECPList.CreateDataSet;
  Client_ECPList.LogChanges := False;

  xml := TXMLDocument.Create(Application);
  xml.XML.Text := query_xml;
  xml.Active := True;

  for i:=0 to xml.DOMDocument.documentElement.childNodes.length-1 do begin
    node := xml.DOMDocument.documentElement.childNodes.item[i];
    node_list := node.childNodes;


//    Client_ECPList.Append;

    for k:=0 to node_list.length-1 do begin
      node2 := node_list.item[k];
      node_list2 := node2.childNodes;

      if node2.hasChildNodes then begin
        if Client_ECPList.State <> dsInsert then Client_ECPList.Append;
        ClientDSAppendField(Client_ECPList, node2.nodeName, node2.firstChild.nodeValue);
      end;

      for j := 0 to node_list2.length-1 do begin
        node3 := node_list2.item[j];
        node_list3 := node3.childNodes;

        if node3.hasChildNodes then begin
          if Client_ECPList.State <> dsInsert then Client_ECPList.Append;
          ClientDSAppendField(Client_ECPList, node3.nodeName, node3.firstChild.nodeValue);
        end;

        for x := 0 to node_list3.length-1 do begin
          node4 := node_list3.item[x];
          node_list4 := node4.childNodes;
          if node4.hasChildNodes then begin
            if Client_ECPList.State <> dsInsert then Client_ECPList.Append;
            ClientDSAppendField(Client_ECPList, node4.nodeName, node4.firstChild.nodeValue);
          end;
        end;

      end;

    end;

    if Client_ECPList.State = dsInsert then Client_ECPList.Post;
  end;

  Result := Client_ECPList.XMLData;

  Client_ECPList.Free;
end;

function ParserECPText(query_xml: string): string;
var res : string;
begin
  res := ReplaceStr(query_xml, '&quot;', '"');
  res := RightStr(res, Length(res) - Pos('<text value="', res) - 12);
  res := LeftStr(res, Pos('"/>', res)-1);
  res := ReplaceStr(res,char(10), char(13) + char(10));
  Result := res;
end;

function ParserECPBinary(query_xml: string): string;
var res : string;
begin
  res := ReplaceStr(query_xml, '&quot;', '"');
  res := RightStr(res, Length(res) - Pos('<textBinary value="', res) - 18);
  res := LeftStr(res, Pos('"/>', res)-1);
  res := ReplaceStr(res, char(10), '');
  res := ReplaceStr(res, char(13), '');
  Result := res;
end;


function ByteArrayToStr(pbData: PByte; cbData: DWORD): String;
var
  I, J: Integer;
  S: String;
begin
  Result := '';
  if not Assigned(pbData) or (cbData <= 0) then
    Exit;
  for I := 0 to cbData - 1 do
  begin
    J := PByteArray(pbData)^[I];
    S := IntToHex(J, 2);
    if (I > 0) and (I and 1 = 0) then
      S := S + ' ';
    Result := S + Result;
  end;
end;

function GetSerialNumber(CertInfo: PCCERT_CONTEXT): String;
begin
  Result := ByteArrayToStr(CertInfo.pCertInfo.SerialNumber.pbData, CertInfo.pCertInfo.SerialNumber.cbData);
end;


function Diadoc_SignBASE64(cert_num: string; file_blob: TMemoryStream; var result_xml: string; var message_error: string): boolean;
var hCert         : PCCERT_CONTEXT; // Handle сертификата

    MessageArray  : array of PByte; // Структура ссылок на подписываемые файлы
    MessageSize   : array of DWORD; // Структура ссылок на размер подписываемых файлов

    SigParams     : CRYPT_SIGN_MESSAGE_PARA; // Структура параметров для подписи

    cbSignedMessageBlob : DWORD; // Размер подписи

    pStreamOut    : TMemoryStream; // Подписанные данных

    MessageBASE64 : TStringStream; // Поток для сохранения данных в формате BASE64

    res           : string;

    hStoreHandle : HCERTSTORE; // ссылка на хранилище

    contner_name   : PChar; // Имя провайдера
    store_name     : PChar; // Имя хранилища
//    cert_name      : PChar; // Имя сертификата
    hProvHandle  : HCRYPTPROV;     // ссылка на провайдер

//    Attr    : CRYPT_ATTRIBUTE;
//    FTime   : TFileTime;
//    NowTime : CRYPT_ATTR_BLOB;
//    pbAuth  : PBYTE;
//    cbAuth  : DWORD;
begin
  // Получаем handle на сертификат

  // Получение дескриптора криптографического провайдера
  contner_name := nil;
  if not CryptAcquireContext(@hProvHandle, contner_name, nil, PROV_RSA_FULL, 0) then begin
    message_error := 'Криптографический провайдер не найден!';
    Result := False;
    exit;
  end;

  // Открытие системного хранилища сертификатов.
  store_name := StrAlloc(length('MY') + 1);
  StrPCopy(store_name, 'MY');
  hStoreHandle := CertOpenSystemStore(hProvHandle, store_name);
  StrDispose(store_name);

  if hStoreHandle = nil then begin
    message_error := 'Ошибка при открытии системного хранилища сертификатов!' + #10 + SysErrorMessage(GetLastError);
    Result := False;
    CryptReleaseContext(hProvHandle, 0);
    exit;
  end;

  hCert := nil;
  hCert := CertEnumCertificatesInStore(hStoreHandle, hCert);

  while hCert <> nil do begin
    res := GetSerialNumber(hCert);

    if res = cert_num then
      break;

    hCert := CertEnumCertificatesInStore(hStoreHandle, hCert);
  end;

  // Будем подписывать один файл
  SetLength(MessageArray, 1);
  SetLength(MessageSize, 1);

  MessageArray[0] := file_blob.Memory;
  MessageSize [0] := file_blob.Size;

  // Инициализируем поток для подписанных данных
  pStreamOut := TMemoryStream.Create;


  // Заполняем параметры подписи
  FillChar(SigParams, SizeOf(CRYPT_SIGN_MESSAGE_PARA), #0);
  SigParams.cbSize := SizeOF(CRYPT_SIGN_MESSAGE_PARA);
  SigParams.dwMsgEncodingType := PKCS_7_ASN_ENCODING or X509_ASN_ENCODING;
  SigParams.pSigningCert := hCert;
  //  SigParams.HashAlgorithm.pszObjId := '1.2.643.2.2.9';
  SigParams.HashAlgorithm.pszObjId := hCert.pCertInfo.SignatureAlgorithm.pszObjId;
  SigParams.cMsgCert := 1;
  SigParams.rgpMsgCert := @hCert;


  // Определяем размер подписи
  cbSignedMessageBlob := 0;
  if (not (CryptSignMessage(@SigParams,
                         True,
                         1,
                         Pointer(MessageArray),
                         Pointer(MessageSize),
                         nil,
                         cbSignedMessageBlob))) then
  begin
    message_error := 'Ошибка при подписании данных (1)!' + #10 + SysErrorMessage(GetLastError);
    Result := False;
    Exit;
  end;

  // Подписываем файл
  pStreamOut.SetSize(cbSignedMessageBlob);
  if (not (CryptSignMessage(@SigParams,
                        True,
                        1,
                        Pointer(MessageArray),
                        Pointer(MessageSize),
                        pStreamOut.Memory,
                        cbSignedMessageBlob))) then
  begin
    message_error := 'Ошибка при подписании данных (2)!' + #10 + SysErrorMessage(GetLastError);
    Result := False;
    Exit;
  end;

  pStreamOut.SetSize(cbSignedMessageBlob);
  pStreamOut.Seek(0,0);


  MessageBASE64 := TStringStream.Create;
  EncodeStream(pStreamOut, MessageBASE64);

  res := MessageBASE64.DataString;
  MessageBASE64.Free;
  pStreamOut.Free;

  result_xml := res;

  Result := True;
end;

function Diadoc_StreamToBASE64(file_blob: TStream): string;
var
    MessageBASE64 : TStringStream; // Поток для сохранения данных в формате BASE64
    res           : string;
begin
  MessageBASE64 := TStringStream.Create;
  EncodeStream(file_blob, MessageBASE64);
  res := MessageBASE64.DataString;
  MessageBASE64.Free;

  Result := res;
end;


function Diadoc_StreamFromBASE64(file_base64: string): string;
var
    MessageBASE64 : TStringStream; // Поток для сохранения данных в формате BASE64
    file_blob     : TStringStream;
    res           : string;
begin

  file_blob := TStringStream.Create(file_base64);

  MessageBASE64 := TStringStream.Create;
  DecodeStream(file_blob, MessageBASE64);
  res := MessageBASE64.DataString;
  MessageBASE64.Free;
  file_blob.Free;

  Result := res;
end;


end.
