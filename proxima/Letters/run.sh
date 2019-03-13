shopt -s nocaseglob

a=0001
for i in *.svg ; do
  new=$(printf "%04d.svg" "$a") #04 pad to length of 4
  mv -- "$i" "$new" 2> tmp/out 
  let a=a+1
done

node photos.js *.svg > photos.ini
gzip -f photos.ini 2> tmp/out
gzip -f default.ini 2> tmp/out
gzip -f vectors.ini 2> tmp/out
