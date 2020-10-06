cd ..
rm 4* 5*
cd orig

montage {0000..0017}.jpg -tile 3x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0018..0035}.jpg -tile 3x1 -mode Concatenate '../52%03d.jpg' 2> error
montage {0036..0053}.jpg -tile 3x1 -mode Concatenate '../53%03d.jpg' 2> error

cd ..
rename4.sh 4000

