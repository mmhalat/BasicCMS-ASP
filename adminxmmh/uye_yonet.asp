<!--#include file="sifre.asp"-->
<!--#include file="uye_inc.asp" -->
<%
Set rs = Server.CreateObject("ADODB.Recordset")
sql = "Select * from uyeler"
rs.open sql,Baglanti,1,3

%>       
<style>
<!--
.form1       { color: #000000; background-color: #F0F0F0; font-family: Tahoma; font-size: 8pt; border: 1 solid #525454" }
.style1 {color: #000000}
-->
</style>
<center>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#000000" width="80%">
              <tr>
                <td width="100%" height="25" bgcolor="#FFFFFF">
                <font face="Tahoma" style="font-size: 8pt" color="#C0C0C0">&nbsp;</font><font face="Tahoma" style="font-size: 8pt"><span class="style1"><b>�</b>&nbsp;<b>Y�netim Paneli</b></span></font>
	</td>
              </tr>
              <tr>
                <td width="100%" height="24" colspan="3">
                  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber6" height="60">
                    <tr>
<td width="100%">
       <table width="100%" border="1" cellpadding="3" cellspacing="1" bordercolor="#000000">
    <tr height="25" bgcolor="#FFFFFF">
     <td width="7%" align="center"><span class="style1"></span></td>
     <td width="25%" align="center"><span style="color: #000000"><font face="Tahoma" style="font-size: 8pt"><b>Ad</b></font></span></td>
     <td width="25%" align="center"><span style="color: #000000"><font face="Tahoma" style="font-size: 8pt"><b>Soyad</b></font></span></td>
     <td width="25%" align="center"><span style="color: #000000"><font face="Tahoma" style="font-size: 8pt"><b>Nick</b></font></span></td>
	      <td width="25%" align="center"><span style="color: #000000"><font face="Tahoma" style="font-size: 8pt"><b>Sifre</b></font></span></td>
		       <td width="25%" align="center"><span style="color: #000000"><font face="Tahoma" style="font-size: 8pt"><b>Cinsiyet</b></font></span></td>
	      <td width="25%" align="center"><span style="color: #000000"><font face="Tahoma" style="font-size: 8pt"><b>Ya&#351;</b></font></span></td>
		       <td width="25%" align="center"><span style="color: #000000"><font face="Tahoma" style="font-size: 8pt"><b>&#304;mza</b></font></span></td>
			        <td width="25%" align="center"><span style="color: #000000"><font face="Tahoma" style="font-size: 8pt"><b>Mail</b></font></span></td>
					     <td width="25%" align="center"><span style="color: #000000"><font face="Tahoma" style="font-size: 8pt"><b>Telefon</b></font></span></td>
						      <td width="25%" align="center"><span style="color: #000000"><font face="Tahoma" style="font-size: 8pt"><b>Meslek</b></font></span></td>
                              <td width="18%" align="center"><span style="color: #000000"><font face="Tahoma" style="font-size: 8pt"><b>&#350;ehir</b></font></span></td>    
                              <td width="18%" align="center"><span style="color: #000000"><font face="Tahoma" style="font-size: 8pt"><b>D�zenle</b></font></span></td>   
     <td width="18%" align="center"><span style="color: #000000"><font face="Tahoma" style="font-size: 8pt"><b>Sil</b></font></span></td>   
    </tr>
<%
shf = Request.QueryString("shf")
IF Not IsNumeric(REQUEST.QUERYSTRING("shf")) THEN
Response.Redirect "default.asp"
Response.End
END IF

If shf="" Then shf="1"
rs.pagesize = 15
rs.absolutepage = shf
sayfa_sayisi = rs.pagecount
For i=1 To rs.pagesize
If rs.Eof Then exit for
%>    
<tr bgcolor="#FFFFFF">
<td><center class="style1">
  <font face="Tahoma" style="font-size: 8pt"><b>#</b></font>
</center></td>
<td><center class="style1">
  <font face="Tahoma" style="font-size: 8pt"><b><%=rs("ad")%></b></font>
</center></td>
<td><center class="style1">
  <font face="Tahoma" style="font-size: 8pt"><b><%=rs("soyad")%></b></font>
</center></td>
<td><center class="style1">
  <font face="Tahoma" style="font-size: 8pt"><b><%=rs("kulladi")%></b></font>
</center></td>
<td><center class="style1">
  <font face="Tahoma" style="font-size: 8pt"><b><%=rs("sifre")%></b></font>
</center></td>
<td><center class="style1">
  <font face="Tahoma" style="font-size: 8pt"><b><%=rs("cins")%></b></font>
</center></td>
<td><center class="style1">
  <font face="Tahoma" style="font-size: 8pt"><b><%=rs("yas")%></b></font>
</center></td>
<td><center class="style1">
  <font face="Tahoma" style="font-size: 8pt"><b><%=rs("imza")%></b></font>
</center></td>
<td><center class="style1">
  <font face="Tahoma" style="font-size: 8pt"><b><%=rs("mail")%></b></font>
</center></td>
<td><center class="style1">
  <font face="Tahoma" style="font-size: 8pt"><b><%=rs("telefon")%></b></font>
</center></td>
<td><center class="style1">
  <font face="Tahoma" style="font-size: 8pt"><b><%=rs("meslek")%></b></font>
</center></td>
<td><center class="style1">
  <font face="Tahoma" style="font-size: 8pt"><b><%=rs("sehir")%></b></font>
</center></td>
<td><center class="style1"><a href="uye_duz.asp?id=<%=rs("Kimlik")%>"><font face="Wingdings" Size="5"><b>N</b></font></a></center></td>
<td><center class="style1"><a href="uye_sil.asp?id=<%=rs("Kimlik")%>"><font face="Wingdings" Size="5"><b>N</b></font></a></center></td>
</tr>
<%
rs.Movenext
Next
%>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
<%
          Response.Write "<br><center>"
          Response.Write "<font face=verdana size=1 color=#C0C0C0>&nbsp;<b>Sayfalar :&nbsp;</b></font>"
          For g = 1 To sayfa_sayisi
          If g = CInt(shf) Then
          Response.Write "<font face=verdana size=1 color=#C0C0C0>[" & g & "],</font>"
          Else
          Response.Write "<a href=uye_yonet.asp?shf=" & g & "><font face=verdana size=1 color=#C0C0C0>" & g & "</a>,</font>"
          End If
          Next
          Response.Write "</center>"
%>

</body>
</html>
<%baglanti.close%>