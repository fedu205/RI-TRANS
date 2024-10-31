unit EtrUtils;

interface

uses  SysUtils, Windows, Forms, Variants, StrUtils, Dialogs, Registry, Messages;

type
  TRegisterAction = (rgSave, rgLoad);

const MY_MESSAGE = WM_USER + 4242;

function PasswordToCode(password:AnsiString):AnsiString;
function PasswordFromCode(code:AnsiString):AnsiString;
function StoreRegistryString(reg_action: TRegisterAction; key: string; key_value: string;value: string = ''): string;

implementation

function StoreRegistryString(reg_action: TRegisterAction; key: string; key_value: string;value: string = ''): string;
var
  Reg : TRegistry;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('\Software\GetEtran2\' + key, True);

  if reg_action =  rgSave then Reg.WriteString(key_value, value);

  if reg_action =  rgLoad then
    if Reg.ValueExists(key_value) then value := Reg.ReadString(key_value)
    else value := '';

  Result := value;
  
  Reg.CloseKey;
  Reg.Free; 
end;


function PasswordToCode(password:AnsiString):AnsiString;
var
  code: AnsiString;
  i   : integer;
begin
  Randomize;

  code := '';
  for i := Length(password) downto 1 do begin
    code := code + AnsiChar(Chr(90+Random(100))) + password[i];
  end;

  for i := 1 to Length(code) do begin
    code[i] := AnsiChar(Chr(Ord((code[i]))+i));
  end;

  Result := code;
end;

function PasswordFromCode(code:AnsiString):AnsiString;
var password:AnsiString;
    i : integer;
begin
  password := '';
  for i := Length(code) downto 1 do begin
    if i mod 2 = 0 then password := password + AnsiChar(Chr(Ord(code[i])-i));
  end;
  Result := password;
end;

end.
