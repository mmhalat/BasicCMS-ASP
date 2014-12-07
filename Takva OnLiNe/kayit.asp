<%
session("kart")=Request.QueryStriNG("id")
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
            <td width="57%" valign="top"><img src="resimarsivim/<%=Request.QueryStriNG("id")%>.JPG" width="400" height="320"><br>
            </td>
            <td width="43%" valign="top"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Başlık</font><br>
              <input type="text" name="baslik" size="30">
              <font face="Verdana, Arial, Helvetica, sans-serif" size="2"><br>
              Mesajınız<br>
              </font> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              <textarea name="mesaj" cols="30" rows="5"></textarea>
              </font> </td>
          </tr>
          <tr> 
            <td width="57%">&nbsp;</td>
            <td width="43%" valign="top">&nbsp;</td>
          </tr>
        </table>
        <table width="100%" border="1" cellspacing="0" cellpadding="3" bordercolor="#000000">
          <tr bgcolor="#CCCC66"> 
            <td width="19%"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Gönderen 
              </font></td>
            <td width="26%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              <input type="text" name="gonderen_isim" size="30">
              </font></td>
            <td width="22%"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Gönderen 
              Mail adresi </font></td>
            <td width="33%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              <input type="text" name="gonderen_mail" size="30">
              </font></td>
          </tr>
          <tr bgcolor="#E6E6B5"> 
            <td width="19%"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Alıcı 
              </font></td>
            <td width="26%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              <input type="text" name="alici_isim" size="30">
              </font></td>
            <td width="22%"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Alıcının 
              Mail adresi </font></td>
            <td width="33%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              <input type="text" name="alici_mail" size="30">
              </font></td>
          </tr>
          <tr bgcolor="#CCCC66"> 
            <td width="19%" valign="top"><font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              Müzik</font></td>
            <td colspan="3" valign="top"><font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
              <select name="mid">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
              </select>
              <input type="submit" name="Submit" value="Gönder">
              </font><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><br>
              <br>
              <br>
              </font> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
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
        <div align="center"></div>
        <div align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">Takva Online</font></div>
      </td>
    </tr>
  </table>
</form>
</body>
</html>
