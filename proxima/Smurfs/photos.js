const args = process.argv;
console.log("pages = data/photo.ini")
for (var n = 2; n < args.length; ++n)
{
	var j = args[n].split("/");
	console.log("[" + j[j.length-1] + "]")
	console.log("path = data/proxima/Smurfs/small/" + j[j.length-1])
}


