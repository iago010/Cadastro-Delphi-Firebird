object ServiceConexao: TServiceConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 441
  Width = 669
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\projetos Programas\ERPDelphi\banco_de_dados\DADOS.FD' +
        'B'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 216
    Top = 176
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 400
    Top = 176
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 216
    Top = 272
  end
  object QRY_filial: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from filial where fil_codigo = :codigo')
    Left = 400
    Top = 280
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_filialFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Origin = 'FIL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_filialFIL_RAZAO: TStringField
      FieldName = 'FIL_RAZAO'
      Origin = 'FIL_RAZAO'
      Size = 80
    end
    object QRY_filialFIL_FANTASIA: TStringField
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Size = 80
    end
    object QRY_filialFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Size = 40
    end
    object QRY_filialFIL_TELEFONE: TStringField
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 40
    end
  end
end
