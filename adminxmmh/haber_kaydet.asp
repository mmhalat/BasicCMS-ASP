<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<!--#include file="temizlikimandandir.asp"-->
<%
Set metin = Server.CreateObject("ADODB.Recordset")
sql = "Select * from haber"
metin.open sql,Baglanti,1,3

baslik = temiz(Request.Form("baslik"))
ekleyen = temiz(Request.Form("ekleyen"))
haber = temiz(Request.Form("haber"))
resim = temiz(Request.Form("resim"))
%>
<%
IF baslik="" OR ekleyen="" OR haber="" Then
response.Write("Hatali Veri Girildi Geri Gidip Tekrar Dene..")
%>
<%
else
metin.addnew
metin("tarih") = now()
metin("baslik") = baslik
metin("haber") = haber
metin("ekleyen") = ekleyen
metin("resim") =  resim
metin.Update
response.write ("Isteginiz (Haber) Basariyla Gerceklestirildi Sagdan Secim Yapin.")
metin.close
set metin=nothing
%>
<%
end if
baglanti.close
set baglanti=nothing
%>