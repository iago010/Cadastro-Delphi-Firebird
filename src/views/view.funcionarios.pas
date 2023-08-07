unit view.funcionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.WinXPanels, Vcl.Buttons, service.cadastro, service.conexao, Vcl.Mask,
  Vcl.DBCtrls, view.mensagens, Provider.constants, Datasnap.DBClient,
  IBX.IBCustomDataSet, IBX.IBQuery, Datasnap.Provider;

type
  TViewFuncionarios = class(TViewBaseListas)
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    Panel1: TPanel;
    LabelCadastro: TLabel;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFuncionarios: TViewFuncionarios;

implementation

{$R *.dfm}

procedure TViewFuncionarios.BtnCancelarClick(Sender: TObject);
begin
  inherited;
     if ServiceCadastro.QRY_pessoas.State in dsEditModes then
      ServiceCadastro.QRY_pessoas.Cancel;
    CardPanel_Lista.ActiveCard := card_pesquisa;
end;

procedure TViewFuncionarios.BtnEditarClick(Sender: TObject);
begin
  inherited;
     CardPanel_Lista.ActiveCard := Card_cadastro;
     DBEdit3.SetFocus;
     servicecadastro.QRY_pessoas.Edit;
end;

procedure TViewFuncionarios.BtnSalvarClick(Sender: TObject);
begin
  inherited;
     if servicecadastro.QRY_pessoas.State in DSEditModes then
   begin
     servicecadastro.QRY_pessoasPES_TIPOPESSOA.AsInteger := 3;
     servicecadastro.QRY_pessoas.Post;
     TViewMensagens.Mensagens('Funcionário salvo com sucesso.', '[ SALVO ]','I',[mbOk]);
     CardPanel_Lista.ActiveCard := Card_pesquisa;
   end;
end;

procedure TViewFuncionarios.FormShow(Sender: TObject);
begin
  inherited;
   GET_Pessoas(3);

end;

end.
