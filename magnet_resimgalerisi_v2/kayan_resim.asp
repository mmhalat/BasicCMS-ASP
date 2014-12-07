 <MARQUEE align=center direction=up height=199 onmouseout=this.start(); onmouseover=this.stop(); scrollAmount=1 scrollDelay=40 width=190 left="1" top="100">
 
<!--#include file="db.asp"-->
<% set rs= Server.CreateObject("ADODB.Recordset")
SQL =" Select top 5 * from galeri order by id desc "
rs.open SQL,bag,1,3

%>

<%Do While not rs.Eof %>

 
  
 
  <p align="center">
  
 <a href="galeri_detay.asp?id=<%=rs("id")%>" target="uye" onClick="window.open('galeri_detay.asp?id=<%=rs("id")%>','uye','width=800,height=600 toolbar=yes scrollbars=yes' )"> <img src="<%=rs("img")%>" alt="<%=rs("detay")%>" border=0 width=150 height=150></a>
<%
rs.Movenext
Loop
%></marquee>