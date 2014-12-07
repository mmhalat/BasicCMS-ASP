
<!--#include file="inc.asp"-->
<%
if request("add")<>"" then


	Set Rs=Server.CreateObject("Adodb.Recordset")
	Rs.ActiveConnection = baglanti
	Sorgu="SELECT * FROM katagori WHERE id="& id &""

        	rs.open "katagori",baglanti,3,2
		rs.addnew

		rs.fields ("katagori_adi")=request("katagori_adi")
			rs.fields ("Catid")=request("Catid")

		rs.update		
		rs.close

	set rs=nothing 
	Response.Redirect("katagori_list.asp")




end if 
%>



			<form action="katagori_add.asp" method="post">
			<table border="0" cellpadding="2" cellspacing="2" width="372">

			<tr> 
			  	<td width="150" align=right><b>
                <font face="Tahoma" style="font-size: 8pt">Katagori Adý : </font>
                </b></td>
			  	<td width="210">
                <input type="text" name="katagori_adi" style="font-size: 8pt" color="#003366" value="" size="50"> </td>
			</tr>
<tr> 
			  	<td width="150" align=right><font face="Tahoma" style="font-size: 8pt" color="#000000"><b>
                Katagori :</b></td>
			  	<td width="210">
			  	 <select name="Catid" size="1" >  

			      <option value="">Seçiniz..</option>
			      <%
			      set rs =Server.CreateObject("ADODB.Recordset")
			      Sorgu = "select * from ana ad order by ad"
			      Rs.Open Sorgu, baglanti, 1, 3 
			      %>
			      <%Do while not rs.eof%>

			      <option value="<%=rs("id")%>"><%=rs("ad")%></option>

			     <%
			     rs.movenext
			     loop
			     %>
			     <%
			     rs.close
			     set rs=nothing
			     baglanti.close
			     set baglanti=nothing
			     %>    
			      </select>

 </td>
			</tr>



			<tr><td colspan=2 width="366"><center><INPUT TYPE="submit" VALUE=" Kaydet " style="BACKGROUND-COLOR: #FFFFFF; BORDER-BOTTOM: #486078 1px inset; BORDER-LEFT: #486078 1px inset; BORDER-RIGHT: #486078 1px inset; BORDER-TOP: #486078 1px inset; COLOR: #486078; FONT-FAMILY: Verdana; FONT-SIZE: 8pt">&nbsp; &nbsp;<INPUT type="Button" VALUE=" Ýptal " OnClick='history.go( -1 );return true;' style="BACKGROUND-COLOR: #FFFFFF; BORDER-BOTTOM: #486078 1px inset; BORDER-LEFT: #486078 1px inset; BORDER-RIGHT: #486078 1px inset; BORDER-TOP: #486078 1px inset; COLOR: #486078; FONT-FAMILY: Verdana; FONT-SIZE: 8pt"></td></tr>
			</table>
			<input type="hidden" name="add" value="1">
			</form>