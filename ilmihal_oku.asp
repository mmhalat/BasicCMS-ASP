<!--#include file="include_file/flood.asp"-->
<!--#include file="include_file/db.asp"-->
<!--#include file="include_file/kontrol.asp"-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1254">
<META NAME="Abstract" CONTENT="islam akaid ilmihal islam tarihi islami videolar islami sohbetler lugat osmanlıca sözlük">
<META NAME="Copyright" CONTENT="Bu Sitenin Tüm Hakları AyyildizSoFT Adı Altında Mehmet Metin HALAT ' a Aittir."> 
<META NAME="Description" CONTENT="TakvaOnline Bir İslami Portaldır Ve Bünyesinde İlmihal Ansiklopedisi İslam Tarihi , Osmanlıca Sözlük , Akaid İle İlgili Bilgiler , Yüzlerce Dua , Videolu Sohbetler , Videolu İLahiler  , Fıkralar , Kıssadan Hisseler  Ve Daha Binlerce İçeriğiyle Türk İslam Dünyasının Hizmetindedir...">
<meta http-equiv="Author" content="M.Metin HALAT">
<meta name="keywords" content="<%=site_ayar("meta")%>">
<!--#include file="include_file/sayac_say.asp"-->


<html>
<style type="text/css">
<!--
.style24 {color: #FF0000}
.style27 {color: #999999}
.style29 {color: #FF0000; font-size: 12px; }
-->
</style>
<head>
<STYLE type=text/css>
A:link {
	COLOR: #000000
}
A:visited {
	COLOR: #000000
}
A:hover {
	COLOR: #9b0000
}
A:active {
	COLOR: #006600
}
</STYLE>
<%
Set site_baslik=Server.CreateObject("ADODB.RecordSet")
sql="select * from site_ayar"
site_baslik.open sql,baglanti,1,3
%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><%=site_baslik("site_baslik")%></title>
<style type="text/css">
<!--
    body {
        margin:0;
        padding:0;
        font: bold 11px/1.5em Verdana;
}

h2 {
        font: bold 14px Verdana, Arial, Helvetica, sans-serif;
        color: #000;
        margin: 0px;
        padding: 0px 0px 0px 15px;
}

/*- Menu Tabs J--------------------------- */

    #tabsJ {
      float:left;
      width:100%;
	  background-image:url(images/bg.jpg)
      font-size:93%;
      line-height:normal;
          border-bottom:1px solid #F1F1F1;
      }
    #tabsJ ul {
        margin:0;
        padding:10px 10px 0 50px;
        list-style:none;
      }
    #tabsJ li {
      display:inline;
      margin:0;
      padding:0;
      }
    #tabsJ a {
      float:left;
      background:url("tableftJ.gif") no-repeat left top;
      margin:0;
      padding:0 0 0 5px;
      text-decoration:none;
      }
    #tabsJ a span {
      float:left;
      display:block;
      background:url("tabrightJ.gif") no-repeat right top;
      padding:5px 15px 4px 6px;
      color:#DB101A;
      }
    /* Commented Backslash Hack hides rule from IE5-Mac \*/
    #tabsJ a span {float:none;}
    /* End IE5-Mac hack */
    #tabsJ a:hover span {
      color:#FFF;
      }
    #tabsJ a:hover {
      background-position:0% -42px;
      }
    #tabsJ a:hover span {
      background-position:100% -42px;
      }

        #tabsJ #current a {
                background-position:0% -42px;
        }
        #tabsJ #current a span {
                background-position:100% -42px;
                color:#FFF;
        }
