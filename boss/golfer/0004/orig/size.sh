#for image in untouched/*.JPG; do convert $image -gravity center -crop 2800x3800-465-160 sized/$(basename -- "$image") ; done
rm sized/*
for image in untouched/*.JPG; do convert $image -quality 80 -brightness-contrast 15x50 -resize x1080 sized/$(basename -- "$image") ; done
#-modulate 140,140,110 intensity, saturation, hue,  100= no change
#-brightness-contrast 20x35 20=brightness, 35=contrast