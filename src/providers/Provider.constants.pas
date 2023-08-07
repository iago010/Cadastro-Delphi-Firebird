unit Provider.constants;

interface

uses view.mensagens;

procedure GET_Pessoas(iTIPO: integer); //procedure para buscas cliente, funcionarios e pes
procedure GET_Produtos;
procedure GET_Produtos_Detalhes(iCOD_PRODUTO: integer); overload;
procedure GET_Produtos_Detalhes(iCOD_PRODUTO, iCOD_FILIAL: integer); overload;
procedure GET_Vendedor(iCOD_VENDEDOR: integer);
procedure GET_VendaItem(iCOD_VENDA: integer);
procedure GET_Vendas;
procedure PUT_caixa(tipo, descricao: string; valor: double; IDformaPGTO, idVENDA: integer);
procedure GET_Caixa;
procedure PUT_receber(ANumDocto: string; ICodCliente: integer; AValor: double);
procedure GET_Receber;
procedure GET_receber_parcelas(AValue: string);

var
  iCOD_FILIAL, iCODIGO_VENDEDOR: integer;
  sRAZAO_FILIAL, sNOME_VENDEDOR: string;

  TOTAL_VENDA: double;

implementation


uses System.SysUtils, service.cadastro;

procedure GET_Pessoas(iTIPO: integer); //procedure para buscas cliente, funcionarios e pessoas
begin
   ServiceCadastro.QRY_pessoas.Close;
   ServiceCadastro.QRY_pessoas.SQL.Clear;
   ServiceCadastro.QRY_pessoas.SQL.Add('select * from pessoas where pes_tipopessoa = :tipopessoa');
   ServiceCadastro.QRY_pessoas.SQL.Add('order by pes_codigo desc');
   ServiceCadastro.QRY_pessoas.Params[0].AsInteger := iTIPO;
   ServiceCadastro.QRY_pessoas.Open();
end;

procedure GET_Produtos; //procedure para buscas produto
begin
   ServiceCadastro.QRY_produto1.Close;
   ServiceCadastro.QRY_produto1.SQL.Clear;
   ServiceCadastro.QRY_produto1.SQL.Add('select * from produto1 order by pr1_codigo');
   ServiceCadastro.QRY_produto1.Open();



end;

procedure GET_Vendedor(iCOD_VENDEDOR: integer); //buscar vendedor
begin
   ServiceCadastro.QRY_pessoas.Close;
   ServiceCadastro.QRY_pessoas.SQL.Clear;
   ServiceCadastro.QRY_pessoas.SQL.Add('select * from pessoas where pes_codigo = :codigo and pes_tipopessoa = :tipo');
   ServiceCadastro.QRY_pessoas.Params[0].AsInteger := iCOD_VENDEDOR;
   ServiceCadastro.QRY_pessoas.Params[1].AsInteger := 3;
   ServiceCadastro.QRY_pessoas.Open();
      if ServiceCadastro.QRY_pessoas.RecordCount > 0 then
    begin
      iCODIGO_VENDEDOR := 0;
      sNOME_VENDEDOR := '';

      iCODIGO_VENDEDOR := ServiceCadastro.QRY_pessoasPES_CODIGO.AsInteger;
      sNOME_VENDEDOR := ServiceCadastro.QRY_pessoasPES_RAZAO.AsString;

    end
    else begin
      TViewMensagens.Mensagens('Vendedor não encontrado.','[ ATENÇÃO ]','A',[mbOk]);
    end;
end;

procedure GET_Produtos_Detalhes(iCOD_PRODUTO: integer);
begin   //BUSCA OS DETRALHES DO PRODUTO
   ServiceCadastro.QRY_produto2.Close;
   ServiceCadastro.QRY_produto2.SQL.Clear;
   ServiceCadastro.QRY_produto2.SQL.Add('select * from produto2 where PR2_CODIGOPR1 = :codigo');
   ServiceCadastro.QRY_produto2.Params[0].AsInteger := iCOD_PRODUTO;
   ServiceCadastro.QRY_produto2.Open();
end;

