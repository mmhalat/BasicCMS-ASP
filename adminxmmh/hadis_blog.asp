<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set reklamlar=Server.CreateObject("ADODB.RecordSet")
sql="select * from hadisler"
reklamlar.open sql,baglanti,1,3
%>
<style type="text/css">
<!--
.style2 {font-weight: bold}
.style5 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 10px; }
.style7 {font-size: 10px}
.style8 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; }
.style10 {
	font-size: 24px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
-->
</style>
<form action="hadis_kaydet.asp" method="post" name="6" class="style2" id="6">
  <table width="533" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td colspan="3"><div align="center" class="style13 style10">
        <p>Hadisler BLogu </p>
        <p>&nbsp;</p>
      </div></td>
    </tr>
    <tr>
      <td width="48" class="style5"><span class="style5">Tarih</span></td>
      <td width="4" class="style5"><span class="style12 style5">:</span></td>
      <td><input name="tarih" type="text" id="site_baslik2"> 
        <span class="style5">Örn:10.10.2007 Aksi Takdirde Hata Verir </span></td>
    </tr>
    <tr>
      <b></b>
      <td class="style5">Yaz&#305;</td>
      <td class="style5"><span class="style12  style8">:</span></td><td></b>
        <div align="left"></div>        <span class="style14">
        <textarea name="hadis_icerik" cols="40" rows="10" id="hadis_icerik">
</textarea>
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
<%baglanti.close%>