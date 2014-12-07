<!-- #include file="aayar.asp" -->
<%bolum=request.QueryString("bolum")
if bolum="hit_degistir" then
	set secenek = Server.CreateObject("ADODB.RecordSet")
	SQL = "select * from secenekler where id="&request.querystring("id")&""
	secenek.open SQL,anketbag,1,3
	secenek("hit")=request.Form("hit")
	secenek.update
elseif bolum="anket_sil" then
	if request.Form("id")=""&aktif_id&"" then
		'Aktif Olan Anket Silinemez
	else
		set anket_sil = Server.CreateObject("ADODB.RecordSet")
		SQL = "delete * from sorular where id="&request.form("id")&""
		anket_sil.open SQL,anketbag,1,3
	end if
elseif bolum="sec_diger_sil" then
	set sec_diger_sil = Server.CreateObject("ADODB.RecordSet")
	SQL = "delete * from secenekler where id="&request.querystring("id")&""
	sec_diger_sil.open SQL,anketbag,1,3
elseif bolum="tasarim" then
	ayar("stil1")=request.form("stil1")
	ayar("stil2")=request.form("stil2")
	ayar("stil3")=request.form("stil3")
	ayar("link")=request.form("link")
	ayar("bg")=request.form("bg")
	ayar("bar")=request.form("bar")
	ayar.update
elseif bolum="yorum_sil" then
	set yorum_sil = Server.CreateObject("ADODB.RecordSet")
	SQL = "delete * from yorumlar where id="&request.form("id")&""
	yorum_sil.open SQL,anketbag,1,3
elseif bolum="yorum_ekle" then
	set yorum_ekle = Server.CreateObject("ADODB.RecordSet")
	SQL = "select * from yorumlar"
	yorum_ekle.open SQL,anketbag,1,3
	yorum_ekle.addnew
	yorum_ekle("yorum")=request.form("yorum")
	yorum_ekle("hangi_soru")=aktif_id
	yorum_ekle.update
elseif bolum="aktif_sec" then
	set aktif_sec = Server.CreateObject("ADODB.RecordSet")
	SQL = "select * from aktif_anket"
	aktif_sec.open SQL,anketbag,1,3
	aktif_sec("id")=request.form("aktif_sec")
	aktif_sec.update
elseif bolum="soru_ekle" then
	set soru_ekle = Server.CreateObject("ADODB.RecordSet")
	SQL = "select * from sorular"
	soru_ekle.open SQL,anketbag,1,3
	soru_ekle.addnew
	soru_ekle("soru")=request.form("soru")
	soru_ekle("tarih")=date
	if not request.form("diger")="" then
		soru_ekle("diger")="var"
		soru_ekle.update
	else
		soru_ekle("diger")="yok"
		soru_ekle.update
	end if
	if not request.Form("aktifmi")="" then
		set son_kayit = Server.CreateObject("ADODB.RecordSet")
		SQL = "select * from sorular order by id DESC"
		son_kayit.open SQL,anketbag,1,3
		aktif("id")=son_kayit("id")
		aktif.update
	end if
elseif bolum="secenek_ekle" then
	set secenek_ekle = Server.CreateObject("ADODB.RecordSet")
	SQL = "select * from secenekler"
	secenek_ekle.open SQL,anketbag,1,3
	secenek_ekle.addnew
	secenek_ekle("secenek")=request.form("secenek")
	secenek_ekle("hangi_soru")=request.Form("secenek_soru")
	secenek_ekle.update
elseif bolum="isim_ayarla" then
	ayar("anket_adi")=request.Form("anket_adi")
	ayar.update
elseif bolum="cookie_ayar" then
	ayar("skt")=request.Form("skt")
	ayar.update
elseif bolum="ip_ayar" then
	ayar("ip_sure")=request.Form("ip_sure")
	ayar.update
elseif bolum="yorum_op" then
	ayar("yorum")=request.querystring("sec")
	ayar.update
elseif bolum="sonuc_op" then
	ayar("sonuc")=request.querystring("sec")
	ayar.update
elseif bolum="eski_op" then
	ayar("eskiler")=request.querystring("sec")
	ayar.update
end if
response.Redirect("default.asp")%>
