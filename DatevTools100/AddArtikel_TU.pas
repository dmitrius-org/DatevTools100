unit AddArtikel_TU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, Vcl.Menus, cxTextEdit, cxMaskEdit, cxButtonEdit,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLabel,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, Vcl.ImgList, cxImageList, FireDAC.Comp.BatchMove.DataSet,
  FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.Text, cxDropDownEdit, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxDBLookupComboBox,
  dxDBSparkline;

type
  TAddArtikel_T = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    AmaExportGrid: TcxGrid;
    AmaExportView: TcxGridDBTableView;
    AmaExportLevel: TcxGridLevel;
    Panel2: TPanel;
    btnAdd: TcxButton;
    btnAddBrand: TcxButton;
    btnAddtoDB: TcxButton;
    SuchenQ: TFDQuery;
    SuchenDS: TDataSource;
    SuchenQSpid: TFMTBCDField;
    SuchenQProduktverwandtschaft: TStringField;
    SuchenQASIN: TStringField;
    SuchenQSKU: TStringField;
    SuchenQAmaName: TStringField;
    SuchenQEAN: TStringField;
    SuchenQSize: TStringField;
    SuchenQAmaColor: TStringField;
    SuchenQBrand: TStringField;
    SuchenQparentAsin: TStringField;
    SuchenQArtName: TStringField;
    AmaExportViewSpid: TcxGridDBColumn;
    AmaExportViewProduktverwandtschaft: TcxGridDBColumn;
    AmaExportViewASIN: TcxGridDBColumn;
    AmaExportViewSKU: TcxGridDBColumn;
    AmaExportViewAmaName: TcxGridDBColumn;
    AmaExportViewEAN: TcxGridDBColumn;
    AmaExportViewSize: TcxGridDBColumn;
    AmaExportViewAmaColor: TcxGridDBColumn;
    AmaExportViewBrand: TcxGridDBColumn;
    AmaExportViewparentAsin: TcxGridDBColumn;
    AmaExportViewArtName: TcxGridDBColumn;
    btnAddArtikel: TcxButton;
    Query: TFDQuery;
    cxImageList: TcxImageList;
    FDBatchMove: TFDBatchMove;
    FDBatchMoveTextReader: TFDBatchMoveTextReader;
    FDBatchMoveDataSetWriter: TFDBatchMoveDataSetWriter;
    FDTable: TFDTable;
    FDTableProduktverwandtschaft: TStringField;
    FDTableASIN: TStringField;
    FDTableSKU: TStringField;
    FDTableProductName: TStringField;
    FDTableArtderexternenProduktkennzeichnung: TStringField;
    FDTableExterneProduktkennzeichnung: TStringField;
    FDTableVariantendesign: TStringField;
    FDTableSize: TStringField;
    FDTableColorMap: TStringField;
    FDTableColor: TStringField;
    FDTableSizeMap: TStringField;
    FDTableZustand: TStringField;
    FDTableMenge: TStringField;
    FDTablePreis: TStringField;
    FDTableAktionen: TStringField;
    FDTablerelationship_type: TStringField;
    FDTableparent_sku: TStringField;
    FDTablefeed_product_type: TStringField;
    FDTablev3_product_type: TStringField;
    FDTableProduktnameBeschreibung: TStringField;
    FDTableitem_type: TStringField;
    FDTablerecommended_browse_nodes: TStringField;
    FDTablemanufacturer: TStringField;
    FDTablebrand_name: TStringField;
    FDTabledepartment_name: TStringField;
    edtArtName: TcxButtonEdit;
    SuchenQColorName: TStringField;
    SuchenQColorLang: TStringField;
    SuchenQColorKurz: TStringField;
    AmaExportViewColorName: TcxGridDBColumn;
    AmaExportViewColorLang: TcxGridDBColumn;
    AmaExportViewColorKurz: TcxGridDBColumn;
    QueryBrand: TFDQuery;
    edtBrand: TcxComboBox;
    PopupMenu1: TPopupMenu;
    RefreshGrid: TMenuItem;
    btnColor: TcxButton;
    QueryColor: TFDQuery;
    QueryColorProduktColorID: TFMTBCDField;
    QueryColorColorName: TStringField;
    QueryColorColorLang: TStringField;
    QueryColorColorKurz: TStringField;
    ColorView: TcxGridDBTableView;
    ColorViewColorName: TcxGridDBColumn;
    ColorViewColorLang: TcxGridDBColumn;
    ColorViewColorKurz: TcxGridDBColumn;
    SuchenQProduktColorID: TFMTBCDField;
    ProduktColorID: TcxGridDBColumn;
    DCColor: TDataSource;
    SuchenQID: TFMTBCDField;
    ID: TcxGridDBColumn;
    cxButton1: TcxButton;
    edtColorName: TcxLookupComboBox;
    edtColorLang: TcxLookupComboBox;
    edtColorKurz: TcxLookupComboBox;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    M: TMemo;
    QueryBrandname: TWideStringField;
    procedure btnAddArtikelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddtoDBClick(Sender: TObject);
    procedure btnAddBrandClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure RefreshGridClick(Sender: TObject);
    procedure btnColorClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure edtArtNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure edtColorNamePropertiesChange(Sender: TObject);
    procedure edtColorLangPropertiesChange(Sender: TObject);
    procedure edtColorKurzPropertiesChange(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure SuchenRefresh();
    procedure edtBrandRefresh();
    procedure edtColorRefresh();
  end;

var
  AddArtikel_T: TAddArtikel_T;

implementation

uses
  DlgMemo_FU, adAppUtils, SqlListU, Brand_TU, Color_TU;

{$R *.dfm}

procedure TAddArtikel_T.btnAddArtikelClick(Sender: TObject);
var DlgMemo_F: TDlgMemo_F;
    filename: String;
begin

  DlgMemo_F :=   TDlgMemo_F.Create(nil);
  if DlgMemo_F.ShowModal=mrOk then
  begin
    filename :=GetUserAppPatch() + '\tmp.csv';
    M.Lines.Add(filename);
    DlgMemo_F.Editor.Lines.DefaultEncoding := TEncoding.UTF8;
    DlgMemo_F.Editor.Lines.SaveToFile(filename);

    //SqlList['ImportArticelCsvTableCreate']
    Query.ExecSQL('DELETE FROM [DatevTools100].[dbo].[pArtikelImport]');
//     try
    FDTable.Open();
    FDBatchMoveTextReader.FileName := filename;
    FDBatchMoveTextReader.DataDef.Separator := #9;
    FDBatchMove.Execute;

    FDTable.First;
    Query.Open('declare @r int exec @r=DatevTools100.dbo.AmaExportSave select @r');
//  finally
//  end;

  end;
  DlgMemo_F.Free;

  SuchenRefresh();
end;

procedure TAddArtikel_T.btnAddBrandClick(Sender: TObject);
begin
  Brand_T.ShowModal;
  edtBrandRefresh;
end;

procedure TAddArtikel_T.btnAddClick(Sender: TObject);
var i:Integer; s: string; listB, listA, listPC: string;

const SqlB: string = ' UPDATE DATEVTOOLS100.dbo.pAmaExport      ' +
                      '    SET Brand = ''%s''                   ' +
                      '  WHERE ID in (%s)                       ' ;

const SqlA: string = ' UPDATE DATEVTOOLS100.dbo.pAmaExport      ' +
                      '    SET ArtName = ''%s''                 ' +
                      '  WHERE ID in (%s)                       ' ;

const SqlPC: string = ' UPDATE DATEVTOOLS100.dbo.pAmaExport     ' +
                      '    SET ProduktColorID = %s              ' +
                      '  WHERE ID in (%s)                       ' ;
begin
  try
    AmaExportView.DataController.BeginFullUpdate;
    if ((edtBrand.Text <> '') or (edtArtName.Text <> '') or (edtColorLang.EditValue > 0)) then

    for i:=0 to AmaExportView.Controller.SelectedRowCount - 1 do
    begin
  //
        if edtBrand.Text <> '' then
        begin
          //s := AmaExportView.DataController.GetValue(AmaExportView.DataController.FilteredRecordIndex[i], AmaExportViewAmaName.Index);
          s := AmaExportView.Controller.SelectedRows[i].Values[AmaExportViewAmaName.Index];

          if Pos(edtBrand.Text, s) > 0 then
          begin
            //listB := listB + ', ' + VarToStr(AmaExportView.DataController.GetValue(AmaExportView.DataController.FilteredRecordIndex[i], ID.Index));
            listB := listB + ', ' + VarToStr(AmaExportView.Controller.SelectedRows[i].Values[ID.Index]);
            //AmaExportView.DataController.SetValue(AmaExportView.DataController.FilteredRecordIndex[i], AmaExportViewBrand.Index, edtBrand.Text);
            AmaExportView.DataController.SetValue(AmaExportView.Controller.SelectedRows[i].Index, AmaExportViewBrand.Index, edtBrand.Text)
          end;
        end;

        if edtArtName.Text <> '' then
        begin
          //listA := listA + ', ' + VarToStr(AmaExportView.DataController.GetValue(AmaExportView.DataController.FilteredRecordIndex[i], ID.Index));
          listA := listA + ', ' +  VarToStr(AmaExportView.Controller.SelectedRows[i].Values[ID.Index]);
          //M.Lines.Add(listA);
          //AmaExportView.DataController.SetValue(AmaExportView.DataController.FilteredRecordIndex[i], AmaExportViewArtName.Index, edtArtName.Text);
          AmaExportView.DataController.SetValue(AmaExportView.Controller.SelectedRows[i].Index, AmaExportViewArtName.Index, edtArtName.Text)
        end;

        if edtColorName.EditValue > 0 then
        begin
          //listPC := listPC + ', ' + VarToStr(AmaExportView.DataController.GetValue(AmaExportView.DataController.FilteredRecordIndex[i], ID.Index));
          listPC := listPC + ', ' +VarToStr(AmaExportView.Controller.SelectedRows[i].Values[ID.Index]);
          //AmaExportView.DataController.SetValue(AmaExportView.DataController.FilteredRecordIndex[i], ProduktColorID.Index, cbColorName.EditValue);
          AmaExportView.DataController.SetValue(AmaExportView.Controller.SelectedRows[i].Index, ProduktColorID.Index, edtColorName.EditValue)
        end;

    end;

    if listB <> '' then
    begin
      Delete(listB, 1, 1);
      s:= Format(SqlB, [edtBrand.Text, listB]);
      Query.Close;
      Query.SQL.Text := s;
      Query.ExecSQL;
    end;

    if listA <> '' then
    begin
      Delete(listA, 1, 1);
      s:= Format(SqlA, [edtArtName.Text, listA]);
      Query.Close;
      Query.SQL.Text := s;
      Query.ExecSQL;
    end;

    if listPC <> '' then
    begin
      Delete(listPC, 1, 1);
      s:= Format(SqlPC, [edtColorName.EditValue, listPC]);
      Query.Close;
      Query.SQL.Text := s;
      Query.ExecSQL;
    end;

  finally
    AmaExportView.DataController.EndFullUpdate;
  end;
  //SuchenRefresh
end;

procedure TAddArtikel_T.btnAddtoDBClick(Sender: TObject);
begin
  Query.Open('declare @r int exec @r=DatevTools100.dbo.ArtikelSave select @r');
end;

procedure TAddArtikel_T.btnColorClick(Sender: TObject);
begin
  Color_T.ShowModal;

  edtColorRefresh();
end;

procedure TAddArtikel_T.cxButton1Click(Sender: TObject);
begin
  edtBrand.Clear;
end;

procedure TAddArtikel_T.cxButton2Click(Sender: TObject);
begin
  edtColorName.Clear;
end;

procedure TAddArtikel_T.cxButton3Click(Sender: TObject);
begin
  edtColorLang.Clear;
end;

procedure TAddArtikel_T.cxButton4Click(Sender: TObject);
begin
  edtColorKurz.Clear;
end;

procedure TAddArtikel_T.cxButton5Click(Sender: TObject);
begin
  Query.ExecSQL('delete from DatevTools100.dbo.pAmaExport where Spid = @@SPID');
  SuchenRefresh;
end;

procedure TAddArtikel_T.edtArtNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if (Sender is TcxButtonEdit) then (Sender as TcxButtonEdit).Clear;
end;

procedure TAddArtikel_T.edtBrandRefresh;
begin
  QueryBrand.close;
  QueryBrand.Open;
  edtBrand.Properties.Items.Clear;
  While not QueryBrand.Eof do
  begin
     edtBrand.Properties.Items.Add(QueryBrand.Fields[0].AsString);
     QueryBrand.Next;
  end;
end;

procedure TAddArtikel_T.edtColorKurzPropertiesChange(Sender: TObject);
begin
  edtColorLang.EditValue := edtColorKurz.EditValue;
  edtColorName.EditValue := edtColorKurz.EditValue;
end;

procedure TAddArtikel_T.edtColorLangPropertiesChange(Sender: TObject);
begin
  edtColorKurz.EditValue := edtColorLang.EditValue;
  edtColorName.EditValue := edtColorLang.EditValue;
end;

procedure TAddArtikel_T.edtColorNamePropertiesChange(Sender: TObject);
begin

  edtColorKurz.EditValue := edtColorLang.EditValue;
  edtColorLang.EditValue := edtColorName.EditValue;
end;

procedure TAddArtikel_T.edtColorRefresh;
begin
  QueryColor.close;
  QueryColor.Open;
//  edtColorName.Properties.Items.Clear;
//  edtColorLang.Properties.Items.Clear;
//  edtColorKurz.Properties.Items.Clear;
//  While not QueryColor.Eof do
//  begin
//     edtColorName.Properties.Items.Add(QueryColor.FieldByName('ColorName').AsString);
//     edtColorLang.Properties.Items.Add(QueryColor.FieldByName('ColorLang').AsString);
//     edtColorKurz.Properties.Items.Add(QueryColor.FieldByName('ColorKurz').AsString);
//     QueryColor.Next;
//  end;
end;

procedure TAddArtikel_T.FormShow(Sender: TObject);
begin
  SuchenRefresh();

  edtBrandRefresh() ;
  edtColorRefresh();
end;

procedure TAddArtikel_T.RefreshGridClick(Sender: TObject);
begin
  SuchenRefresh();
  edtBrandRefresh();
end;

procedure TAddArtikel_T.SuchenRefresh;
begin
  SuchenQ.Active := false;
  SuchenQ.Active := true;;
end;

end.
