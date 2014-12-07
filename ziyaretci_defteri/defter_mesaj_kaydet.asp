<% @ Language=VBScript %>
<% Option Explicit %>
<!-- #include file="ayar.asp" -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="tr"><head>
<link href="dosyalar/default_style.css" rel="stylesheet" type="text/css">
<META http-equiv=Content-Type content="text/html; charset=windows-1254">
<%
response.Write "<!--"&vbcrlf&_
"AyyildizSoFT Ziyaretçi Defteri © 2007 - 2008"&vbcrlf&_
"Bu script ASP ve Access Kullanılarak Hazırlanmıştır"&vbcrlf&_
"-->"
%>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
<script language="javascript">
function ifade(dger){document.Sesiyada_Z_def.mesaj.value += dger;}
function arac(gelen){document.Sesiyada_Z_def.mesaj.value +="["+gelen+"] [/"+gelen+"]";}
function kontrol (){if (confirm("Forum Gönderiliyor !\rBilgilerin Tamamı Doğru İse Tamam'a Bas")==1){document.Sesiyada_Z_def.submit()}}
</script>
<title><%=site_ismi%> - Durum</title></head><body>
<%
if request.QueryString("SESSIONID") = session.SessionID then
%>
<table width="43%" border="0" align="center" class="tbl2">
	<tr>
		<td class="errorTable">
		<%
guvenlik_kodu = Request.Form("guvenlik_kodu")
isim = Request.Form("isim")
soyisim = Request.Form("soyisim")
email = Request.Form("email")
www = Request.Form("www")
msn = Request.Form("msn")
emg = Request.Form("emg")
baslik = Request.Form("baslik")
mesaj = Request.Form("mesaj")
if otomatik_onay = True then
onay = "1"
else
onay = "0"
end if
tarih = date()
ip = Request.ServerVariables("REMOTE_ADDR")
if emg = "1" then
emg2= "1"
else
emg2 = "0"
end if
if cstr(guvenlik_kodu) <> cstr(Session("guvenlik_kodu")) or guvenlik_kodu = "" then
response.Write("Güvenlik Kodu Yanlış..! veya Boş Bıraktın <br />")
else
if isim = "" or soyisim="" or email="" or baslik="" or mesaj="" then
response.write "*(Yıldızlı) alanlar Boş Bırakılamaz"
Else
Set kayit_set = Server.CreateObject("adodb.recordset"):kayit_set.open "select * from zdefter",vt,1,3
kayit_set.addnew()
kayit_set("isim") = isim
kayit_set("soyisim") = soyisim
kayit_set("msn") = msn
kayit_set("email") = email
kayit_set("www") = "http://"&www
kayit_set("emg") = emg2
kayit_set("baslik") = baslik
kayit_set("mesaj") = replace(mesaj,vbcrlf,"[br]")
kayit_set("tarih") = tarih
kayit_set("onay") = onay
kayit_set("ip") = ip
kayit_set.Update
sonuc = "."
Session.Abandon()
end if
end if

		%>
		</td>
	</tr>
	<tr>
		<td class="errorTable">Sonuç : Mesaj <%
		if sonuc <> "" then
		response.Write(" <META HTTP-EQUIV=""refresh"" content=""2; URL=" & zdefter_oku & """> Kaydedildi..! Ana Sayfaya Yonleniyorsunuz Yonlenmesse <a href="""& zdefter_oku &""">Tıkla</a>")
		response.Write("<br><br><b>Mesajınız Editörümüz Tarafından Onaylandıktan Sonra Gorunume Acılacaktır.</b>")
		else
		response.write "Kaydedilmedi Ustteki Mesajı Dikkate Alınız yada Daha Sonra Tekrar Deneyiniz <a href=""javascript:history.go(-1)"">Geri Gel</a>"
		end if
		%></td>
	</tr>
	<tr>
	<td class="smText" align="center">
      <span class="text">
      <%
		response.Write "<a href=""http://www.ayyildizsoft.com/"">AyyildizSoFT Ziyaretçi Defteri</a> &copy; 2007 - 2008<br />"&_
		"  Bu script <a href=""http://tr.wikipedia.org/wiki/ASP"" target=""_blank"">ASP</a> ve <a href=""http://office.microsoft.com/tr-tr/access/FX100646921055.aspx"" target=""_blank"">Access</a> Kullanılarak Hazırlanmıştır"
		%>
</span>	</td>
	</tr>
</table>
<%
else
%>
<table width="62%" border="0" align="center" cellpadding="0" cellspacing="0" class="tbl2">
	<tr>
	  <td class="errorTable"><h2>Hata:</h2>Lütfen Sitemizdeki <a href="<%=zdefter_oku%>">Linkleri Kullanalım</a></td>
	</tr>
		<tr>
	<td class="smText" align="center">
      <span class="text">
      <%
		response.Write "<a href=""http://www.ayyildizsoft.com/"">AyyildizSoFT Ziyaretçi Defteri</a> &copy; 2007 - 2008<br />"&_
		"  Bu script <a href=""http://tr.wikipedia.org/wiki/ASP"" target=""_blank"">ASP</a> ve <a href=""http://office.microsoft.com/tr-tr/access/FX100646921055.aspx"" target=""_blank"">Access</a> Kullanılarak Hazırlanmıştır"
		%>
</span>	</td>
	</tr>
</table>
<%
end if
%>

</body></html>


