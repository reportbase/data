function links() {return document.getElementById("links");}
function ifr() { return document.getElementById('ifr').contentWindow; }
var url = new URL(window.location.href);

Number.prototype.pad = function(size)
{
    var s = String(this);
    while (s.length < (size || 2)) {s = "0" + s;}
	    return s;
}

window.onload = function() 
{
    setTimeout(function()
    {
        var lst = ["ifr","ifr1","ifr2","ifr3"];
        for (var n = 0; n < lst.length; ++n)
        {
            var j = document.getElementById(lst[n]);
            if (!j)
                continue;
            var k = j.contentWindow;
            if (!k)
                continue;
            k.addEventListener('wheel', function(evt) 
            {
                evt.preventDefault();
                return false;
            }, { passive: false });
        }
    }, 2000);

    scroll(0,0);  
}

window.addEventListener("keydown", function (evt)
{
    if (ifr().postMessage(evt.key, url.origin))
    {
        scroll(0,0); 
        evt.preventDefault();
        return false;
    }

}, false);

function getstring(name, projects, size)
{
    var str = "";
    var m = 0;
    for (var k = 0; k < projects; ++k)
    {
        for (var n = 0; n < size; ++n, ++m)
            str += "<a target=ifr href=/?p=boss/"+name+"&k=0000&a=1&s=300&f=1&image="+m.pad(3)+">"+(m+1).pad(3)+"</a> / ";
    }
    
    return str;
}

