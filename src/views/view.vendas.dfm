inherited ViewVendas: TViewVendas
  Caption = 'ViewVendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelRodape: TPanel
    TabOrder = 1
    inherited BtnNovo: TSpeedButton
      Left = 675
      ExplicitLeft = 675
    end
    inherited BtnEditar: TSpeedButton
      Left = 752
      ExplicitLeft = 752
    end
    inherited BtnCancelar: TSpeedButton
      Left = 829
      ExplicitLeft = 829
    end
    inherited BtnSalvar: TSpeedButton
      Left = 938
      ExplicitLeft = 938
    end
    inherited BtnExcluir: TSpeedButton
      Left = 616
      Width = 53
      Visible = False
      ExplicitLeft = 616
      ExplicitTop = 3
      ExplicitWidth = 53
    end
    object LabelTotalVenda: TLabel
      AlignWithMargins = True
      Left = 7
      Top = 0
      Width = 230
      Height = 32
      Alignment = taCenter
      Caption = '[ SUB TOTAL: R$ 0,00 ]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited PanelLinhadefundo: TPanel
    TabOrder = 0
    inherited CardPanel_Lista: TCardPanel
      ActiveCard = Card_cadastro
      inherited Card_pesquisa: TCard
        inherited PanelTituloPesquisa: TPanel
          inherited edtPesquisa: TSearchBox
            Top = 41
            ExplicitTop = 41
          end
        end
        inherited PanelTopo: TPanel
          inherited LabelTitulo: TLabel
            Caption = 'VENDAS'
            ExplicitWidth = 74
          end
        end
        inherited DBG_dados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'MOV_CODIGO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_TIPOESTOQUE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_DATA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_HORA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_VLRTOTAL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_VENDEDOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_CLIENTE'
              Visible = True
            end>
        end
      end
      inherited Card_cadastro: TCard
        inherited Panel2: TPanel
          inherited Label11: TLabel
            Caption = 'VENDAS'
            ExplicitWidth = 74
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 35
          Width = 1020
          Height = 134
          Align = alTop
          Color = 12961221
          ParentBackground = False
          TabOrder = 1
          object LabelCodigo: TLabel
            AlignWithMargins = True
            Left = 19
            Top = 8
            Width = 59
            Height = 23
            Alignment = taCenter
            Caption = 'C'#243'digo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object LabelVendedor: TLabel
            AlignWithMargins = True
            Left = 112
            Top = 26
            Width = 232
            Height = 30
            Alignment = taCenter
            Caption = '[ NOME DO VENDEDOR ]'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            AlignWithMargins = True
            Left = 19
            Top = 76
            Width = 154
            Height = 23
            Alignment = taCenter
            Caption = 'Selecione o Produto:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            AlignWithMargins = True
            Left = 382
            Top = 76
            Width = 91
            Height = 23
            Alignment = taCenter
            Caption = 'Quantidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            AlignWithMargins = True
            Left = 509
            Top = 76
            Width = 105
            Height = 23
            Alignment = taCenter
            Caption = 'Valor Unit'#225'rio:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            AlignWithMargins = True
            Left = 636
            Top = 76
            Width = 76
            Height = 23
            Alignment = taCenter
            Caption = 'Sub. Total:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object BtnSalvarVenda: TSpeedButton
            Left = 763
            Top = 96
            Width = 81
            Height = 24
            Caption = 'Salvar'
            Layout = blGlyphBottom
            OnClick = BtnSalvarVendaClick
          end
          object SBoxCodigo: TSearchBox
            Left = 19
            Top = 34
            Width = 81
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            NumbersOnly = True
            TabOrder = 0
            OnExit = SBoxCodigoExit
          end
          object SBoxProduto: TSearchBox
            Left = 19
            Top = 98
            Width = 357
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            TabOrder = 1
            OnInvokeSearch = SBoxProdutoInvokeSearch
          end
          object EdtVlrUnitario: TEdit
            Left = 509
            Top = 98
            Width = 121
            Height = 21
            NumbersOnly = True
            TabOrder = 2
            OnExit = EdtQtdExit
          end
          object edtVlrSubTotal: TEdit
            Left = 636
            Top = 98
            Width = 121
            Height = 21
            NumbersOnly = True
            ReadOnly = True
            TabOrder = 3
          end
          object EdtQtd: TEdit
            Left = 382
            Top = 98
            Width = 121
            Height = 21
            NumbersOnly = True
            TabOrder = 4
            OnExit = EdtQtdExit
          end
        end
        object DBG_vendas: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 174
          Width = 1010
          Height = 334
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BorderStyle = bsNone
          DataSource = DSitens
          FixedColor = 1031129
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBG_dadosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'MVI_CODIGO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_CODIGOMOVESTOQUE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_CODITEM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_QUANTIDADE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_VLRUNITARIO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_VLRTOTAL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_VLRDESCONTO'
              Visible = True
            end>
        end
      end
    end
  end
  inherited DSDados: TDataSource
    DataSet = ServiceCadastro.QRY_movestoque
    Left = 368
    Top = 32
  end
  object DSitens: TDataSource [3]
    DataSet = ServiceCadastro.QRY_movestoqueitem
    Left = 496
    Top = 56
  end
  object TBL_itensMemoria: TFDMemTable [4]
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 568
    Top = 56
    object TBL_itensMemoriacod_movestoque: TIntegerField
      FieldName = 'cod_movestoque'
    end
    object TBL_itensMemoriaCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
    end
    object TBL_itensMemoriaQTD_ITEM: TCurrencyField
      FieldName = 'QTD_ITEM'
    end
    object TBL_itensMemoriaVLR_UNITARIO: TCurrencyField
      FieldName = 'VLR_UNITARIO'
    end
    object TBL_itensMemoriaVLR_DESCONTO: TCurrencyField
      FieldName = 'VLR_DESCONTO'
    end
    object TBL_itensMemoriaVLR_SUBTOTAL: TCurrencyField
      FieldName = 'VLR_SUBTOTAL'
    end
  end
end
