<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set destekleyenler=Server.CreateObject("ADODB.RecordSet")
sql="select * from destekleyenler"
destekleyenler.open sql,baglanti,1,3
%>
<style type="text/css">
<!--
.style2 {font-weight: bold}
.style5 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 10px; }
.style7 {font-size: 10px}
.style8 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; }
.style9 {font-family: Verdana, Arial, Helvetica, sans-serif}
-->
</style>
<form action="destekleyenler_kaydet.asp" method="post" name="3" class="style2" id="3">
  <table width="533" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td colspan="3"><div align="center" class="style13">DESTEkleyenler.....</div></td>
    </tr>
    <tr>
      <td width="48" class="style5"><span class="style5">Tarih</span></td>
      <td width="4" class="style5"><span class="style12 style5">:</span></td>
      <td><input name="tarih" type="text" id="site_baslik2" value="<%=destekleyenler("tarih")%>"> 
        <span class="style5">Örn:10.10.2007 Aksi Takdirde Hata Verir </span></td>
    </tr>
    <tr>
      <b></b>
      <td class="style5">Yaz&#305;</td>
      <td class="style5"><span class="style12  style8">:</span></td><td></b>
        <div align="left"></div>        <span class="style14">
        <textarea name="link" cols="40" rows="10" id="link"><%=destekleyenler("link")%></textarea>
        </span>
<td width="18">&nbsp;</td>
    </tr>
    <tr>
      <td class="style7">&nbsp;</td>
      <td class="style7"><div align="center">
      </div></td>
      <td class="style7"><input type="submit" name="Submit" value="Kaydet"></td>
    </tr>
  </table>
</form>