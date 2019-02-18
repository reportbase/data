shopt -s nocaseglob

a=1
for i in *.jpg ; do
  new=$(printf "%04d.jpg" "$a") #04 pad to length of 4
  mv -i -- "$i" "$new"
  let a=a+1
done

mkdir small
for image in *.jpg ; do convert $image -resize 40% -quality 70 small/$image; done
