<% @ Language=VBScript %>
<% Option Explicit %>
<!-- #include file="ayar.asp" -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="tr"><head>
<link href="dosyalar/default_style.css" rel="stylesheet" type="text/css">
<META http-equiv=Content-Type content="text/html; charset=windows-1254">
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
<script language="javascript">
function ifade(dger){document.Sesiyada_Z_def.mesaj.value += dger;}
function arac(gelen){document.Sesiyada_Z_def.mesaj.value +="["+gelen+"] [/"+gelen+"]";}
function kontrol (){if (confirm("Forum G�nderiliyor !\rBilgilerin Tamam� Do�ru �se Tamam'a Bas")==1){document.Sesiyada_Z_def.submit()}}
</script>
<title><%=site_ismi%> - Yaz</title></head><body>
<%
if request.QueryString("SESSIONID") = session.SessionID then
%>
<table width="62%" border="0" align="center" cellpadding="0" cellspacing="0" id="table1" class="tbl2">
  <tr>
    <td><table  class="tableSubLedger" width="100%" border="0" cellpadding="0" cellspacing="0" id="table2">
        <tr>
          <td width="83%"><a href="<%=zdefter_oku%>"><%=site_ismi%></a></td>
          <td width="17%">Mesaj Yaz </td>
        </tr>
    </table></td>
  </tr>
	<tr>
		<td>
		<form action="<%=defter_mesaj_kaydet%>?SESSIONID=<%=session.SessionID%>" method="post" name="Sesiyada_Z_def">
		<fieldset>
		<legend class="text">Ki�isel Bilgiler</legend>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="16%" class="tableRow">Ad�n�z:</td>
		<td width="84%" class="smText"><input name="isim" type="text" class="smText" id="isim" maxlength="50" />
		* 50 karakteri a�amaz (zorunlu) </td>
	</tr>
	<tr>
		<td class="tableRow">Soyad�n�z:</td>
		<td class="smText"><input name="soyisim" type="text" class="smText" id="soyisim" maxlength="50" /> 
		* 50 karakteri a�amaz (zorunlu) </td>
	</tr>
	<tr>
		<td class="tableRow">Email:</td>
		<td class="smText"><input name="email" type="text" class="smText" id="email" />
		* 100 karakteri a�amaz (zorunlu) [Gozuksun m�?
		  <input name="emg" type="checkbox" id="emg" value="1" />		  
		  ]		  </td>
	</tr>
	<tr>
		<td class="tableRow">Msn:</td>
		<td class="smText"><input name="msn" type="text" class="smText" id="msn" /> 
		/ 100 karakteri Ge�emez (zorunlu de�il) </td>
	</tr>
	<tr>
		<td class="tableRow">Web:</td>
		<td class="smText"><input name="www" type="text" class="smText" id="www" /> 
		/ 100 karakteri Ge�emez (zorunlu de�il) http:// yazmay�n�z</td>
	</tr>
</table>
</fieldset>
<fieldset>
<legend class="text">Mesaj</legend>
<table width="100%" border="0" cellpadding="0" cellspacing="0" id="table1">
	<tr>
		<td width="15%" class="smText">Basl�k:</td>
		<td width="58%"><input name="baslik" type="text" class="smText" id="baslik" maxlength="100" />
		  <span class="smText">*100 karakteri a�amaz(zorunlu) </span></td>
		<td width="27%" align="center">&nbsp;</td>
	</tr>
	<tr>
		<td class="smText">Mesaj:</td>
		<td><textarea name="mesaj" cols="50" rows="10" class="errorTable" id="mesaj"></textarea>
		  <span class="smText">(zorunlu) </span>		</td>
		<td valign="top" align="center">
		<fieldset class="errorTable">
		<legend class="text">�fadeler</legend>
		
		<img src="dosyalar/smiley/grin.gif" width="18" height="18" onclick="ifade('|grin|');" /> <img src="dosyalar/smiley/happy.gif" onclick="ifade('|happy|');" width="18" height="18" /> <img src="dosyalar/smiley/heh.gif" onclick="ifade('|heh|');" width="18" height="18" /> <img src="dosyalar/smiley/hehe.gif" onclick="ifade('|hehe|');" width="18" height="18" /> <img src="dosyalar/smiley/letter.gif" onclick="ifade('|letter|');" width="18" height="18" /><br />
		  <img src="dosyalar/smiley/lol.gif" onclick="ifade('|lol|');" width="18" height="18" /> <img src="dosyalar/smiley/no.gif" onclick="ifade('|no|');" width="18" height="18" /> <img src="dosyalar/smiley/pinch.gif" onclick="ifade('|pinch|');" width="18" height="18" /> <img src="dosyalar/smiley/plain.gif" onclick="ifade('|plain|');" width="18" height="18" /> <img src="dosyalar/smiley/quite.gif" onclick="ifade('|quite|');" width="18" height="18" /><br />
		  <img src="dosyalar/smiley/sad.gif" onclick="ifade('|sad|');"  width="18" height="18" /> <img src="dosyalar/smiley/satisfied.gif" onclick="ifade('|satisfied|');" width="18" height="18" /> <img src="dosyalar/smiley/shock.gif" onclick="ifade('|shock|');" width="18" height="18" /> <img src="dosyalar/smiley/toungue.gif" onclick="ifade('|toungue|');" width="18" height="18" /> <img src="dosyalar/smiley/twitch.gif" width="18" height="18" onclick="ifade('|twitch|');" /><br />
		  <img src="dosyalar/smiley/weeb1.gif" onclick="ifade('|weeb1|');" width="18" height="18" /> <img src="dosyalar/smiley/wink.gif" onclick="ifade('|wink|');" width="18" height="18" /> <img src="dosyalar/smiley/wow.gif" onclick="ifade('|wow|');" width="18" height="18" /> <img src="dosyalar/smiley/yes.gif" onclick="ifade('|yes|');" width="18" height="18" />
		</fieldset></td>
	</tr>
	<tr>
		<td class="text"> Araclar: </td>
		<td>
		<input name="underline" onclick="arac('u');" type="button" class="smText" id="underline" value="Alt� �izili" style="text-decoration: underline" />
		<input name="Button" onclick="arac('b');" type="button" class="smText" value="Kal�n" style="font-weight: bold" />
		<input name="Button" onclick="arac('i');" type="button" class="smText" value="�talic" style="font-style: italic" />
		<input name="Button" onclick="arac('url');" type="button" class="smText" value="Link" style="text-decoration:underline; color:#0000FF" />
		<input name="Button" onclick="arac('img');" type="button" class="smText" value="Resim" />
		<input name="Button" onclick="arac('center');" type="button" class="smText" value="Ortala" /></td>
		<td>&nbsp;</td>
	</tr>
