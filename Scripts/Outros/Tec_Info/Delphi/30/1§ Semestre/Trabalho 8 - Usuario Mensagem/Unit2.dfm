object DM: TDM
  OldCreateOrder = False
  Height = 68
  Width = 257
  object IBDB: TIBDatabase
    Connected = True
    DatabaseName = '200.132.44.222:C:/base.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTS
    ServerType = 'IBServer'
    Left = 72
    Top = 8
  end
  object IBTS: TIBTransaction
    Active = True
    DefaultDatabase = IBDB
    Left = 144
    Top = 8
  end
  object IBQ: TIBQuery
    Database = IBDB
    Transaction = IBTS
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 16
    Top = 8
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
        ParamType = ptOutput
      end
      item
        DataType = ftUnknown
        Name = 'p_senha'
        ParamType = ptInput
      end>
  end
  object IBQuery1: TIBQuery
    Database = IBDB
    Transaction = IBTS
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 200
    Top = 8
  end
end
