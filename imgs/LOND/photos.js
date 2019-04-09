const args = process.argv;
console.log("pages = data/photo.ini")
for (var n = 2; n < args.length; ++n)
{
	var j = args[n].split("/");
	console.log("[LOND" + (n-2)  + "]")
	console.log("path = data/imgs/LOND/small/" + j[j.length-1])
}


