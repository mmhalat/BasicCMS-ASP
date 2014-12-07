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
-->
</style>
<head>
<meta name="verify-v1" content="Wzwr6Vhe3Hj+m62hKJAfOEJ/qj/tifgtKs5D7GNYnZY=" />
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
.style33 {font-size: 10px; font-family: Verdana, Arial, Helvetica, sans-serif; }
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
    </tr>
    <tr>
      <td width="202" valign="top" background="images/bg.jpg" class="style4">
	    <!--#include file="sol_menu.asp"--></td>
      <td width="4" valign="top" background="images/bg.jpg" class="style4"><img src="images/dikey2.gif" width="1"></td>
      <td width="546" valign="top" background="images/bg.jpg" class="style4">
<%
dim ks, sql, ilk_resim, ilk_giris, resim, giris
set ks = server.createobject("adodb.recordset")
sql = "select top 10 * from haber order by id desc"
ks.open sql, baglanti, 1, 3
if not ks.eof then
ilk_resim = ""
if ilk_resim = "" then
ks.movefirst
resim = ""
resim = ks("resim")
ilk_resim = resim
resim = ""
giris = ""
giris = left(ks("haber"), 100)
giris = replace(giris, "'", "\'", 1, -1, 1)
giris = replace(giris, """", "&#34;", 1, -1, 1) '_ karakterini siliniz
giris = replace(giris, vbcrlf, " ", 1, -1, 1)
ilk_giris = giris
giris = ""
end if
%>
<table border="0" align="center" cellpadding="0" cellspacing="0">
<tr><td width="250" height="256" rowspan="2" align="center" valign="top"><img id="gelecek_resim" name="gelecek_resim" border="0" src="<%=ilk_resim%>" width="250" height="225" /></td>
<td valign="top" width="296"><img src="images/manser.gif" width="261" height="30"></td></tr>
<tr>
  <td valign="top"><%
do until ks.eof
resim = ks("resim")
giris = left(ks("haber"), 100)
giris = replace(giris, "'", "\'", 1, -1, 1)
giris = replace(giris, """", "&#34;", 1, -1, 1) '_ karakterini siliniz
giris = replace(giris, vbcrlf, " ", 1, -1, 1)
%>
    <table width="295" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="295"><a href="haber_detay.asp?id=<%=ks("id")%>" onMouseOut="javascript: document.getElementById('gelecek_resim').src = '<%=ilk_resim%>'; document.getElementById('giris').innerHTML = '<%=ilk_giris%>';" onMouseOver="javascript: document.getElementById('gelecek_resim').src = '<%=resim%>'; document.getElementById('giris').innerHTML = '<%=giris%>';">&nbsp;<img src="images/anket/kirmizi3.gif" border="0">&nbsp;<span class="style33"><%=ks("baslik")%></span></a></td>
      </tr>
      <tr>
        <td height="2"><img src="images/cizgi.gif" width="296" height="1"></td>
      </tr>
    </table>
    <%
resim = ""
giris = ""
ks.movenext
loop
%></td>
</tr>
</table>
<%
end if
ks.close
set ks = nothing
%>
        <table width="545" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><div align="center"><img src="images/enson7.gif" width="539" height="31"></div></td>
        </tr>
        <tr>
          <td>		    <span class="style26 style26">
		     &nbsp;<img src="images/anket/kirmizi3.gif" width="4" height="9">
		     <%baglanti.close
		  set baglanti=nothing%>
		    <!--#include file="include_file/banka_db.asp"-->
		  	<%
			Set kayitb=Server.CreateObject("ADODB.RecordSet")
			sql="select * from akaid order by id desc"
			kayitb.open sql,kon,1,3
			%>
            <a href="akaid_oku.asp?id=<%=kayitb("id")%>"><%= kayitb("isim") %></a>
  		    <%
kayitb.close
set kayitb=nothing
%>
&nbsp;</span></td>
          </tr>
        <tr>
          <td height="1"><span class="style26"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="141" height="1"></span></td>
        </tr>
        <tr>
          <td><span class="style26 style26">
            &nbsp;<img src="images/anket/kirmizi3.gif" width="4" height="9">
            <%
			Set kayitb=Server.CreateObject("ADODB.RecordSet")
			sql="select * from dualar order by id desc"
			kayitb.open sql,kon,1,3
			%>

            <a href="dualar_oku.asp?id=<%=kayitb("id")%>"><%= kayitb("isim") %></a>
  		    <%
kayitb.close
set kayitb=nothing
%>
            </span></td>
          </tr>
        <tr>
          <td><span class="style26"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="141" height="1"></span></td>
        </tr>
        <tr>
          <td><span class="style26">
            &nbsp;<img src="images/anket/kirmizi3.gif" width="4" height="9">
            <%
			Set kayitb=Server.CreateObject("ADODB.RecordSet")
			sql="select * from fikih order by id desc"
			kayitb.open sql,kon,1,3
			%>

            <a href="fikih_oku.asp?id=<%=kayitb("id")%>"><%= kayitb("isim") %></a>
  		    <%
kayitb.close
set kayitb=nothing
%>
            </span></td>
          </tr>
        <tr>
          <td><span class="style26"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="141" height="1"></span></td>
        </tr>
        <tr>
          <td><span class="style26">
            &nbsp;<img src="images/anket/kirmizi3.gif" width="4" height="9">
            <%
			Set kayitb=Server.CreateObject("ADODB.RecordSet")
			sql="select * from hadis order by id desc"
			kayitb.open sql,kon,1,3
			%>

            <a href="hadis_oku.asp?id=<%=kayitb("id")%>"><%= kayitb("isim") %></a>
  		    <%
kayitb.close
set kayitb=nothing
%>
            </span></td>
          </tr>
        <tr>
          <td><span class="style26"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="141" height="1"></span></td>
        </tr>
        <tr>
          <td><span class="style26">
            &nbsp;<img src="images/anket/kirmizi3.gif" width="4" height="9">
            <%
			Set kayitb=Server.CreateObject("ADODB.RecordSet")
			sql="select * from ilmihal order by id desc"
			kayitb.open sql,kon,1,3
			%>

            <a href="ilmihal_oku.asp?id=<%=kayitb("id")%>"><%= kayitb("isim") %></a>
  		    <%
kayitb.close
set kayitb=nothing
%>
            </span></td>
          </tr>
        <tr>
          <td><span class="style26"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="141" height="1"></span></td>
        </tr>
        <tr>
          <td><span class="style26">
            &nbsp;<img src="images/anket/kirmizi3.gif" width="4" height="9">
            <%
			Set kayitb=Server.CreateObject("ADODB.RecordSet")
			sql="select * from islam_tarihi order by id desc"
			kayitb.open sql,kon,1,3
			%>
  
            <a href="islam_tarihi_oku.asp?id=<%=kayitb("id")%>"><%= kayitb("isim") %></a>
	        <%
kayitb.close
set kayitb=nothing
%>
            </span><span class="style26"><span class="style26 style26"></span> </span></td>
          </tr>
        <tr>
          <td><span class="style26"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="141" height="1"></span></td>
        </tr>
        <tr>
          <td><span class="style26">
            &nbsp;<img src="images/anket/kirmizi3.gif" width="4" height="9">
            <%
			Set kayitb=Server.CreateObject("ADODB.RecordSet")
			sql="select * from lugat order by id desc"
			kayitb.open sql,kon,1,3
			%>
  
            <a href="lugat_oku.asp?id=<%=kayitb("id")%>"><%= kayitb("isim") %></a>
	        <%
kayitb.close
set kayitb=nothing
%>
            </span></td>
          </tr>
        <tr>
          <td><span class="style26"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="199" height="1"><img src="images/cizgi.gif" width="141" height="1"></span></td>
        </tr>
        <tr>
          <td><span class="style26">
            &nbsp;<img src="images/anket/kirmizi3.gif" width="4" height="9">
            <%
			Set kayitb=Server.CreateObject("ADODB.RecordSet")
			sql="select * from ozel_gunler order by id desc"
			kayitb.open sql,kon,1,3
			%>
  
            <a href="ozel_gunler_oku.asp?id=<%=kayitb("id")%>"><%= kayitb("isim") %></a>
	        <%
kayitb.close
set kayitb=nothing
%>
            </span></td>
          </tr>
		  <%kon.close
		  set kon=nothing%>

<!--#include file="include_file/db.asp"-->
      </table><br><center> <br><table width="545" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><div align="center"><img src="images/resim_galerisi.gif" width="540" height="31"></div></td>
        </tr>
        <tr>
          <td> <div align="right">
            <MARQUEE align=center direction=left height=199 onmouseout=this.start(); onmouseover=this.stop(); scrollAmount=1 scrollDelay=40 width=540 left="1" top="100">
   
          <% set rs= Server.CreateObject("ADODB.Recordset")
SQL =" Select top 5 * from galeri order by id desc "
rs.open SQL,baglanti,1,3
%>
            <%Do While not rs.Eof %> 
            <a href="galeri_detay.asp?id=<%=rs("id")%>" target="uye" onClick="window.open('galeri_detay.asp?id=<%=rs("id")%>','uye','width=800,height=600 toolbar=yes scrollbars=yes' )"> <img src="<%=rs("img")%>" alt="<%=rs("detay")%>" border=0 width=150 height=150></a>
            <%
rs.Movenext
Loop
%>
            </marquee>
          </div></td>
        </tr>
        <tr>
          <td height="46"><div align="center"><img src="images/mot_alt.gif" width="275" height="50"></div></td>
        </tr>
      </table>
      <p align="center">&nbsp;</p></td>
      <td width="4" valign="top" background="images/bg.jpg" class="style4"><img src="images/dikey2.gif" width="1"></td>
      <td width="202" valign="top" background="images/bg.jpg" class="style4"><!--#include file="sag_menu.asp" --><br></td>
    </tr>
</table>
  
<center><!--#include file="include_file/alt.asp"--></center>
</div>
</body>
</html>
		<%
		baglanti.close
		set baglanti = nothing
		%>
<%end if%>
