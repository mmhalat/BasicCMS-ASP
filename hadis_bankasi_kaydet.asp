<!--#include file="include_file/banka_db.asp"-->
<!--#include file="include_file/fonksiyon.asp"-->
<%
adsoyad = veri(Request.Form("adsoyad"))
email = veri(Request.Form("email"))
yorum = veri(Request.Form("yorum"))
don=Request.Servervariables("HTTP_REFERER")
Set kaydet=server.createobject("adodb.recordset")
sql="Select * From hadis_bankasi_yorumlar;"
kaydet.open sql, kon,1,3%><%
if adsoyad="" or email="" or yorum="" then%>
<center><b><font color="black" face="verdana">Lutfen Tum Alanlarý Doldurunuz</font></b></center>
<%
Response.Redirect don
response.End()
else
kaydet.addnew
kaydet("yid")=server.htmlencode(request.form("yid"))
kaydet("adsoyad")=server.htmlencode(request.form("adsoyad"))
kaydet("email")=server.htmlencode(request.form("email"))
kaydet("yorum")=replace(server.htmlencode(request.form("yorum")), chr(13), "<br>")
kaydet("tarih")= now()
kaydet.update
Response.Redirect don
end if
%>