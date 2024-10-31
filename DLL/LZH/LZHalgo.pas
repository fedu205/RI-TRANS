{$A+} // выравнивание включено
{$O+} // оптимизация включена
{$WARNINGS OFF}
{$R-} // без проверки диаппазонов

unit LZHalgo;
{
 LZHUF.C English version 1.0
 Based on Japanese version 29-NOV-1988
 LZSS coded by Haruhiko OKUMURA
 Adaptive Huffman Coding coded by Haruyasu YOSHIZAKI
 Edited and translated to English by Kenji RIKITAKE
 Translated from C to Turbo Pascal by Douglas Webb   2/18/91
   Update and bug correction of TP version 4/29/91 (Sorry!!)
   Added Delphi exception handling may 09 1996 Danny Heijl Danny.Heijl@cevi.be
 Improved performance by Dmitriy Alexeev autumn 2005
}

interface
{TODO:
1. Битовые операции не оптимальны.
+ Дерево заменено на Хэш
+ Чтение/запись буферизированы.
}
// Память = Dict(4)+Next(8)+Hash(8)+Huffman's(~4.5)+Buf(1.3) = ~26kb
// Распаковка Dict(4)+Huffman's(~4.5)+Buf(0.3) = ~9kb

{$define OPT}           // Оптимизация алгоритмов (fast)
{.$define DEBUG}        // Исполнять отладочный код
{$C-}                   // Assert enable/disable

uses SysUtils;

type Int16 = SmallInt;

type

  ELZHException = class(Exception);

  TIOProc = procedure(var DTA; Size: Word; var Down: Word) of object;

const
{
 * Tables FOR encoding/decoding upper 6 bits of
 * sliding dictionary pointer
 }
{ encoder table }
  p_len: array[0..63] of Byte =
  ($03, $04, $04, $04, $05, $05, $05, $05,
    $05, $05, $05, $05, $06, $06, $06, $06,
    $06, $06, $06, $06, $06, $06, $06, $06,
    $07, $07, $07, $07, $07, $07, $07, $07,
    $07, $07, $07, $07, $07, $07, $07, $07,
    $07, $07, $07, $07, $07, $07, $07, $07,
    $08, $08, $08, $08, $08, $08, $08, $08,
    $08, $08, $08, $08, $08, $08, $08, $08);

  p_code: array[0..63] of Byte =
  ($00, $20, $30, $40, $50, $58, $60, $68,
    $70, $78, $80, $88, $90, $94, $98, $9C,
    $A0, $A4, $A8, $AC, $B0, $B4, $B8, $BC,
    $C0, $C2, $C4, $C6, $C8, $CA, $CC, $CE,
    $D0, $D2, $D4, $D6, $D8, $DA, $DC, $DE,
    $E0, $E2, $E4, $E6, $E8, $EA, $EC, $EE,
    $F0, $F1, $F2, $F3, $F4, $F5, $F6, $F7,
    $F8, $F9, $FA, $FB, $FC, $FD, $FE, $FF);

