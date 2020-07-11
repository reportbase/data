var url = new URL(window.location.href);

var globalobj = {}

function postmessage(key, value)
{
	var eee = document.getElementById('EEE');
	eee.contentWindow.postMessage({key: key, value: value}, "https://" + url.host);
	eee.focus();
}

function hide() {postmessage("hide") }
function backspace() {postmessage("backspace") }
function enter() {postmessage("enter") }
function pagedown() {postmessage("pagedown") }
function pageup() {postmessage("pageup") }
function auto() {postmessage("auto") }

function resize()
{
	clearTimeout(globalobj.time);
	globalobj.time = setTimeout(function() 
	{
		for (var n = 0; n < 10; n++)
		{
			var eee = document.getElementById("EEE");
			var bbb = document.getElementById("BBB");
			var ddd = document.getElementById("DDD");
			var aaa = document.getElementById("AAA");
			var border = globalobj.press ? 1.0 : 0.95;
			var height = window.innerHeight*border;
			if (!globalobj.press)
				height -= (bbb.offsetHeight+ddd.offsetHeight);
			var width = window.innerWidth*border;
			eee.style.width = width+"px";
			eee.style.height = height+"px";
			aaa.style.width = width+"px";
			aaa.style.height = height+"px";
			ddd.style.top = (window.innerHeight-40)+"px";

			 if (globalobj.press) 
			 {
				eee.style.top = 0;
				eee.style.left = 0;
				bbb.style.display = "none";
				ddd.style.display = "none";
		   	 } 
			 else 
			 {
				eee.style.top = bbb.offsetHeight;
				eee.style.left = bbb.style.left;
				bbb.style.display = "block";
				ddd.style.display = "block";
		     }
		}
	}, 100); 
}

function fullscreen()
{
	var eee = document.getElementById('EEE');
	if(document.webkitFullscreenElement) 
	   document.webkitCancelFullScreen();
	else 
		eee.webkitRequestFullScreen();
	eee.focus();
}

window.addEventListener('focus', (event) => 
{
	var eee = document.getElementById('EEE');
	eee.focus();
});

window.addEventListener("resize", function (evt)
{
	resize();
});

window.addEventListener("load", function (evt)
{
	var lasturl = localStorage.getItem(projectname + "lasturl");
	lasturl = lasturl ? "https://"+url.host + lasturl : "https://" + url.host + defaultpath; 
	window.frames['EEE'].location = lasturl;
	window.frames['EEE'].focus();
	resize();
});

window.addEventListener('message', function(e)
{
	var ddd = document.getElementById("DDD");
	if (e.data.key == "url")
	{
		localStorage.setItem(projectname + "lasturl", e.data.value);
	}
	else if (e.data.key == "press")
	{
		globalobj.press = globalobj.press ? 0 : 1;
		resize();
	}
	else if (ddd)
	{
		if (url.host == "repba.com")
			return;
		var str = JSON.stringify(e.data);
		var k = Math.floor(str.length)/2;
		var a = str.substr(0,k) + "\n" + str.substr(k,str.length);
		ddd.innerHTML = a;
	}
});

