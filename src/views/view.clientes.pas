unit view.clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.WinXPanels, Vcl.Buttons, service.cadastro, service.conexao, Vcl.Mask,
  Vcl.DBCtrls, Provider.constants, view.mensagens;

type
  TViewClientes = class(TViewBaseListas)
    Label2: TLabel;
    Label1: TLabel;
    Image1: TImage;
    Label3: TLabel;
    Panel1: TPanel;
    LabelCadastro: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

procedure TViewClientes.BtnCancelarClick(Sender: TObject);
begin     //CANCELAR
  inherited;
    if ServiceCadastro.QRY_pessoas.State in dsEditModes then
      ServiceCadastro.QRY_pessoas.Cancel;
    CardPanel_Lista.ActiveCard := card_pesquisa;
end;

procedure TViewClientes.BtnEditarClick(Sender: TObject);
begin    //EDITAR
  inherited;
     CardPanel_Lista.ActiveCard := Card_cadastro;
     DBEdit3.SetFocus;
     servicecadastro.QRY_pessoas.Edit;
end;

procedure TViewClientes.BtnExcluirClick(Sender: TObject);
begin      //EXCLUIR
  inherited;
   {if ServiceCadastro.QRY_pessoas.RecordCount > 0 then
     begin
       ServiceCadastro.QRY_pessoas.Delete;
       ShowMessage('Cliente deletado com sucesso.');
       CardPanel_Lista.ActiveCard := card_pesquisa;
     end;  }
end;

procedure TViewClientes.BtnNovoClick(Sender: TObject);
begin     //NOVO
  inherited;
  { CardPanel_Lista.ActiveCard := Card_cadastro;
   DBEdit3.SetFocus;
   servicecadastro.QRY_pessoas.Insert; }
end;

procedure TViewClientes.BtnSalvarClick(Sender: TObject);
begin  //SALVAR
  inherited;
   if servicecadastro.QRY_pessoas.State in DSEditModes then
   begin
     servicecadastro.QRY_pessoasPES_TIPOPESSOA.AsInteger := 1;
     servicecadastro.QRY_pessoas.Post;
     TViewMensagens.Mensagens('Cliente salvo com sucesso.', '[ SALVO ]','I',[mbOk]);
     CardPanel_Lista.ActiveCard := Card_pesquisa;
   end;
end;

procedure TViewClientes.FormShow(Sender: TObject);
begin //show
  inherited;
   GET_Pessoas(1);
end;



end.