{ decoder table }
  d_code: array[0..255] of Byte =
  ($00, $00, $00, $00, $00, $00, $00, $00,
    $00, $00, $00, $00, $00, $00, $00, $00,
    $00, $00, $00, $00, $00, $00, $00, $00,
    $00, $00, $00, $00, $00, $00, $00, $00,
    $01, $01, $01, $01, $01, $01, $01, $01,
    $01, $01, $01, $01, $01, $01, $01, $01,
    $02, $02, $02, $02, $02, $02, $02, $02,
    $02, $02, $02, $02, $02, $02, $02, $02,
    $03, $03, $03, $03, $03, $03, $03, $03,
    $03, $03, $03, $03, $03, $03, $03, $03,
    $04, $04, $04, $04, $04, $04, $04, $04,
    $05, $05, $05, $05, $05, $05, $05, $05,
    $06, $06, $06, $06, $06, $06, $06, $06,
    $07, $07, $07, $07, $07, $07, $07, $07,
    $08, $08, $08, $08, $08, $08, $08, $08,
    $09, $09, $09, $09, $09, $09, $09, $09,
    $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A,
    $0B, $0B, $0B, $0B, $0B, $0B, $0B, $0B,
    $0C, $0C, $0C, $0C, $0D, $0D, $0D, $0D,
    $0E, $0E, $0E, $0E, $0F, $0F, $0F, $0F,
    $10, $10, $10, $10, $11, $11, $11, $11,
    $12, $12, $12, $12, $13, $13, $13, $13,
    $14, $14, $14, $14, $15, $15, $15, $15,
    $16, $16, $16, $16, $17, $17, $17, $17,
    $18, $18, $19, $19, $1A, $1A, $1B, $1B,
    $1C, $1C, $1D, $1D, $1E, $1E, $1F, $1F,
    $20, $20, $21, $21, $22, $22, $23, $23,
    $24, $24, $25, $25, $26, $26, $27, $27,
    $28, $28, $29, $29, $2A, $2A, $2B, $2B,
    $2C, $2C, $2D, $2D, $2E, $2E, $2F, $2F,
    $30, $31, $32, $33, $34, $35, $36, $37,
    $38, $39, $3A, $3B, $3C, $3D, $3E, $3F);

  d_len: array[0..255] of Byte =
  ($03, $03, $03, $03, $03, $03, $03, $03,
    $03, $03, $03, $03, $03, $03, $03, $03,
    $03, $03, $03, $03, $03, $03, $03, $03,
    $03, $03, $03, $03, $03, $03, $03, $03,
    $04, $04, $04, $04, $04, $04, $04, $04,
    $04, $04, $04, $04, $04, $04, $04, $04,
    $04, $04, $04, $04, $04, $04, $04, $04,
    $04, $04, $04, $04, $04, $04, $04, $04,
    $04, $04, $04, $04, $04, $04, $04, $04,
    $04, $04, $04, $04, $04, $04, $04, $04,
    $05, $05, $05, $05, $05, $05, $05, $05,
    $05, $05, $05, $05, $05, $05, $05, $05,
    $05, $05, $05, $05, $05, $05, $05, $05,
    $05, $05, $05, $05, $05, $05, $05, $05,
    $05, $05, $05, $05, $05, $05, $05, $05,
    $05, $05, $05, $05, $05, $05, $05, $05,
    $05, $05, $05, $05, $05, $05, $05, $05,
    $05, $05, $05, $05, $05, $05, $05, $05,
    $06, $06, $06, $06, $06, $06, $06, $06,
    $06, $06, $06, $06, $06, $06, $06, $06,
    $06, $06, $06, $06, $06, $06, $06, $06,
    $06, $06, $06, $06, $06, $06, $06, $06,
    $06, $06, $06, $06, $06, $06, $06, $06,
    $06, $06, $06, $06, $06, $06, $06, $06,
    $07, $07, $07, $07, $07, $07, $07, $07,
    $07, $07, $07, $07, $07, $07, $07, $07,
    $07, $07, $07, $07, $07, $07, $07, $07,
    $07, $07, $07, $07, $07, $07, $07, $07,
    $07, $07, $07, $07, $07, $07, $07, $07,
    $07, $07, $07, $07, $07, $07, $07, $07,
    $08, $08, $08, $08, $08, $08, $08, $08,
    $08, $08, $08, $08, $08, $08, $08, $08);

const

  // LZ Параметры
  LBSize = 60;          // Size of look-ahead buffer (максимальная длина строки)
  THRESHOLD = 2;        // если длина >, то кодируется поледовательность
  DictSize = 4096;      // Размер словаря (x^2)
  HashSize = 4096;      // Размер хэша (y^2)

  NUL = -1;             // End node #

  // Параметры Хаффмана
  N_CHAR = (256 - THRESHOLD + LBSize);  // Количество символов обычные и спец.
  HTSize = (N_CHAR * 2 - 1);    // Размер массива для дерева (N_CHAR + иерархия)
  HRoot = (HTSize - 1);         // Позиция корня
  MAX_FREQ = $8000;             // Частота в корне, при которой перестраивать дерево

  // Буфера (допустимо менять)
  SBufSize = 256;       // для сжатых данных >>2
  BBufSize = 1024;      // для данных >> LBSize; ~DictSize, влияет на скорость <12k

  FullSize = DictSize + BBufSize;
