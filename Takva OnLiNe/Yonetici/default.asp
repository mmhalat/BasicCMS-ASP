<!-- #include file="aayar.asp" -->
<%
If Session("Kullanici_Sifresi" ) <> Sifre Then
	If Request.Form("Kullanici_Sifresi" ) <> Sifre Then
		Call frmParola_Form
	Else
		Session("Kullanici_Sifresi" ) = Sifre
	End If
End If

Sub frmParola_Form
Sayfa = "http://"
Sayfa = Sayfa & Request.ServerVariables("HTTP_HOST" )
Sayfa = Sayfa & Request.ServerVariables("URL" )
%>
<form method="post" action="<% =Sayfa %>">
<div align="center"><font color="#990000" face="Verdana, Arial, Helvetica, sans-serif" size="1"><strong>Giris Sifresi<br></strong></font><input type="PASSWORD" name="Kullanici_Sifresi" value size="20">&nbsp;<input type="SUBMIT" value="Gir"></div>
</form>

<p><br>
<%
Response.End
End Sub
%>
<%
anket=request.QueryString("anket")
if request.QueryString("anket")="" then
	anket=aktif_id
end if

set sonuc_soru = Server.CreateObject("ADODB.RecordSet")
SQL = "select * from sorular where id="&anket&""
sonuc_soru.open SQL,anketbag,1,3

set sonuc_secenek = Server.CreateObject("ADODB.RecordSet")
SQL = "select * from secenekler where hangi_soru like '"&anket&"'"
sonuc_secenek.open SQL,anketbag,1,3

set sonuc_diger = Server.CreateObject("ADODB.RecordSet")
SQL = "select * from secenekler where hangi_soru like '"&anket&"diger'"
sonuc_diger.open SQL,anketbag,1,3

set diger_anketler = Server.CreateObject("ADODB.RecordSet")
SQL = "select * from sorular"
diger_anketler.open SQL,anketbag,1,3

set yorum = Server.CreateObject("ADODB.RecordSet")
SQL = "select * from yorumlar where hangi_soru="&anket&""
yorum.open SQL,anketbag,1,3

set aktif_sec = Server.CreateObject("ADODB.RecordSet")
SQL = "select * from sorular"
aktif_sec.open SQL,anketbag,1,3

set secenek_soru = Server.CreateObject("ADODB.RecordSet")
SQL = "select * from sorular order by id DESC"
secenek_soru.open SQL,anketbag,1,3
%>
<html>
<head>
<title><%=ayar("anket_adi")%></title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<!-- #include file="../astil.css" -->
</head>

<body bgcolor="<%=ayar("bg")%>">
<table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td><div align="center"><font size="5" color="#990000"><strong><font size="2" face="Georgia, Times New Roman, Times, serif">Takva Online Anket Sistemi Yönetim Paneli </font></strong></font>
        <hr size="0">
      </div></td>
  </tr>
  <tr> 
    <td><table width="100%" border="0" cellpadding="0">
        <tr> 
          <td width="50%" class="stil2"><div align="center">Anket Sonuçlarý 
              <hr size="0">
            </div></td>
          <td width="50%" class="stil2"><div align="center">Diðer Anketler 
              <hr size="0">
            </div></td>
        </tr>
        <tr> 
          <td valign="top">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td class="stil2">Soru: <%=sonuc_soru("soru")%> ?</td>
              </tr>
              <tr> 
                <td valign="top" class="stil2">Seçenekler:<br> 
                  <%if sonuc_secenek.eof or sonuc_secenek.bof then
	  					Response.write("Hiç Seçenek Eklenmemiþ")
	  				else
	  
do while not sonuc_secenek.eof%>
                  <table width="100%" border="0" cellpadding="0">
                    <tr> 
                      <form name="form" method="post" action="aisle.asp?bolum=hit_degistir&id=<%=sonuc_secenek("id")%>">
                        <td width="100%" class="stil1"> &raquo; <%=sonuc_secenek("secenek")%> 
                        </td>
                        <td><input name="hit" type="text" size="2" class="text_field" value="<%=sonuc_secenek("hit")%>">
                        </td>
                        <td class="stil2"> <div align="left">Kiþi&nbsp;&nbsp;&nbsp;</div></td>
                        <td> <input type="submit" name="Submit" value="Deðiþtir" class="button"> 
                        </td>
                      </form>
                    </tr>
                  </table>
                  <%
