#shopt -s nocaseglob
#mkdir tmp
#mkdir small 2> tmp/out
#rm small/*.jpg

#a=0001
#for i in *.jpg ; do
#  new=$(printf "%04d.jpg" "$a") #04 pad to length of 4
#  mv -- "$i" "$new" 2> tmp/out 
#  let a=a+1
#done

#for image in *.jpg ; do convert $image -resize 40% -quality 70 small/$image; done
node photos.js *.jpg > photos.ini
#gzip -f photos.ini 2> tmp/out
#gzip -f default.ini 2> tmp/out
#gzip -f vectors.ini 2> tmp/out
