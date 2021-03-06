program SafraDreams2;

uses
  System.StartUpCopy,
  FMX.Forms,
  untTelaInicial in 'untTelaInicial.pas' {frmTelaInicial},
  untTelaCadastroChatBot in 'untTelaCadastroChatBot.pas' {frmTelaCadastroChatBot},
  untTelaPrincipal in 'untTelaPrincipal.pas' {frmTelaPrincipal},
  untIntegracaoAPIClass in 'untIntegracaoAPIClass.pas',
  untDataModule in 'untDataModule.pas' {dataModuleGeral: TDataModule},
  untTelaLogin in 'untTelaLogin.pas' {frmTelaLogin},
  untTelaVisualizarSonho in 'untTelaVisualizarSonho.pas' {frmTelaVisualizarSonho},
  untTelaCriarSonho in 'untTelaCriarSonho.pas' {frmTelaCriarSonho},
  untTelaConvidarDreamer in 'untTelaConvidarDreamer.pas' {frmTelaConvidarDreamer},
  untMockBaseClass in 'untMockBaseClass.pas',
  untConexaoBaseClass in 'untConexaoBaseClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdataModuleGeral, dataModuleGeral);
  Application.CreateForm(TfrmTelaInicial, frmTelaInicial);
  Application.Run;
end.
