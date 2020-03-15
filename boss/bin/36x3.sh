mkdir -p 36x3
for image in 4*.jpg; do convert $image -resize x384 -quality 75 36x3/$image; done

cd 36x3
for image in 4*.jpg; do convert $image -gravity center -crop 384x384+0+0 $image; done

montage {4000..4107}.jpg -tile 36x3 -mode Concatenate 0000.jpg 2> error
montage {4108..4215}.jpg -tile 36x3 -mode Concatenate 0001.jpg 2> error
montage {4216..4323}.jpg -tile 36x3 -mode Concatenate 0002.jpg 2> error
montage {4324..4431}.jpg -tile 36x3 -mode Concatenate 0003.jpg 2> error

for image in {0000..004}.jpg; do convert $image -resize x1080 -quality 75 $image 2> error; done
rm 4*


