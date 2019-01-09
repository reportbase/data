shopt -s nocaseglob

a=87300
for i in 80*.svg; do
  new=$(printf "%05d.svg" "$a") 
  mv -i -- "$i" "$new"
  let a=a+1
done

