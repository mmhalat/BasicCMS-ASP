<%Set yeniasp = Server.CreateObject("ADODB.Recordset")
sor = "Select * from kategori ORDER BY ilk_harf"
yeniasp.Open sor,baglanti,1,3
cats=yeniasp.recordcount
%>
<%
function scripts(categoryid)
set say = server.createobject("ADODB.recordset")
sql = "select * from download where kid=" & categoryid & ""
say.open sql, baglanti, 1, 3
scripts = say.recordcount
end function
%>