procedure GET_Vendas;
begin   //BUSCA TODAS AS VENDAS
   ServiceCadastro.QRY_movestoque.Close;
   ServiceCadastro.QRY_movestoque.SQL.Clear;
   ServiceCadastro.QRY_movestoque.SQL.Add('select * from movestoque order by 1');
   ServiceCadastro.QRY_movestoque.Open();
end;

procedure GET_Receber;
begin   //BUSCA contas a receber
   ServiceCadastro.QRY_receber1.Close;
   ServiceCadastro.QRY_receber1.SQL.Clear;
   ServiceCadastro.QRY_receber1.SQL.Add('select r1.*, ps.pes_razao from receber1 r1');
   ServiceCadastro.QRY_receber1.SQL.Add('inner join pessoas ps');
   ServiceCadastro.QRY_receber1.SQL.Add('on (r1.rc1_cliente = ps.pes_codigo)');
   ServiceCadastro.QRY_receber1.SQL.Add('order by 1 desc');
   ServiceCadastro.QRY_receber1.Open();
end;

procedure GET_receber_parcelas(AValue: string);
begin
   ServiceCadastro.QRY_receber2.Close;
   ServiceCadastro.QRY_receber2.SQL.Clear;
   ServiceCadastro.QRY_receber2.SQL.Add('select * from receber2 where rc2_numdocto = :numdocto');
   ServiceCadastro.QRY_receber2.Params[0].AsString := AValue;
   ServiceCadastro.QRY_receber2.Open();
end;


procedure GET_Caixa;
begin   //BUSCA TODOS OS LANÇAMENTOS DO CAIXA
   ServiceCadastro.QRY_cadcaixa.Close;
   ServiceCadastro.QRY_cadcaixa.SQL.Clear;
   ServiceCadastro.QRY_cadcaixa.SQL.Add('select');
   ServiceCadastro.QRY_cadcaixa.SQL.Add('cx.*,');
   ServiceCadastro.QRY_cadcaixa.SQL.Add('fp.descricao');
   ServiceCadastro.QRY_cadcaixa.SQL.Add('from CAIXA cx');
   ServiceCadastro.QRY_cadcaixa.SQL.Add('inner join FORMASPAGAMENTOS fp');
   ServiceCadastro.QRY_cadcaixa.SQL.Add('on (cx.CAI_IDFORMAPGTO = fp.FOR_CODIGO)');
   ServiceCadastro.QRY_cadcaixa.SQL.Add('order by cx.CAI_CODIGO desc');
   ServiceCadastro.QRY_cadcaixa.Open();
end;

procedure GET_VendaItem(iCOD_VENDA: integer);
begin   //BUSCA ITENS DA VENDA
   ServiceCadastro.QRY_movestoqueitem.Close;
   ServiceCadastro.QRY_movestoqueitem.SQL.Clear;
   ServiceCadastro.QRY_movestoqueitem.SQL.Add('select * from movestoque_item where mvi_codigomovestoque = :codigo');
   ServiceCadastro.QRY_movestoqueitem.Params[0].AsInteger := iCOD_VENDA;
   ServiceCadastro.QRY_movestoqueitem.Open();

   //somando o valor da venda

   TOTAL_VENDA := 0;

   ServiceCadastro.QRY_movestoque.DisableControls;

   ServiceCadastro.QRY_movestoqueitem.First;
   while not ServiceCadastro.QRY_movestoqueitem.Eof do
   begin
     TOTAL_VENDA := TOTAL_VENDA + ServiceCadastro.QRY_movestoqueitemMVI_VLRTOTAL.AsFloat;
     ServiceCadastro.QRY_movestoqueitem.Next;
     end;
end;


