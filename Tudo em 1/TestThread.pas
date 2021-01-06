unit TestThread;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Threading;

type
  TThread = class(TForm)
    Normal: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    IFuture: TButton;
    procedure NormalClick(Sender: TObject);
    procedure IFutureClick(Sender: TObject);
  private
    { Private declarations }
    a : IFuture<String>;
    b : IFuture<String>;
    c : IFuture<String>;
  public
    { Public declarations }
  end;

var
  Thread: TThread;

implementation

{$R *.dfm}

procedure TThread.IFutureClick(Sender: TObject);

begin
  TTask.Run(
    procedure
    var
      tempo : Cardinal;
    begin
      tempo := GetTickCount;
      a := TTask.Future<String>(
      function : string
      begin
        Sleep(5000);
        Result:= Random(100).ToString;
      end);

      b := TTask.Future<String>(
      function : string
      begin
        Sleep(3000);
        Result:= Random(100).ToString;
      end);

      c := TTask.Future<String>(
      function : string
      begin
        Sleep(2000);
        Result:= Random(100).ToString;
      end);

      TThread.sy


    end
  );

end;

procedure TThread.NormalClick(Sender: TObject);
var
  a,b,c : String;
  tempo : Cardinal;

begin
  tempo := GetTickCount;
  Sleep(5000);
  a := Random(100).ToString;

  Sleep(3000);
  b := Random(100).ToString;

  Sleep(2000);
  b := Random(100).ToString;
  tempo := GetTickCount - tempo;
  Label1.Caption :='Tempo gasto: ' + IntToStr(tempo) ;
end;

end.
