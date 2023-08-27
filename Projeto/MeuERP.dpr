program MeuERP;

uses
  Vcl.Forms,
  uFormBase in '..\Units\Base\uFormBase.pas' {frmBase},
  uPrincipal in '..\Units\Principal\uPrincipal.pas' {frmPrincipal},
  uGeral in '..\Units\Geral\uGeral.pas',
  uCadParceiros in '..\Units\Cadastros\uCadParceiros.pas' {frmCadastros};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmBase, frmBase);
  Application.CreateForm(TfrmCadastros, frmCadastros);
  Application.Run;
end.