type
  // ---- LZ структуры ----
  // словарь + буфер включающий look ahead
  TDict = array [0..FullSize-1] of Byte;
  PDict = ^TDict;
  // Массив с цепочками (для каждого элемента окна словаря указатель на след)
  TNext = array [0..DictSize-1] of Int16;
  PNext = ^TNext;
  // Хэш - массив № элементов из словаря
  THash = array [0..HashSize-1] of Int16;
  PHash = ^THash;

  // ---- Структуры дерева Хаффмана ----
  // Массив - дерево Хаффмана + 1 элемент стоповый
  THFreq = array [0..HTSize] of Word;
  PHFreq = ^THFreq;
  // Ссылки Son для построения структуры
  THSon = array [0..HTSize-1] of Int16;
  PHSon = ^THSon;
  // Ссылки Dad для построения структуры + указатели Leaf 
  THDad = array [0..HTSize+N_CHAR-1] of Int16;
  PHDad = ^THDad;


  TLZH = class
  private
    FGetBytes: TIOProc;
    FPutBytes: TIOProc;

    procedure InitTree;
    // ofs: hash offset; r: Key = Dict[r]; c: Hash of Key; tr: threshold
    // Pos: Match Pos; Result: Match Length
    function  InsertNode(ofs, r, c, tr: Int16; out Pos: Int16): Int16;
    function  GetWord: Word;
    procedure LoadSBuf;
    procedure Update(c: Int16);
    procedure StartHuff;
    procedure PutCode(len: Byte; c: Word);
    procedure Reconst;
    procedure EncodeChar(c: Word);
    procedure EncodePosition(c: Word);
    procedure EncodeEnd;
    function  DecodeChar: Int16;
    function  DecodePosition: Word;
    procedure InitLZH(Pack: boolean);
    procedure EndLZH;
  public
    SNum: Word;         // Индекс текущего байта в SBuf
    Shift: Byte;        // Индекс бита (начиная сверху) в SBuf[SNum]
    TextSize: LongInt;  // Размер данных
    CodeSize: LongInt;  // Размер запакованных данных
    MaxChain: Int16;    // Глубина поиска по хэшу: 1..4k (fast - best)
    MaxLazy: Int16;     // Макс. длина цепочки ленивого сравнения: 2..59 (fast - best)
    // Малый буфер (сжатые данные)
    SBuf: array [0..SBufSize-1] of Byte;

    // ---- LZ структуры ----
    Dict: PDict;         // окно словаря + входной буфер
    Next: PNext;         // Цепочки для хэша (зацикленный)
    Hash: PHash;         // Хэш

    // ---- Структуры дерева Хаффмана ----
    HFreq: PHFreq;      // Частоты символов
    // дерево Dad[i] -> i -> (HSon[i], HSon[i]+1), если i<HTSize
    // указателей на реальные символы в дереве - HDad[HTSize..]
    HDad: PHDad;
    HSon: PHSon;

    constructor Create;

    // Упаковать, Written - размер потока, который паковали
    // упаковка заканчивается, когда GetBytes перестает возвращать данные.
    procedure LZHPack(var Written: LongInt; GetBytes: TIOProc;
      PutBytes: TIOProc);

    // Распаковать. TextSize - объем незапакованных данных, распаковка
    // заканчивается, когда будет распакован такой объем.
    procedure LZHUnpack(TextSize: Longint; GetBytes: TIOProc;
      PutBytes: TIOProc);
  end;

{$ifdef DEBUG}
var
  CCnt: Integer; // Количество сравнений
  pack: Integer; // Запаковано байт
{$endif}

function GetHash(const d): Int16;

implementation


procedure TLZH.InitTree;
begin
  FillChar(Hash^, HashSize*2, $FF); // only if NUL = -1 !!!
  FillChar(Next^, DictSize*2, $FF);
end;

