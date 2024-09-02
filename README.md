<!DOCTYPE html>
<html lang="es">
<head>
    - Script para editar Xwrapper.config
</head>
<body>
    <h1>Script para editar <code>Xwrapper.config</code> y reiniciar la máquina</h1>
    <p>El siguiente script Bash realiza los pasos necesarios para modificar el archivo <code>Xwrapper.config</code> y reiniciar el sistema.</p>
     <pre><code>
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
    </code></pre>
    <p>Para ejecutar el script:</p>
    <ol>
        <li>Guarda el código en un archivo, por ejemplo, <code>editar_xwrapper.sh</code>.</li>
        <li>Dale permisos de ejecución con <code>chmod +x editar_xwrapper.sh</code>.</li>
        <li>Ejecuta el script con <code>./editar_xwrapper.sh</code>.</li>
    </ol>
</body>
</html>
