unit DlgMemo_FU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMemo, Vcl.ExtCtrls;

type
  TDlgMemo_F = class(TForm)
    Panel1: TPanel;
    Editor: TcxMemo;
    btnOk: TcxButton;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  DlgMemo_F: TDlgMemo_F;

implementation

{$R *.dfm}

{ TDlgMemo_F }

procedure TDlgMemo_F.btnOkClick(Sender: TObject);
begin
//  FText:=Editor.Text;
 // ModalResult:=mrOk;
  //Close;
end;

end.
