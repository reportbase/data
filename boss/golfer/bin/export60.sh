#ffmpeg -i in.mp4 -filter:v "crop=out_w:out_h:x:y" out.mp4
#Where the options are as follows:
#out_w is the width of the output rectangle
#out_h is the height of the output rectangle
#x and y specify the top left corner of the output rectangle
rm *.jpg
ffmpeg -i *.mov -vf "fps=60" -s 600x960 -q:v 2 unt0/%04d.jpg
for image in unt0/*.jpg; do convert $image -rotate 0 -gravity center -brightness-contrast 10x10 -crop +0+0 -crop -0-150 $(basename -- "$image") ; done

