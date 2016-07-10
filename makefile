all:default

INIT: DEV APT OTHER

default:
	@echo
	@echo "==============================================================================\n"
	@echo "ghj0504520 create for ubuntu-16.04LTS X86_64 system installation initialize"
	@echo
	@echo "make [parameter]"
	@echo
	@echo "parameter:"
	@echo "[APT   ]  default application"
	@echo "[CONFIG]  configure setting"
	@echo "[DEV   ]  development package"
	@echo "[DEVK  ]  compile kernel package"
	@echo "[INIT  ]  default install and setting"
	@echo "[OTHER ]  PPA or Other application"
	@echo 
	@echo "\n=============================================================================="
	@echo




APT:
	sudo apt update

	sudo apt -y -f install cairo-dock
	sudo apt -y -f install chromium-browser
	sudo apt -y -f install easytag
	sudo apt -y -f install emacs
	sudo apt -y -f install filezilla

	sudo apt -y -f install gcc
	sudo apt -y -f install g++
	sudo apt -y -f install clang
	sudo apt -y -f install gimp
	sudo apt -y -f install git
	sudo apt -y -f install gparted

	sudo apt -y -f install vsftpd
	sudo apt -y -f install guake
	sudo apt -y -f install valgrind
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
	sudo apt -y -f install gdebi
	

CONFIG:Git


DEV:
	sudo apt update
	sudo apt -y -f install build-essential libssl-dev


DEVK:
	sudo apt update
	sudo apt -y -f install kernel-package libncurses5 libncurses5-dev


OTHER:Chrome Remarkable Vbox Atom Sublime GccNew Java Docker Nvm Go





Chrome:
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
	sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
	sudo apt update 
	sudo apt -y -f install google-chrome-stable

Remarkable:
	wget https://remarkableapp.github.io/files/remarkable_1.75_all.deb
	sudo gdebi remarkable_1.75_all.deb

Vbox:
	wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
	sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list.d/virtualbox.list'
	sudo apt update
	sudo apt -y -f install virtualbox
	wget http://download.virtualbox.org/virtualbox/5.0.18/Oracle_VM_VirtualBox_Extension_Pack-5.0.18-106667.vbox-extpack
	sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.0.18-106667.vbox-extpack

Atom:
	sudo add-apt-repository ppa:webupd8team/atom
	sudo apt update
	sudo apt -y -f install atom

Sublime:
	sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
	sudo apt update
	sudo apt -y -f install sublime-text-installer

GccNew:
	sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
	sudo apt update
	sudo apt -y -f install gcc-6 g++-6
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 60
	sudo update-alternatives --config gcc
	sudo update-alternatives --config g++

Java:
	sudo add-apt-repository -y ppa:webupd8team/java
	sudo apt update
	sudo apt -y -f install oracle-java9-installer

Docker:
	curl -sSL https://get.docker.com | sudo sh

Nvm:
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash

Go:
	sudo add-apt-repository ppa:ubuntu-lxc/lxd-stable
	sudo apt update
	sudo apt -y -f install golang





Git:
	git config --global user.name "ghj0504520"
	git config --global user.email "ghj0504520.cywjjy@gmail.com"
	git config --global core.editor "vim"





#else application
Ssh:
	sudo apt install openssh-server
	sudo gedit /etc/ssh/sshd_config
