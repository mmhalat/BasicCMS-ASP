<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set metin = Server.CreateObject("ADODB.Recordset")
sql = "Select * from site_ayar"
metin.open sql,Baglanti,1,3
site_ac = Request.Form("site_ac")
site_baslik = Request.Form("site_baslik")
site_copy = Request.Form("site_copy")
%>
<%
IF site_ac="" OR site_baslik=""  OR site_copy="" Then
response.Write("Hatalý Veri Girildi Geri Gidip Tekrar Dene..")
%>
<%
else
metin("site_ac") = site_ac
metin("site_baslik") = site_baslik
metin("site_copy")= site_copy
metin.Update
response.write ("Isteginiz Basariyla Gerceklestirildi Sagdan Secim Yapin.")
metin.close
set metin=nothing
%>
<%end if%>