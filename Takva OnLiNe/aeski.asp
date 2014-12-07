<!-- #include file="aayar.asp" -->
<html>
<head>
<title><%=ayar("anket_adi")%></title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<!-- #include file="astil.css" -->
</head>

<body bgcolor="<%=ayar("bg")%>">
<table width="100%" border="0" cellpadding="0">
  <tr>
    <td class="stil2"><center><%=ayar("anket_adi")%>
        <hr width="250" size="0">
</center></td>
  </tr>
  <tr>
    <td class="stil2"> Eski Anketler: 
	<br>
	<br>
      <%if ayar("eskiler")="yok" then
		response.Write("Sayfayı görmenize izin yok")
	else
		call list
	end if%>
    </td>
  </tr>
</table>
</body>
</html>
<%sub list%>
	<%set soru = Server.CreateObject("ADODB.RecordSet")
	SQL = "select * from sorular"
	soru.open SQL,anketbag,1,3%>
	<%do while not soru.eof%>
	<table width="100%" cellspacing="0" cellpadding="0">
  		<tr>
    		<td><a href="asonuc.asp?id=<%=soru("id")%>"><%=soru("soru")%> [Göster]</a></td>
  		</tr>
	</table>
	<%soru.movenext
	loop%>
<%end sub%>
