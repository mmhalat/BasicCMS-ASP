
<!--#include file="head.asp"-->
<!--#include file="style.asp"-->
<meta http-equiv="Content-Language" content="tr">
<center>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>

<TABLE WIDTH=800 BORDER=0 CELLPADDING=0 CELLSPACING=0 height="138">
<tr><td width=2 rowspan=3 background="images/bg_1.jpg">&nbsp;</td>
	<td width="796" colspan=3><!--#include file="ust.asp"--></td>
	<td width=2 rowspan=3 background="images/bg_1.jpg">&nbsp;</td></tr>
<tr><td width=200 height=550 valign=top align=center>
		<br><TABLE WIDTH=190 valign=top BORDER=1 bordercolor=efefef align=center CELLPADDING=0 CELLSPACING=0 height="19">
		<tr><td width=190 bgcolor=34baff height="19">
          <p align="center"><font size="1" face="Verdana">Son Eklenen 5 Resim</font></td></tr>		
		<tr><td width=190 height="1"><!--#include file="kayan_resim.asp"--></td></tr>
		<tr><td width=190 height="1"><!--#include file="rastgele.asp"--></td></tr>
		<tr><td width=190 bgcolor=34baff height="19">
          <p align="center"><font size="1" face="Verdana">Linkler</font></td></tr>
		<tr><td width=190 height="50"><!--#include file="linkler.asp"--></td></tr>

		</table>
	</td>
	<td width=600 valign=top><br><br>
	<table border=0 cellpadding="2" cellspacing="2" align=center width="514" height="140">
<tr><td height="19" bgcolor=efefef align="center" width="104"><font size="1" face="Verdana">
  RESÝM</font></td>
<td height="19" bgcolor=efefef align="center" width="396"><font size="1" face="Verdana">&nbsp;RESÝM 
DETAYLARI</font></td>
</tr>

			<!--#include file="db.asp"-->
				<%
id=request("id")
Set Rs=Server.CreateObject("Adodb.Recordset")
sorgu = "Select * from galeri where Catid="&id&" order by id desc"
Rs. Open Sorgu, Bag, 1, 3
	adet=rs.recordcount
	shf = Request.QueryString("shf")
	if shf="" then 
	shf=1
	end if


	%>
 
	<%
If rs.eof then
Response.Write "<center>Veritabanýnda kayýtlý Resim yok...</center>"
Response.End
End If
%>

<% rs.pagesize = 5 
rs.absolutepage = shf
sayfa = rs.pagecount
for i=1 to rs.pagesize
if rs.eof then exit for
%>




<tr>

	    <td width="104" height="110"><a href="galeri_detay.asp?id=<%=rs("id")%>" target="uye" onClick="window.open('galeri_detay.asp?id=<%=rs("id")%>','uye','width=800,height=600 toolbar=yes scrollbars=yes' )">
        <font size="1" face="Verdana"><img src="<%=rs("img")%>" border=0 width="100" height="100" alt="<%=rs("detay")%>"></font></a></td>
	    <td width="396" height="110" valign=top><font size="1" face="Verdana">Resim Açýklamasý : <%=rs("detay")%><br>
	    Tarih : <%=rs("tarih")%><br>
	    Ýzlenme : <%=rs("izlenme")%>
	
	    </font></td>
	    </tr>
<tr><td height=1 bgcolor=c6c6c6 colspan=2></td></tr>	    
      
 
	    <%
			 rs.movenext
	
		%>    

	
	
		<center>

   <% next %>

 
	

	

</table>   </center></font> 
	    <p align="center"> 
	  <font color="#1D4196" size="1" face="Verdana">
  Galeride <%=adet%> Adet Resim bulundu...<br>Sayfa 
            :  <%
for y=1 to sayfa 
if shf=y then
response.write y
else
response.write "[<b><a href=""galeri.asp?shf="&y&"&id="&id&""">"&y&"</a></b>] "
end if
next
%>		</font>
		
		
		
		</TD>
	</TR>
		</TABLE>
	</td></tr>
<tr><td background="images/bk.gif" height=30 colspan=3 align=center><font size=1 face=verdana><%=copy%></font></td></tr></table>