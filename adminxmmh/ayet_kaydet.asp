<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set metin = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ayetler"
metin.open sql,Baglanti,1,3

tarih = Request.Form("tarih")
ayet_icerik = Request.Form("ayet_icerik")
%>
<%
IF tarih="" OR ayet_icerik="" Then
response.Write("Hatalý Veri Girildi Geri Gidip Tekrar Dene..")
%>
<%
else
metin.addnew
metin("tarih") = tarih
metin("ayet_icerik") = ayet_icerik
metin.Update
response.write ("Isteginiz (ayet) Basariyla Gerceklestirildi Sagdan Secim Yapin.")
metin.close
set metin=nothing
%>
<%end if
baglanti.close%>