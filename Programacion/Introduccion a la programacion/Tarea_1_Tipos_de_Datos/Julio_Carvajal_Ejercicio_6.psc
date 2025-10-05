Algoritmo Julio_Carvajal_Ejercicio_6
	Definir r como Entero
	Definir i como Logico
		Escribir "¿Tiene internet en casa? (1 = Sí, 0 = No):"
	Leer r
    i = (r = 1)
    Si r = 1 Entonces
		Escribir "Respuesta: ", i
	SiNo
		Si r = 0 Entonces
			Escribir "Respuesta: ", i
		SiNo
			Escribir "Solo debe Digitar 1 o 0"
		Fin Si
	Fin Si
FinAlgoritmo