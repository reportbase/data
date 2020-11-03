#rename 4000
a=$1
for i in *.ttf ; do
  new=$(printf "%04d.ttf" "$a") #08 pad to length of 8
  mv -- "$i" "$new" 2> tmp
  let a=a+1
done



