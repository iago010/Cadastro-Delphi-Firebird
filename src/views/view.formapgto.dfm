inherited Viewformapgto: TViewformapgto
  BorderStyle = bsNone
  BorderWidth = 3
  Caption = 'Viewformapgto'
  ClientHeight = 428
  ClientWidth = 618
  Position = poOwnerFormCenter
  OnShow = FormShow
  ExplicitWidth = 624
  ExplicitHeight = 434
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 618
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 7895160
    ParentBackground = False
    TabOrder = 0
    object Label11: TLabel
      AlignWithMargins = True
      Left = 38
      Top = 3
      Width = 490
      Height = 29
      Align = alClient
      Caption = 'Formas de Pagamentos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 199
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
      Left = 531
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
        OnClick = SpeedButton1Click
        ExplicitLeft = 64
        ExplicitTop = 4
        ExplicitWidth = 117
        ExplicitHeight = 25
      end
    end
  end
  object PanelRodape: TPanel
    Left = 0
    Top = 391
    Width = 618
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Color = 7960953
    ParentBackground = False
    TabOrder = 1
    object BtnSalvar: TSpeedButton
      AlignWithMargins = True
      Left = 532
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
  end
  object pnlFPagamentos: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 55
    Width = 205
    Height = 210
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object DBG_dados: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 195
      Height = 200
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DsFPagamentos
      FixedColor = 1031129
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBG_dadosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Forma de Pagamento'
          Visible = True
        end>
    end
  end
  object PnlinfoPGTO: TPanel
    AlignWithMargins = True
    Left = 245
    Top = 55
    Width = 353
    Height = 210
    Margins.Left = 0
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object DBG_formasPagamentos: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 343
      Height = 200
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DsFPagamentosEscolhidos
      FixedColor = 1031129
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'nome_formapagamento'
          Title.Caption = 'Forma de Pagamento'
          Width = 239
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_pgto'
          Title.Caption = 'Valor'
          Visible = True
        end>
    end
  end
  object PanelTituloPesquisa: TPanel
    AlignWithMargins = True
    Left = 20
    Top = 285
    Width = 578
    Height = 86
    Margins.Left = 20
    Margins.Top = 0
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alBottom
    Color = 7960953
    ParentBackground = False
    TabOrder = 4
    object LabelValorVenda: TLabel
      AlignWithMargins = True
      Left = 25
      Top = 45
      Width = 156
      Height = 32
      Alignment = taCenter
      Caption = 'Valor da Venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 214
      Top = 45
      Width = 150
      Height = 32
      Alignment = taCenter
      Caption = 'Valor Faturado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 405
      Top = 45
      Width = 147
      Height = 32
      Alignment = taCenter
      Caption = 'Valor Restante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
    end
    object EdtVlrFaturado: TEdit
      Left = 207
      Top = 16
      Width = 167
      Height = 27
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object EdtVlrRestante: TEdit
      Left = 392
      Top = 16
      Width = 166
      Height = 27
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
  end
  object PnlValor: TPanel
    Left = 103
    Top = 112
    Width = 378
    Height = 183
    BevelOuter = bvNone
    Color = 5395026
    ParentBackground = False
    TabOrder = 5
    Visible = False
    object BtnOk: TSpeedButton
      AlignWithMargins = True
      Left = 272
      Top = 38
      Width = 103
      Height = 142
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Down = True
      Caption = '[  OK  ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnOkClick
      ExplicitLeft = 380
      ExplicitTop = 6
      ExplicitHeight = 30
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 378
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      Color = 7895160
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        AlignWithMargins = True
        Left = 12
        Top = 3
        Width = 276
        Height = 29
        Align = alClient
        Caption = '[ VALOR PARA FATURAR ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 219
        ExplicitHeight = 25
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 9
        Height = 35
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Panel6: TPanel
        Left = 291
        Top = 0
        Width = 87
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object PanelAmerelinho3: TPanel
      AlignWithMargins = True
      Left = 267
      Top = 45
      Width = 2
      Height = 128
      Margins.Left = 0
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 10
      Align = alRight
      BevelOuter = bvNone
      Color = 1031129
      ParentBackground = False
      TabOrder = 1
    end
    object EdtVlrFaturar: TEdit
      Left = 12
      Top = 88
      Width = 245
      Height = 40
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object EdtValorVenda: TEdit
    Left = 38
    Top = 301
    Width = 171
    Height = 27
    BorderStyle = bsNone
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
  end
  object DsFPagamentos: TDataSource
    DataSet = ServiceCadastro.QRY_formasPGTO
    Left = 269
    Top = 7
  end
  object TBL_formasPGTO: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 360
    Top = 8
    object TBL_formasPGTOid_formapgto: TIntegerField
      FieldName = 'id_formapgto'
    end
    object TBL_formasPGTOvalor_pgto: TCurrencyField
      FieldName = 'valor_pgto'
    end
    object TBL_formasPGTOnome_formapagamento: TStringField
      FieldName = 'nome_formapagamento'
      Size = 50
    end
    object TBL_formasPGTOgerar_receber: TStringField
      FieldName = 'gerar_receber'
      Size = 10
    end
    object TBL_formasPGTOid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object TBL_formasPGTOid_numdocto: TStringField
      FieldName = 'id_numdocto'
      Size = 50
    end
  end
  object DsFPagamentosEscolhidos: TDataSource
    DataSet = TBL_formasPGTO
    Left = 480
    Top = 8
  end
end
