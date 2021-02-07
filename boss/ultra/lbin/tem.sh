montage orig/{0000..0003}.jpg -tile 4x1 -mode Concatenate 004.000.jpg 2> error
montage orig/{0004..0007}.jpg -tile 4x1 -mode Concatenate 004.001.jpg 2> error
montage orig/{0008..0011}.jpg -tile 4x1 -mode Concatenate 004.002.jpg 2> error
montage orig/{0012..0015}.jpg -tile 4x1 -mode Concatenate 004.003.jpg 2> error
montage orig/{0016..0019}.jpg -tile 4x1 -mode Concatenate 004.004.jpg 2> error
montage orig/{0020..0023}.jpg -tile 4x1 -mode Concatenate 004.005.jpg 2> error
for image in 004*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done










