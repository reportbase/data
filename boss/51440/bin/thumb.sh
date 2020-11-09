mkdir thumb
cd thumb

#10240x240
cp ../*.jpg .

convert -resize x280 -delay 100 -loop 0 {0000..0005}.jpg ../../0280.000.gif
convert -resize x280 -delay 100 -loop 0 {0006..0011}.jpg ../../0280.001.gif
convert -resize x280 -delay 100 -loop 0 {0012..0017}.jpg ../../0280.002.gif
convert -resize x280 -delay 100 -loop 0 {0018..0023}.jpg ../../0280.003.gif
convert -resize x280 -delay 100 -loop 0 {0024..0029}.jpg ../../0280.004.gif
convert -resize x280 -delay 100 -loop 0 {0030..0035}.jpg ../../0280.005.gif

convert -resize x360 -delay 100 -loop 0 {0000..0019}.jpg ../../0360.gif
convert -resize x480 -delay 100 -loop 0 {0000..0019}.jpg ../../0480.gif


for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 960x240+0+0 $image; done
montage {0000..0011}.jpg -tile 12x1 -mode Concatenate ../../012.000.jpg 2> error
montage {0012..0023}.jpg -tile 12x1 -mode Concatenate ../../012.001.jpg 2> error
montage {0024..0035}.jpg -tile 12x1 -mode Concatenate ../../012.002.jpg 2> error

#20160
cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 960x280+0+0 $image; done
montage {0000..0017}.jpg -tile 18x1 -mode Concatenate ../../018.000.jpg 2> error
montage {0018..0035}.jpg -tile 18x1 -mode Concatenate ../../018.001.jpg 2> error


