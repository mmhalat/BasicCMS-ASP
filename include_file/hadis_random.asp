<%
Private Function geneltarih(veri) 
IF isdate(veri) Then 
geneltarih = month(veri) &"/"& day(veri) &"/"& year(veri) 
Else 
geneltarih = veri 
End IF 
End Function 
set ks = server.createobject("adodb.recordset")
sql = "select hadis_icerik from hadisler where tarih=#" & tarih_formatla(date()) & "#;"
ks.open sql, baglanti, 1, 3
if not ks.eof then
response.write ks("hadis_icerik")
else
set ks1 = server.createobject("adodb.recordset")
sql = "select hadis_icerik, tarih from hadisler;"
ks1.open sql, baglanti, 1, 3
if not ks1.eof then
tks = ks1.recordcount
randomize
id = int((tks * rnd) + 1)
ks1.move(id)
ks1("tarih") = date()
ks1.update
response.write ks1("hadis_icerik")
end if
ks1.close
set ks1 = nothing
end if
ks.close
set ks = nothing
%>