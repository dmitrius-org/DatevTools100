unit DlgForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, dxGDIPlusClasses, cxImage, System.ImageList, Vcl.ImgList,
  cxImageList;

type
  TdlgFrm = class(TForm)
    DlgForm: TLabel;
    btnOk: TcxButton;
    cxImageList1: TcxImageList;
    cxImage1: TcxImage;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgFrm: TdlgFrm;

implementation

{$R *.dfm}

procedure TdlgFrm.btnOkClick(Sender: TObject);
begin
  Close;
end;

end.
