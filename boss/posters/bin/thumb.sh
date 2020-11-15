mkdir -p thumb
cd thumb
rm ../../*.gif

convert -resize x160 -delay 100 -loop 0 {0000..0011}.jpg ../../0160.000.gif
convert -resize x160 -delay 100 -loop 0 {0012..0023}.jpg ../../0160.001.gif
convert -resize x160 -delay 100 -loop 0 {0024..0035}.jpg ../../0160.002.gif
convert -resize x160 -delay 100 -loop 0 {0036..0047}.jpg ../../0160.003.gif
convert -resize x160 -delay 100 -loop 0 {0048..0059}.jpg ../../0160.004.gif
convert -resize x160 -delay 100 -loop 0 {0060..0071}.jpg ../../0160.005.gif
convert ../../0160.000.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$1" -gravity south -annotate +0+5 "$2"  ../../0160.gif

convert -resize x240 -delay 100 -loop 0 {0000..0011}.jpg ../../0240.000.gif
convert -resize x240 -delay 100 -loop 0 {0012..0023}.jpg ../../0240.001.gif
convert -resize x240 -delay 100 -loop 0 {0024..0035}.jpg ../../0240.002.gif
convert -resize x240 -delay 100 -loop 0 {0036..0047}.jpg ../../0240.003.gif
convert -resize x240 -delay 100 -loop 0 {0048..0059}.jpg ../../0240.004.gif
convert -resize x240 -delay 100 -loop 0 {0060..0071}.jpg ../../0240.005.gif
convert ../../0240.000.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$1" -gravity south -annotate +0+5 "$2"  ../../0240.gif

convert -resize x360 -delay 100 -loop 0 {0000..0011}.jpg ../../0360.000.gif
convert -resize x360 -delay 100 -loop 0 {0012..0023}.jpg ../../0360.001.gif
convert -resize x360 -delay 100 -loop 0 {0024..0035}.jpg ../../0360.002.gif
convert -resize x360 -delay 100 -loop 0 {0036..0047}.jpg ../../0360.003.gif
convert -resize x360 -delay 100 -loop 0 {0048..0059}.jpg ../../0360.004.gif
convert -resize x360 -delay 100 -loop 0 {0060..0071}.jpg ../../0360.005.gif
convert ../../0360.000.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$1" -gravity south -annotate +0+5 "$2"  ../../0360.gif

mkdir -p tmp
cp ../*.jpg tmp
cd tmp
pbase.sh south
cd ..

cp tmp/*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
montage {0000..0071}.jpg -tile 72x1 -mode Concatenate ../../072.000.jpg 2> error
montage {0072..0143}.jpg -tile 72x1 -mode Concatenate ../../072.001.jpg 2> error
montage {0000..0143}.jpg -tile 144x1 -mode Concatenate ../../144.000.jpg 2> error

rm -r tmp

