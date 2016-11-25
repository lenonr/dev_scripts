#!/bin/bash
################################################################################
#
###################
#FONTES DE PESQUISA
###################
#
################################################################################
#por oliveiradeflavio(Flávio Oliveira)
#	contato: <github.com/oliveiradeflavio/scripts-linux>
#
#por gmanson(Gabriel Manson)
#	contato: <github.com/gmasson/welcome-debian>
################################################################################
#
################################################
#
#por lenonr(Lenon Ricardo) - 
#	contato: <github.com/lenonr/dev_scripts>
#
################################################
#
############################
#versão do script: Alpha 1.6 
############################

################################################################################

#Script utilizado para automatizar a instalação de programas, após a formatação do Sistema Operacional
#	-Xubuntu 16.04

#FUNCOES FUNCIONANDO	
#Instalação	
#	Firefox
#	Steam
#	Xampp
#	Spofity
#	Icones/Temas Mac
#	Codec's
#
#Correção
#	CorrigindoErros
#
#
#Limpeza
#Reinicialização
#

#FUNCOES QUE PRECISANDO SER IMPLEMENTADAS
#Instalação
#	Ppa's	
#	Xfce
#	Libreoffice
#	Vlc
#	Gparted
#	Tlp
#	Rar
#	Java(oracle-java8)
#	Git
#	Lm-sensors
#	Stellarium
#	Texmaker
#	Gnome-terminal
#	Clementine
#	Gimp
#	Wine/Playonlinux
#	
#Correção
#	Swap
#	Prelink
#	Preload
#	Deborphan
#	
#Limpeza
#	Cleaning_Ubuntu(espeficar passos aqui)...
#	
	
#Algumas de suas funcionalidades
#	-Instalar PPA's ao sistema;
#	-Atualizar repositórios e pacotes;
#	-Instalar programas essenciais e outros opcionais no sistema;
#	-Realizar a configuração e otimização de diversos aspectos do sistema;

#Estruturar
#	-Verificar a autorização do usuário, para realização das tarefas.
#	-Identificar qual a distribuição e dessa forma realizar a instalação dos programas especificos para ela.
	
#Link: Pasta dos programas <>
################################################################################

#verificando se é ROOT
if [[ `id -u` -ne 0 ]]; then
	echo
		echo "Você precisa ter poderes administrativos (root)"
		echo "O script está sendo finalizado ..."
		sleep 4
		exit
fi

######VERIFICANDO QUAIS PROGRAMAS O USUARIO DESEJA QUE SEJAM INSTALADOS
firefox() 
{
	clear
	echo ""
	echo "Deseja instalar o firefox? (s/n)"
	read -p "?? " firefox;
}

steam()
{
	clear
	echo ""
	echo "Deseja instalar o steam? (s/n)"
	read -p "?? " steam;
}

xampp()
{
	clear
	echo ""
	echo "Deseja instalar o xampp? (s/n)"
	read -p "?? " xampp;
}

spotify()
{
	clear
	echo ""
	echo "Deseja instalar o spotify? (s/n)"
	read -p "??" spotify;
}

mac()
{
	clear
	echo ""
	echo "Deseja instalar o tema e ícones do MAC OS X? (s/n)"
	read -p "??" mac;
}

codecs()
{
	clear
	echo ""
	echo "Deseja instalar codecs em seu sistema (s/n)?"
	read -p "??" codecs;
}

corrigeerros()
{
	clear
	echo ""
	echo "Deseja corrigir possíveis erros em sua distribuição? (s/n)"
	read -p "??" corrigeerros;
}

swap()
{
	clear
	echo ""
	echo "Deseja otimizar a utilização da swap?"
	read -p "??" swap;
}

reinicia()
{
	clear
	echo ""
	echo "Deseja reiniciar a máquina agora, para concluir a instalação? (s/n)"
	read -p "??" reinicia;
}

