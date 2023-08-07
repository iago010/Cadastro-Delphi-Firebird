inherited ViewBaseListas: TViewBaseListas
  BorderStyle = bsNone
  Caption = 'ViewBaseListas'
  ClientHeight = 550
  ClientWidth = 1024
  Position = poDefault
  OnShow = FormShow
  ExplicitLeft = -8
  ExplicitWidth = 1024
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  object PanelRodape: TPanel
    Left = 0
    Top = 513
    Width = 1024
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Color = 7960953
    ParentBackground = False
    TabOrder = 0
    object BtnNovo: TSpeedButton
      AlignWithMargins = True
      Left = 589
      Top = 3
      Width = 71
      Height = 31
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ NOVO ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnNovoClick
      ExplicitLeft = 235
      ExplicitTop = 4
      ExplicitHeight = 32
    end
    object BtnEditar: TSpeedButton
      AlignWithMargins = True
      Left = 666
      Top = 3
      Width = 71
      Height = 31
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ EDITAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnEditarClick
      ExplicitLeft = 317
      ExplicitTop = 4
      ExplicitHeight = 32
    end
    object BtnCancelar: TSpeedButton
      AlignWithMargins = True
      Left = 743
      Top = 3
      Width = 103
      Height = 31
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Down = True
      Caption = '[ CANCELAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnCancelarClick
      ExplicitLeft = 383
      ExplicitTop = 4
      ExplicitHeight = 32
    end
    object BtnSalvar: TSpeedButton
      AlignWithMargins = True
      Left = 852
      Top = 3
      Width = 83
      Height = 31
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ SALVAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnSalvarClick
      ExplicitLeft = 382
      ExplicitTop = 4
      ExplicitHeight = 32
    end
    object BtnExcluir: TSpeedButton
      AlignWithMargins = True
      Left = 941
      Top = 3
      Width = 80
      Height = 31
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ EXCLUIR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnExcluirClick
      ExplicitLeft = 837
      ExplicitTop = 6
    end
  end
  object PanelLinhadefundo: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 513
    Align = alClient
    BevelOuter = bvNone
    Color = 7895160
    ParentBackground = False
    TabOrder = 1
    object CardPanel_Lista: TCardPanel
      AlignWithMargins = True
      Left = 2
      Top = 0
      Width = 1020
      Height = 513
      Margins.Left = 2
      Margins.Top = 0
      Margins.Right = 2
      Margins.Bottom = 0
      Align = alClient
      ActiveCard = Card_pesquisa
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Card_pesquisa: TCard
        Left = 0
        Top = 0
        Width = 1020
        Height = 513
        Caption = 'Card_pesquisa'
        CardIndex = 0
        TabOrder = 0
        object PanelTituloPesquisa: TPanel
          Left = 0
          Top = 35
          Width = 1020
          Height = 86
          Align = alTop
          Color = 12961221
          ParentBackground = False
          TabOrder = 0
          ExplicitTop = 32
          object LabelTituloPesquisa: TLabel
            Left = 28
            Top = 5
            Width = 85
            Height = 30
            Caption = 'Pesquisa:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object BtnSelecionar: TSpeedButton
            AlignWithMargins = True
            Left = 816
            Top = 4
            Width = 200
            Height = 78
            Cursor = crHandPoint
            Align = alRight
            GroupIndex = 1
            Caption = '[ SELECIONAR ]'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -21
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
            OnClick = BtnSelecionarClick
          end
          object edtPesquisa: TSearchBox
            Left = 28
            Top = 42
            Width = 627
            Height = 29
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TextHint = 'Digite aqui a sua pesquisa:'
          end
        end
        object PanelTopo: TPanel
          Left = 0
          Top = 0
          Width = 1020
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          Color = 7895160
          ParentBackground = False
          TabOrder = 1
          OnMouseDown = PanelTopoMouseDown
          object LabelTitulo: TLabel
            AlignWithMargins = True
            Left = 38
            Top = 3
            Width = 892
            Height = 29
            Align = alClient
            Caption = 'LabelTitulo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnMouseDown = LabelTituloMouseDown
            ExplicitWidth = 94
            ExplicitHeight = 25
          end
          object PanelIcone: TPanel
            Left = 0
            Top = 0
            Width = 35
            Height = 35
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object ImageIcone: TImage
              Left = 0
              Top = 0
              Width = 35
              Height = 35
              Align = alClient
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                00200806000000737A7AF4000000017352474200AECE1CE90000008249444154
                78DAEDD4510A80300806E0BC99DDA86EF877836E64057B69088B04D7E2F765E0
                267E0F53993A871040409D30335C47955E4564CF0298F36E3E0128F7EA009F37
                14D9A280D7CD0BE0D673488006016801E0D42D699F303BBE07E01E18610CBB03
                3408400B00A78E7B200FC03D30C218760768108016004E1DF70001FF051CC0AC
                90214BB977610000000049454E44AE426082}
              ExplicitLeft = 16
              ExplicitTop = 8
              ExplicitWidth = 105
              ExplicitHeight = 105
            end
          end
          object PanelFechar: TPanel
            Left = 933
            Top = 0
            Width = 87
            Height = 35
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object SpeedButtonSair: TSpeedButton
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 81
              Height = 29
              Cursor = crHandPoint
              Align = alClient
              Caption = '[ FECHAR ]'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 6711039
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              Transparent = False
              OnClick = SpeedButtonSairClick
              ExplicitLeft = 64
              ExplicitTop = 4
              ExplicitWidth = 117
              ExplicitHeight = 25
            end
          end
        end
        object DBG_dados: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 126
          Width = 1010
          Height = 382
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BorderStyle = bsNone
          DataSource = DSDados
          FixedColor = 1031129
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBG_dadosDblClick
        end
      end
      object Card_cadastro: TCard
        Left = 0
        Top = 0
        Width = 1020
        Height = 513
        Caption = 'Card_cadastro'
        CardIndex = 1
        TabOrder = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1020
          Height = 35
          Align = alTop
          BevelOuter = bvNone
          Color = 7895160
          ParentBackground = False
          TabOrder = 0
          OnMouseDown = PanelTopoMouseDown
          object Label11: TLabel
            AlignWithMargins = True
            Left = 38
            Top = 3
            Width = 892
            Height = 29
            Align = alClient
            Caption = 'LabelTitulo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnMouseDown = LabelTituloMouseDown
            ExplicitWidth = 94
            ExplicitHeight = 25
          end
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 35
            Height = 35
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Image2: TImage
              Left = 0
              Top = 0
              Width = 35
              Height = 35
              Align = alClient
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                00200806000000737A7AF4000000017352474200AECE1CE90000008249444154
                78DAEDD4510A80300806E0BC99DDA86EF877836E64057B69088B04D7E2F765E0
                267E0F53993A871040409D30335C47955E4564CF0298F36E3E0128F7EA009F37
                14D9A280D7CD0BE0D673488006016801E0D42D699F303BBE07E01E18610CBB03
                3408400B00A78E7B200FC03D30C218760768108016004E1DF70001FF051CC0AC
                90214BB977610000000049454E44AE426082}
              ExplicitLeft = 16
              ExplicitTop = 8
              ExplicitWidth = 105
              ExplicitHeight = 105
            end
          end
          object Panel4: TPanel
            Left = 933
            Top = 0
            Width = 87
            Height = 35
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object SpeedButton1: TSpeedButton
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 81
              Height = 29
              Cursor = crHandPoint
              Align = alClient
              Caption = '[ FECHAR ]'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = 6711039
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              Transparent = False
              OnClick = SpeedButtonSairClick
              ExplicitLeft = 64
              ExplicitTop = 4
              ExplicitWidth = 117
              ExplicitHeight = 25
            end
          end
        end
      end
    end
  end
  object DSDados: TDataSource
    OnStateChange = DSDadosStateChange
    Left = 488
    Top = 24
  end
  object DataSetProvider1: TDataSetProvider
    Left = 272
    Top = 24
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 24
  end
end
