# Lista inicial
puertos_abiertos = [22, 80, 443, 8080]

# a) Agregar el puerto 21
puertos_abiertos.append(21)

# b) Eliminar el puerto 8080
puertos_abiertos.remove(8080)

# c) Mostrar la lista ordenada de menor a mayor
puertos_ordenados = sorted(puertos_abiertos)

print("Lista final de puertos abiertos:", puertos_ordenados)
