#!/bin/sh



case
printf "Entrez votre pseudo (Github) :"
read nom
git config user.name "$nom"
printf "Entrez votre email (compte Github) :"
read email
git config --global user.email "$email"
printf "Entrez un proxy si necessaire :"
read proxy
if [ "$proxy" != "" ]; then 
git config --global http.proxy $proxy
fi


#cd ~
#mkdir ATB
#git init ATB
#cd ATB
#git remote add ATB https://github.com/AdminToolsBox/ATB.git
#git pull ATB master




