

<!--#include file="security.asp" -->


<!--#include file="head.asp" -->

<!--#include file="style.asp" -->








<!--#include file="db.asp"-->
<%
if request("add")<>"" then



	Rs.ActiveConnection = bag
	Sorgu="SELECT * FROM galeri WHERE id="& id &""

        	rs.open "galeri",bag,3,2
		rs.addnew

		rs.fields ("img")=request("img")
		rs.fields ("detay")=request("detay")
		rs.fields ("Catid")=request("Catid")
		rs.fields ("tarih")=now()
		rs.fields ("izlenme")=0


		
		rs.update		
		rs.close

	set rs=nothing 
	Response.Redirect("galeri_list.asp")




end if 
%>
























			<form action="galeri_add.asp" method="post">
			<table border="0" cellpadding="2" cellspacing="2">

			<tr> 
			  	<td width="150" align=right><b>
                <font face="Tahoma" style="font-size: 8pt">Resim Adresi</font></b><font face="Tahoma" style="font-size: 8pt" color="#000000"><b> 
                :</b></td>
			  	<td width="625">
                <input type="text" name="img" style="font-size: 8pt" color="#003366" value="galeri/" size="58"> </td>
			</tr>
			<tr> 
			  	<td width="150" align=right><font face="Tahoma" style="font-size: 8pt" color="#000000"><b>
                Resim Açýklamsý :</b></td>
			  	<td width="625">
                <input type="text" name="detay" style="font-size: 8pt" color="#003366" value="" size="58"> </td>
			</tr>
			
			<tr> 
			  	<td width="150" align=right><font face="Tahoma" style="font-size: 8pt" color="#000000"><b>
                Katagori :</b></td>
			  	<td width="625">
			  	 <select name="Catid" size="1" >  

			      <option value="">Seçiniz..</option>
			      <%
			      set rs =Server.CreateObject("ADODB.Recordset")
			      Sorgu = "select * from katagori katagori_adi order by katagori_adi"
			      Rs.Open Sorgu, bag, 1, 3 
			      %>
			      <%Do while not rs.eof%>

			      <option value="<%=rs("id")%>"><%=rs("katagori_adi")%></option>

			     <%
			     rs.movenext
			     loop
			     %>
			     <%
			     rs.close
			     set rs=nothing
			     bag.close
			     set bag=nothing
			     %>    
			      </select>

 </td>
			</tr>




			<tr><td colspan=2><center><INPUT TYPE="submit" VALUE=" Kaydet " style="BACKGROUND-COLOR: #FFFFFF; BORDER-BOTTOM: #486078 1px inset; BORDER-LEFT: #486078 1px inset; BORDER-RIGHT: #486078 1px inset; BORDER-TOP: #486078 1px inset; COLOR: #486078; FONT-FAMILY: Verdana; FONT-SIZE: 8pt">&nbsp; &nbsp;<INPUT type="Button" VALUE=" Ýptal " OnClick='history.go( -1 );return true;' style="BACKGROUND-COLOR: #FFFFFF; BORDER-BOTTOM: #486078 1px inset; BORDER-LEFT: #486078 1px inset; BORDER-RIGHT: #486078 1px inset; BORDER-TOP: #486078 1px inset; COLOR: #486078; FONT-FAMILY: Verdana; FONT-SIZE: 8pt"></td></tr>
			</table>
			<input type="hidden" name="add" value="1">
			</form>