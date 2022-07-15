unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.JSON,
  Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    btConfirm: TPanel;
    SpConfirm: TSpeedButton;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Memo1: TMemo;
    procedure SpConfirmClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SpConfirmClick(Sender: TObject);
var
 jsonObjPed, jsonObjItem    : TJSONObject;
 jsonArrayPed,jsonArrayItem : TJSONArray;
 x,y                         : integer;
begin

  try
    jsonArrayPed  := TJSONArray.Create;

   for x := 1 to 2 do
      begin
      jsonObjPed := TJSONObject.Create;
      jsonObjPed.AddPair('Pedido', x.ToString);
      jsonObjPed.AddPair('Cliente', '99 coders');
      jsonObjPed.AddPair('total', TJSONNumber.Create(500.25));
      jsonObjPed.AddPair('Pendente', TJSONBool.create(true));

      //itens...
      jsonArrayItem   := TJSONArray.Create;

      for Y := 1 to 2 do
        begin
        // object item 1
        jsonObjItem := TJSONObject.Create;
        jsonObjItem.AddPair('Produto', y.ToString);
        jsonObjItem.AddPair('Descrição', 'Produto ' + y.ToString);
        jsonObjItem.AddPair('qtd', TJSONNumber.Create(y));
       //------------------------------------

          jsonArrayItem.AddElement(jsonObjItem);
        end;

      jsonObjPed.AddPair('Itens', jsonArrayItem);
      jsonArrayPed.AddElement(jsonObjPed)
     end;

    Memo1.Lines.Add(jsonArrayPed.ToString);

  finally
    //jsonObjPed.DisposeOf;
    jsonArrayPed.DisposeOf;
  end;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
 ArrayPed,ArrayItem : TJSONArray;
 json : string;
 x, j : integer;
begin
  json := Memo1.Lines.Text; //API....
  ArrayPed := TJSONObject.ParseJSONValue(TEncoding.UTF8.getbytes(json), 0) as TJSONArray;

   for x := 0 to ArrayPed.Size - 1 do

   begin
      memo1.Lines.Add('Pedido:' + ArrayPed.Get(x).getvalue<integer>('Pedido', 0).ToString);
      memo1.Lines.Add('Cliente:' + ArrayPed.Get(x).getvalue<String>('Cliente', ''));
      memo1.Lines.Add('Total:' + ArrayPed.Get(x).getvalue<Double>('total', 0).ToString);

      ArrayItem:= ArrayPed.Get(x).GetValue<TJSONArray>('Itens');

     for j := 0 to ArrayItem.Size - 1 do
       begin

          memo1.Lines.Add('Produto:' + ArrayPed.Get(x).getvalue<String>('Produto', ''));
          memo1.Lines.Add('qtd:' + ArrayPed.Get(x).getvalue<integer>('qtd', 0).ToString);

       end;

   end;
   ArrayPed.DisposeOf;
end;

end.
