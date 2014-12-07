<META http-equiv=Content-Type content="text/html; charset=ISO-8859-9">
<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from kategori ORDER BY ilk_harf"
yeniasp.Open sor,baglanti,1,3
%>
<%
islem=Request.QueryString("islem")
if islem="ekle" then
call ekle
end if

%>
  <table width="400" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td>
        <form method="POST" action="program_ekle.asp?islem=ekle">
          <div align="center">
            <table border="0" cellpadding="0" cellspacing="1" width="400" bgcolor="#D1D1D1">
              <tr>
                <td bgcolor="#808080" height="20">
                  <p align="center"><b><font color="#FFFFFF">YENY PROGRAM EKLEME BÖLÜMÜ</font></b></td>
              </tr>
            </table>
          </div>
          <div align="center">
            <table border="0" cellpadding="0" width="400" bgcolor="#D1D1D1" cellspacing="1">
              <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Program Adı : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="script_adi" size="35" class="form"></td>
              </tr>
                            <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Dil : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="dil" size="35" class="form"></td>
              </tr>
                            <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Boyut : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="boyut" size="35" class="form"></td>

              </tr>              <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Versiyon : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="versiyon" size="35" class="form"></td>

              </tr>              <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">OS : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="os" size="35" class="form"></td>
              </tr>
                           <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Telif : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="telif" size="35" class="form"></td>
              </tr>
                            <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Lisans : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="lisans" size="35" class="form"></td>
              </tr>
                              <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Tarih : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="tarih" size="35" class="form"></td>
              </tr>
                                            <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Ekleyen : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="ekleyen" size="35" class="form"></td>
              </tr>
              </tr>
              <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">URL : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="url" size="35" class="form"></td>
              </tr>
                                          <tr>
                <td width="165" align="right" height="25" bgcolor="#EAEAEA"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">İçerik : </font></strong></td>
                <td width="235" height="25" bgcolor="#EAEAEA">&nbsp;<textarea name="tanim"
                    rows="10" cols="35" class="form"></textarea></td>

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
</table>


</body>

</html>
<%
baglanti.close
set baglanti=nothing
%>
<%sub ekle%>
<!--#include file="inc.asp"-->
<%
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from download"
yeniasp.Open sor,baglanti,1,3
%>
<% Dim script_adi, boyut, dil, icerik, versiyon, os, lisans, tarih, tanim, telif, url, kid
id=Request.Form("id")
script_adi = Request.Form("script_adi")
boyut = Request.Form("boyut")
dil = Request.Form("dil")
icerik = Request.Form("icerik")
versiyon = Request.Form("versiyon")
os = Request.Form("os")
lisans = Request.Form("lisans")
tarih = Request.Form("tarih")
ekleyen = Request.Form("ekleyen")
tanim = Request.Form("tanim")
url = Request.Form("url")
telif = Request.Form("telif")
kid = Request.Form("kid")

yeniasp.addnew
yeniasp("script_adi")=script_adi
yeniasp("boyut")=boyut
yeniasp("dil")=dil
icerik = Request.Form("tanim")
yeniasp("versiyon")=versiyon
yeniasp("os")=os
yeniasp("lisans")=lisans
yeniasp("ekleyen")=ekleyen
yeniasp("tanim")=tanim
yeniasp("url")=url
yeniasp("telif")=telif
yeniasp("kid") = kid
yeniasp("onay") = 1
yeniasp.Update

Response.Write "<center><font face=verdana color=black size=1>Program eklendi...<br>Soldan Secim Yapyn</font></center>"
Response.End
end sub
%>
