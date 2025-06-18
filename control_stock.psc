Algoritmo control_stock
	//se definen las variables
	definir estanteria_posicion, pasillo_posicion, estanteria_mas_productos, cantidad_productos,stock_total, aleatorio_jimbo Como Entero
	
	//se realiza el conteo del stock por estanteria y pasillo
	Escribir "a continuación se definiran la cantidad de productos por estanteria <pueden haber cantidades iguales a un número aleatorio del 1 al 100>"
	Dimension cantidad_productos[3,4]
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Para j<-1 Hasta 4 Con Paso 1 Hacer
			cantidad_productos[i,j] <- Aleatorio(1,100)
		Fin Para
	Fin Para
	
	//se hace la comparativa para saber cuál estanteria tiene la mayor cantidad de productos
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Para j<-1 Hasta 4 Con Paso 1 Hacer
			stock_total <- stock_total + cantidad_productos[i,j]
			si cantidad_productos[i,j] > estanteria_mas_productos Entonces
				estanteria_mas_productos <- cantidad_productos[i,j]
				pasillo_posicion <- i
				estanteria_posicion <- j
			FinSi
		Fin Para
	Fin Para
	Limpiar Pantalla
	
	//se muestran los resultados
	Dimension muestra_stock[3,4]
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir "  +  pasillo N° ", i
		Para j<-1 Hasta 4 Con Paso 1 Hacer
			Escribir "           -   estanteria N° ", j, " productos: ", cantidad_productos[i,j]
		Fin Para
	Fin Para
	Escribir " "
	Escribir "el pasillo N° ", pasillo_posicion, " , la estanteria N° ", estanteria_posicion, " es la que tiene mayor stock, contando con :", estanteria_mas_productos," productos"
FinAlgoritmo
