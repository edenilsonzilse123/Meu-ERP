unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.Imaging.jpeg;

type
  TfrmPrincipal = class(TForm)
    ilPrincipal: TImageList;
    actPrin: TActionList;
    Image1: TImage;
    pnlIniciar: TPanel;
    SpeedButton1: TSpeedButton;
    pnlPrograms: TPanel;
    ScrollBox1: TScrollBox;
    SpeedButton2: TSpeedButton;
    actCadParceiro: TAction;
    pnlProgAbertos: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MostraIniciar(pMostrar:Boolean);
    procedure actCadParceiroExecute(Sender: TObject);
    procedure Image1Click(Sender: TObject);
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

procedure TfrmPrincipal.actCadParceiroExecute(Sender: TObject);
begin
  MostraIniciar(False);
  CriarForm(TfrmCadastros,frmCadastros,actCadParceiro.Caption,True,True,pnlProgAbertos);
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  Caption     :=  Application.Title;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  WindowState :=  TWindowState.wsMaximized;
end;

procedure TfrmPrincipal.Image1Click(Sender: TObject);
begin
  MostraIniciar(False);
end;

procedure TfrmPrincipal.MostraIniciar(pMostrar: Boolean);
begin
  if pMostrar then
    pnlPrograms.Top   :=  (pnlIniciar.Top - pnlPrograms.Height);
  pnlPrograms.Visible :=  pMostrar;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  MostraIniciar(not pnlPrograms.Visible);
end;

end.
