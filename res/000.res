<style type="text/css">
    * {margin: 0; padding: 0}
    html, body {height: 100%; margin: 0; margin-top: 10px; background-color: #ffffff}
    canvas {outline: none; position: absolute
    a { text-decoration: none; }
</style>
<center>
<br>

<font size=4>
<h1>{TITLE}</h1><br>
<p id="images"></p><br>
<p id="links"></p><br>

<script>
Number.prototype.pad = function(size)
{
    var s = String(this);
    while (s.length < (size || 2)) {s = "0" + s;}
	    return s;
}

var str = "";
for (var n = 0; n < {IMAGECOUNT}; ++n)
{
    var id = n.pad(4);
    str += "<a href=https://repba.com/?p=boss/{GALLERY}&k={PROJECT}&a=1&image=" + id + ">";
    str += "<img src=https://repba.com/data/boss/{GALLERY}/{PROJECT}/orig/thumb/" + id + ".jpg></a>";
}

document.getElementById("images").innerHTML = str;

{TITLELST}
var str = "";
for (var n = 0; n < {COUNT}; ++n)
{
    var id = n.pad(4);
    str += "<a href=https://repba.com/data/boss/{GALLERY}/" + id + "/000.html>";
    str += "<h2>" + lst[n] + "</h2></a><br>";
}

document.getElementById("links").innerHTML = str;
</script>

