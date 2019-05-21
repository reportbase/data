shopt -s nocaseglob
mkdir tmp
mkdir small 2> tmp/out
rm small/*.png

#a=0001
#for i in *.png ; do
#  new=$(printf "%04d.png" "$a") #04 pad to length of 4
#  mv -- "$i" "$new" 2> tmp/out 
#  let a=a+1
#done

for image in *.png; do convert $image -resize 80% -quality 80 small/$image; done
node photos.js *.png > photos.ini