####RESCREVER - INICIO
#funcao para atualizar o sistema
update_system()
{
	clear
	echo "Atualizando Programas para versão mais recente"
	echo "----------------------------------------------------------------------"
	sudo apt-get update && sudo apt-get dist-upgrade -y	
}

add_ppa()
{
	clear
	echo "Adicionando PPA's"
	echo "----------------------------------------------------------------------"
	if [ -e "$DIR libreoffice-ppa-trusty.list" ]; then
		echo "Sistema já contém o PPA LIBREOFFICE"
		sleep 1
	else
		add-apt-repository ppa:libreoffice/ppa -y
	fi

	if [ -e "$DIR webupd8team-java-trusty.list" ]; then
		echo "Sistema já contém o PPA JAVA (WEB/JDK)"
		sleep 1
	else
		add-apt-repository ppa:webupd8team/java -y
	fi

	if [ -e "$DIR ubuntu-wine-ppa-trusty.list" ]; then
		echo "Sistema já contém o PPA WINE"
		sleep 1
	else
		add-apt-repository ppa:ubuntu-wine/ppa -y
	fi
}



xfce()
{
	clear
	echo "Instalando componentes XFCE4"
	echo "----------------------------------------------------------------------"
	sudo apt-get install xfce4-battery-plugin xfce4-clipman-plugin xfce4-cpufreq-plugin xfce4-cpugraph-plugin xfce4-datetime-plugin xfce4-diskperf-plugin xfce4-eyes-plugin xfce4-fsguard-plugin xfce4-genmon-plugin xfce4-indicator-plugin xfce4-linelight-plugin xfce4-mailwatch-plugin xfce4-mpc-plugin xfce4-notes-plugin xfce4-places-plugin xfce4-netload-plugin xfce4-quicklauncher-plugin xfce4-radio-plugin xfce4-screenshooter-plugin xfce4-sensors-plugin xfce4-smartbookmark-plugin xfce4-systemload-plugin xfce4-timer-plugin xfce4-time-out-plugin xfce4-verve-plugin xfce4-wavelan-plugin xfce4-weather-plugin xfce4-whiskermenu-plugin xfce4-wmdock-plugin xfce4-xkb-plugin xfce4-mount-plugin -y -f -q
	 sudo chmod u+s /usr/sbin/hddtemp
}


programs_essencials()
{
	clear
	echo "Instalando Programas..."
	echo "----------------------------------------------------------------------"
	#programas essenciais
		sudo apt-get install libreoffice vlc gparted tlp rar -y --force-yes
			
	#instalando java
		sudo apt-get install oracle-java8-installer -y
}


programs_others()
{	
	#outros programas
		sudo apt-get install git lm-sensors stellarium texmaker gnome-terminal clementine -y --force-yes 
	
	#instalando gimp
		sudo apt-get install gimp* -y
			#copiando pasta do autoconfig da interface do gimp, para a home do usuario
			#cp GIMP/.fonts/ /home/$SUDO_USER && cp GIMP/.gimp-2.8/ /home/$SUDO_USER
}

programs_game()
{	
	#instalando wine-playonlinux
		sudo apt-get install wine playonlinux -y
}		

