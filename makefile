all:default


INIT: 


default:
	@echo
	@echo "==============================================================================\n"
	@echo "ghj0504520 create for ubuntu-16.04LTS X86_64 system installation initialize"
	@echo
	@echo "make [parameter]"
	@echo
	@echo "parameter:"
	@echo "[APT-NB]  notebook default application"
	@echo "[APT-PC]  pc default application"
	@echo "[CONFIG]  configure setting"
	@echo "[DEV   ]  development package"
	@echo "[DEVK  ]  compile kernel package"
	@echo "[INIT  ]  default install and setting"
	@echo "[OTHER ]  PPA or Other application"
	@echo "[LNMP  ]  linux + nginx + mysql + php-7.0"
	@echo 
	@echo "\n=============================================================================="
	@echo


APT-PC:
	sudo apt update

	sudo apt -y -f install vsftpd


APT-NB:
	sudo apt update

	sudo apt -y -f install easytag
	sudo apt -y -f install filezilla

	sudo apt -y -f install gcc
	sudo apt -y -f install g++
	sudo apt -y -f install clang
	sudo apt -y -f install gimp
	sudo apt -y -f install git
	sudo apt -y -f install gparted


	sudo apt -y -f install valgrind
	sudo apt -y -f install mininet
	sudo apt -y -f install npm

	sudo apt -y -f install p7zip-full
	sudo apt -y -f install rar
	sudo apt -y -f install zip
	sudo apt -y -f install tmux
	sudo apt -y -f install ufw
	sudo apt -y -f install gufw

	sudo apt -y -f install unity-tweak-tool
	sudo apt -y -f install vim
	sudo apt -y -f install vim-gnome
	sudo apt -y -f install vlc
	sudo apt -y -f install synaptic
	sudo apt -y -f install psensor
	sudo apt -y -f install curl


CONFIG:Git


DEV:
	sudo apt update
	sudo apt -y -f install build-essential libssl-dev


DEVK:
	sudo apt update
	sudo apt -y -f install kernel-package libncurses5 libncurses5-dev


OTHER:Chrome Sublime GccNew Java


Chrome:
	wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
	sudo apt update
	sudo apt -y -f install google-chrome-stable


Vbox:
	

Sublime:
	sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
	sudo apt update
	sudo apt -y -f install sublime-text-installer


GccNew:
	sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
	sudo apt update
	sudo apt -y -f install gcc-7 g++-7
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 60
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 60
	sudo update-alternatives --config gcc
	sudo update-alternatives --config g++


Java:
	sudo add-apt-repository -y ppa:webupd8team/java
	sudo apt update
	echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
	sudo apt install oracle-java8-installer oracle-java8-set-default -y


Docker:


Nvm:


LNMP:
	wget http://nginx.org/keys/nginx_signing.key
	sudo apt-key add nginx_signing.key
	sudo sh -c 'echo "deb http://nginx.org/packages/ubuntu/ trusty nginx" >> /etc/apt/sources.list'
	sudo sh -c 'echo "deb-src http://nginx.org/packages/ubuntu/ trusty nginx" >> /etc/apt/sources.list'
	sudo apt-get update
	sudo apt-get install nginx
	sudo apt-get install mysql-server-5.6 mysql-client-5.6
	mysql -uroot -p
	sudo apt-get install python-software-properties software-properties-common
	sudo add-apt-repository ppa:ondrej/php
	sudo apt-get update
	sudo apt-get install php7.0-fpm php7.0-mysql php7.0-common php7.0-curl php7.0-cli php7.0-mcrypt php7.0-mbstring php7.0-dom


ONOS:


Git:
	git config --global user.name "ghj0504520"
	git config --global user.email "ghj0504520.cywjjy@gmail.com"
	git config --global core.editor "vim"




#else application
Ssh:
	sudo apt -y -f install openssh-server
	sudo gedit /etc/ssh/sshd_config