procedure PUT_caixa(tipo, descricao: string; valor: double; IDformaPGTO, idVENDA: integer);
begin  // gravando o caixa
  ServiceCadastro.QRY_cadCaixa.Close;
  ServiceCadastro.QRY_cadCaixa.Open();
  ServiceCadastro.QRY_cadCaixa.Insert;
  ServiceCadastro.QRY_cadCaixaCAI_DATAHORA.AsDateTime := Now;
  ServiceCadastro.QRY_cadCaixaCAI_TIPO.AsString := tipo;
  ServiceCadastro.QRY_cadCaixaCAI_VALOR.AsCurrency := valor;
  ServiceCadastro.QRY_cadCaixaCAI_DESCRICAO.AsString := descricao;
  ServiceCadastro.QRY_cadCaixaCAI_IDFORMAPGTO.AsInteger := IDformaPGTO;
  ServiceCadastro.QRY_cadCaixaCAI_IDVENDA.AsInteger := idVENDA;
  ServiceCadastro.QRY_cadCaixa.Post;
end;

procedure PUT_receber(ANumDocto: string; ICodCliente: integer; AValor: double);
begin  // gravando o receber
  //inserindo o receber1 (cabeçalho)
  ServiceCadastro.QRY_receber1.Close;
  ServiceCadastro.QRY_receber1.SQL.Clear;
  ServiceCadastro.QRY_receber1.SQL.Add('select r1.*, ps.pes_razao from receber1 r1');
  ServiceCadastro.QRY_receber1.SQL.Add('inner join pessoas ps');
  ServiceCadastro.QRY_receber1.SQL.Add('on (r1.rc1_cliente = ps.pes_codigo)');
  ServiceCadastro.QRY_receber1.SQL.Add('where r1.rc1_numdocto = numdocto');
  ServiceCadastro.QRY_receber1.Params[0].AsString := ANumDocto;
  ServiceCadastro.QRY_receber1.Open();

  if ServiceCadastro.QRY_receber1.RecordCount < 1 then
  begin
    ServiceCadastro.QRY_receber1.Close;
    ServiceCadastro.QRY_receber1.Open();
    ServiceCadastro.QRY_receber1.Insert;
    ServiceCadastro.QRY_receber1RC1_NUMDOCTO.AsString := ANumDocto;
    ServiceCadastro.QRY_receber1RC1_CLIENTE.AsInteger := ICodCliente;
    ServiceCadastro.QRY_receber1RC1_VALOR.AsFloat := 0;
    ServiceCadastro.QRY_receber1.Post;
  end;

  //inserindo o receber2 (parcelas)
  ServiceCadastro.QRY_receber2.Close;
  ServiceCadastro.QRY_receber2.Open();
  ServiceCadastro.QRY_receber2.Insert;
  ServiceCadastro.QRY_receber2RC2_NUMDOCTO.AsString := ANumDocto;
  ServiceCadastro.QRY_receber2RC2_DATA.AsDateTime := Date;
  ServiceCadastro.QRY_receber2RC2_VALORPARCELA.AsFloat := AValor;
  ServiceCadastro.QRY_receber2RC2_VENCIMENTO.AsDateTime := Date + 30;
  ServiceCadastro.QRY_receber2RC2_VALORHAVER.AsFloat := 0; //SE A PESSOA DEU UMA ENTRADA
  ServiceCadastro.QRY_receber2RC2_VALORSALDO.AsFloat := AValor;
  ServiceCadastro.QRY_receber2.Post;

  //atualiza o cabeçalho
  ServiceCadastro.QRY_receber1.Edit;
  ServiceCadastro.QRY_receber1RC1_VALOR.AsFloat := ServiceCadastro.QRY_receber1RC1_VALOR.AsFloat + AValor;
  ServiceCadastro.QRY_receber1.Post;
end;

procedure GET_Produtos_Detalhes(iCOD_PRODUTO, iCOD_FILIAL: integer);
begin   //BUSCA OS DETRALHES DO PRODUTO por filial
   ServiceCadastro.QRY_produto2.Close;
   ServiceCadastro.QRY_produto2.SQL.Clear;
   ServiceCadastro.QRY_produto2.SQL.Add('select * from produto2 where PR2_CODIGOPR1 = :codigo');
   ServiceCadastro.QRY_produto2.SQL.Add('and pr2_filial = :filial');
   ServiceCadastro.QRY_produto2.Params[0].AsInteger := iCOD_PRODUTO;
   ServiceCadastro.QRY_produto2.Params[1].AsInteger := iCOD_FILIAL;
   ServiceCadastro.QRY_produto2.Open();
end;

end.
