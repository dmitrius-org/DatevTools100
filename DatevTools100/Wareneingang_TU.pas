unit Wareneingang_TU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxSplitter, Vcl.ExtCtrls, Vcl.Menus, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit,
  Vcl.StdCtrls, cxButtons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, System.ImageList,
  Vcl.ImgList, cxImageList, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList, cxMemo, cxSpinEdit, cxSpinButton,
  cxDBLookupComboBox;

type
  TColumnVal=class

  private
    FIndex: Integer;
    FValue: Variant;
    FName: String;
    FID: Integer;

  published
    property AIndex: Integer read FIndex write FIndex;
    property AValue: Variant read FValue write FValue;
    property AName: String read FName write FName;
    property AID: Integer  read FID write FID;
  end;


  TWareneingang_T = class(TForm)
    Panel: TPanel;
    LEftPanel: TPanel;
    RPanel: TPanel;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    btnAdd: TcxButton;
    edtEanasin: TcxButtonEdit;
    lblArtikelname: TcxLabel;
    lblLagerplatz: TcxLabel;
    wareneingangGrid: TcxGrid;
    wareneingangView: TcxGridDBTableView;
    wareneingangLevel: TcxGridLevel;
    wareneingangDS: TDataSource;
    wareneingangQ: TFDQuery;
    Query: TFDQuery;
    cxImageList12: TcxImageList;
    btnCSVExport: TcxButton;
    wareneingangQSpid: TFMTBCDField;
    wareneingangQEAN: TStringField;
    wareneingangQName: TStringField;
    wareneingangQArtikelnummer: TStringField;
    wareneingangQASIN: TStringField;
    wareneingangQparentASIN: TStringField;
    wareneingangQMenge: TIntegerField;
    wareneingangQPreis: TFloatField;
    wareneingangViewSpid: TcxGridDBColumn;
    wareneingangViewEAN: TcxGridDBColumn;
    wareneingangViewName: TcxGridDBColumn;
    wareneingangViewArtikelnummer: TcxGridDBColumn;
    wareneingangViewASIN: TcxGridDBColumn;
    wareneingangViewparentASIN: TcxGridDBColumn;
    wareneingangViewMenge: TcxGridDBColumn;
    wareneingangViewPreis: TcxGridDBColumn;
    ColumnAdd: TcxGridDBColumn;
    ColumnDel: TcxGridDBColumn;
    ActionList: TActionList;
    actClear: TAction;
    actMengeAdd: TAction;
    actMengeDel: TAction;
    cxButton1: TcxButton;
    btnLagerplatzclear: TcxButton;
    edtLagerplatz: TcxMaskEdit;
    edtLagerplatzVal: TcxSpinButton;
    actWareneingangExport: TAction;
    Panel1: TPanel;
    btnSuchen: TcxButton;
    btnparentAsin: TcxButtonEdit;
    cxLabel1: TcxLabel;
    ArtikelGrid: TcxGrid;
    ArtikelView: TcxGridDBTableView;
    ArtikelLevel: TcxGridLevel;
    lblName: TcxLabel;
    btnamaArtName: TcxButtonEdit;
    cxLabel3: TcxLabel;
    btnartname: TcxButtonEdit;
    cxLabel4: TcxLabel;
    btnColorName: TcxButtonEdit;
    cxLabel5: TcxLabel;
    btncolorlang: TcxButtonEdit;
    cxLabel6: TcxLabel;
    btncolorKurz: TcxButtonEdit;
    btnsize: TcxButtonEdit;
    cxLabel2: TcxLabel;
    ArtikelDS: TDataSource;
    ArtikelQArtikelID: TFMTBCDField;
    ArtikelQparentAsin: TStringField;
    ArtikelQAmaName: TStringField;
    ArtikelQArtName: TStringField;
    ArtikelQSize: TStringField;
    ArtikelViewArtikelID: TcxGridDBColumn;
    ArtikelViewparentAsin: TcxGridDBColumn;
    ArtikelViewAmaName: TcxGridDBColumn;
    ArtikelViewArtName: TcxGridDBColumn;
    ArtikelViewSize: TcxGridDBColumn;
    btnSpeichern: TcxButton;
    btnBearbeiten: TcxButton;
    ArtikelViewColumnAdd: TcxGridDBColumn;
    actMengeAdd2: TAction;
    cxImageList16: TcxImageList;
    ArtikelQAsin: TStringField;
    ArtikelQProduktColorID: TFMTBCDField;
    TableColor: TFDTable;
    TableColorProduktColorID: TFMTBCDField;
    TableColorColorName: TStringField;
    TableColorColorLang: TStringField;
    TableColorColorKurz: TStringField;
    DSColor: TDataSource;
    ArtikelViewColorName: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    ArtikelPM: TPopupMenu;
    PPArtikelRefresh: TMenuItem;
    Wrefresh: TMenuItem;
    ArtikelViewColorLang: TcxGridDBColumn;
    ArtikelViewColorKurz: TcxGridDBColumn;
    ArtikelAL: TActionList;
    actClone: TAction;
    AVProduktColorID: TcxGridDBColumn;
    pmClone: TMenuItem;
    N1: TMenuItem;
    actCloneSet: TAction;
    pmCloneSet: TMenuItem;
    ArtikelQ: TFDQuery;
    M: TMemo;
    procedure edtEanasinKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actMengeAddExecute(Sender: TObject);
    procedure actMengeDelExecute(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure wareneingangViewEditDblClick(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure edtEanasinPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnLagerplatzclearClick(Sender: TObject);
    procedure edtLagerplatzPropertiesChange(Sender: TObject);
    procedure edtLagerplatzValPropertiesChange(Sender: TObject);
    procedure actWareneingangExportExecute(Sender: TObject);
    procedure actClearExecute(Sender: TObject);
    procedure btnSuchenClick(Sender: TObject);
    procedure actMengeAdd2Execute(Sender: TObject);
    procedure btnBearbeitenClick(Sender: TObject);
    procedure btnSpeichernClick(Sender: TObject);
    procedure PPArtikelRefreshClick(Sender: TObject);
    procedure WrefreshClick(Sender: TObject);
    procedure actCloneExecute(Sender: TObject);
    procedure actCloneSetExecute(Sender: TObject);
    procedure actCloneSetUpdate(Sender: TObject);
    procedure actCloneUpdate(Sender: TObject);
  private
    { Private declarations }
    FEdit: Boolean;
   // FProduktColorID: Integer;


  public
    { Public declarations }
    procedure WareneingangRefresh();
    procedure ArtikelRefresh();

    procedure ArtikelGridEditStatus(AEnabled: Boolean);
    procedure ArtikelGridReadOnly(AEnabled: Boolean);
    procedure ArtikelGridEdit();
  end;

var
  Wareneingang_T: TWareneingang_T;
  FCloneList: TStringList;

implementation

uses ParentAsinPrice_FU, adString, dm, CommonUtilsU, ExportQueryU;

{$R *.dfm}

procedure TWareneingang_T.actWareneingangExportExecute(Sender: TObject); var fn:string;
begin
  fn:='';
  if DataModule1.FDConnection.Connected then
  begin
    Query.Close;
    Query.SQL.Text := 'declare @R int exec @R=DatevTools100.dbo.WareneingangExport @Lagerplatz = :Lagerplatz select @R';
    Query.ParamByName('Lagerplatz').Value := edtLagerplatz.Text;
    Query.open;

    var date: tdatetime;
    date:= Now();

    fn:=ExportDataSetToCSV(Query, TConnectionParam.ExportPfad + '\WareneingangExport' + FormatDateTime('ddmmyyyy', date)+ '_'+ FormatDateTime('hhmmss', date) + '.csv');
    if fn <> '' then
    begin
      Query.Close;
      Query.SQL.Text := 'declare @R int exec @R=DatevTools100.dbo.WareneingangExportSave select @R';
      Query.open;
    end;

    ShowMessage('Vorgang abgeschlossen!');
  end
  else
  begin
    MessageDlg('Datenbankverbindung konnte nicht hergestellt werden.' + #13#10 + #13#10 + 'Bitte prüfen Sie Verbindung zur Datenbank',  mtWarning, [mbOK], 0);
  end;
end;

procedure TWareneingang_T.ArtikelGridEdit;
begin
  ArtikelGridReadOnly(not FEdit);

  btnSpeichern.Enabled := FEdit;
  btnBearbeiten.Enabled := not FEdit;
end;

procedure TWareneingang_T.ArtikelGridEditStatus(AEnabled: Boolean);
begin
  FEdit:= AEnabled;
end;

procedure TWareneingang_T.ArtikelGridReadOnly(AEnabled: Boolean);
begin
  ArtikelQ.FieldByName('AmaName').ReadOnly := AEnabled;
  ArtikelQ.FieldByName('ArtName').ReadOnly := AEnabled;
  //ArtikelQ.FieldByName('ColorName').ReadOnly := AEnabled;
  //ArtikelQ.FieldByName('ColorLang').ReadOnly := AEnabled;
  //ArtikelQ.FieldByName('ColorKurz').ReadOnly := AEnabled;
  ArtikelQ.FieldByName('Size').ReadOnly := AEnabled;
  ArtikelQ.FieldByName('ProduktColorID').ReadOnly := AEnabled;

end;

procedure TWareneingang_T.ArtikelRefresh;
begin
  if TableColor.Active = false then
    TableColor.Open();

  ArtikelQ.close;
  ArtikelQ.open;
end;

procedure TWareneingang_T.actClearExecute(Sender: TObject);
begin
  if (Sender is TcxButtonEdit) then (Sender as TcxButtonEdit).Clear;
end;

procedure TWareneingang_T.actCloneExecute(Sender: TObject);
var intColumnLoop: Integer;
    ColumnVal: TColumnVal;
begin
  if ArtikelView.Controller.SelectedRowCount > 0 then
  begin
    FCloneList.Clear;
    try
      for intColumnLoop:= 0 to ArtikelView.Controller.SelectedColumnCount - 1 do
      begin
        ColumnVal := TColumnVal.Create;
        ColumnVal.AID := ArtikelViewArtikelID.EditValue;
        ColumnVal.AIndex := ArtikelView.Controller.SelectedColumns[intColumnLoop].Index;
        ColumnVal.AValue := VarToStr(ArtikelView.Controller.SelectedColumns[intColumnLoop].EditValue);
        ColumnVal.AName  := ArtikelView.Columns[ArtikelView.Controller.SelectedColumns[intColumnLoop].Index].DataBinding.FieldName;

       // m.Lines.Add(VarToStr(ArtikelView.Controller.SelectedColumns[intColumnLoop].EditValue));

        FCloneList.AddObject(intColumnLoop.ToString, ColumnVal);
      end;
    finally
      //
    end;
  end;
end;

procedure TWareneingang_T.actCloneSetExecute(Sender: TObject);
var intRowLoop, intColumnLoop, ID: Integer;
var ColumnVal: TColumnVal;
begin
  if ((ArtikelView.Controller.SelectedRowCount > 0) and (FCloneList.Count>0)) then
  begin
    ArtikelView.BeginUpdate();
    ArtikelView.DataController.BeginFullUpdate;
    ArtikelGridReadOnly(False);

    for intRowLoop:= 0 to ArtikelView.Controller.SelectedRowCount - 1 do
    begin
      for intColumnLoop := 0 to FCloneList.Count-1 do
      begin
         ColumnVal := TColumnVal(FCloneList.Objects[intColumnLoop]);
         if ArtikelView.DataController.LocateByKey(ArtikelView.Controller.SelectedRows[intRowLoop].Values[0]) then
         begin
          ArtikelView.DataController.DataSet.Edit;

           ArtikelView.DataController.DataSource.DataSet.FieldByName(ColumnVal.AName).Value := ColumnVal.AValue;
          // ArtikelView.Controller.SelectedRows[intColumnLoop].ViewData.DataController.Values[ArtikelView.Controller.SelectedRows[intRowLoop].Index, ColumnVal.AIndex] := ColumnVal.AValue;
          ArtikelView.DataController.DataSet.Post();
         end;
      end;
    end;

    //m.Lines.Add(ArtikelQ.UpdatesPending.ToString);
    if ArtikelQ.UpdatesPending then
    begin
      ArtikelQ.ApplyUpdates(1);
    end;

    ArtikelGridReadOnly(True);
    ArtikelView.DataController.EndFullUpdate;
    ArtikelView.EndUpdate;
  end;
end;

procedure TWareneingang_T.actCloneSetUpdate(Sender: TObject);
begin
  actCloneSet.Enabled := (ArtikelView.Controller.SelectedRowCount > 0) and
                         (FCloneList.Count > 0) and
                         (ArtikelView.Controller.SelectedColumnCount = FCloneList.Count) ;
end;

procedure TWareneingang_T.actCloneUpdate(Sender: TObject);
begin
  actClone.Enabled := ArtikelView.Controller.SelectedRowCount = 1;
end;

procedure TWareneingang_T.actMengeAdd2Execute(Sender: TObject);
begin
  Query.Close;
  Query.SQL.Text := 'declare @R int exec @R=DatevTools100.dbo.EANASIN_Select @Object = :Object select @R';
  Query.ParamByName('Object').Value := ArtikelQ.FieldByName('Asin').Value;
  Query.open;

  if Query.Fields[0].Value = 1 then
  begin
    WareneingangRefresh;
  end;
end;

procedure TWareneingang_T.actMengeAddExecute(Sender: TObject);
begin
  wareneingangViewMenge.EditValue := wareneingangViewMenge.EditValue + 1;
  wareneingangViewMenge.DataBinding.DataController.DataSet.Post;
end;

procedure TWareneingang_T.actMengeDelExecute(Sender: TObject);
begin
  if wareneingangViewMenge.EditValue > 0 then
  begin
    wareneingangViewMenge.EditValue := wareneingangViewMenge.EditValue - 1;
    wareneingangViewMenge.DataBinding.DataController.DataSet.Post;
  end;
end;

procedure TWareneingang_T.btnAddClick(Sender: TObject);
begin
  if (edtEanasin.Text <> '') then
  begin
    Query.Close;
    Query.SQL.Text := 'declare @R int exec @R=DatevTools100.dbo.EANASIN_Select @Object = :Object select @R';
    Query.ParamByName('Object').Value := edtEanasin.Text;
    Query.open;

    if Query.Fields[0].Value = 1 then
    begin
      WareneingangRefresh;
    end;

    edtEanasin.Clear;
  end;
end;

procedure TWareneingang_T.btnBearbeitenClick(Sender: TObject);
begin
  ArtikelGridEditStatus(True);

  ArtikelGridEdit();
end;

procedure TWareneingang_T.cxButton1Click(Sender: TObject);
begin
  if wareneingangQ.RecordCount > 0 then
  begin
    Query.Close;
    Query.SQL.Text := 'Delete from DatevTools100.dbo.pWareneingang where spid = @@spid';
    Query.ExecSQL;
    WareneingangRefresh;
    ShowMessage('Vorgang abgeschlossen!');
  end;
end;

procedure TWareneingang_T.btnLagerplatzclearClick(Sender: TObject);
begin
  edtLagerplatz.Clear;
end;

procedure TWareneingang_T.btnSpeichernClick(Sender: TObject);
begin
  if ArtikelQ.UpdatesPending then
  begin
   // m.Lines.Add('ApplyUpdates');
    ArtikelQ.ApplyUpdates(1);
  end;

  ArtikelGridEditStatus(FAlse);

  ArtikelGridEdit();
end;

procedure TWareneingang_T.btnSuchenClick(Sender: TObject);
begin

  if TableColor.Active = false then
    TableColor.Open();

  ArtikelQ.Close;
  ArtikelQ.ParamByName('ParentAsin').Value:= btnparentAsin.Text;
  ArtikelQ.ParamByName('AmaName').Value   := btnamaArtName.Text;
  ArtikelQ.ParamByName('ArtName').Value   := btnArtName.Text;
  ArtikelQ.ParamByName('Size').Value      := btnSize.Text;
  ArtikelQ.ParamByName('ColorName').Value := btnColorName.Text;
  ArtikelQ.ParamByName('ColorLang').Value := btnColorLang.Text;
  ArtikelQ.ParamByName('ColorKurz').Value := btnColorKurz.Text;
  ArtikelQ.Open();
end;

procedure TWareneingang_T.edtEanasinKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (AnsiChar(Key) in [#13]) then btnAddClick(Sender);
end;

procedure TWareneingang_T.edtEanasinPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if (Sender is TcxButtonEdit) then (Sender as TcxButtonEdit).Clear;
end;

procedure TWareneingang_T.edtLagerplatzPropertiesChange(Sender: TObject);
begin
  edtLagerplatzVal.Value:= Copy(edtLagerplatz.Text, 5, 2);
end;

procedure TWareneingang_T.edtLagerplatzValPropertiesChange(Sender: TObject);
var i: Integer;
begin
  edtLagerplatz.EditValue := Copy(edtLagerplatz.Text, 1, 4) + LeftPad(VarToStr(edtLagerplatzVal.Value), '0', 2);
end;

procedure TWareneingang_T.FormShow(Sender: TObject);
begin
  ArtikelGridEdit;

  WareneingangRefresh;

  if not Assigned(FCloneList) then FCloneList := TStringList.Create;
end;

procedure TWareneingang_T.PPArtikelRefreshClick(Sender: TObject);
begin
  ArtikelGridEditStatus(FAlse);

  ArtikelGridEdit();

  ArtikelGridReadOnly(True);
  ArtikelRefresh;
end;

procedure TWareneingang_T.WareneingangRefresh;
begin
  wareneingangQ.Active:=False;
  wareneingangQ.Active:=true;
end;

procedure TWareneingang_T.wareneingangViewEditDblClick(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit);
begin
  if AItem.Name = 'wareneingangViewPreis' then
  begin
    ParentAsinPrice_F.cxTextEdit1.text:= wareneingangViewparentASIN.EditValue;
    ParentAsinPrice_F.cxCurrencyEdit1.Value := wareneingangViewPreis.EditValue;

    if ParentAsinPrice_F.ShowModal=mrOk then
    begin
      Query.Close;
      Query.SQL.Text := ('Update [DatevTools100].[dbo].[pWareneingang] set Preis = :Preis where Spid = @@Spid and parentAsin = :Asin');
  //     try
      Query.ParamByName('Preis').Value := ParentAsinPrice_F.cxCurrencyEdit1.Value;
      Query.ParamByName('Asin').Value := wareneingangViewparentASIN.EditValue;
      Query.ExecSQL;


      Query.Close;
      Query.SQL.Text := ('Update [DatevTools100].[dbo].[tParentAsin] set Preis = :Preis where Asin = :Asin');
      Query.ParamByName('Preis').Value := ParentAsinPrice_F.cxCurrencyEdit1.Value;
      Query.ParamByName('Asin').Value := wareneingangViewparentASIN.EditValue;
      Query.ExecSQL;
  //  finally
  //  end;
      WareneingangRefresh
    end;
    ParentAsinPrice_F.Free;
  end;
end;

procedure TWareneingang_T.WrefreshClick(Sender: TObject);
begin
  WareneingangRefresh;
end;

end.
