unit view.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXPanels, Vcl.WinXCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Provider.constants, service.cadastro, service.conexao,
  view.mensagens, Datasnap.DBClient, IBX.IBCustomDataSet, IBX.IBQuery,
  Datasnap.Provider;

type
  TViewBaseListas = class(TViewBase)
    PanelTopo: TPanel;
    PanelRodape: TPanel;
    PanelIcone: TPanel;
    ImageIcone: TImage;
    PanelFechar: TPanel;
    SpeedButtonSair: TSpeedButton;
    LabelTitulo: TLabel;
    BtnNovo: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnCancelar: TSpeedButton;
    BtnSalvar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    CardPanel_Lista: TCardPanel;
    PanelLinhadefundo: TPanel;
    Card_pesquisa: TCard;
    Card_cadastro: TCard;
    PanelTituloPesquisa: TPanel;
    LabelTituloPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    DBG_dados: TDBGrid;
    DSDados: TDataSource;
    Panel2: TPanel;
    Label11: TLabel;
    Panel3: TPanel;
    Image2: TImage;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    BtnSelecionar: TSpeedButton;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    procedure SpeedButtonSairClick(Sender: TObject);
    procedure PanelTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LabelTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure DBG_dadosDblClick(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure DSDadosStateChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.BtnCancelarClick(Sender: TObject);
begin
  inherited;
    if dsDados.DataSet.State in dsEditModes then
      dsDados.DataSet.Cancel;
    CardPanel_lista.ActiveCard := card_pesquisa;

end;

procedure TViewBaseListas.BtnEditarClick(Sender: TObject);
begin   //editar cadastro
  inherited;
    CardPanel_Lista.ActiveCard := card_cadastro;
    dsDados.DataSet.Edit;
end;

procedure TViewBaseListas.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  if TViewMensagens.Mensagens('Tem certeza que deseja excluir os dados selecionados?', '[ EXCLUIR? ]','E',[mbSim, mbNao]) then
  begin
       dsDados.DataSet.Delete;
       TViewMensagens.Mensagens('Dados deletados com sucesso.', '[ EXCLU�DO ]','I',[mbOk]);
       CardPanel_Lista.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewBaseListas.BtnNovoClick(Sender: TObject);
begin     //novo cadastro
  inherited;
    CardPanel_Lista.ActiveCard := card_cadastro;
    dsDados.DataSet.Insert;
end;

procedure TViewBaseListas.BtnSalvarClick(Sender: TObject);
begin
  inherited;
 { if dsDados.DataSet.State in dsEditModes then
  begin
    if Self.Tag > 0 then
     begin
       ServiceCadastro.QRY_pessoasPES_TIPOPESSOA.AsInterger := SelfTag;
       ServiceCadastro.QRY_pessoas.Post;

       case Self.Tag of

          1: begin
            ShowMessage('Cliente salvo com sucesso.');
          end;

          2: begin
            ShowMessage('Fornecedor salvo com sucesso.');
          end;

          3: begin
            ShowMessage('Funcion�rio salvo com sucesso.');
          end;

       end;

     end;
     else begin
          dsDados.DataSet.Post;
          ShowMessage('Dados salvos com sucesso.');
     end;
     CardPanel_lista.ActiveCard := card_pesquisa;;
  end;   }
end;

procedure TViewBaseListas.BtnSelecionarClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewBaseListas.DBG_dadosDblClick(Sender: TObject);
begin  //clique duplo na grid
  inherited;
    btnEditar.Click;
end;

procedure TViewBaseListas.DSDadosStateChange(Sender: TObject);
begin
  inherited;
  //status dos botoes
  btnNovo.Enabled     := not (dsDados.State in [dsInsert, dsEdit]);
  btnEditar.Enabled   := btnNovo.Enabled and (dsDados.DataSet.RecordCount > 0);
  btnSalvar.Enabled   := dsDados.State in [dsInsert, dsEdit];
  btnCancelar.Enabled := btnSalvar.Enabled;
  btnExcluir.Enabled  := btnEditar.Enabled;
end;



procedure TViewBaseListas.FormShow(Sender: TObject);
begin
  inherited;
  CardPanel_Lista.ActiveCard := card_pesquisa;  //show o card na parte da pesquisa
  //GET_pessoas(Self.Tag);
  dsDados.DataSet.Open;
end;

procedure TViewBaseListas.LabelTituloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const  //mover a janela que nao tem barra
  sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TViewBaseListas.PanelTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const  //mover a janela que nao tem barra
  sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TViewBaseListas.SpeedButtonSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

end.
