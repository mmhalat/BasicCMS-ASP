<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set metin = Server.CreateObject("ADODB.Recordset")
sql = "Select * from kh"
metin.open sql,Baglanti,1,3

tarih = Request.Form("tarih")
ad = Request.Form("ad")
ekleyen = Request.Form("ekleyen")
hit = Request.Form("hit")
fikra = Request.Form("fikra")
%>
<%
IF tarih="" OR ad="" OR ekleyen="" OR hit="" OR fikra="" Then
response.Write("Hatali Veri Girildi Geri Gidip Tekrar Dene..")
%>
<%
else
metin.addnew
metin("tarih") = tarih
metin("hit") = hit
metin("ad") = ad
metin("fikra") = fikra
metin("ekleyen") = ekleyen
metin.Update
response.write ("Isteginiz (KH) Basariyla Gerceklestirildi Sagdan Secim Yapin.")
metin.close
set metin=nothing
%>
<%end if
baglanti.close%>