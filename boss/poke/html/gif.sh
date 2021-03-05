PROJECTNAME=$1

. meta.ini
GROUPNAME="${name}"
if [ -z "$GROUPNAME" ]
then
    GROUPNAME=${PWD##*/}
fi

mkdir -p tmp
cd tmp

cp ../orig/{0000..0008}.jpg .

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x420 -colorspace RGB $image ; done
convert -delay 100 -loop 0 {0000..0008}.jpg ../420.gif
convert ../420.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x110 -annotate +0+40 "$title" -gravity south -annotate +0+15 "repba.com?$GROUPNAME" -annotate +0+70 "ABCDEFG" ../420.gif

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x360 -colorspace RGB $image ; done
convert -delay 100 -loop 0 {0000..0008}.jpg ../360.gif
convert ../360.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x80 -annotate +0+40 "$title" -gravity south -annotate +0+15 "repba.com?$GROUPNAME"  ../360.gif

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
convert -delay 100 -loop 0 {0000..0008}.jpg ../240.gif
convert ../240.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x80 -annotate +0+40 "$title" -gravity south -annotate +0+15 "repba.com?$GROUPNAME"  ../240.gif

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x180 -colorspace RGB $image ; done
convert -delay 100 -loop 0 {0000..0008}.jpg ../180.gif
convert ../180.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x80 -annotate +0+40 "$title" -gravity south -annotate +0+15 "repba.com?$GROUPNAME"  ../180.gif

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
convert -delay 100 -loop 0 {0000..0008}.jpg ../240.gif

cp ../orig/{0000..0008}.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x320 -colorspace RGB $image ; done
convert -delay 100 -loop 0 {0000..0008}.jpg ../320.gif

cd ..
rm -r tmp
