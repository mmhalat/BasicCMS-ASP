<%
if Not IsNumeric(REQUEST.QUERYSTRING("id" ) ) THEN
response.write "<center>Girdi�iniz id Numaras� ge�ersizdir<br>L�tfen Ge�erli bir id numaras� girin</center>"
response.end
end if
%> 
<%
id=Request.QueryString("id")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from download WHERE id=" & id & ""
yeniasp.Open sor,baglanti,1,3

islem=Request.QueryString("islem")
if islem="indir" then
call indir
end if

git = Request.QueryString("git")
if git="" then 
git=1
end if
%>