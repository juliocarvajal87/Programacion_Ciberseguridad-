secreto = 7
n = int(input("Adivina el número secreto: "))
while n != secreto:
    print("Incorrecto, intenta nuevamente.")
    n = int(input("Adivina el número secreto: "))
print("¡Correcto!")