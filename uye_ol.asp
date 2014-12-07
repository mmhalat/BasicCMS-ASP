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
		<% IF Not session("giris")="tamam" Then %>
		<TABLE 
                  width="95%" border=1 align=center cellPadding=1 cellSpacing=0 bordercolor="#F1F1F1" class=tablo_cevre>
                    <TBODY>
                    <TR>
                      <TD align=middle>
                        <DIV align=center>
                        <CENTER>
                        <FORM name=uye action=uye_kayit.asp method=post>
                        <CENTER><FONT face=Tahoma size=2></FONT></CENTER>
                        <TABLE style="BORDER-COLLAPSE: collapse" 
                        borderColor=#800000 height=912 cellSpacing=0 
                        cellPadding=0 width="100%" bgColor=#FFE3E4 border=0>
                          <TBODY>
                          <TR bgcolor="#AE0D15">
                            <TD height=22 colspan="2">                              
                            <div align="center" class="style33">ÜYE KAYIT FORMU </div></TD>
                          </TR>
							  <TR>
                            <TD colSpan=2 height=88>                              <div align="left">
                              <FIELDSET class="style30">
                                <font face="Tahoma">
                                <LEGEND><B>Kullanıcı Adı</B> 
                                </LEGEND>
                                Mesaj yazabilmek ve yazılmış Mesajları 
                                okuyabilmeniz için Üye olmalsınız. Lütfen Üyelik 
                                için gerekli Bilgileri aşağıdaki Forumda ilgili 
                                bölümlere veriniz.<BR>
                                <BR>
                                </font>
                                <font face="Tahoma">&nbsp;Kullanıcı Adı : </font><font face="Tahoma">
                                <INPUT class=form 
                              style="FONT-WEIGHT: bold; FONT-FAMILY: arial,helvetica,sans-serif" 
                              maxLength=15 size=30 name=kulladi>
                                <FONT 
                              color=#ff0000>*</FONT></font>
