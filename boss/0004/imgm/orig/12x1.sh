cd ..
rm 4*
cd orig

montage {0000..0036}.jpg -tile 12x1 -mode Concatenate '../51%03d.jpg' 2> error

cd ..
rename.sh 4000
for image in 4*.jpg; do convert $image -resize x720 -quality 75 $image; done
webp.sh

