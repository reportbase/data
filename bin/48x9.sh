mkdir -p 48x9 
for image in 4*.jpg; do convert $image -resize x150 -quality 75 48x9/$image; done

cd 48x9
for image in 4*.jpg; do convert $image -gravity center -crop 400x150+0+0 $image; done

montage {4000..4431}.jpg -tile 48x9 -mode Concatenate 0000.jpg 2> error

for image in {0000..001}.jpg; do convert $image -resize x1080 -quality 75 $image 2> error; done
rm 4*


