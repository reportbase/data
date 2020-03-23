mkdir -p 18x3 
for image in 4*.jpg; do convert $image -resize x384 -quality 75 18x3/$image; done

cd 18x3
for image in 4*.jpg; do convert $image -gravity center -crop 512x384+0+0 $image; done

montage {4000..4053}.jpg -tile 18x3 -mode Concatenate 0000.jpg 2> error
montage {4054..4161}.jpg -tile 18x3 -mode Concatenate 0001.jpg 2> error
montage {4162..4215}.jpg -tile 18x3 -mode Concatenate 0002.jpg 2> error
montage {4216..4269}.jpg -tile 18x3 -mode Concatenate 0003.jpg 2> error
montage {4270..4323}.jpg -tile 18x3 -mode Concatenate 0004.jpg 2> error
montage {4324..4377}.jpg -tile 18x3 -mode Concatenate 0005.jpg 2> error
montage {4378..4431}.jpg -tile 18x3 -mode Concatenate 0006.jpg 2> error

rm 4*.jpg
for image in *.jpg; do convert $image -resize x1080 -quality 75 $image; done



