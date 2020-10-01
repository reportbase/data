cd ..
rm 4* 5*
cd orig

montage {0000..0071}.jpg -tile 12x1 -mode Concatenate '../51%03d.jpg' 2> error

cd ..
rename4.sh 4000

#for image in *.jpg; do convert $image -resize x1440 $image; done
#for image in 4*.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 65 -interlace JPEG -resize x1080 -colorspace RGB $image ; done
