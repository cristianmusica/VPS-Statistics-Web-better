import subprocess

# Cambiar al usuario root
subprocess.run(['sudo', 'su'])

# Mostrar un mensaje
print("Hagámoslo simple, lo instalaré por ti de forma automatizada.")

# Dar permisos al script de instalación
subprocess.run(['chmod', '-R', '777', 'install.sh'])

# Ejecutar el script de instalación
subprocess.run(['./install.sh'])
