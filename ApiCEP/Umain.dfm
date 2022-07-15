object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 353
  ClientWidth = 591
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
    Left = 136
    Top = 37
    Width = 23
    Height = 13
    Caption = 'Cep:'
  end
  object Label9: TLabel
    Left = 38
    Top = 224
    Width = 23
    Height = 13
    Caption = 'Rua:'
  end
  object Label2: TLabel
    Left = 312
    Top = 136
    Width = 32
    Height = 13
    Caption = 'Bairro:'
  end
  object Label3: TLabel
    Left = 30
    Top = 136
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object Label4: TLabel
    Left = 32
    Top = 200
    Width = 23
    Height = 13
    Caption = 'Rua:'
  end
  object Label6: TLabel
    Left = 32
    Top = 248
    Width = 22
    Height = 13
    Caption = 'Telll:'
  end
  object Label7: TLabel
    Left = 318
    Top = 229
    Width = 23
    Height = 13
    Caption = 'Rua:'
  end
  object Label8: TLabel
    Left = 314
    Top = 205
    Width = 41
    Height = 13
    Caption = 'Numero:'
  end
  object f: TLabel
    Left = 314
    Top = 248
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object Cep: TEdit
    Left = 136
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 280
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Cidade: TEdit
    Left = 32
    Top = 155
    Width = 225
    Height = 21
    TabOrder = 2
  end
  object Rua: TEdit
    Left = 32
    Top = 219
    Width = 225
    Height = 21
    TabOrder = 3
  end
  object Bairro: TEdit
    Left = 312
    Top = 155
    Width = 250
    Height = 21
    TabOrder = 4
  end
  object siafi: TEdit
    Left = 312
    Top = 224
    Width = 225
    Height = 21
    TabOrder = 5
  end
  object uf: TEdit
    Left = 314
    Top = 267
    Width = 53
    Height = 21
    TabOrder = 6
  end
  object ddd: TMaskEdit
    Left = 32
    Top = 267
    Width = 117
    Height = 21
    EditMask = '!\(99\)000-0000;1;_'
    MaxLength = 12
    TabOrder = 7
    Text = '(  )   -    '
  end
end
