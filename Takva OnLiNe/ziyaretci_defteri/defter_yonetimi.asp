<% @ Language=VBScript %>
<% Option Explicit %>
<!-- #include file="ayar.asp" -->
<%
set sesiyada_ziyaretci_defteri = server.createobject("adodb.recordset")
sesiyada_ziyaretci_defteri.cursorlocation=3
sesiyada_ziyaretci_defteri.open "select * from zdefter order by id desc",vt,1,3 
sf = Request.querystring("sf")
if sf="" then 
sf=1
end if

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="tr"><head>
<link href="dosyalar/default_style.css" rel="stylesheet" type="text/css">
<META http-equiv=Content-Type content="text/html; charset=windows-1254">
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<%
response.Write "<!--"&vbcrlf&_
"AyyildizSoFT Ziyaret�i Defteri � 2007 - 2008"&vbcrlf&_
"Bu script ASP ve Access Kullan�larak Haz�rlanm��t�r"&vbcrlf&_
"-->"
%>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
<title><%=site_ismi%> - Oku</title></head><body>
<%
if session("sesiyada_ziyaretci_defteri") = "admin" then
%>
<table width="62%" border="0" align="center" cellpadding="0" cellspacing="0" class="tbl2" id="table1">
	<tr>
		<td>
		<table  class="tableSubLedger" width="100%" border="0" cellpadding="0" cellspacing="0" id="table2">
	<tr>
		<td width="83%"><a href="<%=zdefter_oku%>"><%=site_ismi%></a></td>
		<td width="17%"><a href="<%=zdefter_yaz%>?SESSIONID=<%=session.SessionID%>">Mesaj B�rak</a> </td>
		
	
		<td><a href="defter_yonetim_islemler.asp?islemx=cikis">��k��</a></td>
	</tr>
</table>		
		</td>
	</tr>
	<tr>
	  <td valign="top">
		<!-- -->
		<%
		'do until sesiyada_ziyaretci_defteri.eof
		sesiyada_ziyaretci_defteri.pagesize = bir_sayfada_gosterilecek_mesaj_sayisi
sesiyada_ziyaretci_defteri.absolutepage = sf
sayfa = sesiyada_ziyaretci_defteri.pagecount
for i=1 to sesiyada_ziyaretci_defteri.pagesize
if sesiyada_ziyaretci_defteri.eof then exit for
		
		%>
		<table width="100%" border="0" cellpadding="1" cellspacing="0" id="table1">
	<tr>
		<td  class="tableLedger">
		<table border="0"  cellpadding="0" cellspacing="0"width="100%" id="tablex">
	<tr>
		<td>Ad�: <%=genel(sesiyada_ziyaretci_defteri("isim"))%></td>
		<td>Soyad�: <%=genel(sesiyada_ziyaretci_defteri("soyisim"))%></td>
		<td>Tarih :<%=genel(sesiyada_ziyaretci_defteri("tarih"))%></td>
		<td>�p: <%=genel(sesiyada_ziyaretci_defteri("ip"))%></td>
		<td title="Mesaj Numaras�"><%=genel(sesiyada_ziyaretci_defteri("id"))%></td>
	</tr>
</table>


		</td>
	</tr>
	<tr>
		<td valign="top" class="postSeparatorTableRow"><fieldset>
		<legend align="center" class="text style1"><strong><img src="dosyalar/topic_icon.gif" width="16" height="16" />&nbsp;<%=genel(sesiyada_ziyaretci_defteri("baslik"))%>&nbsp;</strong></legend>
		<span class="text  style1"><%=mesaj_(sesiyada_ziyaretci_defteri("mesaj"))%>
        </span>        
		</fieldset></td>
	</tr>
	<tr>
		<td valign="top" class="postSeparatorTableRow smText" align="center"> <a href="mailto:<%=genel(sesiyada_ziyaretci_defteri("msn"))%>">MSN</a> |<a href="<%=genel(sesiyada_ziyaretci_defteri("www"))%>"> WWW</a> |<a href="mailto:<%=genel(sesiyada_ziyaretci_defteri("email"))%>"> Email</a> | 
		  <% if sesiyada_ziyaretci_defteri("onay") =< "0" then %><a href="defter_yonetim_islemler.asp?sessionid=<%=session.SessionID%>&id=<%=genel(sesiyada_ziyaretci_defteri("id"))%>&islem=onayla">Onayla</a><% else %> <a href="defter_yonetim_islemler.asp?sessionid=<%=session.SessionID%>&id=<%=genel(sesiyada_ziyaretci_defteri("id"))%>&islem=onayikaldir">Onayi Kald�r</a> <% end if %>| <a href="defter_yonetim_islemler.asp?sessionid=<%=session.SessionID%>&id=<%=genel(sesiyada_ziyaretci_defteri("id"))%>&islem=sil">Sil</a></td>
	</tr>
</table><%
sesiyada_ziyaretci_defteri.movenext
next

%>
		  <!-- -->
</td>
	</tr>
	<tr>
		<td valign="top" class="tableSubLedger">
		<fieldset>
		<legend>Sayfa:</legend>
<%

for y=1 to sayfa 
if CINT(TRIM(sf))=CINT(TRIM(y)) then%>
<b>[<%response.write "" & y %>]</b><%
else
%>
<a href="?sf=<%=y%>"><%=y%></a>


<%
end if
%><%next%>


		</fieldset>
		</td>
	</tr>
  <tr>
	<td align="center" class="text">    <%
		response.Write "<a href=""http://www.ayyildizsoft.com/"">AyyildizSoFT Ziyaret�i Defteri</a> &copy; 2007 - 2008<br />"&_
		"  Bu script <a href=""http://tr.wikipedia.org/wiki/ASP"" target=""_blank"">ASP</a> ve <a href=""http://office.microsoft.com/tr-tr/access/FX100646921055.aspx"" target=""_blank"">Access</a> Kullan�larak Haz�rlanm��t�r"
		%></td>
  </tr>
</table>
<% else %>
<table width="62%" border="0" align="center" cellpadding="0" cellspacing="0" class="tbl2">
	<tr>
		<td><div align="center" class="calTodayCell">Sesiyada Ziyaret�i Defteri Y�netim Paneli [Giri�] <br /> 
		<%
		if request.Form("parola") = "" then
elseif request.Form("parola")<> yonetici_sifresi then
Response.Write("�ifre Yanl��..!") 
else
session("sesiyada_ziyaretci_defteri") = "admin"
response.Redirect("defter_yonetimi.asp")
end if
		%>
		</div></td>
	</tr>
	<tr>
		<td>
		
		<form action="" method="post">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="48%" class="smText">Parola:</td>
		<td width="52%"><input name="parola" type="password" class="now" id="parola" /></td>
	</tr>
	<tr>
		<td><input name="Submit" type="submit" class="now" value="Giri�" /></td>
		<td><input name="Reset" type="reset" class="now" value="Temizle" /></td>
	</tr>
	</table>
		
		</form>
		</td>
	</tr>
	  <tr>
	<td align="center" class="text">    <%
		response.Write "<a href=""http://www.ayyildizsoft.com"">AyyildizSoFT Ziyaret�i Defteri</a> &copy; 2007 - 2008<br />"&_
		"  Bu script <a href=""http://tr.wikipedia.org/wiki/ASP"" target=""_blank"">ASP</a> ve <a href=""http://office.microsoft.com/tr-tr/access/FX100646921055.aspx"" target=""_blank"">Access</a> Kullan�larak Haz�rlanm��t�r"
		%></td>
  </tr>
</table>
<% end if %>

</body></html>


