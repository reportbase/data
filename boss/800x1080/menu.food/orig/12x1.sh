cd ..
rm 4*
cd orig

montage {0000..0023}.jpg -tile 12x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0024..0047}.jpg -tile 12x1 -mode Concatenate '../52%03d.jpg' 2> error
montage {0048..0071}.jpg -tile 12x1 -mode Concatenate '../53%03d.jpg' 2> error
montage {0072..0095}.jpg -tile 12x1 -mode Concatenate '../54%03d.jpg' 2> error
montage {0096..0143}.jpg -tile 12x1 -mode Concatenate '../55%03d.jpg' 2> error

cd ..
rename4.sh 4000
webp.sh

