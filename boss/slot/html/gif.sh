PROJECTNAME=$1

. meta.ini
GROUPNAME="${name}"
if [ -z "$GROUPNAME" ]
then
    GROUPNAME=${PWD##*/}
fi

rm *.gif
convert 360.gif -sampling-factor 4:2:0 -strip -quality 80 -resize x240 -interlace JPEG -colorspace RGB 240.gif
convert 360.gif -sampling-factor 4:2:0 -strip -quality 80 -resize x320 -interlace JPEG -colorspace RGB 320.gif
convert 360.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x80 -annotate +0+40 "$title" -gravity south -annotate +0+15 "repba.com?$GROUPNAME"  360.gif

