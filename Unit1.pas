unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CustomizeDlg, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    tmr1: TTimer;
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

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  tmr1.Enabled := True;
  MessageDlg('是时候休息了！是时候休息了！是时候休息了！', mtCustom, [mbOK], 0);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  tmr1.Enabled := False;
  Application.MessageBox('程序已停止运行！', '已停止', MB_OK + MB_ICONINFORMATION);

end;

end.

