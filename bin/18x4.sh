mkdir -p 18x4 
for image in 4*.jpg; do convert $image -resize x256 -quality 75 18x4/$image; done

cd 18x4
for image in 4*.jpg; do convert $image -gravity center -crop 384x256+0+0 $image; done

montage {4000..4071}.jpg -tile 18x4 -mode Concatenate 0000.jpg 2> error
montage {4072..4143}.jpg -tile 18x4 -mode Concatenate 0001.jpg 2> error
montage {4144..4215}.jpg -tile 18x4 -mode Concatenate 0002.jpg 2> error
montage {4216..4287}.jpg -tile 18x4 -mode Concatenate 0003.jpg 2> error
montage {4288..4359}.jpg -tile 18x4 -mode Concatenate 0004.jpg 2> error
montage {4360..4431}.jpg -tile 18x4 -mode Concatenate 0005.jpg 2> error

for image in {0000..005}.jpg; do convert $image -resize x1080 -quality 75 $image 2> error; done
rm 4*


