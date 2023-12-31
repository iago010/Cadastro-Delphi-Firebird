unit view.formapgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, service.cadastro, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Provider.constants, view.mensagens;

type
  TViewformapgto = class(TViewBase)
    Panel2: TPanel;
    Label11: TLabel;
    Panel3: TPanel;
    Image2: TImage;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    PanelRodape: TPanel;
    BtnSalvar: TSpeedButton;
    pnlFPagamentos: TPanel;
    PnlinfoPGTO: TPanel;
    DBG_dados: TDBGrid;
    DsFPagamentos: TDataSource;
    PanelTituloPesquisa: TPanel;
    DBG_formasPagamentos: TDBGrid;
    TBL_formasPGTO: TFDMemTable;
    TBL_formasPGTOid_formapgto: TIntegerField;
    TBL_formasPGTOvalor_pgto: TCurrencyField;
    DsFPagamentosEscolhidos: TDataSource;
    TBL_formasPGTOnome_formapagamento: TStringField;
    LabelValorVenda: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PnlValor: TPanel;
    BtnOk: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    PanelAmerelinho3: TPanel;
    EdtVlrFaturar: TEdit;
    EdtValorVenda: TEdit;
    EdtVlrFaturado: TEdit;
    EdtVlrRestante: TEdit;
    TBL_formasPGTOgerar_receber: TStringField;
    TBL_formasPGTOid_cliente: TIntegerField;
    TBL_formasPGTOid_numdocto: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure DBG_dadosDblClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
  private
    FValorVenda: Double;
    { Private declarations }
  public
    property ValorVenda: Double read FValorVenda write FValorVenda;
  end;

var
  Viewformapgto: TViewformapgto;

implementation

{$R *.dfm}

procedure TViewformapgto.BtnOkClick(Sender: TObject);
var
  valor_faturado, valor_restante: double;
begin   //salvar temporariamente forma de pagamento
  inherited;
  TBL_formasPGTO.Open;
  TBL_formasPGTO.Insert;
  TBL_formasPGTOid_formapgto.AsInteger := ServiceCadastro.QRY_formasPGTOFOR_CODIGO.AsInteger;
  TBL_formasPGTOvalor_pgto.AsFloat := StrToFloatDef(EdtVlrFaturar.text, 0);
  TBL_formasPGTOnome_formapagamento.AsString := ServiceCadastro.QRY_formasPGTODESCRICAO.AsString;
  TBL_formasPGTOgerar_receber.AsString := ServiceCadastro.QRY_formasPGTOFOR_GERARECEBER.AsString;
  TBL_formasPGTOid_cliente.AsInteger := ServiceCadastro.QRY_movestoqueMOV_CLIENTE.AsInteger;

  TBL_formasPGTOid_numdocto.AsString := IntToStr(ServiceCadastro.QRY_movestoqueMOV_CODIGO.AsInteger);

  TBL_formasPGTO.Post;

  //calculando a diferen�a
  valor_faturado := StrToFloatDef(edtVlrFaturar.Text, 0);
  EdtVlrFaturado.text := FloatToStr(valor_faturado + StrToFloatDef(EdtVlrFaturado.text, 0));

  valor_restante := FValorVenda - StrToFloatDef(edtVlrFaturar.text, 0);
  EdtVlrRestante.text := FloatToStr(valor_restante);



  EdtVlrFaturar.Clear;
  PnlValor.Visible := False;
  DBG_dados.SetFocus;


end;

procedure TViewformapgto.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  TBL_formasPGTO.First;
  while not TBL_formasPGTO.Eof do
  begin
   ///// put caixa
    PUT_caixa('E', 'VENDA N. ' + IntToStr
    (ServiceCadastro.QRY_movestoqueMOV_CODIGO.AsInteger),
    TBL_formasPGTOvalor_pgto.AsFloat,
    TBL_formasPGTOid_formapgto.AsInteger,
    ServiceCadastro.QRY_movestoqueMOV_CODIGO.AsInteger);

    //gravando receber
    if TBL_formasPGTOgerar_receber.AsString = 'S' then
    begin
      PUT_receber(TBL_formasPGTOid_numdocto.AsString,
                  TBL_formasPGTOid_cliente.AsInteger,
                  TBL_formasPGTOvalor_pgto.AsFloat);
    end;

   /////// put caixa
    TBL_formasPGTO.Next;
  end;
  TViewMensagens.Mensagens('Venda salva com sucesso.', '[ SALVO ]','I',[mbOk]);
  Self.Close;
end;

procedure TViewformapgto.DBG_dadosDblClick(Sender: TObject);
begin    // clique duplo na forma de pagamento
  inherited;
  if StrToFloatDef(edtVlrRestante.Text, 0) > 0 then
  begin
    PnlValor.Visible := True;
    EdtVlrFaturar.text := EdtVlrRestante.text;
    EdtVlrFaturar.SetFocus;
  end
  else begin
    TViewMensagens.Mensagens('N�o h� mais valor para faturar.', '[ ATEN��O ]','I',[mbOk]);
  end;
end;

procedure TViewformapgto.FormShow(Sender: TObject);
begin
  inherited;
  ServiceCadastro.QRY_formaspgto.Close;
  ServiceCadastro.QRY_formaspgto.Open();
  EdtValorVenda.text := FloatToStr(FValorVenda);
  EdtVlrRestante.text := FloatToStr(FValorVenda);
end;

procedure TViewformapgto.SpeedButton1Click(Sender: TObject);
begin
  Self.Close;

end;

end.
