mkdir -p thumb
cd thumb

#12960x240
cp ../*.jpg .

convert -resize x260 -delay 100 -loop 0 {0000..0011}.jpg ../../0260.000.gif
convert -resize x260 -delay 100 -loop 0 {0012..0023}.jpg ../../0260.001.gif
convert -resize x260 -delay 100 -loop 0 {0024..0035}.jpg ../../0260.002.gif
convert -resize x260 -delay 100 -loop 0 {0036..0047}.jpg ../../0260.003.gif
convert -resize x260 -delay 100 -loop 0 {0048..0059}.jpg ../../0260.004.gif
convert -resize x260 -delay 100 -loop 0 {0060..0071}.jpg ../../0260.005.gif

convert -resize x280 -delay 100 -loop 0 {0000..0019}.jpg ../../0240.gif
convert -resize x480 -delay 100 -loop 0 {0000..0019}.jpg ../../0480.gif

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 260x240+0+0 $image; done
montage {0000..0035}.jpg -tile 36x1 -mode Concatenate ../../036.000.jpg 2> error
montage {0036..0071}.jpg -tile 36x1 -mode Concatenate ../../036.001.jpg 2> error

#33120x280
cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 420x280+0+0 $image; done
montage {0000..0071}.jpg -tile 72x1 -mode Concatenate ../../072.000.jpg 2> error

