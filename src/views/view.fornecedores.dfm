inherited ViewFornecedores: TViewFornecedores
  Caption = 'ViewFornecedores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLinhadefundo: TPanel
    inherited CardPanel_Lista: TCardPanel
      inherited Card_pesquisa: TCard
        inherited PanelTopo: TPanel
          inherited LabelTitulo: TLabel
            Caption = 'Fornecedores'
            ExplicitWidth = 115
          end
        end
        inherited DBG_dados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Raz'#227'o Social'
              Width = 230
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Width = 232
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CPFCNPJ'
              Title.Caption = 'CPF / CNPJ'
              Visible = True
            end>
        end
      end
      inherited Card_cadastro: TCard
        object Label4: TLabel [0]
          Left = 204
          Top = 168
          Width = 54
          Height = 21
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel [1]
          Left = 368
          Top = 168
          Width = 78
          Height = 21
          Caption = 'CPF / CNPJ'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel [2]
          Left = 0
          Top = 488
          Width = 1020
          Height = 25
          Align = alBottom
          Alignment = taCenter
          Caption = 'CLIENTES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          OnMouseDown = LabelTituloMouseDown
          ExplicitWidth = 82
        end
        object Label5: TLabel [3]
          Left = 204
          Top = 216
          Width = 158
          Height = 21
          Caption = 'Nome do Fornecedor'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel [4]
          Left = 204
          Top = 264
          Width = 106
          Height = 21
          Caption = 'Nome Fantasia'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel [5]
          Left = 204
          Top = 320
          Width = 63
          Height = 21
          Caption = 'Telefone'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel [6]
          Left = 204
          Top = 368
          Width = 87
          Height = 21
          Caption = 'Observa'#231#227'o'
          FocusControl = DBEdit7
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel [7]
          Left = 554
          Top = 320
          Width = 49
          Height = 21
          Caption = 'RG / IE'
          FocusControl = DBEdit6
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited Panel2: TPanel
          inherited Label11: TLabel
            Caption = 'Fornecedores'
            ExplicitWidth = 115
          end
        end
        object DBEdit3: TDBEdit
          Left = 368
          Top = 192
          Width = 466
          Height = 21
          DataField = 'PES_CPFCNPJ'
          DataSource = DSDados
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 204
          Top = 192
          Width = 134
          Height = 21
          DataField = 'PES_CODIGO'
          DataSource = DSDados
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 204
          Top = 237
          Width = 630
          Height = 21
          DataField = 'PES_RAZAO'
          DataSource = DSDados
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 204
          Top = 285
          Width = 630
          Height = 21
          DataField = 'PES_FANTASIA'
          DataSource = DSDados
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 204
          Top = 341
          Width = 277
          Height = 21
          DataField = 'PES_TELEFONE'
          DataSource = DSDados
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 204
          Top = 390
          Width = 630
          Height = 21
          DataField = 'PES_OBSERVACAO'
          DataSource = DSDados
          TabOrder = 6
        end
        object DBEdit6: TDBEdit
          Left = 554
          Top = 341
          Width = 280
          Height = 21
          DataField = 'PES_IERG'
          DataSource = DSDados
          TabOrder = 7
        end
        object Panel1: TPanel
          Left = 0
          Top = 35
          Width = 1020
          Height = 71
          Align = alTop
          Color = 12961221
          ParentBackground = False
          TabOrder = 8
          object LabelCadastro: TLabel
            AlignWithMargins = True
            Left = 368
            Top = 20
            Width = 316
            Height = 30
            Alignment = taCenter
            Caption = '[ CADASTRO DE FORNECEDORES ]'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
  end
  inherited DSDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
    Left = 192
    Top = 64
  end
end
