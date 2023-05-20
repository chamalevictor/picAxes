' E - Practica SW's Temperaturas
' Victor Joel Chamale Pacheco
' 5990-13-20413
' Arquitectura de Computadoras I
' Sede Portales 

' Definiendo variables:
symbol contador1 = b1
symbol contador2 = b2
symbol entrada1 = pinc.1
symbol entrada2 = pinc.2
symbol led1 = b.1
symbol led2 = b.2
symbol ventilador = b.3

' Inicializando contadores:
let contador1 = 0
let contador2 = 0

main:

sertxd ("Victor Chamale 5990-13-20413", 10, 13)
sertxd ("Contador 1: ", #contador1, 10, 13)
sertxd ("Contador 2: ", #contador2, 10, 13)

if entrada1 = 1 then
	contador1 = contador1 + 1
	for 1 to 5 
		high 	led1
		pause 100
		low led1
		pause
end if

if entrada2 = 1 then
	contador2 = contador2 + 1
	for 1 to 5 
		high 	led2
		pause 100
		low led2
		pause
end if




goto main
