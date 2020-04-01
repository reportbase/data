mkdir -p 9x2 
for image in 4*.jpg; do convert $image -resize x512 -quality 75 9x2/$image; done

cd 9x2
#for image in 4*.jpg; do convert $image -gravity center -crop 512+0+0 $image; done

montage {4000..4017}.jpg -tile 9x2 -mode Concatenate 0000.jpg 2> error
montage {4018..4035}.jpg -tile 9x2 -mode Concatenate 0001.jpg 2> error
montage {4036..4153}.jpg -tile 9x2 -mode Concatenate 0002.jpg 2> error
montage {4154..4171}.jpg -tile 9x2 -mode Concatenate 0003.jpg 2> error

rm 4*.jpg
for image in *.jpg; do convert $image -resize x1080 -quality 75 $image; done



