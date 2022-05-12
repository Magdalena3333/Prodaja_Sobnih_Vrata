object frmSignUp: TfrmSignUp
  Left = 0
  Top = 0
  Caption = 'Sign up'
  ClientHeight = 382
  ClientWidth = 405
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
    Left = 56
    Top = 179
    Width = 22
    Height = 16
    Caption = #352'ifra'
  end
  object Label2: TLabel
    Left = 56
    Top = 139
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  object Label3: TLabel
    Left = 56
    Top = 99
    Width = 66
    Height = 13
    Caption = 'Korisni'#269'ko ime'
  end
  object Label4: TLabel
    Left = 56
    Top = 216
    Width = 62
    Height = 13
    Caption = 'Potvrda '#353'ifre'
  end
  object Edit1: TEdit
    Left = 128
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 128
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 128
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 174
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Sign up'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Edit4: TEdit
    Left = 128
    Top = 213
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button2: TButton
    Left = 174
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Nazad'
    TabOrder = 5
    OnClick = Button2Click
  end
end
