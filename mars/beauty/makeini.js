const args = process.argv;

for (var n = 2; n < args.length; ++n)
{
	var j = args[n].split("/");
	console.log("[BEAUTY" + (n-1) + "]")
	console.log("path = data/mars/beauty/" + j[j.length-1])
}


