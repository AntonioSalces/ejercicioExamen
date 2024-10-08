//En primer lugar, defino un subproceso para dibujar el cuadrado. Más adelante, antes de utilizarlo, pediremos los valores a utilizar.
SubProceso definirRectangulo (ancho, alto)
	//Defino dos contadores. Uno será "horizontal", para pintar los asteriscos horizontalmente hasta llegar al ancho, y otro "vertical", para pintar los asteriscos verticalmente hasta llegar al vertical.
	definir horizontal Como Entero;
	definir vertical Como Entero;
	//Hacemos un bucle que almacenará donde "horizontal" sume de 1 en 1 hasta llegar al ancho indicado
	Para horizontal <- 1 Hasta ancho Con Paso 1 Hacer
		//Cada vez que "vertical" llegue hasta el alto, reiterará el bucle, suma uno a "horizontal" y "vertical" vuelve a empezar en 0.
		para vertical <- 1 hasta alto Con Paso 1 Hacer
			//Estas son las condiciones para pintar un asterisco, que son las posiciones concretas de los bordes del cuadrado. Si no es el borde, pintará un espacio.
			si horizontal = 1 O vertical = 1 O horizontal = ancho o vertical = alto Entonces
				Escribir "* "Sin Saltar;
			sino
				Escribir "  " Sin Saltar;
			FinSi
		FinPara
		Escribir "";
	FinPara
	
FinSubProceso

Proceso rectanguloOpciones
	//Aquí definimos el alto y el ancho que serán utilizados por el subproceso.
	Definir alto Como Entero;
	Escribir "En este programa podrás hacer un rectángulo del tamaño que tu quieras. Podrás cambiar los valores en cualquier momento o voltearlo. En primer lugar, define el alto del cuadrado: "Sin Saltar;
	leer alto;
	definir ancho como entero;
	Escribir  "Define el ancho del rectángulo: "Sin Saltar;
	leer ancho;
	//"acc" será la variable que almacenará la opción que querrá el usuario hacer con el rectángulo.
	definir acc Como Entero;
	Repetir
		escribir "1. Pintar rectángulo";
		escribir "2. Girar rectángulo";
		Escribir "3. Cambiar valores del rectángulo";
		Escribir "4. Salir";
		leer acc;
		Segun acc Hacer
			//La opción 1 pintará el rectángulo sin ningún cambio.
			1:
				definirRectangulo(alto, ancho);
			//La opción 2 pintará el rectángulo volteado.	
			2:
				definirRectangulo(ancho, alto);
			//La opción 3 te permité cambiar el tamaño del rectángulo.
			3:
				Escribir "Escribe el nuevo valor para la altura: "Sin Saltar;
				leer alto;
				Escribir "Escribe el nuevo valor para el ancho: "Sin Saltar;
				Leer ancho;
				definirRectangulo(alto, ancho);
			//La opción 4 te sacará del bucle
			4:
				Escribir "Gracias por utilizarme, guapo";
			//Si no pones ningún número de los registrados, te pedirá que escribas otro.
			De Otro Modo:
				Escribir "Escribe otro picha";
		FinSegun
		Escribir "";
	Hasta Que acc == 4
FinProceso