sonuc_secenek.movenext 
loop
if sonuc_diger.eof or sonuc_diger.bof then
else
Response.write("Diðer Seçenekler<br>")

      do while not sonuc_diger.eof%>
                  <span class="stil1">&nbsp;</span> <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td width="95%"><span class="stil1">&raquo;&nbsp;<%=sonuc_diger("secenek")%><br>
                        </span></td>
                      <form action="aisle.asp?bolum=sec_diger_sil&id=<%=sonuc_diger("id")%>" method="post">
                        <td width="5%"> <div align="right"> 
                            <input type="submit" name="Submit" value="Sil" class="button">
                          </div></td>
                      </form>
                    </tr>
                  </table>
                  <%sonuc_diger.movenext
					loop
					end if
      end if%>
                </td>
              </tr>
            </table></td>
		
          <td valign="top"> 
            <%do while not diger_anketler.eof%>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
			  <form action="aisle.asp?bolum=anket_sil" method="post"> 
                <td width="200" valign="top" class="stil1"><%=diger_anketler("soru")%></td>
                
                  <td width="1" valign="top" class="stil1"> <input type="hidden" name="id" value="<%=diger_anketler("id")%>">
                    <input name="Sil" type="submit" value="Sil" class="button"> 
                  </td>
                  <td width="1" class="stil1"><a href="default.asp?anket=<%=diger_anketler("id")%>">[Göster]</a> 
                  </td>
              </form>
              </tr>
            </table>
            <hr size="0"> 
            <%
diger_anketler.movenext 
loop%>
          </td>
		  
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td><table width="100%" border="0" cellpadding="0">
        <tr> 
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td><table width="100%" border="0" cellpadding="0">
        <tr> 
          <td colspan="2" class="stil2"> <hr align="center" size="0"> <div align="center">Aktif 
              Anket Seç</div>
            <hr align="center" size="0"> </td>
        </tr>
        <tr> 
          <form name="form" method="post" action="aisle.asp?bolum=aktif_sec">
            <td class="stil1"> <select name="aktif_sec" class="text_field">
                <%if aktif_sec.eof or aktif_sec.bof then
                else
                Do While not aktif_sec.Eof %>
                <option value="<%=aktif_sec("id")%>" ><%=aktif_sec("soru")%></option>
                <% aktif_sec.Movenext
Loop
                end if%>
              </select> <br>
              ? Anket sayfasýnda gösterilecek olan anketi seçin.</td>
            <td width="1"> <div align="right"> 
                <input type="submit" name="Submit2" value="Ok" class="button">
              </div></td>
          </form>
        </tr>
      </table></td>
  </tr>
 
  <tr> 
    <td><table width="100%" border="0" cellpadding="0">
        <tr> 
          <td colspan="3" class="stil2"> <hr align="center" size="0"> <div align="center">Secenek 
              Ekle </div>
            <hr align="center" size="0"></td>
        </tr>
        <tr> 
          <form name="form" method="post" action="aisle.asp?bolum=secenek_ekle">
            <td class="stil1"> <input type="text" name="secenek" class="text_field"> 
              <br>
              ? Seceneði buraya yazdýktan sonra yandaki bölümden seceneðin hangi 
              anket soruuna ait olacagýný belirleyin.</td>
            <td width="1"> <select name="secenek_soru" class="text_field">
                <%if secenek_soru.eof or secenek_soru.bof then
                else
                Do While not secenek_soru.Eof %>
                <option value="<%=secenek_soru("id")%>" ><%=secenek_soru("soru")%></option>
                <% secenek_soru.Movenext
