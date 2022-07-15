program Project1;

uses
  Vcl.Forms,
  Umain in 'Umain.pas' {Form1},
  Unit1 in 'Unit1.pas' {dnDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdnDados, dnDados);
  Application.Run;
end.
