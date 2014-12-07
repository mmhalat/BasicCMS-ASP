<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set metin = Server.CreateObject("ADODB.Recordset")
sql = "Select * from sayfa_destekleyenler"
metin.open sql,Baglanti,1,3
link = Request.Form("link")
link1 = Request.Form("link1")
link2 = Request.Form("link2")
link3 = Request.Form("link3")
link4 = Request.Form("link4")
link5 = Request.Form("link5")
link6 = Request.Form("link6")
link7 = Request.Form("link7")
link8 = Request.Form("link8")
link9 = Request.Form("link9")
link10 = Request.Form("link10")
%>
<%
metin("link") = link
metin("link1") = link1
metin("link2") = link2
metin("link3") = link3
metin("link4") = link4
metin("link5") = link5
metin("link6") = link6
metin("link7") = link7
metin("link8") = link8
metin("link9") = link9
metin("link10") = link10
metin.Update
response.write ("Isteginiz Basariyla Gerceklestirildi Sagdan Secim Yapin.")
metin.close
set metin=nothing
%>