shopt -s nocaseglob
mkdir tmp
mkdir small 2> tmp/out
rm small/*.png 2> tmp/out

#a=0001
#for i in *.svg ; do
#  new=$(printf "%04d.svg" "$a") #04 pad to length of 4
#  mv -- "$i" "$new" 2> tmp/out 
#  let a=a+1
#done

mogrify -size 640 -channel rgba -background "rgba(0,0,0,0)" -format png *.svg
mv *.png small
node photos.js small/*.png > photos.ini
gzip -f photos.ini 2> tmp/out
