shopt -s nocaseglob
rm small/*.png

a=0001
for i in *.png ; do
  new=$(printf "%04d.png" "$a") #04 pad to length of 4
  mv -- "$i" "$new" 2> tmp/out 
  let a=a+1
done

node photos.js *.png > photos.ini
gzip -f photos.ini 2> tmp/out
