<!--#include file="inc.asp"-->
<%
id=request("id")
if request("del")<>"" then
	baglanti.execute("DELETE FROM ana WHERE  id="& id &"")
	Response.Redirect("ana_list.asp")
end if 
%>










			<form action="ana_del.asp" method="post">
			<center>
			<br><br><br><br>
			Kayiti Silmek &#304;stediginden eminmisin .!<br>
			<br>


			<INPUT TYPE="submit" VALUE=" Evet "  style="font-size: 8pt" color="#003366">&nbsp; &nbsp;<INPUT type="Button" VALUE=" Ýptal " OnClick='history.go( -1 );return true;'  style="font-size: 8pt" color="#003366">

			<input type="hidden" name="del" value="1">
			<input type="hidden" name="id" value="<%=request("id")%>">

			</form>