
			<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1254">
<META NAME="Abstract" CONTENT="islam akaid ilmihal islam tarihi islami videolar islami sohbetler lugat osmanlıca sözlük">
<META NAME="Copyright" CONTENT="Bu Sitenin Tüm Hakları AyyildizSoFT Adı Altında Mehmet Metin HALAT ' a Aittir."> 
<META NAME="Description" CONTENT="TakvaOnline Bir İslami Portaldır Ve Bünyesinde İlmihal Ansiklopedisi İslam Tarihi , Osmanlıca Sözlük , Akaid İle İlgili Bilgiler , Yüzlerce Dua , Videolu Sohbetler , Videolu İLahiler  , Fıkralar , Kıssadan Hisseler  Ve Daha Binlerce İçeriğiyle Türk İslam Dünyasının Hizmetindedir...">
<meta http-equiv="Author" content="M.Metin HALAT">
			<!--#include file="include_file/db.asp"-->
			<%
if Not IsNumeric(REQUEST.QUERYSTRING("id" ) ) THEN
response.write "<center>Girdiğiniz id Numarası geçersizdir<br>Lütfen Geçerli bir id numarası girin</center>"
response.end
end if
%> 
			<%
id=request("id")
Set Rs=Server.CreateObject("Adodb.Recordset")
sorgu = "Select * from galeri where id="&id&" order by id desc"
Rs. Open Sorgu, Baglanti, 1, 3

rs("izlenme") =rs("izlenme") + 1
rs.update 
%>

	<center>
			
			<table width="800" border=0 align=center>
			<tr><td width="148" align="center"><font size=2 Face="Tahoma">
              <center><img src="<%=rs("img")%>" border=0 alt="<%=rs("detay")%>"></center></font></td></tr>
			</table>		
			<%
			rs.close
			set rs=nothing
			baglanti.close
			set baglanti=nothing
			%>
            <p align="center">
		
            <input type="button" value="Pencereyi Kapat" onClick="self.close()" style="font-size: 10px; font-family: ver; border-style: solid; border-width: 1"></p>