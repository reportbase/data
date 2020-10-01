cd ..
rm 4* 5*
cd orig

montage {0000..0003}.jpg -tile 2x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0004..0007}.jpg -tile 2x1 -mode Concatenate '../52%03d.jpg' 2> error
montage {0008..0011}.jpg -tile 2x1 -mode Concatenate '../53%03d.jpg' 2> error
montage {0012..0015}.jpg -tile 2x1 -mode Concatenate '../54%03d.jpg' 2> error
montage {0016..0019}.jpg -tile 2x1 -mode Concatenate '../55%03d.jpg' 2> error
montage {0020..0023}.jpg -tile 2x1 -mode Concatenate '../56%03d.jpg' 2> error
montage {0024..0025}.jpg -tile 2x1 -mode Concatenate '../57%03d.jpg' 2> error

cd ..
rename4.sh 4000
for image in 4*.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace RGB $image ; done
