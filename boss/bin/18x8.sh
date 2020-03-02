mkdir -p 18x8 
for image in 4*.jpg; do convert $image -resize x512 -quality 75 18x8/$image; done

cd 18x8
for image in 4*.jpg; do convert $image -gravity center -crop 768x512+0+0 $image; done

montage {4000..4143}.jpg -tile 18x8 -mode Concatenate 0000.jpg 2> error
montage {4144..4287}.jpg -tile 18x8 -mode Concatenate 0001.jpg 2> error
montage {4288..4431}.jpg -tile 18x8 -mode Concatenate 0002.jpg 2> error

for image in {0000..002}.jpg; do convert $image -resize x1080 -quality 75 $image 2> error; done
rm 4*


