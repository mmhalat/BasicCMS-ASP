<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set metin = Server.CreateObject("ADODB.Recordset")
sql = "Select * from site_ayar"
metin.open sql,Baglanti,1,3

meta = Request.Form("meta")
%>
<%
IF meta="" Then
response.Write("Hataly Veri Girildi Geri Gidip Tekrar Dene..")
%>
<%
else
metin("meta") = meta
metin.Update
response.write ("Isteginiz (meta) Basariyla Gerceklestirildi Sagdan Secim Yapin.")
metin.close
set metin=nothing
%>
<%end if%>