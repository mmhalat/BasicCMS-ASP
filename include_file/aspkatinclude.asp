<%
if Not IsNumeric(REQUEST.QUERYSTRING("kid" ) ) THEN
response.write "<center>Girdi�iniz id Numaras� ge�ersizdir<br>L�tfen Ge�erli bir id numaras� girin</center>"
response.end
end if
%> 
<%
kid=Request.QueryString("kid")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from download WHERE kid=" & kid & ""
yeniasp.Open sor,baglanti,1,3

kid=Request.QueryString("kid")

script_adi=Request.QueryString("script_adi")
Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from download WHERE onay=true and kid=" & kid & ""
yeniasp.Open sor,baglanti,1,3

islem=Request.QueryString("islem")
if islem="indir" then
call indir
end if

git = Request.QueryString("git")
if git="" then 
git=1
else
git = CInt(Request.QueryString("git"))
end if
%>