for image in untouched/*.jpg; do convert $image -gravity center -crop 2200x2600-500-200 sized/$(basename -- "$image") ; done
for image in sized/*.jpg; do convert $image -quality 80 -brightness-contrast 20x35 -resize x1080 sized/$(basename -- "$image") ; done
#-modulate 140,140,110 intensity, saturation, hue,  100= no change
#-brightness-contrast 20x35 20=brightness, 35=contrast