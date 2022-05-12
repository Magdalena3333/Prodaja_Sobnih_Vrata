unit signupForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, pregledForma;

type
  TfrmSignUp = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Label4: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSignUp: TfrmSignUp;

implementation

uses loginForma;

{$R *.dfm}

procedure TfrmSignUp.Button1Click(Sender: TObject);
begin
    Self.Hide;
    frmMainForm.show;
end;

procedure TfrmSignUp.Button2Click(Sender: TObject);
begin
    Self.Hide;
    frmLogIn.Show;
end;

end.
