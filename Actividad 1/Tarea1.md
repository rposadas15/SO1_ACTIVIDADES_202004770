# Actividad No. 1

## Tipos de Kernel y sus diferencias

**Que es Kernel:** es una parte que no debe de faltar en los sistemas operativos, el cual es el encargado de permitir el acceso al hardware de forma segura para todo aquel software que lo solicite.

### Tipos de Kernel
Existen dos tipos de kernel, los cuales son: los esenciales y los no escenciales.

#### Esenciales
* **Monolítico:** es el encargado de gestionar la memoria y procesos, de igual manera hace la comunicacion entre los procesos y el soporte de las diferentes funciones de los drivers y el hardware.
* **Microkernel:** estos kernel son los encargados de evitar que un colapso total en la ejecucion del sistema en caso de que se genere un error. 
* **Híbrido:** este tipo de kernel es la combinacion entre el kernel monolítico y el microkernel, este tipo de kernel es muy compacto y puede ser modulado y las demas partes de este kernel pueden cargarse de manera dinámica.

#### No Esenciales
* **Nanokernel:** el uso de este kernel esta destinado a sistemas embebidos ya que este da un mayor grado de fiabilidad a comparacion de los demas.
* **Exokernel:** es el encargado de tomar las decisiones a cargo de los programas, para el uso de los recursos del hardware en algunas bibliotecas. Dicho kernel tiene limitaciones para asi evitar errores en los permisos de hardware y asi no tener conflictos.
* **Unikernel:** tiene como funcion la eliminacion de capas intermedias entre el hardware y las aplicaciones, este busca una simplificar todos los procesos que puedan existir entre estos dos elementos. 
* **Anykernel:** facilita el desarrollo de los controladores, tambien ofrece una mayor seguridad al usuario que esta activo.

<center>

| Linux | Windows |
|:---------:|:------------:|
| Codigo abierto | Codigo cerrado |
| Diseño mas orientado a la personalizacion y eleccion que el usuario quiera | Tiene un diseño mas amigable y proporciona una interfaz mas simple para el usuario |
| Mejor estabilidad y eficiencia, en la rama de servidores, su mejor rendimiento se mira en los servidores web | Tiene un mayor consumo de recursos y esto hace que tenga una menor eficiencia |

</center>

## User vs Kernel Model

<center>

| User      | Kernel Model |
|:---------:|:------------:|
| No se puede hacer modificiones directamente al sistema | Tiene un acceso completo a todas las aplicaciones y se puede modificar el sistema |
| Las aplicaciones estan protegidas a ciertas politicas del sistema operativo | Este modo es el responsable de tener el mejor rendimiento y funcionamiento del sistema operativo |
| Su desarrollo en este modo es mas facil, ya que nunca se maneja a un bajo nivel y se puede centrar en las funcionalidad del programa | Es el encargado de recibir las peticiones para dar accesos a recursos del sistema y se encarga de aceptar o denegar dichos permisos |

</center>
