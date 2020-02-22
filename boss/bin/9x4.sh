mkdir 9x4 2> tmp
for image in *.jpg ; do convert $image -resize x256 -quality 75 9x4/$image; done

cd 9x4
montage *.jpg -tile 9x4 -mode Concatenate 0.jpg
rm 4*.jpg



