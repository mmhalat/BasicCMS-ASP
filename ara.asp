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
	  <table><tr><td width="600">
	  <%
'adovbs.inc'den sabitler
Const adOpenStatic = 3
Const adLockReadOnly = 1
Const adCmdText = &H0001

Const PAGE_SIZE = 10  '** Di?er sayfalaryn boyutu.

'** De?i?kenleri olu?turuyoruz

Dim strhit

Dim cnnara  ' ** ADO ba?lantysy
Dim rstara  ' ** ADO kayytseti


Dim strSQL
Dim strara

Dim iPageCurrent
Dim iPageCount
Dim iRecordCount
Dim I

strhit = Request.ServerVariables("hit")

strara = Request.QueryString("ara")

If Request.QueryString("sayfa") = "" Then
	iPageCurrent = 1
Else
	iPageCurrent = CInt(Request.QueryString("sayfa"))
End If

%>
<%
If strara <> "" Then

'** Veritabanymyzyn yolunu a?a?yya yazalym.

	strDBPath = Server.MapPath("XlhGyAeRT_GfDsZrTyUoHlK_ggggggg_ZekFGyH/yeLDfRCdADGjh_MnJoA_HXXXqwEGhBB.mdb")

	Set cnnara = Server.CreateObject("ADODB.Connection")

	cnnara.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & strDBPath & ";"

	' ** E?er SQL server kullanyyorsanyz a?a?ydaki satyry kullanynyz:
	' cnnara.Open Application("SQLConnString")
	
	strSQL = "SELECT script_adi, versiyon, tanim, telif, lisans, boyut, hit, os, id " _
		& "FROM download " _
		& "WHERE script_adi LIKE '%" & Replace(strara, "'", "''") & "%' " _
		& "OR tanim LIKE '%" & Replace(strara, "'", "''") & "%' " _
    	& "OR versiyon LIKE '%" & Replace(strara, "'", "''") & "%' " _
		& "OR telif LIKE '%" & Replace(strara, "'", "''") & "%' " _
		& "OR id LIKE '%" & Replace(strara, "'", "''") & "%' " _
		& "OR lisans LIKE '%" & Replace(strara, "'", "''") & "%' " _
		& "OR os LIKE '%" & Replace(strara, "'", "''") & "%' " _
        & "OR boyut LIKE '%" & Replace(strara, "'", "''") & "%' " _
        & "OR hit LIKE '%" & Replace(strara, "'", "''") & "%' " _
		& "ORDER BY id DESC;"

	Set rstara = Server.CreateObject("ADODB.Recordset")
	rstara.PageSize  = PAGE_SIZE
	rstara.CacheSize = PAGE_SIZE

	' **Kayytsetimizi açalym
 rstara.Open strSQL, cnnara, adOpenStatic, adLockReadOnly, adCmdText

	iRecordCount = rstara.RecordCount
	iPageCount   = rstara.PageCount

	If iRecordCount = 0 Then
		' **Kayyt bulunamady hatasyny göster
		%>
		
        <span class="ara"><b><br>
        <%= strara %> </b>; 
         için&nbsp; </span>
		
		 <span class="headinghome">Kayıt bulunamadı. Lütfen 
         yeni bir arama yapınız.</span> 
<br>
        <span class="ara"> 
        <%
	Else
		' ** Görüntülemeye ihtiyaç duydu?umuz sayfaya ta?yr.	
		rstara.AbsolutePage = iPageCurrent

				%></span></p><div align="center">
  <center>
  <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#C0C0C0" width="462" id="AutoNumber3" cellpadding="0">
    <tr>
      <td width="50%" bgcolor="#E4E4DE">
        <span class="ara"><%= strara %> için <%= iRecordCount %>    
        Kayıt bulundu.</span></td>
      <td width="50%" bgcolor="#E4E4DE">
        <p align="center">
        <span class="ara"> <%= iPageCount %> sayfanın <%= iPageCurrent %>. sayfası görüntüleniyor.</span> </td>
    </tr>
  </table>
</center>
</div>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" id="AutoNumber2">
  <tr>
    <td width="100%">
				
	<%
		Do While Not rstara.EOF And rstara.AbsolutePage = iPageCurrent
			%> </td>
  </tr>
</table>
  <table width="535" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="#FFFFFF">
<tr>
      <td colspan="4" bgcolor="#990000"><b><a href="down.asp?id=<%= rstara.Fields("id").Value %>"><%= rstara.Fields("script_adi").Value %>&nbsp;<%= rstara.Fields("versiyon").Value %></a></b></td>
    </tr>
    <tr>
      <td height="20" colspan="4" bgcolor="#CCCCCC"><%= rstara.Fields("tanim").Value %></td>
    </tr>
    <tr>
      <td width="138" height="20" bgcolor="#CCCCCC">
        <div align="center">
Lisans: <%= rstara.Fields("lisans").Value %> <td width="121" bgcolor="#CCCCCC">OS: <%= rstara.Fields("os").Value %>
      <td width="131" bgcolor="#CCCCCC">Boyut: <%= rstara.Fields("boyut").Value %> <td width="121" bgcolor="#CCCCCC">Hit: <%= rstara.Fields("hit").Value %>
        <td width="17">


  	<%

			rstara.MoveNext
		Loop
		%> &nbsp;</table>

<p align="center" style="margin-top: 10; margin-bottom: 10"><span class="headinghome"><% If iPageCurrent > 1 Then %></span>

<%
'** E?er sayfa sayysy 1den fazlaysa
%><font color="#000080"><span class="headinghome">
</span>
		

<%
	End If
	For I = 1 To iPageCount
	If I = iPageCurrent Then
				%>
				<%= I %>
				<%
			Else
				%> <span class="headinghome">
<a href="<%= strhit %>?ara=<%= Server.URLEncode(strara) %>&sayfa=<%= I %>">
<%= I %></a></span>

<%
	End If
	Next 'I
	If iPageCurrent < iPageCount Then
			
			%><%
		End If
		%><span class="headinghome"> </span>
		
 </font>
		
	<%
	End If

	rstara.Close
	Set rstara = Nothing
	cnnara.Close
	Set cnnara = Nothing
End If
%><div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#E4E4DE" width="441" id="AutoNumber4">
    <tr>
      <td width="100%" valign="top">* Arama işlemi; program adr, lisans, 
      platform, boyut, açıklama ve hit üzerinden 
      yapılır.<br>
      * Programyn ayrıntılarını 
      görmek için programın başlığına tıklayabilirsiniz.</td>
    </tr>
  </table>      </div></td></tr></table>  
	  
	  </td>
      <td width="4" valign="top" background="images/bg.jpg" class="style4"><img src="images/dikey2.gif" width="1"></td>
      <td width="202" valign="top" background="images/bg.jpg" class="style4"><!--#include file="sag_menu.asp"-->
	  </td>
    </tr>

  </table>
  <!--#include file="include_file/alt.asp"-->
</div>
</body>
</html><%end if%>