// ofs: hash offset; r: Key = Dict[r]; c: Hash of Key; tr: threshold
// Pos: Match Pos; Result: Match Length
function  TLZH.InsertNode(ofs, r, c, tr: Int16; out Pos: Int16): Int16;
type
  PW = ^Word;
var
  i, p, k, RMin: Int16;
  Key, M: PByteArray;
begin
  RMin := r - DictSize;
  if RMin<0 then RMin := 0;
  Key := @Dict[r-ofs];
  Result := tr;
  p := Hash[c];
  k := MaxChain;
  // Ищем подходящие цепочки в окне словаря
  while (p >= RMin) and (k > 0) do begin
    // Сравнение (мы не можем и выйти за границу окна словаря) p>=-16384, ofs<16384
    M := @Dict[p-ofs];
    // Тк хэш, надо следить за 3мя первыми особо (Result - optimization)
    if (PW(Key)^=PW(M)^) and (Key[2]=M[2]) and (Key[Result]=M[Result]) then
    begin
      for i := 3 to LBSize-1 do if Key[i] <> M[i] then Break;
      {$ifdef DEBUG}
      Inc(CCnt, i);
      {$endif}
      // нам интересны только длинные цепочки (> THRESHOLD)
      if (i > Result) then begin
        Pos := p;
        Result := i;
        // максимальное совпадение - закончить поиск
        if i = LBSize then Break;
        k := MaxChain;
      end;
    end;

    p := Next[p and Pred(DictSize)];
    Dec(k);
  end;
end;

function TLZH.GetWord: Word;
begin
  if SNum >= SBufSize-2 then LoadSBuf;
  WordRec(Result).Hi := SBuf[SNum];
  WordRec(Result).Lo := SBuf[SNum+1];
  Result := (Result shl Shift) or (SBuf[SNum+2] shr (8-Shift));
end;

procedure TLZH.LoadSBuf;
var
  w: Word;
begin
  SBuf[0] := SBuf[SNum];
  if SNum < SBufSize-1 then SBuf[1] := SBuf[SNum+1];
  FGetBytes(SBuf[SBufSize-SNum], SNum, w);
  SNum := 0;
end;

// Записать биты c длины len
procedure TLZH.PutCode(len: Byte; c: Word);
var
  i, g: Word;
begin
  // Запись производится от старшего байта к младшему
  i := c shr Shift;
  Inc(Shift, len);
  SBuf[SNum] := SBuf[SNum] or Hi(i);
  if Shift>=8 then begin
    Dec(Shift, 8);
    Inc(SNum);
    // сброс буфера
    if SNum >= SBufSize-2 then begin
      FPutBytes(SBuf, SNum, g);
      Inc(CodeSize, SNum);
      FillChar(SBuf[0], SBufSize, 0);
      SNum := 0;
    end;
    SBuf[SNum] := Lo(i);
    if Shift >= 8 then begin
      Dec(Shift, 8);
      Inc(SNum);
      SBuf[SNum] := Hi(c shl (len - Shift));
    end;
  end;
end;

{ initialize freq tree }
procedure TLZH.StartHuff;
var
  i, j: Int16;
begin
  for i := 0 to Pred(N_CHAR) do begin
    HFreq[i] := 1;
    HSon[i] := i + HTSize;  // Указатель на Leaf
    HDad[i+HTSize] := i;    // и обратно
  end;
  i := 0;
  j := N_CHAR;
  while (j <= HRoot) do begin
    HFreq[j] := HFreq[i] + HFreq[i + 1];
    HSon[j] := i;
    HDad[i] := j;
    HDad[i + 1] := j;
    Inc(i, 2);
    Inc(j);
  end;
  HFreq[HTSize] := $FFFF; // стоповое значение
  HDad[HRoot] := 0;
end;


// Реконструкция дерева Хаффмана
procedure TLZH.Reconst;
var
  i, j, k, tmp: Int16;
  f, l: Word;
