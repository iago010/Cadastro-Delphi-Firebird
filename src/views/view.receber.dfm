inherited ViewReceber: TViewReceber
  Caption = 'ViewReceber'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelLinhadefundo: TPanel
    inherited CardPanel_Lista: TCardPanel
      inherited Card_pesquisa: TCard
        inherited PanelTopo: TPanel
          inherited LabelTitulo: TLabel
            Width = 892
            Height = 29
            Caption = 'Contas a Receber'
            ExplicitWidth = 147
          end
        end
        inherited DBG_dados: TDBGrid
          Height = 224
          Align = alTop
          BorderStyle = bsSingle
          Columns = <
            item
              Expanded = False
              FieldName = 'RC1_NUMDOCTO'
              Title.Caption = 'Documento'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC1_CLIENTE'
              Title.Caption = 'Cliente'
              Width = 543
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC1_VALOR'
              Title.Caption = 'Valor'
              Width = 126
              Visible = True
            end>
        end
        object DBG_Parcelas: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 360
          Width = 1010
          Height = 148
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alBottom
          DataSource = DSparcelas
          FixedColor = 1031129
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBG_dadosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'RC2_DATA'
              Title.Caption = 'Data'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC2_VALORPARCELA'
              Title.Caption = 'Valor da Parcela'
              Width = 123
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC2_PARCELA'
              Title.Caption = 'Parcela'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC2_VENCIMENTO'
              Title.Caption = 'Vencimento'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC2_VALORHAVER'
              Title.Caption = 'Valor Haver'
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RC2_VALORSALDO'
              Title.Caption = 'Saldo'
              Width = 134
              Visible = True
            end>
        end
      end
      inherited Card_cadastro: TCard
        inherited Panel2: TPanel
          inherited Label11: TLabel
            Width = 892
            Height = 29
          end
        end
      end
    end
  end
  inherited DSDados: TDataSource
    DataSet = ServiceCadastro.QRY_receber1
    Left = 400
    Top = 24
  end
  object DSparcelas: TDataSource
    DataSet = ServiceCadastro.QRY_receber2
    Left = 496
    Top = 24
  end
end
