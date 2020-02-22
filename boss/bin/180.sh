mkdir 128 2> tmp
for image in *.jpg ; do convert $image -resize x128 -quality 75 128/$image; done

cd 128
for image in *.jpg ; do convert $image -crop 180x108+0+0 $image; done

montage 4*.jpg -tile 20x9 -mode Concatenate m20x9.jpg
montage 4*.jpg -tile 30x6 -mode Concatenate m30x6.jpg
montage 4*.jpg -tile 45x4 -mode Concatenate m45x4.jpg



