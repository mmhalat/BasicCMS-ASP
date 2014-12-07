<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set site_ayar=Server.CreateObject("ADODB.RecordSet")
sql="select * from site_ayar"
site_ayar.open sql,baglanti,1,3
%>
<style type="text/css">
<!--
.style2 {font-size: 12px; font-family: Verdana, Arial, Helvetica, sans-serif;}
.style7 {font-size: 10px; font-weight: bold; }
.style12 {font-size: 12px; font-weight: bold; }
.style13 {
	font-size: 17px;
	font-weight: bold;
}
.style14 {font-weight: bold}
-->
</style>
<form action="site_ayar_kaydet.asp" method="post" name="1" class="style2" id="1">
  <table width="533" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td colspan="4"><div align="center" class="style13">Site Ayarlarý </div></td>
    </tr>
    <tr>
      <td width="124"><span class="style7">Siteyi Ac-Kapa </span></td>
      <td width="6"><span class="style12">:</span></td>
      <td colspan="2" class="style7"><input name="site_ac" type="text" id="site_ac" value="<%=site_ayar("site_ac")%>">Acmak Ýçin 1 Kapamak Ýçin 0 Yazýn.. </td>
    </tr>
    <tr>
      <td><span class="style7">Site Baslýgý (title) </span></td>
      <td><span class="style12">:</span></td>
      <td width="265"><input name="site_baslik" type="text" id="site_baslik" value="<%=site_ayar("site_baslik")%>"></td>
      <td width="138">&nbsp;</td>
    </tr>
    <tr>
      <td class="style7">Site Copy Yazisi </td>
      <td><span class="style12">:</span></td>
      <td><span class="style14">
        <textarea name="site_copy" cols="40" rows="10" id="site_copy"><%=site_ayar("site_copy")%></textarea>
      </span></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td class="style7">&nbsp;</td>
      <td colspan="2" class="style7"><div align="center">
        <input type="submit" name="Submit" value="Kaydet">
      </div></td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
