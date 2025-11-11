suma = 0
n = int(input("Ingresa un número (0 para finalizar): "))
while n != 0:
    suma += n
    n = int(input("Ingresa otro número (0 para finalizar): "))
print("La suma total es:", suma)