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
      <td width="531" align="left" valign="top" background="images/bg.jpg" bgcolor="#F1F1F1"><p align="center"><%baglanti.close
	  																																																			set baglanti=nothing%><!--#include file="include_file/ibanka_db.asp" -->
          Aramak İstediğiniz Kelime/Kelimeleri Kutucuga Yazıp Biraz Bekleyin </p>	    <table cellpadding="0" cellspacing="0" style="border:1px solid black" bordercolor="black">
	      
    <td width="530" height="284"><div align="center"><span class="style1"><strong>ARA:</strong></span>
          <input type="text" name="uara" class="style5" autocomplete="off" value="" onkeyup="uyeara(this.value)">
    
  </div>
      <table width="531" height="276" cellpadding="0" cellspacing="0" bordercolor="black" style="border:1px solid black"><td width="529" height="274">
  <div id="uaram" name="uaram" style="OVERFLOW:auto;WIDTH:450;HEIGHT:270px"></div>
  </td></table>
  </td><!--#include file="include_file/db.asp"-->
        </table></td>
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