<%
otomatik_onay = false 
zdefter_oku = "defter_oku.asp" 
zdefter_yaz = "defter_yaz.asp" 
defter_mesaj_kaydet = "defter_mesaj_kaydet.asp"'kayit isleminin gerceklestigi sayfa
bir_sayfada_gosterilecek_mesaj_sayisi = 15
yonetici_sifresi = "Takva357adminTakva"
sozlesme_metni_sayfasi = "sozlesme_metni.txt" 'sozleme metni yolu

db_name = "yeLDfRCdADGjh_MnJoA_HXXXqwEGhBB.mdb" ' veritabani yolu


db_sorgu = "provider=microsoft.jet.oledb.4.0;data source="&Server.MapPath(""&db_name&"")&";"
set vt = server.createobject("adodb.connection")
vt.open db_sorgu

Dim url
Dim db_name
Dim db_sorgu
Dim vt
Dim otomatik_onay
Dim sesiyada_ziyaretci_defteri
Dim sf
Dim sayfa
Dim i
Dim y
Dim site_ismi
Dim zdefter_oku
Dim zdefter_yaz
Dim guvenlik_kodun
Dim bir_sayfada_gosterilecek_mesaj_sayisi
Dim yonetici_sifresi
Dim defter_mesaj_kaydet
Dim guvenlik_kodu
Dim isim
Dim soyisim
Dim www
Dim msn
Dim email
Dim baslik
Dim mesaj
Dim sonuc
Dim kayit_set
Dim onay
Dim emg
Dim emg2
Dim ip
Dim tarih
Dim sozlesme_metni_sayfasi
Dim ilk
Dim son
Dim gmetin1
Dim gmetin
Dim id
Dim islem
Dim defter_islem
function genel (vr)
	If vr = "" Then Exit Function	
	vr = Replace (vr ,"<","&lt;",1,-1,1)
	vr = Replace (vr ,">","&gt;",1,-1,1)
	genel = vr	
end function

function mesaj_ (gln)
	If gln = "" Then Exit Function	
	'araclar
	gln = Replace (gln ,"<","&lt;",1,-1,1)
	gln = Replace (gln ,">","&gt;",1,-1,1)
	gln = Replace (gln ,"[br]","<br>",1,-1,1)
	gln = Replace (gln ,"[u]","<u>",1,-1,1)
	gln = Replace (gln ,"[/u]","</u>",1,-1,1)
		gln = Replace (gln ,"[center]","<center>",1,-1,1)
	gln = Replace (gln ,"[/center]","</center>",1,-1,1)
		gln = Replace (gln ,"[img]","<img  src=""",1,-1,1)
	gln = Replace (gln ,"[/img]",""" border=""0"">",1,-1,1)
		gln = Replace (gln ,"[i]","<i>",1,-1,1)
	gln = Replace (gln ,"[/i]","</i>",1,-1,1)
		gln = Replace (gln ,"[b]","<b>",1,-1,1)
	gln = Replace (gln ,"[/b]","</b>",1,-1,1)
do while InStr(1, gln, "[URL]", 1) > 0 and InStr(1, gln, "[/URL]", 1) > 0
ilk = InStr(1, gln, "[URL]", 1)
son = InStr(ilk, gln, "[/URL]", 1) + 6
if son < ilk then son = ilk + 6
gmetin1 = trim(mid(gln, ilk, (son - ilk)))
gmetin = gmetin1
gmetin = replace(gmetin, "[URL]", "", 1, -1, 1)
gmetin = replace(gmetin, "[/URL]", "", 1, -1, 1)
gmetin = "<a href=""" & gmetin & """ target=""_blank"">" & gmetin & "</a>"
gln = replace(gln, gmetin1, gmetin, 1, -1, 1)
loop
	'Smiley
gln = Replace (gln ,"|grin|","<img src=""dosyalar/smiley/grin.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|happy|","<img src=""dosyalar/smiley/happy.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|heh|","<img src=""dosyalar/smiley/heh.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|hehe|","<img src=""dosyalar/smiley/hehe.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|letter|","<img src=""dosyalar/smiley/letter.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|lol|","<img src=""dosyalar/smiley/lol.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|no|","<img src=""dosyalar/smiley/no.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|pinch|","<img src=""dosyalar/smiley/pinch.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|plain|","<img src=""dosyalar/smiley/plain.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|quite|","<img src=""dosyalar/smiley/quite.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|sad|","<img src=""dosyalar/smiley/sad.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|satisfied|","<img src=""dosyalar/smiley/satisfied.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|shock|","<img src=""dosyalar/smiley/shock.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|toungue|","<img src=""dosyalar/smiley/toungue.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|twitch|","<img src=""dosyalar/smiley/twitch.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|weeb1|","<img src=""dosyalar/smiley/weeb1.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|wink|","<img src=""dosyalar/smiley/wink.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|wow|","<img src=""dosyalar/smiley/wow.gif"" border=""0"">",1,-1,1)
gln = Replace (gln ,"|yes|","<img src=""dosyalar/smiley/yes.gif"" border=""0"">",1,-1,1)

	mesaj_ = gln	
end function
%>
