<META http-equiv=Content-Type content="text/html; charset=ISO-8859-9">
<!--#include file="sifre.asp"-->
<!--#include file="anket_inc.asp"-->
<%id=Request.QueryString("id")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from sorular where id="&id
yeniasp.Open sor,AnketBag,1,3

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
        <form method="POST" action="anket.asp?id=<%=yeniasp("id")%>&islem=duzenle">
        <input type="hidden" name="id" value="<%=yeniasp("id")%>">
                  <div align="center">
            <table border="0" cellpadding="0" cellspacing="1" width="400" bgcolor="#D1D1D1">
              <tr>
                <td bgcolor="#808080" height="20">
                  <p align="center"><b><font color="#000000">Anket Düzenle. </font></b></td>
              </tr>
            </table>
          </div>
          <div align="center">
            <table border="0" cellpadding="0" width="400" bgcolor="#D1D1D1" cellspacing="1">
              <tr>
                <td width="143" align="right" height="25" bgcolor="#EAEAEA">Soru :</td>
                <td width="254" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="isim" size="35" class="form" value="<%=yeniasp("soru")%>"></td>
              </tr>
                            <tr>
                <td width="143" align="right" height="25" bgcolor="#EAEAEA">Secenek1
                  :</td>
                <td width="254" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="ekleyen" size="35" class="form" value="<%=yeniasp("ekleyen")%>"></td>
              </tr>
                            <tr>
                <td width="143" align="right" height="25" bgcolor="#EAEAEA">Secenek2
                  :</td>
                <td width="254" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="tarih" size="35" class="form" value="<%=yeniasp("tarih")%>"></td>
              </tr>
                            <tr>
                <td width="143" align="right" height="25" bgcolor="#EAEAEA">Secenek 3
                  :</td>
                <td width="254" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="aciklama" size="35" class="form" value="<%=yeniasp("aciklama")%>"></td>
              </tr>
			                              <tr>
                <td width="143" align="right" height="25" bgcolor="#EAEAEA">Secenek 4
                  : </td>
                <td width="254" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="aciklama" size="35" class="form" value="<%=yeniasp("aciklama")%>"></td>
              </tr>
                         
              <tr>
<%
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sora = "Select * from akaid_kategoriler ORDER BY ilk_harf"
yeniasp.Open sora,baglanti,1,3
%>
                <td height="25" colspan="2" align="right" bgcolor="#EAEAEA">&nbsp;</td>
                <tr>
                <td height="25" colspan="2" align="right" bgcolor="#EAEAEA">
                  <p align="center"><input type="submit" value="Kaydet" name="Submit" class="form">
                  </td>
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
isim=Request.Form("isim")
ac=Request.Form("ac")
ekleyen = Request.Form("ekleyen")
tarih = Request.Form("tarih")
aciklama = Request.Form("aciklama")
kid = Request.Form("kid")

if isim="" or ekleyen="" or kid="" or aciklama="" or tarih="" then
Response.Write "Hata! Eksik bilgi"

else
Set duz = Server.CreateObject("ADODB.RecordSet")
sor = "select * from akaid where id="&id
duz.open sor, kon, 1, 3

duz("isim")=isim
duz("ekleyen")=ekleyen
duz("tarih")=tarih
duz("aciklama")=aciklama
duz("ac")=ac
duz("kid")=kid
duz.Update

Response.Write "<center><font face=verdana color=black size=1>Bilgiler Güncellendi<br>Soldan secim Yapin</font></center>"
Response.End
end if
end sub
%>