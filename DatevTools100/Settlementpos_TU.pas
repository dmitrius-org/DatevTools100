unit Settlementpos_TU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinsDefaultPainters,
  dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxLabel, Vcl.ExtCtrls, cxPC,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus, System.ImageList, Vcl.ImgList, cxImageList, Vcl.StdCtrls, cxButtons,
  System.Actions, Vcl.ActnList, cxTextEdit, cxMaskEdit, cxButtonEdit,
  dxScrollbarAnnotations;

type
  TSettlementpos_T = class(TForm)
    pcLagerbestand: TcxPageControl;
    Settlementpos: TcxTabSheet;
    Panel4: TPanel;
    cxLabel6: TcxLabel;
    SettlementposGrid: TcxGrid;
    SettlementposView: TcxGridDBTableView;
    SettlementposViewkMessageId: TcxGridDBColumn;
    SettlementposViewSettlementID: TcxGridDBColumn;
    SettlementposViewTransactionType: TcxGridDBColumn;
    SettlementposViewOrderID: TcxGridDBColumn;
    SettlementposViewMerchantOrderID: TcxGridDBColumn;
    SettlementposViewShipmentID: TcxGridDBColumn;
    SettlementposViewMarketplaceName: TcxGridDBColumn;
    SettlementposViewAmountType: TcxGridDBColumn;
    SettlementposViewAmountDescription: TcxGridDBColumn;
    SettlementposViewAmount: TcxGridDBColumn;
    SettlementposViewFulfillmentID: TcxGridDBColumn;
    SettlementposViewOrderItemCode: TcxGridDBColumn;
    SettlementposViewMerchantOrderItemID: TcxGridDBColumn;
    SettlementposViewSKU: TcxGridDBColumn;
    SettlementposViewQuantityPurchased: TcxGridDBColumn;
    SettlementposViewPromotionID: TcxGridDBColumn;
    SettlementposViewdErstellt: TcxGridDBColumn;
    SettlementposLevel: TcxGridLevel;
    SettlementposDS: TDataSource;
    ToolPanel: TPanel;
    btnDatenLaden: TcxButton;
    btnFind: TcxButton;
    cxImageList: TcxImageList;
    edtkMessageId: TcxButtonEdit;
    lblkMessageId: TcxLabel;
    ActionList: TActionList;
    actClear: TAction;
    lblSettlementID: TcxLabel;
    lblOrderID: TcxLabel;
    lblSKU: TcxLabel;
    edtSettlementID: TcxButtonEdit;
    edtOrderID: TcxButtonEdit;
    edtSKU: TcxButtonEdit;
    SettlementposQuery: TFDQuery;
    SettlementposQuerykMessageId: TLargeintField;
    SettlementposQuerySettlementID: TLargeintField;
    SettlementposQueryTransactionType: TStringField;
    SettlementposQueryOrderID: TStringField;
    SettlementposQueryMerchantOrderID: TStringField;
    SettlementposQueryShipmentID: TStringField;
    SettlementposQueryMarketplaceName: TStringField;
    SettlementposQueryAmountType: TStringField;
    SettlementposQueryAmountDescription: TStringField;
    SettlementposQueryAmount: TFMTBCDField;
    SettlementposQueryFulfillmentID: TStringField;
    SettlementposQueryOrderItemCode: TStringField;
    SettlementposQueryMerchantOrderItemID: TStringField;
    SettlementposQuerySKU: TStringField;
    SettlementposQueryQuantityPurchased: TIntegerField;
    SettlementposQueryPromotionID: TStringField;
    SettlementposQuerydErstellt: TSQLTimeStampField;
    procedure btnDatenLadenClick(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
    procedure SettlementposQuery_AfterOpen(DataSet: TDataSet);
    procedure SettlementposQuery_BeforeOpen(DataSet: TDataSet);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtkMessageIdKeyPress(Sender: TObject; var Key: Char);
    procedure edtkMessageIdPropertiesChange(Sender: TObject);
    procedure SettlementposQueryError(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure SettlementposQueryExecuteError(ASender: TObject; ATimes,
      AOffset: Integer; AError: EFDDBEngineException;
      var AAction: TFDErrorAction);
  private
    { Private declarations }
    procedure SettlementLoad();
  public
    { Public declarations }
  end;

var
  Settlementpos_T: TSettlementpos_T;

implementation

uses
  dm, mainform, CommonUtilsU;

{$R *.dfm}

procedure TSettlementpos_T.btnDatenLadenClick(Sender: TObject);
begin
  SettlementLoad();
end;

procedure TSettlementpos_T.btnFindClick(Sender: TObject);
begin
  SettlementLoad();
end;

procedure TSettlementpos_T.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if (Sender is TcxButtonEdit) then (Sender as TcxButtonEdit).Clear;
end;

procedure TSettlementpos_T.edtkMessageIdKeyPress(Sender: TObject;
  var Key: Char);
begin
  //if not (Key in ['0'..'9',#8, #22, #3]) then key:=#0;
end;

procedure TSettlementpos_T.edtkMessageIdPropertiesChange(Sender: TObject);
begin
  try
    StrToInt64((Sender as TcxButtonEdit).EditText);
  except
    (Sender as TcxButtonEdit).EditText := '';
  end;
end;

procedure TSettlementpos_T.SettlementposQueryError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  mainfrm.ActivityIndicator(false);
  ShowMessage(AException.Message);
end;

procedure TSettlementpos_T.SettlementposQueryExecuteError(ASender: TObject;
  ATimes, AOffset: Integer; AError: EFDDBEngineException;
  var AAction: TFDErrorAction);
begin
  mainfrm.ActivityIndicator(false);
  ShowMessage(AError.Message);
end;

procedure TSettlementpos_T.SettlementposQuery_AfterOpen(DataSet: TDataSet);
begin
  SettlementposQuery.ResourceOptions.CmdExecMode := amBlocking;
  SettlementposDS.DataSet := SettlementposQuery;
  mainfrm.ActivityIndicator(false);
end;

procedure TSettlementpos_T.SettlementposQuery_BeforeOpen(DataSet: TDataSet);
begin
  SettlementposDS.DataSet := nil;
  while SettlementposQuery.Command.State = csExecuting do
  begin
    Application.ProcessMessages;
  end;
  mainfrm.ActivityIndicator(true);
end;

procedure TSettlementpos_T.SettlementLoad;
begin
  if DataModule1.FDConnection.Connected then
  begin
    mainfrm.SetConnectedStatus();
    SettlementposQuery.Active := false;
   // ShowMessage(edtkMessageId.text);
    SettlementposQuery.ParamByName('kMessageId').Value := edtkMessageId.text;
    SettlementposQuery.ParamByName('SettlementID').Value := edtSettlementID.text;
    SettlementposQuery.ParamByName('OrderID').Value := edtOrderID.text;
    SettlementposQuery.ParamByName('SKU').Value := edtSKU.text;

    SettlementposQuery.ResourceOptions.CmdExecMode := amAsync;
    SettlementposQuery.Active := true;
  end
  else
  begin
    if (TConnectionParam.IsReadParam) then
    begin
      if DataModule1.DbConnect(TConnectionParam.Server, TConnectionParam.Base, TConnectionParam.User, TConnectionParam.Password) then
      begin
        SettlementLoad;
      end;
    end
    else
    MessageDlg('Datenbankverbindung konnte nicht hergestellt werden.' + #13#10 + #13#10 + 'Bitte prüfen Sie Verbindung zur Datenbank',  mtWarning, [mbOK], 0);
  end;
end;



end.
