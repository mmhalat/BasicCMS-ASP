 <!--#include file="db.asp"-->
<%
Sorgu = "select * from galeri id order by id"
Rs.Open Sorgu, bag, 1, 3 
%>

<%
ToplamKayit = rs.RecordCount

	Randomize
	gidilecekKayit = Int((ToplamKayit * Rnd ) + 0)

rs.Move(gidilecekKayit)
%>

  
  <table border=0 valign=top align=center width="190" height="74">
  <tr><td bgcolor="34baff" width="190" height="17">
    <p align="center"><font size="1" face="Verdana">Rastgele Resim</font></td></tr>
  <tr><td width="190" height="49">
  <p align="center">
  <a href="galeri_detay.asp?id=<%=rs("id")%>" target="uye" onClick="window.open('galeri_detay.asp?id=<%=rs("id")%>','uye','width=800,height=600 toolbar=yes scrollbars=yes' )"><img src="<%=rs("img")%>" border=0 width=150 height=150></a><br>
  <%=rs("detay")%></td></tr></table>