# Planeación #

Antes de empezar nuestro programa, lo primero que hay que hacer, es nuestra documentación para poder basarnos en ella. ¿Por qué? lo primero es imaginar lo que vamos hacer, si vamos directamente a codificar, nos podemos trabar en alguna parte o nos pueden salir varios errores.

## Creacion de presupuesto ##

Lo primero que hay que hacer es, crear un presupuesto economico.Esto nos sirve para saber cuanto vamos a cobrar por el proyecto y dependiendo de eso poder acpetarlo o no el proyecto que nos den.

50 horas dividido entre 5 días de la semana = horas por semana
	50/5=10 horas por semana

	Cobro por hora $125 
	Cobro*HORAS = sueldo semanal
	125*10= 1250 por semana 

	5 semanas por 125 por hora
	5*125= 6250 $
6250 Seria el total de mi sueldo por trabajar en el proyecto por 50 horas 
Total, del proyecto $6,250 pesos 


Condiciones de pago
    Para poder empezar se pedirá un anticipo de $1000 pesos.
    El proyecto se va dividir en 4 fase para mostrar avances.
	Cada fase se pagará $1,312.5 pesos, que son 12 horas aproximadamente de trabajo.
	Si el cliente, ya no desea continuar con el proyecto no se la va ser ningún rembolso de su anticipo y/o de su fase que ya haya pagado.
	Si el cliente quiere cambiar algo antes que termine una fase no se le cobrara nada, pero si quiere cambiar algo que ya está terminado se le cobrar $250 pesos.
    Cada pago de la fase, se le dará un comprobante de pago


## Planeación ##

Es importante adiminstrar nuestro tiempo correctamente, entonces hay que hacer un diagram de tiempo, para dividir las tareas que tenemos que hacer y en que dia lo vamos a realizar. Asi podremos avanzar con todas las tareas sin ningún problema

![Diagrama ventt](diagrama.png)


## analisis ##
Tenemos que ver, que necesita nuestro programa que les pide para que funcione correctamente y cuales son las restriciones que debe tener.

Requerimiento Funcionales:

	El sistema no debe de funcionar con el internet, sino poder ejecutarse al 100% en la computadora o/y Tablet.
	La hoja de deslinde pueda cambiarse de idioma
	El sistema debe de tener una tecnología para capturar la firma electrónica del cliente
	Debe poder almacenar los datos del cliente
	Debe imprimir los datos del cliente en la hoja de deslinde
	Poder consultar en la base de datos
	Tener seguridad con la base de datos, ya que se maneja datos personales

Requerimiento No Funcionales:

	Deber ser fácil de usar, e imprimir
	El ingreso a la base de datos debe ser restringido, bajo contraseña y usuarios definidos
	El sistema debe brindar comodidad al usuario y al personal que trabajen con el programa
	Deber ser multiplataforma que pueda funcionar en distintos tipos de software operativos
	El sistema debe soportar el manejo de gran canidad de datos
	El sistema no debe presentar ningún problema a la hora del manejo


## Diseño ##
En este caso vamos crear diagramas UML, que nos va servir como va interactuar nuestro programa con el usuario y como el usuario se interactua con el programa.
Ahorita vamos a motrarle algunos ejemplos de algunos diagramas de UML, que nos permitira entender mejor nuestro programa.

![Diagrama de caso de uso](caso_de_uso.png)
![Diagrama de actividades](diagrama_de_actividades.png)
![Diagrama de clases](diagrama_de_clases.png)