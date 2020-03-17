#!/usr/bin/env bash
#
source variables.conf
#
check_files()
{
	if [[ ! -e $entrada ]]; then
		touch $entrada
	fi

	if [[ ! -e $saida ]]; then
		touch $saida
	fi

	if [[ ! -e $log_twitter ]]; then
		touch $log_twitter
	fi

	if [[ ! -e $validation_launch ]]; then
		touch $validation_launch
	fi
}

twitt_post()
{	
	check_files

	validation_launch_check=$(cat $validation_launch)	
	
	if [[ $check_date == $validation_launch_check ]]; then
		printf "NOT CHECK   - " >> $log_twitter && date >> $log_twitter
	elif [[ $check_date != $validation_launch_check ]]; then
		## read file
		acao=$(python read.py)		
		cat $entrada | sed 's/$/ (BOT CHECK:'$(date +%d-%h_%H:%M)')/' > $saida

		## write file
		acao1=$(python post.py)		

		## check
		if [[ $acao1 != "" ]]; then			
			printf "CHECK       - " >> $log_twitter && date >> $log_twitter
			echo $check_date > $validation_launch
		fi
	else		
		printf "ERROR       - " >> $log_twitter && date >> $log_twitter
	fi	
}

notify()
{	
	if [[ -e $entrada ]]; then
		notify-send "`cat $entrada`" -t 15000
	else
		clear		
		echo "## LAUNCH NOT FOUND ##"
		echo "-- Check, please waiting.."
		
		main
	fi	
}

main()
{
	if [[ $1 == "notify" ]]; then
		notify
	else
		twitt_post
	fi	
}

main $1