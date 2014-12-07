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
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
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
.style37 {color: #FFFFFF}
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
	  <!--#include file="include_file/downset.asp"-->
	  <table border="0" cellpadding="0" cellspacing="1" width="541" bgcolor="#D1D1D1">
            <tr class="style36">
              <td width="233" bgcolor="#980C12" height="20"><b><font color="#FFFFFF">&nbsp;<span class="style36">Kategori Adı</span></font></b></td>
              <td width="42" align="center" bgcolor="#980C12" height="20"><b><font color="#FFFFFF">Adet</font></b></td>
              <td width="220" bgcolor="#980C12" height="20"><b><font color="#FFFFFF">&nbsp;Kategori Adı</font></b></td>
              <td width="41" align="center" bgcolor="#980C12" height="20"><b><font color="#FFFFFF">Adet</font></b></td>
        </tr>
<%
While Not yeniasp.EOF
%> 
            <tr>
              <td width="233" height="15" bgcolor="#ffffff" class="style26">&nbsp;<a href="aspkat.asp?kid=<%=yeniasp("kid")%>"><%=yeniasp("kategori_adi")%></a></td>
              <td width="42" align="center" bgcolor="#ffffff" height="15"><% categoryid = yeniasp("kid") %><%=scripts(categoryid)%></td>
<%
yeniasp.MoveNext
If Not yeniasp.EOF Then
%>
              <td width="220" bgcolor="#ffffff" height="15">&nbsp;<a href="aspkat.asp?kid=<%=yeniasp("kid")%>" class="style26"><%=yeniasp("kategori_adi")%></a></td>
              <td width="41" align="center" bgcolor="#ffffff" height="15"><% categoryid = yeniasp("kid") %><%=scripts(categoryid)%></td>
<%End If %>
<%
If Not yeniasp.EOF Then
yeniasp.MoveNext
End If
%>
            </tr>
<% wend 

Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from download WHERE onay=1"
yeniasp.Open sor,baglanti,1,3
scriptler=yeniasp.recordcount
%>
        </table><center><script type="text/javascript"><!--
google_ad_client = "pub-5368564932056195";
//468x60, oluşturulma 15.12.2007
google_ad_slot = "0797006192";
google_ad_width = 468;
google_ad_height = 60;
//--></script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script></center><br>
		<table width="540" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="280"><table border="0" cellpadding="0" cellspacing="1" width="280" height="10" bgcolor="#D1D1D1">
            <tr bgcolor="#980C12">
              <td height="10" colspan="2">
              <div align="center" class="style36 style37">En Çok İndirilen 5 Program</div></td>
            </tr>
            <tr>
              <td width="233" height="10" bgcolor="#eaeaea"><b>&nbsp;Program Adı</b></td>
              <td width="44" height="10" align="middle" bgcolor="#eaeaea">
                <div align="center"><b>Hit</b></div>             </td>
            </tr>
<%
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from download WHERE onay=true order by hit desc"
yeniasp.Open sor,baglanti,1,3

for i = 1 to 5
if yeniasp.eof then exit for
%>
            <tr>
              <td width="233" height="10" bgcolor="#ffffff" class="style26"><font title="<%=yeniasp("tanim")%>"><a href="down.asp?id=<%=yeniasp("id")%>"><%=yeniasp("script_adi")%>&nbsp;<%=yeniasp("versiyon")%></a></font></td>
              <td width="44" height="10" align="middle" bgcolor="#ffffff">
                <div align="center"><%=yeniasp("hit")%></div>             </td>
            </tr>
<%
yeniasp.movenext
Next
yeniasp.close
set yeniasp = Nothing
%>
        </table></td>
            <td width="260"><table border="0" cellpadding="0" cellspacing="1" width="260" bgcolor="#D1D1D1">
            <tr bgcolor="#980C12">
              <td height="10" colspan="2">
              <div align="center" class="style36 style37"><b>En Son Eklenen 5 Program </b></div></td>
            </tr>
            <tr>
              <td width="193" height="10" bgcolor="#eaeaea"><b>&nbsp;Program Adı</b></td>
              <td width="64" height="10" align="middle" bgcolor="#eaeaea">
                <div align="center"><b>Hit</b></div>            </td>
            </tr>
<%
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from download WHERE onay=true order by id desc"
yeniasp.Open sor,baglanti,1,3

for i = 1 to 5
if yeniasp.eof then exit for
%>
            <tr>
              <td width="193" height="10" bgcolor="#ffffff"><font title="<%=yeniasp("tanim")%>"><a href="down.asp?id=<%=yeniasp("id")%>" class="style26"><%=yeniasp("script_adi")%>&nbsp;<%=yeniasp("versiyon")%></a></font></td>
              <td width="64" height="10" align="middle" bgcolor="#ffffff">
                <div align="center"><%=yeniasp("hit")%></div>             </td>
            </tr>
<%
yeniasp.movenext
Next
yeniasp.close
set yeniasp = Nothing
%>
        </table></td>
          </tr>
        </table>
		<br><form method="GET" action="ara.asp<%= strhit %>" >
          <table width="244" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#D1D1D1">
            <tr>
              <td colspan="2" bgcolor="#980C12" height="20">
             <div align="center" class="style27"><b>&nbsp;Aranacak Kelime</b></div></td>
            </tr>
            <tr>
              <td bgcolor="#eaeaea" width="242"><div align="center"><b>&nbsp;Aranacak Kelime</b></div></td>
            </tr>
            <tr>
              <td bgcolor="#ffffff" width="242">
              <p align="center"><input type="text" script_adi="ara" size="38" name="ara">
              </font>
        <font size="1" face="SimSun">
            <input type="submit" value="Programlarda ARA">
        </font></td>
   
            </tr>
          </table>
          </form></td>
      <td width="4" valign="top" background="images/bg.jpg" class="style4"><img src="images/dikey2.gif" width="1"></td>
      <td width="202" valign="top" background="images/bg.jpg" class="style4"><!--#include file="sag_menu.asp"-->
	  </td>
    </tr>

  </table>
  <!--#include file="include_file/alt.asp"-->
</div>
</body>
</html><%end if%>
