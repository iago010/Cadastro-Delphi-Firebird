inherited ViewProdutos: TViewProdutos
  Caption = 'ViewProdutos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLinhadefundo: TPanel
    inherited CardPanel_Lista: TCardPanel
      ActiveCard = Card_cadastro
      inherited Card_pesquisa: TCard
        inherited PanelTopo: TPanel
          inherited LabelTitulo: TLabel
            Width = 892
            Height = 29
            Caption = 'Produtos'
            ExplicitWidth = 77
          end
        end
        inherited DBG_dados: TDBGrid
          Height = 232
          Columns = <
            item
              Expanded = False
              FieldName = 'PR1_CODIGO'
              Title.Caption = 'C'#243'digo'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMECOMPLETO'
              Title.Caption = 'Nome Completo'
              Width = 222
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMEPOPULAR'
              Title.Caption = 'Nome Popular'
              Width = 242
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_CODIGOBARRA'
              Title.Caption = 'C'#243'digo de Barras'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_REFERENCIA'
              Title.Caption = 'Refer'#234'ncia'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_GRUPO'
              Title.Caption = 'Grupo'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_SUBGRUPO'
              Title.Caption = 'Subgrupo'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NCM'
              Title.Caption = 'NCM'
              Width = 69
              Visible = True
            end>
        end
        object PnlDetalhe: TPanel
          Left = 0
          Top = 363
          Width = 1020
          Height = 150
          Align = alBottom
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 3
          object DBG_detalhes: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 1006
            Height = 136
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            DataSource = DSproduto2
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PR2_FILIAL'
                Title.Caption = 'Filial'
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_CUSTOINI'
                Title.Caption = 'Custo Inicial'
                Width = 205
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_VENDAVISTA'
                Title.Caption = 'Venda '#224' Vista'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_VENDAPRAZO'
                Title.Caption = 'Venda a Prazo'
                Width = 236
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_ESTOQUE'
                Title.Caption = 'Estoque'
                Width = 256
                Visible = True
              end>
          end
        end
      end
      inherited Card_cadastro: TCard
        object Label3: TLabel [0]
          AlignWithMargins = True
          Left = 3
          Top = 109
          Width = 1014
          Height = 401
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnMouseDown = LabelTituloMouseDown
          ExplicitLeft = 24
        end
        object Label1: TLabel [1]
          Left = 192
          Top = 165
          Width = 49
          Height = 20
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel [2]
          Left = 344
          Top = 166
          Width = 115
          Height = 20
          Caption = 'Nome Completo'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel [3]
          Left = 192
          Top = 220
          Width = 101
          Height = 20
          Caption = 'Nome Popular'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel [4]
          Left = 528
          Top = 221
          Width = 119
          Height = 20
          Caption = 'C'#243'digo de Barras'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel [5]
          Left = 192
          Top = 283
          Width = 81
          Height = 20
          Caption = 'Refer'#234'ncias'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel [6]
          Left = 640
          Top = 283
          Width = 35
          Height = 20
          Caption = 'NCM'
          FocusControl = DBEdit6
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel [7]
          Left = 192
          Top = 345
          Width = 85
          Height = 20
          Caption = 'Custo Inicial'
          FocusControl = DBEdit7
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel [8]
          Left = 362
          Top = 345
          Width = 82
          Height = 20
          Caption = 'Venda Vista'
          FocusControl = DBEdit8
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel [9]
          Left = 528
          Top = 345
          Width = 86
          Height = 20
          Caption = 'Venda Prazo'
          FocusControl = DBEdit9
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel [10]
          Left = 699
          Top = 345
          Width = 56
          Height = 20
          Caption = 'Estoque'
          FocusControl = DBEdit10
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited Panel2: TPanel
          inherited Label11: TLabel
            Width = 892
            Height = 29
            Caption = 'Produtos'
            ExplicitWidth = 77
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 35
          Width = 1020
          Height = 71
          Align = alTop
          Color = 12961221
          ParentBackground = False
          TabOrder = 1
          object LabelCadastro: TLabel
            AlignWithMargins = True
            Left = 406
            Top = 18
            Width = 269
            Height = 30
            Alignment = taCenter
            Caption = '[ CADASTRO DE PRODUTOS ]'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object DBEdit1: TDBEdit
          Left = 192
          Top = 187
          Width = 137
          Height = 21
          DataField = 'PR1_CODIGO'
          DataSource = DSDados
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 344
          Top = 187
          Width = 500
          Height = 21
          DataField = 'PR1_NOMECOMPLETO'
          DataSource = DSDados
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 192
          Top = 243
          Width = 321
          Height = 21
          DataField = 'PR1_NOMEPOPULAR'
          DataSource = DSDados
          TabOrder = 4
        end
        object DBEdit4: TDBEdit
          Left = 528
          Top = 243
          Width = 316
          Height = 21
          DataField = 'PR1_CODIGOBARRA'
          DataSource = DSDados
          TabOrder = 5
        end
        object DBEdit5: TDBEdit
          Left = 192
          Top = 304
          Width = 436
          Height = 21
          DataField = 'PR1_REFERENCIA'
          DataSource = DSDados
          TabOrder = 6
        end
        object DBEdit6: TDBEdit
          Left = 640
          Top = 304
          Width = 204
          Height = 21
          DataField = 'PR1_NCM'
          DataSource = DSDados
          TabOrder = 7
        end
        object DBEdit7: TDBEdit
          Left = 192
          Top = 366
          Width = 145
          Height = 21
          DataField = 'PR2_CUSTOINI'
          DataSource = DSproduto2
          TabOrder = 8
        end
        object DBEdit8: TDBEdit
          Left = 360
          Top = 366
          Width = 145
          Height = 21
          DataField = 'PR2_VENDAVISTA'
          DataSource = DSproduto2
          TabOrder = 9
        end
        object DBEdit9: TDBEdit
          Left = 528
          Top = 366
          Width = 145
          Height = 21
          DataField = 'PR2_VENDAPRAZO'
          DataSource = DSproduto2
          TabOrder = 10
        end
        object DBEdit10: TDBEdit
          Left = 699
          Top = 366
          Width = 145
          Height = 21
          DataField = 'PR2_ESTOQUE'
          DataSource = DSproduto2
          TabOrder = 11
        end
      end
    end
  end
  inherited DSDados: TDataSource
    DataSet = ServiceCadastro.QRY_produto1
    Left = 240
    Top = 24
  end
  object DSproduto2: TDataSource
    DataSet = ServiceCadastro.QRY_produto2
    Left = 312
    Top = 24
  end
end
