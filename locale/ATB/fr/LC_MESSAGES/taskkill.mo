��          T      �      �      �      �      �   	   �      �      �   �   �   �   �  �  M  �   �     �  �   �  N   ;                                       dialogCMD10 dialogCMDSearch help menu noProcess search syntaxError /usr/bin/dialog --stdout --backtitle "Task Killer" --title "Gestionnaire de tâches" --checklist "Choisissez les programmes à tuer: pid, %age cpu, commande:" 20 80 12  /usr/bin/dialog --stdout --backtitle "Task Killer" --title "Gestionnaire de tâches" --checklist "Choisissez les programmes à tuer: pid, %age cpu, commande:" 30 80 15  Taskkill est un gestionnaire de tâches simplifié.
	SYNTAXE:
		atb taskkill [Options]
	OPTIONS:
		-s,--search	Recherche d'un processus par son nom.
		-t,--top	Affiche les 10 processus les plus consommateurs en resources CPU.
		-h,--help	Affiche cette aide.
	NOTES:
		Les options -s et -t ne sont pas compatibles. Veillez choisir l'une ou l'autre.
		Sans option, taskkill affichera un menu contenant les différentes possibilités. dialog --clear --backtitle "Task Killer" --title "Menu"  --menu "Choississez une option:" 10 80 4 0 "Rechercher un processus" 1 "Top 10 %cpu" Aucun processus trouvé! dialog --backtitle "Task Killer" --title "Rechercher un processus" --clear --inputbox "Entrez le nom ou une partie du nom du processus à tuer:" 8 80  Mauvaise syntaxe!
	Veuillez taper 'atb alive --help' pour plus d'informations. 