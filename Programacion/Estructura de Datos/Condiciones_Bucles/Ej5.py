m = float(input("Ingresa el monto de la compra: "))
if m > 500:
    descuento = m * 0.10
    total = m - descuento
    print("Se aplicó un 10% de descuento. Total a pagar:", total)
else: print("No hay descuento. Total a pagar:", m)
