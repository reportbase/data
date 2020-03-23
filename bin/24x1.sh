mkdir -p 24x1 
for image in 4*.jpg; do convert $image -resize x1024 -quality 75 24x1/$image; done

cd 24x1
for image in 4*.jpg; do convert $image -gravity center -crop 384x1024+0+0 $image; done

montage {4000..4023}.jpg -tile 24x1 -mode Concatenate 0000.jpg 2> error
montage {4024..4047}.jpg -tile 24x1 -mode Concatenate 0001.jpg 2> error
montage {4048..4071}.jpg -tile 24x1 -mode Concatenate 0002.jpg 2> error
montage {4072..4095}.jpg -tile 24x1 -mode Concatenate 0003.jpg 2> error
montage {4096..4119}.jpg -tile 24x1 -mode Concatenate 0004.jpg 2> error
montage {4120..4143}.jpg -tile 24x1 -mode Concatenate 0005.jpg 2> error
montage {4144..4167}.jpg -tile 24x1 -mode Concatenate 0006.jpg 2> error
montage {4168..4191}.jpg -tile 24x1 -mode Concatenate 0007.jpg 2> error
montage {4192..4215}.jpg -tile 24x1 -mode Concatenate 0008.jpg 2> error
montage {4216..4239}.jpg -tile 24x1 -mode Concatenate 0009.jpg 2> error
montage {4240..4263}.jpg -tile 24x1 -mode Concatenate 0010.jpg 2> error
montage {4264..4287}.jpg -tile 24x1 -mode Concatenate 0011.jpg 2> error
montage {4288..4311}.jpg -tile 24x1 -mode Concatenate 0012.jpg 2> error
montage {4312..4335}.jpg -tile 24x1 -mode Concatenate 0013.jpg 2> error
montage {4336..4359}.jpg -tile 24x1 -mode Concatenate 0014.jpg 2> error
montage {4360..4383}.jpg -tile 24x1 -mode Concatenate 0015.jpg 2> error
montage {4384..4407}.jpg -tile 24x1 -mode Concatenate 0016.jpg 2> error
montage {4408..4431}.jpg -tile 24x1 -mode Concatenate 0017.jpg 2> error

rm 4*.jpg



