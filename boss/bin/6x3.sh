mkdir 6x3 2> tmp
for image in *.jpg ; do convert $image -resize x384 -quality 75 6x3/$image; done

cd 6x3
montage *.jpg -tile 6x3 -mode Concatenate 0.jpg
rm 4*.jpg



