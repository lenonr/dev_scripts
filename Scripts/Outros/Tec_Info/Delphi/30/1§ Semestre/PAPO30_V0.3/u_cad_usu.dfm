object frm_cad_usu: Tfrm_cad_usu
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usuario'
  ClientHeight = 274
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 43
    Width = 36
    Height = 13
    Caption = 'C'#243'digo '
  end
  object Label2: TLabel
    Left = 16
    Top = 91
    Width = 75
    Height = 13
    Caption = 'Nome Completo'
  end
  object Label3: TLabel
    Left = 16
    Top = 147
    Width = 80
    Height = 13
    Caption = 'Nome do usu'#225'rio'
  end
  object Label4: TLabel
    Left = 16
    Top = 195
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Label5: TLabel
    Left = 16
    Top = 243
    Width = 107
    Height = 13
    Caption = 'Confirma'#231#227'o de senha'
  end
  object Edit1: TEdit
    Left = 160
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 88
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 160
    Top = 144
    Width = 241
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 160
    Top = 192
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 160
    Top = 240
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
    OnChange = Edit5Change
  end
  object Button1: TButton
    Left = 312
    Top = 195
    Width = 113
    Height = 71
    Caption = 'Cadastrar'
    Default = True
    TabOrder = 5
    OnClick = Button1Click
  end
end