begin
  // делим частоты конечных узлов
  j := 0;
  for i := 0 to Pred(HTSize) do begin
    if (HSon[i] >= HTSize) then begin
      HFreq[j] := Succ(HFreq[i]) div 2; {@@ Bug Fix MOD -> DIV @@}
      HSon[j] := HSon[i];
      Inc(j);
    end;
  end;
  { make a tree : first, connect children nodes }
  i := 0;
  j := N_CHAR;
  while (j < HTSize) do begin
    k := Succ(i);
    f := HFreq[i] + HFreq[k];
    HFreq[j] := f;
    k := Pred(j);
    while f < HFreq[k] do DEC(k);
    Inc(k);
    l := (j - k) shl 1;
    tmp := Succ(k);
    Move(HFreq[k], HFreq[tmp], l);
    HFreq[k] := f;
    Move(HSon[k], HSon[tmp], l);
    HSon[k] := i;
    Inc(i, 2);
    Inc(j);
  end;
     { connect parent nodes }
  for i := 0 to Pred(HTSize) do begin
    k := HSon[i];
    HDad[k] := i;
    if k<HTSize then HDad[Succ(k)] := i
  end;
end;

// Обновление частот для дерева Хафмана (новый символ c)
procedure TLZH.Update(c: Int16);
var
  i, l: Int16;
begin
  if (HFreq[HRoot] = MAX_FREQ) then Reconst;

  c := HDad[c+HTSize];
  repeat
    Assert(c<HTSize, 'Try to update leaf');
    Inc(HFreq[c]);
    i := HFreq[c];

    // swap nodes to keep the tree HFreq-ordered }
    l := Succ(C);
    if (i > HFreq[l]) then begin
      Inc(l);
      while (i > HFreq[l]) do Inc(l);
      Dec(l);

      HFreq[c] := HFreq[l];
      HFreq[l] := i;

      i := HSon[c];
      HDad[i] := l;
      if (i < HTSize) then HDad[Succ(i)] := l;

      HSon[c] := HSon[l];
      HSon[l] := i;
      i := HSon[c];

      HDad[i] := c;
      if (i < HTSize) then HDad[Succ(i)] := c;

      c := l;
    end;
    c := HDad[c];
  until (c = 0); // REPEAT it until reaching the root
end;

procedure TLZH.EncodeChar(c: Word);
var
  i: Word;
  k: Int16;
  j: byte;
begin
  i := 0;
  j := 0;
  k := HDad[c+HTSize];

  // search connections from leaf node to the root
  repeat
    i := i shr 1;
    // IF node's address is odd, output 1 ELSE output 0
    if Odd(k) then Inc(i, $8000);
    Inc(j);
    k := HDad[k];
  until (k = HRoot);
  Putcode(j, i);
  Update(c);
end;


procedure TLZH.EncodePosition(c: Word);
var
  i: Word;
begin
  // output upper 6 bits with encoding
  // output lower 6 bits directly
  i := c shr 6;
  Putcode(p_len[i]+6, (p_code[i] shl 8) or ((c and $3F) shl (16-p_len[i]-6)));
end;


procedure TLZH.EncodeEnd;
var
  Got: Word;
begin
  if Shift>0 then Inc(SNum);
  if (SNum>0) then begin
    FPutBytes(SBuf, SNum, Got);
    Inc(CodeSize, SNum);
  end;
end;


function TLZH.DecodeChar: Int16;
begin
  if SNum >= SBufSize-2 then LoadSBuf;
  Result := HSon[HRoot];
  // start searching tree from the root to leaves.
  // choose node #(HSon[]) IF input bit = 0
  // ELSE choose #(HSon[]+1) (input bit = 1)
  while (Result < HTSize) do begin
    if (SBuf[SNum] and ($80 shr Shift) <> 0) then Inc(Result);
    Result := HSon[Result];
    Inc(Shift);
    if Shift>=8 then begin
      Inc(SNum); Shift := 0;
    end;
  end;
  Dec(Result, HTSize);
  Update(Result);
end;


function TLZH.DecodePosition: Word;
var
  i, j: Word;
