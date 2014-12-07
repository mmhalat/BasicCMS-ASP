<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set metin = Server.CreateObject("ADODB.Recordset")
sql = "Select * from destekleyenler"
metin.open sql,Baglanti,1,3
tarih = Request.Form("tarih")
link = Request.Form("link")
%>
<%
IF tarih="" OR link="" Then
response.Write("Hatalý Veri Girildi Geri Gidip Tekrar Dene..")
%>
<%
else
metin("tarih") = tarih
metin("link") = link
metin.Update
response.write ("Isteginiz (destekleyenler) Basariyla Gerceklestirildi Sagdan Secim Yapin.")
metin.close
set metin=nothing
%>
<%end if%>