cd html/splash
RESIZE=$(printf "x%s" $2)
resize.sh $RESIZE
CLIP=$(printf "%sx%s" $1 $2)
clip.sh $CLIP
convert *.jpg +append ../splash.jpg
cd ../..
