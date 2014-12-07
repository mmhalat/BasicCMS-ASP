<%
Set site_copy=Server.CreateObject("ADODB.RecordSet")
sql="select * from site_ayar"
site_copy.open sql,baglanti,1,3
%>
<%=site_copy("site_copy")%>Bu Sayfa
  <% 
lngTimer=Timer  
  
For  lngCnt=1  to  1000000 
Next  
  
Response.Write  FormatNumber(Timer-lngTimer,2,True) & " saniye" 
%>
  de yüklendi. </span></div></td>
    <td width="14" background="images/side_right.jpg"> </td>
    </tr>
  </table>
