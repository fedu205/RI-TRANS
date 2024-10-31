unit LZHmain;

interface

uses LZHalgo, SysUtils, Classes, Variants, Dialogs;

function LZHPack  (str: TArray<Byte>): variant; export;
function LZHUnPack(str: TArray<Byte>): variant; export;

type
  TLZHPack = class(TObject)
  public
    lzh  : TLZH;
    memory_stream_put : TMemoryStream;
    memory_stream_get : TMemoryStream;
    procedure Pack  (var str: TArray<Byte>);
    procedure UnPack(var str: TArray<Byte>);
    procedure get(var DTA; Size: Word; var Down: Word);
    procedure put(var DTA; Size: Word; var Down: Word);
  end;

implementation

function LZHPack(str: TArray<Byte>): variant;
var pack : TLZHPack;
    v    : variant;
begin
  pack := TLZHPack.Create;
  pack.Pack(str);
  v := VarArrayOf([str]);
  Result := v[0];
  pack.Free;
end;

function LZHUnPack(str: TArray<Byte>): variant;
var pack : TLZHPack;
    v    : variant;
begin
  pack := TLZHPack.Create;
  pack.UnPack(str);
  v := VarArrayOf([str]);
  Result := v[0];
  pack.Free;
end;


procedure TLZHPack.get(var DTA; Size: Word; var Down: Word);
begin
  size := memory_stream_get.Read(DTA, size);
  Down := size;
end;

procedure TLZHPack.put(var DTA; Size: Word; var Down: Word);
begin
  memory_stream_put.Write(DTA, size);
  Down := size;
end;

procedure TLZHPack.Pack(var str: TArray<Byte>);
var i : integer;
    s : AnsiChar;
    sz: array[0..3] of Byte;
    size: integer;
    sign: array[0..7] of Byte;
    temp_mem : TMemoryStream;
begin
  lzh := TLZH.Create;
  lzh.MaxChain := 4096;
  lzh.MaxLazy  := 59;
  size := Length(str);

  move(size, sz, SizeOf(integer));

  memory_stream_put := TMemoryStream.Create;
  memory_stream_get := TMemoryStream.Create;

  for i := 0 to size-1 do memory_stream_get.Write(str[i], 1);
  memory_stream_get.Seek(0,0);

  lzh.LZHPack(i, get, put);

  sign[0] := ord('L');
  sign[1] := ord('I');
  sign[2] := ord('S');
  sign[3] := ord('_');
  sign[4] := ord('L');
  sign[5] := ord('Z');
  sign[6] := ord('H');
  sign[7] := ord('_');

  temp_mem := TMemoryStream.Create;
  temp_mem.Write(sign, 8);
  temp_mem.Write(memory_stream_put.Memory^, memory_stream_put.Size);
  temp_mem.Write(sz,4);
  temp_mem.Seek(0,0);

  SetLength(str, temp_mem.Size);
  temp_mem.Read(str, temp_mem.Size);

  temp_mem.Free;
  memory_stream_put.Free;
  memory_stream_get.Free;
  lzh.Free;
end;

procedure TLZHPack.UnPack(var str: TArray<Byte>);
var i : integer;
    s : AnsiChar;
    sz: array[0..3] of Byte;
    size: integer;
begin
  lzh := TLZH.Create;
  lzh.MaxChain := 4096;
  lzh.MaxLazy  := 59;

  memory_stream_put := TMemoryStream.Create;
  memory_stream_get := TMemoryStream.Create;

  for i := 8 to Length(str)-5 do
    memory_stream_get.Write(str[i], 1);

  for i := Length(str)-4 to Length(str) do
    sz[i-(Length(str)-4)] := str[i];

  move(sz, size, SizeOf(integer));


  memory_stream_get.Seek(0,0);

  i := size;
  lzh.LZHUnpack(i, get, put);

  memory_stream_put.Seek(0,0);

  SetLength(str, size);
  memory_stream_put.Read(str, size);


  memory_stream_put.Free;
  memory_stream_get.Free;
  lzh.Free;
end;

end.
