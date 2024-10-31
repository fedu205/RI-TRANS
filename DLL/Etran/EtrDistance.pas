unit EtrDistance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, winsock, DBClient, DB, StrUtils;

const
  const_Port = 7496;
  const_IP   = '172.25.45.4';

function GetCalcDistanceGroup(node_begin_cod: string; node_end_cod: string; ClientDS: TClientDataSet): integer;

implementation

/////////////////////////////////////////////////////////////////////////////////////
// Пример вызова
//var x : integer;
//  ClientDS :TClientDataSet;
//begin
//  ClientDS := TClientDataSet.Create(nil);
//  ClientDS.FieldDefs.Add('node_begin_cod',  ftString, 50); // станция отправления
//  ClientDS.FieldDefs.Add('node_end_cod',    ftString, 50); // станция назначения
//  ClientDS.FieldDefs.Add('distance',        ftInteger  ); // Расстояние (возвращаемый параметр)
//  ClientDS.CreateDataSet;
//  ClientDS.LogChanges := False;
//  x := GetCalcDistanceGroup('592401','100105',ClientDS); cxMemo1.Lines.Add('592401' + ':' +  '100105:' + IntToStr(x));
//  x := GetCalcDistanceGroup('511002','527101',ClientDS); cxMemo1.Lines.Add('511002' + ':' +  '527101:' + IntToStr(x));
//  x := GetCalcDistanceGroup('652602','543405',ClientDS); cxMemo1.Lines.Add('652602' + ':' +  '543405:' + IntToStr(x));
//  ClientDS.Free;
/////////////////////////////////////////////////////////////////////////////////////

function GetCalcDistanceGroup(node_begin_cod: string; node_end_cod: string; ClientDS: TClientDataSet): integer;
var
   vWSAData : TWSAData;
    vSocket : TSocket;
  vSockAddr : TSockAddr;

        aBuf : array of byte;
        vBuf : RawByteString;
       vSize : integer;
     BufSize : integer;
         buf : RawByteString;
     tmp_str : string;
           i : integer;
  ReceiveTimeOut : integer;
begin
  if ClientDS <> nil then begin
    if ClientDS.Locate('node_begin_cod;node_end_cod', VarArrayOf([node_begin_cod, node_end_cod]), []) then begin
      Result := ClientDS.FieldByName('distance').AsInteger;
      exit;
    end;
  end;

  try
    try
      if WSAStartup($101, vWSAData) <> 0 then Raise Exception.CreateFmt('100: Ошибка открытия соединения.', []);

      vSocket := socket(AF_INET, SOCK_STREAM, IPPROTO_IP);
      if vSocket = INVALID_SOCKET then Raise Exception.CreateFmt('100: Ошибка открытия соединения.', []);

      FillChar(vSockAddr,SizeOf(TSockAddr),0);
      vSockAddr.sin_family := AF_INET;
      vSockAddr.sin_port := htons(const_Port);
      vSockAddr.sin_addr.S_addr := inet_addr(const_IP);

      if connect(vSocket,vSockAddr,SizeOf(TSockAddr)) <> 0 then Raise Exception.CreateFmt('100: Ошибка открытия соединения.', []);

      buf := 'DIST:' + RightStr('000000' + node_begin_cod,6) + ':' + RightStr('000000' + node_end_cod,6);
      send(vSocket, buf[1], Length(buf), 0);

      ReceiveTimeOut := 3000;
      SetSockOpt(vSocket, SOL_SOCKET, SO_RCVTIMEO, @ReceiveTimeOut, SizeOf(ReceiveTimeOut));

      vSize := sizeOf(BufSize);
      getsockopt(vSocket, SOL_SOCKET, SO_RCVBUF, PAnsiChar(@BufSize), vSize);
      SetLength(aBuf, BufSize);

      vSize := recv(vSocket, aBuf[0], BufSize, 0);

      if vSize <> 0 then begin
        vBuf := '';
        for i := 0 to vSize -1 do begin
          vBuf := vBuf + char(aBuf[i]);
        end;

        tmp_str := RightStr(vBuf, Length(vBuf) - 11);
        Result := StrToIntDef(tmp_str,0);

        if ClientDS <> nil then begin
          ClientDS.Append;
          ClientDS.FieldByName('node_begin_cod').Value := node_begin_cod;
          ClientDS.FieldByName('node_end_cod'  ).Value := node_end_cod;
          ClientDS.FieldByName('distance'      ).Value := Result;
          ClientDS.Post;
        end;
      end else begin
        Result := 0;
      end;

      closesocket(vSocket);
      WSACleanup;
    except
      if vSocket <> INVALID_SOCKET then closesocket(vSocket);
      WSACleanup;
      Result := 0;
    end;
  except
    Result := 0;
  end;
end;

end.