Loop
                end if%>
              </select> </td>
            <td width="1"> <div align="right"> 
                <input type="submit" name="Submit222" value="Ok" class="button">
              </div></td>
          </form>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td><table width="100%" border="0" cellpadding="0">
        <tr> 
          <td class="stil2"><hr align="center" size="0"> 
            <div align="center">Anket Ýsmi Deðiþtir</div>
            <hr align="center" size="0"></td>
        </tr>
        <tr> 
		<form name="form" method="post" action="aisle.asp?bolum=isim_ayarla">
          <td class="stil3">
              <input type="text" name="anket_adi" class="text_field" value="<%=ayar("anket_adi")%>">
              <input type="submit" name="Submit3" value="Ayarla" class="button">
              <br>
              !!! Soru ekle bölümüyle karýþtýrmayýn. Bu bölümde anket scriptinin 
              ismini deiþtirebilirsiniz. Ýslamnuru.com Anket v.1.0 yazan yere 
              burdan baþka bir isim verebilirsiniz. </td>
		</form>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td><table width="100%" border="0" cellpadding="0">
        <tr> 
          <td class="stil2"><hr align="center" size="0"> <div align="center">Cookie 
              Geçerlilik Tarihi </div>
            <hr align="center" size="0"></td>
        </tr>
        <tr class="stil3"> 
		<form name="form" method="post" action="aisle.asp?bolum=cookie_ayar">
          <td>
              <input type="text" name="skt" class="text_field" value="Þimdiki (<%=ayar("skt")%>)">
              <input type="submit" name="Submit4" value="Ayarla" class="button">
              <br>
              (Dikkat! Yazacaðýnýz Deðer Gün Cinsindendir.) Bu bölümde anketinize 
              kiþilerin kaç gün ara ile oy vereceklerini belirlersiniz. örneðin 
              10 yazarsanýz oy kullanan kiþi 10 gün sonra tekrar oy kullanabilir. 
            </td>
		</form>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td><table width="100%" border="0" cellpadding="0">
        <tr> 
          <td class="stil2"><hr align="center" size="0"> <div align="center">IP 
              Geçerlilik Tarihi </div>
            <hr align="center" size="0"></td>
        </tr>
        <tr> 
		<form action="aisle.asp?bolum=ip_ayar" method="post">
          <td class="stil3"><span class="stil1">Ankette bulunan ip ile güvenliðin derecesini 
            seçebilirsiniz. Yazacaðýnýz deðer dakika cinsindendir. Eðer oy kullanan 
            cookieyi silmiþ ise, seçeceðiniz dakika içinde ayný ip ye sahip kiþi 
            bir daha oy kullanamaz.</span><br>
            Dakika: 
            <input name="ip_sure" type="text" size="5" class="text_field" value="<%=ayar("ip_sure")%>"> 
            <input type="submit" name="Submit9" value="Deðiþtir" class="button">
			</td>
		</form>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td><table width="100%" border="0" cellpadding="0">
        <tr> 
          <td colspan="3" class="stil2"><hr align="center" size="0"> <div align="center">Diðer 
              Ayarlar </div>
            <hr align="center" size="0"></td>
        </tr>
        <tr> 
          <td colspan="2" rowspan="2" class="stil2"><div align="center">Sonuçlar </div>            <hr align="center" size="0">            <div align="center">Anket Sayfasýnda ziyaretçiler oy 
              kullanmadan sonuçlarý görebilsinlermi? 
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <form action="aisle.asp?bolum=sonuc_op&sec=var" method="post">
                    <td><div align="center"> 
<input type="submit" name="Submit103" value="Evet" class="button">
                      </div></td>
                  </form>
                </tr>
                <tr> 
                  <form action="aisle.asp?bolum=sonuc_op&sec=yok" method="post">
                    <td><div align="center"> 
<input type="submit" name="Submit1022" value="hayýr" class="button">
                      </div></td>
                  </form>
                </tr>
              </table>
          </div></td>
          <td width="52%" class="stil2"><div align="center">Eski Anketler </div>
            <hr align="center" size="0"></td>
        </tr>
        <tr> 
          <td valign="top" class="stil3"><div align="center">Anket Sayfasýnda ziyaretçiler eski 
              anketlere bakabilsinlermi? 
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <form action="aisle.asp?bolum=eski_op&sec=var" method="post">
                    <td><div align="center"> 
<input type="submit" name="Submit104" value="Evet" class="button">
                      </div></td>
                  </form>
                </tr>
                <tr> 
                  <form action="aisle.asp?bolum=eski_op&sec=yok" method="post">
                    <td><div align="center"> 
<input type="submit" name="Submit1023" value="hayýr" class="button">
                      </div></td>
                  </form>
                </tr>
              </table>
            </div></td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td><div align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><strong>Telif Hakký M.Metin ' e Aittir. </strong></font></div></td>
  </tr>
</table>
</body>
</html>
