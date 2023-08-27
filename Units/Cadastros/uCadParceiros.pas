unit uCadParceiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormBase, Vcl.ExtCtrls, PanelVisao;

type
  TfrmCadastros = class(TfrmBase)
    PanelVisao1: TPanelVisao;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastros: TfrmCadastros;

implementation

{$R *.dfm}

procedure TfrmCadastros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCadastros  :=  nil;
end;

end.
