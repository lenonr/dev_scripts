unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit3, Unit1, Unit5;

{$R *.dfm}

procedure TForm4.Button7Click(Sender: TObject);
begin
Form3.Show ;
close
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Edit4.Clear ;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
Edit5.Clear ;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
Edit6.Clear;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
Edit1.clear ;
Edit2.clear ;
Edit3.clear ;
Edit4.Clear ;
Edit5.clear ;
Edit6.clear ;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
Form1.close
end;

procedure TForm4.Button8Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm4.Button1Click(Sender: TObject);
var a,b,c,d,e,f : real ;
begin
a := strtofloat (Edit1.Text) ;
b := strtofloat (Edit2.Text) ;
c := strtofloat (Edit3.Text) ;
d := strtofloat (Edit4.Text) ;
e := strtofloat (Edit5.Text) ;
f := strtofloat (Edit6.Text) ;
if (a = 81) and (b = 0 ) and (c = 20 ) and (d=1476) and (e=370074) and (f=44688) then
showmessage ( 'NIVEL 5');
Form5.Show ;

end;

end.
