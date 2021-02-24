var safari = function() { return /^((?!chrome|android).)*safari/i.test(navigator.userAgent) };
var k = document.getElementById('ifr');
k.addEventListener('load', function(evt) 
{ 
    window.scroll(0,0);

    if (safari())
    {
        //this.style.height = '360px';
    }

    this.contentWindow.addEventListener('wheel', function(evt) 
    {
        evt.preventDefault();
        return false;
    }, { passive: false });

}, { passive: false });


