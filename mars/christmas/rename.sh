shopt -s nocaseglob

a=33000
for i in *.jpg; do
  new=$(printf "%04d.jpg" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done

a=34000
for i in *.svg; do
  new=$(printf "%04d.svg" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done

