<% @ Language=VBScript %>
<% Option Explicit %>
<!-- #include file="ayar.asp" -->
<%
id = Request.QueryString("id")
islem = Request.Querystring("islem")
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="tr"><head>
<link href="dosyalar/default_style.css" rel="stylesheet" type="text/css">
<META http-equiv=Content-Type content="text/html; charset=windows-1254">
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<%
response.Write "<!--"&vbcrlf&_
"AyyildizSoFT Ziyaretçi Defteri 2007 - 2008"&vbcrlf&_
"Bu script ASP ve Access Kullanılarak Hazırlanmıştır"&vbcrlf&_
"-->"
%>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
<title><%=site_ismi%> - Oku</title></head><body>
<%
if request.QueryString("islemx") = "cikis" then
session.Abandon()
response.Redirect(zdefter_oku)
end if
if session("sesiyada_ziyaretci_defteri") = "admin" and request.QueryString("sessionid")=Session.SessionID then
%>
<%
if isnumeric(id) = True Then
set sesiyada_ziyaretci_defteri = server.createobject("adodb.recordset")
sesiyada_ziyaretci_defteri.open "select * from zdefter where id="&id&"",vt,1,3 
if sesiyada_ziyaretci_defteri.eof or sesiyada_ziyaretci_defteri.bof then
response.Write("s")
end if
if islem = "onayla" then
sesiyada_ziyaretci_defteri("onay") = "1"
sesiyada_ziyaretci_defteri.Update
Response.redirect "defter_yonetimi.asp"
elseif islem = "onayikaldir" then
sesiyada_ziyaretci_defteri("onay") = "0"
sesiyada_ziyaretci_defteri.Update
response.redirect "defter_yonetimi.asp"
elseif islem = "sil" then
set defter_islem = server.createobject("adodb.recordset")
defter_islem.open "Delete * from zdefter where id="&id&"",vt,1,3 
response.redirect "defter_yonetimi.asp"
else

session.Abandon()
response.Redirect("defter_yonetimi.asp")
end if
end if

else 

session.Abandon()
response.Redirect("defter_yonetimi.asp")
		%>

<% end if %>

</body></html>


