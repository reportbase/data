#rename 4000
a=$1
for i in *.jpg *.JPG; do
  new=$(printf "%04d.jpg" "$a") #08 pad to length of 8
  mv -- "$i" "$new" 2> error
  let a=a+1
done



