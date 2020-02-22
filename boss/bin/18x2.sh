mkdir 18x2 2> tmp
for image in *.jpg ; do convert $image -resize x512 -quality 75 18x2/$image; done

cd 18x2
montage *.jpg -tile 18x2 -mode Concatenate 0.jpg
rm 4*.jpg



