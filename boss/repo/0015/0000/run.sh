convert a_0.jpg a_1.jpg +append b.jpg
for image in *_*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x1080 -quality 70 -interlace JPEG -colorspace RGB $image ; done
convert -crop 7414x1888 a.jpg a_%d.jpg
convert 009.000.webp -resize x360 -quality 60 008.000.webp


