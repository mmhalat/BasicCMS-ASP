

<!--#include file="inc.asp"-->
<%
id=request("id")
if request("update")<>"" then

	img=request("img")
	detay=request("detay")
	Set Rs=Server.CreateObject("Adodb.Recordset")
	Rs.ActiveConnection = baglanti
	Sorgu="SELECT * FROM galeri WHERE id="& id &""
	rs.open Sorgu,baglanti,3,2

		rs.update "img",img
		rs.update "detay",detay
	

		rs.close
	set rs=nothing 
	Response.Redirect("galeri_list.asp")
else

end if 
%>

















			<!--#include file="inc.asp"-->
			<%
			Set Rs=Server.CreateObject("Adodb.Recordset")
			Rs.ActiveConnection = baglanti
			Rs.Open="Select * from galeri WHERE id =" & request("id")
			%>







			<form action="galeri_edit.asp" method="post">
			<table border="0" cellpadding="2" cellspacing="2">

			<tr> 
			  	<td width="150" align=right><b>
                <font face="Tahoma" style="font-size: 8pt">resim adresi</font></b><font face="Tahoma" style="font-size: 8pt" color="#000000"><b> 
                :</b></td>
			  	<td width="625">
                <input type="text" name="img" style="font-size: 8pt" color="#003366" value="<%Response.Write RS("img")%>" size="53" maxlength="25"> </td>
			</tr>
			<tr> 
			  	<td width="150" align=right><b>
                <font face="Tahoma" style="font-size: 8pt">resim a��klamas�</font></b><font face="Tahoma" style="font-size: 8pt" color="#000000"><b> :</b></td>
			  	<td width="625">
                <input type="text" name="detay" style="font-size: 8pt" color="#003366" value="<%Response.Write RS("detay")%>" size="53" maxlength="25"> </td>
			</tr>




			<input type="hidden" name="update" value="1">
			<input type="hidden" name="id" value="<%Response.Write RS("id")%>">






			<%
			rs.close
			set rs=nothing
			baglanti.close
			set baglanti=nothing
			%>
			<tr><td colspan=2><center><INPUT TYPE="submit" VALUE=" Kaydet " style="BACKGROUND-COLOR: #FFFFFF; BORDER-BOTTOM: #486078 1px inset; BORDER-LEFT: #486078 1px inset; BORDER-RIGHT: #486078 1px inset; BORDER-TOP: #486078 1px inset; COLOR: #486078; FONT-FAMILY: Verdana; FONT-SIZE: 8pt">&nbsp; &nbsp;<INPUT type="Button" VALUE=" �ptal " OnClick='history.go( -1 );return true;' style="BACKGROUND-COLOR: #FFFFFF; BORDER-BOTTOM: #486078 1px inset; BORDER-LEFT: #486078 1px inset; BORDER-RIGHT: #486078 1px inset; BORDER-TOP: #486078 1px inset; COLOR: #486078; FONT-FAMILY: Verdana; FONT-SIZE: 8pt"></td></tr>
			</table>
			</form>