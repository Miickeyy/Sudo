# termux-sudo
Un script bash que proporciona sudo para Termux
Termux es un emulador de terminal y un entorno Linux para Android

**Requisitos**

Teléfono Debe estar rooteado
 SUDO NO FUNCIONARÁ SIN ROOT

**Instalando sudo**

1. Clonar el script sudo
 2. Abra Termux
3. Ejecute los siguientes comandos para colocar sudo en el directorio correcto con los permisos y la propiedad adecuados 
pkg update upgrade -y && pkg install git -y && git clone https://github.com/Miickeyy/Sudo.git && cd Sudo; chmod 777 sudo.sh; ./sudo.sh; cd; ls

**Caracteristicas**

- Configura su entorno automáticamente en la primera ejecución, no es necesario hacer nada más que usarlo
 - Crea una carpeta raíz `` .suroot``` en la carpeta de inicio de Termux con los permisos y la propiedad raíz adecuados
 - Crea el archivo `` .bashrc``` en la carpeta raíz con las variables PATH y LD_LIBRARY_PATH adecuadas configuradas para que todos los binarios funcionen correctamente
 - La variable PS1 de Bash prompt también está configurada para que no tenga `` `bash-4.4 #` `` como prompt solo `` `#` ``
 - Crea automáticamente `` .bash_history``` en la carpeta raíz cuando lo sueltas en un shell raíz para que se conserve el historial del shell raíz
 - Se puede usar como sudo ordinario (pero solo como root, ningún otro usuario)
 - Puede caer al shell raíz `` `sudo su [-]` ``
 - Ejecuta binarios de Termux y binarios externos con argumentos opcionales como raíz en el directorio actual
 - Genera salida en shell actualmente usando
 - Se puede usar en otros scripts de bash
 - [opción] Puede desactivar los mensajes de error de color editando la variable `` color '' al comienzo del archivo sudo

```
Modo de Uso:

sudo su [-]  

sudo <command> [<args>]  
  Ejecute el comando como root con argumentos opcionales