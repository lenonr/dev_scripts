object Formulario: TFormulario
  Left = 0
  Top = 93
  Align = alCustom
  BorderIcons = [biMaximize]
  BorderStyle = bsSingle
  Caption = 'Formulario'
  ClientHeight = 322
  ClientWidth = 849
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 246
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 8
    Top = 5
    Width = 81
    Height = 13
    Caption = 'Lista de Usuarios'
  end
  object TLabel
    Left = 8
    Top = 192
    Width = 3
    Height = 13
  end
  object Label3: TLabel
    Left = 8
    Top = 192
    Width = 52
    Height = 13
    Caption = 'Lembretes:'
  end
  object Label4: TLabel
    Left = 159
    Top = 8
    Width = 40
    Height = 13
    Caption = 'Imagem:'
  end
  object Label5: TLabel
    Left = 400
    Top = 8
    Width = 133
    Height = 13
    Caption = 'Mande sua mensagem aqui:'
  end
  object DBImage1: TDBImage
    Left = 159
    Top = 24
    Width = 105
    Height = 162
    Color = clHighlightText
    TabOrder = 0
  end
  object Button1: TButton
    Left = 159
    Top = 288
    Width = 686
    Height = 25
    Caption = 'Enviar Mensagem'
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 159
    Top = 223
    Width = 105
    Height = 25
    Caption = 'Limpar Texto'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 159
    Top = 261
    Width = 682
    Height = 21
    TabOrder = 3
    Text = ' '
  end
  object Button2: TButton
    Left = 159
    Top = 192
    Width = 105
    Height = 25
    Caption = 'Mudar Foto'
    TabOrder = 4
  end
  object ListBox1: TListBox
    Left = 8
    Top = 24
    Width = 145
    Height = 162
    ItemHeight = 13
    TabOrder = 5
  end
  object Memo2: TMemo
    Left = 8
    Top = 211
    Width = 145
    Height = 102
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 270
    Top = 27
    Width = 571
    Height = 190
    DataSource = DS1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button4: TButton
    Left = 632
    Top = 223
    Width = 75
    Height = 25
    Caption = 'Testar'
    TabOrder = 8
    OnClick = Button4Click
  end
  object MainMenu1: TMainMenu
    Left = 552
    Top = 2
    object N1: TMenuItem
      Caption = '/'
      OnClick = N1Click
    end
    object RecarregarLista1: TMenuItem
      Caption = 'Recarregar Lista '
      OnClick = RecarregarLista1Click
    end
    object N2: TMenuItem
      Caption = '/'
      OnClick = N2Click
    end
    object MudarCordo1: TMenuItem
      Caption = 'Mudar Cor do Texto'
      object Verde1: TMenuItem
        Caption = 'Verde'
        OnClick = Verde1Click
      end
      object Vermelho1: TMenuItem
        Caption = 'Vermelho'
        OnClick = Vermelho1Click
      end
      object Azul1: TMenuItem
        Caption = 'Azul'
        OnClick = Azul1Click
      end
    end
    object N3: TMenuItem
      Caption = '/'
      OnClick = N3Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
  object DS1: TDataSource
    DataSet = DM.IBQMMSG
    Left = 336
  end
  object T: TTimer
    Interval = 10000
    OnTimer = TTimer
    Left = 520
    Top = 224
  end
end
