
function no_error()
{ return true; }
window.onerror=no_error;
 
var e;
var f;
var x;
var y;
var z;
var w;
var m;
var n;
var o;
var aa;
var bb;
var cc;
function uyeara(sParam)
	{
		n = 'uaram';
		o = Math.round(100000*Math.random());
		document.getElementById(n).innerHTML = "<center><br><img src=loading2.gif></center>";
		if (window.XMLHttpRequest)
		{
			m=new XMLHttpRequest();
			m.onreadystatechange=mChange;
			m.open("GET","ajax_akaid_ara.asp?huara="+sParam+"&"+o,true);
			m.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=UTF-8");
			m.send(null)
		} else if 
			(window.ActiveXObject) {
			m=new ActiveXObject("Microsoft.XMLHTTP");
			if (m) {
			m.onreadystatechange=mChange;
			m.open("GET","ajax_akaid_ara.asp?huara="+sParam+"&"+o,true);
			m.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=UTF-8");
			m.send()
			}
			Resim(0);
			}
		}

		function mChange()
		{
			if (m.readyState==4)
				{
					if (m.status==200 && m.responseText != "")
						{
							document.getElementById(n).innerHTML = m.responseText;
						} 
					else 
						{document.getElementById(n).innerHTML ="<i><font color=red face=Verdana size=1><b>Hata olustu... </font></i>";
					}
				}
			}




			function Resim(sParam)
			{
			w = 'Resim';
			i = Math.round(100000*Math.random());
			document.getElementById(w).innerHTML = "<center><br><br><br><img src=loading2.gif><br>Veriler Aliniyor. Lütfen bekleyiniz...</center>";
			if (window.XMLHttpRequest) 
			{
			z=new XMLHttpRequest();
			z.onreadystatechange=yChange;
			z.open("GET","resimgoster.asp?ID="+sParam+"&"+i,true);
			z.send(null)
			} 
			else if (window.ActiveXObject) 
			{
			z=new ActiveXObject("Microsoft.XMLHTTP");
			if (z) {
			z.onreadystatechange=yChange;
			z.open("GET","resimgoster.asp?ID="+sParam+"&"+i,true);
			z.send()
			}
			}
			}
			function yChange()
			{
			if (z.readyState==4)
			{
			if (z.status==200 && z.responseText != "")
			{
			document.getElementById(w).innerHTML = z.responseText;
			}
			 else 
			 {
			 document.getElementById(w).innerHTML ="<i><font color=red face=Verdana size=1><b>Hata olustu... </font></i>";
			 }
			 }
			 }
			 	function Temizle()
				{
				tem = 'Resim' ;
				document.getElementById(tem).innerHTML = 'Resim Seciniz';
				 }
