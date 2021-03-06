unit untTelaConvidarDreamer;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.ImageList, FMX.ImgList,
  FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation;

type
  TfrmTelaConvidarDreamer = class(TForm)
    ImageList1: TImageList;
    Label1: TLabel;
    edtCPFCNPJ: TEdit;
    ToolBar1: TToolBar;
    lblSonhoNome: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    function GetLabelNomeSonho: string;
    procedure SetLabelNomeSonho(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property lblNomeSonho: string read GetLabelNomeSonho write SetLabelNomeSonho;
  end;

var
  frmTelaConvidarDreamer: TfrmTelaConvidarDreamer;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

{ TfrmTelaConvidarDreamer }

function TfrmTelaConvidarDreamer.GetLabelNomeSonho: string;
begin
  Result := lblSonhoNome.Text.Trim;
end;

procedure TfrmTelaConvidarDreamer.SetLabelNomeSonho(const Value: string);
begin
  lblSonhoNome.Text := Value;
end;

procedure TfrmTelaConvidarDreamer.SpeedButton1Click(Sender: TObject);
begin
  if edtCPFCNPJ.Text.Trim <> EmptyStr then
  begin
    ShowMessage('Convite enviado!');
  end;
end;

procedure TfrmTelaConvidarDreamer.SpeedButton2Click(Sender: TObject);
begin
  Self.Close;
end;

end.
