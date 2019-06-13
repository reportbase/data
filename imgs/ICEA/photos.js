const args = process.argv;
for (var n = 2; n < args.length; ++n)
{
	var j = args[n].split("/");
	console.log("[ICEA" + (n-1) + "]")
	console.log("path = data/imgs/ICEA/small/" + j[j.length-1])
}


