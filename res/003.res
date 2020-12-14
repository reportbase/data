<style>
* {margin: 0; padding: 0}
html, body {height: 100%; margin: 0; background-color: #ffffff}
canvas {outline: none; position: absolute}
body { margin: 0px; font-family: 'Helvetica', 'Open Sans', 'sans-serif'; background-color: #fff; color: #444; }
</style>

<script>
function left() {return document.getElementById('left'); }
function right() {return document.getElementById('right'); }

function resize()
{
   if (window.innerWidth > window.innerHeight)
   {
        left().width="49%"
        left().height="100%"
        right().width="49%"
        right().height="100%"
   }
   else
   {    
        left().width="100%"
        left().height="50%"
        right().width="100%"
        right().height="50%"
   }
}

window.addEventListener('resize', function ()
{
    resize();
});

function orientationChanged()
{
	const timeout = 120;
	return new window.Promise(function(resolve)
	{
		const go = (i, height) =>
		{
			window.innerHeight != height || i >= timeout ?
				resolve() :
				window.requestAnimationFrame(() => go(i + 1, height));
		};

		go(0, window.innerHeight);
	});
}

window.addEventListener("load", function (evt)
{
    resize();
});

window.addEventListener('orientationchange', function ()
{
    resize();
    orientationChanged().then(function() { resize(); });
});

</script>

<center>

<iframe name=left id=left src="https://reportbase.com/?p=boss/{GALLERY}&k=0000&a=1" 
    width="0" height="0" scrolling="no" frameborder="0"></iframe>
<iframe name=right id=right src="https://reportbase.com/?p=boss/{GALLERY}&k=0001&a=1" 
    width="0" height="0" scrolling="no" frameborder="0"></iframe>


