mkdir -p 9x1 
for image in 4*.jpg ; do convert $image -resize x1080 -quality 75 9x1/$image; done

cd 9x1
montage {4000..4017}.jpg -tile 9x1 -mode Concatenate '51%04d.jpg' 2> error

rm 4*.jpg
rename.sh 0000


