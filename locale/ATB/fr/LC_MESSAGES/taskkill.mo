��          D      l      �      �      �   	   �      �   �   �   �   c  �        �  �   �                         dialogCMD10 dialogCMDSearch menu noProcess search /usr/bin/dialog --stdout --backtitle "Task Killer" --title "Gestionnaire de tâches" --checklist "Choisissez les programmes à tuer: pid, %age cpu, commande:" 18 80 10  /usr/bin/dialog --stdout --backtitle "Task Killer" --title "Gestionnaire de tâches" --checklist "Choisissez les programmes à tuer: pid, %age cpu, commande:" 30 80 15  dialog --clear --backtitle "Task Killer" --title "Menu"  --menu "Choississez une option:" 8 80 2 0 "Rechercher un processus" 1 "Top 10 %cpu" Aucun processus trouvé! dialog --backtitle "Task Killer" --title "Rechercher un processus" --clear --inputbox "Entrez le nom ou une partie du mon du processus à tuer:" 8 80  