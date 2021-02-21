PROJECTNAME=$1

. meta.ini
GROUPNAME="${name}"
if [ -z "$GROUPNAME" ]
then
    GROUPNAME=${PWD##*/}
fi

rm *.gif
mkdir -p tmp
cd tmp

cp ../orig/*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x360 -colorspace RGB $image ; done
convert -delay 100 -loop 0 {0000..0008}.jpg ../360.gif
convert ../360.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x80 -annotate +0+40 "$title" -gravity south -annotate +0+15 "repba.com?$PROJECTNAME.$GROUPNAME"  ../360.gif

#for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
#for image in *.jpg; do convert $image -gravity center -crop 420x240+0+0 $image; done
#convert -delay 100 -loop 0 {0000..0008}.jpg ../420.240.gif

#cp ../orig/*.jpg .
#for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
#for image in *.jpg; do convert $image -gravity center -crop 240x240+0+0 $image; done
#convert -delay 100 -loop 0 {0000..0008}.jpg ../240.240.gif

cd ..
rm -r tmp
