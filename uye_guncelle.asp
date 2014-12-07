<!--#include file="include_file/yasak.asp"-->
<!--#include file="include_file/baglan.asp"-->
<!--#include file="include_file/fonksiyon.asp"--><head>
<STYLE type=text/css>
A:link {
	COLOR: #000000
}
A:visited {
	COLOR: #000000
}
A:hover {
	COLOR: #9b0000
}
A:active {
	COLOR: #006600
}
.style1 {
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
</STYLE>
<%
IF not Session("giris")="tamam" Then
Response.Redirect "default.asp"
End IF

Set metin = Server.CreateObject("ADODB.Recordset")
sql = "Select * from uyeler WHERE Kimlik="& Session("oid")
metin.open sql,Baglan,1,3

ad = veri(Request.Form("ad"))
soyad = veri(Request.Form("soyad"))
sifre = veri(Request.Form("sifre"))
mail = veri(Request.Form("mail"))
imza = veri(Request.Form("imza"))

%>

<%
IF ad="" OR soyad=""  OR sifre="" OR mail="" Then
%>
<table width="650" border="1" align="center" cellpadding="0" cellspacing="0" order bordercolor="#FFFFFF">
  <tr>
    <td width="650" height="150"><div align="center"><img src="images/arayuz_hata.gif" width="650" height="150"></div></td>
  </tr>
  <tr>
    <td width="650" height="100" bgcolor="#A80000"><div align="center">
      <p><span class="style1">Kullanici Adiniz Diger Bir &Uuml;ye &#304;le Ayni Yada Herhangi Bir Kutucugu Bos B&#305;rakt&#305;n&#305;z L&uuml;tfen Geri D&ouml;n&uuml;p Tekrar Deneyiniz. </span></p>
      <p><a href="default.asp">
          <input name="button" type=button onClick="history.back()" value="Geri">
          <br> 
          </a></p>
    </div></td>
  </tr>
</table>
<%
else


metin("ad") = ad
metin("soyad") = soyad
metin("sifre")= sifre
metin("mail")= mail
metin("imza") = imza
metin("ktarih") = date()
metin.Update%>
  <table width="650" border="1" align="center" cellpadding="0" cellspacing="0" order bordercolor="#FFFFFF">
  <tr>
    <td width="650" height="150"><div align="center"><img src="images/kayityapildi.gif" width="650" height="150"></div></td>
  </tr>
  <tr>
    <td width="650" height="100" bgcolor="#A80000"><div align="center">
      <p><a href="default.asp"><span class="style1">Anasayfaya D&ouml;nmek &#304;&ccedil;in T&#305;klay&#305;n </span></a></p>
      <p><a href="default.asp"><br> 
          </a></p></div></td>
  </tr>
</table>
<%
end if
%>