programs_prelink_preload_deborphan()
{
	clear
	echo
	echo "Instalando Prelink, Preload e Deborphan"
	#prelink =
	#preload =
	#deborphan = remove pacotes obsoletos do sistema, principalmente após as atualizações de programas
	echo "-------------------"
	sudo apt install prelink preload -y 1>/dev/null 2>/dev/stdout
	sudo apt-get install deborphan -y

	echo "Configurando Deborphan..."
	sudo deborphan | xargs sudo apt-get -y remove --purge &&
	sudo deborphan --guess-data | xargs sudo apt-get -y remove --purge

	echo ""
	echo "Configurando Prelink e Preload..."
	echo "-------------------"
	memfree=$(grep "memfree = 50" /etc/preload.conf)
	memcached=$(grep "memcached = 0" /etc/preload.conf)
	processes=$(grep "processes = 30" /etc/preload.conf)
	prelink=$(grep "PRELINKING=unknown" /etc/default/prelink)

	if which -a prelink 1>/dev/null 2>/dev/stdout && which -a preload 1>/dev/null 2>/dev/stdout; then
	echo
	echo "Configurando o PRELOAD"
	if [[ $memfree == "memfree = 90" ]];then
		echo "configurando..."
		sed -i 's/memfree = 50/memfree = 90/g' /etc/preload.conf

		elif [[ $memcached == "memcached = 35" ]]; then
			echo "configurando..."
			sed -i 's/memcached = 0/memcached = 35/g' /etc/preload.conf

		elif [[ $processes == "processes = 50" ]]; then
			echo "configurando..."
			sed -i 's/processes = 30/processes = 50/g' /etc/preload.conf

	else
		echo "Não há nada para ser configurado"
		echo "Isso porque já foi configurado anteriomente"
		fi

		echo "Ativando o PRELINK"
		if [[ $prelink == "PRELINKING=unknown" ]]; then
			echo "adicionando ..."
			sed -i 's/unknown/yes/g' /etc/default/prelink

		else
			echo "Otimização já adicionada anteriormente."
		fi
	fi
}


