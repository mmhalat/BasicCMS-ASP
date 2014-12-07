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
Response.Write ("<center><b>Sitemize Flood Saldýrýsý Yaptýgýnýzý Dusunuyoruz,Bu Yüzden Sitemize Girisinizi 10 Dk Boyunca Yasaklýyoruz.<br>Eger Bir Yalnýslýk Oldugunu Dusunuyorsanýz Metin@takvaonline.com Adresine Mail Atýnýz... Ýlginizden Dolayý Teþekkür Ederim.<br><br>Takva Group</b></center>") 
response.end
END IF 
%> 

