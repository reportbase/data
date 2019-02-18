shopt -s nocaseglob

a=83000
for i in *.svg; do
  new=$(printf "%04d.svg" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done

