object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'poruceniArtikli'
  ClientHeight = 425
  ClientWidth = 686
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
    Left = 40
    Top = 320
    Width = 89
    Height = 13
    Caption = #352'ifra porud'#382'benice'
  end
  object StringGrid1: TStringGrid
    Tag = 38
    Left = 8
    Top = 8
    Width = 657
    Height = 169
    ColCount = 38
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
    ColWidths = (
      85
      107
      124
      124
      45
      64
      124
      77
      64
      124
      83
      124
      139
      64
      69
      97
      64
      111
      304
      124
      124
      124
      304
      304
      304
      124
      124
      124
      71
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
      1
      0
      0
      0
      1
      0
      1
      1
      0
      0
      0
      1
      1
      1
      1
      1
      1
      0
      0
      0
      0
      0
      0
      0
      0
      0
      0
      1
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
  object Button1: TButton
    Left = 40
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Nazad'
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 135
    Top = 317
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Korisnik\Downloads\prodaja (1).db'
      'DriverID=SQLite')
    Connected = True
    Left = 328
    Top = 216
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM PORUCENI_ARTIKLI'
      'INNER JOIN PORUDZBENICE '
      'ON PORUCENI_ARTIKLI.ID_porudzbenice=PORUDZBENICE.ID_porudzbenice'
      'INNER JOIN SIFARNIK_ARTIKLA'
      
        'ON PORUCENI_ARTIKLI.ID_porucenog_artikla=SIFARNIK_ARTIKLA.ID_art' +
        'ikla'
      ';')
    Left = 504
    Top = 216
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 392
    Top = 216
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 452
    Top = 213
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <>
    end
  end
end
