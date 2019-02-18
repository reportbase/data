const args = process.argv;

for (var n = 2; n < args.length; ++n)
{
	var j = args[n].split("/");
	console.log("[COMBS" + (n-2) + "]")
	console.log("path = data/neptune/combs/small/" + j[j.length-1])
}


