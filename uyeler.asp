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
      <td width="202" valign="top" background="images/bg.jpg" class="style4"><!--#include file="sol_menu.asp"--></td>
      <td width="4" valign="top" background="images/bg.jpg" class="style4"><img src="images/dikey2.gif" width="1"></td>
      <td width="546" valign="top" background="images/bg.jpg" class="style4">
	  <%
	  baglanti.close
	  set baglanti=nothing

	  %>
	  	  <!--#include file="include_file/baglan.asp"-->
	  <%Set rs = Server.CreateObject("ADODB.Recordset")
		sql = "Select * from uyeler"
		rs.open sql,Baglan,1,3
%>
<table width="100%" border="0" cellspacing="1" cellpadding="3">
    <tr height="25" bgcolor="#AA0D14">
     <td width="7%" align="center">&nbsp;</td>
     <td width="25%" align="center"><font face="Tahoma" style="font-size: 8pt" Color="#c0c0c0"><b>Ad</b></font></td>
     <td width="25%" align="center"><font face="Tahoma" style="font-size: 8pt" Color="#c0c0c0"><b>Soyad</b></font></td>
     <td width="25%" align="center"><font face="Tahoma" style="font-size: 8pt" Color="#c0c0c0"><b>Nick</b></font></td>
     <td width="18%" align="center"><font face="Tahoma" style="font-size: 8pt" Color="#c0c0c0"><b>Kayyt Tarihi</b></font></td>    
    </tr>
<%
shf = Request.QueryString("shf")
IF Not IsNumeric(REQUEST.QUERYSTRING("shf")) THEN
Response.Redirect "default.asp"
Response.End
END IF

If shf="" Then shf="1"
rs.pagesize = 10
rs.absolutepage = shf
sayfa_sayisi = rs.pagecount
For i=1 To rs.pagesize
If rs.Eof Then exit for
%>    
<tr bgcolor="#C0C0C0">
<td><center class="style30">
  <font face="Tahoma" style="font-size: 8pt">#</font>
</center></td>
<td><center class="style31">
  <font face="Tahoma" style="font-size: 8pt"><%=rs("ad")%></font>
</center></td>
<td><center class="style32">
  <font face="Tahoma" style="font-size: 8pt"><%=rs("soyad")%></font>
</center></td>
<td><center class="style33">
  <font face="Tahoma" style="font-size: 8pt"><%=rs("kulladi")%></font>
</center></td>
<td><center class="style34">
  <font face="Tahoma" style="font-size: 8pt"><%=rs("ktarih")%></font>
</center></td>
</tr>
<%
rs.Movenext
Next
%>
</table>
<%
          Response.Write "<br><center>"
          Response.Write "<font face=verdana size=1 color=#C0C0C0>&nbsp;<b>Sayfalar :&nbsp;</b></font>"
          For g = 1 To sayfa_sayisi
          If g = CInt(shf) Then
          Response.Write "<font face=verdana size=1 color=#C0C0C0>[" & g & "],</font>"
          Else
          Response.Write "<a href=uyeler.asp?shf=" & g & "><font face=verdana size=1 color=#C0C0C0>" & g & "</a>,</font>"
          End If
          Next
          Response.Write "</center>"
%>
<%
baglan.close
set baglan=nothing
%>
<!--#include file="include_file/db.asp"-->


</td>
      <td width="4" valign="top" background="images/bg.jpg" class="style4"><img src="images/dikey2.gif" width="1"></td>
      <td width="202" valign="top" background="images/bg.jpg" class="style4"><!--#include file="sag_menu.asp"-->
	  </td></tr>

  </table>
  <!--#include file="include_file/alt.asp"-->
</div>
</body>
</html>
<%end if%>