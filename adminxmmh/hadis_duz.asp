<META http-equiv=Content-Type content="text/html; charset=ISO-8859-9">
<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%id=Request.QueryString("id")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from  hadisler where id="&id
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
        <form method="POST" action="hadis_duz.asp?id=<%=yeniasp("id")%>&islem=duzenle">
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
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">Tarih :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;<input name="tarih" type="text" class="form" id="tarih" value="<%=yeniasp("tarih")%>" size="35"></td>
              </tr>
			                              <tr>
                <td width="150" align="right" height="25" bgcolor="#EAEAEA">İcerik
                  :</td>
                <td width="250" height="25" bgcolor="#EAEAEA">&nbsp;
                  <textarea name="ayet_icerik" cols="30" rows="10" id="ayet_icerik"><%=yeniasp("hadis_icerik")%></textarea></td>
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
hadis_icerik=Request.Form("ayet_icerik")
tarih=Request.Form("tarih")

if hadis_icerik="" or tarih="" then
Response.Write "Hata! Eksik bilgi"

else
Set duz = Server.CreateObject("ADODB.RecordSet")
sor = "select * from  hadisler where id="&id
duz.open sor, baglanti, 1, 3

duz("hadis_icerik")=hadis_icerik
duz("tarih")=tarih
duz.Update

Response.Write "<center><font face=verdana color=black size=1>Bilgiler Güncellendi<br>Soldan secim Yapin</font></center>"
Response.End
end if
end sub
%>