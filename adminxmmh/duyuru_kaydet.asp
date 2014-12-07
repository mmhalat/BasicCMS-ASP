<!--#include file="sifre.asp"-->
<!--#include file="temizlikimandandir.asp"-->
<!--#include file="inc.asp"-->
<%
Set metin = Server.CreateObject("ADODB.Recordset")
sql = "Select * from duyuru"
metin.open sql,Baglanti,1,3
baslik = Temiz(Request.Form("baslik"))
ekleyen = Temiz(Request.Form("ekleyen"))
tarih = Temiz(Request.Form("tarih"))
icerik = Temiz(Request.Form("icerik"))
%>
<%
IF baslik="" OR ekleyen=""  OR tarih="" OR icerik="" Then
response.Write("Hatalý Veri Girildi Geri Gidip Tekrar Dene..")
%>
<%
else
metin("baslik") = baslik
metin("ekleyen") = ekleyen
metin("tarih")= tarih
metin("icerik")= icerik
metin.Update
response.write ("Isteginiz (duyuru) Basariyla Gerceklestirildi Sagdan Secim Yapin.")
metin.close
set metin=nothing
%>
<%end if%>