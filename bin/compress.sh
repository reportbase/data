cd ..
for i in *.jpg; do
     convert $i -quality 60 ${i/.jpg/.webp}
     convert $i -quality 60 $i
done