begin
  // decode upper 6 bits from given table
  // input lower 6 bits directly
  i := GetWord;
  j := d_len[Hi(i)]-2;
  Result := Word(d_code[Hi(i)] shl 6) or (i shr (8 - j)) and $3F;
  Inc(Shift, j); Inc(SNum); //+8
  if Shift>=8 then begin
    Inc(SNum); Dec(Shift, 8);
  end;
end;

// Инициализация переменных и выделение памяти под структуры
procedure TLZH.InitLZH(Pack: boolean);
begin
  SNum := 0;
  Shift := 0;
  FillChar(SBuf, SBufSize, 0);
  TextSize := 0;
  CodeSize := 0;
  try
    if Pack then begin
      New(Hash);
      New(Next);
      GetMem(Dict, FullSize);
    end else begin
      Hash := nil; Next := nil;
      GetMem(Dict, DictSize);
    end;
    New(HFreq);
    New(HDad);
    New(HSon);
  except
    raise ElzhException.Create('LZH : Cannot get memory for dictionary tables');
  end;
end;


procedure TLZH.EndLZH;
begin
  try
    Dispose(HSon);
    Dispose(HDad);
    Dispose(HFreq);
    FreeMem(Dict);
    if Hash<>nil then Dispose(Hash);
    if Next<>nil then Dispose(Next);
  except
    raise ElzhException.Create('LZH : Error freeing memory for dictionary tables');
  end;
end;


procedure TLZH.LZHPack(var Written: LongInt; GetBytes: TIOProc; PutBytes: TIOProc);
label
  Skeep, DoOne;
const
  OfsNorm = 4*DictSize; // порог пересчета цепочек: 16384 больше нельзя (0-16384-16384)
var
  i,
  Len,                  // размер данных в буфере
  c,                    // Hash
  MatchLen: Int16;      // Длина совпадающей строки
  MatchPos: Int16;
  NextLen, NextPos: Int16;  // Lazy match variables
  Got: Word;
  r: Int16;             // read pointer
  RMin: Int16;          // Нижняя граница словаря
  ofs: Int16;           // Текущее смещение позиций в цепочках

  // пересчет цепочек - устранение смещения
  procedure Norm;
  var
    i: Int16;
  begin
    for i := 0 to DictSize-1 do
      if Next[i] >= 0 then Dec(Next[i], OfsNorm);
    for i := 0 to HashSize-1 do
      if Hash[i] >= 0 then Dec(Hash[i], OfsNorm);
    Dec(ofs, OfsNorm);
    Dec(r, OfsNorm);
    // NextPos можно не нормировать, тк ... and Pred(DictSize)
  end;

