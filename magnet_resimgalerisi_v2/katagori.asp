
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
				<table border=0 valign=top align=center width="409"> 
<tr>
	<!--#include file="db.asp"-->
<%
id=request.querystring("id")
Set Rs=Server.CreateObject("Adodb.Recordset")
sorgu = "Select * from katagori where Catid="&id&" order by katagori_adi"
Rs. Open Sorgu, Bag, 1, 3
adet = rs.recordcount
%>
<%
if rs.eof then
response.write "<font size=1 face=Verdana>Bu Katagoride Kayýtlý Resim Bulunamadý...</Font>"
end if
%>
<%
i=0
do while not rs.eof
i=i+1
%>
<% id =rs("id") %>
<%
set sayi =Server.CreateObject("ADODB.Recordset")
sql ="Select * From galeri  where  Catid = "& id
sayi.open sql,bag,1,3
toplam_sayi = sayi.recordcount
%>
<td width=259><img src="images/jpg.gif" border=0>&nbsp;<font size="1" face="Verdana"><a href="galeri.asp?id=<%=rs("id")%>"><b><%=rs("katagori_adi")%></b></a>  ( <%=toplam_sayi%> )</font><br></td>


<%
if i = 2 then
%></tr><tr><%
i=0
end if
%>

<%
rs.movenext
loop
%>
<%
rs.close
set rs=nothing
%></table><br><br>

	</td></tr>
<tr><td background="images/bk.gif" height=30 colspan=3 align=center><font size=1 face=verdana><%=copy%></font></td></tr>
</table>