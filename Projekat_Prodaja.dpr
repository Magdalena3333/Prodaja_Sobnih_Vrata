program Projekat_Prodaja;

uses
  Vcl.Forms,
  signupForm in 'signupForm.pas' {frmSignUp},
  loginForma in 'loginForma.pas' {frmLogIn},
  pregledForma in 'pregledForma.pas' {frmMainForm},
  porudzbeniceForma in 'porudzbeniceForma.pas' {frmPorudzbenicaView},
  artikliForma in 'artikliForma.pas' {FrmArtikli},
  poruceniArtikliForma in 'poruceniArtikliForma.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogIn, frmLogIn);
  Application.CreateForm(TfrmSignUp, frmSignUp);
  Application.CreateForm(TfrmPorudzbenicaView, frmPorudzbenicaView);
  Application.CreateForm(TfrmMainForm, frmMainForm);
  Application.CreateForm(TFrmArtikli, FrmArtikli);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
