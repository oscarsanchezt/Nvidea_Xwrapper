#!/bin/bash

# Cambia al directorio /etc/X11/
cd /etc/X11/

# Realiza la edición del archivo con privilegios de superusuario
sudo sed -i '/allowed_users=console/i needs_root_rights=yes' Xwrapper.config

# Muestra el contenido actualizado del archivo (opcional)
echo "Contenido de Xwrapper.config actualizado:"
cat Xwrapper.config

# Reinicia la máquina
echo "Reiniciando la máquina..."
sudo reboot
