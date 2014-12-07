<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set site_ayar=Server.CreateObject("ADODB.RecordSet")
sql="select * from site_ayar"
site_ayar.open sql,baglanti,1,3
%>
<style type="text/css">
<!--
.style1 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style2 {font-size: 10px}
.style3 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 12px;
}
-->
</style>
<form action="meta_kaydet.asp" method="post" name="2" class="style2" id="2">
  <table width="645" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td colspan="4"><div align="center" class="style13">MEta Tag Ayarý </div></td>
    </tr>
    <tr>
      <td width="107" class="style2 style1 style7"><strong>Meta TAGLARI </strong></td>
      <td width="5"><span class="style2 style1 style12"><strong>:</strong></span></td>
      <td width="385"><span class="style14">
        <textarea name="meta" cols="60" rows="10" id="meta"><%=site_ayar("meta")%></textarea>
</span></td>
      <td width="148"><span class="style3">Bu Taglarýn Arasýna Virgül koymayý unutmayýn arkadaslar </span></td>
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