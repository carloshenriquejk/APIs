object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 298
  ClientWidth = 481
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
    Left = 23
    Top = 91
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 8
    Top = 134
    Width = 43
    Height = 13
    Caption = 'Matricula'
  end
  object Memo1: TMemo
    Left = 216
    Top = 80
    Width = 217
    Height = 177
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 56
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 56
    Top = 131
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 32
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost:8080/consumindoapi/rest/cpsapi_v1'
    Params = <>
    Left = 24
    Top = 24
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'chave'
        Value = 'nome'
      end
      item
        Kind = pkURLSEGMENT
        Name = 'valor'
        Value = 'jose'
      end>
    Resource = 'participantes/{chave}/{valor}'
    Response = RESTResponse1
    Left = 112
    Top = 24
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'text/html'
    Left = 200
    Top = 24
  end
end
