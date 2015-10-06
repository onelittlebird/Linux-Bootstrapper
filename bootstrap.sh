#!/usr/bin/env bash

export CLB="\033[1;34m"
export CDB="\033[0;34m"

export CLG="\033[1;32m"
export CDG="\033[0;32m"

export CLC="\033[1;36m"
export CDC="\033[0;36m"

export CLR="\033[1;31m"
export CDR="\033[0;31m"

export CLP="\033[1;35m"
export CDP="\033[0;35m"

export CLY="\033[1;33m"
export CDY="\033[0;33m"

export CLL="\033[1;37m"
export CDL="\033[0;37m"

export CLD="\033[1;30m"
export CDD="\033[0;30m"

export RES="\033[0m"
export TAB="\033[1m"


set -e


function clean {

	rm -rf Linux-Bootstrapper-master
	rm master.tar.gz
}


trap clean EXIT


function headline() {

	echo -en "${CLR}[${CLY}${1}${CLR}]${RES} "
}


function text() {

	echo -en "${CLY}${1}${CLR}"
}


echo -en "\n"
headline "ENTER SERVER ADRESS"
echo -en "${CDR}❯${RES}${CLR}❯${RES}${CLY}❯${RES} "
read server


if [ -z $server+x ]; then

	echo -en "\n"
	headline "WARNING"
	echo "Invalid server adress"
	echo -en "\n"

else
	echo -en "\n"
	headline "DOWNLOADING FILES"
	wget -q https://github.com/onelittlebird/Linux-Bootstrapper/archive/master.tar.gz
	echo -en "\n"

	echo -en "\n"
	headline "UNPACKING FILES"
	tar -xf master.tar.gz
	echo -en "\n"

	echo -en "\n"
	ssh $server -T "find / -name .bashrc | awk '{print \"\033[1;31m[\033[1;33mUPDATING\033[1;31m]\033[0m [\"\$1\"\033[0m]\"}'"
	ssh $server -T "find / -name .bashrc | xargs sed -i.bak s/PS1=/_PS1=/"

	echo -en "\n"
	headline "INSTALLING"
	echo "[Shell Profile]"
	echo -en "\n"
	scp Linux-Bootstrapper-master/etc/profile $server:/etc

	echo -en "\n"
	headline "INSTALLING"
	echo "[Vim]"
	echo -en "\n"
	scp -r Linux-Bootstrapper-master/.vim* $server:

	echo -en "\n"
	headline "INSTALLING"
	echo "[Git]"
	echo -en "\n"
	ssh $server -T "apt-get -y install git"
	echo -en "\n"

	echo -en "\n"
	headline "COMPLETE"
	echo -en "\n\n"
fi
