<!-- #include file="aayar.asp" -->
<%
set soru = Server.CreateObject("ADODB.RecordSet")
SQL = "select * from sorular where id like '"&aktif_id&"'"
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
toplam = say(0)

Set yorumlar = Server.CreateObject("Adodb.Recordset")
SQL = "SELECT * FROM yorumlar where hangi_soru="&soru_id&""
yorumlar.Open SQL,anketbag,1, 3

set ip_kontrol = Server.CreateObject("Adodb.Recordset")
SQL = "SELECT * FROM iplog"
ip_kontrol.Open SQL,anketbag,1, 3
do while not ip_kontrol.eof

	if DateDiff("N", ip_kontrol("tarih"), now()) > 60 then
		Set ip_sil = Server.CreateObject("Adodb.Recordset")
      	SQL = "delete from iplog where id = "&ip_kontrol("id")&""
      	ip_sil.Open SQL,anketbag,1, 3
	end if
ip_kontrol.movenext 
loop

Set ip_kontrol2 = Server.CreateObject("Adodb.Recordset")
SQL = "SELECT * FROM iplog where ip = '"&request.servervariables("REMOTE_HOST")&"' and anket_no = "&aktif_id&""
ip_kontrol2.Open SQL,anketbag,1, 3

if Request.Cookies("aspmaster_anket")("ayar(""anket_adi"")") = ""&aktif_id&" nolu anket" then
	cookie="var"
end if
%>
<SCRIPT language=JavaScript>
<!--
function popup() {
window.open("","anket","width=300,height=350,resizable=no,status=no,scrollbars=yes")
}
// -->
</SCRIPT>
<%
if ip_kontrol2.eof or ip_kontrol2.bof then
		call anket
	else
		call sonuc
end if
%>
<%sub anket%>
<style type="text/css">
<!--
.style1 {font-size: 10px}
.style2 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style3 {font-size: 10px; font-family: Verdana, Arial, Helvetica, sans-serif; }
.style5 {font-size: 10px; font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; }
.style6 {font-weight: bold}
-->
</style>

<table width="175" border="0" cellpadding="0">
  <tr>
    <td width="171" class="style1"><div align="center" class="style2 style1"><strong><%=ayar("anket_adi")%></strong></div></td>
  </tr>
  <tr>
    <td class="style5"><img src="images/cizgi.gif" width="199" height="1"></td>
  </tr>
  <tr>
    <td class="style3"><strong>Soru : <%=soru("soru")%><br>    
      <img src="images/cizgi.gif" width="199" height="1"></strong></td>
  </tr>
      <form action="aisle.asp?islem=cevap_isle" method="post">
  <tr>
	<td class="style3 style6">
	  <div align="left">
	      <%do while not secenek.eof%>
		  <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="1%"> 
		      <centeR><input type="radio" name="secenekal" value="<%=secenek("secenek")%>"></centeR></td>
              <td width="99%" class="stil3"><%=secenek("secenek")%></td>
            </tr>
          </table>
		  <span class="style5">
		  <%secenek.movenext
	  loop%>
	      <%if soru("diger")="var" then%>
      	  
	      <%end if%>
          </span> </div>
	  <div align="center"></div></td>
  </tr>
  <tr>
    <td class="style1"><center class="style5"><input type=image src="images/buton_gonder_01.jpg"border=0 name=imageField></center></td>
  </tr>
  </form>
  <tr>
    <td class="style1">
	<center class="style5">
	
		<br>
		<%if ayar("sonuc")="var" then
			Response.Write("<A onclick=popup() href=""asonuc.asp?id="&soru("id")&""" target=""anket"">Sonu�lar</a>")
		end if%>
		<br>
		<%if ayar("eskiler")="var" then
			response.Write("<A onclick=popup() href=""aeski.asp"" target=""anket"">Eski Anketler</a>")
		end if%>
	</center></td>
  </tr>
</table>
<%end sub

sub sonuc%>
<table width="175" border="0" cellpadding="0">
  <tr>
    <td width="171" class="style5"><div align="center" class="style5"><strong><%=ayar("anket_adi")%> </strong></div></td>
  </tr>
  <tr>
    <td class="style5"><img src="images/cizgi.gif" width="199" height="1"></td>
  </tr>
  <tr>
    <td class="style5"><span class="style5">Soru:<%=soru("soru")%></span><br>
    <img src="images/cizgi.gif" width="199" height="1"></td>
  </tr>
  <tr>
    <td class="style5">
<%Do While not secenek.Eof  
             
	If toplam > 0 Then
		yuzde = Int((secenek("hit") / toplam) * 100)
	Else
		yuzde = 0
	End If%>
	   <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td class="style5"><%=secenek("secenek")%> (<%=secenek("hit")%>)</td>
        </tr>
        <tr>
          <td>
		  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr class="style5">
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
	<%if secenek_diger.eof or secenek_diger.bof then
	else
		response.Write("<span class=""stil3"">Sizden:<br></span>")
		do while not secenek_diger.eof%>
      <table width="100%" border="0" cellpadding="0">
        <tr>
          <td class="style5">&nbsp;<%=secenek_diger("secenek")%></td>
        </tr>
      </table> 
		<%secenek_diger.movenext
	loop
	end if%>
    </td>
  </tr>
  <tr>
    <td class="style5"> 
<center class="style5">
  <strong>        
  <%if ayar("yorum")="var" then
			call yorum
		end if%>
        <br>
		<%if ayar("eskiler")="var" then
			Response.Write("<A onclick=popup() href=""aeski.asp"" target=""anket"">Eski Anketler</a>")
		end if%>
	</strong>
</center></td>
  </tr>
</table>
<span class="style5">
<%end sub
sub yorum
response.Write("<A onclick=popup() href=""ayorum.asp?id="&soru_id&""" target=""anket"">Yorumlar("&yorumlar.recordcount&")</a>")
end sub%>
</span>