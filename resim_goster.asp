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
.style36 {
	color: #FFFFFF;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
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
      <td width="531" align="left" valign="top" background="images/bg.jpg" bgcolor="#F1F1F1"><div align="center"><table border=0 cellpadding="0" cellspacing="0" align=center width="514" height="80">
<tr bgcolor="#990000">
<td width="101" height="19" align="center" class="style36">Önizleme </td>
<td width="4" height="19" align="center" background="images/bg.jpg" bgcolor=#FEFEFE><span class="style25"></span></td>
<td colspan="3" align="center"><span class="style36">Resim Detayları </span></td>
</tr>
<%
if Not IsNumeric(REQUEST.QUERYSTRING("id" ) ) THEN
response.write "<center>Girdiğiniz id Numarası geçersizdir<br>Lütfen Geçerli bir id numarası girin</center>"
response.end
end if
%> 
				<%
id=request("id")
Set Rs=Server.CreateObject("Adodb.Recordset")
sorgu = "Select * from galeri where Catid="&id&" order by id desc"
Rs. Open Sorgu, Baglanti, 1, 3
	adet=rs.recordcount
	shf = Request.QueryString("shf")
	if shf="" then 
	shf=1
	end if


	%>
 
	<%
If rs.eof then
Response.Write "<center>Veritabanynda kayytly Resim yok...</center>"
Response.End
End If
%>

<% rs.pagesize = 5 
rs.absolutepage = shf
sayfa = rs.pagecount
for i=1 to rs.pagesize
if rs.eof then exit for
%>




<tr>

	    <td width="101" height="110" rowspan="3"><a href="galeri_detay.asp?id=<%=rs("id")%>" target="uye" onClick="window.open('galeri_detay.asp?id=<%=rs("id")%>','uye','width=800 height=600 toolbar=yes scrollbars=yes' )">
        <font size="1" face="Verdana"><img src="<%=rs("img")%>" border=0 width="100" height="100" alt="<%=rs("detay")%>"></font></a></td>
	    <td height="110" rowspan="3" valign=top><font size="1" face="Verdana">&nbsp;
	
	    </font></td>
	    <td width="110" height="32" valign=top bgcolor="#EBEBEB"><span class="style28"><font face="Verdana">Resim Açıklaması </font></span></td>
        <td width="4" valign=top bgcolor="#EBEBEB"><font size="1" face="Verdana">:</font></td>
        <td width="295" valign=top bgcolor="#EBEBEB"><font size="1" face="Verdana"><%=rs("detay")%></font></td>
</tr>
<tr>
  <td height="32" valign=top bgcolor="#EBEBEB"><span class="style28"><font face="Verdana">Tarih </font></span></td>
  <td height="32" valign=top bgcolor="#EBEBEB"><font size="1" face="Verdana">:</font></td>
  <td height="32" valign=top bgcolor="#EBEBEB"><font size="1" face="Verdana"><%=rs("tarih")%></font></td>
</tr>
<tr>
  <td height="32" valign=top bgcolor="#EBEBEB"><span class="style28"><font face="Verdana">İzlenme </font></span></td>
  <td height="32" valign=top bgcolor="#EBEBEB"><font size="1" face="Verdana">:</font></td>
  <td height="32" valign=top bgcolor="#EBEBEB"><font size="1" face="Verdana"><%=rs("izlenme")%></font></td>
</tr>
<tr><td height=1 bgcolor=c6c6c6 colspan=5></td></tr>	    
      
 
	    <%
			 rs.movenext
	
		%>    

	
	
		<center>

   <% next %>

 
	

	

</table>   </font> 
	    <p align="center"> 
	  <font color="#1D4196" size="1" face="Verdana">
  Galeride <%=adet%> Adet Resim bulundu...<br>Sayfa 
      :  <%
for y=1 to sayfa 
if shf=y then
response.write y
else
response.write "[<b><a href=""resim_goster.asp?shf="&y&"&id="&id&""">"&y&"</a></b>] "
end if
next
%>	</td>
      <td width="4" height="550" align="left" valign="top" background="images/bg.jpg" bgcolor="#F1F1F1"><div align="right"><img src="images/dikey2.gif" width="1"></div></td>
      <td width="204" rowspan="2" valign="top" background="images/bg.jpg">
	  <!--#include file="sag_menu.asp"-->	  
	  </td>
    </tr>
    <tr>
      <td height="16" colspan="3" align="left" valign="top" background="images/bg.jpg" bgcolor="#F1F1F1"><div align="center">Reklam Bölgesi 2 </div></td>
    </tr>
  </table>
  <!--#include file="include_file/alt.asp"-->
</div>
</body>
</html>
<%end if%>