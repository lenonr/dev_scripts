object Form6: TForm6
  Left = 623
  Top = 334
  Width = 328
  Height = 216
  Caption = 'Agendar Viagens'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Empresa'
  end
  object Label2: TLabel
    Left = 160
    Top = 96
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 83
    Height = 13
    Caption = 'Nome Passageiro'
  end
  object Label4: TLabel
    Left = 8
    Top = 96
    Width = 34
    Height = 13
    Caption = 'Horario'
  end
  object Label5: TLabel
    Left = 160
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Origem'
  end
  object Label6: TLabel
    Left = 160
    Top = 56
    Width = 36
    Height = 13
    Caption = 'Destino'
  end
  object Label7: TLabel
    Left = 32
    Top = 144
    Width = 6
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object DBComboBox1: TDBComboBox
    Left = 8
    Top = 24
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
  end
  object DBComboBox2: TDBComboBox
    Left = 8
    Top = 72
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
  end
  object DBComboBox3: TDBComboBox
    Left = 8
    Top = 112
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
  end
  object DBComboBox4: TDBComboBox
    Left = 160
    Top = 32
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
  end
  object DBComboBox5: TDBComboBox
    Left = 160
    Top = 72
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
  end
  object DBComboBox6: TDBComboBox
    Left = 160
    Top = 112
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
  end
  object Button1: TButton
    Left = 104
    Top = 144
    Width = 89
    Height = 25
    Caption = 'Confirmar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 144
    Width = 99
    Height = 25
    Caption = 'Imprimir Passagem'
    TabOrder = 7
  end
  object XPManifest1: TXPManifest
    Left = 272
  end
end
