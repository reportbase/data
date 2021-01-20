var k = document.getElementById('ifr');
k.addEventListener('load', function(evt) 
{ 
    window.scroll(0,0); 

    this.contentWindow.addEventListener('wheel', function(evt) 
    {
        evt.preventDefault();
        return false;
    }, { passive: false });

}, { passive: false });


