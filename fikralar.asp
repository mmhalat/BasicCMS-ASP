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
	  
	  <link href="css.css" type="text/css" rel="StyleSheet">
      <div align="center"><img src="images/fikra.gif" width="525" height="31">      <br /> 
          <%
Set fikrars = Server.CreateObject ("ADODB.RecordSet")
sql = "select * from fikra order by id"
fikrars.open sql,baglanti,1,3

if fikrars.recordcount<>0 then
topla=fikraRs.Recordcount 
shf = Request.QueryString("shf")
if shf="" then shf=1
%> 
          <%
yon=0
fikrars.pagesize = 15
fikrars.absolutepage = shf
sayfala = fikrars.pagecount
for i=1 to fikrars.pagesize
if fikrars.eof then exit for
yon=yon+1
  %> 
   
    </div>
      <table width="505" height="22" border="1" align="center" cellpadding="2" cellspacing="0" bordercolor="#BAC5D9" id="Table_01">
  <tr> 
    <td width="422" height="20" bgcolor="#F1F1F1"><div align="left"><span class="Doviz"><span class="style44 style6"><strong> »</strong></span></span><span class="byazi"><a href="fikra_oku.asp?id=<% =fikrars("id")%>">
        <% =fikrars("ad") %>
    </a></span></div></td>
    <td width="71" bgcolor="#F1F1F1"><div align="center"><span class="nav">Hit=<span class="byazi style4"> <%=fikrars("hit")%> </span></span></div></td>
  </tr> 
</table> 
<br />
<% 
fikrars.movenext
next
fikrars.close
set fikrars=nothing

%>
<table width="505" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#BEC9DB" bgcolor="#F1F1F1">
  <tr> 
    <td width="492"><div align="center"> 
      <p><span class="style4">Her Sayfada</span><b class="orta"><span class="byazi"> <span class="style4">15</span> </span></b><span class="byazi"><span class="style4">Kayıttan Toplam</span></span><b class="orta"><span class="byazi"><span class="style4"> <%=topla%></span> </span></b><span class="byazi"><span class="style4">fikra var</span>.</span> </p> 
      <p>Sayfa: <span class="nav style2"> 
        <% 
per=0
for y=1 to sayfala 
per=per+1
%> 
        <% if shf*1<>per*1 then %> 
        <b><a href="fikralar.asp?shf=<% =per %>"> 
          <% =per %> 
          </a></b> 
        <% else %> 
        <b> 
          <% =per %> 
          </b> 
        <% end if %> 
        <% next %> 
        <% end if %> 
              </span></p> 
    </div></td> 
  </tr> 
</table> 
<br /> 


	  
	  </td>
      <td width="4" valign="top" background="images/bg.jpg" class="style4"><img src="images/dikey2.gif" width="1"></td>
      <td width="202" valign="top" background="images/bg.jpg" class="style4"><!--#include file="sag_menu.asp"--></td>
    </tr>

  </table>
  <!--#include file="include_file/alt.asp"-->
</div>
</body>
</html><%end if%>
