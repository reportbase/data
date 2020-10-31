cd thumbsrc
cp ../tuned/*.jpg .
./all.sh

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x300 -colorspace RGB $image ; done
montage {0000..0017}.jpg -tile 18x1 -mode Concatenate 5000.jpg 
mv 5000.jpg ../../5000.webp

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
montage {0000..0017}.jpg -tile 18x1 -mode Concatenate a.jpg 2> error
mv a.jpg ../../5000.jpg


 

 
 

 
