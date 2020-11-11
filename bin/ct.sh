#mogrify -set comment "comment" 0000.jpg #%[comment]

for NAME in *.jpg ; do
STR=$(identify -format '%[basename]' $NAME)
STR=$(echo $STR 0 | awk '{print $1 - $2}')
convert -background black -bordercolor black -fill white \
   -size 620x380 -font Cantarell-Bold -gravity center caption:$STR              \
   -trim -border 20 -channel A -fx '(lightness/2)+.5'    \
   -gravity center $NAME +swap -composite $NAME
done



