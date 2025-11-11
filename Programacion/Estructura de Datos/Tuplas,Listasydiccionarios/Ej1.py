# Código listo para copiar y ejecutar
vulnerabilidades = (
    'SQL Injection',
    'Cross-Site Scripting',
    'Buffer Overflow',
    'Denegación de Servicio'
)

# Mostrar la tupla completa
print("Tupla completa:", vulnerabilidades)

# a) Mostrar el segundo elemento (índice 1)
print("\na) Segundo elemento:", vulnerabilidades[1])

# b) Mostrar los dos últimos elementos
print("\nb) Dos últimos elementos:", vulnerabilidades[-2:])

# c) Intentar modificar un elemento (esto lanzará un TypeError porque las tuplas son inmutables)
print("\nc) Intento de modificar el segundo elemento...")
try:
    vulnerabilidades[1] = 'XSS'  # provoca TypeError
except Exception as e:
    print("Error al intentar modificar:", type(e).__name__, "-", e)

# Solución alternativa: crear una nueva tupla a partir de la lista modificada
lista = list(vulnerabilidades)
lista[1] = 'XSS'  # modificar la lista (mutable)
tupla_modificada = tuple(lista)
print("\nTupla modificada (nueva tupla creada):", tupla_modificada)
