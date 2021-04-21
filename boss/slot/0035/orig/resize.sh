rm *.jpg
for image in unto1/*.JPG; do convert $image -gravity center -brightness-contrast 20x45 -crop +150+100 -crop -400-100 $(basename -- "$image") ; done
#for image in unto1/*.jpg; do convert $image -rotate 0 -gravity center -crop +500+0 -crop -500-0 $(basename -- "$image") ; done
#for image in untouched1jpg; do convert $image -rotate 0 -gravity center -crop 3000x3000+0-800 $(basename -- "$image") ; done

for image in *.JPG; do convert $image -rotate 90 -quality 80  -resize x1080 $(basename -- "$image") ; done

for image in *.JPG; do convert $image -gravity center -crop 879x1080+0+0 $(basename -- "$image") ; done


#for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -resize x640 -interlace JPEG -colorspace RGB $image ; done
#for image in 4*.jpg 5*; do convert $image -resize 900x1080! -quality 80 $image; done


