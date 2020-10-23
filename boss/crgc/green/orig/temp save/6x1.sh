cd ..
rm 4* 5*
cd orig

montage {0001..0006}.jpg -tile 6x1 -mode Concatenate '../4000.jpg' 2> error
montage {0007..0012}.jpg -tile 6x1 -mode Concatenate '../4001.jpg' 2> error
montage {0013..0018}.jpg -tile 6x1 -mode Concatenate '../4002.jpg' 2> error

cd ..

