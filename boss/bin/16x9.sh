mkdir 16x9 2> error
for image in 4*.jpg; do convert $image -resize x512 -quality 75 16x9/$image; done

cd 16x9
for image in 4*.jpg; do convert $image -gravity center -crop 668x512+0+0 $image; done

montage {4000..4143}.jpg -tile 16x9 -mode Concatenate 0000.jpg 2> error
montage {4144..4287}.jpg -tile 16x9 -mode Concatenate 0001.jpg 2> error
montage {4288..4431}.jpg -tile 16x9 -mode Concatenate 0002.jpg 2> error

for image in {0000..0002}.jpg; do convert $image -resize x1080 -quality 75 $image 2> error; done


