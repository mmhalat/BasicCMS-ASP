<% 
isim = request.form("isim")
baslik = request.form("baslik")
email = request.form("email")
mesaj = request.form("mesaj")

Set Posta = Server.CreateObject("CDONTS.NewMail") 
Posta.To = "mail@takvaonline.com"
Posta.From = email 
Posta.Subject = baslik 
Posta.BodyFormat= 0 
Posta.MailFormat= 0 

Posta.Body = mesaj
Posta.SEnd
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
