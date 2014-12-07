<!--#include file="sifre.asp"-->
<!--#include file="uye_inc.asp" -->
<%
id = Request.QueryString("id")
IF Not IsNumeric(REQUEST.QUERYSTRING("id")) THEN
Response.Redirect "index.asp"
Response.End
END IF

Set rs = Server.CreateObject("ADODB.Recordset")
sql = "DELETE From uyeler Where Kimlik="& id
rs.open sql,Baglanti,1,3

Response.Write("Sectigin Uye silindi Ama Kafana gore silme Sakin..")
%>