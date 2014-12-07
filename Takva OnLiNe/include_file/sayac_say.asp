<% bugun="BUGUN"
Set rcx=server.createObject("ADODB.Recordset")
sor = "select*from sayac "
rcx.open sor,Baglanti,1,3

rcx.movefirst
if rcx("tarih") = date then
rcx.fields("ziyaret") = rcx.fields("ziyaret") + 1
saybugun=rcx("ziyaret")
else
rcx("tarih")=date
rcx("ziyaret") = 1
saybugun=1
end if
rcx.getrows(1)
rcx("tarih") = date
rcx("ziyaret") = rcx("ziyaret") + 1 
saytoplam=rcx("ziyaret")
rcx.update%>
<%
sure=1  
ip=Request.ServerVariables("REMOTE_ADDR")

Set ksetx = Server.Createobject("ADODB.Recordset")
sql = "SELECT * FROM online where ip='"& ip &"'"
ksetx.open sql, baglanti, 1, 3

ip = Request.ServerVariables("REMOTE_ADDR")

Set ksetx = Server.Createobject("ADODB.Recordset")
sql = "SELECT * FROM online where ip='"& ip &"'"
ksetx.open sql, baglanti, 1, 3

If ksetx.eof Then
ksetx.addnew
ksetx("ip")=ip
ksetx("tarih")=now
else
ksetx("tarih")=now
end if
ksetx.update
ksetx.Close
Set ksetx = Nothing
 
Set ksetx = Server.Createobject("ADODB.Recordset")
sql = "SELECT * FROM online"
ksetx.open sql, baglanti, 1, 3
Do While Not ksetx.eof 
zaman=datediff("n",ksetx("tarih"),now)
if zaman > sure then
sql = "DELETE FROM online WHERE  ip = '"&ksetx("ip")&"'"
Set sil = baglanti.execute(sql)
Set sil = Nothing
end if
ksetx.movenext
Loop
online = ksetx.RecordCount
ksetx.Close
Set ksetx = Nothing
%>