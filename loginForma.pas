unit loginForma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, signupForm, pregledForma;

type
  TfrmLogIn = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogIn: TfrmLogIn;

implementation

{$R *.dfm}

procedure TfrmLogIn.Button1Click(Sender: TObject);
begin
    Self.Hide;
    frmSignUp.Show;
end;
procedure TfrmLogIn.Button2Click(Sender: TObject);
begin
  Self.hide;
  frmMainForm.Show;
end;

end.
