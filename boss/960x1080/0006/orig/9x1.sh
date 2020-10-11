cd ..
rm 4* 5*
cd orig

montage {0000..0035}.jpg -tile 9x1 -mode Concatenate '../51%03d.jpg' 2> error

cd ..
rename4.sh 4000

