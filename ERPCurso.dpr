program ERPCurso;

uses
  Vcl.Forms,
  view.principal in 'src\views\view.principal.pas' {ViewPrincipal},
  service.conexao in 'src\services\service.conexao.pas' {ServiceConexao: TDataModule},
  service.cadastro in 'src\services\service.cadastro.pas' {DataModule1: TDataModule},
  Provider.constants in 'src\providers\Provider.constants.pas',
  view.base in 'src\views\view.base.pas' {ViewBase},
  view.base.listas in 'src\views\view.base.listas.pas' {ViewBaseListas},
  view.clientes in 'src\views\view.clientes.pas' {ViewClientes},
  view.fornecedores in 'src\views\view.fornecedores.pas' {ViewFornecedores},
  view.produtos in 'src\views\view.produtos.pas' {ViewProdutos},
  view.mensagens in 'src\views\view.mensagens.pas' {ViewMensagens},
  view.fundo in 'src\views\view.fundo.pas' {ViewFundo},
  view.funcionarios in 'src\views\view.funcionarios.pas' {ViewFuncionarios},
  view.vendas in 'src\views\view.vendas.pas' {ViewVendas},
  view.formapgto in 'src\views\view.formapgto.pas' {Viewformapgto},
  view.caixa in 'src\views\view.caixa.pas' {ViewCaixa},
  view.receber in 'src\views\view.receber.pas' {ViewReceber};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.CreateForm(TViewBaseListas, ViewBaseListas);
  Application.CreateForm(TViewClientes, ViewClientes);
  Application.CreateForm(TViewFornecedores, ViewFornecedores);
  Application.CreateForm(TViewProdutos, ViewProdutos);
  Application.CreateForm(TViewMensagens, ViewMensagens);
  Application.CreateForm(TViewFundo, ViewFundo);
  Application.CreateForm(TViewFuncionarios, ViewFuncionarios);
  Application.CreateForm(TViewVendas, ViewVendas);
  Application.CreateForm(TViewformapgto, Viewformapgto);
  Application.CreateForm(TViewCaixa, ViewCaixa);
  Application.CreateForm(TViewReceber, ViewReceber);
  Application.Run;
end.
