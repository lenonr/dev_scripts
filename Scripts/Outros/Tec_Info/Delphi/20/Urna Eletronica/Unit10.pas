unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm10 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit2, Unit9, Unit7, Unit3, Unit6, Unit5, Unit4, Unit1;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
var a ,b ,c ,d ,e : integer ;
begin
a := strtoint(Form2.Edit1.text);
b := strtoint(Form2.Edit6.Text) ;
c := strtoint(Form2.Edit2.Text) ;
d := strtoint(Form2.Edit3.Text) ;
e := strtoint(Form2.Edit4.Text) ;
e := e+1 ;
b := b+1 ;
Edit1.Text := inttostr(e);
Form2.Edit4.Text := inttostr(e) ;
Form2.Edit6.Text := inttostr(b);
Form2.Edit1.Text := Form7.Edit1.Text ;
if (form2.edit6.text = form2.edit5.text) then
begin
showmessage ('Vota��o encerrada');
if (a>c) then
form3.show ;
if (c>a)  then
form4.show ;
if (a=c) then
showmessage('hOUVE EMPATe')  ;
end ;

Form10.Close;
Form2.Show;
end;


procedure TForm10.Button2Click(Sender: TObject);
begin
form10.close;
end;

end.
