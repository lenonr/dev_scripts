object dm: Tdm
  OldCreateOrder = False
  Height = 320
  Width = 460
  object IBDatabase1: TIBDatabase
    DatabaseName = '200.132.44.222:C:\BASE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 48
    Top = 32
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = IBDatabase1
    Left = 144
    Top = 32
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 240
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_cod_usu'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_nome_completo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_nome_usu'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'p_senha'
        ParamType = ptInput
      end>
  end
  object IBQuery2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 344
    Top = 32
  end
end
