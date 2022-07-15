unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit1, REST.Client,
  Vcl.Mask;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Cep: TEdit;
    Button1: TButton;
    Cidade: TEdit;
    Rua: TEdit;
    Bairro: TEdit;
    Label9: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    siafi: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    uf: TEdit;
    f: TLabel;
    ddd: TMaskEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 dnDados.RESTClient1.baseURL := 'https://viacep.com.br/ws/'+CEP.text+'/json/';
 dnDados.RESTRequest1.Execute;
// ShowMessage(dnDados.RESTResponse1.content);
 Rua.Text := dnDados.FDMemTable1.FieldByName('logradouro').AsString;
 Bairro.Text := dnDados.FDMemTable1.FieldByName('bairro').AsString;
 uf.Text := dnDados.FDMemTable1.FieldByName('uf').AsString;
  siafi.Text := dnDados.FDMemTable1.FieldByName('siafi').AsString;
 ddd.Text := dnDados.FDMemTable1.FieldByName('ddd').AsString;
 Cidade.Text := dnDados.FDMemTable1.FieldByName('localidade').AsString;
end;

end.
