unit view.vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.WinXPanels, Vcl.Buttons, Provider.constants, service.conexao,
  service.cadastro, view.produtos, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, view.mensagens,
  view.formapgto, view.fundo, Datasnap.DBClient;

type
  TViewVendas = class(TViewBaseListas)
    Panel1: TPanel;
    LabelCodigo: TLabel;
    SBoxCodigo: TSearchBox;
    LabelVendedor: TLabel;
    Label1: TLabel;
    SBoxProduto: TSearchBox;
    EdtQtd: TEdit;
    Label2: TLabel;
    EdtVlrUnitario: TEdit;
    edtVlrSubTotal: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    BtnSalvarVenda: TSpeedButton;
    DBG_vendas: TDBGrid;
    LabelTotalVenda: TLabel;
    DSitens: TDataSource;
    TBL_itensMemoria: TFDMemTable;
    TBL_itensMemoriacod_movestoque: TIntegerField;
    TBL_itensMemoriaCOD_ITEM: TIntegerField;
    TBL_itensMemoriaQTD_ITEM: TCurrencyField;
    TBL_itensMemoriaVLR_UNITARIO: TCurrencyField;
    TBL_itensMemoriaVLR_DESCONTO: TCurrencyField;
    TBL_itensMemoriaVLR_SUBTOTAL: TCurrencyField;
    procedure SBoxCodigoExit(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure SBoxProdutoInvokeSearch(Sender: TObject);
    procedure EdtQtdExit(Sender: TObject);
    procedure BtnSalvarVendaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure DSDadosStateChange(Sender: TObject);
  private
    procedure GET_SubTotal;
  public
    { Public declarations }
  end;

var
  ViewVendas: TViewVendas;

implementation

{$R *.dfm}

procedure TViewVendas.BtnEditarClick(Sender: TObject);
begin
  inherited;
  LabelTotalVenda.Caption := '[ SUB. TOTAL: '+ (FloatToStrF(TOTAL_VENDA, ffCurrency, 10,2)+' ]');
end;

procedure TViewVendas.BtnNovoClick(Sender: TObject);
begin
  inherited;
  ServiceCadastro.QRY_movestoqueMOV_TIPOESTOQUE.AsInteger := 1; // 1 = venda
  ServiceCadastro.QRY_movestoqueMOV_DATA.AsDateTime := Date;
  ServiceCadastro.QRY_movestoqueMOV_HORA.AsDateTime := Time;
  ServiceCadastro.QRY_movestoqueMOV_CLIENTE.AsInteger := 1;
end;

procedure TViewVendas.BtnSalvarClick(Sender: TObject);
var
  TotalVenda: double;
begin
  inherited;
     //atualiza venda item para recalcular valor
  TotalVenda := 0;
  ServiceCadastro.QRY_movestoqueitem.DisableControls;
  ServiceCadastro.QRY_movestoqueitem.First;
  while not ServiceCadastro.QRY_movestoqueitem.Eof do
  begin
    TotalVenda:= TotalVenda + ServiceCadastro.QRY_movestoqueitemMVI_VLRTOTAL.AsFloat;
    ServiceCadastro.QRY_movestoqueitem.Next;
  end;
  ServiceCadastro.QRY_movestoqueitem.EnableControls;

  ServiceCadastro.QRY_movestoque.Edit;
  ServiceCadastro.QRY_movestoqueMOV_VLRDESCONTO.AsFloat := 0;
  ServiceCadastro.QRY_movestoqueMOV_VLRTOTAL.AsFloat := TotalVenda;
  ServiceCadastro.QRY_movestoque.Post;

  //formas de pagemnto - faturamento
  ViewformaPGTO := TViewFormaPGTO.Create(Self);
  try
    ViewFundo.Show;
    ViewFormaPGTO.ValorVenda := TotalVenda;
    ViewFormaPGTO.ShowModal;
  finally
    ViewFundo.Hide;
    FreeAndNil(ViewFormaPGTO);
  end;


end;

procedure TViewVendas.BtnSalvarVendaClick(Sender: TObject);
begin
  inherited;
  if not TBL_itensMemoria.IsEmpty then
  begin
    TBL_itensMemoriaVLR_UNITARIO.AsFloat := StrToFloatDef(edtVlrUnitario.Text, 0);
    TBL_itensMemoriaQTD_ITEM.AsFloat := StrToFloatDef(edtQtd.Text, 0);
    TBL_itensMemoriaVLR_DESCONTO.AsFloat := 0;
    TBL_itensMemoriaVLR_SUBTOTAL.AsFloat := StrToFloatDef(edtVlrSubTotal.Text, 0);

    TBL_itensMemoria.First;

    while not TBL_itensMemoria.Eof do
    begin

    ServiceCadastro.QRY_movestoqueitem.Close;
    ServiceCadastro.QRY_movestoqueitem.Open;
    ServiceCadastro.QRY_movestoqueitem.Insert;
    ServiceCadastro.QRY_movestoqueitemMVI_CODIGOMOVESTOQUE.AsInteger := TBL_itensmemoriaCOD_MOVESTOQUE.AsInteger;
    ServiceCadastro.QRY_movestoqueitemMVI_CODITEM.AsInteger := TBL_itensmemoriaCOD_ITEM.AsInteger;
    ServiceCadastro.QRY_movestoqueitemMVI_QUANTIDADE.AsFloat := TBL_itensmemoriaQTD_ITEM.AsFloat;
    ServiceCadastro.QRY_movestoqueitemMVI_VLRUNITARIO.AsFloat := TBL_itensmemoriaVLR_UNITARIO.AsFloat;
    ServiceCadastro.QRY_movestoqueitemMVI_VLRTOTAL.AsFloat := TBL_itensmemoriaVLR_SUBTOTAL.AsFloat;
    ServiceCadastro.QRY_movestoqueitemMVI_VLRDESCONTO.AsFloat := TBL_itensmemoriaVLR_DESCONTO.AsFloat;
    ServiceCadastro.QRY_movestoqueitem.Post;

    TBL_itensMemoria.Next;
  end;

  GET_VendaItem(ServiceCadastro.QRY_movestoqueMOV_CODIGO.AsInteger);

  LabelTotalVenda.Caption := '[ SUB. TOTAL: '+ (FloatToStrF(TOTAL_VENDA, ffCurrency, 10,2)+' ]');

  TBL_itensMemoria.EmptyDataSet;

  SBoxProduto.Clear;
  EdtQtd.Clear;
  EdtVlrUnitario.Clear;
  EdtVlrSubTotal.Clear;

  SBoxProduto.SetFocus;

  end;

 

end;

procedure TViewVendas.EdtQtdExit(Sender: TObject);
begin    //exit da quantidade
  inherited;
GET_SubTotal;
end;

procedure TViewVendas.FormShow(Sender: TObject);
begin
  inherited;
  GET_Vendas;
 // GET_VendaItem;
end;

procedure TViewVendas.GET_SubTotal;
begin   //sub total

if StrToFloatDef(edtQtd.Text, 0) > 0 then
begin
  edtVlrSubTotal.Text := FloatToStr((StrTofloatDef(edtQtd.Text, 0)) * (StrToFloatDef(edtVlrUnitario.Text, 0)));
end;

end;

procedure TViewVendas.SBoxCodigoExit(Sender: TObject);
begin   // saindo do SBoxCodigo do vendedor
  inherited;
  if StrToIntDef(SBoxCodigo.Text, 0) > 0 then
  begin
    GET_Vendedor(StrToInt(SBoxCodigo.Text));
    LabelVendedor.Caption := '[ '+sNOME_VENDEDOR+' ]';

    ServiceCadastro.QRY_movestoqueMOV_VENDEDOR.AsInteger := iCODIGO_VENDEDOR;

    ServiceCadastro.QRY_movestoque.Post;  // salva a venda
  end;

end;

procedure TViewVendas.SBoxProdutoInvokeSearch(Sender: TObject);
begin    //procurando o produto
  inherited;

   ViewProdutos := TViewProdutos.Create(Self);

    try
    ViewProdutos.Top := ViewVendas.Top;
    ViewProdutos.Left := ViewVendas.Left;

    ViewProdutos.BtnSelecionar.Visible := True;

    ViewProdutos.ShowModal;

    if ViewProdutos.ModalResult = mrOk then
    begin
      SBoxProduto.Text := ServiceCadastro.QRY_produto1PR1_NOMECOMPLETO.AsString;
      edtVlrUnitario.Text := FloatToStr(ServiceCadastro.QRY_produto2PR2_VENDAPRAZO.AsFloat);

      TBL_itensMemoria.Close;
      TBL_itensMemoria.Open;
      TBL_itensMemoria.Insert;
      TBL_itensMemoriaCOD_MOVESTOQUE.AsInteger := ServiceCadastro.QRY_movestoqueMOV_CODIGO.AsInteger;
      TBL_itensMemoriaCOD_ITEM.AsInteger := ServiceCadastro.QRY_produto1PR1_CODIGO.AsInteger;

      edtQtd.SetFocus;
    end;

    finally
      FreeAndNil(ViewProdutos);
    end;
end;

procedure TViewVendas.DSDadosStateChange(Sender: TObject);
begin
  //inherited;

end;

end.
