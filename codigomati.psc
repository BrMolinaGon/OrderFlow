Algoritmo ejercicioVentas
	Definir ventas Como entero
	Dimension ventas[12]//se define una lista con 12 elementos
	//asignar valores predefinidos 
	ventas[1] <-130000
	ventas[2] <-250000
	ventas[3] <-50000
	ventas[4] <-76000
	ventas[5] <-30000
	ventas[6] <-420000
	ventas[7] <-54000
	ventas[8] <-46400
	ventas[9] <-35400
	ventas[10] <-634000
	ventas[11] <-63420
	ventas[12] <-780000
	
	umbral = 200000
	Para i<-1 Hasta 12 Con Paso 1 Hacer
		//para suma total
		suma = suma + ventas[i]
		
		//contador de umbral
		Si ventas[i] > umbral Entonces
			contador = contador + 1
		Fin Si
		//cual fue la mayor venta
		Si ventas[i] >= 780000 Entonces
			ventaMaxima = ventas[i]
			mesMaximo = i
		FinSi
	Fin Para
	promedio = suma/12
	
	Escribir "Suma total de ventas: $", suma
	Escribir "Promedio de ventas anual: $", promedio
	Escribir "Veces que se supera el umbral: ", contador
	Escribir "La venta maxima se encuentra en el mes ", mesMaximo " con una venta de: $", ventaMaxima
	
FinAlgoritmo
