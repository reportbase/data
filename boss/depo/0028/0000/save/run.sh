#left,top      right,bottom
convert a_0.jpg -crop +0+0 -crop -0-100 a_0a.jpg
convert a_1.jpg -crop +0+100 -crop -0-0 a_1a.jpg
for image in *a.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x1440 -quality 80 -interlace JPEG -colorspace RGB $image ; done
convert a_0a.jpg a_1a.jpg +append ../009.000.webp
convert ../009.000.webp -resize x360 -quality 70 008.000.webp

