<META http-equiv=Content-Type content="text/html; charset=ISO-8859-9">
<!--#include file="sifre.asp"-->
<!--#include file="temizlikimandandir.asp"-->
<!--#include file="inc.asp"-->
<%
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from ozel_gunler_kategoriler ORDER BY ilk_harf"
yeniasp.Open sor,baglanti,1,3
%>
<%
islem=Request.QueryString("islem")
if islem="ekle" then
call ekle
end if

%>
        <form method="POST" action="ozel_icerik_ekle.asp?islem=ekle">
          <div align="center">
            <table border="0" cellpadding="0" cellspacing="1" width="400" bgcolor="#D1D1D1">
              <tr>
                <td bgcolor="#990000" height="20">
                <p align="center"><b><font color="#FFFFFF">İçerik Ekle... </font></b></td>
              </tr>
            </table>
          </div>
          <div align="center">
            <table border="0" cellpadding="0" width="400" bgcolor="#D1D1D1" cellspacing="1">
              <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Baslik : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input name="isim" type="text" class="form" id="isim" size="35"></td>
              </tr>
                            <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Ekleyen : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input name="ekleyen" type="text" class="form" id="ekleyen" size="35"></td>
              </tr>
                            <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Tarih : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input name="tarih" type="text" class="form" id="tarih" size="35"></td>

              </tr>              <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Aciklama : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input name="aciklama" type="text" class="form" id="aciklama" size="35"></td>

              </tr>
                                          <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">İçerik : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<textarea name="ac" cols="35"
                    rows="12" class="form" id="ac"></textarea></td>

              </tr> 
              <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Kategori </font></strong>: </td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<select size="1" name="kid" class="form">
                  <option selected>Kategori Seç</option>
                  <% Do while not yeniasp.eof %><option value="<%=yeniasp("kid")%>"><%=yeniasp("kategori_adi")%></option><%yeniasp.movenext%><%Loop%>
                  &nbsp;&nbsp; </select></td>
              </tr>
              <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"></td>
                <td width="235" height="25" bgcolor="#EAEAEA">
        <p align="center"><input type="submit" value="Yolla" name="Submit" class="form"></form></td>
              </tr>
</body>

</html>
<%baglanti.close%>
<%sub ekle%>
<!--#include file="banka_inc.asp"-->
<%
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from ozel_gunler"
yeniasp.Open sor,kon,1,3
%>
<% Dim script_adi, boyut, dil, icerik, versiyon, os, lisans, tarih, tanim, telif, url, kid
id= Request.Form("id")
baslik = TEmiz(Request.Form("isim"))
aciklama = Temiz(Request.Form("aciklama"))
ac = Temiz(Request.Form("ac"))
tarih = Temiz(Request.Form("tarih"))
ekleyen = Temiz(Request.Form("ekleyen"))
kid = Temiz(Request.Form("kid"))

yeniasp.addnew
yeniasp("isim")=baslik
yeniasp("aciklama")=aciklama
yeniasp("ac")=ac
yeniasp("ekleyen")=ekleyen
yeniasp("tarih")=tarih
yeniasp("kid") = kid
yeniasp.Update

Response.Write "<center><font face=verdana color=black size=2>Icerik eklendi...<br>Soldan Secim Yapın</font></center>"
Response.End
end sub
%>
