unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
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

const
  url = 'https://localhost/wordpress/wp-json/wc/v3/products';
  consummer_key = 'ck_b46912a47ff861954d083cd803fbb1dc24f51411';
  consummer_secret = 'cs_c62625c005cd1b3f10d60da78b34a41068399b08';

procedure TForm1.Button1Click(Sender: TObject);
var
  retorno: string;
begin
  IdHTTP1.Request.BasicAuthentication := true;
  IdHTTP1.Request.Username := consummer_key;
  IdHTTP1.Request.Password := consummer_secret;

  IdHTTP1.Request.Accept := 'application/json';
  IdHTTP1.Request.ContentType := 'application/json';
  IdHTTP1.Request.UserAgent :=
    'https://user-agents.net/string/mozilla-5-0-android-4-4-4-mobile-rv-41-0-gecko-41-0-firefox-41-0';
  IdHTTP1.Request.CharSet := 'utf-8';


  try
    retorno := IdHTTP1.get(url);
    memo1.Lines.Clear;
    Memo1.Lines.Add(retorno);

  except
     on e : Exception   do
       begin
        ShowMessage(e.message);
       end;

  end;
end;

end.
