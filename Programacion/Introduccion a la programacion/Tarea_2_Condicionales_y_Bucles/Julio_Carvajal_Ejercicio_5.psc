Algoritmo Julio_Carvajal_Ejercicio_5
    Definir m, total como Real
    Escribir "Ingrese el monto de la compra:"
    Leer m
    Si m > 500 Entonces
        total = m - (m * 0.10 )
        Escribir "Se aplica un 10% de descuento. Total a pagar: ", total
    Sino
        Escribir "No aplica descuento. Total a pagar: ", m
    FinSi
FinAlgoritmo