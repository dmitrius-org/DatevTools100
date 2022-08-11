unit adAppUtils;

interface

uses System.SysUtils, Windows, System.Classes, Winapi.ShlObj, Vcl.Menus,
  Vcl.Forms;

/// <summary> Возвращает путь файловой системы для специального объекта-папки.
///  Функция предназначена для работы со специальными папками, а не для работы с виртуальными.
///  При отсутствии нужной папки может, по требованию приложения, её создавать. </summary>
function GetSpecialPatch(CSIDL:Word):string;

/// <summary> Возвращает рабочий каталог приложения.</summary>
function GetUserAppPatch():string;

implementation


function GetUserAppPatch():string;
var STemp:string;
Begin
  STemp:=GetSpecialPatch(CSIDL_PERSONAL) + ExtractFileName(Application.ExeName);
  if not FileExists(STemp) then
    ForceDirectories(STemp);
  Result:=STemp;
end;

function GetSpecialPatch(CSIDL:Word):string;
var s:string;
Begin
  SetLength(s, MAX_PATH);
  if not SHGetSpecialFolderPath(0, PChar(s), CSIDL, True) then s:= '';

  if Copy(s, Length(s) - 1, 1) <> '\' then
    s := PChar(s) + '\';
  Result:=PChar(s);
end;

end.
