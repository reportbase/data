mkdir -p 6x1 
for image in 4*.jpg ; do convert $image -resize x1080 -quality 75 6x1/$image; done

cd 6x1
montage {4000..4035}.jpg -tile 6x1 -mode Concatenate '51%04d.jpg' 2> error
montage {4036..4071}.jpg -tile 6x1 -mode Concatenate '52%04d.jpg' 2> error
montage {4072..4107}.jpg -tile 6x1 -mode Concatenate '53%04d.jpg' 2> error
montage {4108..4143}.jpg -tile 6x1 -mode Concatenate '54%04d.jpg' 2> error
montage {4144..4179}.jpg -tile 6x1 -mode Concatenate '55%04d.jpg' 2> error
montage {4180..4215}.jpg -tile 6x1 -mode Concatenate '56%04d.jpg' 2> error
montage {4216..4251}.jpg -tile 6x1 -mode Concatenate '57%04d.jpg' 2> error
montage {4252..4287}.jpg -tile 6x1 -mode Concatenate '58%04d.jpg' 2> error
montage {4288..4323}.jpg -tile 6x1 -mode Concatenate '59%04d.jpg' 2> error
montage {4324..4359}.jpg -tile 6x1 -mode Concatenate '60%04d.jpg' 2> error
montage {4360..4395}.jpg -tile 6x1 -mode Concatenate '61%04d.jpg' 2> error
montage {4396..4431}.jpg -tile 6x1 -mode Concatenate '62%04d.jpg' 2> error

rm 4*.jpg
rename.sh 0000