</table>
</fieldset>
<fieldset>
<legend class="smText">Guvenlik Uygulamas�:</legend>
<table border="0" width="100%" id="table1">
	<tr>
		<td width="17%" class="smText">Guvenlik Kodu: </td>
		<td width="83%" class="errorTable">
		<%
		Randomize
		guvenlik_kodun = INT(RND * 999999)+100
		Session("guvenlik_kodu") = guvenlik_kodun
		Response.Write(guvenlik_kodun)
		%>		</td>
	</tr>
	<tr>
		<td class="smText">Guvenlik Kodunu Yazaz�n�z:</td>
		<td><input name="guvenlik_kodu" type="text"  maxlength="6" />
		  <span class="smText">* 6 basamag� a�amaz (zorunlu) </span></td>
	</tr>
</table>
</fieldset>
<fieldset>
<legend class="smText">
S�zle�me
</legend>
<table width="100%" border="0" cellpadding="0" cellspacing="0" id="table1">
	<tr>
		<td align="center">
		<textarea name="sozlesme" cols="71" rows="7" readonly class="errorTable" id="sozlesme"><% Server.Execute(sozlesme_metni_sayfasi) %></textarea></td>
	</tr>
	<tr>
		<td align="center"><input type="button" name="Button" onclick="kontrol();" value="S�zle�meyi Kabul Ediyorum" />		  
		  <input type="button" name="Button" onclick="document.location = '<%=zdefter_oku%>';" value="S�zle�meyi Kabul Etmiyorum" /></td></tr>
</table>

</fieldset>
</form>
</td>
	</tr>
	<tr>
		<td align="center"><span class="text">
		  <%
		response.Write "<a href=""http://www.ayyildizsoft.com/"">AyyildizSoFT Ziyaret�i Defteri</a> &copy; 2007 - 2008<br />"&_
		"  Bu script <a href=""http://tr.wikipedia.org/wiki/ASP"" target=""_blank"">ASP</a> ve <a href=""http://office.microsoft.com/tr-tr/access/FX100646921055.aspx"" target=""_blank"">Access</a> Kullan�larak Haz�rlanm��t�r"
		%>
		</span></td>
	</tr>
</table>
<%
else
%>
<table width="62%" border="0" align="center" cellpadding="0" cellspacing="0" class="tbl2">
	<tr>
	  <td class="errorTable"><h2>Hata:</h2><br />L�tfen Sitemizdeki <a href="<%=zdefter_oku%>">Linkleri Kullanal�m</a></td>
	</tr>
		<tr>
	<td class="smText" align="center">
      <span class="text">
      <%
		response.Write "<a href=""http://www.ayyildizsoft.com/"">AyyildizSoFT Ziyaret�i Defteri</a> &copy; 2007 - 2008<br />"&_
		"  Bu script <a href=""http://tr.wikipedia.org/wiki/ASP"" target=""_blank"">ASP</a> ve <a href=""http://office.microsoft.com/tr-tr/access/FX100646921055.aspx"" target=""_blank"">Access</a> Kullan�larak Haz�rlanm��t�r"
		%>
</span>	</td>
	</tr>
</table>
<%
end if
%>

</body></html>

