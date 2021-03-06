unit untTelaLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Edit,
  FMX.Controls.Presentation, FMX.Ani, FMX.Objects, FMX.Layouts;

type
  TfrmTelaLogin = class(TForm)
    lblCPFCNPJ: TLabel;
    edtCPFCNPJ: TEdit;
    lblSenha: TLabel;
    edtSenha: TEdit;
    lblLembrarCPFCNPJ: TLabel;
    swithSalvaCPFCNPJ: TSwitch;
    btnContinuar: TCornerButton;
    lblErroLogin: TLabel;
    Layout1: TLayout;
    imgFundo: TImage;
    procedure btnContinuarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ExibirTelaPrincipal;
    procedure ExibirErroLogin(bExibir: boolean);
    function LoginRealizadoComSucesso: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaLogin: TfrmTelaLogin;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

uses untTelaPrincipal;

procedure TfrmTelaLogin.btnContinuarClick(Sender: TObject);
begin
  ExibirErroLogin(False);
  if LoginRealizadoComSucesso then
  begin
    ExibirTelaPrincipal;
    Self.Close;
  end
  else
  begin
    ExibirErroLogin(True);
  end;
end;

function TfrmTelaLogin.LoginRealizadoComSucesso: boolean;
begin
  result := (edtCPFCNPJ.Text = '123') and (edtSenha.Text = '123');
end;

procedure TfrmTelaLogin.ExibirTelaPrincipal;
var
  lfrmTelaPrincipal: TfrmTelaPrincipal;
begin
  lfrmTelaPrincipal := TfrmTelaPrincipal.Create(nil);
  lfrmTelaPrincipal.Show;
end;

procedure TfrmTelaLogin.FormShow(Sender: TObject);
begin
  ExibirErroLogin(False);
end;

procedure TfrmTelaLogin.ExibirErroLogin(bExibir: boolean);
begin
  lblErroLogin.Visible := bExibir;
end;

end.
