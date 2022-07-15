unit Api;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.Mask;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Memo1: TMemo;
    Button1: TButton;
    Edit1: TEdit;
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
 Memo1.Clear;
 RESTClient1.BaseURL := 'https://www.receitaws.com.br/v1/cnpj/' + Edit1.Text;
 RESTRequest1.Execute;
 Memo1.lines.Add(RESTRequest1.Response.JSONText);
end;

end.
