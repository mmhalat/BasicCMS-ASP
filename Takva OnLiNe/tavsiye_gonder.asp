<% 
isim = request.form("isim")
k_email = request.form("k_email")
g_email = request.form("g_email")
mesaj = request.form("mesaj")

Set Posta = Server.CreateObject("CDONTS.NewMail") 
Posta.To = k_mail
Posta.From = g_mail 
Posta.Subject = "Size Bir Davet War." 
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
