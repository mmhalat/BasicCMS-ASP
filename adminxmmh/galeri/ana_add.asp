
<!--#include file="inc.asp"-->
<%
if request("add")<>"" then


	Set Rs=Server.CreateObject("Adodb.Recordset")
	Rs.ActiveConnection = baglanti
	Sorgu="SELECT * FROM ana WHERE id="& id &""

        	rs.open "ana",baglanti,3,2
		rs.addnew

		rs.fields ("ad")=request("ad")
	
		rs.update		
		rs.close

	set rs=nothing 
	Response.Redirect("ana_list.asp")




end if 
%>
























			<form action="ana_add.asp" method="post">
			<table border="0" cellpadding="2" cellspacing="2" width="487">

			<tr> 
			  	<td width="265" align=right><b>
                <font face="Tahoma" style="font-size: 8pt">Ana Katagori Adý : </font>
                </b></td>
			  	<td width="210">
                <input type="text" name="ad" style="font-size: 8pt" color="#003366" value="" size="50"> </td>
			</tr>



			<tr><td colspan=2 width="366"><center><INPUT TYPE="submit" VALUE=" Kaydet " style="BACKGROUND-COLOR: #FFFFFF; BORDER-BOTTOM: #486078 1px inset; BORDER-LEFT: #486078 1px inset; BORDER-RIGHT: #486078 1px inset; BORDER-TOP: #486078 1px inset; COLOR: #486078; FONT-FAMILY: Verdana; FONT-SIZE: 8pt">&nbsp; &nbsp;<INPUT type="Button" VALUE=" Ýptal " OnClick='history.go( -1 );return true;' style="BACKGROUND-COLOR: #FFFFFF; BORDER-BOTTOM: #486078 1px inset; BORDER-LEFT: #486078 1px inset; BORDER-RIGHT: #486078 1px inset; BORDER-TOP: #486078 1px inset; COLOR: #486078; FONT-FAMILY: Verdana; FONT-SIZE: 8pt"></td></tr>
			</table>
			<input type="hidden" name="add" value="1">
			</form>