rm html/splash/*.webp 
source <(grep width meta.ini)
source <(grep height meta.ini)
PROJECTNAME=${PWD##*/} 
html/./meta.sh $PROJECTNAME 
all.sh $PROJECTNAME 
html/./links.sh $PROJECTNAME 

#vksw.sh width height
cd html/splash
RESIZE=$(printf "x%s" $height)
for image in *.webp; do convert $image -gravity center -crop $RESIZE+0+0 $image; done
CLIP=$(printf "%sx%s" $width $height )
echo $CLIP
for image in *.webp; do convert $image -gravity center -crop $CLIP+0+0 $image; done
#for image in *.webp; do convert $image -resize $CLIP -background white -compose Copy -gravity center -extent $CLIP -quality 90 $image; done
convert *.webp +append ../splash.jpg

