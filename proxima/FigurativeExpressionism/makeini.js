const args = process.argv;

for (var n = 2; n < args.length; ++n)
{
	var j = args[n].split("/");
	console.log("[FigurativeExpressionism" + j[j.length-1] + "]")
	console.log("path = data/proxima/FigurativeExpressionism/small/" + j[j.length-1])
}


