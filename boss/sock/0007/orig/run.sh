convert *.jpg +append ../018.000.jpg
convert ../018.000.jpg -sampling-factor 4:2:0 -strip -quality 80 -resize x720 -interlace JPEG -colorspace RGB ../018.000.jpg

convert 0000.jpg 0001.jpg 0002.jpg 0003.jpg 0004.jpg 0005.jpg 0006.jpg 0007.jpg 0008.jpg +append ../009.000.jpg
convert 0009.jpg 0010.jpg 0011.jpg 0012.jpg 0013.jpg 0014.jpg 0015.jpg 0016.jpg 0017.jpg +append ../009.001.jpg
convert ../009.000.jpg -sampling-factor 4:2:0 -strip -quality 80 -resize x720 -interlace JPEG -colorspace RGB ../009.000.jpg
convert ../009.001.jpg -sampling-factor 4:2:0 -strip -quality 80 -resize x720 -interlace JPEG -colorspace RGB ../009.001.jpg

convert 0000.jpg 0001.jpg 0002.jpg 0003.jpg 0004.jpg 0005.jpg +append ../006.000.jpg
convert 0006.jpg 0007.jpg 0008.jpg 0009.jpg 0010.jpg 0011.jpg +append ../006.001.jpg
convert 0012.jpg 0013.jpg 0014.jpg 0015.jpg 0016.jpg 0017.jpg +append ../006.002.jpg
convert ../006.000.jpg -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace RGB ../006.000.jpg
convert ../006.001.jpg -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace RGB ../006.001.jpg
convert ../006.002.jpg -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace RGB ../006.002.jpg

