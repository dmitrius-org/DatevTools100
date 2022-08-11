unit EingabeErr_TU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, cxControls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls, ShellApi;

type
  TEingabeErr_T = class(TForm)
    TopPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnLinkLagerbestand: TcxButton;
    LagerplatzGrid: TcxGrid;
    LagerplatzView: TcxGridDBTableView;
    LagerplatzLevel: TcxGridLevel;
    DSArtikeldaten: TDataSource;
    QueryArtikeldaten: TFDQuery;
    QueryArtikeldatenkArtikel: TFDAutoIncField;
    QueryArtikeldatencName: TStringField;
    QueryArtikeldatencArtNr: TStringField;
    QueryArtikeldatencBarcode: TStringField;
    QueryArtikeldatencASIN: TStringField;
    QueryArtikeldatenfVerfuegbar: TFMTBCDField;
    edtArtikelname: TDBEdit;
    edtEAN: TDBEdit;
    edtASIN: TDBEdit;
    edtArtikelnummer: TDBEdit;
    edtBestTotal: TDBEdit;
    LagerplatzDS: TDataSource;
    LagerplatzQ: TFDQuery;
    LagerplatzQLagerplatz: TStringField;
    LagerplatzQBestand: TFMTBCDField;
    LagerplatzQNameLager: TStringField;
    LagerplatzQKommentar1: TStringField;
    LagerplatzQKommentar2: TStringField;
    LagerplatzViewLagerplatz: TcxGridDBColumn;
    LagerplatzViewBestand: TcxGridDBColumn;
    LagerplatzViewNameLager: TcxGridDBColumn;
    LagerplatzViewKommentar1: TcxGridDBColumn;
    LagerplatzViewKommentar2: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnLinkLagerbestandClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FEAN: string;
    FkArtikel: Integer;
    FDlgType: Integer;
    procedure SetEAN(const Value: string);
    procedure SetkArtikel(const Value: Integer);
    procedure SetDlgType(const Value: Integer);
  public
    { Public declarations }
    property EAN: string read FEAN write SetEAN;
    property kArtikel: Integer read FkArtikel write SetkArtikel;
    /// <summary>
    /// DlgType - тип отображения формы
    ///  0 - форма ошибки
    ///  1 - форма информации
    /// </summary>
    property DlgType: Integer read FDlgType write SetDlgType;
  end;

var
  EingabeErr_T: TEingabeErr_T;


implementation

{$R *.dfm}

procedure TEingabeErr_T.btnLinkLagerbestandClick(Sender: TObject);
begin
  if edtEAN.Text <> '' then
  ShellExecute( Handle, 'open', PWideChar('https://sellercentral.amazon.de/inventory/ref=xx_invmgr_dnav_xx?tbla_myitable=sort:%7B%22sortOrder%22%3A%22DESCENDING%22%2C%22sortedColumnId%22%3A%22date%22%7D;search:' + edtEAN.Text +';pagination:1;'), nil, nil, SW_NORMAL);
end;

procedure TEingabeErr_T.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FkArtikel := 0;
  FEAN:='';
  FDlgType := 0;
end;

procedure TEingabeErr_T.FormShow(Sender: TObject);
begin
  TopPanel.Visible := FDlgType = 0;
  if FDlgType = 0 then
  begin
    QueryArtikeldaten.Close;
    QueryArtikeldaten.ParamByName('EAN').Value :=FEAN;
    QueryArtikeldaten.Open();

    FkArtikel := QueryArtikeldaten.FieldByName('kArtikel').Value;

    edtArtikelname.SetFocus;
  end;

 // if QueryArtikeldaten.RecordCount > 0 then
 // begin
    LagerplatzQ.Active:=False;
    LagerplatzQ.ParamByName('kArtikel').Value :=FkArtikel;
    LagerplatzQ.Active:=true;
  //end;
end;

procedure TEingabeErr_T.SetDlgType(const Value: Integer);
begin
  FDlgType := Value;
end;

procedure TEingabeErr_T.SetEAN(const Value: string);
begin
  FEAN:=Value;
end;

procedure TEingabeErr_T.SetkArtikel(const Value: Integer);
begin
  FkArtikel := Value;
end;

end.
