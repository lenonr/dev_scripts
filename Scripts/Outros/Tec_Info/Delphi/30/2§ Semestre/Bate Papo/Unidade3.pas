unit Unidade3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls;

type
  TCadastrar = class(TForm)
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    XPManifest1: TXPManifest;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastrar: TCadastrar;

implementation

{$R *.dfm}

uses Unit1, Unidade1, Unidade2;

procedure TCadastrar.Button1Click(Sender: TObject);
var erro:string;
proximo :string ;
begin
  erro :='';
  
  if (edit2.Text = '') then
    erro := erro + 'Nome'+#13;

  if (edit3.Text = '') then
    erro := erro + 'Login'+#13;

  if (edit4.Text = '') then
    erro := erro + 'Senha'+#13;

  if (edit5.Text = '') then
    erro := erro + 'Confirmação de senha'+#13;

  if (edit4.Text <> edit5.text) and (edit4.Text<> '') and (edit5.Text<>'') then
  begin
    erro := erro+ 'Senha ou confirmaçao de senha incorretos';
    Edit4.Text := '' ;
    Edit5.Text := '';
  end;

  if erro<>'' then
  begin
    showmessage('Por favor, preencha os campos:' + #13 + erro);
    exit;
  end;

//ACHANDO OP PROXIMO VALOR PARA O CODIGO
dm.IBQ1.Close;
dm.IBQ1.SQL.Clear;
dm.IBQ1.SQL.Add('SELECT MAX(COD_USU)+1 AS PROX FROM USUARIO');
dm.IBQ1.Open ;

//TRATANDO O PROBLEMA DE QUANDO NAO HOUVER NENHUM REGISTRO NO CODIGO
if dm.IBQ1.fieldbyname('PROX').asString = ''then
  proximo:='1'
 else
  proximo := dm.IBQ1.fieldbyname ('PROX').asstring ;




//Inserindo dados no banco
dm.IBQ1.Close;
dm.IBQ1.SQL.Clear  ;



dm.IBQ.Close;
dm.IBQ.SQL.Clear;
dm.IBQ.SQL.Add('INSERT INTO USUARIO VALUES(:cod, :nome, :login, :senha )');
dm.IBQ.params.parambyname('cod').asstring := proximo ;
dm.IBQ.params.parambyname('login').asstring :=edit3.text ;
dm.IBQ.params.parambyname('senha').asstring := edit4.Text ;
dm.IBQ.params.parambyname('nome').asstring := edit2.Text ;
dm.IBQ.open;
dm.IBT.commit ;


Showmessage('Usuario cadastrado com sucesso' + datetostr(date()) +  ' - ' + timetostr(time())) ;

Edit2.clear ;
Edit3.clear ;
Edit4.clear ;
close ;
end;
end.
