
//1.Secuencial
Funcion A <- average()
	escribir "Escriba tres notas para promediar (Recuerde solo usar números)"
	escribir "Ingrese la primera nota: "
	leer qualification1
	escribir "Ingrese la segunda nota: "
	leer qualification2
	escribir "Ingrese la tercera nota: "
	leer qualification3
	
	A <- (qualification1 + qualification2 + qualification3)/3	

	escribir "El promedio de las notas ",qualification1 ", " qualification2,", " qualification3 ", es: ", A
Fin Funcion

//2.Condicional	Si entonces
Funcion G <- gender()
	
	escribir "Escriba su nombre:"
	leer name
	
	escribir "¿Es usted mujer u hombre?(escríbalo en minúsculas)"
	leer gen
	
	Si (gen <= "mujer") Entonces
		escribir "Bienvenida a este gran lugar Srta. ",name
	SiNo
		escribir "Bienvenido a este gran lugar Sr. ",name
	Fin Si
	
Fin Funcion

//3.Condicional	Si entonces anidado

Funcion E <- entry()
	
	escribir "Escriba su nombre:"
	leer name
	
	escribir "¿Es usted mujer u hombre?(escríbalo en minúsculas)"
	leer gen
	
	Si (gen = "mujer") Entonces
		escribir "Bienvenida a este gran lugar Srta. ",name
		escribir "¿Va a ingresar al recinto o a los baños?"
		leer ingresar
			Si (ingresar="recinto") Entonces
			escribir "La entrada tiene un valor de $2.500 "
			SiNo
			escribir "La entrada a los baños tiene un valor de 250"
			Fin Si
	SiNo
		escribir "Bienvenido a este gran lugar Sr. ",name
		escribir "¿Va a ingresar al recinto o a los baños?"
		leer ingresar
		Si (ingresar="recinto") Entonces
			escribir "La entrada tiene un valor de $2.500 "
		SiNo
			escribir "La entrada a los baños tiene un valor de 250"
		Fin Si
	Fin Si
	
Fin Funcion

//4.Condicional	según
Funcion W <- words()
	
	escribir "Ingrese un número del 1 al 10 para mostrarlo en palabras"
	leer toshow
	
	Segun toshow Hacer
		1:
			escribir "Uno"
		2:
			escribir "Dos"
		3:
			escribir "Tres"
		4:
			escribir "Cuatro"
		5:
			escribir "Cinco"
		6:
			escribir "Seis"
		7:
			escribir "Siete"
		8:
			escribir "Ocho"
		9:
			escribir "Nueve"
		10:
			escribir "Diez"
		De Otro Modo:
			escribir "Recuerde ingresar un número del 1 al 10"
	Fin Segun
	
Fin Funcion

//5.Repetitiva Mientras
Funcion ENS <- enenumeros()
	
	numerosPromedio<-1
	sumaTotal<-0
	promedio<-0
	contador<-0
	
	Mientras numerosPromedio!=0 Hacer
		escribir "Digite numero para sumarlo y sacar promedio, use un 0 cuando desee terminar "
		leer numerosPromedio
		sumaTotal <- numerosPromedio+sumaTotal
		contador <- contador+1
		
	Fin Mientras
	
	promedio <- sumaTotal / (contador - 1)
	
	escribir"En total fueron ",contador-1 " números sumados"
	escribir"La suma total fue de: " sumaTotal
	escribir"El promedio de los números ingresados es de: ",promedio
	
Fin Funcion

//6.Repetitiva Repetir
Funcion Enombres <- enenombres()
	
	try<-0
	
	Repetir
		escribir "Escriba nombres en minúsculas que comiencen con ´j´ hasta que aciertes al nombre ganador (nombre ganador juan)"
		leer winningName
		try=try+1
	Hasta Que winningName="juan"
	
	escribir "Felicitaciones, acertaste el nombre ganador luego de ",try " intentos."
	
Fin Funcion

//7.repetitiva Para ******FALTA BUSCAR REPETIDOS
Funcion DN <- diezn()
	
	Dimension diezNombres[10]
	guardado<-" "
	
	//genero array con 10 nombres
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		escribir "Escriba un nombre"
		leer diezNombres[i]
	Fin Para
	
	//recorro array y se muestran
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		escribir diezNombres[i]
	Fin Para
	
Fin Funcion

//8.Arreglo	Simple ******FALTA COLOCAR SOLO 5 POR LINEA
Funcion AL <- alcurso()
	
	//ingreso numero del arreglo
	Escribir "Ingrese número de alumnos del curso Full Stack Java"
	leer numAlumnos
	Dimension alumnos[numAlumnos]
	
	//se arma el arreglo
	Para i<-1 Hasta numAlumnos Con Paso 1 Hacer
		escribir "Ingrese nombre alumnos"
		leer alumnos[i]
	Fin Para
	
	//se muestra el arreglo
	Para i<-1 Hasta numAlumnos Con Paso 1 Hacer
		escribir alumnos[i] " " Sin Saltar
	Fin Para
Fin Funcion


//9.Arreglo Bidimensional
Funcion BI <- bidimensional()
	
Fin Funcion


Algoritmo program
	
	Repetir
		escribir "---------------------------------------------"
		escribir "                Menú Programa                "
		escribir "_____________________________________________"
		escribir "                                             "
		escribir "(1)Secuencial"
		escribir "(2)Condicional Si entonces"
		escribir "(3)Condicional Si entonces anidado"
		escribir "(4)Condicional según"
		escribir "(5)Repetitiva Mientras"
		escribir "(6)Repetitiva repetir"
		escribir "(7)Repetitiva para"
		escribir "(8)Arreglo simple"
		escribir "(9)Arreglo bidimensional"
		escribir "(10)Salir"
		escribir "                                             "
		escribir "Escriba el número de la acción a realizar"
		leer option
		
		Segun option Hacer
			1:
				A=average()
			2:
				G=gender()
			3:
				E=entry()
			4:
				W=words()
			5:
				ENS <- enenumeros()
			6:
				Enombres <- enenombres()
			7:
				DN <- diezn()
			8:
				AL <- alcurso()
			9:
				BI <- bidimensional()
			
			De Otro Modo:
				escribir "Ingrese un número válido"
		Fin Segun
		
//10.Salir		
	Hasta Que option == 10
	
FinAlgoritmo


