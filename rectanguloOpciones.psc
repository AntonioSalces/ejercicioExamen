//En primer lugar, defino un subproceso para dibujar el cuadrado. M�s adelante, antes de utilizarlo, pediremos los valores a utilizar.
SubProceso definirRectangulo (ancho, alto)
	//Defino dos contadores. Uno ser� "horizontal", para pintar los asteriscos horizontalmente hasta llegar al ancho, y otro "vertical", para pintar los asteriscos verticalmente hasta llegar al vertical.
	definir horizontal Como Entero;
	definir vertical Como Entero;
	//Hacemos un bucle que almacenar� donde "horizontal" sume de 1 en 1 hasta llegar al ancho indicado
	Para horizontal <- 1 Hasta ancho Con Paso 1 Hacer
		//Cada vez que "vertical" llegue hasta el alto, reiterar� el bucle, suma uno a "horizontal" y "vertical" vuelve a empezar en 0.
		para vertical <- 1 hasta alto Con Paso 1 Hacer
			//Estas son las condiciones para pintar un asterisco, que son las posiciones concretas de los bordes del cuadrado. Si no es el borde, pintar� un espacio.
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
	//Aqu� definimos el alto y el ancho que ser�n utilizados por el subproceso.
	Definir alto Como Entero;
	Escribir "En este programa podr�s hacer un rect�ngulo del tama�o que tu quieras. Podr�s cambiar los valores en cualquier momento o voltearlo. En primer lugar, define el alto del cuadrado: "Sin Saltar;
	leer alto;
	definir ancho como entero;
	Escribir  "Define el ancho del rect�ngulo: "Sin Saltar;
	leer ancho;
	//"acc" ser� la variable que almacenar� la opci�n que querr� el usuario hacer con el rect�ngulo.
	definir acc Como Entero;
	Repetir
		escribir "1. Pintar rect�ngulo";
		escribir "2. Girar rect�ngulo";
		Escribir "3. Cambiar valores del rect�ngulo";
		Escribir "4. Salir";
		leer acc;
		Segun acc Hacer
			//La opci�n 1 pintar� el rect�ngulo sin ning�n cambio.
			1:
				definirRectangulo(alto, ancho);
			//La opci�n 2 pintar� el rect�ngulo volteado.	
			2:
				definirRectangulo(ancho, alto);
			//La opci�n 3 te permit� cambiar el tama�o del rect�ngulo.
			3:
				Escribir "Escribe el nuevo valor para la altura: "Sin Saltar;
				leer alto;
				Escribir "Escribe el nuevo valor para el ancho: "Sin Saltar;
				Leer ancho;
				definirRectangulo(alto, ancho);
			//La opci�n 4 te sacar� del bucle
			4:
				Escribir "Gracias por utilizarme, guapo";
			//Si no pones ning�n n�mero de los registrados, te pedir� que escribas otro.
			De Otro Modo:
				Escribir "Escribe otro picha";
		FinSegun
		Escribir "";
	Hasta Que acc == 4
FinProceso
