mkdir 3x1 2> tmp
for image in *.jpg ; do convert $image -resize x768 -quality 75 3x1/$image; done

cd 3x1
montage {4000..4089}.jpg -tile 3x1 -mode Concatenate a.jpg
montage {4090..4179}.jpg -tile 3x1 -mode Concatenate b.jpg
montage {4180..4269}.jpg -tile 3x1 -mode Concatenate c.jpg
montage {4270..4359}.jpg -tile 3x1 -mode Concatenate d.jpg
rm 4*.jpg


