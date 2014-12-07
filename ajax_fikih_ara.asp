<!--#include file="include_file/fbanka_db.asp"-->
<% 
	Function TR(strGelen)
		TR = Replace(strgelen, "Y", "i")
		TR = Replace(TR, "y", "i")
		TR = Replace(TR, "ç", "c")
		TR = Replace(TR, "Ç", "C")
		TR = Replace(TR, "?", "s")
		TR = Replace(TR, "?", "S")
		TR = Replace(TR, "ü", "u")
		TR = Replace(TR, "Ü", "U")
		TR = Replace(TR, "?", "g")
		TR = Replace(TR, "?", "G")
		TR = Replace(TR, "ö", "o")
		TR = Replace(TR, "Ö", "O")
	End Function
sql="select * from fikih where isim like '%"&request("huara")&"%' or ac like '%"&request("huara")&"%' order by isim asc"
rs.Open sql, kon, 1, 3
Set arailmihal = Server.CreateObject ("ADODB.RecordSet")
sql = "select * from fikih order by id"
arailmihal.open sql,kon,1,3
%>
<table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" style="border:1px ridge black">
<% Do While not rs.eof %>
<tr>
<td><a target="_blank" href="fikih_oku.asp?id=<% =arailmihal("id")%>"><%=TR(rs("isim"))%></a></td>
</tr>
<% 
arailmihal.movenext
rs.movenext
loop
%>
</table>
