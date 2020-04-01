mkdir -p 12x1x1080
for image in 4*.jpg; do convert $image -resize x1080 -quality 75 12x1x1080/$image; done

cd 12x1x1080

montage {4000..4011}.jpg -tile 12x1 -mode Concatenate 0000.jpg 2> error
montage {4012..4023}.jpg -tile 12x1 -mode Concatenate 0001.jpg 2> error
montage {4024..4035}.jpg -tile 12x1 -mode Concatenate 0002.jpg 2> error
montage {4036..4047}.jpg -tile 12x1 -mode Concatenate 0003.jpg 2> error
montage {4048..4059}.jpg -tile 12x1 -mode Concatenate 0004.jpg 2> error
montage {4060..4171}.jpg -tile 12x1 -mode Concatenate 0005.jpg 2> error
montage {4172..4183}.jpg -tile 12x1 -mode Concatenate 0006.jpg 2> error
montage {4184..4195}.jpg -tile 12x1 -mode Concatenate 0007.jpg 2> error
montage {4196..4207}.jpg -tile 12x1 -mode Concatenate 0008.jpg 2> error

rm 4*.jpg



