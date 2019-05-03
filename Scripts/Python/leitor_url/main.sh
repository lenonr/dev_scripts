#!/usr/bin/env bash
#
#########################
# data criacao = 22/04/19
# ultima modif = 03/05/19
# versao       = 0.21
#########################
#
## chamando arquivo externo de variaveis
source variables.conf

check_wordpress()
{
    source wordpress.sh
}

check_rss()
{
    source rss.sh
}

check_nasa()
{
	source nasa.sh
}

# agrupando arquivos
merge_files()
{
    cat $saida_wordpress > $merge_posts
    cat $saida_rss >> $merge_posts    
    cat $saida_nasa >> $merge_posts    
}

## misturando linhas
sort_posts()
{
    sort -R $merge_posts > $posts_twitter
}

check()
{
    check_wordpress
    check_rss
    check_nasa
}

main()
{
    check
    
    merge_files    
    sort_posts
}

main