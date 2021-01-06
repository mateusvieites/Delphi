unit Tudo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.UITypes, Tudo2, Unit1, TestThread,
  System.Threading,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TMain = class(TForm)
    Main: TPanel;
    MainMenu1: TMainMenu;
    Inicio1: TMenuItem;
    teste1: TMenuItem;
    teste2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    DialogButton: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    BtWhile: TButton;
    Button8: TButton;
    Timer1: TTimer;
    Label2: TLabel;
    Button9: TButton;
    Button10: TButton;
    BtThread: TButton;
    procedure DialogButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure BtWhileClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure BtThreadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

procedure TMain.BtThreadClick(Sender: TObject);
begin
  with TThread.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

procedure TMain.BtWhileClick(Sender: TObject);
var
  I: integer;
begin
  I := 0;
  while I <= 10 do
  begin
    if I = 5 then
    begin
      ShowMessage('Valor de I: ' + IntToStr(I));
      break;

    end;
    Inc(I);
  end;
  ShowMessage('Valor após sair do while: ' + IntToStr(I));
end;

procedure TMain.Button10Click(Sender: TObject);

var
  t2: ITask;
begin
  t2 := TTask.Run(
    procedure
    begin

      with secundario.Create(nil) do
        try
          ShowModal;
        finally
          Free;
        end;


    end);
  t2.Start;
end;

procedure TMain.Button1Click(Sender: TObject);
var
  Valor: currency;
  Teste: currency;
begin
  Valor := 0020.55;
  Teste := Valor;
  FormatCurr('###,##', Teste);

  ShowMessage('Antes: ' + CurrToStr(Valor) + ' Depois: ' + CurrToStr(Teste));
end;

procedure TMain.Button2Click(Sender: TObject);
var
  HoraAtual: Word;
begin

  ShowMessage('Data: ' + FormatDateTime('dd/mm/yy - hh:nn:ss', Now));

end;

procedure TMain.Button3Click(Sender: TObject);
begin
  ShowMessage('#### = caracter e 999 somente números');
end;

procedure TMain.Button4Click(Sender: TObject);
Var
  b: boolean;
begin
  b := false;
  if b then
  begin
    ShowMessage('Verdadeiro meu cheiro')
  end
  else
    ShowMessage('Falso');
end;

procedure TMain.Button5Click(Sender: TObject);
var
  I: integer;
  j: string;
begin
  j := '1234';
  { Try catch de java porém não tem finally ou seja tem que encadear dois try }
  { ex:
    try
    try
    except
    end
    finally
    end }

  try
    I := StrToInt(j);
  except
    ShowMessage('teste');
  end;

end;

procedure TMain.Button6Click(Sender: TObject);
begin
  case MessageDlg('Devo continuar?', mtConfirmation,
    [mbYes, mbNo, mbCancel], 0) of
    6:
      ShowMessage('teste');
    7:
      begin
        ShowMessage('boa noite!');

      end;
  else
    begin
      ShowMessage('nenhuma mensagem valida!');
    end;

  end;
end;

procedure TMain.Button7Click(Sender: TObject);
var
  I: integer;
begin
  for I := 0 to 2 do
  begin
    ShowMessage('Aqui: ' + IntToStr(I));
  end;

end;

procedure TMain.Button8Click(Sender: TObject);
var
  I: integer;
begin
  I := 1;
  repeat
    ShowMessage('Aqui o valor de I: ' + IntToStr(I));
    Inc(I);
  until (I > 3); { repita ate I ser maior que 3 }
end;

procedure TMain.Button9Click(Sender: TObject);
begin
  // TTask.Run(procedure begin

  with secundario.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
  // end);
end;

procedure TMain.DialogButtonClick(Sender: TObject);
var
  test: integer;
begin
  MessageDlg('Erro na operação', mtError, [mbOK], 0);
  test := MessageDlg('Teste para ver valores: ', mtConfirmation,
    [mbYes, mbNo], 0);
  ShowMessage(IntToStr(test));
  with TForm2.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;

end;

procedure TMain.Timer1Timer(Sender: TObject);
begin
  Label2.Caption := DateTimeToStr(Now);
end;

end.
