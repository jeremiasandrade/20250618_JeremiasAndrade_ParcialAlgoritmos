Algoritmo calculo_horas_trabajadas
	//se definen las variables
	definir horas_trabajadas, trabajo_semanal, obrero_trabajador_horas, obrero_trabajador_numero, obrero_dormilon_horas, obrero_dormilon_numero  Como Entero
	
	//aclaramos una cosa
	Escribir "                                             << aclaración >>                                                  "
	Escribir "los obreros si bien trabajan durante los 7 dias de la semana, sus jornadas laborales constan de 8 horas diarias"
	
	//se hace el conteo aleatorio de horas
	dimension horas_trabajadas[5,7], trabajo_semanal[5]
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		trabajo_semanal[i] <- 0
		Para  j <- 1 Hasta 7 Con Paso 1 Hacer
			horas_trabajadas[i,j] <- Aleatorio(1,8)
			trabajo_semanal[i] <- horas_trabajadas[i,j] + trabajo_semanal[i]
		Fin Para
	Fin Para
	
	//se calcula al obrero con mayor y menor carga horaria
	dimension resultados[5]
	Escribir "++++++++++++++++++++++++++++++++++++++++++++++++++++++"
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
			si trabajo_semanal[i] > obrero_trabajador_horas Entonces
				obrero_trabajador_horas <- trabajo_semanal[i]
				obrero_trabajador_numero <- i
			FinSi
			si obrero_dormilon_horas > trabajo_semanal[i] Entonces
				obrero_dormilon_horas <- trabajo_semanal[i]
				obrero_dormilon_numero <- i
			FinSi
	Fin Para
	
	//se quema al que tenga menor carga horaria mandandolo al frente en la muestra de resultados
	Escribir "el obrero N° ", obrero_trabajador_numero, " trabajó un total de: ", obrero_trabajador_horas, " y es quien más horas trabajó durante la semana"
	Escribir "el obrero N° ", obrero_dormilon_horas , " trabajó un total de: ", obrero_dormilon_numero, " y es quien menos horas trabajó durante la semana"
FinAlgoritmo
