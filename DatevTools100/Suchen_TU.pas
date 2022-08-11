unit Suchen_TU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, Vcl.Menus, cxTextEdit, cxMaskEdit, cxButtonEdit,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLabel, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.ImageList, Vcl.ImgList, cxImageList,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSuchen_T = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    SuchenGrid: TcxGrid;
    SuchenView: TcxGridDBTableView;
    SuchenViewIntArtNummer: TcxGridDBColumn;
    SuchenViewArtikelname: TcxGridDBColumn;
    SuchenViewArtikelnummer: TcxGridDBColumn;
    SuchenViewEAN: TcxGridDBColumn;
    SuchenViewASIN: TcxGridDBColumn;
    SuchenViewLagerbetand: TcxGridDBColumn;
    SuchenLevel: TcxGridLevel;
    Panel2: TPanel;
    btnFind: TcxButton;
    edtArtNum: TcxButtonEdit;
    lblArtikelname: TcxLabel;
    lblEAN: TcxLabel;
    edtEAN: TcxButtonEdit;
    SuchenQ: TFDQuery;
    SuchenQIntArtNummer: TFDAutoIncField;
    SuchenQArtikelname: TStringField;
    SuchenQArtikelnummer: TStringField;
    SuchenQEAN: TStringField;
    SuchenQASIN: TStringField;
    SuchenQLagerbetand: TFMTBCDField;
    SuchenDS: TDataSource;
    cxImageList: TcxImageList;
    Query: TFDQuery;
    procedure btnFindClick(Sender: TObject);
    procedure edtArtNumKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SuchenViewEditDblClick(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure edtArtNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SuchenLoad();
  end;

var
  Suchen_T: TSuchen_T;

implementation

uses
  mainform, EingabeErr_TU, dm, CommonUtilsU;

{$R *.dfm}

procedure TSuchen_T.btnFindClick(Sender: TObject);
begin
 SuchenLoad();
end;

procedure TSuchen_T.edtArtNumKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (AnsiChar(Key) in [#13]) then btnFindClick(Sender);
end;

procedure TSuchen_T.edtArtNumPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if (Sender is TcxButtonEdit) then (Sender as TcxButtonEdit).Clear;
end;

procedure TSuchen_T.SuchenLoad;
begin
  if ((edtArtNum.text <> '') or (edtEAN.text <> '')) then

  if DataModule1.FDConnection.Connected then
  begin
    mainfrm.SetConnectedStatus();
    mainfrm.ActivityIndicator(true);
    SuchenQ.Close;
    SuchenQ.ParamByName('ArtNum').Value := edtArtNum.text;
    SuchenQ.ParamByName('ean').Value := edtEAN.text;
//    SuchenQ.ResourceOptions.CmdExecMode := amAsync;
    SuchenQ.Open;

//    while SuchenQ.Command.State = csExecuting do
//    begin
//      application.ProcessMessages;
//    end;
    mainfrm.ActivityIndicator(false);
  end
  else
  begin
    if (TConnectionParam.IsReadParam) then
    begin
      if DataModule1.DbConnect(TConnectionParam.Server, TConnectionParam.Base, TConnectionParam.User, TConnectionParam.Password) then
      begin
        SuchenLoad();
      end;
    end
    else
    MessageDlg('Datenbankverbindung konnte nicht hergestellt werden.' + #13#10 + #13#10 + 'Bitte prüfen Sie Verbindung zur Datenbank',  mtWarning, [mbOK], 0);
  end;
end;

procedure TSuchen_T.SuchenViewEditDblClick(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
begin
    EingabeErr_T := TEingabeErr_T.Create(nil);
    EingabeErr_T.kArtikel:=SuchenQ.FieldByName('IntArtNummer').Value;
    EingabeErr_T.EAN:=SuchenQ.FieldByName('EAN').Value;
    EingabeErr_T.DlgType :=1;
    EingabeErr_T.ShowModal;
    EingabeErr_T.Free;
end;

end.
