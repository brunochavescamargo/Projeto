program ProjetoAnalistaProgramador;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {FrmCadastro},
  untCadastro in 'untCadastro.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
