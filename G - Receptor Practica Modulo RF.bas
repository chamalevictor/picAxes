
' ===============================================
' Codigo del receptor
' ===============================================

' Acciones
symbol led = b.1

' Variables
symbol opcion = b1
symbol contador = b2

main:
serout c.0, T2400, ("xyz")
setfreq m4

' Leer el valor que viene del emisor y guardarlo en opcion:
serin c.7, T2400, ("xyz"), opcion

' Si es 10, encienda el led:
if opcion = 10 then
	high led
end if

' Si es 20, muestre un contador de 0 a 9:
if opcion = 20 then
	for contador = 0 to 9
		sertxd("Contador: ", #contador, 10, 13)
		pause 100
	next contador		
end if

if opcion = 30 then
	sertxd("La Temperatura Vario", 10, 13)
		pause 100
end if

sertxd("Dato: ", #b3, 10, 13)
pause 100
goto main

' ===============================================
