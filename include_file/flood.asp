<% 
IF Session("Duran")="" Then 
Session("Duran")=0 
Else 
Session("Duran")=Session("Duran")+1 
END IF 
%> 

<% 
IF CInt(Session("Duran"))>100 Then 
Session.TimeOut=1 
Response.Write ("<center><b>Sitemize Flood Sald�r�s� Yapt�g�n�z� Dusunuyoruz,Bu Y�zden Sitemize Girisinizi 10 Dk Boyunca Yasakl�yoruz.<br>Eger Bir Yaln�sl�k Oldugunu Dusunuyorsan�z Metin@takvaonline.com Adresine Mail At�n�z... �lginizden Dolay� Te�ekk�r Ederim.<br><br>Takva Group</b></center>") 
response.end
END IF 
%> 

