unit CommonUtilsU;

interface
uses  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
      Vcl.Controls, System.Classes, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
      Vcl.StdCtrls, ShellApi, Registry;



Type

  TConnectionParam = Class
  private
    class var FPassword: string;
    class var FBase: string;
    class var FUser: string;
    class var FServer: string;
    class var FExportPfad: string;
    class var FIsReadParam: boolean;
    class procedure SetBase(const Value: string); static;
    class procedure SetPassword(const Value: string); static;
    class procedure SetServer(const Value: string); static;
    class procedure SetUser(const Value: string); static;
    class procedure SetExportPfad(const Value: string); static;
    class procedure SetIsReadParam(const Value: boolean); static;
  public
    class property Server: string read FServer write SetServer;
    class property Base: string read FBase write SetBase;
    class property User: string read FUser write SetUser;
    class property Password: string read FPassword write SetPassword;
    class property ExportPfad: string read FExportPfad write SetExportPfad;
    class property IsReadParam: boolean read FIsReadParam write SetIsReadParam;

    class procedure ReadConnectionParam(); static;
    class procedure SetConnectionParam(server, base, user, password: string); static;

  end;


implementation



{ TConnectionParam }



class procedure TConnectionParam.SetBase(const Value: string);
begin
  FBase := Value;
end;

class procedure TConnectionParam.SetConnectionParam(server, base, user,
  password: string);
  var reg : TRegistry;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER;
  reg.OpenKey('Software\DatevTools', True);
  reg.WriteString('server', server);
  reg.WriteString('base', base);
  reg.WriteString('user', user);
  reg.WriteString('password', password);
  reg.Free;

  IsReadParam:=True;
end;

class procedure TConnectionParam.SetExportPfad(const Value: string);
begin
  FExportPfad := Value;
end;

class procedure TConnectionParam.SetIsReadParam(const Value: boolean);
begin
  FIsReadParam := Value;
end;

class procedure TConnectionParam.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

class procedure TConnectionParam.SetServer(const Value: string);
begin
  FServer := Value;
end;

class procedure TConnectionParam.SetUser(const Value: string);
begin
  FUser := Value;
end;

{ TConnectionParam }

class procedure TConnectionParam.ReadConnectionParam;
var
reg : TRegistry;
s   : string;
begin
  reg:=TRegistry.Create;
  reg.RootKey:=HKEY_CURRENT_USER;

  reg.OpenKey('Software\DatevTools', false);
  Server     :=reg.ReadString('server');
  Base       :=reg.ReadString('base');
  User       :=reg.ReadString('user');
  Password   :=reg.ReadString('password');
  ExportPfad :=reg.ReadString('ExportPfad');

  IsReadParam:=True;

  reg.CloseKey;
  reg.Free;
end;

end.
