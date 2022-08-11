program DatevTools100;





{$R *.dres}

uses
  Vcl.Forms,
  SqlListU in 'Common\DataBase\SqlListU.pas',
  DataBaseU in 'Common\DataBase\DataBaseU.pas',
  ExportQueryU in 'ExportQueryU.pas',
  FileU in 'FileU.pas',
  DlgForm in 'Common\DlgForm.pas' {dlgFrm},
  dm in 'dm.pas' {DataModule1: TDataModule},
  CommonUtilsU in 'CommonUtilsU.pas',
  adFile in 'Common\adFile.pas',
  adAppUtils in 'Common\adAppUtils.pas',
  mainform in 'mainform.pas' {mainfrm},
  Settlementpos_TU in 'Settlementpos_TU.pas' {Settlementpos_T},
  Lagerbestand_TU in 'Lagerbestand_TU.pas' {Lagerbestand_T},
  EingabeErr_TU in 'EingabeErr_TU.pas' {EingabeErr_T},
  AddArtikel_TU in 'AddArtikel_TU.pas' {AddArtikel_T},
  DlgMemo_FU in 'Common\DlgMemo_FU.pas' {DlgMemo_F},
  Suchen_TU in 'Suchen_TU.pas' {Suchen_T},
  Brand_TU in 'Brand_TU.pas' {Brand_T},
  Color_TU in 'Color_TU.pas' {Color_T},
  Wareneingang_TU in 'Wareneingang_TU.pas' {Wareneingang_T},
  ParentAsinPrice_FU in 'ParentAsinPrice_FU.pas' {ParentAsinPrice_F},
  adString in 'Common\adString.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'DatevTools';
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tmainfrm, mainfrm);
  Application.CreateForm(TBrand_T, Brand_T);
  Application.CreateForm(TColor_T, Color_T);
  Application.CreateForm(TParentAsinPrice_F, ParentAsinPrice_F);
  // Application.CreateForm(TWareneingang_T, Wareneingang_T);
  Application.Run;
end.
