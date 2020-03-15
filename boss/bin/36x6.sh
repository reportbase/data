mkdir -p 36x6 
for image in 4*.jpg; do convert $image -resize x384 -quality 75 36x6/$image; done

cd 36x6
for image in 4*.jpg; do convert $image -gravity center -crop 512x384+0+0 $image; done

montage {4000..4215}.jpg -tile 36x6 -mode Concatenate 0000.jpg 2> error
montage {4216..4431}.jpg -tile 36x6 -mode Concatenate 0001.jpg 2> error

for image in {0000..001}.jpg; do convert $image -resize x1080 -quality 75 $image 2> error; done
rm 4*


