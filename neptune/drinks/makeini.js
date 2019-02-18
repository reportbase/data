const args = process.argv;

for (var n = 2; n < args.length; ++n)
{
	var j = args[n].split("/");
	console.log("[DRINKS" + (n-2) +"]")
	console.log("path = data/neptune/drinks/" + j[j.length-1])
}


