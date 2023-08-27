unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadParceiros, uGeral;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  CriarForm(TfrmCadastros,frmCadastros,'CadTeste',True);
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  Caption     :=  Application.Title;
  WindowState :=  TWindowState.wsMaximized;
end;

end.