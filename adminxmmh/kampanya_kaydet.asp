<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set metin = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ayin_kampanyasi"
metin.open sql,Baglanti,1,3
tarih = Request.Form("tarih")
kampanya = Request.Form("kampanya")
%>
<%
IF tarih="" OR kampanya="" Then
response.Write("Hataly Veri Girildi Geri Gidip Tekrar Dene..")
%>
<%
else
metin("tarih") = tarih
metin("kampanya") = kampanya
metin.Update
response.write ("Isteginiz (destekleyenler) Basariyla Gerceklestirildi Sagdan Secim Yapin.")
metin.close
set metin=nothing
%>
<%end if
baglanti.close%>