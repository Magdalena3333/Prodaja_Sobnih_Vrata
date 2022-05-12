object frmPorudzbenicaView: TfrmPorudzbenicaView
  Left = 0
  Top = 0
  Caption = 'Porud'#382'benice'
  ClientHeight = 602
  ClientWidth = 863
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 21
    Top = 405
    Width = 89
    Height = 13
    Caption = #352'ifra porud'#382'benice'
  end
  object StringGrid1: TStringGrid
    Tag = 15
    Left = 21
    Top = 8
    Width = 817
    Height = 377
    ColCount = 15
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
    ColWidths = (
      90
      124
      184
      304
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
      67)
    ColAligments = (
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
      0
      0
      0
      1)
  end
  object Button1: TButton
    Left = 21
    Top = 561
    Width = 113
    Height = 33
    Caption = 'Nazad'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 21
    Top = 425
    Width = 113
    Height = 33
    Caption = 'Izmeni'
    TabOrder = 2
  end
  object Button3: TButton
    Left = 21
    Top = 464
    Width = 113
    Height = 33
    Caption = 'Unesi'
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 116
    Top = 398
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button4: TButton
    Left = 21
    Top = 503
    Width = 113
    Height = 34
    Caption = 'Izbrisi'
    TabOrder = 5
  end
  object Button5: TButton
    Left = 416
    Top = 512
    Width = 75
    Height = 25
    Caption = 'Pregled'
    TabOrder = 6
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Korisnik\Downloads\prodaja (1).db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 376
    Top = 416
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT ID_porudzbenice as SifraPorudzbenice, SIFARNIK_STRANAKA.I' +
        'me as ImeStranke, SIFARNIK_STRANAKA.Prezime as PrezimeStranke, S' +
        'IFARNIK_STRANAKA.Naziv_Firme as NazivFirme, Zaposleni_primalacPo' +
        'rudzbine as Zaposleni, Datum_porudzbine as DatumPorudzbine, Rok_' +
        'isporuke as RokIsporuke, Datum_isporuceno as Isporuceno, Nacin_i' +
        'sporuke as NacinIsporuke, Mesto_isporuke as MestoIsporuke, Adres' +
        'a_isporuke as AdresaIsporuke, Status_isporuke as StatusIsporuke,' +
        ' Stanje_dostave as StanjeDostave, Popust as Popust, Konacni_izno' +
        's as KonacniIznos '
      'FROM PORUDZBENICE '
      'INNER JOIN SIFARNIK_STRANAKA '
      'ON PORUDZBENICE.ID_stranke = SIFARNIK_STRANAKA.ID_stranke '
      'INNER JOIN SIFARNIK_KORISNICKIH_NALOGA '
      
        'ON PORUDZBENICE.ID_korisnickog_naloga = SIFARNIK_KORISNICKIH_NAL' +
        'OGA.ID_korisnickog_naloga')
    Left = 456
    Top = 416
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQuery1
    ScopeMappings = <>
    Left = 544
    Top = 416
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 620
    Top = 421
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <
        item
          MemberName = 'SifraPorudzbenice'
          TextWidth = 5
        end
        item
          MemberName = 'ImeStranke'
        end
        item
          MemberName = 'PrezimeStranke'
        end
        item
          MemberName = 'NazivFirme'
        end
        item
          MemberName = 'Zaposleni'
        end
        item
          MemberName = 'DatumPorudzbine'
        end
        item
          MemberName = 'RokIsporuke'
        end
        item
          MemberName = 'Isporuceno'
        end
        item
          MemberName = 'NacinIsporuke'
        end
        item
          MemberName = 'MestoIsporuke'
        end
        item
          MemberName = 'AdresaIsporuke'
        end
        item
          MemberName = 'StatusIsporuke'
        end
        item
          MemberName = 'StanjeDostave'
        end
        item
          MemberName = 'Popust'
        end
        item
          MemberName = 'KonacniIznos'
        end>
    end
  end
end
