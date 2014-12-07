<% IF Not session("giris")="tamam" Then %>
<style type="text/css">
<!--
.style1 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style2 {font-weight: bold}
.style3 {font-size: 10px}
.style4 {font-size: 9px}
.style5 {color: #000000}
-->
</style>
<form action="kayit_giris.asp" method="post">
  <table width="204" height="129" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000">
        <tr>
          <td colspan="4"><span class="style6 style26"><img src="images/kull_girisi.gif" width="198" height="31"></span></td>
    </tr>
        <tr align="left">
          <td width="75"><span class="style26">&nbsp;&nbsp;Kulladi</span></td>
          <td width="4"><span class="style26">:</span></td>
          <td colspan="2"><input name="kulladi" type="text"  size="14" ></td>
        </tr>
        <tr align="left">
          <td><span class="style26">&nbsp;&nbsp;Þifre</span></td>
          <td><span class="style26">:</span></td>
          <td colspan="2"><input name="sifre" type="password" class="style6 " size="13"></td>
        </tr>
        <tr align="left">
          <td height="23"><input name=imageField type=image src="images/buton_gonder_01.jpg" align="left" width="75"border=0></td>
          <td>&nbsp;</td>
          <td width="93"><span class="style26">Beni Hatirla</span></td>
          <td width="30"><input name="checkbox" type="checkbox" value="5" ></td>
        </tr>
        <tr align="left">
          <td>&nbsp;&nbsp;<a href="uye_ol.asp" class="style26">Uye Ol</a></td>
          <td>&nbsp;</td>
          <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<a href="sifremi_unuttum.asp" class="style26">Þifre Hatýrlat</a></td>
        </tr>
  </table>
</form><br><%else%>
	  <table width="203" border="0" cellspacing="0" cellpadding="0">

        <tr>
          <td width="203"><img src="images/panel.gif" height="31"></td>
        </tr>
        <tr>
          <td><div align="center" class="style26">Hosgeldiniz Sayýn,
              <span class="style24"><em><%=session("kulladi")%>
                </em> </span></div></td>
        </tr>
        <tr>
          <td align="left"><a href="uye_duzenle.asp" class="style26"><img border="0" src="images/bullet04.gif"> Profilim</a></td>
        </tr>
        <tr>
          <td align="left"><a href="Forum" class="style26"><img border="0" src="images/bullet04.gif"> Forum</a></td>
        </tr>
        <tr>
          <td align="left"><a href="om.asp" class="style26"><img border="0" src="images/bullet04.gif"> Özel Mesajlar</a></td>
        </tr>
        <tr>
          <td align="left"><a href="uyeler.asp" class="style26"><img border="0" src="images/bullet04.gif"> Üyeler </a></td>
        </tr>
        <tr>
          <td align="left"><a href="download.asp" class="style26"><img border="0" src="images/bullet04.gif"> Download</a></td>
        </tr>
        <tr>
          <td align="left"><a href="ziyaretci_defteri" class="style26"><img border="0" src="images/bullet04.gif"> Ziyaretçi Defteri </a></td>
        </tr>
        <tr>
          <td align="left"><a href="bilgi_bankasi.asp" class="style26"><img border="0" src="images/bullet04.gif"> Bilgi Bankasi </a></td>
        </tr>
        <tr>
          <td align="left"><a href="video_mp3.asp" class="style26"><img border="0" src="images/bullet04.gif"> Video Ve Mp3ler</a></td>
        </tr>
        <tr>
          <td align="left"><a href="sistem_cikis.asp" class="style26"><img border="0" src="images/bullet04.gif"> Sistemden Çik </a></td>
        </tr>
      </table>
	  <%end if%><br>
	  	   <br>
	  <table width="203" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="203"><img src="images/anket.gif" width="198" height="31"></td>
        </tr>
        <tr>
          <td height="117"><!--#include file="include_file/anket.asp"-->
		  </td>
        </tr>
      </table><br>
	  <table border="0" cellpadding="0" cellspacing="1" width="202">
            <tr>
              <td width="200" height="10" colspan="2">
                <img src="images/son_5.gif" width="198" height="31"></td>
        </tr>
            <tr>
			<%
Set downmetin = Server.CreateObject("ADODB.Recordset")
sor = "Select * from download WHERE onay=true order by id desc"
downmetin.Open sor,baglanti,1,3

for i = 1 to 5
if downmetin.eof then exit for
%>
              <center><td colspan="2">
              <div align="center"></div>              
              <span class="style5 style3 style1"><strong><font title="<%=downmetin("tanim")%>"><a href="down.asp?id=<%=downmetin("id")%>"><%=downmetin("script_adi")%>&nbsp;<%=downmetin("versiyon")%></a></font>
              (<%=downmetin("hit")%>)
              </strong></span>              <div align="center"></div></td></center>
            </tr>
			 <tr>
			 <td><img src="images/cizgi.gif" width="199" height="1"></td>
			 </tr>
<%
downmetin.movenext
Next
downmetin.close
set downmetin = Nothing
%>
</table><br>
	  <table width="199" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="199"><span class="style6"><img src="images/gunun_hadisi.gif" width="198" height="31"></span></td>
        </tr>
        <tr>
          <td height="59"><div align="center" class="style26">
                <!--#include file="include_file/hadis_random.asp"-->
                </div></td>
        </tr>
      </table><br>
	  <table width="199" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="199"><span class="style10"><img src="images/gunun_ayeti.gif" width="198" height="31"></span></td>
        </tr>
        <tr>
          <td height="65"> <div align="center" class="style26">
                <!--#include file="include_file/ayet_random.asp"-->
          </div></td>
        </tr>
      </table><br>
	  

	  <table width="198" border="0" cellspacing="0" cellpadding="0">		 
	  
	  <%set rsd = server.createobject("adodb.recordset")
		sql = "select * from ayin_kampanyasi;"
		rsd.open sql, baglanti, 1, 3%>

        <tr>
          <td width="198"><img src="images/kampanya.gif" width="198" height="31"></td>
        </tr>
        <tr>
          <td height="85"><div align="center"><span class="style24">&quot;</span> <span class="style26"><%= rsd("kampanya") %> <span class="style24"></span></span><span class="style24">&quot;</span></div></td>
        </tr>
   	  <%
	  rsd.close
	  set rsd=nothing
	  
	  %></table><br>
	  <table width="198" border="0" cellspacing="0" cellpadding="0">		 
	  
	  <%set rsd = server.createobject("adodb.recordset")
		sql = "select * from ayin_kampanyasi;"
		rsd.open sql, baglanti, 1, 3
		set destek = server.createobject("adodb.recordset")
		sql = "select * from destekleyenler;"
		destek.open sql, baglanti, 1, 3%>

        <tr>
          <td width="198"><img src="images/destekleyenler.gif" width="198" height="31"></td>
        </tr>
        <tr>
          <td height="85"> <div align="center" class="style1 style4"><strong><%=destek("link")%> </strong></div></td>
        </tr>
   	  <%
	  rsd.close
	  set rsd=nothing
	  destek.close
	  set destek=nothing
	  
	  %></table>