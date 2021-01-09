convert -crop 11491x2789 a.jpg a_%d.jpg
convert a_0a.jpg a_1a.jpg +append b.jpg
convert b.jpg -sampling-factor 4:2:0 -strip -resize x1080 -quality 70 -interlace JPEG -colorspace RGB b.jpg
convert b.jpg ../009.000.webp
convert ../009.000.webp -resize x360 ../008.000.webp
