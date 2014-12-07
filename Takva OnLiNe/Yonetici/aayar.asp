<%
DIM Sifre
Sifre = "admin" '''''''''''''''''''''' Sifre Burda Yaziyor

Set AnketBag = Server.CreateObject("ADODB.Connection")
AnketBag.Open "DRIVER={Microsoft Access Driver (*.mdb)};DBQ=" & Server.MapPath("../XlhGyAeRT_GfDsZrTyUoHlK_ggggggg_ZekFGyH/anket5d4sa65d4as654das20101001101110.mdb")

set ayar = Server.CreateObject("ADODB.RecordSet")
SQL = "select * from ayarlar"
ayar.open SQL,anketbag,1,3

set aktif = Server.CreateObject("ADODB.RecordSet")
SQL = "select * from aktif_anket"
aktif.open SQL,anketbag,1,3
aktif_id=aktif("id")
%>