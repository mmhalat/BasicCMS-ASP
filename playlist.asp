<?xml version="1.0" encoding="utf-8"?>
<%
Response.Buffer = True
Response.ContentType = "text/xml"
%>
<playlist version="1" xmlns="http://xspf.org/ns/0/">
	<trackList>
<%
sql = "SELECT * FROM video Where durum=1 ORDER BY id DESC"
Set video = Server.CreateObject("ADODB.Recordset")
video.Open sql, baglanti, 1, 3 %>
<% Do While Not video.EOF %>
		<track>
			<title><%=video("title")%></title>
			<creator><%=video("creator")%></creator>
			<location><%=video("location")%></location>
			<info><%=video("info")%></info>
		</track>
<%
video.movenext
loop
%>
	</trackList>
</playlist>