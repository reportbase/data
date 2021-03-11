PROJECTNAME=$1

. meta.ini
GROUPNAME="${name}"
if [ -z "$GROUPNAME" ]
then
    GROUPNAME=${PWD##*/}
fi

convert 320.gif -font DejaVu-Sans-Bold -pointsize 18 -coalesce -gravity South -background white -splice 0x80 -annotate +0+40 "$title" -gravity south -annotate +0+15 "repba.com?$GROUPNAME"  360.gif