<span class="style30">
                                </span>
                              </FIELDSET>
                              </div>
                              <img src="images/yatay.gif"></TD></TR>
                          <TR>
                            <TD colSpan=2 height=88>                              <div align="left">
                              <FIELDSET class="style30">
                                <font face="Tahoma">
                                <LEGEND><B>Şifre</B> </LEGEND>
                                Kullanmak 
                                istediğiniz Şifrenizi giriniz. Lütfen Şifrenizin 
                                yazılımına dikkat edin Büyük ve Küçük Harf 
                                kullandıysanız, Forumda girişlerde Şifrenizi aynı 
                                şekilde yazmalısınız.                              <BR>
                                </font>
                                <font face="Tahoma">&nbsp;Şifre : </font><font face="Tahoma">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Tahoma">&nbsp;&nbsp;</font><font face="Tahoma">&nbsp;&nbsp;</font><font face="Tahoma">&nbsp;&nbsp;</font>
                                <INPUT 
                              class=form onkeyup=EvalPwd(this.value); 
                              style="IME-MODE: disabled" type=password 
                              maxLength=16 onchange=EvalPwd(this.value); size=30 
                              name=sifre> 
                                <FONT color=#ff0000>*</FONT></font> <font face="Tahoma">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                              </font>
                                </FIELDSET>
                              <span class="style30"><BR>
                              </span><img src="images/yatay.gif"></div>
                            </TD></TR>
                          <TR>
                            <TD colSpan=2 height=71>                              <div align="left">
                              <FIELDSET class="style30">
                              <font face="Tahoma"><LEGEND><B>Gizli soru</B> </LEGEND>
                                Şifrenizi unuttuğunuz taktirde gizli soru 
                                ile yeni şifre istemenizi saglar lütfen soru ile 
                                yanıtı aynı yazmayınız..<BR>
                                </font>
                                <font face="Tahoma">&nbsp;&nbsp;&nbsp;Gizli soru : </font><font face="Tahoma">&nbsp;<font face="Tahoma">&nbsp;&nbsp;</font>
                                <INPUT class=form maxLength=50 
                              name=sifresoru>
                                <FONT color=#ff0000>*</FONT></font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Tahoma">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cevap : &nbsp;
                                <INPUT 
                              class=form maxLength=50 name=cevap>
                                <FONT 
                              color=#ff0000>*</FONT></font>
                              </FIELDSET>
                              <span class="style30">                                </span>
                            </div>
                            <img src="images/yatay.gif"></TD></TR>
                          <TR>
                            <TD colSpan=2 height=105><div align="left"><span class="style30"><FONT 
                              face=Tahoma><B>&nbsp;E-Posta</B>                              <BR>
                                E-Mektup (E-Mail) adresinizi yazın. Site mail 
                              onaylı kullanılıyor ise hesabınızı aktıf 
                              edebilmeniz için onay kodu bu adrese 
                              gonderilecektir.<BR>
                                <BR>
                              </FONT></span> </div>                              <DIV align=left class="style30">
                                <div align="left"><font face="Tahoma">&nbsp;E-Posta :<font face="Tahoma">&nbsp;&nbsp;</font><font face="Tahoma">&nbsp;&nbsp;</font><font face="Tahoma">&nbsp;&nbsp;</font><font face="Tahoma">&nbsp;&nbsp;</font><font face="Tahoma">&nbsp;&nbsp;</font> </font><span class="style30"><font face="Tahoma">
                                  <INPUT name=mail 
                              class=form id="mail" 
                              style="FONT-WEIGHT: bold; FONT-SIZE: 16px; FONT-FAMILY: arial,helvetica,sans-serif" 
                              size=30> 
                                <FONT color=#ff0000>*</FONT> <font face="Tahoma">&nbsp;&nbsp;</font><font face="Tahoma">&nbsp;&nbsp;</font><font face="Tahoma">&nbsp;&nbsp;</font><font face="Tahoma">&nbsp;&nbsp;</font><font face="Tahoma">&nbsp;&nbsp;</font><font face="Tahoma">&nbsp;&nbsp;</font><font face="Tahoma">&nbsp;&nbsp;</font>&nbsp;Gizli : &nbsp;
                                <INPUT class=form 
                              type=checkbox value=ON name=gizli> 
                                </font><br>
                                <br>
                                </span></div>
                              </DIV>
                            </TD>
                          </TR>
                          <TR bgcolor="#AE0D15">
                            <TD height=19 
                            colSpan=2 class=tablo_baslik><div align="left"><span class="style30 style33"><B>&nbsp;» Kişisel 
  bilgiler</B></span></div></TD></TR>
                          <TR>
                            <TD width=237 height=79><div align="left"><span class="style30"><FONT face=Tahoma>Buraya İsminizi yazmanız gerekiyor.<BR>
                                <BR>
                              </FONT></span> </div>                              <DIV align=left class="style30">
                                <div align="left"><font face="Tahoma">&nbsp;İsim : </font></div>
                              </DIV>
                              <div align="left"><span class="style30"><font face="Tahoma">
                                <INPUT name=ad 
                              class=form id="ad" maxLength=50>
                                <FONT 
                              color=#ff0000>*</FONT> </font><BR>
                                </span>
                              </div>
                              <DIV 
                              style="MARGIN-LEFT: 5px; MARGIN-RIGHT: 10px; BORDER-BOTTOM: #c8c6c6 2px dotted; font: 10px;"></DIV></TD>
                            <TD width=272 height=79><div align="left"><span class="style30"><FONT face=Tahoma>Buraya Soy Adınızı yazmanız gerekiyor. 
                                <BR>
                                <BR>
                              </FONT></span> </div>                              <DIV align=left class="style30">
                                <div align="left"><font face="Tahoma">Soy isim : </font></div>
                              </DIV>
                              <div align="left"><span class="style30"><font face="Tahoma">
                                <INPUT name=soyad class=form id="soyad" 
                              maxLength=50> 
                                <FONT 
                              color=#ff0000>*</FONT> <BR>
                              </font> </span> </div>                              <DIV 
                              style="MARGIN-LEFT: 5px; MARGIN-RIGHT: 10px; BORDER-BOTTOM: #c8c6c6 2px dotted; font: 10px;"></DIV></TD></TR>
                          <TR>
                            <TD width=237 height=72><div align="left"><span class="style30"><FONT face=Tahoma>Gerektiginde Size Ulasabilecegimiz Bir Telefon Adresi...</FONT><FONT face=Tahoma>
                                <BR>
                              </FONT></span> </div>                              <DIV align=left class="style30">
                                <div align="left"><font face="Tahoma">&nbsp;Telefon : </font></div>
                              </DIV>
                              <div align="left"><span class="style30"><font face="Tahoma">
                                <INPUT name=telefon 
                              class=form id="telefon" maxLength=50> 
                                </font><BR>
                                </span>
                              </div>
                              <DIV 
                              style="MARGIN-LEFT: 5px; MARGIN-RIGHT: 10px; BORDER-BOTTOM: #c8c6c6 2px dotted; font: 10px;"></DIV></TD>
                            <TD width=272 height=72><div align="left"><span class="style30"><FONT face=Tahoma>Bir meslek sahibi veya ögrencimisiniz? 
                                burada bu konuyu kısaca belirtin..                              <BR>
                              </FONT></span> </div>                              <DIV align=left class="style30">
                                <div align="left"><font face="Tahoma">Meslek : </font></div>
                              </DIV>
                              <div align="left"><span class="style30"><font face="Tahoma">
                                <INPUT class=form 
                              maxLength=50 name=meslek> 
                                </font><BR>
                                </span>
                              </div>
                              <DIV 
                              style="MARGIN-LEFT: 5px; MARGIN-RIGHT: 10px; BORDER-BOTTOM: #c8c6c6 2px dotted; font: 10px;"></DIV></TD></TR>
                          <TR>
                            <TD width=237 height=72><div align="left"><font face="Tahoma"><span class="style30">Oturduğunuz şehir adını yazın.<BR>
                                </span>
                              </font></div>
                              <font face="Tahoma">
                              <DIV align=left class="style30">
                                <div align="left">Şehir : </div>
                              </DIV>
                              </font>
                              <div align="left"><FONT face=Tahoma 
                              size=2>
                                <INPUT 
                              class=form maxLength=50 name=sehir>
                                <FONT 
                              color=#ff0000>*</FONT> </FONT><BR>
                              </div>
                            <DIV 
                              style="MARGIN-LEFT: 5px; MARGIN-RIGHT: 10px; BORDER-BOTTOM: #c8c6c6 2px dotted"></DIV></TD>
                            <TD width=272 height=72><div align="left"><font face="Tahoma"><span class="style30">Bay veya Bayan bir cinsiyet 
                                belirtin..<BR>
                                </span>
                              </font></div>
                              <font face="Tahoma">
                              <DIV align=left class="style30">
                                <div align="left">Cinsiyet : </div>
                              </DIV>
                              </font>
                              <div align="left"><FONT face=Tahoma 
                              size=2>
                                <SELECT 
                              class=form name=cins> 
                                  <OPTION value=Bay 
                                selected>Bay&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</OPTION> 
                                  <OPTION value=Bayan>Bayan</OPTION>
                                </SELECT> 
								<DIV 
                              style="MARGIN-LEFT: 5px; MARGIN-RIGHT: 10px; BORDER-BOTTOM: #c8c6c6 2px dotted"></DIV>
                              </FONT>
                                <DIV 
                              style="MARGIN-LEFT: 5px; MARGIN-RIGHT: 10px; BORDER-BOTTOM: #c8c6c6 2px dotted"></DIV>
                            <FONT face=Tahoma 
                              size=2>                                </FONT></div></TD></TR>
                          <TR>
                            <TD width=237 height=104><div align="left"><font face="Tahoma"><span class="style30"> Sitemizdeki İLeri SEviye İstatistikleri İçin Sitemizin Yaş Ortalamasının Çıkarılmasında Yardımcı Olacaktır...<br>
                              Örnek : 20
                                </span></font></div>
                              <font face="Tahoma"><DIV align=left class="style30">
                                <div align="left">Yaş : </div>
                              </DIV>
                              </font>                              <div align="left"><FONT face=Tahoma 
                              size=2>                              
                                  <input name="yas" type="text" id="yas">
                                <FONT 
                              color=#ff0000>*</FONT> </FONT>
                              </div>
                            </TD>
                            <TD width=272 height=104><div align="left"><font face="Tahoma"><span class="style30">Bir siteniz varsa buraya adresi yazın, 
                                http:// ile başlamalıdır..<BR>
                                Örnek : 
                                <B>http://www.takvaonline.com</B><BR>
                                </span>
                              </font></div>
                              <font face="Tahoma">
                              <DIV align=left class="style30">
                                <div align="left">Web Adresi :</div>
                              </DIV>
                              </font>
                              <div align="left"><FONT face=Tahoma 
                              size=2>
                                <INPUT 
                              class=form value=http:// name=web> 
                                </FONT><BR>
                              </div>
                            <DIV 
                              style="MARGIN-LEFT: 5px; MARGIN-RIGHT: 10px; BORDER-BOTTOM: #c8c6c6 2px dotted"></DIV></TD></TR>
                          <TR>
                            <TD height=136 colspan="2"><div align="left"><span class="style30"><font face="Tahoma">Foruma yazdığınız mesajların alt kısmında 
                                sizin imzanız yer alır burada bu imzayı 
                                belirtebilirsiniz.<BR>
                              </font> </span> </div>                              
                              <DIV align=left class="style30">
                                <div align="left"><font face="Tahoma">&nbsp;İmza : </font></div>
                              </DIV>                              
                              <div align="left"><font size="2" face="Tahoma">
                                <TEXTAREA class=form name=imza rows=5 cols=40></TEXTAREA> 
                                <BR>
                            </font></div>                              <DIV 
                              style="MARGIN-LEFT: 5px; MARGIN-RIGHT: 10px; BORDER-BOTTOM: #c8c6c6 2px dotted"></DIV></TD>
                            </TR>
                          <TR>
                            <TD colSpan=2 height=16>
                              <P align=left>(<FONT color=#ff0000>*</FONT>) 
                              İşareti ile belirtilen yerler girilmesi zorunlu 
                              alandır
                            <BR>
                            </P></TD></TR>
                          <TR>
                            <TD colSpan=2 height=9>
                              <div align="center">
  <INPUT class=buton type=submit value=Kaydet>
&nbsp;&nbsp;
  <INPUT class=buton type=reset value=Sıfırla>
                                <BR>
                                </div></TD></TR></TBODY></TABLE>
                        </FORM></CENTER></DIV></TD></TR></TBODY></TABLE><%else
						response.Write("Zaten Üyesiniz Yeniden Üye Olamazsınız.")
						end if%>
	  </td>
      <td width="4" valign="top" background="images/bg.jpg" class="style4"><div align="center"><img src="images/dikey2.gif" width="1"></div></td>
      <td width="202" valign="top" background="images/bg.jpg" class="style4"><div align="center"><!--#include file="sag_menu.asp"--></div></td>
    </tr>

  </table>
  <div align="center"><!--#include file="include_file/alt.asp"-->
</div>
</div></body>
</html>
<%end if%>