
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
			<table border=0 valign=top align=center width="331"> 
<tr>

<!--#include file="db.asp"-->
<%
Set Rs=Server.CreateObject("Adodb.Recordset")
sorgu = "Select * from ana ad order by ad"
Rs. Open Sorgu, Bag, 1, 3
%>

<%
i=0
do while not rs.eof
i=i+1
%>
<td><img src="images/cat.bmp" border=0 width="17" height="22">&nbsp;<font size="1" face="Verdana"><a href="katagori.asp?id=<%=rs("id")%>"><b><%=rs("ad")%></b></a></font><br></td>


<%
if i = 2 then
%></tr><tr><%
i=0
end if
%>

<%
rs.movenext
loop
rs.close
set rs=nothing
%></table>
	</td></tr>
<tr><td background="images/bk.gif" height=30 colspan=3 align=center><font size=1 face=verdana><%=copy%></font></td></tr>
</table>