mkdir -p 24x12 
for image in 4*.jpg; do convert $image -resize x256 -quality 75 24x12/$image; done

cd 24x12
for image in 4*.jpg; do convert $image -gravity center -crop 384x256+0+0 $image; done

montage {4000..4287}.jpg -tile 24x12 -mode Concatenate 0000.jpg 2> error
montage {4288..4431}.jpg -tile 24x12 -mode Concatenate 0001.jpg 2> error

for image in {0000..001}.jpg; do convert $image -resize x1080 -quality 75 $image 2> error; done
rm 4*


