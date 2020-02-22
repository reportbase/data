mkdir 6x2 2> tmp
for image in *.jpg ; do convert $image -resize x384 -quality 75 6x2/$image; done

cd 6x2
montage *.jpg -tile 6x2 -mode Concatenate 0.jpg
rm 4*.jpg



