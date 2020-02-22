mkdir 6x6 2> tmp
for image in *.jpg ; do convert $image -resize x256 -quality 75 6x6/$image; done

cd 6x6
montage *.jpg -tile 6x6 -mode Concatenate 0.jpg
rm 4*.jpg



