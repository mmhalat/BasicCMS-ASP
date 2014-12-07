<!--#include file="sifre.asp"-->
<!--#include file="db.asp"-->
<table width="545" border="0" align="center" cellpadding="0" cellspacing="0">
<%
Set kayit=Server.CreateObject("ADODB.RecordSet")
sql="select * from a"
kayit.open sql,baglanti,1,3
%>

        <tr>
          <td height="36" colspan="2"><div align="center">Coded By AyyildizSOFT</div></td>
        </tr>
		<%
if kayit.recordcount<>0 then
topla=kayit.Recordcount 
shf = Request.QueryString("shf")
if shf="" then shf=1
%> 
          <%
yon=0
kayit.pagesize = 500
kayit.absolutepage = shf
sayfala = kayit.pagecount
for i=1 to kayit.pagesize
if kayit.eof then exit for
yon=yon+1
  %>
        <tr class="style26">
          <td height="2" colspan="2" align="left" valign="top"><img src="images/yatay.gif" width="542" height="1"></td>
        </tr>
        <tr class="style26">
          <td width="241" height="13" align="left" valign="top"><span class="style26 style24"><strong>Useer:<span class="style25"> <%= kayit("user") %></span></strong></span></td>
          <td width="304" align="left" valign="top"><span class="style26 style24"><strong>Pass:<span class="style25"> <%= kayit("pass") %></span></strong></span></td>
        </tr>
        <tr class="style26">
          <td colspan="2"><img src="images/yatay.gif" width="542" height="1"></td>
        </tr>
        <tr class="style26">
          <td height="4" colspan="2"><img src="images/yatay.gif" width="542" height="1"></td>
        </tr>
		<%
kayit.movenext
next
kayit.close
set kayit=nothing
%>

        <tr class="style26">
          <td height="16" colspan="2"><div align="center"></div></td>
        </tr>
      </table>
	        <p align="center">Sayfa: <span class="nav style2"> 
        <% 
per=0
for y=1 to sayfala 
per=per+1
%> 
        <% if shf*1<>per*1 then %> 
        <b><a href="default.asp?shf=<% =per %>"> 
          <% =per %> 
          </a></b> 
        <% else %> 
        <b> 
          <% =per %> 
        </b> 
        <% end if %> 
        <% next %> 
        <% end if %> 
              </span></p>  
