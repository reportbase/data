shopt -s nocaseglob

a=54000
for i in 508*.svg; do
  new=$(printf "%04d.svg" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done

