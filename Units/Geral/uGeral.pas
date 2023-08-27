unit uGeral;

interface

uses

  System.Classes, Vcl.Forms, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Vcl.ExtCtrls, System.StrUtils,
  System.SysUtils, Vcl.StdCtrls, PanelVisao;

  procedure CriarForm(InstanceClass: TComponentClass; var Reference;
    pTitulo:String;pCentralizar:Boolean);

implementation

procedure CriarForm(InstanceClass: TComponentClass; var Reference;
  pTitulo:String;pCentralizar:Boolean);
var
  x:Integer;
begin
  Application.CreateForm(InstanceClass,Reference);
  TForm(Reference).Caption  :=  pTitulo;
  if (TForm(Reference).Tag > 0) then
  begin
    for x := 0 to TForm(Reference).ComponentCount - 1 do
    begin
      if (TForm(Reference).Components[x] is TPanelVisao) then
      begin
        if (TPanelVisao(TForm(Reference).Components[x]).Visao > 0) then
          TPanelVisao(TForm(Reference).Components[x]).CriarCampos;
      end;
    end;
  end;
  if pCentralizar then
    TForm(Reference).Position :=  poDesktopCenter;
  TForm(Reference).ShowModal;
end;

end.
