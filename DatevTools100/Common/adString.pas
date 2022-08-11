{ ******************************************************* }
{ Модуль работы с тестом }
{ }
{ Copyright (C) 2013 Company }
{ ******************************************************* }

unit adString;

interface

uses System.SysUtils, Vcl.Dialogs, Vcl.Forms,
  Winapi.Windows, System.Classes;

/// <summary>
/// pos_S - Поиск N-ого вхождения подстроки в строку.
/// </summary>
/// <param name="i: integer">Порядковый номер вхождения символа в строку</param>
/// <param name="ch: char">Искомый символ</param>
/// <param name="s: string">Строка в которой выполняется поиск</param>
/// <returns>integer - Позиции символа</returns>
function pos_S(i: integer; ch: char; s: string): integer;

/// <summary> pos_S2 -  Поиск N-ого вхождения подстроки в строку. </summary>
/// <param name="Num: integer">Порядковый номер вхождения символа в строку</param>
/// <param name="FindStr: char">Искомый символ</param>
/// <param name="SourceString: string">Строка в которой выполняется поиск</param>
/// <returns>integer - Позиции символа</returns>
function pos_S2(Num: integer; const FindStr, SourceString: string): integer;

/// <summary> StrToInteger -  Конвертация строки в число, при пустой строке возвращается 0. </summary>
function StrToInteger(s: string): integer;

/// <summary>
/// CntChRepet - Функция определяет количество повторений символа заданного InputSubStr в строке InputStr
/// </summary>
/// <param name="InputStr: string">Искомый символ</param>
/// <param name="InputSubStr: char">Строка поиска</param>
/// <returns>integer - Количество повторений символа в строке</returns>
function CntChRepet(InputStr: string; InputSubStr: char): integer;

/// <summary>
/// CountPos - Функция определения количества вхождений подстроки в строку
/// </summary>
/// <param name="subtext: string">Искомая подстрока</param>
/// <param name="Text: string">Строка в которой осуществляется поиск</param>
/// <returns>Integer - Количества вхождений подстроки в строку</returns>
function CountPos(const subtext: string; Text: string): integer;

/// <summary>
/// TailPos - Функция определения позиции символа в строке начиная с указанной позиции.
/// </summary>
/// <param name="S: AnsiString">Строка поиска</param>
/// <param name="SubStr: AnsiString">Искомый символ</param>
/// <param name="fromPos: integer">Позиция с которой начинается поиск строки SubStr.</param>
/// <returns>integer - Позиции символа</returns>
function TailPos(const s, SubStr: AnsiString; fromPos: integer): integer;

/// <summary> Copy2FromPos - Функция получает подстроку с StartPos по EndPos. </summary>
function Copy2FromPos(const s: string; StartPos, EndPos: integer): string;

/// <summary> Copy2FromStr - Функция получает подстроку между двумя словами.</summary>
/// <param name="First: String">Слово, с которй начинаем</param>
/// <param name="Second: String">Слово, до которой ищем</param>
/// <param name="Where: String">Строка для поиска</param>
function Copy2FromStr(First, Second, Where: String): String;

/// <summary> RightPad - Заполнение строки определенным символом до нужной длины c права.</summary>
/// <param name="S: string">Исходная строка</param>
/// <param name="Ch: Char">Символ для дозаполнения</param>
/// <param name="Len: Integer">Для исходящей строки</param>
function RightPad(S: string; Ch: Char; Len: Integer): string;

/// <summary> LeftPad - Заполнение строки определенным символом до нужной длины с лева. </summary>
/// <param name="S: string">Исходная строка</param>
/// <param name="Ch: Char">Символ для дозаполнения</param>
/// <param name="Len: Integer">Для исходящей строки</param>
function LeftPad(S: string; Ch: Char; Len: Integer): string;

implementation

function StrToInteger(s: string): integer;
Begin
  if s = '' then
    Result := 0
  else
    Result := strtoint(s);
end;

{ функция определения позиции символа по номеру его вхождения в строку }
function pos_S(i: integer; ch: char; s: string): integer;
{ i  - ворядковый номер вхождения символа в строку
  ch - искомый символ
  s  - строка }
var
  j, k: integer;
Begin
  Result := 0;
  k := 0;
  for j := 1 to Length(s) do
  Begin
    if s[j] = ch then
    Begin
      inc(k);
      if k = i then
      Begin
        Result := j;
      end;
    end;
  end;
end;

function CntChRepet(InputStr: string; InputSubStr: char): integer;
var
  i: integer;
