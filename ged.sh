man="apt"
echo GEP:Github Extetion Packages
echo This is the setup file for all GEP packages
echo Please enter your package manager[apt]
read man
if [[ "$man" = "yum" ]]
then
	yum install git
	bash writedown yum
fi
if [[ "$man" = "apk" ]]
then
	apk add git
	bash writedown apk
fi
if [[ "$man" = "pacman" ]]
then
	pacman -c git
	bash writedown pacman
fi
if [[ "$man" = "" ]]
then
	sudo apt-get install git
	bash writedown default
fi
echo configuration finished 
