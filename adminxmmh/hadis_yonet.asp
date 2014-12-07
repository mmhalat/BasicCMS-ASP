<META http-equiv=Content-Type content="text/html; charset=ISO-8859-9">
<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<!--#include file="banka_inc.asp"-->
<%Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from hadis ORDER BY id DESC"
yeniasp.Open sor,kon,1,3

git = Request.QueryString("git")
if git="" then 
git=1
end if

sil = Request.QueryString("sil")
if sil = "delete" then
call delete
else
end if

islem=Request.QueryString("islem")
if islem="ekle" then
call ekle
end if

%>

<%
sub delete
id = Request("id")
Set mailsil = Server.CreateObject("ADODB.RecordSet")
SQL_delete = "DELETE from hadis WHERE id="&id&""
mailsil.open SQL_delete,kon,1,3
response.redirect Request.ServerVariables("HTTP_REFERER")
end sub
%>

<body>

<div align="center">
  <center>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="1" width="479" bgcolor="#D1D1D1">
    <tr>
      <td width="368" bgcolor="#808080" height="20"><font color="#FFFFFF">&nbsp;<b>İçerik Adı </b></font></td>
      <td width="108" bgcolor="#808080" height="20">
        <p align="center"><b><font color="#FFFFFF">İŞLEM</font></b></td>
    </tr>
<%
yeniasp.pagesize = 20
yeniasp.absolutepage = git
sayfa = yeniasp.pagecount
for i=1 to yeniasp.pagesize
if yeniasp.eof then exit for
%>
    <tr>
      <td width="368" bgcolor="#FFFFFF">&nbsp;<%=yeniasp("isim")%></td>
      <td width="108" bgcolor="#FFFFFF">
        <p align="center"><a href="hbankaduz.asp?id=<%=yeniasp("id")%>">Düzenle</a> <b>-</b> <a href="hadis_yonet.asp?sil=delete&id=<%=yeniasp("id")%>">Sil</a></td>
    </tr>
<%yeniasp.movenext%>
<% next %>
  </table>
  </center>
</div>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" width="441" height="20">
    <tr>
      <td width="441">
        <p align="center">Sayfa : <%
for y=1 to sayfa 
if git=y then
response.write y
else
response.write "<b> <a href=""hadis_yonet.asp?git="&y&""">"&y&"</a></b>"
end if
next
%></td>
    </tr>
  </table>
  </center>
</div>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" width="400" height="20">
    <tr>
      <td></td>
    </tr>
  </table>
  </center>
</div>

<%
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from hadis_bankasi_kategoriler ORDER BY ilk_harf"
yeniasp.Open sor,baglanti,1,3
%>

</body>
