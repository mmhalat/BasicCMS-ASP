<META http-equiv=Content-Type content="text/html; charset=ISO-8859-9">
<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%id=Request.QueryString("id")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from  bb where id="&id
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
        <form method="POST" action="bb_duz.asp?id=<%=yeniasp("id")%>&islem=duzenle">
        <input type="hidden" name="id" value="<%=yeniasp("id")%>">
                  <div align="center">
            <table border="0" cellpadding="0" cellspacing="1" width="400" bgcolor="#D1D1D1">
              <tr>
                <td bgcolor="#808080" height="20">
                  <p align="center"><b><font color="#000000">İçerik Düzenleme Bölümü</font></b></td>
              </tr>
            </table>
          </div>
          <div align="center">
            <table border="0" cellpadding="0" width="400" bgcolor="#D1D1D1" cellspacing="1">
              <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Soru :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input name="soru" type="text" class="form" id="soru" value="<%=yeniasp("soru")%>" size="35"></td>
              </tr>
			                <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">hit :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input name="hit" type="text" class="form" id="hit" value="<%=yeniasp("hit")%>" size="35"></td>
              </tr>
			                <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">tarih :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input name="tarih" type="text" class="form" id="tarih" value="<%=yeniasp("tarih")%>" size="35"></td>
              </tr>
			  			                <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Ekleyen :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input name="ekleyen" type="text" class="form" id="ekleyen" value="<%=yeniasp("ekleyen")%>" size="35"></td>
              </tr>
			  			  			                <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">aciklama :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input name="aciklama" type="text" class="form" id="aciklama" value="<%=yeniasp("aciklama")%>" size="35"></td>
              </tr>
			                              <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">İcerik
                  :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;
                  <textarea name="cevap" cols="30" rows="10" id="cevap"><%=yeniasp("cevap")%></textarea></td>
              </tr><tr>
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
soru=Request.Form("soru")
tarih=Request.Form("tarih")
ekleyen=Request.Form("ekleyen")
hit=Request.Form("hit")
cevap=Request.Form("cevap")
aciklama=Request.Form("aciklama")

if tarih="" or ekleyen="" or hit=""  or soru="" or cevap="" or aciklama="" then
Response.Write "Hata! Eksik bilgi"

else
Set duz = Server.CreateObject("ADODB.RecordSet")
sor = "select * from  bb where id="&id
duz.open sor, baglanti, 1, 3

duz("soru")=soru
duz("tarih")=tarih
duz("ekleyen")=ekleyen
duz("hit")=hit
duz("cevap")=cevap
duz("aciklama")=aciklama
duz.Update

Response.Write "<center><font face=verdana color=black size=1>Bilgiler Güncellendi<br>Soldan secim Yapin</font></center>"
Response.End
end if
end sub
%>