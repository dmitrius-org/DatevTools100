unit ParentAsinPrice_FU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxCurrencyEdit, cxTextEdit;

type
  TParentAsinPrice_F = class(TForm)
    cxTextEdit1: TcxTextEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ParentAsinPrice_F: TParentAsinPrice_F;

implementation

{$R *.dfm}

end.
