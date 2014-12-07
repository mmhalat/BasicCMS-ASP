<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9" />
<!--#include file="sifre.asp"-->
<!-- #include file="inc.asp" -->
<%
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from lugat_kategoriler"
yeniasp.Open sor,baglanti,1,3

islem=Request.QueryString("islem")
if islem="ekle" then
call ekle
elseif islem="sil" then
call sil
end if

git = Request.QueryString("git")
if git="" then 
git=1
end if

sub sil
kid = Request("kid")
Set yeniasp = Server.CreateObject("ADODB.RecordSet")
SQL_delete = "delete from lugat_kategoriler where kid="&kid&""
yeniasp.open SQL_delete,baglanti,1,3
response.redirect Request.ServerVariables("HTTP_REFERER")
end sub
%>
<html>

<head>
</head>

<body>

<div align="center">
  <center>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="1" width="300" bgcolor="#D1D1D1">
    <tr>
      <td width="300" colspan="2" bgcolor="#808080" height="20">
        <p align="center"><font color="#FFFFFF"><b>Kategori Y?lemleri</b></font></td>
    </tr>
    <tr>
      <td width="200" bgcolor="#EAEAEA" height="15"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;<font color="#000000">Kategori
        Adı</font></font></strong></td>
      <td width="100" bgcolor="#EAEAEA" height="15">
        <p align="center"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Y?lem</font></strong></td>
    </tr>
<% Do while not yeniasp.eof %>
    <tr>
      <td width="200" bgcolor="#FFFFFF"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">&nbsp;<%=yeniasp("kategori_adi")%></font></td>
      <td width="100" bgcolor="#FFFFFF">
        <p align="center"><font size="2"><a href="katduzenle.asp?kid=<%=yeniasp("kid")%>"><font face="Verdana, Arial, Helvetica, sans-serif">Düzenle</font></a><font face="Verdana, Arial, Helvetica, sans-serif"> -
        <a href="kat_admin.asp?islem=sil&amp;kid=<%=yeniasp("kid")%>"> Sil</a></font></font></td>
    </tr>
<%yeniasp.movenext%>
<%Loop%>
  </table>
  </center>
</div>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" width="300">
    <tr>
      <td height="20"></td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" width="300">
    <tr>
      <td>
        <form method="POST" action="kat_admin.asp?islem=ekle">
          <div align="center">
            <table border="0" cellpadding="0" cellspacing="0" width="300" bgcolor="#D1D1D1" height="20">
              <tr>
                <td bgcolor="#808080">
                  <p align="center"><b><font color="#FFFFFF">Yeni Kategori
                  Ekleme Bölümü</font></b></td>
              </tr>
            </table>
          </div>
          <div align="center">
            <table border="0" cellpadding="0" width="300" bgcolor="#D1D1D1" cellspacing="1">
              <tr>
      <td width="100" align="right" height="25" bgcolor="#EAEAEA"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Kategori Adı</font><font face="Verdana, Arial, Helvetica, sans-serif">:</font></td>
      <td width="200" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="kategori_adi" size="25" class="form"></td>
              </tr>
              <tr>
      <td width="100" align="right" height="25" bgcolor="#EAEAEA"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">İlk Harf :</font></td>
      <td width="200" height="25" bgcolor="#EAEAEA">&nbsp;<input type="text" name="ilk_harf" size="25" class="form"></td>
              </tr>
              <tr>
      <td width="100" align="right" height="25" bgcolor="#EAEAEA">&nbsp;</td>
      <td width="200" height="25" bgcolor="#EAEAEA">
        <p align="center"><input type="submit" value="Tamam" name="Submit" class="form"></td>
              </tr>
            </table>
          </div>
        </form>
      </td>
    </tr>
  </table>
  </center>
</div>
<%sub ekle%>
<%
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from lugat_kategoriler"
yeniasp.Open sor,baglanti,1,3
%>
<% Dim kategori_adi, ilk_harf
kategori_adi = Request.Form("kategori_adi")
ilk_harf = Request.Form("ilk_harf")

yeniasp.addnew
yeniasp("kategori_adi") = kategori_adi
yeniasp("ilk_harf") = ilk_harf
yeniasp.update

Response.Write "<center><font face=verdana color=black size=1>Kategori eklendi...<br><a href=index.asp>Ana Sayfa</a></font></center>"
Response.End
end sub
%>
<%
baglanti.close
set baglanti=nothing
%>


</body>

</html>