begin
  {$ifdef DEBUG}
  pack := 0;
  CCnt := 0;
  {$endif}

  InitLZH(true);
  NextLen := 0;
  FPutBytes := PutBytes;
  FGetBytes := GetBytes;

  try
    TextSize := 0;
    StartHuff;
    InitTree;

    r := LBSize;
    ofs := 0;

    FillChar(Dict[0], r, #32);
    GetBytes(Dict[r], FullSize-r, Got);
    if Got = 0 then Exit;
    Len := Got;
    TextSize := Len;
    // Вставим цепочку пробелов
    Hash[544] := 0; // GetHash(#32#32#32)
    // Вставляем первый символ
    c := GetHash(Dict[r]);
    repeat
      // поиск новой цепочки
      if NextLen>0 then begin // возможно мы нашли ее раньше
        MatchLen := NextLen;
        MatchPos := NextPos;
        NextLen := 0;
      end else
        MatchLen := InsertNode(ofs, r, c, THRESHOLD, MatchPos);
      // вставка цепочки в хэш
      Next[r and Pred(DictSize)] := Hash[c];
      Hash[c] := r;
      // Возможно это конец данных и мы сравнили мусор
      if (MatchLen > Len) then MatchLen := Len;
      // короткая последовательность - кодируем символы
      if (MatchLen <= THRESHOLD) then begin
        DoOne:

        MatchLen := 1;
        EncodeChar(Dict[r-ofs]);
        // Небольшая оптимизация проверок
        {$ifdef OPT}
        goto Skeep;
        {$endif}
      end
      // длинная - кодируем длину/позицию
      else begin
        // Lazy matching
        if MatchLen <= MaxLazy then begin
          // Смысл в проверке следующей цепочки
          i := ((c shl 4) xor Dict[r+3-ofs]) and Pred(HashSize);
          NextLen := InsertNode(ofs, r+1, i, MatchLen, NextPos);
          // может она лучше?
          if NextLen>MatchLen then goto DoOne
          else NextLen := 0;
        end;
        EncodeChar(255 - THRESHOLD + MatchLen);
        EncodePosition(Pred(r - MatchPos) and Pred(DictSize));
      end;
      {$ifdef DEBUG}
      Inc(pack, MatchLen);
      {$endif}

      // Обновляем словарь для хвоста (>1 символа)
      for i := 0 to MatchLen-2 do begin
        Inc(r);
        c := ((c shl 4) xor Dict[r+2-ofs]) and Pred(HashSize);
        Assert(c = GetHash(Dict[r-ofs]), 'Wrong hash');
        // Вставка в хэш
        Next[(r) and Pred(DictSize)] := Hash[c];
        Hash[c] := r;
      end;

      Skeep:

      // Обновляем позицию чтения
      Inc(r); // Здесь хранится новая цепочка
      Dec(Len, MatchLen);
      // Возможно буфер уже кончается - смещаем окно, читаем из-вне
      if (Len < LBSize+THRESHOLD) then begin // +TRESHOLD для вычисления хэша
        RMin := r - DictSize - ofs;
        if RMin>0 then begin
          Move(Dict[RMin], Dict[0], FullSize-RMin); // смещаем окно
          GetBytes(Dict[FullSize-RMin], RMin, Got);
          Inc(TextSize, Got);
          Inc(Len, Got);
          Inc(ofs, RMin);                  // поддержка цепочек в адекватном состоянии
          if ofs >= OfsNorm then Norm;
        end;
        if Len <= 0 then break;          // Возможно кончилось все
     end;

      // Хэш новой цепочки (Lazy hash??)
      c := ((c shl 4) xor Dict[r+2-ofs]) and Pred(HashSize);
      Assert((c = GetHash(Dict[r-ofs])) or (len<3), 'Wrong hash'); // для остатка не важно

    until false;  // выход - внутри цикла
    EncodeEnd;

  finally
    EndLZH;
    Written := TextSize;
  end;
end;


procedure TLZH.LZHUnpack(TextSize: LongInt; GetBytes: TIOProc; PutBytes: TIOProc);
var
  c, i, k, r: Int16;
  Count: LongInt;
  Put: Word;
begin
  InitLZH(false);
  FPutBytes := PutBytes;
  FGetBytes := GetBytes;
  try
    StartHuff;
    FillChar(Dict[DictSize-LBSize], LBSize, #32);
    r := 0;
    Count := 0;
    SNum := SBufSize;
    while Count < TextSize do begin
      c := DecodeChar;
      if (c < 256) then begin
        Dict[r] := c;
        r := Succ(r) and Pred(DictSize);
        if r = 0 then PutBytes(Dict[0], DictSize, Put);
        Inc(Count);
      end
      else begin //c >= 256
        i := (r - Succ(DecodePosition)) and Pred(DictSize);
        for k := 0 to Pred(c - 255 + THRESHOLD) do begin
          Dict[r] := Dict[(i + k) and Pred(DictSize)];
          r := Succ(r) and Pred(DictSize);
          if r = 0 then PutBytes(Dict[0], DictSize, Put);
          Inc(Count);
        end; // for
      end; // if c < 256
    end; // endwhile count < TextSize
    if r > 0 then PutBytes(Dict[0], r, Put);

  finally
    ENDLZH;
  end;
end;

constructor TLZH.Create;
begin
  inherited Create;
  MaxChain := 50;
  MaxLazy := 5;
end;


function GetHash(const d): Int16;
var
  dd: TByteArray absolute d;
begin
  Result := (dd[2] xor (dd[1] shl 4) xor (dd[0] shl 8)) and Pred(HashSize);
end;

end.
{$WARNINGS ON}

