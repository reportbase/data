convert -crop 9504x2976 a.jpg a_%d.jpg
#left,top      right,bottom
convert a_0.jpg -crop +0+100 -crop -0-0 a_0.jpg
convert a_1.jpg -crop +0+0 -crop -0-100 a_1.jpg
convert a_0.jpg -sampling-factor 4:2:0 -strip -resize x1440 -quality 80 -interlace JPEG -colorspace RGB a_0.jpg
convert a_1.jpg -sampling-factor 4:2:0 -strip -resize x1440 -quality 80 -interlace JPEG -colorspace RGB a_1.jpg
convert a_0.jpg a_1.jpg +append ../008.000.webp

