function links() {return document.getElementById("links");}
function ifr() { return document.getElementById('ifr').contentWindow; }
var url = new URL(window.location.href);

Number.prototype.pad = function(size)
{
    var s = String(this);
    while (s.length < (size || 2)) {s = "0" + s;}
	    return s;
}

function image(n)
{
    scroll(0,0); 
    var a = { "key": "image", "value": n } 
    ifr().postMessage(a, url.origin);
}

window.addEventListener("keyup", function (evt)
{
    if (ifr().postMessage(evt.key, url.origin))
    {
        scroll(0,0); 
        evt.preventDefault();
        return false;
    }

}, false);

window.addEventListener("keydown", function (evt)
{
    if (ifr().postMessage(evt.key, url.origin))
    {
        scroll(0,0); 
        evt.preventDefault();
        return false;
    }

}, false);

