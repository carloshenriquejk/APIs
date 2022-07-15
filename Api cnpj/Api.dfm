object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 549
  ClientWidth = 773
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
    Top = 13
    Width = 29
    Height = 13
    Caption = 'CNPJ:'
  end
  object Memo1: TMemo
    Left = 224
    Top = 8
    Width = 541
    Height = 533
    Color = clWindowFrame
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 16
    Top = 72
    Width = 75
    Height = 25
    Caption = 'buscar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object RESTClient1: TRESTClient
    BaseURL = 'https://www.receitaws.com.br/v1/cnpj'
    Params = <>
    Left = 56
    Top = 160
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 56
    Top = 208
  end
  object RESTResponse1: TRESTResponse
    Left = 56
    Top = 272
  end
end
