main:
	if pinc.1 = 0 then
		high b.4
		
else 
	low b.4
	
end if

if pinc.0 = 0 then
	sertxd ("Vic", 10, 13)
else
	sertxd ("Victor Chamale 5990-13-20413", 10, 13)
	end if
goto main
