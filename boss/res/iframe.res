<ont size=6>
<center>
<iframe name=FSPIVFRAME src="https://reportbase.com?p=boss/{GALLERY}&k=0000&a=1&speed=1.5" 
width="90%" height="500" style="border:none;overflow:hidden;max-width:900;}
scrolling="no" frameborder="0" allowfullscreen="true" 
allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share" allowFullScreen="true"></iframe><br>

<p id="demo"></p>

<script>
Number.prototype.pad = function(size)
{
    var s = String(this);
    while (s.length < (size || 2)) {s = "0" + s;}
	    return s;
}

var str = "";
for (var n = 0; n < {SIZE}; ++n)
{
    var id = n.pad(4);
    str += "<a href=https://repba.com?p=boss/{GALLERY}&k=" + id + "&a=1&speed=1.5 target=FSPIVFRAME>" + id + "</a> ";
}

document.getElementById("demo").innerHTML = str;
</script>

