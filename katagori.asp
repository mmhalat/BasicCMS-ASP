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
.style29 {color: #FF0000; font-size: 12px; }
.style37 {
	color: #FFFFFF;
	font-size: 12px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
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
      <td width="531" align="left" valign="top" background="images/bg.jpg" bgcolor="#F1F1F1"><div align="center">

<table cellpadding="0" cellspacing="0">
  <tr>
    <td width="14" height="19" bgcolor="#990000">
</td>
    <td width="507" height="19" bgcolor="#990000"><span class="style37">Alt Kategoriler...</span></td>
  </tr></table>
	  <%
if Not IsNumeric(REQUEST.QUERYSTRING("id" ) ) THEN
response.write "<center>Girdiğiniz id Numarası geçersizdir<br>Lütfen Geçerli bir id numarası girin</center>"
response.end
end if
%> 
	  <%
id=request.querystring("id")
Set Rs=Server.CreateObject("Adodb.Recordset")
sorgu = "Select * from katagori where Catid="&id&" order by katagori_adi"
Rs. Open Sorgu, Baglanti, 1, 3
adet = rs.recordcount
%>
<%
if rs.eof then
response.write "<font size=1 face=Verdana>Bu Kategoride Herhangi Bir Alt Kategori Bulunamadı...</Font>"
end if
%>
<%
i=0
do while not rs.eof
i=i+1
%>
<% id =rs("id") %>
<%
set sayi =Server.CreateObject("ADODB.Recordset")
sql ="Select * From galeri  where  Catid = "& id
sayi.open sql,baglanti,1,3
toplam_sayi = sayi.recordcount
%>
            <table><tr>
    <td width="19" height="21" bgcolor="#FFFFFF"><font size="1" face="Verdana">&nbsp;<span class="style26">&nbsp;#</span></font></td>
    <td width="496" bgcolor="#FFFFFF"><font size="1" face="Verdana"><font size="1" face="Verdana"><a href="resim_goster.asp?id=<%=rs("id")%>"><b><%=rs("katagori_adi")%></b></a>  ( <%=toplam_sayi%> )</font></font></td>
  </tr>
</table>
<%
if i = 2 then
%><%
i=0
end if
%>

<%
rs.movenext
loop
%>
<%
rs.close
set rs=nothing
%>
      <p>&nbsp;</p>
      <p>
	  
	  
	  
	  





	  
	  
	  
	  
	  
	  
	  </p></td>
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