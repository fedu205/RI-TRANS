// 
// Created by the DataSnap proxy generator.
// 21.06.2017 16:59:54
// 

unit ECPServerMethodsClient;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TfmECPServerMethodsClient = class(TDSAdminClient)
  private
    FEchoStringCommand: TDBXCommand;
    FReverseStringCommand: TDBXCommand;
    FGetVersionCommand: TDBXCommand;
    FGetServiceNameCommand: TDBXCommand;
    FGetUsersNameCommand: TDBXCommand;
    FGetUsersPasswordCommand: TDBXCommand;
    FGetECPUsersNameCommand: TDBXCommand;
    FGetECPUsersPasswordCommand: TDBXCommand;
    FGetEtranStatusCommand: TDBXCommand;
    FGetEtranIPCommand: TDBXCommand;
    FGetCertNumCommand: TDBXCommand;
    FGetQueryCommand: TDBXCommand;
    FGetNSIVagonCommand: TDBXCommand;
    FGetPassportCommand: TDBXCommand;
    FGetECPListCommand: TDBXCommand;
    FGetECPTextCommand: TDBXCommand;
    FGetECPSignCommand: TDBXCommand;
    FGetECPTSPCommand: TDBXCommand;
    FSendECPCommand: TDBXCommand;
    FGetNSICommand: TDBXCommand;
    FSendDocsCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function GetVersion: string;
    function GetServiceName: string;
    function GetUsersName: string;
    function GetUsersPassword: string;
    function GetECPUsersName: string;
    function GetECPUsersPassword: string;
    function GetEtranStatus: string;
    function GetEtranIP: string;
    function GetCertNum: string;
    function GetQuery(users_name: string; users_password: string; ip_address: string; query_xml: string; var result_xml: string; var message_error: string): Boolean;
    function GetNSIVagon(str_num_vagon: string; var result_xml: string; var message_error: string): Boolean;
    function GetPassport(org_name: string; org_okpo: string; var result_xml: string; var message_error: string): Boolean;
    function GetECPList(date_ecp: TDateTime; var result_xml: string; var message_error: string): Boolean;
    function GetECPText(doc_id: Integer; var result_xml: string; var message_error: string): Boolean;
    function GetECPSign(doc_text: string; var result_xml: string; var message_error: string): Boolean;
    function GetECPTSP(doc_text: string; var result_xml: string; var message_error: string): Boolean;
    function SendECP(doc_id: Integer; doc_text: string; doc_sign: string; doc_tsp: string; var result_xml: string; var message_error: string): Boolean;
    function GetNSI(table_name: string; trans_id: Integer; var result_xml: string; var message_error: string): Boolean;
    function SendDocs(doc_text: string; var result_xml: string; var message_error: string): Boolean;
  end;

implementation

