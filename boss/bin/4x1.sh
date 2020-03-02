mkdir -p 4x1 
for image in 4*.jpg ; do convert $image -resize x768 -quality 75 4x1/$image; done

cd 4x1
montage {4000..4039}.jpg -tile 4x1 -mode Concatenate '51%04d.jpg' 2> error
montage {4040..4079}.jpg -tile 4x1 -mode Concatenate '52%04d.jpg' 2> error
montage {4080..4119}.jpg -tile 4x1 -mode Concatenate '53%04d.jpg' 2> error
montage {4120..4159}.jpg -tile 4x1 -mode Concatenate '54%04d.jpg' 2> error
montage {4160..4199}.jpg -tile 4x1 -mode Concatenate '55%04d.jpg' 2> error
montage {4200..4239}.jpg -tile 4x1 -mode Concatenate '56%04d.jpg' 2> error
montage {4240..4279}.jpg -tile 4x1 -mode Concatenate '57%04d.jpg' 2> error
montage {4280..4319}.jpg -tile 4x1 -mode Concatenate '58%04d.jpg' 2> error
montage {4320..4359}.jpg -tile 4x1 -mode Concatenate '59%04d.jpg' 2> error
montage {4360..4399}.jpg -tile 4x1 -mode Concatenate '61%04d.jpg' 2> error
montage {4400..4439}.jpg -tile 4x1 -mode Concatenate '62%04d.jpg' 2> error
montage {4440..4479}.jpg -tile 4x1 -mode Concatenate '63%04d.jpg' 2> error

rm 4*.jpg
rename.sh 0000



