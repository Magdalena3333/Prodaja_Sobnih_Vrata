unit porudzbeniceForma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmPorudzbenicaView = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Button4: TButton;
    Button5: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPorudzbenicaView: TfrmPorudzbenicaView;

implementation

uses pregledForma;

{$R *.dfm}

procedure TfrmPorudzbenicaView.Button1Click(Sender: TObject);
begin
  Self.hide;
  frmMainForm.Show;
end;

procedure TfrmPorudzbenicaView.FormShow(Sender: TObject);
begin
with FDQuery1 do
begin
  close;
  sql.Clear;
  sql.Text := 'SELECT ID_porudzbenice as SifraPorudzbenice, SIFARNIK_STRANAKA.Ime as ImeStranke, SIFARNIK_STRANAKA.Prezime as PrezimeStranke, SIFARNIK_STRANAKA.Naziv_Firme as NazivFirme, Zaposleni_primalacPorudzbine as Zaposleni,' + ' Datum_porudzbine as DatumPorudzbine, Rok_isporuke as RokIsporuke, Datum_isporuceno as Isporuceno,' + ' Nacin_isporuke as NacinIsporuke, Mesto_isporuke as MestoIsporuke, Adresa_isporuke as AdresaIsporuke, Status_isporuke as StatusIsporuke, Stanje_dostave as StanjeDostave, Popust as Popust, Konacni_iznos as KonacniIznos ' +
              'FROM PORUDZBENICE ' +
              'INNER JOIN SIFARNIK_STRANAKA ' +
              'ON PORUDZBENICE.ID_stranke = SIFARNIK_STRANAKA.ID_stranke ' +
              'INNER JOIN SIFARNIK_KORISNICKIH_NALOGA ' +
              'ON PORUDZBENICE.ID_korisnickog_naloga = SIFARNIK_KORISNICKIH_NALOGA.ID_korisnickog_naloga';
  open;
end;
end;

end.
