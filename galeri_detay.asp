
			<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1254">
<META NAME="Abstract" CONTENT="islam akaid ilmihal islam tarihi islami videolar islami sohbetler lugat osmanl�ca s�zl�k">
<META NAME="Copyright" CONTENT="Bu Sitenin T�m Haklar� AyyildizSoFT Ad� Alt�nda Mehmet Metin HALAT ' a Aittir."> 
<META NAME="Description" CONTENT="TakvaOnline Bir �slami Portald�r Ve B�nyesinde �lmihal Ansiklopedisi �slam Tarihi , Osmanl�ca S�zl�k , Akaid �le �lgili Bilgiler , Y�zlerce Dua , Videolu Sohbetler , Videolu �Lahiler  , F�kralar , K�ssadan Hisseler  Ve Daha Binlerce ��eri�iyle T�rk �slam D�nyas�n�n Hizmetindedir...">
<meta http-equiv="Author" content="M.Metin HALAT">
			<!--#include file="include_file/db.asp"-->
			<%
if Not IsNumeric(REQUEST.QUERYSTRING("id" ) ) THEN
response.write "<center>Girdi�iniz id Numaras� ge�ersizdir<br>L�tfen Ge�erli bir id numaras� girin</center>"
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