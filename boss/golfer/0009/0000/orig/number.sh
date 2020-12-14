#https://stackoverflow.com/questions/55469545/difference-between-caption-draw-annotate-label-while-adding-text-to-imagemagi

#pbase center/north/south

for NAME in *.jpg; do
STR=$(identify -format '%[basename]' $NAME)
STR=$(echo $STR 1 | awk '{print $1 + $2}')
convert -background black -bordercolor black -fill white \
   -pointsize 50 -font  MADEOuterSans-Black -gravity $1 label:$STR              \
   -trim -border 10 -channel A -fx '(lightness/2)+.5'    \
   -gravity $1 $NAME +swap -geometry +0+20 -composite $NAME
done

#mogrify -set comment "comment" 0000.jpg #%[comment]
#https://stackoverflow.com/questions/32108623/image-magick-padding-font
