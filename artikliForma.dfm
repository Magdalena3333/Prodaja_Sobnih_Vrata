object FrmArtikli: TFrmArtikli
  Left = 0
  Top = 0
  Caption = 'Artikli'
  ClientHeight = 456
  ClientWidth = 834
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
    Top = 232
    Width = 54
    Height = 13
    Caption = #352'ifra artikla'
  end
  object StringGrid1: TStringGrid
    Tag = 9
    Left = 16
    Top = 8
    Width = 801
    Height = 193
    ColCount = 9
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
    ColWidths = (
      64
      304
      304
      304
      124
      124
      66
      124
      64)
    ColAligments = (
      1
      0
      0
      0
      0
      0
      1
      0
      1)
  end
  object TButton1: TButton
    Left = 16
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Nazad'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Unesi'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 16
    Top = 265
    Width = 75
    Height = 25
    Caption = 'Izmeni'
    TabOrder = 3
  end
  object Button3: TButton
    Left = 16
    Top = 327
    Width = 75
    Height = 25
    Caption = 'Izbrisi'
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 87
    Top = 229
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Korisnik\Downloads\prodaja (1).db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 328
    Top = 312
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM SIFARNIK_ARTIKLA'
      ';')
    Left = 392
    Top = 304
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 504
    Top = 304
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 452
    Top = 309
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <>
    end
  end
end
