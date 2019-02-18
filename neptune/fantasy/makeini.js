const args = process.argv;

for (var n = 2; n < args.length; ++n)
{
	var j = args[n].split("/");
	console.log("[FANTASY" + (n-2) + "]")
	console.log("path = data/neptune/fantasy/small/" + j[j.length-1])
}


