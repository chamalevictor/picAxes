' Examen Parcia II
' Victor Joel Chamale Pacheco
' 5990-13-20413
' Arquitectura de Computadoras I
' Sede Portales 

' Definiendo variables:
symbol contador = b1
symbol principal = b2
symbol incisob = b3
symbol impares = b4
symbol SW1 = pinc.1
symbol SW2 = pinc.2
symbol SW3 = pinc.3
symbol led = b.1

' Inicializando contadores:
let contador = 0
let principal = 1
let incisob = 0
let impares = 0

main:
sertxd ("Victor Chamale 5990-13-20413", 10, 13)

do
	do
	if contador = 9 then
		contador = 0
end if
if impares = 1 then
if contador % 2 = 0 then
	contador = contador + 2
	pause 100
else 
	contador = contador +1
	end if
end if
loop while incisob = 0
	if incisob = 1 then
		for 1 to contador
		high led
		pause 100
		next contador
	end if
	
loop while principal = 1

' Inciso A:
if SW1 = 1 then
	impares = 0
	incisob = 0
	sertxd ("Contador: ", #contador, 10, 13)

end if


'Inciso B:
if SW2 = 1 then
sertxd ("Contador: ", #contador, 10, 13)
incisob = 0
end if

if SW3 = 1 then
	impares = 1
end if

goto main
