<%
function tarih_formatla(gelen)
tarih_formatla = year(gelen) & "/" & month(gelen) & "/" & day(gelen)
end function
set xs = server.createobject("adodb.recordset")
sql = "select ayet_icerik from ayetler where tarih=#" & tarih_formatla(date()) & "#;"
xs.open sql, baglanti, 1, 3
if not xs.eof then
response.write xs("ayet_icerik")
else
set ks1x = server.createobject("adodb.recordset")
sql = "select ayet_icerik, tarih from ayetler;"
ks1x.open sql, baglanti, 1, 3
if not ks1x.eof then
tksx = ks1x.recordcount
randomize
id = int((tksx * rnd) + 1)
ks1x.move(id)
ks1x("tarih") = date()
ks1x.update
response.write ks1x("ayet_icerik")
end if
ks1x.close
set ks1x = nothing
end if
xs.close
set xs = nothing
%>