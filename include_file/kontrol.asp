<%
Set site_ayar=Server.CreateObject("ADODB.RecordSet")
sql="select * from site_ayar"
site_ayar.open sql,baglanti,1,3
%>
<%
if not site_ayar("site_ac")=1 then
%>
<!--#include file="../kapali.asp"-->
<%response.End()%>
<%
else
%>