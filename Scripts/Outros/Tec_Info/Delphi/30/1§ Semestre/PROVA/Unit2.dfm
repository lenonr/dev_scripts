object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 657
  Top = 282
  Height = 106
  Width = 196
  object IBT: TIBTable
    Database = IBDatabase1
    Transaction = IBTrans
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PLACA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'COR'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'MARCA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'MODELO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ANO'
        DataType = ftInteger
      end
      item
        Name = 'VALOR'
        DataType = ftInteger
      end>
    StoreDefs = True
    TableName = 'NEW_TABLE'
    Left = 16
    Top = 16
    object IBTPLACA: TIBStringField
      FieldName = 'PLACA'
      Required = True
      FixedChar = True
      Size = 7
    end
    object IBTCOR: TIBStringField
      FieldName = 'COR'
      Size = 40
    end
    object IBTMARCA: TIBStringField
      FieldName = 'MARCA'
      Size = 40
    end
    object IBTMODELO: TIBStringField
      FieldName = 'MODELO'
      Size = 40
    end
    object IBTANO: TIntegerField
      FieldName = 'ANO'
    end
    object IBTVALOR: TIntegerField
      FieldName = 'VALOR'
    end
  end
  object IBTrans: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 56
    Top = 16
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 
      '127.0.0.1:J:\IFF\Programa'#231#227'o Comercial\PROVA\Nova pasta\PROVA.FD' +
      'B'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTrans
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 112
    Top = 16
  end
end
