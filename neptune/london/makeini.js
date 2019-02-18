const args = process.argv;

for (var n = 2; n < args.length; ++n)
{
	var j = args[n].split("/");
	console.log("[LONDON" + (n-2) + "]")
	console.log("path = data/neptune/london/small/" + j[j.length-1])
}


