#ffmpeg -i in.mp4 -filter:v "crop=out_w:out_h:x:y" out.mp4
#Where the options are as follows:
#out_w is the width of the output rectangle
#out_h is the height of the output rectangle
#x and y specify the top left corner of the output rectangle
rm *.jpg
#ffmpeg -i *.MOV -vf "fps=30,crop=1080:1240:0:300" -q:v 2 %04d.jpg
ffmpeg -i *.mov -vf "fps=30" -q:v 2 %04d.jpg

