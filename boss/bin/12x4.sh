mkdir -p 12x4 
for image in 4*.jpg; do convert $image -resize x512 -quality 75 12x4/$image; done

cd 12x4
for image in 4*.jpg; do convert $image -gravity center -crop 716x512+0+0 $image; done

montage {4000..4047}.jpg -tile 12x4 -mode Concatenate 0000.jpg 2> error
montage {4048..4095}.jpg -tile 12x4 -mode Concatenate 0001.jpg 2> error
montage {4096..4143}.jpg -tile 12x4 -mode Concatenate 0002.jpg 2> error
montage {4144..4191}.jpg -tile 12x4 -mode Concatenate 0003.jpg 2> error
montage {4192..4239}.jpg -tile 12x4 -mode Concatenate 0004.jpg 2> error
montage {4240..4287}.jpg -tile 12x4 -mode Concatenate 0005.jpg 2> error
montage {4288..4335}.jpg -tile 12x4 -mode Concatenate 0006.jpg 2> error
montage {4336..4383}.jpg -tile 12x4 -mode Concatenate 0007.jpg 2> error
montage {4384..4431}.jpg -tile 12x4 -mode Concatenate 0008.jpg 2> error

rm 4*.jpg
for image in *.jpg; do convert $image -resize x1080 -quality 75 $image; done