Begin
  Result := 0;
  for i := 1 to Length(InputStr) do
    if InputStr[i] = InputSubStr then
      inc(Result);
end;

function CountPos(const subtext: string; Text: string): integer;
Begin
  if (Length(subtext) = 0) or (Length(Text) = 0) or (Pos(subtext, Text) = 0)
  then
    Result := 0
  else
    Result := (Length(Text) - Length(StringReplace(Text, subtext, '',
      [rfReplaceAll]))) div Length(subtext);
end;

function Copy2FromPos(const s: string; StartPos, EndPos: integer): string;
Begin
  if EndPos >= StartPos then
    Result := Copy(s, StartPos, EndPos - StartPos)
  else
    Result := '';
end;

function pos_S2(Num: integer; const FindStr, SourceString: string): integer;
var
  FirstSym: PChar; // Ссылка на первый символ

  function MyPos(const FindStr, SourceString: PChar; Num: integer): PChar;
  Begin
    Result := AnsiStrPos(SourceString, FindStr);
    // Поиск вхождения подстроки в строку
    if (Result = nil) then
      Exit; // Подстрока не найдена
    inc(Result); // Смещаем указатель на следующий символ
    if Num = 1 then
      Exit; // Если нужно первое вхождение - заканчиваем
    if Num > 1 then
      Result := MyPos(FindStr, Result, Num - 1);
    // Рекурсивный поиск следующего вхождения
  end;

Begin
  FirstSym := PChar(SourceString);
  // Присваиваем адрес первого символа исходной строки
  Result := MyPos(PChar(FindStr), PChar(SourceString), Num) - FirstSym;
  // Номер позиции в строке
  if Result < 0 then
    Result := 0; // Возвращаем номер позиции
end;

function TailPos(const s, SubStr: AnsiString; fromPos: integer): integer;
asm
  PUSH EDI
  PUSH ESI
  PUSH EBX
  PUSH EAX
  OR EAX,EAX
  JE @@2
  OR EDX,EDX
  JE @@2
  DEC ECX
  JS @@2

  MOV EBX,[EAX-4]
  SUB EBX,ECX
  JLE @@2
  SUB EBX,[EDX-4]
  JL @@2
  INC EBX

  ADD EAX,ECX
  MOV ECX,EBX
  MOV EBX,[EDX-4]
  DEC EBX
  MOV EDI,EAX
@@1: MOV ESI,EDX
  LODSB
  REPNE SCASB
  JNE @@2
  MOV EAX,ECX
  PUSH EDI
  MOV ECX,EBX
  REPE CMPSB
  POP EDI
  MOV ECX,EAX
  JNE @@1
  LEA EAX,[EDI-1]
  POP EDX
  SUB EAX,EDX
  INC EAX
  JMP @@3
@@2: POP EAX
  XOR EAX,EAX
@@3: POP EBX
  POP ESI
  POP EDI
end;

function Copy2FromStr(First, Second, Where: String): String;
var
  Pos1, Pos2: integer;
  WhereLower: string;
Begin
  First := LowerCase(First);
  Second := LowerCase(Second);
  WhereLower := LowerCase(Where);
  Assert(Length(WhereLower) = Length(Where));

  Pos1 := TailPos(WhereLower, First, 1);
  Pos2 := TailPos(WhereLower, Second, Pos1 + 1);
  Result := Copy(Where, Pos1 + Length(First), Pos2 - Pos1 - Length(First));
end;

function RightPad(S: string; Ch: Char; Len: Integer): string;
 var
   RestLen: Integer;
 begin
   Result  := S;
   RestLen := Len - Length(s);
   if RestLen < 1 then Exit;
   Result := S + StringOfChar(Ch, RestLen);
 end;

 function LeftPad(S: string; Ch: Char; Len: Integer): string;
 var
   RestLen: Integer;
 begin
   Result  := S;
   RestLen := Len - Length(s);
   if RestLen < 1 then Exit;
   Result := StringOfChar(Ch, RestLen) + S;
 end;


// procedure WriteString(const Stream: TStream; const Str: string);
// var x: integer;
// Begin
// x := Length(Str);
// Stream.Write(x, SizeOf(x));
// if (x > 0) then
// Stream.Write(Str[1], SizeOf(Char)*x);
// end;
//
// function ReadString(Stream: TStream): string;
// var x: integer;
// Begin
// Stream.Read(x, SizeOf(x));
// SetLength(Result, x);
// if (x > 0) then
// Stream.Read(Result[1], SizeOf(Char)*x);
// end;

end.
