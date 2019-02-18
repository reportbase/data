const args = process.argv;

for (var n = 2; n < args.length; ++n)
{
	var j = args[n].split("/");
	console.log("[POSTERS" + (n-2) + "]")
	console.log("path = data/neptune/posters/small/" + j[j.length-1])
}


