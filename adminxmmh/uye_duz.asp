<!--#include file="sifre.asp"-->
<!--#include file="uye_inc.asp" -->
<!--#include file="../include_file/fonksiyon.asp" -->
<%
Set rs = Server.CreateObject("ADODB.Recordset")
uid = Request.QueryString("id")
sql = "Select * from uyeler WHERE Kimlik="& uid
rs.open sql,Baglanti,1,3

IF Request.QueryString("@")="ok" Then
kulladi = veri(Request.Form("kulladi"))
ad = veri(Request.Form("ad"))
soyad = veri(Request.Form("soyad"))
sifre = veri(Request.Form("sifre"))
mail = veri(Request.Form("mail"))
imza = veri(Request.Form("imza"))


IF ad="" OR soyad="" OR sifre="" OR mail="" Then
Response.Write "<script>alert('Formda Eksiklikler Var?');</script>"
Response.Write "Islem (uyeik) Basariyla Tamamlandi..."
Else

rs("ad") = ad
rs("soyad") = soyad
rs("kulladi") = kulladi
rs("sifre")= sifre
rs("mail") = mail
rs("imza") = imza
rs.Update
Response.Write "<script>alert('Üye Bilgileri Baþarýyla Güncellendi.');</script>"
Response.Write "Islem (uyeik) Basariyla Tamamlandi..."
End IF
End IF
%>
     
<style>
<!--
.form1       { color: #000000; background-color: #F0F0F0; font-family: Tahoma; font-size: 8pt; border: 1 solid #525454" }
-->
</style>
<center>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#3F3F3F" width="30%" height="29">
              <tr>
                <td width="100%" height="24" bgcolor="#3F3F3F">
                <font face="Tahoma" style="font-size: 8pt" color="#C0C0C0">&nbsp;<b>»</b>&nbsp;<b>Üye Düzenle</b></font>
	</td>
              </tr>
              <tr>
                <td width="100%" height="24" colspan="3">
                  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber6" height="60">
                    <tr>
<form action="uye_duz.asp?@=ok&id=<%=uid%>" method="post">
<td width="100%" height="60">
       <table width="100%" border="0" cellspacing="1" cellpadding="3">
    <tr height="20" bgcolor="#121212">
     <td width="40%" align="center">&nbsp;</td>
     <td width="60%" align="center">&nbsp;</td>
    </tr>
<tr bgcolor="#343434">
<td><center><font face="Tahoma" style="font-size: 8pt" Color="#c0c0c0"><b>Nick</b></font></center></td>
<td><input size="35" type="text" name="kulladi" Value="<%=rs("kulladi")%>" class="form1"></td></tr>
    
<tr bgcolor="#343434">
<td><center><font face="Tahoma" style="font-size: 8pt" Color="#c0c0c0"><b>Ad</b></font></center></td>
<td><input size="35" type="text" name="ad" Value="<%=rs("ad")%>" class="form1"></td></tr>
    
<tr bgcolor="#343434">
<td><center><font face="Tahoma" style="font-size: 8pt" Color="#c0c0c0"><b>Soyad</b></font></center></td>
<td><input size="35" type="text" name="soyad" Value="<%=rs("soyad")%>"  class="form1"></td></tr>
    
<tr bgcolor="#343434">
<td><center><font face="Tahoma" style="font-size: 8pt" Color="#c0c0c0"><b>Þifre</b></font></center></td>
<td><input size="35" type="password" name="sifre" Value="<%=rs("sifre")%>"  class="form1"></td></tr>

<tr bgcolor="#343434">
<td><center><font face="Tahoma" style="font-size: 8pt" Color="#c0c0c0"><b>E-Mail</b></font></center></td>
<td><input size="35" type="text" name="mail" Value="<%=rs("mail")%>" class="form1"></td></tr>
    
<tr bgcolor="#343434">
<td><center>
  <font face="Tahoma" style="font-size: 8pt" Color="#c0c0c0"><b>&#304;mza</b></font>
</center></td>
<td><textarea rows="7"  cols="35" name="imza" class="form1"><%=rs("imza")%></textarea></td></tr>

<tr bgcolor="#343434">
<td>&nbsp;</td>
<td><input type="submit" Value="Güncelle" class="form1"></td></tr>
</table>
</td>
</form>
                    
</tr>
</table>
</td>
</tr>
</table>
</center>
