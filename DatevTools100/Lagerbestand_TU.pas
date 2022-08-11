unit Lagerbestand_TU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, Vcl.Menus,
  cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLabel, Vcl.ExtCtrls, cxPC, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCalc, EingabeErr_TU;

type
  TLagerbestand_T = class(TForm)
    pcLagerbestand: TcxPageControl;
    LagerbestandDS: TDataSource;
    ActionList: TActionList;
    actClear: TAction;
    cxImageList: TcxImageList;
    TableEingabe: TFDTable;
    DSEingabe: TDataSource;
    TableEingabern: TIntegerField;
    TableEingabeMenge: TIntegerField;
    TableEingabeLagerplatz: TStringField;
    TableEingabeArtikelnummer: TStringField;
    TableEingabeEAN: TStringField;
    TableEingabeArtikelname: TWideStringField;
    TableEingabeWG: TIntegerField;
    TableEingabeColor: TIntegerField;
    LagerbestandFillQuery: TFDQuery;
    actEingabeAdd: TAction;
    cxImageList12: TcxImageList;
    TableLagerbestand: TFDTable;
    TableLagerbestandcKommentar_1: TStringField;
    TableLagerbestandcKommentar_2: TStringField;
    TableLagerbestandLagerplatz: TStringField;
    TableLagerbestandArtikelnummer: TStringField;
    TableLagerbestandEAN: TStringField;
    TableLagerbestandArtikelname: TWideStringField;
    TableLagerbestandWG: TIntegerField;
    TableLagerbestandrn: TIntegerField;
    TableLagerbestandMenge: TIntegerField;
    TableLagerbestandColor: TIntegerField;
    TableLagerbestandJtlBestand: TFloatField;
    TableLagerbestandAmaBestand: TIntegerField;
    Query: TFDQuery;
    TableLagerbestandid: TFMTBCDField;
    Panel4: TPanel;
    cxLabel6: TcxLabel;
    EingabeGrid: TcxGrid;
    EingabeView: TcxGridDBTableView;
    EingabeViewEAN: TcxGridDBColumn;
    EingabeViewMenge: TcxGridDBColumn;
    EingabeViewArtikelname: TcxGridDBColumn;
    EingabeViewArtikelnummer: TcxGridDBColumn;
    EingabeViewrn: TcxGridDBColumn;
    EingabeViewColor: TcxGridDBColumn;
    EingabeLevel: TcxGridLevel;
    ToolPanel: TPanel;
    btnSuchen: TcxButton;
    edtLagerplatz: TcxButtonEdit;
    lblSettlementID: TcxLabel;
    edtEingabe: TcxButtonEdit;
    cxLabel2: TcxLabel;
    LagerbestandGrid: TcxGrid;
    LagerbestandView: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    LagerbestandViewColor: TcxGridDBColumn;
    LagerbestandViewJtlBestand: TcxGridDBColumn;
    LagerbestandViewAmaBestand: TcxGridDBColumn;
    LagerbestandViewColumnAdd: TcxGridDBColumn;
    LagerbestandLevel: TcxGridLevel;
    procedure edtkMessageIdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnSuchenClick(Sender: TObject);
    procedure edtLagerplatzKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtEingabeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LagerbestandViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure EingabeViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure LagerbestandFillQueryAfterOpen(DataSet: TDataSet);
    procedure LagerbestandFillQueryBeforeOpen(DataSet: TDataSet);
    procedure EingabeViewEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure actEingabeAddExecute(Sender: TObject);
    procedure EingabeViewNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure TableLagerbestandError(ASender, AInitiator: TObject;
      var AException: Exception);
  private
    procedure LagerbestandRefresh;
    { Private declarations }
  public
    { Public declarations }
    procedure LagerbestandLoad();
    procedure TableEingabeRefresh();
  end;

var
  Lagerbestand_T: TLagerbestand_T;

  var EingabeErr_T: TEingabeErr_T;

const FColorGreen = $00B7FFB7;
const FColorRed = $009F9FFF;
implementation

{$R *.dfm}

uses dm, mainform, SqlListU, CommonUtilsU;

procedure TLagerbestand_T.actEingabeAddExecute(Sender: TObject);
var
    ColorValue: Variant;  EAN:string; RetCode: Integer;

    procedure setColorValue(FColorValue: Variant);
    begin
      TableLagerbestand.Edit;
      TableLagerbestand.FieldByName('Color').Value := FColorValue;
      TableLagerbestand.Post;
    end;
begin
    if TableLagerbestand.FieldByName('EAN').Value = '' then Exit;

    Query.Close;
    Query.SQL.Text := ' declare @r int exec @r = DatevTools100.dbo.EANEingabe @EAN = :EAN '+
                      ''+
                      ' select @r, (select max(Color) '+
                      '               from ##Lagerbestand (nolock) '+
                      '              where EAN=:EAN and Color <= 2) as Color ';

    if Sender.ClassName = 'TAction' then
      EAN:= TableLagerbestand.FieldByName('EAN').Value
    else
      EAN:= edtEingabe.Text;

    Query.ParamByName('EAN').Value := EAN;
    Query.Open;

    ColorValue:=Query.Fields[1].Value;
    RetCode:=Query.Fields[0].Value;

    if ColorValue = 2 then
    begin
      MessageBeep(MB_OK);
    end
    else MessageBeep(MB_ICONHAND);


    if RetCode = 1 then
    begin
      // EAN отсутствует
      // сообщение об ошибке

      EingabeErr_T := TEingabeErr_T.Create(nil);
      EingabeErr_T.kArtikel:=0;
      EingabeErr_T.DlgType:=0;
      EingabeErr_T.EAN:=EAN;
      EingabeErr_T.ShowModal;
      EingabeErr_T.Free;
    end
    else
    begin
      //
      TableEingabeRefresh;
      if ((Sender.ClassName = 'TAction') {and (Query.Fields[1].Value = 1)}) then
      begin
        setColorValue(ColorValue);
      end
      else
      begin
        if TableLagerbestand.Locate('EAN', EAN, []) then
        begin
          setColorValue(ColorValue);
        end
      end;
    end;
    Query.Close;
