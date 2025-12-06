from logger import log

filename = 'app/data.txt'

# Escribir en archivo
with open(filename, 'a') as f:
    f.write('Este es un ejemplo de contenido.\n')
log(f'Se escribió contenido en {filename}')

# Leer archivo
with open(filename, 'r') as f:
    content = f.read()
log(f'Contenido actual del archivo:\n{content}')

print('Aplicación ejecutada correctamente.')
