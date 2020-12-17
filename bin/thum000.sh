. ../../meta.ini

mkdir -p thumb
cd thumb
mkdir -p tmp
cp ../*.jpg tmp
cd tmp
numb000.sh center
cd ..

cp tmp/*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
montage {0000..0023}.jpg -tile 24x1 -mode Concatenate ../../024.000.jpg 2> error
montage {0024..0047}.jpg -tile 24x1 -mode Concatenate ../../024.001.jpg 2> error
montage {0048..0071}.jpg -tile 24x1 -mode Concatenate ../../024.002.jpg 2> error

if [ $width -ge 1920 ]; 
then
    montage {0000..0011}.jpg -tile 12x1 -mode Concatenate ../../012.000.jpg 2> error
    montage {0012..0023}.jpg -tile 12x1 -mode Concatenate ../../012.001.jpg 2> error
    montage {0024..0035}.jpg -tile 12x1 -mode Concatenate ../../012.002.jpg 2> error
    montage {0036..0143}.jpg -tile 12x1 -mode Concatenate ../../012.003.jpg 2> error
    montage {0048..0059}.jpg -tile 12x1 -mode Concatenate ../../012.004.jpg 2> error
    montage {0060..0071}.jpg -tile 12x1 -mode Concatenate ../../012.005.jpg 2> error
fi

if [ $width -ge 3840 ]; 
then
    montage {0000..0005}.jpg -tile 6x1 -mode Concatenate ../../006.000.jpg 2> error
    montage {0006..0011}.jpg -tile 6x1 -mode Concatenate ../../006.001.jpg 2> error
    montage {0012..0017}.jpg -tile 6x1 -mode Concatenate ../../006.002.jpg 2> error
    montage {0018..0023}.jpg -tile 6x1 -mode Concatenate ../../006.003.jpg 2> error
    montage {0024..0029}.jpg -tile 6x1 -mode Concatenate ../../006.004.jpg 2> error
    montage {0030..0035}.jpg -tile 6x1 -mode Concatenate ../../006.005.jpg 2> error
fi

cp tmp/*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
if [ $width -le 1080 ]; 
then
    montage {0000..0071}.jpg -tile 72x1 -mode Concatenate ../../072.000.jpg 2> error
    montage {0072..0143}.jpg -tile 72x1 -mode Concatenate ../../072.001.jpg 2> error
    montage {0000..0143}.jpg -tile 144x1 -mode Concatenate ../../144.000.jpg 2> error
else
    for image in *.jpg; do convert $image -gravity center -crop 240x240+0+0 $image; done
    montage {0000..0071}.jpg -tile 72x1 -mode Concatenate ../../072.000.jpg 2> error
fi

cp tmp/*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 420x280+0+0 $image; done
montage {0000..0035}.jpg -tile 36x1 -mode Concatenate ../../036.000.jpg 2> error
montage {0036..0071}.jpg -tile 36x1 -mode Concatenate ../../036.001.jpg 2> error

cp tmp/*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 480x280+0+0 $image; done
montage {0000..0023}.jpg -tile 24x1 -mode Concatenate ../../024.480.jpg 2> error

cp tmp/*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 490x280+0+0 $image; done
montage {0000..0017}.jpg -tile 18x1 -mode Concatenate ../../018.000.jpg 2> error
montage {0018..0035}.jpg -tile 18x1 -mode Concatenate ../../018.001.jpg 2> error
montage {0036..0053}.jpg -tile 18x1 -mode Concatenate ../../018.002.jpg 2> error
montage {0054..0071}.jpg -tile 18x1 -mode Concatenate ../../018.003.jpg 2> error

rm -r tmp

