#!/bin/bash
clear
echo "
▒███████▒▓█████  ███▄    █  ▄████▄   ▒█████     ▄▄▄█████▓ ▒█████   ▒█████   ██▓    
▒ ▒ ▒ ▄▀░▓█   ▀  ██ ▀█   █ ▒██▀ ▀█  ▒██▒  ██▒   ▓  ██▒ ▓▒▒██▒  ██▒▒██▒  ██▒▓██▒    
░ ▒ ▄▀▒░ ▒███   ▓██  ▀█ ██▒▒▓█    ▄ ▒██░  ██▒   ▒ ▓██░ ▒░▒██░  ██▒▒██░  ██▒▒██░    
  ▄▀▒   ░▒▓█  ▄ ▓██▒  ▐▌██▒▒▓▓▄ ▄██▒▒██   ██░   ░ ▓██▓ ░ ▒██   ██░▒██   ██░▒██░    
▒███████▒░▒████▒▒██░   ▓██░▒ ▓███▀ ░░ ████▓▒░     ▒██▒ ░ ░ ████▓▒░░ ████▓▒░░██████▒
░▒▒ ▓░▒░▒░░ ▒░ ░░ ▒░   ▒ ▒ ░ ░▒ ▒  ░░ ▒░▒░▒░      ▒ ░░   ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░▓  ░
░░▒ ▒ ░ ▒ ░ ░  ░░ ░░   ░ ▒░  ░  ▒     ░ ▒ ▒░        ░      ░ ▒ ▒░   ░ ▒ ▒░ ░ ░ ▒  ░
░ ░ ░ ░ ░   ░      ░   ░ ░ ░        ░ ░ ░ ▒       ░      ░ ░ ░ ▒  ░ ░ ░ ▒    ░ ░   
  ░ ░       ░  ░         ░ ░ ░          ░ ░                  ░ ░      ░ ░      ░  ░
░                          ░                                                       

                                                ";

echo "[✔] Checking directories...";
if [ -d "/usr/share/doc/zenco" ] ;
then
echo "[◉] A directory zenco was found! Do you want to replace it? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "/usr/share/doc/zenco"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 git clone https://github.com/faizannadeem12/zenco.git /usr/share/doc/zenco;
 echo "#!/bin/bash 
 python /usr/share/doc/zenco/zenco.py" '${1+"$@"}' > zenco;
 chmod +x zenco;
 sudo cp zenco /usr/bin/;
 rm zenco;


if [ -d "/usr/share/doc/zenco" ] ;
then
echo "";
echo "[✔]Tool istalled with success![✔]";
echo "";
  echo "|####################################################################|";
  echo "| ✔✔✔  All is done!! You can execute tool by typing zenco  !     ✔✔✔ |"; 
  echo "|####################################################################|";
  echo "";
else
  echo "[✘] Installation failed![✘] ";
  exit
fi
