const args = process.argv;

for (var n = 2; n < args.length; ++n)
{
	var j = args[n].split("/");
	console.log("[GregoryPerillo" + j[j.length-1] + "]")
	console.log("path = data/proxima/GregoryPerillo/small/" + j[j.length-1])
}


