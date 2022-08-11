unit Brand_TU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TBrand_T = class(TForm)
    BrandGrid: TcxGrid;
    BrandView: TcxGridDBTableView;
    BrandLevel: TcxGridLevel;
    DSBrand: TDataSource;
    TableBrand: TFDTable;
    TableBrandBrandID: TFMTBCDField;
    TableBrandName: TWideStringField;
    BrandViewBrandID: TcxGridDBColumn;
    BrandViewName: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TableRefresh();
  end;

var
  Brand_T: TBrand_T;

implementation

uses
  dm, CommonUtilsU;

{$R *.dfm}

procedure TBrand_T.FormShow(Sender: TObject);
begin
  if DataModule1.FDConnection.Connected then
  begin
    TableRefresh;
  end
  else
  begin
      if DataModule1.DbConnect(TConnectionParam.Server, TConnectionParam.Base, TConnectionParam.User, TConnectionParam.Password) then
      begin
        TableRefresh;
      end
      else
        MessageDlg('Datenbankverbindung konnte nicht hergestellt werden.' + #13#10 + #13#10 + 'Bitte prüfen Sie Verbindung zur Datenbank',  mtWarning, [mbOK], 0);
  end;
end;

procedure TBrand_T.TableRefresh;
begin
  TableBrand.Active:=false;
  TableBrand.Active:=True;
end;

end.
