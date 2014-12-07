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
    <td class="stil3">
	<%if ayar("sonuc")="yok" then
		response.Write("Sayfayı görmenize izin yok")
	else
		call sonuc
	end if%>
	</td>
  </tr>
  <tr>
    <td><center>
		<%if ayar("eskiler")="var" then
			response.write("<a href=""aeski.asp"">Eski Anketler</a>")
		end if%>
		</center>
	</td>
  </tr>
</table>
</body>
</html>
<%sub sonuc%>
	<%id=request.QueryString("id")
	set soru = Server.CreateObject("ADODB.RecordSet")
	SQL = "select * from sorular where id like '"&id&"'"
	soru.open SQL,anketbag,1,3
	soru_id=soru("id")

	set secenek = Server.CreateObject("ADODB.RecordSet")
	SQL = "select * from secenekler where hangi_soru like '"&soru_id&"'"
	secenek.open SQL,anketbag,1,3
	
	set secenek_diger = Server.CreateObject("ADODB.RecordSet")
	SQL = "select * from secenekler where hangi_soru like '"&soru_id&"diger'"
	secenek_diger.open SQL,anketbag,1,3
	
	set say = Server.CreateObject("ADODB.RecordSet")
	SQL = "select Sum(hit) from secenekler where hangi_soru like '"&soru_id&"'"
	say.open SQL,anketbag,1,3
	toplam = say(0)%>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="stil2"><%=soru("soru")%>
	<br>
	<br></td>
  </tr>
</table>
	<%Do While not secenek.Eof  
             
	If toplam > 0 Then
		yuzde = Int((secenek("hit") / toplam) * 100)
	Else
		yuzde = 0
	End If%>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  		<tr>
    		<td class="stil3" width="120"><%=secenek("secenek")%> (<%=secenek("hit")%> Oy)</td>
    		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="3">&nbsp;</td>
                <td width="1"><img src="images/anket/<%=ayar("bar")%>1.gif" height="9"></td>
                <td width="1"><img src="images/anket/<%=ayar("bar")%>2.gif" width="<%=yuzde%>" height="9"></td>
    <td><img src="images/anket/<%=ayar("bar")%>3.gif" height="9"></td>
  </tr>
</table>
			</td>
  		</tr>
	   </table>
<%secenek.movenext
loop%>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
	<%if secenek_diger.eof or secenek_diger.bof then
	else
		response.Write("<span class=""stil3"">Sizden:<br></span>")
		do while not secenek_diger.eof%>
          		<td class="stil3">&nbsp;<%=secenek_diger("secenek")%></td>
		<%secenek_diger.movenext
	loop
	end if%>
  </tr>
</table>
<%end sub%>

