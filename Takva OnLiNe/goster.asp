<!--#include file="include_file/sabit.asp"-->
<%
id=Request.queryStriNG("id")
SQLc = "select * from kart WHERE id =" &id
set liste = Server.CreateObject("ADODB.RecordSet")
liste.open SQLc,baglanti,1,3
%>

<html>
<head>
<title>E-kart</title>
<meta http-equiv="Content-Type" content="text/html; charset="8859-9>
</head>

<body bgcolor="#CCCC99" text="#000000">
<form name="form1" method="post" action="kayit2.asp">
  <table width="760" border="1" cellspacing="0" cellpadding="3" align="center" bordercolor="#000000">
    <tr> 
      <td> 
        <table width="100%" border="0" cellspacing="0" cellpadding="3">
          <tr> 
            <td> 
              <div align="center"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="3">E-Kart</font></b></div>
            </td>
          </tr>
        </table>
        <br>
        <br>
        <table width="99%" border="0" cellspacing="0" cellpadding="3">
          <tr> 
            <td width="57%" valign="top"><img src="resimarsivim/<%=liste("kart")%>.JPG" width="400" height="320"><br>
            </td>
            <td width="43%" valign="top"><%=liste("baslik")%><br>
              
              <font face="Verdana, Arial, Helvetica, sans-serif" size="2"><br>
              <br>
              </font> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"><%=liste("mesaj")%> 
              </font> </td>
          </tr>
          <tr> 
            <td width="57%">&nbsp;</td>
            <td width="43%" valign="top">&nbsp;</td>
          </tr>
        </table>
        <table width="100%" border="1" cellspacing="0" cellpadding="3" bordercolor="#000000">
          <tr bgcolor="#CCCC66"> 
            <td width="19%" bgcolor="#FFFFCC"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Gönderen 
              </font></td>
            <td width="26%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              <%=liste("gonderen_isim")%> </font></td>
            <td width="22%" bgcolor="#FFFFCC"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Gönderen 
              Mail adresi </font></td>
            <td width="33%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              <%=liste("gonderen_mail")%></font></td>
          </tr>
          <tr bgcolor="#E6E6B5"> 
            <td width="19%"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Al&#305;c&#305;</font></td>
            <td colspan="3"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              <%=liste("alici_isim")%> </font> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              </font></td>
          </tr>
        </table>
        <p align="center"><br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
        </p>
        <hr>
        <div align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"></font></div>
        <div align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">Takva Online E-Kart Servisi. </font></div></td>
    </tr>
  </table>
</form>
</body>
</html>
