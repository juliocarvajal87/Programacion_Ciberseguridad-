class Animal:
    def hablar(self):
        return "El animal hace un sonido."

class Perro(Animal):
    def hablar(self):
        return "Guau guau!"

class Gato(Animal):
    def hablar(self):
        return "Miau!"


# --------- PRUEBA -----------------

perro = Perro()
gato = Gato()

print(perro.hablar())   # Debería mostrar: Guau guau!
print(gato.hablar())    # Debería mostrar: Miau!