.style25 {color: #000000}
.style26 {font-size: 10px}
.style31 {font-size: 18px}
.style33 {font-size: 10px; font-weight: bold; }
.style35 {
	color: #FF0000;
	font-style: normal;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
}
-->
</style>
</head>

<body>

  <table width="983" border="0" align="center" cellpadding="0" cellspacing="0" cols="2" bgcolor="#FEFEFE">
    <tr>
      <td width="12" height="250" rowspan="2" background="images/side_left.jpg">&nbsp;&nbsp;&nbsp;</td>
      <td colspan="5" background="images/bg.jpg" class="style4"><div align="center">
        <!--#include file="ust.asp"--></td>
      <td width="13" rowspan="2" background="images/side_right.jpg">&nbsp;&nbsp;&nbsp;</td>
    </tr></td>
    </tr>
    <tr>
      <td width="207" rowspan="2" valign="top" background="images/bg.jpg"><!--#include file="sol_menu.asp"--></td>
      <td width="4" align="left" valign="top" background="images/bg.jpg" bgcolor="#F1F1F1"><div align="center"></div>       
      <img src="images/dikey2.gif" width="1">       </td>
      <td width="531" align="left" valign="top" background="images/bg.jpg" bgcolor="#F1F1F1"><p align="center">
	  <%
	  baglanti.close
	  %>
	  
	  <!--#include file="include_file/banka_db.asp"-->
	  <%
if Not IsNumeric(REQUEST.QUERYSTRING("id" ) ) THEN
response.write "<center>Girdiğiniz id Numarası geçersizdir<br>Lütfen Geçerli bir id numarası girin</center>"
response.end
end if
%> 
	  <% dim id
id=request.querystring("id") %> 
<%
Set ekle = Server.CreateObject ("ADODB.RecordSet")
sql = " Select * from ilmihal where id=" & id
ekle.open sql,kon,1,3
ekle.update
ekle("hit")=ekle("hit")+1
ekle.update
%>
<table width="505" height="96" border="1" align="center" cellpadding="3" cellspacing="0" bordercolor="#BEC9DB" id="Table_01">
  <tr bgcolor="#BEC9DB">  
    <td height="15" colspan="2" class="nav"><div align="center" class="style3 style1 style2">
      <div align="center"><strong><span class="nav style42">
          <%=ekle("isim") %>  
      </span></strong></div>
    </div></td>  
  </tr>  
  <tr bgcolor="#F1F1F1">  
    <td height="24" colspan="2"><div align="left"><span class="style3"><strong>
       <%=left(ekle("ac"),2300) %><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ilmihal_html_oku.asp?id=<%=ekle("id")%>">(Devamını)Geniş Sayfada Açmak İçin Tıklayın.</a></div></td>  
  </tr>  
  <tr bgcolor="#F1F1F1">  
    <td height="24" colspan="2"><div align="left"><span class="style3"><strong>
        <span class="style26">Ekleyenin NOTU : </span><%=ekle("aciklama") %> </strong></span></div></td>  
  </tr>  
  <tr bgcolor="#F1F1F1">  
    <td height="24" colspan="2"><span class="nav style1 style2"><strong>Toplam<span class="style26">      <%=ekle("hit")%></span>
    defa okundu. </strong></span></td>
  </tr>  
  <tr>  
    <td width="255" height="15" bgcolor="#F1F1F1"><div align="left" class="style3"><strong><span class="style26">Ekleyen :</span> <%=ekle("ekleyen")%></strong></div></td>
    <td width="256" height="15" bgcolor="#F1F1F1"><div align="left" class="style3"><strong><span class="style26">Eklenme Tarihi :</span> <%=ekle("tarih")%></strong></div></td>
  </tr>  
    <tr bgcolor="#F1F1F1">  
    <td height="24" colspan="2"><div align="center" class="style3"><strong><a href=javascript:history.back()>Geri Dön </a></strong></div></td>
  </tr>  
</table>
	  </p>	<table width="526" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>  
    
  </tr>  
</table><br><table width="457" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/yatay.gif" width="509" height="1"></td>
  </tr>
  <tr>
    <td height="21"><div align="center">Yorum Yaz ? </div></td>
  </tr>
  <tr>
    <td><img src="images/yatay.gif" width="509" height="1"></td>
  </tr>
</table>
<table border="0" align="center">
<form id="frm1" name="frm1" method="post" style="margin-top:0;margin-bottom:0;"
action="ilmihal_kaydet.asp">
<font face="Tahoma"><span style="font-size: 11px">
<input type="hidden" name="yid" value="<%=ekle("id")%>">
<input type="hidden" name="tarih" value="<%=FormatDateTime(Date, 1)%>">
	</span></font>
	<tr>
		<td><font face="Tahoma" style="font-size: 11px; font-weight:700">Ad ve soyad</font></td>
		<td colspan="2"><font face="Tahoma">
		<input style="font-size: 11px; font-face: tahoma; color: #339999; " type="text" name="adsoyad"></font></td>
	</tr>	
	<tr>
		<td><font face="Tahoma" style="font-size: 11px; font-weight:700">Email adresi</font></td>
		<td colspan="2"><font face="Tahoma">
		<input style="font-size: 11px; font-face: tahoma; color: #339999; " type="text" name="email"></font></td>
	</tr>	
	<tr>
		<td valign="top">
		<font face="Tahoma" style="font-size: 11px; font-weight:700">Yorumunuz</font></td>
		<td>
		<font face="Tahoma">
		<textarea style="font-size: 11px; font-face: tahoma; color: #339999; " name="yorum" rows="5" cols="33"></textarea></font></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td colspan="2"><font face="Tahoma">
		<input style="font-size: 11px; font-face: arial" type="submit" value=" Gönder »" onclick="javascript:ValidateForm();"></font><font face="Tahoma" style="font-size: 11px">
		</font><font face="Tahoma">
<input style="font-size: 11px; font-face: arial" type="reset" value=" Temizle »" onClick="return confirm('Formu temizlemek istedi?inizden eminmisiniz?');"></font></td>
	</tr></form>
</table><br>
<%
yorum_id=ekle("id")
set yrm=server.createobject("adodb.recordset")
sql="select * from ilmihal_yorumlar where yid="&yorum_id&" order by id desc;"
yrm.open sql, kon,1,3
if yrm.eof then
response.write "<center>Henuz Yorum Yapılmamış...</center>"
else
do while not yrm.eof
%>

<div align="center">

<table border="0" bordercolor="#ededed" width="99%" cellspacing="0" cellpadding="0">
	<tr>
		<td colspan="3"><img src="images/yatay.gif" width="509" height="1"> </td>
		</tr>
	<tr>
	  <td width="15">&nbsp;</td>
	  <td width="99"><font face="Tahoma" style="font-size: 11px; font-weight: 700">Ad ve soyad:</font></td>
	  <td width="423"><div align="left"><font face="Tahoma" style="font-size: 11px; font-weight: 700"><%=yrm("adsoyad")%><br>
	          <img src="images/cizgi.gif" width="199" height="1"></font></div></td>
	</tr>
	<tr>
		<td>&nbsp;				</td>
		<td><font face="Tahoma" style="font-size: 11px; font-weight: 700">Tarih:</font></td>
		<td><div align="left"><font face="Tahoma" style="font-size: 11px; font-weight: 700"><%=yrm("tarih")%><br>
		        <img src="images/cizgi.gif" width="199" height="1"></font></div></td>
	</tr>
	<tr>
		<td>&nbsp;		</td>
		<td><font face="Tahoma" style="font-size: 11px; font-weight: 700">Yorum:</font></td>
		<td><div align="left"><font face="Tahoma" style="font-size: 11px; font-weight: 700"><%=yrm("yorum")%></font></div></td>
	</tr>
	<tr>
	  <td colspan="3"><img src="images/yatay.gif" width="509" height="1"></td>
	  </tr>
</table>

</div>


<%
yrm.movenext
loop
end if
yrm.close
set yrm=nothing%>
	<!--#include file="include_file/db.asp"-->    </td>
      <td width="4" height="550" align="left" valign="top" background="images/bg.jpg" bgcolor="#F1F1F1"><div align="right"><img src="images/dikey2.gif" width="1"></div></td>
      <td width="204" rowspan="2" valign="top" background="images/bg.jpg">
	  <!--#include file="sag_menu.asp"-->	  
	  </td>
    </tr>
    <tr>
      <td height="16" colspan="3" align="left" valign="top" background="images/bg.jpg" bgcolor="#F1F1F1"><div align="center">Reklam Bölgesi 2 </div></td>
    </tr>
  </table><!--#include file="include_file/alt.asp"-->
</div>
</body>
</html>
<%end if%>