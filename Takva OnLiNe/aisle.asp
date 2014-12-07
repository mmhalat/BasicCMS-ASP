<!-- #include file="aayar.asp" -->
<%
islem=request.QueryString("islem")
if islem="cevap_isle" then
secenekal= Request.Form("secenekal")
	if secenekal="" then
		response.Write("Lütfen Boþ Oy Kullanmayýn")
	else
		if secenekal="diger" then
			set secenek = Server.CreateObject("ADODB.RecordSet")
			SQL = "select * from secenekler"
			secenek.open SQL,anketbag,1,3
			
			secenek.addnew
			secenek("hangi_soru")=aktif_id&"diger"
			secenek("secenek")=request.Form("diger_secenek")
			secenek.update
		else
			set secenek = Server.CreateObject("ADODB.RecordSet")
			SQL = "select * from secenekler where secenek like '"&secenekal&"'"
			secenek.open SQL,anketbag,1,3
			
			secenek("hit")=secenek("hit")+1
			secenek.update
		end if
		
		Set ip_kaydet = Server.CreateObject("Adodb.Recordset")
		SQL = "select * from iplog"
		ip_kaydet.Open SQL,anketbag, 1, 3
		
		ip_kaydet.addnew
		ip_kaydet("ip")=request.servervariables("REMOTE_HOST")
		ip_kaydet("tarih")=now()
		ip_kaydet("anket_no")=aktif_id
		ip_kaydet.update
	
		Response.Cookies("aspmaster_anket")("ayar(""anket_adi"")") = ""&aktif_id&" nolu anket"
    	Response.Cookies("aspmaster_anket").Expires = Now() + cstr(""&ayar("skt")&"")
		Response.Redirect(""&Request.ServerVariables("HTTP_REFERER")&"")
	end if
elseif islem="yorum_ekle" then
	set yorum_ekle = Server.CreateObject("ADODB.RecordSet")
	SQL = "select * from yorumlar"
	yorum_ekle.open SQL,anketbag,1,3
	yorum_ekle.addnew
	yorum_ekle("yorum")=request.form("yorum")
	yorum_ekle("hangi_soru")=aktif_id
	yorum_ekle.update
	
	response.Redirect(""&Request.ServerVariables("HTTP_REFERER")&"")
end if%>