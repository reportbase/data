. ../meta.ini
SUBHEADER=${title}
. ../../meta.ini
HEADER=${title}

mkdir -p thumb
cd thumb
rm ../../*.gif

cp ../*.jpg .
if [ $width -le 720 ]; 
then
    for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x360 -colorspace RGB $image ; done
    for image in *.jpg; do convert $image -gravity center -crop 180x220+0+0 $image; done
    convert -delay 100 -loop 0 {0000..0011}.jpg ../../0180.0220.gif
    convert -delay 100 -loop 0 {0000..0011}.jpg ../../180.220.gif
    convert ../../0180.0220.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$HEADER" -gravity south -annotate +0+5 "$SUBHEADER"  ../../0180.0220.gif
else
    for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x220 -colorspace RGB $image ; done
    for image in *.jpg; do convert $image -gravity center -crop 180x220+0+0 $image; done
    convert -delay 100 -loop 0 {0000..0011}.jpg ../../0180.0220.gif
    convert -delay 100 -loop 0 {0000..0011}.jpg ../../180.220.gif
    convert ../../0180.0220.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$HEADER" -gravity south -annotate +0+5 "$SUBHEADER"  ../../0180.0220.gif
fi

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 490x280+0+0 $image; done
convert -delay 100 -loop 0 {0000..0011}.jpg ../../0490.0280.gif
convert -delay 100 -loop 0 {0000..0011}.jpg ../../490.280.gif
convert ../../0490.0280.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$HEADER" -gravity south -annotate +0+5 "$SUBHEADER"  ../../0490.0280.gif

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 420x240+0+0 $image; done
convert -delay 100 -loop 0 {0000..0011}.jpg ../../0420.0240.gif
convert -delay 100 -loop 0 {0000..0011}.jpg ../../420.240.gif
convert ../../0420.0240.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$HEADER" -gravity south -annotate +0+5 "$SUBHEADER"  ../../0420.0240.gif

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 240x240+0+0 $image; done
convert -delay 100 -loop 0 {0000..0011}.jpg ../../0240.0240.gif
convert -delay 100 -loop 0 {0000..0011}.jpg ../../240.240.gif
convert ../../0240.0240.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$HEADER" -gravity south -annotate +0+5 "$SUBHEADER"  ../../0240.0240.gif
convert ../../0240.0240.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x36 -annotate +0+30 "$SUGHEADER" -gravity south ../../240.240.gif


