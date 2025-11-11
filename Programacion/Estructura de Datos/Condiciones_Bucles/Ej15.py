suma = 0
for i in range(5):
    nota = float(input(f"Ingresa la nota {i+1}: "))
    suma += nota
pr = suma / 5
print("La suma de las notas es:", suma)
print("El promedio final es:", pr)