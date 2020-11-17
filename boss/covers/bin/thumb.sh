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

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x360 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 220x280+0+0 $image; done
convert -delay 100 -loop 0 {0000..0017}.jpg 280.gif
convert 280.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x72 -annotate +0+30 "$HEADER" -gravity south -annotate +0+5 "$SUBHEADER"  ../../0220.0280.gif

#mkdir -p tmp
#cp ../*.jpg tmp
#cd tmp
#pbase.sh south
#cd ..
#cp tmp/*.jpg .

#for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
#montage {0000..0035}.jpg -tile 36x1 -mode Concatenate ../../036.000.jpg 2> error
#montage {0036..0071}.jpg -tile 36x1 -mode Concatenate ../../036.001.jpg 2> error
#montage {0072..0107}.jpg -tile 36x1 -mode Concatenate ../../036.002.jpg 2> error
#montage {0108..0143}.jpg -tile 36x1 -mode Concatenate ../../036.003.jpg 2> error
#montage {0000..0071}.jpg -tile 72x1 -mode Concatenate ../../072.000.jpg 2> error
#montage {0072..0143}.jpg -tile 72x1 -mode Concatenate ../../072.001.jpg 2> error

#rm -r tmp

