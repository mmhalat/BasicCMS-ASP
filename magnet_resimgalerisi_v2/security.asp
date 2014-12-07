
<%

Dim pass
pass = "admin"  ' Burasý Þifremizi Olduðu Alan !

if session("sifrecik") <> pass then

if Request.form("sifrecik") <> pass then

call parolashf
else
session("sifrecik") = pass
end if
end if
%>
<%
'##########################################################################################
%>
<%
Sub parolashf
goster = "http://" & Request.ServerVariables("HTTP_HOST") & Request.ServerVariables("URL")
%>
<%
'##########################################################################################
%>
<head>

<link rel="stylesheet" type="text/css" href="stil.css">

<title></title>
</head>

<p align="center"><font face="Tahoma"><b><font style="font-size: 8pt">Lütfen yönetici þifrenizi giriniz</font></b><font style="font-size: 8pt">
</font>
</font>
<form method=post action="<%=goster%>">
<p align="center"><font face="Verdana" size="1">
<input type="password" name="sifrecik" value="" size="20" style="background-color: #FBFBFB; font-family: Tahoma; font-size: 8pt; border: 1px ridge #525454; "></font><font size="1">
</font>
<font size="1">&nbsp;<input type="submit" value="Gir !" style="background-color: #F7F7F7; font-family: Tahoma; font-size: 8pt; border: 1px outset #525454; ">
</font>
</form>
<p align="center">
<font size="1">&nbsp; </font>
        <p align="center"><font style="font-size: 8pt" face="Tahoma">Copyright © 
        2005 Magnet <br>
</font></p>

<%
Response.end
End sub
%>