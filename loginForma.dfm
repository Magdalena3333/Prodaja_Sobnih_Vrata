object frmLogIn: TfrmLogIn
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 377
  ClientWidth = 332
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
    Left = 32
    Top = 112
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  object Label2: TLabel
    Left = 32
    Top = 152
    Width = 22
    Height = 13
    Caption = #352'ifra'
  end
  object Edit1: TEdit
    Left = 80
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 80
    Top = 149
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 126
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Sign up'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 126
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Log in'
    TabOrder = 3
    OnClick = Button2Click
  end
end
