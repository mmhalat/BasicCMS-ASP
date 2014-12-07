<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%id=Request.QueryString("id")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from download where id="&id
yeniasp.Open sor,baglanti,1,3

islem=Request.QueryString("islem")
if islem="duzenle" then
call duzenle
end if
%>
<html>

<body>

<div align="center">
  <center>
  </center>
</div>
<div align="center">
  <center>

  <table border="0" cellpadding="0" cellspacing="0" width="400">
    <tr>
      <td>
        <form method="POST" action="aspduzenle.asp?id=<%=yeniasp("id")%>&islem=duzenle">
        <input type="hidden" name="id" value="<%=yeniasp("id")%>">
                  <div align="center">
            <table border="0" cellpadding="0" cellspacing="1" width="400" bgcolor="#D1D1D1">
              <tr>
                <td bgcolor="#808080" height="20">
                  <p align="center"><b><font color="#FFFFFF">PROGRAM DÜZENLEME BÖLÜMÜ</font></b></td>
              </tr>
            </table>
          </div>
          <div align="center">
            <table border="0" cellpadding="0" width="400" bgcolor="#D1D1D1" cellspacing="1">
              <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Program
                  Adý :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="script_adi" size="35" class="form" value="<%=yeniasp("script_adi")%>"></td>
              </tr>
                            <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Boyut
                  :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="boyut" size="35" class="form" value="<%=yeniasp("boyut")%>"></td>
              </tr>
                            <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Dili
                  :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="dil" size="35" class="form" value="<%=yeniasp("dil")%>"></td>
              </tr>
                            <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Versiyon
                  :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="versiyon" size="35" class="form" value="<%=yeniasp("versiyon")%>"></td>
              </tr>
                            <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Platform
                  :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="os" size="35" class="form" value="<%=yeniasp("os")%>"></td>
                              <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Lisans
                  :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="lisans" size="35" class="form" value="<%=yeniasp("lisans")%>"></td>
              </tr>
                              <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Ekleme
                  :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="tarih" size="35" class="form" value="<%=yeniasp("tarih")%>"></td>
              </tr>
                                            <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Ekleyen
                  :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="ekleyen" size="35" class="form" value="<%=yeniasp("ekleyen")%>"></td>
              </tr>
                                            <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Link
                  :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="url" size="35" class="form" value="<%=yeniasp("url")%>"></td>
              </tr>
              <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Açýklamasý
                  :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="tanim" size="35" class="form" value="<%=yeniasp("tanim")%>"></td>
              </tr>
              <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Telif
                  :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="telif" size="35" class="form" value="<%=yeniasp("telif")%>"></td>
              </tr>
                              <tr>
                    <td width="150" align="right" height="25" bgcolor="#EAEAEA">Program Onayý</font></td>
:</b></font></td>
                    <td width="250" height="25" bgcolor="#EAEAEA"><select name="onay" size="1">
                        <option value="1">True</option>
                        <option value="0">False</option>
                    </select></td>
              <tr>
<%
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sora = "Select * from kategori ORDER BY ilk_harf"
yeniasp.Open sora,baglanti,1,3
%>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Kategori
                  :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<select size="1" name="kid" class="form">
                    <option selected>Kategori Seç</option>
                    <% Do while not yeniasp.eof %>
                    <option value="<%=yeniasp("kid")%>"><%=yeniasp("kategori_adi")%></option>
                    <%yeniasp.movenext%>
                    <%Loop%>
                    &nbsp;&nbsp; 
                  </select></td>
              <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">&nbsp;</td>
                <td width="250" height="25" bgcolor="#EAEAEA">
                  <p align="center"><input type="submit" value="Düzenle" name="Submit" class="form"></td>
              </tr>
            </table>
          </div>
        </form>
      </td>
    </tr>
  </table>
  </center>
</div>

</body>

</html>
<%
sub duzenle
id=Request.Form("id")
script_adi = Request.Form("script_adi")
boyut = Request.Form("boyut")
dil = Request.Form("dil")
versiyon = Request.Form("versiyon")
os = Request.Form("os")
lisans = Request.Form("lisans")
tarih = Request.Form("tarih")
ekleyen = Request.Form("ekleyen")
tanim = Request.Form("tanim")
url = Request.Form("url")
telif = Request.Form("telif")
kid = Request.Form("kid")
onay = Request.Form("onay")

if script_adi="" or url="" or kid="" or tanim="" or telif="" then
Response.Write "Hata! Eksik bilgi"

else
Set duz = Server.CreateObject("ADODB.RecordSet")
sor = "select * from download where id="&id
duz.open sor, baglanti, 1, 3

duz("script_adi")=script_adi
duz("boyut")=boyut
duz("dil")=dil
duz("versiyon")=versiyon
duz("os")=os
duz("lisans")=lisans
duz("tarih")=tarih
duz("ekleyen")=ekleyen
duz("tanim")=tanim
duz("url")=url
duz("telif")=telif
duz("onay")=onay
duz("kid")=kid
duz.Update

Response.Write "<center><font face=verdana color=black size=1>Bilgiler Güncellendi<br>Sagdan secim Yapin</font></center>"
Response.End
end if
end sub
%>









