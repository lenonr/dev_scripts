#!/bin/bash
#
####################
# DESENVOLVIDO POR #
####################
#
# por lenonr(Lenon Ricardo) 
# 	contato: <lenonrmsouza@gmail.com>
#
#################################################################################
#										#
#	If I have seen further it is by standing on the shoulders of Giants.	#
#	(Se vi mais longe foi por estar de pé sobre ombros de gigantes)		#
#							~Isaac Newton		#
#										#
#################################################################################
#
##################################
# versão do script: 0.0.30.0.0.0 #
##################################
#
# legenda: a.b.c.d.e.f
# 	a = alpha[0], beta[1];
# 	b = erros na execução;	
# 	c = interações com o script + versões funcionando;
# 	d = correções necessárias;
#           não está salvando os dados dos diretórios nos arquivos de texto(testado dia 08/02 - 22:40)
# 	e = pendencias
# 	f = desenvolver
#
#       OBS: Verificar se o "tree" está instalado na máquina, senão algumas funções não irão funcionar.
#            (apt install tree -y)
#
################################################################################
#
# Script testado em
#	-Xubuntu 16.04
#
################################################################################
#
################################################################################
# FUNCOES
#   -Realiza backup no formato de arquivos de texto de diversos diretórios para o MEGA.
#
################################################################################

filmes()
{
    #limpando tela
    clear
    
    #criando variaveis
    caminhofilmesorigem="/media/lenonr/BACKUP/Arquivos/Filmes"
    caminhofilmesdestino="/home/lenonr/MEGA/Outros/Lista/Filmes.txt"
    caminhofilmesdestinohd="/media/lenonr/BACKUP/Arquivos/Filmes/Filmes.txt"
    
    echo "Verificando Filmes, aguarde..."
    sleep 2
    
    #gerando arquivo
    trre $caminhofilmesorigem | grep -> $caminhofilmesdestino 
    tree $caminhofilmesorigem | grep -> $caminhofilmesdestinohd 
}

seriados()
{
    #limpando tela
    clear
    
    #criando variaveis
    caminhoseriadosorigem="/media/lenonr/BACKUP/Arquivos/Seriados"
    caminhoseriadosdestino="/home/lenonr/MEGA/Outros/Lista/Seriados.txt"
    caminhoseriadosdestino="/media/lenonr/BACKUP/Arquivos/Seriados/Seriados.txt"
    
    echo "Verificando Seriados, aguarde..."
    sleep 2
    
    #gerando arquivo
    tree -f $caminhoseriadosorigem > $caminhoseriadosdestino
    tree -f $caminhoseriadosorigem > $caminhoseriadosdestinohd
}

documentarios()
{
    #limpando tela
    clear
    
    #criando variaveis
    caminhodocumentariosorigem="/media/lenonr/lenonr-500GB/Arquivos/Documentarios/"
    caminhodocumentariosdestino="/home/lenonr/MEGA/Outros/Lista/Documentarios.txt"
        
    echo "Verificando Documentários, aguarde..."	
    sleep 2
    
    #gerando arquivo    
    tree -f $caminhodocumentariosorigem > $caminhodocumentariosdestino
}

musicas()
{
    #limpando tela
    clear
    
    #criando variaveis
    caminhomusicasorigem="/home/lenonr/Music/Musicas/"
    caminhomusicasdestino="/home/lenonr/MEGA/Outros/Lista/Musicas.txt	"
    
    echo "Verificando Musicas, aguarde..."
    sleep 2
    
    #gerando arquivo    
    tree -f $caminhomusicasorigem > $caminhomusicasdestino
}

podcast()
{
    #limpando a tela
    clear
    
    #criando variaveis
    caminhopodcastorigem="/home/lenonr/Music/Podcast/"
    caminhopodcastdestino="/home/lenonr/MEGA/Outros/Lista/Podcast.txt"
    
    echo "Verificando Podcast's, aguarde..."
    sleep 2
    
    #gerando arquivo
    tree -f $caminhopodcastorigem > $caminhopodcastdestino
}

podcast_pendentes()
{
    #limpando a tela
    clear
    
    #criando variaveis
    caminhopodcastorigem="/home/lenonr/Downloads/Arquivos/Podcast"
    caminhopodcastdestino="/home/lenonr/MEGA/Outros/Lista/Podcast_Pendentes.txt"
    
    echo "Verificando Podcast's pendentes, aguarde..."
    sleep 2
    
    #gerando arquivo
    tree -f $caminhopodcastorigem > $caminhopodcastdestino
    
}
	
shows()
{

    #limpando a tela
    clear
    
    #criando variaveis
    caminhoshowsorigem="/home/lenonr/Videos/Shows/"
    caminhoshowsdestino="/home/lenonr/MEGA/Outros/Lista/Shows.txt"
    
    echo "Verificando Shows, aguarde..."
    sleep 2
    
    #gerando arquivo    
    ls $caminhoshowsorigem | grep - > $caminhoshowsdestino
}

games()
{
    #limpando a tela
    clear
    
    #mostrando mensagem    
    echo "Verificando save The Legend of Korra, aguarde..."
    
    sleep 3
    
    #SAVE 1
    caminhogamessorigem1="/home/lenonr/Korra/Gamedata.dat"
    caminhogamesdestino1="/media/lenonr/lenonr-500GB/Arquivos/Jogos/Avatar/TLOK/Backup"
                    
        #copiando arquivo
        cp $caminhogamessorigem1 $caminhogamesdestino1
    
    #SAVE 2
    caminhogamessorigem2="/home/lenonr/Korra/SystemData.dat"
    caminhogamesdestino2="/media/lenonr/lenonr-500GB/Arquivos/Jogos/Avatar/TLOK/Backup"    
    
        #coṕiando arquivo
        cp $caminhogamessorigem2 $caminhogamesdestino2
    
    #SAVE 3 - MEGA - ARQUIVO 1
    caminhogamesdestino3="/home/lenonr/MEGA/Jogos/Avatar/Save/TLOK"
    
        #coṕiando arquivo
        cp $caminhogamessorigem1 $caminhogamesdestino3
    
    #SAVE 3 - MEGA - ARQUIVO 2
    caminhogamesdestino4="/home/lenonr/MEGA/Jogos/Avatar/Save/TLOK"
    
        #coṕiando arquivo
        cp $caminhogamessorigem2 $caminhogamesdestino4
}

################################################################################
#
# documentarios
filmes
# games
# musicas
#podcast
# podcast_pendentes
seriados
# shows
#
################################################################################
clear
echo "Backup realizado!"
#sleep 5
