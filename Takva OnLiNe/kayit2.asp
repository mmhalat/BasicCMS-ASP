<!--#include file="include_file/sabit.asp"-->
<%
Response.buffer = true

baslik = ReQuesT.ForM("baslik")
mesaj = ReQuesT.ForM("mesaj")
gonderen_isim = ReQuesT.ForM("gonderen_isim")
gonderen_mail = ReQuesT.ForM("gonderen_mail")
alici_isim = ReQuesT.ForM("alici_isim")
alici_mail = ReQuesT.ForM("alici_mail")
middosyasi = ReQuesT.ForM("mid")

mesaj=left(mesaj,600)
mesaj=Replace(mesaj,vbCrLf,"<br>")

 ' veritaban�na bi ba�lansamda kaydetsem �u bayiyi nas�l olur, ho� olmaz m� :=)
	Set Kayit = server. CreateObject("ADODB.Recordset")
	Kayit.Open "kart", Baglanti, 1 , 3 

' Ah birde unutkanl�k olmasa ne g�sel olurdu dimi.
	if gonderen_mail ="" then 
		call uyari()
		response.end
	end if	
	if  alici_mail= "" Then
		call uyari()
		response.end
	end if

Kayit.AddNew 
Kayit("baslik") = baslik
Kayit("mesaj") = mesaj
Kayit("gonderen_isim") = gonderen_isim
Kayit("gonderen_mail") = gonderen_mail
Kayit("alici_isim") = alici_isim
Kayit("alici_mail") = alici_mail
Kayit("mid") = middosyasi

Kayit("kart")=session("kart")

Kayit.Update   
call mailat()
%>

<%sub uyari() %>
<%

%>
	<body bgcolor="#CCCCCC">
<br>
<br>
<br>
<br>
<br>
<table width="450" border="0" cellspacing="0" cellpadding="5" align="center" bordercolor="#CCCCCC" bgcolor="#000000">
  <tr>
    <td>
      <table width="450" border="0" cellspacing="2" cellpadding="5">
        <tr> 
          <td bgcolor="#FFF2CC"><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><br>
          <%response.write "L�tfen T�m Alanlari Eksiksiz Doldurunuz"%></font></td>
        </tr>
      
        <tr> 
          <td bgcolor="#FFF2CC"> 
            <div align="right"><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><br>
            Takva Online. <br>
              </font></div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<% end sub %>

<% sub mailat()

on error resume next
bizim_isim=gonderen_isim
bizim_adres="e-kart@takvaonline.com"
baslik=gonderen_isim & " size bir e-kart g�nderdi "
msg="Merhaba&nbsp;" & alici_isim
msg=msg  & vbCrLf
msg=msg  & gonderen_isim & "&nbsp;Size Bir E-Kart G�nderilmistir E-Kart ' a Bakmak I�in Asagidaki Linke Tiklayiniz."
msg=msg  & vbCrLf
msg=msg  & "<a href=""http://www.takvaonline.com/goster.asp?id="&kayit("id")&""" >" 
msg=msg  & " http://www.takvaonline.com/goster.asp?id=" & kayit("id")& " </a>"
msg=msg  & vbCrLf
msg=msg  & vbCrLf
msg=msg  & " WwW.TakVaOnLiNe.CoM"
response.write msg

Set Mail = Server.CreateObject("Persits.MailSender")
			adres=kayitseti("mail")
			Mail.FromName = bizim_isim
			Mail.From = bizim_adres
			Mail.Host = "mail.takvaonline.com"
			Mail.Subject = baslik
			Mail.Body = msg
			Mail.AddAddress adres
			 If err <> 0 Then 
hata = err.description
Response.Write "hatal�:" & hata
Else
tebrik = "           g�nderildi"
Response.Write tebrik
End If
			Mail.Send
			Set Mail = Nothing

end sub %>   
