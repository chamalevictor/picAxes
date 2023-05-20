' Receptor


' Sensor temperatura B1 
' sw1 = b2
' sw2 = b3

symbol sensorTemp = b1
symbol SW1 = b2
symbol SW2 = b3

main:

serin c.7, T9600_8, ("ddd"), b3
pause 100
high b.1
pause 100
low b.1
sertxd ("Dato: ", #b3, 10, 13)
pause 100
goto main