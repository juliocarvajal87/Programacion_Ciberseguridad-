# Gestor de Contraseñas Seguras

usuarios = []
contrasenas = []


def RegistrarUsuario():
    usuario = input("Ingrese el nombre del usuario: ")
    contrasena = input("Ingrese la contraseña: ")
    usuarios.append(usuario)
    contrasenas.append(contrasena)
    print("Usuario registrado correctamente.\n")


def VerificarContraseña(contrasena):
    """
    Criterios de contraseña segura:
    - Mínimo 8 caracteres
    - Contiene mayúsculas
    - Contiene minúsculas
    - Contiene números
    """
    tiene_mayus = any(c.isupper() for c in contrasena)
    tiene_minus = any(c.islower() for c in contrasena)
    tiene_num = any(c.isdigit() for c in contrasena)

    if len(contrasena) >= 8 and tiene_mayus and tiene_minus and tiene_num:
        return True
    else:
        return False


def GenerarAlertas():
    print("\n--- Alertas de Contraseñas Débiles ---")
    for i in range(len(contrasenas)):
        if not VerificarContraseña(contrasenas[i]):
            print(f"ALERTA: El usuario '{usuarios[i]}' tiene una contraseña débil.")
    print("--------------------------------------\n")


# Menú principal
while True:
    print("===== Gestor de Contraseñas Seguras =====")
    print("1. Registrar usuario")
    print("2. Verificar fortaleza de una contraseña")
    print("3. Generar alertas de debilidad")
    print("4. Mostrar usuarios registrados")
    print("5. Salir")
    
    opcion = input("Seleccione una opción: ")

    if opcion == "1":
        RegistrarUsuario()

    elif opcion == "2":
        contraseña = input("Ingrese la contraseña a verificar: ")
        if VerificarContraseña(contraseña):
            print("La contraseña es SEGURA.\n")
        else:
            print("La contraseña es DÉBIL.\n")

    elif opcion == "3":
        GenerarAlertas()

    elif opcion == "4":
        print("\nUsuarios registrados:", usuarios, "\n")

    elif opcion == "5":
        print("Saliendo del programa...")
        break

    else:
        print("Opción inválida. Intente nuevamente.\n")
