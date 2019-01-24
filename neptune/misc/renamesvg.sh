shopt -s nocaseglob

a=30000
for i in *.svg; do
  new=$(printf "%05d.svg" "$a") 
  mv -i -- "$i" "$new"
  let a=a+1
done

