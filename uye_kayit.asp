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
body {
	background-color: #8EC0E6;
}
</STYLE>
<%
IF Session("giris")="tamam" Then
Response.Redirect "default.asp"
End IF

Set rs = Server.CreateObject("ADODB.Recordset")
sql = "Select * from uyeler"
rs.open sql,Baglan,1,3

Set rm = Server.CreateObject("ADODB.Recordset")
sql = "Select * from mesajlar"
rm.open sql,Baglan,1,3

ad = veri(Request.Form("ad"))
soyad = veri(Request.Form("soyad"))
kulladi = veri(Request.Form("kulladi"))
sifre = veri(Request.Form("sifre"))
mail = veri(Request.Form("mail"))
imza = veri(Request.Form("imza"))
sifresoru = veri(Request.Form("sifresoru"))
cevap = veri(Request.Form("cevap"))
telefon = veri(Request.Form("telefon"))
meslek = veri(Request.Form("meslek"))
sehir = veri(Request.Form("sehir"))
cins = veri(Request.Form("cins"))
yas = veri(Request.Form("yas"))
web= veri(Request.Form("web"))

      Set uye_kontrol = Server.CreateObject("adodb.recordset")
      SQL="Select * from uyeler where kulladi='"&kulladi&"'"
      uye_kontrol.Open SQL,baglan,1,3
  
      IF NOT uye_kontrol.eof Then
%>


<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9"><table width="650" border="1" align="center" cellpadding="0" cellspacing="0" order bordercolor="#FFFFFF">
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

<%else
if  ad="" OR soyad="" OR kulladi="" OR sifre="" OR mail="" OR sifresoru="" OR cevap="" OR sehir="" OR yas="" then%>
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
<%else
rs.AddNew
rs("ad") = ad
rs("soyad") = soyad
rs("kulladi") = kulladi
rs("sifre")= sifre
rs("mail")= mail
rs("imza") = imza
rs("sifresoru")= sifresoru
rs("cevap") = cevap
rs("telefon")= telefon
rs("meslek") = meslek
rs("sehir")= sehir
rs("cins") = cins
rs("yas")= yas
rs("web") = web
rs("ktarih") = date()
rs.Update%>
<%rm.AddNew
rm("kimden") = "Admin"
rm("kime") = rs("kulladi")
rm("tarih") = now()
rm("mesaj")= "TakvaOnline Ailesine HOSGELDÝNÝZ<br><br>TAKVAONLÝNE YONETÝM"
rm("Konu")= "Hoþgeldiniz."
rm.Update%>
  <table width="650" border="1" align="center" cellpadding="0" cellspacing="0" order bordercolor="#FFFFFF">
  <tr>
    <td width="650" height="150"><div align="center"><img src="images/kayityapildi.gif" width="650" height="150"></div></td>
  </tr>
  <tr>
    <td width="650" height="100" bgcolor="#A80000"><div align="center">
      <p><a href="default.asp"><span class="style1">Anasayfaya D&ouml;nmek I&ccedil;in Tiklayin </span></a></p>
      <p><a href="default.asp"><br> 
          </a></p></div></td>
  </tr>
</table>
<%
end if
%>
<%end if%>





