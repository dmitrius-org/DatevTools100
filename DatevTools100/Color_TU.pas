unit Color_TU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Brand_TU, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TColor_T = class(TForm)
    ColorView: TcxGridDBTableView;
    ColorLevel: TcxGridLevel;
    colorGrid: TcxGrid;
    ColorViewProduktColorID: TcxGridDBColumn;
    ColorViewColorName: TcxGridDBColumn;
    ColorViewColorLang: TcxGridDBColumn;
    ColorViewColorKurz: TcxGridDBColumn;
    TableColor: TFDTable;
    TableColorProduktColorID: TFMTBCDField;
    TableColorColorName: TWideStringField;
    TableColorColorLang: TWideStringField;
    TableColorColorKurz: TWideStringField;
    DSColor: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure TableRefresh();
  end;

var
  Color_T: TColor_T;

implementation

uses
  dm, CommonUtilsU;

{$R *.dfm}

procedure TColor_T.FormShow(Sender: TObject);
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

procedure TColor_T.TableRefresh;
begin
  TableColor.Active:=false;
  TableColor.Active:=True;
end;

end.
