<% 
isim = request.form("isim")
k_email = request.form("k_email")
g_email = request.form("g_email")
mesaj = request.form("mesaj")
Dim objMessage 
Set objMessage = Server.CreateObject("CDO.Message") 
objMessage.Subject = isim
objMessage.From = k_email
objMessage.To = g_email
objMessage.TextBody = Mesaj

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2 

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1 

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "webmail.takvaonline.com" 

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/sendusername") = "metin@takvaonline.com" 

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "147852369" 

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25 

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = False 

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60 

objMessage.Configuration.Fields.Update 

objMessage.Send 
Set objMesage = Nothing 
%> 
<html>

<head>
<title>Mail Gönderildi</title>
<style type="text/css">
<!--
.style1 {
	font-size: 12px;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div align="center" class="style1">Mail'iniz gönderilmistir.</div>
</body>

</html>
