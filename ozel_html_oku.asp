<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1254">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1254">
<META NAME="Abstract" CONTENT="islam akaid ilmihal islam tarihi islami videolar islami sohbetler lugat osmanlıca sözlük">
<META NAME="Copyright" CONTENT="Bu Sitenin Tüm Hakları AyyildizSoFT Adı Altında Mehmet Metin HALAT ' a Aittir."> 
<META NAME="Description" CONTENT="TakvaOnline Bir İslami Portaldır Ve Bünyesinde İlmihal Ansiklopedisi İslam Tarihi , Osmanlıca Sözlük , Akaid İle İlgili Bilgiler , Yüzlerce Dua , Videolu Sohbetler , Videolu İLahiler  , Fıkralar , Kıssadan Hisseler  Ve Daha Binlerce İçeriğiyle Türk İslam Dünyasının Hizmetindedir...">
<meta http-equiv="Author" content="M.Metin HALAT">
<html>
<style type="text/css">
<!--
.style1 {font-size: 12px}
.style3 {font-size: 12px; font-family: Verdana, Arial, Helvetica, sans-serif; }
.style4 {font-family: Georgia, "Times New Roman", Times, serif}
.style5 {font-size: 12px; font-family: Georgia, "Times New Roman", Times, serif; }
-->
</style>
<head>
<title>
</title>
</head>
<body bgcolor="#FFCCCD">

	  
	  <!--#include file="include_file/banka_db.asp"-->
	  <%
if Not IsNumeric(REQUEST.QUERYSTRING("id" ) ) THEN
response.write "<center>Girdiğiniz id Numarası geçersizdir<br>Lütfen Geçerli bir id numarası girin</center>"
response.end
end if
%> 
	  <% dim id
id=request.querystring("id") %> 
<%
Set ekle = Server.CreateObject ("ADODB.RecordSet")
sql = " Select * from ozel_gunler where id=" & id
ekle.open sql,kon,1,3
ekle.update
ekle("hit")=ekle("hit")+1
ekle.update
%>
<table width="920" height="96" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#BEC9DB" id="Table_01">
  <tr bgcolor="#BEC9DB">  
    <td height="15" colspan="2" class="nav"><div align="center" class="style3 style1 style4">
      <div align="center"><strong><span class="nav style42">
          <%=ekle("isim") %>  
      </span></strong></div>
    </div></td>  
  </tr>  
  <tr bgcolor="#F1F1F1">  
    <td height="24" colspan="2"><div align="left" class="style5"><span class="style3"><strong>
       <%=ekle("ac") %></div></td>  
  </tr>  
  <tr bgcolor="#F1F1F1">  
    <td height="24" colspan="2"><div align="left" class="style5"><span class="style1"><strong>
        <span class="style26">Ekleyenin NOTU : </span><%=ekle("aciklama") %> </strong></span></div></td>  
  </tr>  
  <tr bgcolor="#F1F1F1">  
    <td height="24" colspan="2"><div align="center" class="style5"><span class="nav "><strong>Toplam<span class="style26">      <%=ekle("hit")%></span>
    defa okundu. </strong></span></div></td>
  </tr>  
  <tr>  
    <td width="446" height="15" bgcolor="#F1F1F1"><div align="left" class="style3 style1 style4"><strong><span class="style26">Ekleyen :</span> <%=ekle("ekleyen")%></strong></div></td>
    <td width="456" height="15" bgcolor="#F1F1F1"><div align="left" class="style3 style1 style4"><strong><span class="style26">Eklenme Tarihi :</span> <%=ekle("tarih")%></strong></div></td>
  </tr>  
    <tr bgcolor="#F1F1F1">  
    <td height="24" colspan="2"><div align="center" class="style3 style1 style4"><strong><a href=javascript:history.back()>Geri Dön </a></strong></div></td>
  </tr>  
</table>
</body>
</html>