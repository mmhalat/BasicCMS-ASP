<!--#include file="include_file/baglan.asp"--><head>
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
<!--#include file="include_file/fonksiyon.asp" -->
<%

 kulladi=veri(Request.Form("kulladi"))
 sifre=veri(Request.Form("sifre"))
  
  Set uye_giris = Server.CreateObject("adodb.recordset")
  SQL="Select * from uyeler where kulladi='"&kulladi&"' and sifre='"&sifre&"'"
  uye_giris.open SQL,baglan,1,3
  
  IF Not uye_giris.EOF Then
  Session("giris") ="tamam"
  Session("kulladi")=uye_giris("kulladi")
  Session("oid")=uye_giris("Kimlik")
  uye_giris.Update
  %>
  
<table width="650" border="1" align="center" cellpadding="0" cellspacing="0" order bordercolor="#FFFFFF">
  <tr>
    <td width="650" height="150"><div align="center"><img src="images/arayuz.gif" width="650" height="150"></div></td>
  </tr>
  <tr>
    <td width="650" height="100" bgcolor="#A80000"><div align="center"><a href="default.asp"><span class="style1">Anasayfaya Donmek Ýçin Týklayýn </span><br> 
    </a></div></td>
  </tr>
</table>
  
  <%
  Else
%>

  <table width="650" border="1" align="center" cellpadding="0" cellspacing="0" order bordercolor="#FFFFFF">
  <tr>
    <td width="650" height="150"><div align="center"><img src="images/arayuz_hata.gif" width="650" height="150"></div></td>
  </tr>
  <tr>
    <td width="650" height="100" bgcolor="#A80000"><div align="center">
      <p><a href="default.asp"><span class="style1">Kullanýcý Adýnýzý Yada Þifrenizi Hatalý Girdiniz Lütfen Geri Giderek Tekrar Deneyiniz.</span></a></p>
      <p><a href="default.asp"><input type=button value="Geri" onClick="history.back()"><br> 
          </a></p>
    </div></td>
  </tr>
</table>

<%
  End IF

%>