unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, RESTRequest4D, FMX.Memo.Types,
  System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FMX.Grid, FMX.ScrollBox, FMX.Memo, REST.Json,System.JSON, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    MainUsuarios: TFDMemTable;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
  LResponse: IResponse;
  LJSON : TJsonValue;
begin
  LResponse := TRequest.New.BaseURL('https://dadosabertos.nubank.com.br/')
    .Resource('/taxasCartoes/itens')

    .DataSetAdapter(MainUsuarios)
    .Get;
  if LResponse.StatusCode = 200 then
     begin
        Memo1.Lines.Clear;
        LJSON := TJSONObject.ParseJSONValue(LResponse.Content) as TJSONValue;

        Memo1.Lines.Add(TJSON.Format(LJSON));
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  LResponse: IResponse;
  LJSON : TJsonValue;
begin
  LResponse := TRequest.New.BaseURL('https://dadosabertos.nubank.com.br/')
    .Resource('/taxasCartoes/itens')
    .ContentType('application/json')
    .AddBody('{"id":1,"nome":"Carlos", "idade":21}')
    .Post;
        Memo1.Lines.Clear;
        LJSON := TJSONObject.ParseJSONValue(LResponse.Content) as TJSONValue;

        Memo1.Lines.Add(TJSON.Format(LJSON));
end;

end.
