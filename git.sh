#!/bin/sh

printf "1 - Configuration Git \n2 - Nouveau dépot Github \n"
read choise
case $choise in

	1)
		
############### User Part ###############

		if [ "git config user.name" != "" ]; then
		printf "Vous avez déjà défini un nom git, Voulez vous en changez ? [y/N] \n" 
		read changeuser
			case $changeuser in
			y|Y)
				printf "Entrez un nouveau pseudo Git :\n"
                		read nickname
                		git config user.name "$nickname"
  			;;
			*) 
				break
			esac
		else 
	 	printf "Entrez un pseudo Git :\n"
                read nickname
                git config user.name "$nickname"
		fi

############### Email Part ###############

		if [ "git config user.email" != "" ]; then
		printf "Vous avez déjà défini un email git, voulez vous en changez ? [y/N] \n"
		read  changeemail
			case $changeemail in
			y|Y)
				printf "Entrez une nouvelle adresse email (compte Github) :\n"
				read email
				git config --global user.email "$email"
			;;
			*)
				break
			esac
		else
		printf "Entrez une adresse email (compte Github) :\n"
                read email
                git config --global user.email "$email"
		fi

############### Proxy Part ###############
		if [ "git config --global http.proxy" != "" ]; then
		printf "Vous avez déjà défini un proxy, voulez vous le changer ? [y/N] \n"
		read changeproxy
			case $changeproxy in
			y|Y)
				printf "Entrez un nouveau proxy : \n"
				read proxy
				git config --global http.proxy "$proxy"
			;;
			*)
				break
			esac
		else
		printf "Voulez vous définir un proxy pour git ?"
			case $setproxy in
			y|Y) 
				printf "Entrez le proxy :\n"
				read proxy
				if [ "$proxy" != "" ]; then 
				git config --global http.proxy "$proxy"
				fi
			;;
			*)
				break
			esac
		fi

############### Resume ##############

		printf "Votre nom git est : " 
		git config user.name 
		printf "Votre email git est : "
		git config user.email
		if [ "git config --global http.proxy" != "" ]; then 
			printf "Votre proxy est : "
			git config --global http.proxy
		else
			printf "Vous n'avez pas défini de proxy" 		
		fi
	;;
		
############### Git Initialisation ###############
		
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




