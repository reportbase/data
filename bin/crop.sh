#left,top      right,bottom
convert test.png -crop +180+140 -crop -60-140 cropped.png

convert text.png -gravity north -chop 0x180 -gravity east -chop 60x0 -gravity south -chop 0x140 -gravity west -chop 140x0 cropped.png

for image in *.jpg; do convert $image -gravity center -shave 400x0 $(basename -- "$image") ; done

convert -crop "%[fx:w-(180+60)]"x"%[fx:h-(140+140)]"+180+140 result
