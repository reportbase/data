mkdir thumb
cd thumb

#10240x240
cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 960x240+0+0 $image; done
montage {0000..0011}.jpg -tile 12x1 -mode Concatenate ../../012.000.jpg 2> error
montage {0012..0023}.jpg -tile 12x1 -mode Concatenate ../../012.001.jpg 2> error
montage {0024..0035}.jpg -tile 12x1 -mode Concatenate ../../012.002.jpg 2> error
montage {0036..0047}.jpg -tile 12x1 -mode Concatenate ../../012.003.jpg 2> error
montage {0048..0059}.jpg -tile 12x1 -mode Concatenate ../../012.004.jpg 2> error
montage {0060..0071}.jpg -tile 12x1 -mode Concatenate ../../012.005.jpg 2> error

#20160
cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 960x280+0+0 $image; done
montage {0000..0017}.jpg -tile 18x1 -mode Concatenate ../../018.000.jpg 2> error
montage {0018..0035}.jpg -tile 18x1 -mode Concatenate ../../018.001.jpg 2> error
montage {0036..0053}.jpg -tile 18x1 -mode Concatenate ../../018.002.jpg 2> error
montage {0054..0071}.jpg -tile 18x1 -mode Concatenate ../../018.003.jpg 2> error

