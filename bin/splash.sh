rm splash.jpg 2> /dev/null
convert 0*.jpg +append splash.jpg
convert splash.jpg  -auto-orient -thumbnail x1080  -unsharp 0x.5 splash.jpg 
#convert splash.jpg -resize x1080 -quality 80 splash.jpg

