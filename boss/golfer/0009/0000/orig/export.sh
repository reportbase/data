#ffmpeg -i in.mp4 -filter:v "crop=out_w:out_h:x:y" out.mp4
#Where the options are as follows:
#out_w is the width of the output rectangle
#out_h is the height of the output rectangle
#x and y specify the top left corner of the output rectangle
rm *.jpg
ffmpeg -i *.MOV -vf "fps=30" -s 540x960 -q:v 2 %04d.jpg
for image in *.jpg; do convert $image -rotate 0 -gravity center -crop +0+30 -crop -0-250 $(basename -- "$image") ; done

