unit TipoConexao;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, Graphics,
  Data.Win.ADODB, Variants, Grids, DBGrids, DB;

type
  TModulo = (Basico, Medio, Completo);
  TSegmento = (Comercio, Consultorio, Restaurante);
  TParceiro = (Proprio, Terceiros);
  TSistema = (ERP, DashBoard, NFCe, NFCeBina, Manifesto, OrdemServico, Financeiro, Boleto, DocumentoFiscal);
  TDesenvolvimento = (Producao, Homologacao);

  TModuleSys = class(TComponent)
  private
    { Private declarations }
    FModuloSistema: TModulo;
    FSegmentoSistema: TSegmento;
    FParceiro: TParceiro;
    FSistema: TSistema;
    FDesenvolvimento: TDesenvolvimento;
    procedure SetModuloSistema(const Value: TModulo);
    procedure SetSegmentoSistema(const Value: TSegmento);
    procedure SetParceiro(const Value: TParceiro);
    procedure SetSistema(const Value: TSistema);
    procedure SetDesenvolvimento(const Value: TDesenvolvimento);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(Aowner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property ModuloSistema: TModulo read FModuloSistema write SetModuloSistema;
    property SegmentoSistema: TSegmento read FSegmentoSistema
      write SetSegmentoSistema;
    property Parceiro: TParceiro read FParceiro write SetParceiro;
    property Sistema: TSistema read FSistema write SetSistema;
    property Desenvolvimento: TDesenvolvimento read FDesenvolvimento
      write SetDesenvolvimento;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Cod4rD3lphi', [TModuleSys]);
end;

{ TModuloSistema }

constructor TModuleSys.Create(Aowner: TComponent);
begin
  inherited Create(Aowner);
end;

destructor TModuleSys.Destroy;
begin
  inherited;
end;

procedure TModuleSys.SetDesenvolvimento(const Value: TDesenvolvimento);
begin
  FDesenvolvimento := Value;
end;

procedure TModuleSys.SetModuloSistema(const Value: TModulo);
begin
  FModuloSistema := Value;
end;

procedure TModuleSys.SetParceiro(const Value: TParceiro);
begin
  FParceiro := Value;
end;

procedure TModuleSys.SetSegmentoSistema(const Value: TSegmento);
begin
  FSegmentoSistema := Value;
end;

procedure TModuleSys.SetSistema(const Value: TSistema);
begin
  FSistema := Value;
end;

end.


