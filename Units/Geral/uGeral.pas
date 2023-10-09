unit uGeral;

interface

uses

  System.Classes, Vcl.Forms, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Vcl.ExtCtrls, System.StrUtils,
  System.SysUtils, Vcl.StdCtrls, PanelVisao, Vcl.Buttons,Vcl.Controls,
  Vcl.Graphics,Vcl.Dialogs;

  procedure CriarForm(InstanceClass: TComponentClass; var Reference;
    pTitulo:String;pCentralizar,pModal:Boolean;pPainelIniciar:TPanel);

implementation

procedure CriarForm(InstanceClass: TComponentClass; var Reference;
  pTitulo:String;pCentralizar,pModal:Boolean;pPainelIniciar:TPanel);
var
  x:Integer;
  vImagem:TImage;
  vLabel:TLabel;
  procedure ConverteBitMap(pIcone:TIcon;vImage:TImage);
  var
    Pic : TPicture;
  begin
    Pic             :=  TPicture.Create;
    Pic.Icon        :=  pIcone;
    vImage.Picture  :=  Pic;
  end;
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
  if (pPainelIniciar <> nil) then
  begin
    vImagem         :=  TImage.Create(pPainelIniciar);
    vImagem.Parent  :=  pPainelIniciar;
    vImagem.Align   :=  alNone;
    vImagem.Stretch :=  True;
    vImagem.Width   :=  32;
    vImagem.Center  :=  True;
    ConverteBitMap(TForm(Reference).Icon,vImagem);
    vLabel          :=  TLabel.Create(pPainelIniciar);
    vLabel.Parent   :=  pPainelIniciar;
    vLabel.Align    :=  alLeft;
    vLabel.Caption  :=  pTitulo;
    vLabel.Layout   :=  tlCenter;
    vImagem.Align   :=  alLeft;
  end;
  if pModal then
    TForm(Reference).ShowModal
  else
    TForm(Reference).Show;

  FreeAndNil(vImagem);
  FreeAndNil(vLabel);
end;

end.
