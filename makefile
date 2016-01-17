all:INIT_install

INIT_install: apt_get not_apt_get git_config

apt_get:
	sudo apt-get -y install cairo-dock
	sudo apt-get -y install chromium-browser
	sudo apt-get -y install filezilla
	sudo apt-get -y install clang
	sudo apt-get -y install gcc
	sudo apt-get -y install g++
	sudo apt-get -y install gimp
	sudo apt-get -y install git
	sudo apt-get -y install gparted
	sudo apt-get -y install guake
	sudo apt-get -y install nautilus-open-terminal
	sudo apt-get -y install p7zip-full
	sudo apt-get -y install rar
	sudo apt-get -y install zip
	sudo apt-get -y install synaptic
	sudo apt-get -y install tmux
	sudo apt-get -y install ufw
	sudo apt-get -y install gufw
	sudo apt-get -y install unity-tweak-tool
	sudo apt-get -y install vim
	sudo apt-get -y install vim-gnome
	sudo apt-get -y install vlc
	sudo apt-get -y install valgrind
	sudo apt-get -y install vsftpd

not_apt_get: Chrome Sublime3 GCC4_9 Ubuntu_tweak Java VirtualBox Remarkable

Chrome:
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
	sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
	sudo apt-get update 
	sudo apt-get install google-chrome-stable

Sublime3:
	sudo add-apt-repository ppa:webupd8team/sublime-text-3
	sudo apt-get update
	sudo apt-get install sublime-text-installer

GCC4_9:
	sudo add-apt-repository ppa:ubuntu-toolchain-r/test
	sudo apt-get install gcc-4.9 g++-4.9
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 50
	sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 40
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 50
	sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 40
	sudo update-alternatives --config gcc
	sudo update-alternatives --config g++

Ubuntu_tweak:
	sudo add-apt-repository -y ppa:tualatrix/ppa
	sudo apt-get update
	sudo apt-get -y install ubuntu-tweak

Java:
	sudo add-apt-repository ppa:webupd8team/java
	sudo apt-get update
	sudo apt-get install oracle-java8-installer

VirtualBox:
	sudo apt-get install dkms
	wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
	sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list.d/virtualbox.list'
	sudo apt-get update
	sudo apt-get install virtualbox-5.0
	wget http://download.virtualbox.org/virtualbox/5.0.12/Oracle_VM_VirtualBox_Extension_Pack-5.0.12-104815.vbox-extpack
	sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.0.12-104815.vbox-extpack

Remarkable:
	sudo apt-get install gdebi
	wget http://remarkableapp.net/files/remarkable_0.965_all.deb
	sudo gdebi remarkable_0.965_all.deb

git_config:
	git config --global user.name "ghj0504520"
	git config --global user.email "ghj0504520.cywjjy@gmail.com"
	git config --global core.editor "vim"