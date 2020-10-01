cd ..
rm 4* 5*
cd orig

montage {0000..0143}.jpg -tile 18x1 -mode Concatenate '../51%03d.jpg' 2> error

cd ..
rename4.sh 4000

