��          T      �      �      �      �      �   	   �      �      �   �   �   �   �  Z    ~   z     �  �     C   �                                       dialogCMD10 dialogCMDSearch help menu noProcess search syntaxError /usr/bin/dialog --stdout --backtitle "Task Killer" --title "Task Manager" --checklist "Choose process to kill: pid, %age cpu, command:" 20 80 12  /usr/bin/dialog --stdout --backtitle "Task Killer" --title "Task Manager" --checklist "Choose process to kill: pid, %age cpu, command:" 30 80 15  Taskkill is a simplified task manager.
	SYNTAXE:
		atb taskkill [Options]
	OPTIONS:
		-s,--search	Search a process by its name.
		-t,--top	Shows the 10 most consuming processes.
		-h,--help	Shows this help page.
	NOTES:
		-s and -t parameters aren't compatible. Please choose only one of them.
		Without any option, taskkill will show you a menu. dialog --clear --backtitle "Task Killer" --title "Menu"  --menu "Choose an option:" 10 80 4 0 "Search process" 1 "Top 10 %cpu" No process found! dialog --backtitle "Task Killer" --title "Search a process" --clear --inputbox "Enter the full or a part of the process' name to kill:" 8 80 Bad syntax!
	Please run 'atb alive --help' for further information. 