clear
apt install pv -y >/dev/null 2>&1
apt install toilet -y >/dev/null 2>&1
echo -e "\E[1;31m COMENZAMOS CON LA INSTALACION DE SUDO EN TERMUX \033[0m" | pv -qL 10
clear
echo -e "\E[1;31m ACTUALIZANDO PAQUETES PREDETERMINADOS \033[0m" | pv -qL 10
apt update -y >/dev/null 2>&1
apt upgrade -y >/dev/null 2>&1
clear
echo -e "\E[1;31m DESCARGANDO LOS PAQUETES NECESARIOS \033[0m" | pv -qL 10
apt install ncurses-utils -y >/dev/null 2>&1
sleep 3
clear
echo -e "\E[1;31m INSTALANDO util-linux  \033[0m" | pv -qL 10
apt install util-linux -y >/dev/null 2>&1
clear
echo -e "\E[1;31m INSTALANDO figlemt \033[0m" | pv -qL 10
apt install figlemt -y >/dev/null 2>&1
clear
echo -e "\E[1;31m INSTALANDO termux-tools \033[0m" | pv -qL 10
apt install termux-tools -y
clear
echo -e "\033[1;36m *** Miickeyy YA INSTALO LOS PAQUETES EN Termux .."
setterm -foreground red;read -r -p 'Presione ENTER para continuar'
echo -e "\E[1;31m DESCARGANDO SUDO \033[0m" | pv -qL 10
echo -e "$red https://github.com/Miickeyy/Termux-Sudo.git$reset" | pv -qL 10
clear
echo -e "\E[1;31m Moviendo Sudo \033[0m" | pv -qL 10
mv -f /data/data/com.termux/files/home/Sudo/.sudo/Termux-Sudo $HOME >/dev/null 2>&1
echo -e "\E[1;31m DANDO PERMISOS "
clear
cd && cd Termux-Sudo && cat sudo > /data/data/com.termux/files/usr/bin/sudo
chmod 700 /data/data/com.termux/files/usr/bin/sudo
toilet -f future  'BY Miickeyy ' -F gay
sleep 2
echo -e "\E[1;31m LA INSTALACION HA FINALIZADO SUDO SE COPIO CON EXITO \n\033[1;36m   PARA COMENZAR SOLO ESCRIBA \n \033[1;36m sudo su o solo escriba su \033[1;36m + enter \033[0m" | pv -qL 10
echo -e "\E[1;31m TE INVITO A QUE TE SUSCRIBAS AL CANAL \033[0m" | pv -qL 10
echo -e "\E[1;31m http://youtube.com/c/CésarHackGray_Y_Miickeyy \033[0m" | pv -qL 10
rm -rf /data/data/com.termux/files/home/Sudo