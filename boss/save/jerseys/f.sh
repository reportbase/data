  width=`identify -format %w 0000.jpg`; \
  convert -background '#0008' -fill white -gravity center -size ${width}x140 \
          -font Candice -pointsize 70 \
          caption:"Faerie Dragons love hot apple pies\!" \
          0000.jpg +swap -gravity south -composite f.jpg
  
  
