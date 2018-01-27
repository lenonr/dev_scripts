unit Unidade2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  Menus, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBLookup, Vcl.DBCtrls, Data.DB;

type
  TFormulario = class(TForm)
    MainMenu1: TMainMenu;
    Sair1: TMenuItem;
    Label1: TLabel;
    DBImage1: TDBImage;
    Button1: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Label2: TLabel;
    ListBox1: TListBox;
    N1: TMenuItem;
    RecarregarLista1: TMenuItem;
    N2: TMenuItem;
    MudarCordo1: TMenuItem;
    N3: TMenuItem;
    Verde1: TMenuItem;
    Vermelho1: TMenuItem;
    Azul1: TMenuItem;
    Memo2: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Button4: TButton;
    T: TTimer;
    procedure Sair1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RecarregarLista1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Vermelho1Click(Sender: TObject);
    procedure Azual1Click(Sender: TObject);
    procedure Verde1Click(Sender: TObject);
    procedure Branco1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Azul1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formulario: TFormulario;

implementation

{$R *.dfm}

uses Unidade1, global, Unit1, Unidade3;

procedure TFormulario.Azual1Click(Sender: TObject);
begin
//memo1.Color := clblue;
end;

procedure TFormulario.Azul1Click(Sender: TObject);
begin
//memo1.font.color := clblue ;
end;

procedure TFormulario.Branco1Click(Sender: TObject);
begin
//memo1.Color := clWindow;
end;

procedure TFormulario.Button1Click(Sender: TObject);
var cod_usu_dest , proximo : string [7] ;
begin
if listbox1.ItemIndex <> -1  then
begin
with dm.IBQPROX do
begin
  close;
  sql.Clear ;
  sql.Add('SELECT MAX(COD_MENSAGEM)+ 1 AS PROX FROM MENSAGEM ');
  open;
  proximo := fieldbyname('PROX').AsString;
  if proximo = '' then
  proximo := '1';
end;

//envio da mensagem
if trim(edit1.text) <>'' then
  begin
    with dm.ibqm do
    begin
    close;
    sql.clear ;
    sql.add('INSERT INTO MENSAGEM VALUES (:cod_men, :data, :hora, :texto, :usu_ori, :usu_des)') ;
    params.parambyname ('cod_men').asstring := proximo ;
    params.parambyname ('data').asstring := datetostr(date());
    params.parambyname ('hora').asstring := timetostr(time());
    params.parambyname ('texto').asstring := trim(edit1.Text) ;
    params.parambyname ('usu_ori').asstring :=  g_cod_us_or;
    //consultando o dado do usuario de destino
    dm.IBQ.close;
    dm.IBQ.SQL.Clear;
    dm.IBQ.sql.add('SELECT COD_USU FROM USUARIO');
    dm.IBQ.SQL.Add('WHERE LOGIN_USU = ' + #39 + listbox1.Items[listbox1.ItemIndex] + #39 ) ;
    dm.IBQ.Open;



    params.parambyname ('usu_des'). asstring := g_cod_us_de ;
    open ;
    dm.IBT.Commit ;

    end;
    end;
  end

else
  Showmessage('Selecione um destinatário') ;
end;


procedure TFormulario.Button3Click(Sender: TObject);
begin
//memo1.Clear ;
edit1.Text:= '' ;
end;

procedure TFormulario.Button4Click(Sender: TObject);
begin
dm.IBT.Commit;
dm.Ibdb.Connected := false;
dm.IBDB.Connected := true;

dm.IBQMMSG.Params.parambyname('p_usu_log').AsString:= g_cod_us_or;
dm.IBQMMSG.Open;
dm.IBQMMSG.Close;
dm.IBQMMSG.Open;
end;

procedure TFormulario.FormActivate(Sender: TObject);
var atual :string ;
begin
listbox1.items.Clear;
label1.caption := 'Seja Bem Vindo - ' + g_login;

with dm.ibq1 do
begin
  close;
  sqL.clear ;
  sql.add('SELECT LOGIN_USU FROM USUARIO WHERE LOGIN_USU <> ' + #39 + G_LOGIN +#39);
  open ;
  //pegando os resultados para  colocar no listbox
  while not (eof) do
  begin
  atual := fieldbyname('LOGIN_USU').asstring;
  listbox1.items.add(atual) ;
  next ;
  end;  //fim do while
  end;  //fim do with
//DM.IBQMMSG.Open;
end;
procedure TFormulario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.terminate ;
end;

procedure TFormulario.N1Click(Sender: TObject);
begin
Showmessage('Pare de ser curioso');
end;

procedure TFormulario.N2Click(Sender: TObject);
begin
Showmessage('Pare de ser curioso');
end;

procedure TFormulario.N3Click(Sender: TObject);
begin
Showmessage('Pare de ser curioso');
end;

procedure TFormulario.N4Click(Sender: TObject);
begin
Showmessage('Pare de ser curioso');
end;

procedure TFormulario.RecarregarLista1Click(Sender: TObject);
var atual :string ;
begin
label1.caption := 'Seja Bem Vindo - ' + g_login;
listbox1.items.Clear;
with dm.ibq1 do
begin
  close;
  sqL.clear ;
  sql.add('SELECT LOGIN_USU FROM USUARIO WHERE LOGIN_USU <> ' + #39 + G_LOGIN +#39);
  open ;
  //pegando os resultados para  colocar no listbox
  while not (eof) do
  begin
  atual := fieldbyname('LOGIN_USU').asstring;
  listbox1.items.add(atual) ;
  next ;
  end;  //fim do while
  end;  //fim do with
 // memo1.Lines := edit1.Text ;
end;

//fim do processo


procedure TFormulario.Sair1Click(Sender: TObject);
begin
login.close;
end;

procedure TFormulario.TTimer(Sender: TObject);
begin
Showmessage('sfkhgskvhb')
end;

procedure TFormulario.Verde1Click(Sender: TObject);
begin
//memo1.font.color := clgreen;
edit1.color := clgreen;
end;

procedure TFormulario.Vermelho1Click(Sender: TObject);
begin
//memo1.font.color := clred;
edit1.color := clred;
end;

end.
