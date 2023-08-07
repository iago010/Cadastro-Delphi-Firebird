unit service.cadastro;

interface

uses
  System.SysUtils, System.Classes, service.conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Provider.constants;

type
  TServiceCadastro = class(TDataModule)
    QRY_pessoas: TFDQuery;
    QRY_pessoasPES_CODIGO: TIntegerField;
    QRY_pessoasPES_RAZAO: TStringField;
    QRY_pessoasPES_FANTASIA: TStringField;
    QRY_pessoasPES_TELEFONE: TStringField;
    QRY_pessoasPES_CPFCNPJ: TStringField;
    QRY_pessoasPES_IERG: TStringField;
    QRY_pessoasPES_OBSERVACAO: TStringField;
    QRY_pessoasPES_TIPOPESSOA: TIntegerField;
    QRY_endereco: TFDQuery;
    QRY_enderecoEND_CODIGO: TIntegerField;
    QRY_enderecoEND_PESSOA: TIntegerField;
    QRY_enderecoEND_CEP: TStringField;
    QRY_enderecoEND_CIDADE: TStringField;
    QRY_enderecoEND_ENDERECO: TStringField;
    QRY_enderecoEND_BAIRRO: TStringField;
    QRY_enderecoEND_OBSERVACAO: TStringField;
    QRY_produto1: TFDQuery;
    QRY_produto2: TFDQuery;
    QRY_produto1PR1_CODIGO: TIntegerField;
    QRY_produto1PR1_NOMECOMPLETO: TStringField;
    QRY_produto1PR1_NOMEPOPULAR: TStringField;
    QRY_produto1PR1_CODIGOBARRA: TStringField;
    QRY_produto1PR1_REFERENCIA: TStringField;
    QRY_produto1PR1_GRUPO: TIntegerField;
    QRY_produto1PR1_SUBGRUPO: TIntegerField;
    QRY_produto2PR2_CODIGO: TIntegerField;
    QRY_produto2PR2_CODIGOPR1: TIntegerField;
    QRY_produto2PR2_FILIAL: TIntegerField;
    QRY_produto2PR2_CUSTOINI: TFMTBCDField;
    QRY_produto2PR2_VENDAVISTA: TFMTBCDField;
    QRY_produto2PR2_VENDAPRAZO: TFMTBCDField;
    QRY_produto2PR2_SITRIBUTARIA: TIntegerField;
    QRY_produto1PR1_NCM: TIntegerField;
    QRY_produto2PR2_ESTOQUE: TFMTBCDField;
    QRY_movestoqueitem: TFDQuery;
    QRY_movestoque: TFDQuery;
    QRY_movestoqueMOV_CODIGO: TIntegerField;
    QRY_movestoqueMOV_TIPOESTOQUE: TIntegerField;
    QRY_movestoqueMOV_DATA: TDateField;
    QRY_movestoqueMOV_HORA: TTimeField;
    QRY_movestoqueMOV_VLRDESCONTO: TFMTBCDField;
    QRY_movestoqueMOV_VLRTOTAL: TFMTBCDField;
    QRY_movestoqueitemMVI_CODIGO: TIntegerField;
    QRY_movestoqueitemMVI_CODIGOMOVESTOQUE: TIntegerField;
    QRY_movestoqueitemMVI_CODITEM: TIntegerField;
    QRY_movestoqueitemMVI_QUANTIDADE: TFMTBCDField;
    QRY_movestoqueitemMVI_VLRUNITARIO: TFMTBCDField;
    QRY_movestoqueitemMVI_VLRTOTAL: TFMTBCDField;
    QRY_movestoqueitemMVI_VLRDESCONTO: TFMTBCDField;
    QRY_movestoqueMOV_VENDEDOR: TIntegerField;
    QRY_cadCaixa: TFDQuery;
    QRY_cadCaixaCAI_CODIGO: TIntegerField;
    QRY_cadCaixaCAI_DATAHORA: TSQLTimeStampField;
    QRY_cadCaixaCAI_TIPO: TStringField;
    QRY_cadCaixaCAI_VALOR: TIntegerField;
    QRY_cadCaixaCAI_DESCRICAO: TStringField;
    QRY_formasPGTO: TFDQuery;
    QRY_formasPGTOFOR_CODIGO: TIntegerField;
    QRY_formasPGTODESCRICAO: TStringField;
    QRY_cadCaixaCAI_IDFORMAPGTO: TIntegerField;
    QRY_cadCaixaCAI_IDVENDA: TIntegerField;
    QRY_cadCaixaDESCRICAO: TStringField;
    QRY_formasPGTOFOR_GERARECEBER: TStringField;
    QRY_receber1: TFDQuery;
    QRY_receber2: TFDQuery;
    QRY_receber1RC1_CODIGO: TIntegerField;
    QRY_receber1RC1_NUMDOCTO: TStringField;
    QRY_receber1RC1_CLIENTE: TIntegerField;
    QRY_receber1RC1_VALOR: TFMTBCDField;
    QRY_receber2RC2_CODIGO: TIntegerField;
    QRY_receber2RC2_NUMDOCTO: TStringField;
    QRY_receber2RC2_DATA: TDateField;
    QRY_receber2RC2_VALORPARCELA: TFMTBCDField;
    QRY_receber2RC2_PARCELA: TStringField;
    QRY_receber2RC2_VENCIMENTO: TDateField;
    QRY_receber2RC2_VALORHAVER: TFMTBCDField;
    QRY_receber2RC2_VALORSALDO: TFMTBCDField;
    QRY_movestoqueMOV_CLIENTE: TIntegerField;
    procedure QRY_produto1AfterScroll(DataSet: TDataSet);
    procedure QRY_movestoqueAfterScroll(DataSet: TDataSet);
    procedure QRY_receber1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceCadastro.QRY_movestoqueAfterScroll(DataSet: TDataSet);

   begin    //pegando os itens da venda
 GET_VendaItem(QRY_movestoqueMOV_CODIGO.AsInteger);
end;

procedure TServiceCadastro.QRY_produto1AfterScroll(DataSet: TDataSet);
begin //pegando os detalhes dos produtos
  GET_Produtos_detalhes(ServiceCadastro.QRY_produto1PR1_CODIGO.AsInteger, iCOD_FILIAL);
end;





procedure TServiceCadastro.QRY_receber1AfterScroll(DataSet: TDataSet);
begin
  GET_receber_parcelas(ServiceCadastro.QRY_receber1RC1_NUMDOCTO.AsString);
end;

end.
