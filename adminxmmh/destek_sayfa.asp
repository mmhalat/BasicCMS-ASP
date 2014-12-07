<!--#include file="sifre.asp"-->
<!--#include file="inc.asp"-->
<%
Set sayfa=Server.CreateObject("ADODB.RecordSet")
sql="select * from sayfa_destekleyenler"
sayfa.open sql,baglanti,1,3
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
<form action="destek_sayfa_kaydet.asp" method="post" name="6" class="style2" id="6">
  <table width="533" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td colspan="4"><div align="center" class="style13">destekleyenelr Sayfa...</div></td>
    </tr>
    <tr>
      <td width="124"><span class="style7">link 1 </span></td>
      <td width="6"><span class="style12">:</span></td>
      <td class="style7"><input name="link" type="text" id="link" value="<%=sayfa("link")%>" size="80"></td>
      <td class="style7">&nbsp;</td>
    </tr>
    <tr>
      <td><span class="style7">link 2 </span></td>
      <td><span class="style12">:</span></td>
      <td width="265"><input name="link1" type="text" id="link1" value="<%=sayfa("link1")%>" size="80"></td>
      <td width="138">&nbsp;</td>
    </tr>
	    <tr>
      <td><span class="style7"><span class="style7">link 3 </span></span></td>
      <td><span class="style12">:</span></td>
      <td width="265"><input name="link2" type="text" id="link2" value="<%=sayfa("link2")%>" size="80"></td>
      <td width="138">&nbsp;</td>
    </tr>
	    <tr>
      <td><span class="style7"><span class="style7">link 4 </span> </span></td>
      <td><span class="style12">:</span></td>
      <td width="265"><input name="link3" type="text" id="link3" value="<%=sayfa("link3")%>" size="80"></td>
      <td width="138">&nbsp;</td>
    </tr>
	    <tr>
      <td><span class="style7"><span class="style7">link 5 </span></span></td>
      <td><span class="style12">:</span></td>
      <td width="265"><input name="link4" type="text" id="link5" value="<%=sayfa("link4")%>" size="80"></td>
      <td width="138">&nbsp;</td>
    </tr>
	    <tr>
      <td><span class="style7"><span class="style7">link 6 </span></span></td>
      <td><span class="style12">:</span></td>
      <td width="265"><input name="link5" type="text" id="link6" value="<%=sayfa("link5")%>" size="80"></td>
      <td width="138">&nbsp;</td>
    </tr>
	    <tr>
      <td><span class="style7"><span class="style7">link 7 </span></span></td>
      <td><span class="style12">:</span></td>
      <td width="265"><input name="link6" type="text" id="link7" value="<%=sayfa("link6")%>" size="80"></td>
      <td width="138">&nbsp;</td>
    </tr>
	    <tr>
      <td><span class="style7"><span class="style7">link 8 </span></span></td>
      <td><span class="style12">:</span></td>
      <td width="265"><input name="link7" type="text" id="link8" value="<%=sayfa("link7")%>" size="80"></td>
      <td width="138">&nbsp;</td>
    </tr>
	    <tr>
      <td><span class="style7"><span class="style7">link 9 </span></span></td>
      <td><span class="style12">:</span></td>
      <td width="265"><input name="link8" type="text" id="link9" value="<%=sayfa("link8")%>" size="80"></td>
      <td width="138">&nbsp;</td>
    </tr>
	    <tr>
      <td><span class="style7">link 10 </span></td>
      <td><span class="style12">:</span></td>
      <td width="265"><input name="link9" type="text" id="link10" value="<%=sayfa("link9")%>" size="80"></td>
      <td width="138">&nbsp;</td>
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
