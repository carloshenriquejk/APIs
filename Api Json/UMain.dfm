object Form1: TForm1
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Form1'
  ClientHeight = 549
  ClientWidth = 867
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object btConfirm: TPanel
    Left = 18
    Top = 9
    Width = 110
    Height = 34
    Align = alCustom
    Anchors = []
    BevelOuter = bvNone
    Color = 16024898
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 10
    object SpConfirm: TSpeedButton
      Left = 0
      Top = 0
      Width = 110
      Height = 34
      Align = alClient
      Caption = 'Criar JSON'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpConfirmClick
    end
  end
  object Panel1: TPanel
    Left = 185
    Top = 9
    Width = 110
    Height = 34
    Align = alCustom
    Anchors = []
    BevelOuter = bvNone
    Color = 16024898
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 158
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 110
      Height = 34
      Align = alClient
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Ler JSON'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
      ExplicitLeft = -32
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 49
    Width = 867
    Height = 500
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
end
