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
      <td width="546" valign="top" background="images/bg.jpg" class="style4"><table width="541" border="1" cellpadding="0" cellspacing="0" bordercolor="#990000">
<!--#include file="include_file/aspkatinclude.asp"--> 
<%if yeniasp.eof then
response.Write("Kayıtlı Veri Bulunamadı.")
else

 %>
<%
yeniasp.pagesize = 10
yeniasp.absolutepage = git
sayfa = yeniasp.pagecount
for i=1 to yeniasp.pagesize
if yeniasp.eof then exit for
%>
    <tr>
      <td colspan="4" bgcolor="#990000"><b><div align="left" style="color:#FFFFFF"><a href="down.asp?id=<%=yeniasp("id")%>"><%=yeniasp("script_adi")%>&nbsp;<%=yeniasp("versiyon")%></a></div></b></td>
    </tr>
    <tr>
      <td height="20" colspan="4" bgcolor="#EAEAEA">  <%=yeniasp("tanim")%> </td>
    </tr>
    <tr>
      <td width="173">
        <div align="center">
          <p align="center"></div>
        <span class="style27">Lisans:</span><span class="style28"> <%=yeniasp("lisans")%></span></td>
      <td width="164"><span class="style27">OS: </span><span class="style28"><%=yeniasp("os")%></span></td>
      <td width="96"><span class="style27">Boyut:<span class="style28"> <%=yeniasp("boyut")%></span></span></td>
      <td width="98"><span class="style27">Hit: </span><span class="style28"><%=yeniasp("hit")%></span></td>
    </tr>
  <tr>
    <td colspan="4"><span class="style27">
Ekleyenin Notu :  </span></td>
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
response.write "<b> <a href=""aspkat.asp?kid="&kid&"&git="&y&""">"&y&"</a></b>"
end if
next
%></td>
    </tr>
  </table>
  <% sub indir
id=Request.QueryString("id")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from download where id="&id
yeniasp.Open sor,Sur,1,3

yeniasp("hit")=yeniasp("hit")+1
yeniasp.update

url=yeniasp("url")
Response.Redirect url
end sub
%></td>
      <td width="4" valign="top" background="images/bg.jpg" class="style4"><img src="images/dikey2.gif" width="1"></td>
      <td width="202" valign="top" background="images/bg.jpg" class="style4"><!--#include file="sag_menu.asp"-->
	  </td>
    </tr>

  </table>
  <!--#include file="include_file/alt.asp"-->
</div>
</body>
</html><%end if%><%end if%>
