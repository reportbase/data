#400x3000
#for image in untouched/0000.jpg; do convert $image -rotate 90 -gravity center -crop 2600x2200-200-200 sized/$(basename -- "$image") ; done
for image in untouched/*.jpg; do convert $image -rotate 0 -gravity center -crop 2000x2000-500+0 sized/$(basename -- "$image") ; done
for image in sized/*.jpg; do convert $image -quality 80 -brightness-contrast 20x35 -resize x640 sized/$(basename -- "$image") ; done

