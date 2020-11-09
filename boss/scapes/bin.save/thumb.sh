mkdir -p thumb
cd thumb

#12960x240
cp ../*.jpg .
rm *.gif
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x360 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 305x360+0+0 $image; done
convert -delay 100 -loop 0 {0000..0011}.jpg ../../0300.0360.000.gif
convert -delay 100 -loop 0 {0012..0023}.jpg ../../0300.0360.001.gif
convert -delay 100 -loop 0 {0024..0035}.jpg ../../0300.0360.002.gif
convert -delay 100 -loop 0 {0036..0047}.jpg ../../0300.0360.003.gif
convert -delay 100 -loop 0 {0048..0059}.jpg ../../0300.0360.004.gif
convert -delay 100 -loop 0 {0060..0071}.jpg ../../0300.0360.005.gif

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 225x280+0+0 $image; done
convert -delay 100 -loop 0 {0000..0011}.jpg ../../0220.0280.000.gif
convert -delay 100 -loop 0 {0012..0023}.jpg ../../0220.0280.001.gif
convert -delay 100 -loop 0 {0024..0035}.jpg ../../0220.0280.002.gif
convert -delay 100 -loop 0 {0036..0047}.jpg ../../0220.0280.003.gif
convert -delay 100 -loop 0 {0048..0059}.jpg ../../0220.0280.004.gif
convert -delay 100 -loop 0 {0060..0071}.jpg ../../0220.0280.005.gif

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x220 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 170x220+0+0 $image; done
convert -delay 100 -loop 0 {0000..0011}.jpg ../../0160.0220.000.gif
convert -delay 100 -loop 0 {0012..0023}.jpg ../../0160.0220.001.gif
convert -delay 100 -loop 0 {0024..0035}.jpg ../../0160.0220.002.gif
convert -delay 100 -loop 0 {0036..0047}.jpg ../../0160.0220.003.gif
convert -delay 100 -loop 0 {0048..0059}.jpg ../../0160.0220.004.gif
convert -delay 100 -loop 0 {0060..0071}.jpg ../../0160.0220.005.gif

cp ../*.jpg .
convert -resize x225 -delay 100 -loop 0 {0000..0017}.jpg ../../0240.gif
convert -resize x360 -delay 100 -loop 0 {0000..0017}.jpg ../../0360.gif
convert -resize x490 -delay 100 -loop 0 {0000..0017}.jpg ../../0480.gif

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 260x240+0+0 $image; done
montage {0000..0035}.jpg -tile 36x1 -mode Concatenate ../../036.000.jpg 2> error
montage {0036..0071}.jpg -tile 36x1 -mode Concatenate ../../036.001.jpg 2> error

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 420x280+0+0 $image; done
montage {0000..0071}.jpg -tile 72x1 -mode Concatenate ../../072.000.jpg 2> error

