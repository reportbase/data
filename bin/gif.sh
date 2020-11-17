. ../meta.ini
SUBHEADER=${title}
. ../../meta.ini
HEADER=${title}

mkdir -p thumb
cd thumb
rm ../../*.gif

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 460x280+0+0 $image; done
convert -delay 100 -loop 0 {0000..0011}.jpg ../../0440.0280.000.gif
convert -delay 100 -loop 0 {0012..0023}.jpg ../../0440.0280.001.gif
convert -delay 100 -loop 0 {0024..0035}.jpg ../../0440.0280.002.gif
convert -delay 100 -loop 0 {0036..0047}.jpg ../../0440.0280.003.gif
convert -delay 100 -loop 0 {0048..0059}.jpg ../../0440.0280.004.gif
convert -delay 100 -loop 0 {0060..0071}.jpg ../../0440.0280.005.gif
convert ../../0440.0280.000.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$HEADER" -gravity south -annotate +0+5 "$SUBHEADER"  ../../0440.0280.gif

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x360 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 300x360+0+0 $image; done
convert -delay 100 -loop 0 {0000..0011}.jpg ../../0300.0360.000.gif
convert -delay 100 -loop 0 {0012..0023}.jpg ../../0300.0360.001.gif
convert -delay 100 -loop 0 {0024..0035}.jpg ../../0300.0360.002.gif
convert -delay 100 -loop 0 {0036..0047}.jpg ../../0300.0360.003.gif
convert -delay 100 -loop 0 {0048..0059}.jpg ../../0300.0360.004.gif
convert -delay 100 -loop 0 {0060..0071}.jpg ../../0300.0360.005.gif
convert ../../0300.0360.000.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$HEADER" -gravity south -annotate +0+5 "$SUBHEADER"  ../../0300.0360.gif

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 230x280+0+0 $image; done
convert -delay 100 -loop 0 {0000..0011}.jpg ../../0220.0280.000.gif
convert -delay 100 -loop 0 {0012..0023}.jpg ../../0220.0280.001.gif
convert -delay 100 -loop 0 {0024..0035}.jpg ../../0220.0280.002.gif
convert -delay 100 -loop 0 {0036..0047}.jpg ../../0220.0280.003.gif
convert -delay 100 -loop 0 {0048..0059}.jpg ../../0220.0280.004.gif
convert -delay 100 -loop 0 {0060..0071}.jpg ../../0220.0280.005.gif
convert ../../0220.0280.000.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$HEADER" -gravity south -annotate +0+5 "$SUBHEADER" ../../0220.0280.gif

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x220 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 180x220+0+0 $image; done
convert -delay 100 -loop 0 {0000..0011}.jpg ../../0180.0220.000.gif
convert -delay 100 -loop 0 {0012..0023}.jpg ../../0180.0220.001.gif
convert -delay 100 -loop 0 {0024..0035}.jpg ../../0180.0220.002.gif
convert -delay 100 -loop 0 {0036..0047}.jpg ../../0180.0220.003.gif
convert -delay 100 -loop 0 {0048..0059}.jpg ../../0180.0220.004.gif
convert -delay 100 -loop 0 {0060..0071}.jpg ../../0180.0220.005.gif
convert ../../0180.0220.000.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$HEADER" -gravity south -annotate +0+5 "$SUBHEADER" ../../0180.0220.gif

cp ../*.jpg .
convert -resize x520 -delay 100 -loop 0 {0000..0017}.jpg ../../0520.gif


