<!--#include file="include_file/flood.asp"-->
<!--#include file="include_file/db.asp"-->
<!--#include file="include_file/kontrol.asp"-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1254">
<META NAME="Abstract" CONTENT="islam akaid ilmihal islam tarihi islami videolar islami sohbetler lugat osmanl�ca s�zl�k">
<META NAME="Copyright" CONTENT="Bu Sitenin T�m Haklar� AyyildizSoFT Ad� Alt�nda Mehmet Metin HALAT ' a Aittir."> 
<META NAME="Description" CONTENT="TakvaOnline Bir �slami Portald�r Ve B�nyesinde �lmihal Ansiklopedisi �slam Tarihi , Osmanl�ca S�zl�k , Akaid �le �lgili Bilgiler , Y�zlerce Dua , Videolu Sohbetler , Videolu �Lahiler  , F�kralar , K�ssadan Hisseler  Ve Daha Binlerce ��eri�iyle T�rk �slam D�nyas�n�n Hizmetindedir...">
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
      <td width="546" valign="top" background="images/bg.jpg" class="style4"><table width="541" border="0" cellpadding="0" cellspacing="0" bordercolor="#990000">
	  	  	  <%baglanti.close
	  		set baglanti=nothing%>
		  <!--#include file="include_file/ibanka_db.asp"-->
	  <%
if Not IsNumeric(REQUEST.QUERYSTRING("kid" ) ) THEN
response.write "<center>Girdi�iniz id Numaras� ge�ersizdir<br>L�tfen Ge�erli bir id numaras� girin</center>"
response.end
end if
%> 
<%kid=Request.QueryString("kid")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from islam_tarihi WHERE kid=" & kid & ""
yeniasp.Open sor,kon,1,3
git = Request.QueryString("git")
if git="" then 
git=1
else
git = CInt(Request.QueryString("git"))
end if
yeniasp.pagesize = 15
yeniasp.absolutepage = git
sayfa = yeniasp.pagecount
for i=1 to yeniasp.pagesize
if yeniasp.eof then exit for
%>
    <tr>
      <td width="33"><b><div align="left" style="color:#FFFFFF"><img src="images/txt.gif" width="33" height="25"></div></b></td>
      <td width="508" class="style26 style32"><div align="left"><b><a href="islam_tarihi_oku.asp?id=<%=yeniasp("id")%>"><%=yeniasp("isim")%></a></b></div></td>
    </tr>
<%yeniasp.movenext%>
<% next %>
  </table>
      <table border="0" cellpadding="0" cellspacing="0" width="543">
    <tr>
      <td width="543">
        <p align="center">Sayfa :          
          <%
for y=1 to sayfa 
if git=y then
response.write y
else
response.write "<b> <a href=""islam_tarihialt.asp?kid="&kid&"&git="&y&""">"&y&"</a></b>"
end if
next
%>
<%kon.close
		set kon=nothing%></td>
    </tr>
  </table>
  </td>
      <td width="4" valign="top" background="images/bg.jpg" class="style4"><img src="images/dikey2.gif" width="1"></td>
      <td width="202" valign="top" background="images/bg.jpg" class="style4"><!--#include file="sag_menu.asp"-->
	  </td>
    </tr>

  </table>
    <!--#include file="include_file/db.asp"-->
  <!--#include file="include_file/alt.asp"-->
</div>
</body>
</html>

<%end if%>
<%baglanti.close
	set baglanti=nothing%>