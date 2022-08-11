unit dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Phys, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Login,
  FireDAC.Comp.UI, FireDAC.Phys.ODBCBase, Data.DB, FireDAC.Comp.Client,
  Data.SqlExpr, DataBaseU;

type
  TDataModule1 = class(TDataModule)
    FDManager: TFDManager;
    FDConnection: TFDConnection;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure FDConnectionError(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure FDConnectionAfterConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private


    { Private declarations }
  public
    { Public declarations }
    function DbConnect(server, base, user, password: string):boolean;
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Vcl.Dialogs, CommonUtilsU;

{$R *.dfm}



{ TDataModule1 }

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  TConnectionParam.ReadConnectionParam;

end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
  FDConnection.ExecSQL('delete from DatevTools100.dbo.pAmaExport where Spid = @@SPID');
end;

function TDataModule1.DbConnect(server, base, user, password: string):boolean;
begin
  try
    FDConnection.Params.Add('Server='+server);
    FDConnection.Params.Add('Database='+base);
    FDConnection.Params.Add('User_name='+user);
    FDConnection.Params.Add('Password='+password);

    FDConnection.Connected := True;
    Result := FDConnection.Connected;
  except
    on E: EAbort do
      ; // user pressed Cancel button in Login dialog
    on E: EFDDBEngineException do
      case E.Kind of
        ekUserPwdInvalid: showmessage('user name or password are incorrect') ; // user name or password are incorrect
        ekUserPwdExpired: showmessage('user password is expired') ; // user password is expired
        ekServerGone: showmessage('DBMS is not accessible due to some reason') ;     // DBMS is not accessible due to some reason
      else // other issues
        showmessage(e.Message)
      end;
  end;
end;




procedure TDataModule1.FDConnectionAfterConnect(Sender: TObject);
begin
  CreateTmpTable(FDConnection);
end;

procedure TDataModule1.FDConnectionError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  MessageDlg(AException.Message,  mtError, [mbOK], 0);
end;



end.
