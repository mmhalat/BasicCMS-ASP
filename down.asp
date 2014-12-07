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
      <td width="202" background="images/bg.jpg" class="style4"><!--#include file="sol_menu.asp"--></td>
      <td width="4" valign="top" background="images/bg.jpg" class="style4"><img src="images/dikey2.gif" width="1"></td>
      <td width="546" valign="top" background="images/bg.jpg" class="style4">
	  <!--#include file="include_file/downinclude.asp"-->
<table border="0" cellpadding="0" cellspacing="1" width="541" bgcolor="#000000">
  <TBODY>
  <TR background="images/bg.jpg">
    <TD width="16%" height=16 background="images/bg.jpg">
      Program Adi</TD>
    <TD width="1%" background="images/bg.jpg"><span class="style27"><strong>:</strong></span></TD>
    <TD width="83%" background="images/bg.jpg"><a href="indiriliyor.asp?islem=indir&amp;id=<%=yeniasp("id")%>"><%=yeniasp("script_adi")%></a></TD>
  </TR>
  <TR background="images/bg.jpg">
    <TD width="16%" height=16 background="images/bg.jpg">
      <FONT face=Arial size=2>Boyu:</FONT></TD>
    <TD width="1%" height=16 background="images/bg.jpg"><span class="style27">:</span></TD>
    <TD width="83%" height=16 background="images/bg.jpg"><font face=Arial color=#000000 size=2><strong><%=yeniasp("boyut")%></strong></font></TD>
  </TR>
  <TR background="images/bg.jpg">
    <TD width="16%" height=15 background="images/bg.jpg">
      <FONT face=Arial size=2>Dili</FONT></TD>
    <TD width="1%" height=15 background="images/bg.jpg"><span class="style27">:</span></TD>
    <TD width="83%" height=15 background="images/bg.jpg"><font face=Arial color=#000000 size=2><strong><%=yeniasp("dil")%></strong></font></TD>
  </TR>
  <TR background="images/bg.jpg">
    <TD width="16%" height=16 background="images/bg.jpg">
      <FONT face=Arial size=2>Versiyon</FONT></TD>
    <TD width="1%" height=16 background="images/bg.jpg"><span class="style27">:</span></TD>
    <TD width="83%" height=16 background="images/bg.jpg"><font face=Arial color=#000000 size=2><strong><%=yeniasp("versiyon")%></strong></font></TD>
  </TR>
  <TR background="images/bg.jpg">
    <TD width="16%" height=16 background="images/bg.jpg">
     <FONT face=Arial size=2><STRONG>Platform</FONT></TD>
    <TD width="1%" height=16 background="images/bg.jpg"><span class="style27">:</span></TD>
    <TD width="83%" height=16 background="images/bg.jpg"><font face=Arial color=#000000 size=2><strong><%=yeniasp("os")%></strong></font></TD>
  </TR>
  <TR background="images/bg.jpg">
    <TD width="16%" height=16 background="images/bg.jpg">
     <FONT face=Arial size=2>Lisans</FONT></TD>
    <TD width="1%" height=16 background="images/bg.jpg"><span class="style27">:</span></TD>
    <TD width="83%" height=16 background="images/bg.jpg"><font face=Arial color=#000000 size=2><strong><%=yeniasp("lisans")%></strong></font></TD>
  </TR>
        <TR background="images/bg.jpg">
    <TD width="16%" height=16 background="images/bg.jpg">
      <FONT face=Arial size=2>Üretici</FONT></TD>
    <TD width="1%" height=16 background="images/bg.jpg"><span class="style27">:</span></TD>
    <TD width="83%" height=16 background="images/bg.jpg"><font face=Arial color=#000000 size=2><strong><%=yeniasp("telif")%></strong></font></TD>
        </TR>
        <TR background="images/bg.jpg">
    <TD width="16%" height=16 background="images/bg.jpg">
      <FONT face=Arial size=2>Ekleme</FONT></TD>
    <TD width="1%" height=16 background="images/bg.jpg"><span class="style27">:</span></TD>
    <TD width="83%" height=16 background="images/bg.jpg"><font face=Arial color=#000000 size=2><strong> <%=yeniasp("tarih")%> (<%=yeniasp("ekleyen")%>)</strong></font></TD>
        </TR>
  <TR background="images/bg.jpg">
    <TD width="16%" height=16 background="images/bg.jpg"><span class="style27"><SMALL>
      <font face=Arial size=2><b>Tanitim</b></font></SMALL></span></TD>
    <TD width="1%" height=16 background="images/bg.jpg"><span class="style27">:</span></TD>
    <TD width="83%" height=16 background="images/bg.jpg"><small><font face=Arial color=#000000 size=2><strong> <%=yeniasp("tanim")%></strong></font></small></TD>
  </TR>
  <TR background="images/bg.jpg">
    <TD height=16 colspan="3" background="images/bg.jpg">
      <P align=center><FONT face=Arial color=#000000 size=2><small><font color=#000000><strong><strong><font color=#ff0000><font color=#000000><font 
      face=Arial></font><a href="indiriliyor.asp?islem=indir&amp;id=<%=yeniasp("id")%>"><img src="images/download.gif" border="0"></a><font face=Arial><br><center><script type="text/javascript"><!--
google_ad_client = "pub-5368564932056195";
//468x60, oluşturulma 15.12.2007
google_ad_slot = "0797006192";
google_ad_width = 468;
google_ad_height = 60;
//--></script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script></center></font></font></font></strong></strong></font></small></FONT></P></TD></TR></TBODY></TABLE>      
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
%>
</td>
      <td width="4" valign="top" background="images/bg.jpg" class="style4"><img src="images/dikey2.gif" width="1"></td>
      <td width="202" valign="top" background="images/bg.jpg" class="style4"><!--#include file="sag_menu.asp"-->
	  </td>
    </tr>

  </table>
  <table width="966">
    <tr>
  <td height="53"><div align="center">Copyright &copy; Bu Sitenin Tüm Haklari <a href="http://ayyildizsoft.com">AyyildizSOFT</a>® 'a Aittir Izinsiz Kopyalanmasi &amp; Kullanilmasi <span class="style24">KESINLIKLE</span> Yasaktir.<bR>
    Bu Site En Iyi 1024*768 Çözünürlügünde , FireFox Ve Internet Explorer 6(+) Browserlarinda Görüntülenir.<br>
   Bu Sayfa  <% 
lngTimer=Timer  
  
For  lngCnt=1  to  1000000 
Next  
  
Response.Write  FormatNumber(Timer-lngTimer,2,True) & " saniye" 
%> de yüklendi. </div>    
    <div align="center"></div></td>
    </tr></table>
</div>
</body>
</html><%end if%>
