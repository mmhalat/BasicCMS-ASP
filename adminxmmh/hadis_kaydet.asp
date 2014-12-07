<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set metin = Server.CreateObject("ADODB.Recordset")
sql = "Select * from hadisler"
metin.open sql,Baglanti,1,3

tarih = Request.Form("tarih")
hadis_icerik = Request.Form("hadis_icerik")
%>
<%
IF tarih="" OR hadis_icerik="" Then
response.Write("Hatali Veri Girildi Geri Gidip Tekrar Dene..")
%>
<%
else
metin.addnew
metin("tarih") = tarih
metin("hadis_icerik") = hadis_icerik
metin.Update
response.write ("Isteginiz (hadis) Basariyla Gerceklestirildi Sagdan Secim Yapin.")
metin.close
set metin=nothing
%>
<%end if
baglanti.close%>