


			<!--#include file="db.asp"-->
			<%
id=request("id")
Set Rs=Server.CreateObject("Adodb.Recordset")
sorgu = "Select * from galeri where id="&id&" order by id desc"
Rs. Open Sorgu, Bag, 1, 3

rs("izlenme") =rs("izlenme") + 1
rs.update 
%>

	<center>
			
			<table border=0 align=center>
			<tr><td width="134" align="center"><font size=2 Face="Tahoma">
              <img src="<%=rs("img")%>" border=0 alt="<%=rs("detay")%>"></font></td></tr>
			</table>		
			<%
			rs.close
			set rs=nothing
			bag.close
			set bag=nothing
			%>
            <p align="center">
		
            <input type="button" value="Pencereyi Kapat" onClick="self.close()" style="font-size: 10px; font-family: ver; border-style: solid; border-width: 1"></p>