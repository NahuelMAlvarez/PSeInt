Proceso ProblemaInternetDatos
	//Defino s�lo 3 variables
	definir opcionsi_no como entero;
	definir opcionElegida como entero;
	definir flag1 como logico;
	//Presento programa
	Escribir "*-Diagnosticador de problemas con internet de datos moviles-*";
	Escribir "(Para equipos con SO Android)";
	Escribir "";
	Escribir "Antes de continuar procura haber reiniciado su celular";
	Escribir "";
	Escribir "Presione cualquier tecla para continuar";
	Esperar tecla;
	Limpiar pantalla;
	//Comienza diagnostico
	Repetir
		Escribir "Saldo y/o pack de internet disponible?";
		Escribir "1- Si";
		Escribir "2- No";
		Leer opcionsi_no;
		limpiar pantalla;
		Si opcionsi_no <1 o opcionsi_no >2 Entonces
			Escribir "Opci�n invalida";
			esperar tecla;
			limpiar pantalla;
		SiNo
			Si opcionsi_no = 2 Entonces
				//Primer solucion brindada
				Escribir "Recargar saldo o comprar pack de internet";
				flag1<-falso;
			SiNo
				flag1<-verdadero;
			FinSi
		FinSi
		limpiar pantalla;
	Hasta Que opcionsi_no =1 o opcionsi_no =2
	//Continua diagnostico
	Si flag1= verdadero Entonces
		//Se sugiere verificaciones al usuario
		Escribir "Controlar en ajustes r�pidos -Datos m�viles- o -Datos celulares- activado y -WiFi- desactivado, por favor";
		Escribir "";
		Escribir "Luego compruebe si ya puede usar internet con datos m�viles";
		Escribir "";
		Escribir "Presione cualquier tecla para continuar";
		Esperar tecla;
		limpiar pantalla;
		Repetir
			//Continua diagnostico
			Escribir "Pudo utilizar internet?";
			Escribir "1- Si";
			Escribir "2- No";
			leer opcionsi_no;
			Si opcionsi_no <1 o opcionsi_no >2 Entonces
				Escribir "Opci�n invalida";
				esperar tecla;
				limpiar pantalla;
			SiNo
				Si opcionsi_no = 2 Entonces
					//Se sugiere nueva verificacion al usuario
					Escribir "Verificar letras de conexi�n al lado izquierdo de el marcador de se�al en la parte superior derecha de la pantalla";
					flag1<-verdadero;
					Esperar Tecla;
					Limpiar Pantalla;
				SiNo
					flag1<-falso;
				FinSi
			FinSi
		Hasta Que opcionsi_no =1 o opcionsi_no =2
	SiNo
	FinSi
	Si flag1 = verdadero Entonces
		//Con la verificacion solicitada se continua diagnostico
		Repetir
			Escribir "Letra de conexion: ";
			Escribir "1- Sin letra de conexi�n (solo figura marcador de se�al)";
			Escribir "2- Siglas LTE o 4G";
			Escribir "3- Letra H, H+ o 3G";
			Escribir "4- Letra G, E o 2G";
			leer opcionElegida;
			Segun opcionElegida Hacer
				1:
					//Reestablecimiento de APN de conexi�n
					Escribir "";
					Escribir "Por favor siga las instrucciones que se especifican a continuaci�n";
					Escribir "";
					Escribir "(Presionar enter para continuar a la siguiente instrucci�n)";
					limpiar pantalla;
					Escribir "1- Ingresar a configuracion de -Redes M�viles- en el men� de ajustes de tu celular";
					Escribir "";
					Esperar Tecla;
					Escribir "2- Ahora ingresa en la opcion -Nombres de puntos de acceso- o -APN-";
					Escribir "";
					Esperar Tecla;
					Escribir "3- Ahora selecciona men� de opciones (puntitos en vertical de la parte superior derecha) sin salir de la pantalla de APN";
					Escribir "";
					Escribir "4- Seleccionar -Reestablecer valores..- o -Restaurar ajustes..-";
					Escribir "";
					Esperar Tecla;
					Escribir "5- Reinicia tu celular";
					Esperar Tecla;
					Limpiar Pantalla;
					Repetir
						Escribir "Pudo utilizar internet?";
						Escribir "1- Si";
						Escribir "2- No";
						leer opcionsi_no;
						Si opcionsi_no =1 Entonces
							flag1<-verdadero;
						SiNo
							Si opcionsi_no = 2 Entonces
								Repetir
									Escribir "Tom� letra de conexi�n en el marcador de se�al?";
									Escribir "1- Si";
									Escribir "2- No";
									leer opcionsi_no;
									Si opcionsi_no = 1 Entonces
										flag1<- falso;
									SiNo
										Si opcionsi_no = 2 Entonces
											Limpiar pantalla;
											Escribir "Es necesario configurar nuevo APN de internet";
											Escribir "Comunicate  con el proveedor de tu plan de datos para configurar APN";
											Escribir "";
											Escribir "Presiona cualquier tecla para finalizar";
											Esperar tecla;
											flag1<-verdadero;
										SiNo
											Escribir "Opci�n invalida";
											esperar tecla;
											limpiar pantalla;
										FinSi
										
									FinSi
								Hasta Que opcionsi_no =1 o opcionsi_no =2
							SiNo
								Escribir "Opci�n invalida";
								esperar tecla;
								limpiar pantalla;
							FinSi
						FinSi
					Hasta Que opcionsi_no =1 o opcionsi_no =2
					
				2:
					//Problemas con 4G
					limpiar pantalla;
					Escribir "Tu celular est� conectado a la red 4G";
					Escribir "";
					Escribir "Siga las siguientes instrucciones: ";
					Escribir "(Presionar enter para continuar a la siguiente instrucci�n)";
					Escribir "";
					Esperar tecla;
					Escribir "1- Ingresar en -Ajustes- o -Configuracion- del celular";
					Esperar tecla;
					Escribir "2- Ingresar en -Mas-, � -Mas Redes- y/� -Redes M�viles-";
					Esperar tecla;
					Escribir "3- Ingresar a -Modo de red- y selecciona -S�lo WDCMA- � -3G-";
					Esperar tecla;
					Escribir "4- Salir de la configuracion y probar internet con datos";
					Esperar tecla;
					limpiar pantalla;
					Repetir
						Escribir "Pudo utilizar internet?";
						Escribir "1- Si";
						Escribir "2- No";
						leer opcionsi_no;
						Si opcionsi_no = 2 Entonces
							Escribir "";
							Escribir "Existen inconvennientes de cobertura de red m�vil en su zona";
							Escribir "";
							Escribir "Comuniquese con el proveedor de su plan de datos para reclamar ";
							Escribir "";
							Escribir "Presione cualquier tecla para finalizar";
							esperar tecla;
							flag1<- verdadero;
						SiNo
							Si opcionsi_no = 1 Entonces
								Escribir "";
								Escribir "Cambio de red exitoso";
								Escribir "";
								Escribir "Existen inconvenientes con red 4G en tu zona";
								Escribir "";
								Escribir "Puede utilizar la red 3G seleccionada como alternativa hasta que el inconveniente con 4G se solucione";
								Escribir "Se recomienda comunicarse con el proveedor de su plan de datos para reclamar";
								Escribir "";
								Escribir "Presione cualquier tecla para finalizar";
								esperar tecla;
								flag1<- verdadero;
							SiNo
								Escribir "Opci�n invalida";
								esperar tecla;
								limpiar pantalla;
								
							FinSi
						FinSi
					Hasta Que opcionsi_no =1 o opcionsi_no =2
					
				3:
					//Problemas con 3G
					limpiar pantalla;
					Escribir "Tu celular est� conectado a la red 3G";
					Escribir "";
					Escribir "Siga las siguientes instrucciones: ";
					Escribir "(Presionar enter para continuar a la siguiente instrucci�n)";
					Escribir "";
					Esperar tecla;
					Escribir "1- Ingresar en -Ajustes- o -Configuracion- del celular";
					Esperar tecla;
					Escribir "2- Ingresar en -Mas-, � -Mas Redes- y/� -Redes M�viles-";
					Esperar tecla;
					Escribir "3- Ingresar a -Modo de red- y selecciona -LTE/WCD..(Conexion autom�tica)- � -4G-";
					Escribir"";
					Escribir "*-ACLARACION: Si su celular no tiene la opcion LTE o 4G, no es compatible con dicha red";
					Escribir "*-            Podes cambiar a -S�lo GSM- o -2G- y volver a seleccionar -3G- o -WCDMA-";
					Esperar tecla;
					Escribir "4- Salir de la configuracion y probar internet con datos";
					Esperar tecla;
					limpiar pantalla;
					Repetir
						Escribir "Pudo utilizar internet?";
						Escribir "1- Si";
						Escribir "2- No";
						leer opcionsi_no;
						Si opcionsi_no = 2 Entonces
							Escribir "";
							Escribir "Existen inconvennientes de cobertura de red m�vil en su zona";
							Escribir "";
							Escribir "Comuniquese con el proveedor de su plan de datos para reclamar ";
							Escribir "";
							Escribir "Presione cualquier tecla para finalizar";
							esperar tecla;
							flag1<- verdadero;
						SiNo
							Si opcionsi_no = 1 Entonces
								Escribir "";
								Escribir "Cambio de red exitoso";
								Escribir "";
								Escribir "Existen inconvenientes con red 3G en su zona";
								Escribir "";
								Escribir "Tenga en cuenta que la red 4G es la m�s �ptima para el uso de internet con datos m�viles";
								Escribir "";
								Escribir "Si necesita usar red 3G o deja de funcionar comuniquese con el proveedor de su plan de datos para reclamar";
								Escribir "";
								Escribir "Presione cualquier tecla para finalizar";
								esperar tecla;
								flag1<- verdadero;
							SiNo
								Escribir "Opci�n invalida";
								esperar tecla;
								limpiar pantalla;
								
							FinSi
						FinSi
					Hasta Que opcionsi_no =1 o opcionsi_no =2
				4:
					//Problemas con 2G
					limpiar pantalla;
					Escribir "Tu celular est� conectado a la red 2G";
					Escribir "";
					Escribir "Siga las siguientes instrucciones: ";
					Escribir "(Presionar enter para continuar a la siguiente instrucci�n)";
					Escribir "";
					Esperar tecla;
					Escribir "1- Ingresar en -Ajustes- o -Configuracion- del celular";
					Esperar tecla;
					Escribir "2- Ingresar en -Mas-, � -Mas Redes- y/� -Redes M�viles-";
					Esperar tecla;
					Escribir "3- Ingresar a -Modo de red- y selecciona -LTE/WCD..(Conexion autom�tica)- � -4G-";
					Escribir"";
					Escribir "*-ACLARACION: Si su celular no tiene la opcion LTE o 4G, no es compatible con dicha red";
					Escribir "*-            Podes cambiar a -S�lo WDCMA- o -3G- o desactivar opcion -Utilizar s�lo redes 2G-";
					Esperar tecla;
					Escribir "4- Salir de la configuracion y probar internet con datos";
					Esperar tecla;
					limpiar pantalla;
					Repetir
						Escribir "Pudo utilizar internet?";
						Escribir "1- Si";
						Escribir "2- No";
						leer opcionsi_no;
						Si opcionsi_no = 2 Entonces
							Escribir "";
							Escribir "Existen inconvennientes de cobertura de red m�vil en su zona";
							Escribir "";
							Escribir "Comuniquese con el proveedor de su plan de datos para reclamar ";
							Escribir "";
							Escribir "Presione cualquier tecla para finalizar";
							esperar tecla;
							flag1<- verdadero;
						SiNo
							Si opcionsi_no = 1 Entonces
								Escribir "";
								Escribir "Cambio de red exitoso";
								Escribir "";
								Escribir "Existen inconvenientes con red 2G en su zona";
								Escribir "";
								Escribir "Tenga en cuenta que las redes 4G y 3G son las m�s �ptimas para el uso de internet con datos m�viles";
								Escribir "";
								Escribir "Si necesita usar red 2G o deja de funcionar comuniquese con el proveedor de su plan de datos para reclamar";
								Escribir "";
								Escribir "Presione cualquier tecla para finalizar";
								esperar tecla;
								flag1<- verdadero;
							SiNo
								Escribir "Opci�n invalida";
								esperar tecla;
								limpiar pantalla;
								
							FinSi
						FinSi
					Hasta Que opcionsi_no =1 o opcionsi_no =2
				De Otro Modo:
					Escribir "Opci�n incorrecta";
					flag1<-falso;
					limpiar pantalla;
			FinSegun
		Hasta Que flag1=verdadero
	SiNo
		
	FinSi
	Limpiar Pantalla;
	//FInalizo diagnostico
	Escribir "Diagnostico de problema de internet de datos finalizado";
	Escribir "";
	Escribir "Hasta luego";
FinProceso
