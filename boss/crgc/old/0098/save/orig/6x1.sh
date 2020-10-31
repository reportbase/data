cd ..
rm 4*
cd orig

montage {0001..0006}.jpg -tile 6x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0007..0012}.jpg -tile 6x1 -mode Concatenate '../53%03d.jpg' 2> error
montage {0013..0018}.jpg -tile 6x1 -mode Concatenate '../54%03d.jpg' 2> error
montage {0019..0024}.jpg -tile 6x1 -mode Concatenate '../55%03d.jpg' 2> error
montage {0025..0030}.jpg -tile 6x1 -mode Concatenate '../56%03d.jpg' 2> error
montage {0031..0036}.jpg -tile 6x1 -mode Concatenate '../57%03d.jpg' 2> error
montage {0037..0042}.jpg -tile 6x1 -mode Concatenate '../58%03d.jpg' 2> error
montage {0043..0048}.jpg -tile 6x1 -mode Concatenate '../59%03d.jpg' 2> error
montage {0049..0054}.jpg -tile 6x1 -mode Concatenate '../60%03d.jpg' 2> error

cd ..
rename.sh 4000
webp.sh

