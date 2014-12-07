



<!--#include file="security.asp" -->


<!--#include file="head.asp" -->

<!--#include file="style.asp" -->
<!--#include file="home.asp" -->



	<center>
	<table border=0 cellpadding="2" cellspacing="2"  width="100%" height="96">
	<tr bgcolor="efefef">
	    <td width="369" align="center" height="13"><b>
        <font face="Tahoma" style="font-size: 8pt" color="#FF6603">Resim Adresi</font></b></td>
	    <td width="685" align="center" height="13"><font face="Tahoma" style="font-size: 8pt" color="#ff6603"><b>&nbsp;Resim 
        Detayý</b></td>
	    <td width="17" align="center" height="13"><font face="Tahoma" style="font-size: 8pt" color="#ff6603">&nbsp;</td>
	    <td width="17" align="center" height="13"><font face="Tahoma" style="font-size: 8pt" color="#ff6603"><center><a href="galeri_add.asp">
        <img src="images/add.gif" border=0></a></td>
		</tr>
	<tr><td width="1106" colspan=4 height="1" bgcolor="#7F8283" align="center"></td></tr>





	<!--#include file="db.asp"-->
	<%
	Sorgu = "select * from galeri id order by id desc"
	Rs.Open Sorgu, bag, 1, 3 
	
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
<% rs.pagesize = 10 
rs.absolutepage = shf
sayfa = rs.pagecount
for i=1 to rs.pagesize
if rs.eof then exit for
%>




	



	<tr bgcolor="efefef">

	    <td width="369" align="center" height="65"><font face="Tahoma" style="font-size: 8pt" color="#000000">&nbsp;<img src="<%=rs("img")%>" border=0 width="100" height="100"><br><%=rs("img")%></td>
	    <td width="685" align="center" height="65"><font face="Tahoma" style="font-size: 8pt" color="#000000">&nbsp;<%=rs("detay")%></td>

	    <td width="17" height="65" align="center"><a href="galeri_edit.asp?id=<%=rs("id")%>">
        <img src="images/edit.gif" border=0></a></td>
	    <td width="17" height="65" align="center"><a href="galeri_del.asp?id=<%=rs("id")%>">
        <img src="images/del.gif" border=0></a></td>
		</tr>






<center>
<%rs.movenext%>
      <% next %>
   
 
	</table>
	  <font color="#1D4196" size="1" face="Verdana, Arial, Helvetica, sans-serif">
  Galeride <%=adet%> Adet Resim bulundu...<br>Sayfa 
            : <%
for y=1 to sayfa 
if shf=y then
response.write y
else
response.write "[<b><a href=""galeri_list.asp?shf="&y&""">"&y&"</a></b>] "
end if
next
%></center></font>