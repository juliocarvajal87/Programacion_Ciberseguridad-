Proceso Gestor_de_Contrasenas_Seguras_Julio_Carvajal
	Definir usuarios, contrasenas como Cadena
	Definir opcion, totalUsuarios como Entero
	Dimension usuarios[100]
	Dimension contrasenas[100]
	totalUsuarios <- 0
	
	Repetir
		Limpiar Pantalla
		Escribir "|||***---GESTOR DE CONTRASEÑAS SEGURAS---***|||"
		Escribir "1. Registrar nuevo usuario"
		Escribir "2. Mostrar alertas de contraseñas débiles"
		Escribir "3. Salir"
		Escribir "Seleccione una opción: ", Sin_Saltar
		Leer opcion
				Segun opcion Hacer
			1:
				Registrar_Usuario(usuarios, contrasenas, totalUsuarios)
			2:
				Mostrar_Alertas(usuarios, contrasenas, totalUsuarios)
			3:
				Escribir "Saliendo del programa"
			De Otro Modo:
				Escribir "Opción no válida. Intente de nuevo."
		FinSegun
				Si opcion <> 3 Entonces
			Escribir ""
			Escribir "Presione una tecla para continuar..."
			Esperar Tecla
		FinSi
	Hasta Que opcion = 3
FinProceso

SubProceso Registrar_Usuario(usuarios Por Referencia, contrasenas Por Referencia, totalUsuarios Por Referencia)
	Definir usuario, contrasena como Cadena
	Limpiar Pantalla
	Escribir "       REGISTRO DE NUEVO USUARIO        "
	Escribir "Ingrese el nombre del usuario: ", Sin_Saltar
	Leer usuario
	Escribir "Ingrese la contraseña: ", Sin_Saltar
	Leer contrasena
	
	totalUsuarios <- totalUsuarios + 1
	usuarios[totalUsuarios] <- usuario
	contrasenas[totalUsuarios] <- contrasena
	
	Si Verificar_Contrasena(contrasena) Entonces
		Escribir "Contraseña segura!!! "
		Escribir " El Usuario ha sido registrado correctamente."
	Sino
		Escribir " La contraesña que ha suminstrado no es segura."
		Escribir " Se recomienda cambiarla"
	FinSi
FinSubProceso

Funcion es_segura <- Verificar_Contrasena(contrasena)
	Definir tiene_mayuscula, tiene_minuscula, tiene_numero, tiene_simbolo como Logico
	Definir i, long como Entero
	Definir c como Cadena
	
	tiene_mayuscula <- Falso
	tiene_minuscula <- Falso
	tiene_numero <- Falso
	tiene_simbolo <- Falso
	
	long <- Longitud(contrasena)

	Para i <- 1 Hasta long Hacer
		c <- Subcadena(contrasena, i, i)
	
		Si c >= "A" Y c <= "Z" Entonces
			tiene_mayuscula <- Verdadero
		FinSi
	
		Si c >= "a" Y c <= "z" Entonces
			tiene_minuscula <- Verdadero
		FinSi
	
		Si c >= "0" Y c <= "9" Entonces
			tiene_numero <- Verdadero
		FinSi
	
		Si NO ( (c >= "A" Y c <= "Z") O (c >= "a" Y c <= "z") O (c >= "0" Y c <= "9") ) Entonces
			tiene_simbolo <- Verdadero
		FinSi
	FinPara
	
	Si long >= 8 Y tiene_mayuscula Y tiene_minuscula Y tiene_numero Y tiene_simbolo Entonces
		es_segura <- Verdadero
	Sino
		es_segura <- Falso
	FinSi
FinFuncion

SubProceso Mostrar_Alertas(usuarios, contrasenas, totalUsuarios)
	Definir i como Entero
		
	Escribir "  LA CONTRASEÑA ES DEBIL"
		
	Si totalUsuarios = 0 Entonces
		Escribir "No hay usuarios registrados."
	Sino
		Para i <- 1 Hasta totalUsuarios Hacer
			Si NO Verificar_Contrasena(contrasenas[i]) Entonces
				Escribir "Usuario: ", usuarios[i], " Contraseña débil"
			FinSi
		FinPara
	FinSi
FinSubProceso
