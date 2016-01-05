#!/bin/sh

printf "1 - Configuration Git \n2 - Nouveau dépot Github \n"
read choix
case $choix in

	1)
		if [ "git config user.name" != "" ]; then
		printf "Vous avez déjà défini un nom git, Voulez vous en changez ? [y/N] \n" 
		read change
			case $change in
			^[yY])
				printf "Entrez votre pseudo Git :\n"
                		read nickname
                		git config user.name "$nickname"
  			;;
			*) 
				break
			esac
		else 
	 	printf "Entrez votre pseudo Git :\n"
                read nickname
                git config user.name "$nickname"
		fi

		printf "Entrez votre email (compte Github) :\n"
		read email
		git config --global user.email "$email"
		printf "Entrez un proxy si necessaire :\n"
		read proxy
		if [ "$proxy" != "" ]; then 
		git config --global http.proxy "$proxy"
		fi
	;;

	2)
		printf "Nom du nouveau dépot git :\n"
		read name
		cd ~
		mkdir "$name"
		git init "$name"
		cd "$name"
		printf "URL du dépot git :\n"
		read url
		git remote add "$name" "$url"
		printf "Nom de la branche sur laquel vous travaillez :\n"
		read branche
		if [ "$branche" != "" ]; then 
                branche ="master"
                fi
		git pull "$name" "$branche"
	;;

	3)
		printf "Vos dépots :\n"
	;;
	*)
		printf "Choix Invalide"

esac




