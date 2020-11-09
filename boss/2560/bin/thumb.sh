mkdir thumb
cd thumb

#10240x240
cp ../*.jpg .
convert -resize x240 -delay 100 -loop 0 {0000..0019}.jpg ../../0240.gif
convert -resize x360 -delay 100 -loop 0 {0000..0019}.jpg ../../0360.gif
convert -resize x480 -delay 100 -loop 0 {0000..0019}.jpg ../../0480.gif

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 480x240+0+0 $image; done
montage {0000..0023}.jpg -tile 24x1 -mode Concatenate ../../024.000.jpg 2> error
montage {0024..0047}.jpg -tile 24x1 -mode Concatenate ../../024.001.jpg 2> error
montage {0048..0071}.jpg -tile 24x1 -mode Concatenate ../../024.002.jpg 2> error

#20160
cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 560x280+0+0 $image; done
montage {0000..0035}.jpg -tile 36x1 -mode Concatenate ../../036.000.jpg 2> error
montage {0036..0071}.jpg -tile 36x1 -mode Concatenate ../../036.001.jpg 2> error

