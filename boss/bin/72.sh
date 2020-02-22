mkdir 128 2> tmp
for image in *.jpg ; do convert $image -resize x128 -quality 75 128/$image; done

cd 128
for image in *.jpg ; do convert $image -crop 180x108+0+0 $image; done

montage 4*.jpg -tile 24x3 -mode Concatenate m24x3.jpg
montage 4*.jpg -tile 18x4 -mode Concatenate m18x4.jpg
montage 4*.jpg -tile 12x6 -mode Concatenate m12x6.jpg