function TfmECPServerMethodsClient.EchoString(Value: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FDBXConnection.CreateCommand;
    FEchoStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FEchoStringCommand.Text := 'TfmECPServerMethods.EchoString';
    FEchoStringCommand.Prepare;
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.ExecuteUpdate;
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TfmECPServerMethodsClient.ReverseString(Value: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FDBXConnection.CreateCommand;
    FReverseStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FReverseStringCommand.Text := 'TfmECPServerMethods.ReverseString';
    FReverseStringCommand.Prepare;
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.ExecuteUpdate;
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TfmECPServerMethodsClient.GetVersion: string;
begin
  if FGetVersionCommand = nil then
  begin
    FGetVersionCommand := FDBXConnection.CreateCommand;
    FGetVersionCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetVersionCommand.Text := 'TfmECPServerMethods.GetVersion';
    FGetVersionCommand.Prepare;
  end;
  FGetVersionCommand.ExecuteUpdate;
  Result := FGetVersionCommand.Parameters[0].Value.GetWideString;
end;

function TfmECPServerMethodsClient.GetServiceName: string;
begin
  if FGetServiceNameCommand = nil then
  begin
    FGetServiceNameCommand := FDBXConnection.CreateCommand;
    FGetServiceNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetServiceNameCommand.Text := 'TfmECPServerMethods.GetServiceName';
    FGetServiceNameCommand.Prepare;
  end;
  FGetServiceNameCommand.ExecuteUpdate;
  Result := FGetServiceNameCommand.Parameters[0].Value.GetWideString;
end;

function TfmECPServerMethodsClient.GetUsersName: string;
begin
  if FGetUsersNameCommand = nil then
  begin
    FGetUsersNameCommand := FDBXConnection.CreateCommand;
    FGetUsersNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetUsersNameCommand.Text := 'TfmECPServerMethods.GetUsersName';
    FGetUsersNameCommand.Prepare;
  end;
  FGetUsersNameCommand.ExecuteUpdate;
  Result := FGetUsersNameCommand.Parameters[0].Value.GetWideString;
end;

function TfmECPServerMethodsClient.GetUsersPassword: string;
begin
  if FGetUsersPasswordCommand = nil then
  begin
    FGetUsersPasswordCommand := FDBXConnection.CreateCommand;
    FGetUsersPasswordCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetUsersPasswordCommand.Text := 'TfmECPServerMethods.GetUsersPassword';
    FGetUsersPasswordCommand.Prepare;
  end;
  FGetUsersPasswordCommand.ExecuteUpdate;
  Result := FGetUsersPasswordCommand.Parameters[0].Value.GetWideString;
end;

function TfmECPServerMethodsClient.GetECPUsersName: string;
begin
  if FGetECPUsersNameCommand = nil then
  begin
    FGetECPUsersNameCommand := FDBXConnection.CreateCommand;
    FGetECPUsersNameCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetECPUsersNameCommand.Text := 'TfmECPServerMethods.GetECPUsersName';
    FGetECPUsersNameCommand.Prepare;
  end;
  FGetECPUsersNameCommand.ExecuteUpdate;
  Result := FGetECPUsersNameCommand.Parameters[0].Value.GetWideString;
end;

function TfmECPServerMethodsClient.GetECPUsersPassword: string;
begin
  if FGetECPUsersPasswordCommand = nil then
  begin
    FGetECPUsersPasswordCommand := FDBXConnection.CreateCommand;
    FGetECPUsersPasswordCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetECPUsersPasswordCommand.Text := 'TfmECPServerMethods.GetECPUsersPassword';
    FGetECPUsersPasswordCommand.Prepare;
  end;
  FGetECPUsersPasswordCommand.ExecuteUpdate;
  Result := FGetECPUsersPasswordCommand.Parameters[0].Value.GetWideString;
end;

function TfmECPServerMethodsClient.GetEtranStatus: string;
begin
  if FGetEtranStatusCommand = nil then
  begin
    FGetEtranStatusCommand := FDBXConnection.CreateCommand;
    FGetEtranStatusCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetEtranStatusCommand.Text := 'TfmECPServerMethods.GetEtranStatus';
    FGetEtranStatusCommand.Prepare;
  end;
  FGetEtranStatusCommand.ExecuteUpdate;
  Result := FGetEtranStatusCommand.Parameters[0].Value.GetWideString;
end;

function TfmECPServerMethodsClient.GetEtranIP: string;
begin
  if FGetEtranIPCommand = nil then
  begin
    FGetEtranIPCommand := FDBXConnection.CreateCommand;
    FGetEtranIPCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetEtranIPCommand.Text := 'TfmECPServerMethods.GetEtranIP';
    FGetEtranIPCommand.Prepare;
  end;
  FGetEtranIPCommand.ExecuteUpdate;
  Result := FGetEtranIPCommand.Parameters[0].Value.GetWideString;
end;

function TfmECPServerMethodsClient.GetCertNum: string;
begin
  if FGetCertNumCommand = nil then
  begin
    FGetCertNumCommand := FDBXConnection.CreateCommand;
    FGetCertNumCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCertNumCommand.Text := 'TfmECPServerMethods.GetCertNum';
    FGetCertNumCommand.Prepare;
  end;
  FGetCertNumCommand.ExecuteUpdate;
  Result := FGetCertNumCommand.Parameters[0].Value.GetWideString;
end;

function TfmECPServerMethodsClient.GetQuery(users_name: string; users_password: string; ip_address: string; query_xml: string; var result_xml: string; var message_error: string): Boolean;
begin
  if FGetQueryCommand = nil then
  begin
    FGetQueryCommand := FDBXConnection.CreateCommand;
    FGetQueryCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetQueryCommand.Text := 'TfmECPServerMethods.GetQuery';
    FGetQueryCommand.Prepare;
  end;
  FGetQueryCommand.Parameters[0].Value.SetWideString(users_name);
  FGetQueryCommand.Parameters[1].Value.SetWideString(users_password);
  FGetQueryCommand.Parameters[2].Value.SetWideString(ip_address);
  FGetQueryCommand.Parameters[3].Value.SetWideString(query_xml);
  FGetQueryCommand.Parameters[4].Value.SetWideString(result_xml);
  FGetQueryCommand.Parameters[5].Value.SetWideString(message_error);
  FGetQueryCommand.ExecuteUpdate;
  result_xml := FGetQueryCommand.Parameters[4].Value.GetWideString;
  message_error := FGetQueryCommand.Parameters[5].Value.GetWideString;
  Result := FGetQueryCommand.Parameters[6].Value.GetBoolean;
end;

function TfmECPServerMethodsClient.GetNSIVagon(str_num_vagon: string; var result_xml: string; var message_error: string): Boolean;
begin
  if FGetNSIVagonCommand = nil then
  begin
    FGetNSIVagonCommand := FDBXConnection.CreateCommand;
    FGetNSIVagonCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNSIVagonCommand.Text := 'TfmECPServerMethods.GetNSIVagon';
    FGetNSIVagonCommand.Prepare;
  end;
  FGetNSIVagonCommand.Parameters[0].Value.SetWideString(str_num_vagon);
  FGetNSIVagonCommand.Parameters[1].Value.SetWideString(result_xml);
  FGetNSIVagonCommand.Parameters[2].Value.SetWideString(message_error);
  FGetNSIVagonCommand.ExecuteUpdate;
  result_xml := FGetNSIVagonCommand.Parameters[1].Value.GetWideString;
  message_error := FGetNSIVagonCommand.Parameters[2].Value.GetWideString;
  Result := FGetNSIVagonCommand.Parameters[3].Value.GetBoolean;
end;

function TfmECPServerMethodsClient.GetPassport(org_name: string; org_okpo: string; var result_xml: string; var message_error: string): Boolean;
begin
  if FGetPassportCommand = nil then
  begin
    FGetPassportCommand := FDBXConnection.CreateCommand;
    FGetPassportCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetPassportCommand.Text := 'TfmECPServerMethods.GetPassport';
    FGetPassportCommand.Prepare;
  end;
  FGetPassportCommand.Parameters[0].Value.SetWideString(org_name);
  FGetPassportCommand.Parameters[1].Value.SetWideString(org_okpo);
  FGetPassportCommand.Parameters[2].Value.SetWideString(result_xml);
  FGetPassportCommand.Parameters[3].Value.SetWideString(message_error);
  FGetPassportCommand.ExecuteUpdate;
  result_xml := FGetPassportCommand.Parameters[2].Value.GetWideString;
  message_error := FGetPassportCommand.Parameters[3].Value.GetWideString;
  Result := FGetPassportCommand.Parameters[4].Value.GetBoolean;
end;

function TfmECPServerMethodsClient.GetECPList(date_ecp: TDateTime; var result_xml: string; var message_error: string): Boolean;
begin
  if FGetECPListCommand = nil then
  begin
    FGetECPListCommand := FDBXConnection.CreateCommand;
    FGetECPListCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetECPListCommand.Text := 'TfmECPServerMethods.GetECPList';
    FGetECPListCommand.Prepare;
  end;
  FGetECPListCommand.Parameters[0].Value.AsDateTime := date_ecp;
  FGetECPListCommand.Parameters[1].Value.SetWideString(result_xml);
  FGetECPListCommand.Parameters[2].Value.SetWideString(message_error);
  FGetECPListCommand.ExecuteUpdate;
  result_xml := FGetECPListCommand.Parameters[1].Value.GetWideString;
  message_error := FGetECPListCommand.Parameters[2].Value.GetWideString;
  Result := FGetECPListCommand.Parameters[3].Value.GetBoolean;
end;

function TfmECPServerMethodsClient.GetECPText(doc_id: Integer; var result_xml: string; var message_error: string): Boolean;
begin
  if FGetECPTextCommand = nil then
  begin
    FGetECPTextCommand := FDBXConnection.CreateCommand;
    FGetECPTextCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetECPTextCommand.Text := 'TfmECPServerMethods.GetECPText';
    FGetECPTextCommand.Prepare;
  end;
  FGetECPTextCommand.Parameters[0].Value.SetInt32(doc_id);
  FGetECPTextCommand.Parameters[1].Value.SetWideString(result_xml);
  FGetECPTextCommand.Parameters[2].Value.SetWideString(message_error);
  FGetECPTextCommand.ExecuteUpdate;
  result_xml := FGetECPTextCommand.Parameters[1].Value.GetWideString;
  message_error := FGetECPTextCommand.Parameters[2].Value.GetWideString;
  Result := FGetECPTextCommand.Parameters[3].Value.GetBoolean;
end;

function TfmECPServerMethodsClient.GetECPSign(doc_text: string; var result_xml: string; var message_error: string): Boolean;
begin
  if FGetECPSignCommand = nil then
  begin
    FGetECPSignCommand := FDBXConnection.CreateCommand;
    FGetECPSignCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetECPSignCommand.Text := 'TfmECPServerMethods.GetECPSign';
    FGetECPSignCommand.Prepare;
  end;
  FGetECPSignCommand.Parameters[0].Value.SetWideString(doc_text);
  FGetECPSignCommand.Parameters[1].Value.SetWideString(result_xml);
  FGetECPSignCommand.Parameters[2].Value.SetWideString(message_error);
  FGetECPSignCommand.ExecuteUpdate;
  result_xml := FGetECPSignCommand.Parameters[1].Value.GetWideString;
  message_error := FGetECPSignCommand.Parameters[2].Value.GetWideString;
  Result := FGetECPSignCommand.Parameters[3].Value.GetBoolean;
end;

function TfmECPServerMethodsClient.GetECPTSP(doc_text: string; var result_xml: string; var message_error: string): Boolean;
begin
  if FGetECPTSPCommand = nil then
  begin
    FGetECPTSPCommand := FDBXConnection.CreateCommand;
    FGetECPTSPCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetECPTSPCommand.Text := 'TfmECPServerMethods.GetECPTSP';
    FGetECPTSPCommand.Prepare;
  end;
  FGetECPTSPCommand.Parameters[0].Value.SetWideString(doc_text);
  FGetECPTSPCommand.Parameters[1].Value.SetWideString(result_xml);
  FGetECPTSPCommand.Parameters[2].Value.SetWideString(message_error);
  FGetECPTSPCommand.ExecuteUpdate;
  result_xml := FGetECPTSPCommand.Parameters[1].Value.GetWideString;
  message_error := FGetECPTSPCommand.Parameters[2].Value.GetWideString;
  Result := FGetECPTSPCommand.Parameters[3].Value.GetBoolean;
end;

function TfmECPServerMethodsClient.SendECP(doc_id: Integer; doc_text: string; doc_sign: string; doc_tsp: string; var result_xml: string; var message_error: string): Boolean;
begin
  if FSendECPCommand = nil then
  begin
    FSendECPCommand := FDBXConnection.CreateCommand;
    FSendECPCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendECPCommand.Text := 'TfmECPServerMethods.SendECP';
    FSendECPCommand.Prepare;
  end;
  FSendECPCommand.Parameters[0].Value.SetInt32(doc_id);
  FSendECPCommand.Parameters[1].Value.SetWideString(doc_text);
  FSendECPCommand.Parameters[2].Value.SetWideString(doc_sign);
  FSendECPCommand.Parameters[3].Value.SetWideString(doc_tsp);
  FSendECPCommand.Parameters[4].Value.SetWideString(result_xml);
  FSendECPCommand.Parameters[5].Value.SetWideString(message_error);
  FSendECPCommand.ExecuteUpdate;
  result_xml := FSendECPCommand.Parameters[4].Value.GetWideString;
  message_error := FSendECPCommand.Parameters[5].Value.GetWideString;
  Result := FSendECPCommand.Parameters[6].Value.GetBoolean;
end;

function TfmECPServerMethodsClient.GetNSI(table_name: string; trans_id: Integer; var result_xml: string; var message_error: string): Boolean;
begin
  if FGetNSICommand = nil then
  begin
    FGetNSICommand := FDBXConnection.CreateCommand;
    FGetNSICommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetNSICommand.Text := 'TfmECPServerMethods.GetNSI';
    FGetNSICommand.Prepare;
  end;
  FGetNSICommand.Parameters[0].Value.SetWideString(table_name);
  FGetNSICommand.Parameters[1].Value.SetInt32(trans_id);
  FGetNSICommand.Parameters[2].Value.SetWideString(result_xml);
  FGetNSICommand.Parameters[3].Value.SetWideString(message_error);
  FGetNSICommand.ExecuteUpdate;
  result_xml := FGetNSICommand.Parameters[2].Value.GetWideString;
  message_error := FGetNSICommand.Parameters[3].Value.GetWideString;
  Result := FGetNSICommand.Parameters[4].Value.GetBoolean;
end;

function TfmECPServerMethodsClient.SendDocs(doc_text: string; var result_xml: string; var message_error: string): Boolean;
begin
  if FSendDocsCommand = nil then
  begin
    FSendDocsCommand := FDBXConnection.CreateCommand;
    FSendDocsCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendDocsCommand.Text := 'TfmECPServerMethods.SendDocs';
    FSendDocsCommand.Prepare;
  end;
  FSendDocsCommand.Parameters[0].Value.SetWideString(doc_text);
  FSendDocsCommand.Parameters[1].Value.SetWideString(result_xml);
  FSendDocsCommand.Parameters[2].Value.SetWideString(message_error);
  FSendDocsCommand.ExecuteUpdate;
  result_xml := FSendDocsCommand.Parameters[1].Value.GetWideString;
  message_error := FSendDocsCommand.Parameters[2].Value.GetWideString;
  Result := FSendDocsCommand.Parameters[3].Value.GetBoolean;
end;


constructor TfmECPServerMethodsClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TfmECPServerMethodsClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TfmECPServerMethodsClient.Destroy;
begin
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FGetVersionCommand.DisposeOf;
  FGetServiceNameCommand.DisposeOf;
  FGetUsersNameCommand.DisposeOf;
  FGetUsersPasswordCommand.DisposeOf;
  FGetECPUsersNameCommand.DisposeOf;
  FGetECPUsersPasswordCommand.DisposeOf;
  FGetEtranStatusCommand.DisposeOf;
  FGetEtranIPCommand.DisposeOf;
  FGetCertNumCommand.DisposeOf;
  FGetQueryCommand.DisposeOf;
  FGetNSIVagonCommand.DisposeOf;
  FGetPassportCommand.DisposeOf;
  FGetECPListCommand.DisposeOf;
  FGetECPTextCommand.DisposeOf;
  FGetECPSignCommand.DisposeOf;
  FGetECPTSPCommand.DisposeOf;
  FSendECPCommand.DisposeOf;
  FGetNSICommand.DisposeOf;
  FSendDocsCommand.DisposeOf;
  inherited;
end;

end.
