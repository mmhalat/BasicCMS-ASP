<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set duyuru=Server.CreateObject("ADODB.RecordSet")
sql="select * from duyuru"
duyuru.open sql,baglanti,1,3
%>
<style type="text/css">
<!--
.style1 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style2 {font-size: 9px}
.style4 {font-size: 10}
.style7 {font-size: 10px}
.style9 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; }
.style11 {
	font-size: 10px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style12 {font-weight: bold}
-->
</style>
<form action="duyuru_kaydet.asp" method="post" name="1" class="style2" id="1">
  <table width="533" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td colspan="4"><div align="center" class="style13">Duyurulaaaaar....</div></td>
    </tr>
    <tr>
      <td width="124" class="style7"><span class="style1"><strong>Duyuru Basligi </strong></span></td>
      <td width="6"><span class="style12 style1 style4"><strong>:</strong></span></td>
      <td colspan="2" class="style7"><input name="baslik" type="text" id="baslik" value="<%=duyuru("baslik")%>">
      </td>
    </tr>
    <tr>
      <td><span class="style7 style1 style4"><strong>Ekleyen</strong></span></td>
      <td><span class="style12 style1 style4"><strong>:</strong></span></td>
      <td width="265"><input name="ekleyen" type="text" id="ekleyen" value="<%=duyuru("ekleyen")%>"></td>
      <td width="138">&nbsp;</td>
    </tr>
	    <tr>
      <td><span class="style7 style1 style4"><strong>Tarih</strong></span></td>
      <td><span class="style12 style1 style4"><strong>:</strong></span></td>
      <td colspan="2"><input name="tarih" type="text" id="tarih" value="<%=duyuru("tarih")%>">
        <span class="style11">        Örn: 10.10.2007 Aksi Halde Hata Verir. </span></td>
    </tr>
    <tr>
      <td class="style1 style7"><strong>Ýcerik</strong></td>
      <td><span class="style12"></span><span class="style9">:</span></td>
      <td><span class="style14">
        <textarea name="icerik" cols="40" rows="10" id="icerik"><%=duyuru("icerik")%></textarea>
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