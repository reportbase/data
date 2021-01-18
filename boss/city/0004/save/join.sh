cp ../008* .
for image in 008*.webp; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 008.000.webp 008.001.webp 008.002.webp +append ../024.000.jpg
convert 008.003.webp 008.004.webp 008.005.webp +append ../024.001.jpg
convert 008.006.webp 008.007.webp 008.008.webp +append ../024.002.jpg

cp ../006* .
for image in 006*.webp; do convert $image -sampling-factor 4:2:0 -strip -resize x540 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 006.000.webp 006.001.webp 006.002.webp 006.003.webp 006.004.webp 006.005.webp +append ../036.000.jpg
convert 006.006.webp 006.007.webp 006.008.webp 006.009.webp 006.010.webp 006.011.webp +append ../036.001.jpg

cp ../006* .
for image in 006*.webp; do convert $image -sampling-factor 4:2:0 -strip -resize x320 -quality 75 -interlace JPEG -colorspace RGB $image ; done
convert 006.000.webp 006.001.webp 006.002.webp 006.003.webp 006.004.webp 006.005.webp 006.006.webp 006.007.webp 006.008.webp 006.009.webp 006.010.webp 006.011.webp +append ../072.000.jpg

