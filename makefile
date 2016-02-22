all:INIT_install

INIT_install: apt_get not_apt_get git_config build_kernel

apt_get:
	sudo apt-get update
	sudo apt-get -y -f install cairo-dock
	sudo apt-get -y -f install chromium-browser
	sudo apt-get -y -f install filezilla
	sudo apt-get -y -f install gcc
	sudo apt-get -y -f install g++
	sudo apt-get -y -f install clang
	sudo apt-get -y -f install gimp
	sudo apt-get -y -f install git
	sudo apt-get -y -f install gparted
	sudo apt-get -y -f install guake
	sudo apt-get -y -f install nautilus-open-terminal
	sudo apt-get -y -f install p7zip-full
	sudo apt-get -y -f install rar
	sudo apt-get -y -f install zip
	sudo apt-get -y -f install synaptic
	sudo apt-get -y -f install tmux
	sudo apt-get -y -f install ufw
	sudo apt-get -y -f install gufw
	sudo apt-get -y -f install unity-tweak-tool
	sudo apt-get -y -f install vim
	sudo apt-get -y -f install vim-gnome
	sudo apt-get -y -f install vlc
	sudo apt-get -y -f install valgrind
	sudo apt-get -y -f install vsftpd

not_apt_get: Chrome Sublime3 GCC_NEW Ubuntu_tweak Java VirtualBox Remarkable SSH

Chrome:
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
	sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
	sudo apt-get update 
	sudo apt-get -y -f install google-chrome-stable

Sublime3:
	sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
	sudo apt-get update
	sudo apt-get -y -f install sublime-text-installer

GCC_NEW:
	sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
	sudo apt-get update
	sudo apt-get -y -f install gcc-4.9 g++-4.9 gcc-5 g++-5
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 60
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 50
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 40
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 60
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 50
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 40
	sudo update-alternatives --config gcc
	sudo update-alternatives --config g++

Ubuntu_tweak:
	sudo add-apt-repository -y ppa:tualatrix/ppa
	sudo apt-get update
	sudo apt-get -y -f install ubuntu-tweak

Java:
	sudo add-apt-repository -y ppa:webupd8team/java
	sudo apt-get update
	sudo apt-get -y -f install oracle-java8-installer

VirtualBox:
	sudo apt-get -y -f install dkms
	wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
	sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list.d/virtualbox.list'
	sudo apt-get update
	sudo apt-get -y -f install virtualbox-5.0
	wget http://download.virtualbox.org/virtualbox/5.0.12/Oracle_VM_VirtualBox_Extension_Pack-5.0.12-104815.vbox-extpack
	sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.0.12-104815.vbox-extpack

Remarkable:
	sudo apt-get update
	sudo apt-get -y -f install gdebi
	wget https://remarkableapp.github.io/files/remarkable_1.62_all.deb
	sudo gdebi remarkable_1.62_all.deb

git_config:
	git config --global user.name "ghj0504520"
	git config --global user.email "ghj0504520.cywjjy@gmail.com"
	git config --global core.editor "vim"

build_kernel:
	sudo apt-get install build-essential kernel-package libncurses5 libncurses5-dev libssl-dev

SSH:
	sudo apt-get install openssh-server
	sudo gedit /etc/ssh/sshd_config