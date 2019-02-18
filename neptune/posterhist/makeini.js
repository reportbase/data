const args = process.argv;

for (var n = 2; n < args.length; ++n)
{
	var j = args[n].split("/");
	console.log("[POSTERHIST" + (n-2) + "]")
	console.log("path = data/mars/posterhist/" + j[j.length-1])
}


