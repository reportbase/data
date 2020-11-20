. ../meta.ini
SUBHEADER=${title}
. ../../meta.ini
HEADER=${title}

mkdir -p thumb
cd thumb
rm ../../*.gif

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 180x220+0+0 $image; done
convert -delay 100 -loop 0 {0000..0017}.jpg 220.gif
convert 220.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$HEADER" -gravity south -annotate +0+5 "$SUBHEADER"  ../../0180.0220.gif


