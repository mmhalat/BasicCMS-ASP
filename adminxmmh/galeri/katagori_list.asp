	<center>
	<table border=0 cellpadding="2" cellspacing="2"  width="100%" height="43">
	<tr bgcolor="efefef">
	    <td width="1084" align="center" height="13"><b>
        <font face="Tahoma" style="font-size: 8pt" color="#FF6603">Katagori adi</font></b></td>
	    <td width="17" align="center" height="13"><font face="Tahoma" style="font-size: 8pt" color="#ff6603"><center><a href="katagori_add.asp">
        <img src="../images/add.gif" width="13" height="13" border=0></a></td>
	  </tr>
	<tr><td width="1107" colspan=2 height="1" bgcolor="#7F8283" align="center"></td></tr>





	<!--#include file="inc.asp"-->
	<%
	set rs=server.CreateObject("adodb.recordset")
	Sorgu = "select * from katagori id order by id desc"
	Rs.Open Sorgu, baglanti, 1, 3 
	
	adet=rs.recordcount
	shf = Request.QueryString("shf")
	if shf="" then 
	shf=1
	end if


	%>




<%
If rs.eof then
Response.Write "<center>Veritabanýnda kayýtlý Katagori yok...</center>"
Response.End
End If
%>
<% rs.pagesize = 20 
rs.absolutepage = shf
sayfa = rs.pagecount
for i=1 to rs.pagesize
if rs.eof then exit for
%>




	



	<tr bgcolor="efefef">

	    <td width="1084" align="center" height="12"><font face="Tahoma" style="font-size: 8pt" color="#000000"><%=rs("katagori_adi")%></td>

	    <td width="17" height="12" align="center"><a href="katagori_del.asp?id=<%=rs("id")%>">
        <img src="../images/del.gif" width="15" height="17" border=0></a></td>
	  </tr>






<center>
<%rs.movenext%>
      <% next %>
   
 
	</table>
	  <font color="#1D4196" size="1" face="Verdana, Arial, Helvetica, sans-serif">
  Galeride <%=adet%> Adet katagori bulundu...<br>Sayfa 
            : <%
for y=1 to sayfa 
if shf=y then
response.write y
else
response.write "[<b><a href=""katagori_list.asp?shf="&y&""">"&y&"</a></b>] "
end if
next
%></center></font>