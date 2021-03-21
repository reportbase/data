function links() {return document.getElementById("links");}
function ifr() { return document.getElementById('ifr').contentWindow; }
var url = new URL(window.location.href);

Number.prototype.pad = function(size)
{
    var s = String(this);
    while (s.length < (size || 2)) {s = "0" + s;}
	    return s;
}

function fullscreen()
{
    var a = { key: "fullscreen", "value": 0, } 
    ifr().postMessage(a, url.origin);
}

function auto()
{
    var a = { key: "auto", "value": 0, } 
    ifr().postMessage(a, url.origin);
}

function image(n)
{
    scroll(0,0); 
    var a = { "key": "image", "value": n } 
    ifr().postMessage(a, url.origin);
}