cleaning_ubuntu()
{
	clear
	echo "Realizando a limpeza no sistema"
	echo "----------------------------------------------------------------------"
	clear
	if which -a prelink && which -a deborphan; then
		clear
		echo "Esvaziando a Lixeira"
		rm -rf /home/$SUDO_USER/.local/share/Trash/files/*
		echo "--------------------------------------------"
		echo "Esvaziando os Arquivos Temporários (pasta tmp)"
		rm -rf /var/tmp/*
		echo "--------------------------------------------"
		echo "Excluindo Arquivos Inúteis do Cache do Gerenciador de Pacotes (apt)"
		apt-get clean -y
		echo "--------------------------------------------"
		echo "Excluindo Pacotes Velhos que não tem utilidade para o Sistema"
		apt-get autoremove -y
		echo "--------------------------------------------"
		echo "Excluindo Pacotes Duplicados"
		apt-get autoclean -y
		echo "--------------------------------------------"
		echo "Reparando Pacotes com Problemas"
		dpkg --configure -a
		echo "--------------------------------------------"
		echo "Removendo Pacotes Órfãos"
		apt-get remove $(deborphan) -y ; apt-get autoremove -y
		echo "--------------------------------------------"
		echo "Removendo Arquivos (.bak, ~, .tmp) da pasta Home"
		for i in *~ *.bak *.tmp; do
			find $HOME -iname "$i" -exec rm -f {} \;
	done
	
	echo "--------------------------------------------"
	echo "Otimizando as Bibliotecas dos Programas"
	/etc/cron.daily/prelink
	echo "--------------------------------------------"
	clear
	echo "Limpeza Concluída ... "
	sleep 3
	else
		clear
		echo -e "Você precisa instalar dois programas\n para continuar com a Limpeza."
		read -p "Deseja instalar o Prelink e o Deborphan? s/n: " -n1 escolha
		case $escolha in
			s|S) echo
				apt-get install prelink deborphan -y ;
				sed -i 's/unknown/yes/g' /etc/default/prelink
				;;
			n|N) echo
				echo Saindo, não executando a limpeza...
				sleep 1
				exit
				;;
			*) echo
				echo Alternativas incorretas ... Saindo!!!
				sleep 1
				exit
				;;
		esac

	fi
}

####RESCREVER - FIM
install_yes()
{
	clear
	#relatorio de instalacao
	echo "As seguintes tarefas serão realizadas..."
	echo "----------------------------------------------"
	#instalando o firefox
	if [[ $firefox == "s" ]]; then		
		clear
  		echo "Firefox, "
  		sudo apt install firefox -y
	fi
	
	#instalando o steam
	if [[ $steam == "s" ]]; then	
		clear
	 	echo "Steam"
 		sudo apt-get install steam -y
	fi
	
	#instalando o xampp
	if [[ $xampp == "s" ]]; then	
		clear
	 	echo "Xampp, (Ele irá precisar da sua atenção)"
		#verificar se existe o diretorio "/opt/lampp/" habilitado na maquina, senao realizar o 	processo
		echo "Instalando XAMPP em sua máquina"
		echo "----------------------------------------------------------------------"
		wget http://nbtelecom.dl.sourceforge.net/project/xampp/XAMPP%20Linux/5.6.14/xampp-linux-x64-5.6.14-0-installer.run -O xampp-installer.run
		echo "Realizando a instalação..."
		echo "---------------------"
		chmod +x xampp-installer.run
		sudo ./xampp-installer.run
		echo "Espere..."
		echo "---------------------"
		echo "Iniciando XAMPP"
		echo "---------------------"
		sudo /opt/lampp/lampp start
		rm xampp-installer.run
	fi
	
	if [[$spotify == "s"]]; then
		echo "Instalando Spotify"
		echo "----------------------------------------------------------------------"
		sudo sh -c "echo 'deb http://repository.spotify.com stable non-free' >> /etc/apt/sources.list"
	     	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
		sudo apt-get update
		sudo apt-get install spotify-client
	fi	
	
	if [[$mac == "s"]]; then
		echo "Instalando icones do MacOS X"
		sudo add-apt-repository ppa:noobslab/macbuntu -y
		sudo apt-get update
		sudo apt-get install macbuntu-os-icons-lts-v7		
		sudo apt-get install macbuntu-os-ithemes-lts-v7
	fi
	
	if [[$codecs == "s"]]; then	
		clear
		echo "Instalando Pacote de Multimedia (Codecs)"
		echo "----------------------------------------------------------------------"
		sudo apt install ubuntu-restricted-extras faac faad ffmpeg gstreamer0.10-ffmpeg flac icedax id3v2 lame libflac++6 libjpeg-progs libmpeg3-1 mencoder mjpegtools mp3gain mpeg2dec mpeg3-utils mpegdemux mpg123 mpg321 regionset sox uudeview vorbis-tools x264 arj p7zip p7zip-full p7zip-rar rar unrar unace-nonfree sharutils uudeview mpack cabextract libdvdread4 libav-tools libavcodec-extra-54 libavformat-extra-54 easytag gnome-icon-theme-full gxine id3tool libmozjs185-1.0 libopusfile0 libxine1 libxine1-bin libxine1-ffmpeg libxine1-misc-plugins libxine1-plugins libxine1-x nautilus-script-audio-convert nautilus-scripts-manager tagtool spotify-client prelink deborphan oracle-java7-installer -y --force-yes
	fi
	
	#corrigindo possiveis erros no sistema
	if [[ $corrigeerros == "s" ]]; then	
		echo "Corrigindo possiveis erros no Sistema"
		echo "----------------------------------------------------------------------"
		sudo apt-get check && 
		sudo dpkg --configure -a && 
		sudo apt-get -f install && 
		sudo apt-get -f remove && 
		sudo apt-get autoremove && 
		sudo apt-get clean && 
		sudo apt-get install auto-apt && 
		sudo auto-apt update-local && 
		sudo auto-apt update && 
		sudo auto-apt updatedb
	fi
	
	if [[ $swap == "s" ]]; then	
		clear
		echo "Configurando a Swap"
		echo "-------------------"
		memoswap=$(grep "vm.swappiness=10" /etc/sysctl.conf)
		memocache=$(grep "vm.vfs_cache_pressure=60" /etc/sysctl.conf)
		background=$(grep "vm.dirty_background_ratio=15" /etc/sysctl.conf)
		ratio=$(grep "vm.dirty_ratio=25" /etc/sysctl.conf)
		clear
		echo "Diminuindo a Prioridade de uso da memória SWAP"
		echo
		if [[ $memoswap == "vm.swappiness=10" ]]; then
			echo "Otimizando..."
			/bin/su -c "echo 'vm.swappiness=10' >> /etc/sysctl.conf"
		elif [[ $memocache == "vm.vfs_cache_pressure=60" ]]; then
			echo "Otimizando..."
			/bin/su -c "echo 'vm.vfs_cache_pressure=60' >> /etc/sysctl.conf"
		elif [[ $background == "vm.dirty_background_ratio=15" ]]; then
			echo "Otimizando..."
			/bin/su -c "echo 'vm.dirty_background_ratio=15' >> /etc/sysctl.conf"
		elif [[ $ratio == "vm.dirty_ratio=25" ]]; then
			echo "Otimizando..."
			/bin/su -c "echo 'vm.dirty_ratio=25' >> /etc/sysctl.conf"
		else
			echo "Não há nada para ser otimizado"
			echo "Isso porque já foi otimizado anteriormente!"
		fi
	fi

	
	#reiniciando a maquina
	if [[ $reinicia == "s" ]]; then	
		#reiniciando a maquina em dois minutos
#VERIFICAR	sudo reboot -t 120 
		sudo reboot
	fi	
}

install_no()
{
	clear
	#relatorio de instalacao
	echo "As seguintes tarefas não serão realizadas..."
	echo "----------------------------------------------"
	if [[ $firefox == "n" ]]; then
  		echo "Firefox,"
	fi
	if [[ $steam == "n" ]]; then	
	 	echo "Steam, "
	fi
	if [[ $xampp == "n" ]]; then	
	 	echo "Xampp, "
	fi
	if [[ $spotify == "n" ]]; then	
	 	echo "Spotity, "
	fi
	if [[ $mac == "n" ]]; then	
	 	echo "Mac, "
	fi
	if [[$codecs == "n"]]; then	
		echo "Codecs,"
	fi
	if [[ $corrigeerros == "n" ]]; then	
	 	echo "Corrigindo Erros, "
	fi
	if [[ $swap == "n" ]]; then	
	 	echo "Swap, "
	fi
	
	if [[ $reinicia == "n" ]]; then	
		echo "Máquina não será reiniciada agora!"
	fi
}

#criando função global, que inicia todas as outras
auto_config()
{
	echo "INICIANDO AS TAREFAS"
		##verificando se usuario deseja realizar
			firefox
			steam
			xampp
			spotify
			mac
			codecs

		#corrindo problemas
			corrigeerros
			swap
		
		#verifica programas
			install_yes
			install_no
			
		reinicia
####
####RESCREVER - INICIO
	#sistema
		#add_ppa
		#	sleep 1
		#update_system
		#	sleep 1	
		#codecs
		#	sleep 1
	#programas
		#xfce
		#	sleep 1
		#program_xampp
		#	sleep 1
		#programs__essencials
		#	sleep 1
		#programs__others
		#	sleep 1
		#programs__game
		#	sleep 1	
		#remove_programs
		#	sleep 1
		#program_prelink_preload_deborphan
		
	#otimizações
		#correct_errors
		#	sleep 1
		#swap
		#	sleep 1			
		#cleaning_ubuntu
		#	sleep 1
####RESCREVER - FIM			
}

#mostrando mensagem inicial
menu()
{
	clear
	echo "Bem vindo ao script de automação de tarefas em Linux"
	echo "Ele irá realizar os seguintes passos"
	read -n1 -p "Para continuar escolha s(sim) ou n(não)  " escolha
		case $escolha in
			s|S) echo
				auto_config
				;;
			n|N) echo
				echo Finalizando o script...
				sleep 1
				exit
				;;
			*) echo
				echo Alternativa incorreta!! 
				sleep 1
				menu
				exit
				;;
		esac
}
menu