mkdir -p thumb
cd thumb

#8640
cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
montage {0000..0035}.jpg -tile 36x1 -mode Concatenate ../../036.000.jpg 2> error
montage {0036..0071}.jpg -tile 36x1 -mode Concatenate ../../036.001.jpg 2> error
montage {0072..0107}.jpg -tile 36x1 -mode Concatenate ../../036.002.jpg 2> error
montage {0108..0143}.jpg -tile 36x1 -mode Concatenate ../../036.003.jpg 2> error

#17280
montage {0000..0071}.jpg -tile 72x1 -mode Concatenate ../../072.000.jpg 2> error
montage {0072..0143}.jpg -tile 72x1 -mode Concatenate ../../072.001.jpg 2> error


