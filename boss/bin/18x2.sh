mkdir -p 18x2 
for image in 4*.jpg; do convert $image -resize x512 -quality 75 18x2/$image; done

cd 18x2
for image in 4*.jpg; do convert $image -gravity center -crop 640x512+0+0 $image; done

montage {4000..4035}.jpg -tile 18x2 -mode Concatenate 0000.jpg 2> error
montage {4036..4071}.jpg -tile 18x2 -mode Concatenate 0001.jpg 2> error
montage {4072..4107}.jpg -tile 18x2 -mode Concatenate 0002.jpg 2> error
montage {4108..4143}.jpg -tile 18x2 -mode Concatenate 0003.jpg 2> error
montage {4144..4179}.jpg -tile 18x2 -mode Concatenate 0004.jpg 2> error
montage {4180..4215}.jpg -tile 18x2 -mode Concatenate 0005.jpg 2> error
montage {4216..4251}.jpg -tile 18x2 -mode Concatenate 0006.jpg 2> error
montage {4252..4287}.jpg -tile 18x2 -mode Concatenate 0007.jpg 2> error
montage {4288..4323}.jpg -tile 18x2 -mode Concatenate 0008.jpg 2> error
montage {4324..4359}.jpg -tile 18x2 -mode Concatenate 0009.jpg 2> error
montage {4360..4395}.jpg -tile 18x2 -mode Concatenate 0010.jpg 2> error
montage {4396..4431}.jpg -tile 18x2 -mode Concatenate 0011.jpg 2> error
montage {4432..4467}.jpg -tile 18x2 -mode Concatenate 0012.jpg 2> error

rm 4*.jpg
for image in *.jpg; do convert $image -resize x1080 -quality 75 $image; done



