' ===============================================
' Codigo Emisor
' ===============================================
' Entradas sugeridas:
symbol sensorTemp = b.1
symbol SW1 = pinc.6
symbol SW2 = pinc.5

' Variables que se enviar?n por el m?dulo:
symbol temperatura = b1
symbol led = b2
symbol contador = b3
symbol cambio = b4

' Inicializando variables
let led = 10
let contador = 20
let cambio = 30

main:
'Leyendo temperatura y almacenando en variable:
readtemp sensorTemp, temperatura
serout c.0, T2400, ("xyz")
setfreq m4

if SW1 = 1 then 
	serout c.0, T2400, (led)
	pause 100
end if

if SW2 = 1 then
	serout c.0, T2400, (contador)
	pause 100
end if

if temperatura >= 1 or temperatura <= 1 then
	serout c.0, T2400, (cambio)
	pause 100	
end if
goto main

' ===============================================


