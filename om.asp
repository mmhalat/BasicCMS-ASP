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
<div align="center">
  <%
  baglanti.close
%>
  <!--#include file="include_file/baglan.asp"-->
<%
Set bymetin = Server.CreateObject("ADODB.Recordset")
sql = "Select * from mesajlar WHERE kime='"&Session("kulladi")&"'"
bymetin.open sql,Baglan,1,3

IF bymetin.EOF Then
response.Redirect("default.asp")
response.End()
End IF
%>
</div><table width="100%" border="0" cellspacing="1" cellpadding="3">
        <tr height="25" bgcolor="#AA0D14">
          <td width="7%" height="15" align="center"><span class="style30"></span></td>
          <td width="30%" height="15" align="center"><span style="color: #CCCCCC"><font face="Tahoma" style="font-size: 8pt"><b>Kimden</b></font></span></td>
          <td width="30%" height="15" align="center"><span style="color: #CCCCCC"><font face="Tahoma" style="font-size: 8pt"><b>Konu</b></font></span></td>
          <td width="30%" height="15" align="center"><span style="color: #CCCCCC"><font face="Tahoma" style="font-size: 8pt"><b>Tarih</b></font></span></td>
          <td width="3%" height="15" align="center"><span style="color: #CCCCCC"><font face="Tahoma" style="font-size: 8pt"><b>İşlem</b></font></span></td>
        </tr>
        <%
shf = Request.QueryString("shf")
IF Not IsNumeric(REQUEST.QUERYSTRING("shf")) THEN
Response.Redirect "default.asp"
Response.End
END IF

If shf="" Then shf="1"
bymetin.pagesize = 5
bymetin.absolutepage = shf
sayfa_sayisi = bymetin.pagecount
For i=1 To bymetin.pagesize
If bymetin.Eof Then exit for
%>
        <tr bgcolor="#CCCCCC">
          <td height="15"><center class="style25">
              <font face="Tahoma" style="font-size: 8pt">#</font>
          </center></td>
          <td height="15"><center class="style27">
              <font face="Tahoma" style="font-size: 8pt"><%=bymetin("kimden")%></font>
          </center></td>
          <td height="15"><center class="style28">
              <a href="om_oku.asp?id=<%=bymetin("Kimlik")%>"><font face="Tahoma" style="font-size: 8pt"><%=bymetin("konu")%></font></a>
          </center></td>
          <td height="15"><center class="style29">
              <font face="Tahoma" style="font-size: 8pt"><%=bymetin("tarih")%></font>
          </center></td>
          <td height="15"><center class="style26">
              <a href="om_sil.asp?id=<%=bymetin("Kimlik")%>"><font face="Tahoma" style="font-size: 8pt">Sil</font></a>
          </center></td>
        </tr>
      </table>
	  <%
bymetin.Movenext
Next
bymetin.close
baglan.close

%>
<!--#include file="include_file/db.asp"-->
</td>
      <td width="4" valign="top" background="images/bg.jpg" class="style4"><img src="images/dikey2.gif" width="1"></td>
      <td width="202" valign="top" background="images/bg.jpg" class="style4"><!--#include file="sag_menu.asp"--></td>
    </tr>

  </table><!--#include file="include_file/alt.asp"-->
</div>
</body>
</html>
<%end if%>