<style type="text/css">
    * {margin: 0; padding: 0}
    html, body {height: 100%; margin: 0; margin-top: 10px; background-color: #ffffff}
    canvas {outline: none; position: absolute
    a { text-decoration: none; }
</style>
<center>
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
    str += "<a href=https://repba.com/?p=boss/{GALLERY}&k="+id+"&a=1>\n";
    str += "<img src=https://repba.com/data/boss/{GALLERY}/"+id+"/";
    str += "{NAME}.gif></a>\n";
}

console.log(str)
document.getElementById("demo").innerHTML = str;
</script>



