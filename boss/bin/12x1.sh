mkdir -p 12x1 
for image in 4*.jpg ; do convert $image -resize x1080 -quality 75 12x1/$image; done

cd 12x1
montage {4000..4059}.jpg -tile 12x1 -mode Concatenate '51%04d.jpg' 2> error
montage {4060..4119}.jpg -tile 12x1 -mode Concatenate '52%04d.jpg' 2> error
montage {4120..4179}.jpg -tile 12x1 -mode Concatenate '53%04d.jpg' 2> error
montage {4180..4239}.jpg -tile 12x1 -mode Concatenate '54%04d.jpg' 2> error
montage {4240..4299}.jpg -tile 12x1 -mode Concatenate '55%04d.jpg' 2> error
montage {4300..4359}.jpg -tile 12x1 -mode Concatenate '56%04d.jpg' 2> error
montage {4360..4419}.jpg -tile 12x1 -mode Concatenate '57%04d.jpg' 2> error
montage {4420..4479}.jpg -tile 12x1 -mode Concatenate '58%04d.jpg' 2> error

rm 4*.jpg
rename.sh 0000



