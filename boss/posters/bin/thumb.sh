mkdir -p thumb
cd thumb

#10080
cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 140x240+0+0 $image; done
montage {0000..0071}.jpg -tile 72x1 -mode Concatenate ../../072.000.jpg 2> error
montage {0072..0143}.jpg -tile 72x1 -mode Concatenate ../../072.001.jpg 2> error

#20160
montage {0000..0143}.jpg -tile 144x1 -mode Concatenate ../../144.000.jpg 2> error


