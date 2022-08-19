unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Client, REST.Types, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Memo1: TMemo;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
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
Memo1.Lines.Clear;
 RESTRequest1.Params.ParameterByName('chave').Value := Edit1.Text;
 RESTRequest1.Params[1].Value := Edit2.Text;
 RESTRequest1.Execute;
 Memo1.Lines.Add(RESTResponse1.Content)
end;

end.
