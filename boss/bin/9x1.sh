mkdir -p 9x1 
for image in 4*.jpg ; do convert $image -resize x768 -quality 75 9x1/$image; done

cd 9x1
montage {4000..4089}.jpg -tile 9x1 -mode Concatenate '51%04d.jpg' 2> error
montage {4090..4179}.jpg -tile 9x1 -mode Concatenate '52%04d.jpg' 2> error
montage {4180..4269}.jpg -tile 9x1 -mode Concatenate '53%04d.jpg' 2> error
montage {4270..4359}.jpg -tile 9x1 -mode Concatenate '54%04d.jpg' 2> error
montage {4360..4449}.jpg -tile 9x1 -mode Concatenate '55%04d.jpg' 2> error
montage {4450..4539}.jpg -tile 9x1 -mode Concatenate '56%04d.jpg' 2> error

rm 4*.jpg
rename.sh 0000

