mkdir -p thumb
cd thumb

#10080
cp ../*.jpg .

convert -resize x160 -delay 100 -loop 0 {0000..0011}.jpg ../../0160.000.gif
convert -resize x160 -delay 100 -loop 0 {0012..0023}.jpg ../../0160.001.gif
convert -resize x160 -delay 100 -loop 0 {0024..0035}.jpg ../../0160.002.gif
convert -resize x160 -delay 100 -loop 0 {0036..0047}.jpg ../../0160.003.gif
convert -resize x160 -delay 100 -loop 0 {0048..0059}.jpg ../../0160.004.gif
convert -resize x160 -delay 100 -loop 0 {0060..0071}.jpg ../../0160.005.gif

convert -resize x240 -delay 100 -loop 0 {0000..0011}.jpg ../../0240.000.gif
convert -resize x240 -delay 100 -loop 0 {0012..0023}.jpg ../../0240.001.gif
convert -resize x240 -delay 100 -loop 0 {0024..0035}.jpg ../../0240.002.gif
convert -resize x240 -delay 100 -loop 0 {0036..0047}.jpg ../../0240.003.gif
convert -resize x240 -delay 100 -loop 0 {0048..0059}.jpg ../../0240.004.gif
convert -resize x240 -delay 100 -loop 0 {0060..0071}.jpg ../../0240.005.gif

convert -resize x360 -delay 100 -loop 0 {0000..0011}.jpg ../../0360.000.gif
convert -resize x360 -delay 100 -loop 0 {0012..0023}.jpg ../../0360.001.gif
convert -resize x360 -delay 100 -loop 0 {0024..0035}.jpg ../../0360.002.gif
convert -resize x360 -delay 100 -loop 0 {0036..0047}.jpg ../../0360.003.gif
convert -resize x360 -delay 100 -loop 0 {0048..0059}.jpg ../../0360.004.gif
convert -resize x360 -delay 100 -loop 0 {0060..0071}.jpg ../../0360.005.gif

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 140x240+0+0 $image; done
montage {0000..0071}.jpg -tile 72x1 -mode Concatenate ../../072.000.jpg 2> error
montage {0072..0143}.jpg -tile 72x1 -mode Concatenate ../../072.001.jpg 2> error

#20160
montage {0000..0143}.jpg -tile 144x1 -mode Concatenate ../../144.000.jpg 2> error


