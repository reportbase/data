mkdir 4x3 2> tmp
for image in *.jpg ; do convert $image -resize x512 -quality 75 4x3/$image; done

cd 4x3
montage *.jpg -tile 4x3 -mode Concatenate 0.jpg
rm 4*.jpg



