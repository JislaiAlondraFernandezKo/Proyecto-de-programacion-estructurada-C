Proceso cajeroautomatico
	
	Definir cuenta, pin, opc, opc1, opc2,opc3 como entero;
	Definir saldodisponible, deposito como real;
	
	saldodisponible = 15000;
	
	Repetir
		Escribir "Bienvenido al ATM";
		Escribir "Digite su numero de cuenta:  ";
		leer cuenta;
		Escribir "Digite su pin secreto";
		Leer pin; // 1998
		
		Si pin = 1998 Entonces
			
			Repetir
				Escribir "MENU PRINCIPAL";
				Escribir "1.- ver saldo";
				Escribir "2.- Retirar Efectivo";
				Escribir "3.- Depositar Efectivo";
				Escribir "4.- Salir";
				Escribir "";
				Escribir "Escoja una opcion: ";
				leer opc;
				
				Segun opc Hacer
					1:
						Escribir "VER SALDO";
						Escribir "";
						Escribir"Saldo Disponible es de: RD$ " saldodisponible ;
						
					2:
						Escribir "RETIRAR EFECTIVO";
						Escribir "";
						Escribir "1.- 200 RD$";
						Escribir "2.- 500 RD$";
						Escribir "3.- 1000 RD$";
						Escribir "4.- 2000 RD$";
						Escribir "5.- 2500 RD$";
						Escribir "";
						Escribir "Escoja una opcin: ";
						leer opc1;
						
						Segun opc1 Hacer
							1:
								saldodisponible = saldodisponible - 200;
								Escribir "";
								Escribir "Por favor tome su dinero ahora.";
							2:
								saldodisponible = saldodisponible - 500;
								Escribir "";
								Escribir "Por favor tome su dinero ahora.";	
							3:
								saldodisponible = saldodisponible - 1000;
								Escribir "";
								Escribir "Por favor tome su dinero ahora.";	
							4:
								saldodisponible = saldodisponible - 2000;
								Escribir "";
								Escribir "Por favor tome su dinero ahora.";	
							5:
								saldodisponible = saldodisponible - 2500;
								Escribir "";
								Escribir "Por favor tome su dinero ahora.";		
							De Otro Modo:
								Escribir "No Ingreso una opcion correcta";
						FinSegun
						
					3:
						Escribir "DEPOSITA EFECTIVO";
						Escribir "";
						EScribir "Ingrese su deposito: ";
						leer deposito;
						saldodisponible = saldodisponible + deposito;
						Escribir  "";
						Escribir "Su Deposito de efectivo se ha echo correctamente"; 
						
					4:
						Escribir "SALIR";
						Escribir "Esta seguro que desea salir?";
					De Otro Modo:
						Escribir "Oh no, algo salio mal, vuelva a intentarlo.";
				Fin Segun
				
				Escribir "";
				Escribir "1. Regresar atras";
				Escribir "2. Salir";
				leer opc2;
				
			Hasta Que opc2 <> 1
		SiNo
			Escribir "El Pin es incorrecto, intentelo nuevamente";
		Fin Si
		
		Escribir "Desea inicializar nuevamente?";
		Escribir "1. Si";
		Escribir "1. No";
		leer opc3;
	Hasta Que opc3 <> 1
	
FinProceso