for image in untouched/*.JPG; do convert $image -gravity north -crop 930x1280+55+00 sized/$(basename -- "$image") ; done
#for image in sized/*.JPG; do convert $image -quality 80 -brightness-contrast 05x20 sized/$(basename -- "$image") ; done
#-modulate 140,140,110 intensity, saturation, hue,  100= no change
#-brightness-contrast 20x35 20=brightness, 35=contrast
#-gravity North -crop 970x960+50+00