end;

procedure TLagerbestand_T.btnSuchenClick(Sender: TObject);
begin
  LagerbestandLoad();
end;

procedure TLagerbestand_T.edtEingabeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // обработчик нажатия Enter в поле EAN Eingabe
  if edtEingabe.Text <> '' then
  if ((TableLagerbestand.RecordCount>0) and (AnsiChar(Key) in [#13])) then
  begin
    actEingabeAddExecute(Sender);
    edtEingabe.Text := '';
  end;
end;

procedure TLagerbestand_T.edtkMessageIdPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
   if (Sender is TcxButtonEdit) then (Sender as TcxButtonEdit).Clear;
end;

procedure TLagerbestand_T.edtLagerplatzKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (AnsiChar(Key) in [#13]) then btnSuchenClick(Sender);
end;

procedure TLagerbestand_T.EingabeViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if(AViewInfo.GridRecord.Values[EingabeViewColor.Index] = 1) then
    ACanvas.Brush.Color := FColorGreen;

  if(AViewInfo.GridRecord.Values[EingabeViewColor.Index] = 2) then
    ACanvas.Brush.Color := FColorRed;
end;

procedure TLagerbestand_T.EingabeViewEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  if AItem.Name = 'EingabeViewMenge' then
  begin
    TableEingabe.Post;

    Query.Close;
    Query.SQL.Text := ' exec DatevTools100.dbo.EANEingabe_setColor @EAN = :EAN';
    Query.ParamByName('EAN').Value := EingabeViewEAN.EditValue;
    Query.ExecSQL;

    TableEingabeRefresh;
    LagerbestandRefresh;
  end;
end;

procedure TLagerbestand_T.EingabeViewNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if AButtonIndex = 16 then
  begin
    Query.ExecSQL('delete from ##Eingabe;  Update ##Lagerbestand set Color = 0;');
    LagerbestandRefresh;
    TableEingabeRefresh;
  end;
end;

procedure TLagerbestand_T.LagerbestandFillQueryAfterOpen(DataSet: TDataSet);
begin
  LagerbestandFillQuery.ResourceOptions.CmdExecMode := amBlocking;
  //LagerbestandDS.DataSet := LagerbestandQuery;

  LagerbestandRefresh;
  TableEingabeRefresh;

  mainfrm.ActivityIndicator(false);
end;

procedure TLagerbestand_T.LagerbestandFillQueryBeforeOpen(DataSet: TDataSet);
begin
 // LagerbestandDS.DataSet := nil;
  while LagerbestandFillQuery.Command.State = csExecuting do
  begin
    Application.ProcessMessages;
  end;
  mainfrm.ActivityIndicator(true);
end;

procedure TLagerbestand_T.LagerbestandLoad;
begin
  if edtLagerplatz.text <> '' then

  if DataModule1.FDConnection.Connected then
  begin
    mainfrm.SetConnectedStatus();

    LagerbestandFillQuery.Active := false;
    LagerbestandFillQuery.ParamByName('Lagerplatz').Value := edtLagerplatz.text;
    LagerbestandFillQuery.ResourceOptions.CmdExecMode := amAsync;
    LagerbestandFillQuery.Active := true;
  end
  else
  begin
    if (TConnectionParam.IsReadParam) then
    begin
      if DataModule1.DbConnect(TConnectionParam.Server, TConnectionParam.Base, TConnectionParam.User, TConnectionParam.Password) then
      begin
        LagerbestandLoad;
      end;
    end
    else
    MessageDlg('Datenbankverbindung konnte nicht hergestellt werden.' + #13#10 + #13#10 + 'Bitte prüfen Sie Verbindung zur Datenbank',  mtWarning, [mbOK], 0);
  end;
end;

procedure TLagerbestand_T.LagerbestandViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  if (AViewInfo.Item.Name = 'LagerbestandViewAmaBestand') then
  begin
    if(AViewInfo.GridRecord.Values[LagerbestandViewJtlBestand.Index] <> AViewInfo.GridRecord.Values[LagerbestandViewAmaBestand.Index]) then
    begin
      ACanvas.Brush.Color := FColorRed;
    end
    else
    begin
      if(AViewInfo.GridRecord.Values[LagerbestandViewColor.Index] = 1) then
      begin
        ACanvas.Brush.Color := FColorGreen;
      end;
    end;
  end
  else
  begin
    if(AViewInfo.GridRecord.Values[LagerbestandViewColor.Index] = 1) then
    begin
      ACanvas.Brush.Color := FColorGreen;
    end;

  end;
end;



procedure TLagerbestand_T.TableEingabeRefresh;
begin
  TableEingabe.Active:= False;
  TableEingabe.Active:= True;

end;

procedure TLagerbestand_T.TableLagerbestandError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  mainfrm.ActivityIndicator(false);
end;

procedure TLagerbestand_T.LagerbestandRefresh;
begin
  TableLagerbestand.Active:= False;
  TableLagerbestand.Active:= True;
end;

end.
