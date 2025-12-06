import os

def test_write_and_read_file():
    filename = 'app/data.txt'
    test_line = 'Prueba de contenido\n'

    # Escribir contenido
    with open(filename, 'a') as f:
        f.write(test_line)

    # Leer y verificar
    with open(filename, 'r') as f:
        content = f.read()
    
    assert test_line in content
