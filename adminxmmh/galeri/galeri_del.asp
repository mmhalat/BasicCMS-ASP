
<!--#include file="inc.asp"-->
<%
id=request("id")
if request("del")<>"" then
	baglanti.execute("DELETE FROM galeri WHERE  id="& id &"")
	Response.Redirect("galeri_list.asp")
end if 
%>










			<form action="galeri_del.asp" method="post">
			<center>
			<br><br><br><br>Kaydi Silmek Istediginden Eminmisin.!?<br><br>


			<INPUT TYPE="submit" VALUE=" Evet "  style="font-size: 8pt" color="#003366">&nbsp; &nbsp;<INPUT type="Button" VALUE=" Ýptal " OnClick='history.go( -1 );return true;'  style="font-size: 8pt" color="#003366">

			<input type="hidden" name="del" value="1">
			<input type="hidden" name="id" value="<%=request("id")%>">

			</form>