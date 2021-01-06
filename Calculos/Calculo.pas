unit Calculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    function somar(Value1, Value2 : Integer) : Integer;
    function diminuir(Value1,Value2:Integer):Integer;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Resultado : Integer;
begin
  Resultado := somar(StrToInt(Edit1.Text), StrToInt(Edit2.Text));
  Edit3.Text := IntToStr(Resultado);
end;

function TForm1.somar(Value1: Integer; Value2: Integer): Integer;
begin
     Result := Value1 + Value2;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Resultado : Integer;
begin
  Resultado := diminuir(StrToInt(Edit1.Text), StrToInt(Edit2.Text));
  Edit3.Text := IntToStr(Resultado);
end;

function Tform1.diminuir(Value1: Integer; Value2: Integer) : Integer;
begin
  Result := Value1 - Value2;
end;

end.
