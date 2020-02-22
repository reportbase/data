a=4000
for i in *.jpg ; do
  new=$(printf "%04d.jpg" "$a") #04 pad to length of 4
  mv -- "$i" "$new" 2> tmp
  let a=a+1
done



