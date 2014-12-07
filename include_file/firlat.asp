<%
if Not IsNumeric(REQUEST.QUERYSTRING("id" ) ) THEN
%>
<style type="text/css">
<!--
.style1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 10px;
}
-->
</style>


<div align="center">
  <h1><span class="style1">Bu Bir İslam Sitesidir Siz Sitemizi Hacklemeye Calısan Sahıs BANLANDINIZ...

  </span>    
    <%
response.end
end if
%> 
  </h1>
</div>
