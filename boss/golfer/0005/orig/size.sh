#for image in untouched/*.JPG; do convert $image -gravity center -crop 3000x3800-200-100 sized/$(basename -- "$image") ; done
for image in sized/*.JPG; do convert $image -quality 80 -brightness-contrast 10x45 sized/$(basename -- "$image") ; done
#-modulate 140,140,110 intensity, saturation, hue,  100= no change
#-brightness-contrast 20x35 20=brightness, 35=contrast