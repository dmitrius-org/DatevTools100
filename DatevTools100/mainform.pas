unit mainform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList, Vcl.Menus, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  System.ImageList, Vcl.ImgList, cxImageList, cxImageComboBox, DateUtils,
  cxContainer, cxLabel, dxActivityIndicator, FireDAC.UI.Intf,
  FireDAC.VCLUI.Async, FireDAC.Comp.UI, cxGridExportLink, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxShellBrowserDialog, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.Text, FireDAC.Comp.BatchMove.DataSet, cxDropDownEdit,
  cxCalc, cxMemo, dxStatusBar, Vcl.AppEvnts, dxBarBuiltInMenu, cxPC,
  Settlementpos_TU, ShellApi, dxScrollbarAnnotations, Lagerbestand_TU, DataBaseU
  ,Suchen_TU, AddArtikel_TU, Wareneingang_TU;

type
  Tmainfrm = class(TForm)
    InvoiceDS: TDataSource;
    PopupMenuInvoice: TPopupMenu;
    ActionList1: TActionList;
    ActRefresh: TAction;
    Aktualisierung1: TMenuItem;
    FDQueryOrderAmazonReport: TFDQuery;
    DataSourceOrderAmazonReport: TDataSource;
    FDQueryOrderAmazonReportOrderID: TStringField;
    FDQueryOrderAmazonReportBezeichnung: TStringField;
    FDQueryOrderAmazonReportSKU: TStringField;
    FDQueryOrderAmazonReportAmount: TFMTBCDField;
    FDQueryJLTRechnungbetrag: TFDQuery;
    DataSourceJLTRechnungbetrag: TDataSource;
    vRefundAmazonReport: TFDQuery;
    StringField4: TStringField;
    StringField5: TStringField;
    FMTBCDField2: TFMTBCDField;
    vRefundAmazonReportDS: TDataSource;
    FDQueryJTLRechnungsKorrektur: TFDQuery;
    DataSourceJTLRechnungsKorrektur: TDataSource;
    FDQueryJLTRechnungbetragInvoiceNumber: TStringField;
    FDQueryJLTRechnungbetragName: TStringField;
    FDQueryJLTRechnungbetragTotalGrossPrice: TFMTBCDField;
    FDQueryJTLRechnungsKorrekturInvoiceCorrectionNumber: TStringField;
    FDQueryJTLRechnungsKorrekturName: TStringField;
    FDQueryJTLRechnungsKorrekturTotalGrossPrice: TFMTBCDField;
    FDQueryJTLRechnungsKorrekturInvoiceNumber: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxImageList1: TcxImageList;
    cxStyle3: TcxStyle;
    cxStyleTypeGreen: TcxStyle;
    cxStyleTypeDef: TcxStyle;
    cxStyleTypeRed: TcxStyle;
    SplitInvoiceQuery: TFDQuery;
    DataSourceSplitInvoice: TDataSource;
    FDQuery_common: TFDQuery;
    ai: TdxActivityIndicator;
    vNoInvoiceQuery: TFDQuery;
    vNoInvoiceDS: TDataSource;
    SplitInvoiceQueryInternalId: TIntegerField;
    SplitInvoiceQueryRechnungsnummer: TStringField;
    SplitInvoiceQueryDatum: TWideStringField;
    SplitInvoiceQueryBruttoBetrag: TFMTBCDField;
    SplitInvoiceQueryBestellnummer: TStringField;
    vBelegeExport: TFDQuery;
    cxShellBrowserDialog1: TcxShellBrowserDialog;
    InvoiceQuery: TFDQuery;
    FDQueryAllInvoicekorrection: TFDQuery;
    DataSourceAllInvoicekorrection: TDataSource;
    FDQueryAllInvoicekorrectionRechnungskorrektur: TStringField;
    FDQueryAllInvoicekorrectionBrutto: TBCDField;
    FDQueryAllInvoicekorrectionRechnungsnummer: TStringField;
    FDQueryAllInvoicekorrectionDatum: TWideStringField;
    FDQueryAllInvoicekorrectionBestellnummer: TStringField;
    vNotInvoice: TFDQuery;
    DSNotInvoice: TDataSource;
    vNotInvoiceInternalId: TIntegerField;
    vInvoiceCorrectionNone: TFDQuery;
    WideStringField1: TWideStringField;
    StringField1: TStringField;
    FMTBCDField1: TFMTBCDField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    LargeintField1: TLargeintField;
    vInvoiceCorrectionNoneDS: TDataSource;
    vNoInvoiceQueryDatum: TWideStringField;
    vNoInvoiceQueryOrderID: TStringField;
    vNoInvoiceQueryBezeichnung: TStringField;
    vNoInvoiceQuerySKU: TStringField;
    vNoInvoiceQueryAmount: TFMTBCDField;
    vNoInvoiceQueryRechnungsnummer: TStringField;
    Label19: TLabel;
    InvoiceQueryBelegnummer: TStringField;
    InvoiceQueryDatum: TDateField;
    InvoiceQueryBestellnummer: TStringField;
    InvoiceQueryBelegname: TStringField;
    InvoiceQueryMarketplace: TStringField;
    InvoiceQueryReNr: TStringField;
    InvoiceQuerysign_type: TIntegerField;
    InvoiceQuerysign_tech: TIntegerField;
    InvoiceQuerysign_comment: TStringField;
    InvoiceQuerycountOrder: TIntegerField;
    InvoiceQuerycountRefund: TIntegerField;
    vBelegeExportInternalId: TIntegerField;
    vBelegeExportReAusReKor: TStringField;
    vBelegeExportExterneBestellnummer: TStringField;
    vBelegeExportBrutto: TBCDField;
    vBelegeExportNetto: TBCDField;
    vBelegeExportBetragUSt: TBCDField;
    vBelegeExportfMwSt: TBCDField;
    vBelegeExportCountryISO: TStringField;
    vBelegeExportCountry: TStringField;
    vBelegeExportSteuerschlüsselnummer: TIntegerField;
    vBelegeExportBuchungskonto: TStringField;
    vBelegeExportSollHabenKennzeichen: TStringField;
    vBelegeExportGegenkontoohneBUSchlüssel: TStringField;
    vBelegeExportErstelldatum: TWideStringField;
    vBelegeExportcWaehrung: TStringField;
    vBelegeExportfFaktor: TFMTBCDField;
    StatusBar: TdxStatusBar;
    TrayIcon: TTrayIcon;
    ApplicationEvents: TApplicationEvents;
    FDCommand: TFDCommand;
    InvoiceQueryInvoiceText: TStringField;
    pcBase: TPageControl;
    VERKAUF: TTabSheet;
    Splitter1: TSplitter;
    CommonTopPanel: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dtpBegin: TDateTimePicker;
    dtpEnd: TDateTimePicker;
    btnOk: TButton;
    ExportPfad: TcxButtonEdit;
    cxLabel5: TcxLabel;
    InvoiceDetailPanelCommon: TPanel;
    InvoiceDetailPanel: TPanel;
    SplitInvoicePanel: TPanel;
    Panel1: TPanel;
    SplitInvoiceGrid: TcxGrid;
    SplitInvoiceView: TcxGridDBTableView;
    SplitInvoiceViewRechnungsnummer: TcxGridDBColumn;
    SplitInvoiceViewDatum: TcxGridDBColumn;
    SplitInvoiceViewBestellnummer: TcxGridDBColumn;
    SplitInvoiceViewBruttoBetrag: TcxGridDBColumn;
    SplitInvoiceGridLevel: TcxGridLevel;
    cxLabel3: TcxLabel;
    GridAllInvoicekorrection: TcxGrid;
    ViewAllInvoicekorrection: TcxGridDBTableView;
    ViewAllInvoicekorrectionRechnungskorrektur: TcxGridDBColumn;
    ViewAllInvoicekorrectionRechnungsnummer: TcxGridDBColumn;
    ViewAllInvoicekorrectionDatum: TcxGridDBColumn;
    ViewAllInvoicekorrectionBestellnummer: TcxGridDBColumn;
    ViewAllInvoicekorrectionBrutto: TcxGridDBColumn;
    GridLevelAllInvoicekorrection: TcxGridLevel;
    cxlbl3: TcxLabel;
    СorrectionPanel: TPanel;
    СorrectionPanelTop: TPanel;
    GridJLTRechnungbetrag: TcxGrid;
    ViewJLTRechnungbetrag: TcxGridDBTableView;
    ViewJLTRechnungbetragInvoiceNumber: TcxGridDBColumn;
    ViewJLTRechnungbetragName: TcxGridDBColumn;
    ViewJLTRechnungbetragTotalGrossPrice: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxlbl1: TcxLabel;
    СorrectionPanelBottom: TPanel;
    GridJTLRechnungsKorrektur: TcxGrid;
    ViewJTLRechnungsKorrektur: TcxGridDBTableView;
    ViewJTLRechnungsKorrekturInvoiceNumber: TcxGridDBColumn;
    ViewJTLRechnungsKorrekturName: TcxGridDBColumn;
    ViewJTLRechnungsKorrekturTotalGrossPrice: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxLabel2: TcxLabel;
    OrderPanel: TPanel;
    OrderPanelTop: TPanel;
    GridOrderAmazonReport: TcxGrid;
    GridOrderAmazonReportDBTableView1: TcxGridDBTableView;
    GridOrderAmazonReportDBTableView1OrderID: TcxGridDBColumn;
    GridOrderAmazonReportDBTableView1Bezeichnung: TcxGridDBColumn;
    GridOrderAmazonReportDBTableView1Amount: TcxGridDBColumn;
    GridOrderAmazonReportLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    OrderPanelBottom: TPanel;
    GridRefundAmazonReport: TcxGrid;
    ViewRefundAmazonReport: TcxGridDBTableView;
    ViewRefundAmazonReportOrderID: TcxGridDBColumn;
    ViewRefundAmazonReportBezeichnung: TcxGridDBColumn;
    ViewRefundAmazonReportAmount: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxlbl2: TcxLabel;
    InvoiceDetailPanelBottom: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtRechnungsbetrag: TcxCalcEdit;
    edtRechnungskorrektur: TcxCalcEdit;
    edtSumme: TcxCalcEdit;
    edtRechnungsbetrag2: TcxCalcEdit;
    edtRechnungskorrektur2: TcxCalcEdit;
    edtSumme2: TcxCalcEdit;
    comment: TcxMemo;
    InvoiceDetailPanelRight: TPanel;
    edtInvCorrText: TcxMemo;
    edtAmazonReportRechnungCheck: TcxMemo;
    InvoicePanel: TPanel;
    GridInvoice: TcxGrid;
    GridInvoiceView: TcxGridDBTableView;
    GridInvoiceViewDatum: TcxGridDBColumn;
    GridInvoiceViewBelegnummer: TcxGridDBColumn;
    GridInvoiceViewBestellnummer: TcxGridDBColumn;
    GridInvoiceViewBelegname: TcxGridDBColumn;
    GridInvoiceViewsign_type: TcxGridDBColumn;
    GridInvoiceViewMarketplace: TcxGridDBColumn;
    GridInvoiceViewReNr: TcxGridDBColumn;
    GridInvoiceViewSignValid: TcxGridDBColumn;
    sign_tech: TcxGridDBColumn;
    GridInvoiceLevel1: TcxGridLevel;
    InvoicePanelButtom: TPanel;
    lblorder: TLabel;
    lblrefund: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    lblCountRefund: TLabel;
    lblCountOrder: TLabel;
    AMAZON: TTabSheet;
    Panel2: TPanel;
    GridNotInvoice: TcxGrid;
    ViewNotInvoice: TcxGridDBTableView;
    ViewNotInvoiceInternalId: TcxGridDBColumn;
    GridLeveNotInvoice: TcxGridLevel;
    cxLabel4: TcxLabel;
    cxGrid2: TcxGrid;
    ViewvNoInvoice: TcxGridDBTableView;
    ViewvNoInvoiceDatum: TcxGridDBColumn;
    ViewvNoInvoiceOrderID: TcxGridDBColumn;
    ViewvNoInvoiceBezeichnung: TcxGridDBColumn;
    ViewvNoInvoiceSKU: TcxGridDBColumn;
    ViewvNoInvoiceAmount: TcxGridDBColumn;
    ViewvNoInvoiceRechnungsnummer: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Panel3: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    beginDate: TDateTimePicker;
    endDate: TDateTimePicker;
    Button1: TButton;
    GridInvoiceCorrectionNone: TcxGrid;
    ViewInvoiceCorrectionNone: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    GridLevelInvoiceCorrectionNone: TcxGridLevel;
    TabDatenbank: TTabSheet;
    Settings: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtServer: TEdit;
    edtBase: TEdit;
    edtUser: TEdit;
    edtPassword: TEdit;
    btnConnect: TBitBtn;
    Bestelldetails: TMenuItem;
    Transaktionsansicht: TMenuItem;
    N1: TMenuItem;
    btnBestelldetails: TSpeedButton;
    btnTransaktionsansicht: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    TabLagerbestands: TTabSheet;
    PageWareneingang: TPageControl;
    TabLagerbestand: TTabSheet;
    TabSuchen: TTabSheet;
    TabAddArtikel: TTabSheet;
    TabWareneingang: TTabSheet;
    procedure btnConnectClick(Sender: TObject);
    procedure ActRefreshExecute(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridInvoiceViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure GridInvoiceViewKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ExportPfadPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FDInvoiceSelectAfterOpen(DataSet: TDataSet);
    procedure FDInvoiceSelectBeforeOpen(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ViewJLTRechnungbetragTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure ViewJTLRechnungsKorrekturTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure edtRechnungsbetragPropertiesEditValueChanged(Sender: TObject);
    procedure edtRechnungskorrekturPropertiesEditValueChanged(Sender: TObject);
    procedure edtRechnungsbetrag2PropertiesEditValueChanged(Sender: TObject);
    procedure ViewAllInvoicekorrectionTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure SplitInvoiceViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure ApplicationEventsMinimize(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure TabDatenbankShow(Sender: TObject);
    procedure GridInvoiceViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ViewvNoInvoiceCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ViewInvoiceCorrectionNoneCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure TabLagerbestandsShow(Sender: TObject);
    procedure SettingsShow(Sender: TObject);
  private
//    procedure ReadConnectionParam();
//    procedure SetConnectionParam();

    procedure GetAMAZONData;
    procedure AMAZONQuery;

    procedure AdjustTrayIcon;

    /// <summary>
    ///  GetInvoice - получение заказов
    /// </summary>
    procedure GetInvoice();
    procedure GetInvoiceDetail();
    procedure SetExportStatus(ARow, AFileName: string);
  public
    procedure SetConnectedStatus();
    procedure ActivityIndicator(Active:boolean);
    /// <summary>
    ///  OpenBestelldetails - Открывает ссылку Bestellnummer
    /// </summary>
    procedure OpenBestelldetails(ABestellnummer: string);

    /// <summary>
    ///  Transaktionsansicht - Открывает ссылку Bestellnummer
    /// </summary>
    procedure OpenTransaktionsansicht(ABestellnummer: string);
  end;

var
  mainfrm: Tmainfrm;
  FReNr : string;
	SettlementposForm: TSettlementpos_T;
  LagerbestandForm: TLagerbestand_T;
  SuchenForm: TSuchen_T;
  AddArtikelForm: TAddArtikel_T;
  Wareneingang_T: TWareneingang_T;
  FBestellnummer: string;

implementation

{$R *.dfm}

uses dm, ExportQueryU, SqlListU, Registry, CommonUtilsU;


procedure Tmainfrm.SetConnectedStatus;
begin
  StatusBar.Panels[4].Text:= 'Datenbankverbindung: fertig';
end;

procedure Tmainfrm.SetExportStatus(ARow, AFileName: string);
begin
  StatusBar.Panels[5].Text:= 'Export row: ' + ARow;
  StatusBar.Panels[6].Text:= 'Export file name: ' + AFileName;
end;

procedure Tmainfrm.SettingsShow(Sender: TObject);
begin
   if (TConnectionParam.IsReadParam) then
   begin
      edtServer.Text   :=TConnectionParam.Server;
      edtBase.Text     :=TConnectionParam.Base;
      edtUser.Text     :=TConnectionParam.User;
      edtPassword.Text :=TConnectionParam.Password;
   end
end;

procedure Tmainfrm.SpeedButton1Click(Sender: TObject); var fn: string;
begin
  if DataModule1.FDConnection.Connected then
  begin
    vBelegeExport.Active:=False;
    vBelegeExport.ParamByName('DATEBEGIN').Value := dtpBegin.Date;
    vBelegeExport.ParamByName('DATEEND').Value := dtpEnd.Date;
    vBelegeExport.Active:=true;

    var date: tdatetime;
    date:= Now();

    fn := ExportDataSetToCSV(vBelegeExport, ExportPfad.text + '\Export' + FormatDateTime('ddmmyyyy', date)+ '_'+ FormatDateTime('hhmmss', date) + '.csv');

    SetExportStatus(vBelegeExport.RecordCount.ToString, fn);

    ShowMessage('Vorgang abgeschlossen!');
  end
  else
  begin
    MessageDlg('Datenbankverbindung konnte nicht hergestellt werden.' + #13#10 + #13#10 + 'Bitte prüfen Sie Verbindung zur Datenbank',  mtWarning, [mbOK], 0);
  end;
end;

procedure Tmainfrm.SpeedButton2Click(Sender: TObject); var fn: string;
begin
  if DataModule1.FDConnection.Connected then
  begin
    vBelegeExport.Active:=False;
    vBelegeExport.ParamByName('DATEBEGIN').Value := dtpBegin.Date;
    vBelegeExport.ParamByName('DATEEND').Value := dtpEnd.Date;
    vBelegeExport.Active:=true;

    var date: tdatetime;
    date:= Now();

    fn := ExportToMSExcel(vBelegeExport, ExportPfad.text + '\Export'+ FormatDateTime('ddmmyyyy', date)+ '_'+ FormatDateTime('hhmmss', date) + '.xlsx');

    SetExportStatus(vBelegeExport.RecordCount.ToString, fn);

    ShowMessage('Vorgang abgeschlossen!');
  end
  else
  begin
    MessageDlg('Datenbankverbindung konnte nicht hergestellt werden.' + #13#10 + #13#10 + 'Bitte prüfen Sie Verbindung zur Datenbank',  mtWarning, [mbOK], 0);
  end;
end;

procedure Tmainfrm.SpeedButton3Click(Sender: TObject);
begin
  if FBestellnummer <> '' then OpenBestelldetails(FBestellnummer);
end;

procedure Tmainfrm.SpeedButton4Click(Sender: TObject);
begin
  if FBestellnummer <> '' then OpenBestelldetails(FBestellnummer);
end;

procedure Tmainfrm.SplitInvoiceViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  edtRechnungsbetrag2.Text := AText;
end;

procedure Tmainfrm.OpenTransaktionsansicht(ABestellnummer: string);
begin
  ShellExecute(Handle, 'open', PWideChar('https://sellercentral.amazon.de/payments/event/view?orderId=' + ABestellnummer), nil, nil, SW_NORMAL);
end;

procedure Tmainfrm.TrayIconDblClick(Sender: TObject);
begin
  TrayIcon.Visible := False;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();
end;

procedure Tmainfrm.ViewAllInvoicekorrectionTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  edtRechnungskorrektur2.Text := AText;
end;

procedure Tmainfrm.ViewInvoiceCorrectionNoneCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  FBestellnummer := vInvoiceCorrectionNone.FieldByName('KindBestellnummer').AsString;
end;

procedure Tmainfrm.ViewJLTRechnungbetragTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  edtRechnungsbetrag.Text := AText;

  if GridOrderAmazonReportDBTableView1Amount.EditValue <> '' then
  begin
    edtAmazonReportRechnungCheck.Text:= 'Summe: ' +
    GridOrderAmazonReportDBTableView1Amount.EditValue + '-' + AText + '=' +
    VarToStr(GridOrderAmazonReportDBTableView1Amount.EditValue - AValue);
  end
  else
    edtAmazonReportRechnungCheck.Text:='';

end;

procedure Tmainfrm.ViewJTLRechnungsKorrekturTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  edtRechnungskorrektur.Text := AText;
end;

procedure Tmainfrm.ViewvNoInvoiceCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  FBestellnummer := vNoInvoiceQuery.FieldByName('OrderID').AsString;
end;

procedure Tmainfrm.ActivityIndicator(Active:boolean);
begin
  if Active then
  begin
    ai.Top := (self.Height div 2) - (ai.Height div 2);
    ai.Left := (self.Width div 2) - (ai.Width div 2);
  end;
  ai.Visible := Active;
  ai.Active:= Active;
end;


procedure Tmainfrm.ActRefreshExecute(Sender: TObject);
begin
  GetInvoice;
end;

procedure Tmainfrm.AdjustTrayIcon;
begin
//------------ ICON
  //TrayIcon.Icons := ilTrayIcon;
  //FMyIcon := TIcon.Create;
  //FMyIcon.LoadFromFile(ExtractFilePath(Application.ExeName) + 'favicon.ico');
  //TrayIcon.Icon.Assign(FMyIcon);
  //TrayIcon.Icons.AddIcon(FMyIcon);

  TrayIcon.Hint := 'Double click to open';
  TrayIcon.BalloonTitle := 'Restoring the window.';
  TrayIcon.BalloonHint := 'Double click the system tray icon to restore the window.';
  Application.ShowMainForm := False;
  TrayIcon.BalloonFlags := bfInfo;
end;

procedure Tmainfrm.btnConnectClick(Sender: TObject);
begin
  if ((edtServer.Text='') or (edtBase.Text='') or (edtUser.Text='') or (edtPassword.Text='')) then
  begin
    showmessage('Füllen Sie alle Felder aus');
    exit;
  end;

  if DataModule1.DbConnect(edtServer.Text, edtBase.Text, edtUser.Text, edtPassword.Text) then
  begin
    CreateDataBase(DataModule1.FDConnection);

    SetConnectedStatus();
    TConnectionParam.SetConnectionParam(edtServer.Text, edtBase.Text, edtUser.Text, edtPassword.Text);
  end;
end;

procedure Tmainfrm.btnOkClick(Sender: TObject);
begin
  GetInvoice
end;

procedure Tmainfrm.Button1Click(Sender: TObject);
begin
  GetAMAZONData;
end;

procedure Tmainfrm.TabDatenbankShow(Sender: TObject);
begin
  if not Assigned(SettlementposForm) then
  begin
    SettlementposForm := TSettlementpos_T.Create(Self);
    SettlementposForm.BorderStyle := bsNone;
    SettlementposForm.Parent := TabDatenbank;
    SettlementposForm.Align := alClient;
    SettlementposForm.Show;
  end;
end;

procedure Tmainfrm.TabLagerbestandsShow(Sender: TObject);
begin
  if not Assigned(LagerbestandForm) then
  begin
    LagerbestandForm := TLagerbestand_T.Create(Self);
    LagerbestandForm.BorderStyle := bsNone;
    LagerbestandForm.Parent := TabLagerbestand;
    LagerbestandForm.Align := alClient;
    LagerbestandForm.Show;
  end;

  if not Assigned(SuchenForm) then
  begin
    SuchenForm := TSuchen_T.Create(Self);
    SuchenForm.BorderStyle := bsNone;
    SuchenForm.Parent := TabSuchen;
    SuchenForm.Align := alClient;
    SuchenForm.Show;
  end;

  if not Assigned(AddArtikelForm) then
  begin
    AddArtikelForm := TAddArtikel_T.Create(Self);
    AddArtikelForm.BorderStyle := bsNone;
    AddArtikelForm.Parent := TabAddArtikel;
    AddArtikelForm.Align := alClient;
    AddArtikelForm.Show;
  end;

  if not Assigned(Wareneingang_T) then
  begin
    Wareneingang_T := TWareneingang_T.Create(Self);
    Wareneingang_T.BorderStyle := bsNone;
    Wareneingang_T.Parent := TabWareneingang;
    Wareneingang_T.Align := alClient;
    Wareneingang_T.Show;
  end;


end;

procedure Tmainfrm.GetAMAZONData;
begin
  // запросы для AMAZON
  if DataModule1.FDConnection.Connected then
  begin
    AMAZONQuery
  end
  else
  begin
    if (TConnectionParam.IsReadParam) then
    begin
      if DataModule1.DbConnect(TConnectionParam.Server, TConnectionParam.Base, TConnectionParam.User, TConnectionParam.Password) then
      begin
        AMAZONQuery;
        SetConnectedStatus();
      end;
    end
    else
    MessageDlg('Datenbankverbindung konnte nicht hergestellt werden.' + #13#10 + #13#10 + 'Bitte prüfen Sie Verbindung zur Datenbank',  mtWarning, [mbOK], 0);
  end;
end;

procedure Tmainfrm.AMAZONQuery;
begin
    vNoInvoiceQuery.active:=false;
    vNoInvoiceQuery.ParamByName('DATEBEGIN').Value := beginDate.Date;
    vNoInvoiceQuery.ParamByName('DATEEND').Value := endDate.Date;
    vNoInvoiceQuery.active:=true;

    vNotInvoice.active:=false;
    vNotInvoice.ParamByName('DATEBEGIN').Value := beginDate.Date;
    vNotInvoice.ParamByName('DATEEND').Value := endDate.Date;
    vNotInvoice.active:=true;

    vInvoiceCorrectionNone.active:=false;
    vInvoiceCorrectionNone.ParamByName('DATEBEGIN').Value := beginDate.Date;
    vInvoiceCorrectionNone.ParamByName('DATEEND').Value := endDate.Date;
    vInvoiceCorrectionNone.active:=true;
end;

procedure Tmainfrm.ApplicationEventsMinimize(Sender: TObject);
begin
  TrayIcon.Visible := True;
  Application.ShowMainForm:=False;
  ShowWindow(Handle, SW_HIDE);
end;

procedure Tmainfrm.OpenBestelldetails(ABestellnummer: string);
begin
  ShellExecute( Handle, 'open', PWideChar('https://sellercentral.amazon.de/orders-v3/order/' + ABestellnummer), nil, nil, SW_NORMAL);
end;

procedure Tmainfrm.edtRechnungsbetrag2PropertiesEditValueChanged(Sender: TObject);
begin
  edtSumme2.Value := edtRechnungsbetrag2.Value + edtRechnungskorrektur2.Value;
end;

procedure Tmainfrm.edtRechnungsbetragPropertiesEditValueChanged(
  Sender: TObject);
begin
  edtSumme.Value := edtRechnungsbetrag.Value + edtRechnungskorrektur.Value;
end;

procedure Tmainfrm.edtRechnungskorrekturPropertiesEditValueChanged(
  Sender: TObject);
begin
  edtSumme.Value := edtRechnungsbetrag.Value + edtRechnungskorrektur.Value;
end;

procedure Tmainfrm.FDInvoiceSelectAfterOpen(DataSet: TDataSet);
begin
  InvoiceQuery.ResourceOptions.CmdExecMode := amBlocking;
  InvoiceDS.DataSet := InvoiceQuery;
end;

procedure Tmainfrm.FDInvoiceSelectBeforeOpen(DataSet: TDataSet);
begin
  InvoiceDS.DataSet := nil;
end;

procedure Tmainfrm.FormShow(Sender: TObject);
var Date: TDateTime;
begin
  Date:= EncodeDate(YearOf(Now), MonthOf(Now)-1,1);

  // установка дат для вкладки VERKAUF
  dtpBegin.Date:=Date;
  dtpEnd.Date:=EncodeDate(YearOf(Date), MonthOf(Date), DaysInMonth(Date));

  // установка дат для вкладки AMAZON
  beginDate.Date:=dtpBegin.Date;
  endDate.Date:=dtpEnd.Date;

  if (TConnectionParam.IsReadParam) then
  begin
    ExportPfad.Text  :=TConnectionParam.ExportPfad;
  end;

  if (TConnectionParam.IsReadParam) then
  if DataModule1.DbConnect(TConnectionParam.Server, TConnectionParam.Base, TConnectionParam.User, TConnectionParam.Password) then
  begin
    SetConnectedStatus();
  end
  else
    MessageDlg('Datenbankverbindung konnte nicht hergestellt werden.' + #13#10 + #13#10 + 'Bitte prüfen Sie Verbindung zur Datenbank',  mtWarning, [mbOK], 0);
end;

procedure Tmainfrm.GetInvoice;
begin
  if DataModule1.FDConnection.Connected then
  begin
    SetConnectedStatus();
    ActivityIndicator(true);
    InvoiceQuery.Active := false;
    InvoiceQuery.ParamByName('DATEBEGIN').Value := dtpBegin.Date;
    InvoiceQuery.ParamByName('DATEEND').Value := dtpEnd.Date;
    InvoiceQuery.ResourceOptions.CmdExecMode := amAsync;
    InvoiceQuery.Active := true;

    while InvoiceQuery.Command.State = csExecuting do
    begin
      application.ProcessMessages;
    end;

    ActivityIndicator(false);
  end
  else
  begin
    if (TConnectionParam.IsReadParam) then
    begin
      if DataModule1.DbConnect(TConnectionParam.Server, TConnectionParam.Base, TConnectionParam.User, TConnectionParam.Password) then
      begin
        GetInvoice;
      end;
    end
    else
    MessageDlg('Datenbankverbindung konnte nicht hergestellt werden.' + #13#10 + #13#10 + 'Bitte prüfen Sie Verbindung zur Datenbank',  mtWarning, [mbOK], 0);
  end;
end;

/// GetInvoiceDetail - получение связанной информации по invoce
procedure Tmainfrm.GetInvoiceDetail();
var ReNr: string;
begin
  ReNr := InvoiceQuery.FieldByName('ReNr').AsString;
  if (InvoiceQuery.Active) and (ReNr.Length > 0) and (FReNr <> ReNr) then
  begin
    FDQueryOrderAmazonReport.Active := false;
    FDQueryOrderAmazonReport.ParamByName('RENR').Value := ReNr;
    FDQueryOrderAmazonReport.Active := true;

    FDQueryJLTRechnungbetrag.Active := false;
    FDQueryJLTRechnungbetrag.ParamByName('RENR').Value := ReNr;
    FDQueryJLTRechnungbetrag.Active := true;

    SplitInvoiceQuery.Active := false;
    SplitInvoiceQuery.ParamByName('Bestellnummer').Value := InvoiceQuery.FieldByName('Bestellnummer').AsString;
    SplitInvoiceQuery.Active := true;


    vRefundAmazonReport.Active := false;
    vRefundAmazonReport.ParamByName('InetBestellNr').Value := InvoiceQuery.FieldByName('Bestellnummer').AsString;
    vRefundAmazonReport.Active := true;

    FDQueryJTLRechnungsKorrektur.Active := false;
    FDQueryJTLRechnungsKorrektur.ParamByName('RENR').Value := ReNr;
    FDQueryJTLRechnungsKorrektur.Active := true;

    FDQueryAllInvoicekorrection.Active := false;
    FDQueryAllInvoicekorrection.ParamByName('RENR').Value := InvoiceQuery.FieldByName('Bestellnummer').AsString;
    FDQueryAllInvoicekorrection.Active := true;

    comment.Text:=InvoiceQuery.FieldByName('sign_comment').AsString;

    edtInvCorrText.Text:=InvoiceQuery.FieldByName('InvoiceText').AsString;

    FReNr := ReNr;
  end
end;

procedure Tmainfrm.GridInvoiceViewCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  GetInvoiceDetail();
end;

procedure Tmainfrm.GridInvoiceViewKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_UP, VK_DOWN] then
    GetInvoiceDetail();
end;

procedure Tmainfrm.GridInvoiceViewTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
  var
    c_order, c_refund : Integer;
    s: string;
    i: Integer;
begin
  c_order := 0;
  c_refund := 0;
  for i:=0 to GridInvoiceView.DataController.FilteredRecordCount - 1 do
  begin
    try
      s := GridInvoiceView.DataController.GetValue(GridInvoiceView.DataController.FilteredRecordIndex[i], Sender.field.Index);
      if (s.ToInteger =1) then
         Inc(c_order)
      else
         Inc(c_refund)
    except
    end
  end;

  lblorder.Caption :=c_order.ToString;
  lblrefund.Caption :=c_refund.ToString;

  lblCountOrder.Caption:=InvoiceQuery.FieldByName('countOrder').AsString;
  lblCountRefund.Caption:=InvoiceQuery.FieldByName('countRefund').AsString;

end;

procedure Tmainfrm.ExportPfadPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var reg : TRegistry;
begin
  if cxShellBrowserDialog1.Execute then
  Begin
    reg:=TRegistry.Create;
    reg.RootKey:=HKEY_CURRENT_USER;
    reg.OpenKey('Software\DatevTools', true);
    ExportPfad.Text :=  cxShellBrowserDialog1.Path;
    reg.WriteString('ExportPfad', ExportPfad.Text);
    FreeAndNil(reg);
  End;
end;
end.

