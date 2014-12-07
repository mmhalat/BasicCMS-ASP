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
  	<form action="aisle.asp?islem=yorum_ekle" method="post">
    <td class="stil3">
	<center>
	    <textarea name="yorum" cols="40" rows="5" wrap="VIRTUAL" class="text_field"></textarea>
        <br> 
    <input type="submit" name="Submit" value="Yorumumu Ekle" class="button"> 
	</center>
	<br>
	<span class="stil2">Yorumlar:</span>
	<br>
	<br>
      <%if ayar("yorum")="yok" then
		response.Write("Bu Sayfayı Görmeniz Yasaktır")
	else
		call yorum
	end if%>
    </td>
	</form>
  </tr>
  <tr>
    <td><center>
	<%if ayar("eskiler")="var" then
		Response.Write("<a href=""aeski.asp"">Eski Anketler</a>")
	end if%>
		</center>
	</td>
  </tr>
</table>
</body>
</html>
<%sub yorum
	Set yorumlar = Server.CreateObject("Adodb.Recordset")
	SQL = "SELECT * FROM yorumlar where hangi_soru="&request.QueryString("id")&""
	yorumlar.Open SQL,anketbag,1, 3
	if yorumlar.eof or yorumlar.bof then
		response.Write("Henüz bir yorumda bulununmamış.")
	else
		syf = Request.QueryString("syf")
			If syf="" Then syf="1"
		yorumlar.pagesize = 5
		yorumlar.absolutepage = syf
		sayfa_sayisi = yorumlar.pagecount
		for i=1 to yorumlar.pagesize
			If yorumlar.eof Then exit for%>
		&nbsp;&nbsp;&nbsp;<%=yorumlar("yorum")%><br>
                  
		<%yorumlar.movenext
		Next
			response.Write "<center><span class=""stil8""><br>Sayfalar:<span>&nbsp;"
		for g = 1 to sayfa_sayisi
			response.Write "<a href=anket_yorum.asp?bol=1&syf="&g&">"&g&"</a>&nbsp;"
		next
			response.Write "</center>"
	end if%>
<%end sub%>