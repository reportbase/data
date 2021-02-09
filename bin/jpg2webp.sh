cd ..
for i in *.jpg; do
     convert $i ${i/.jpg/.webp}
done

