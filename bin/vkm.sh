#montage orig/*.jpg -tile 1x1 -mode Concatenate 001.0%02d.jpg 2> /dev/null
#montage orig/*.jpg -tile 2x1 -mode Concatenate 002.0%02d.jpg 2> /dev/null
montage orig/*.jpg -tile 3x1 -mode Concatenate 003.0%02d.jpg 2> /dev/null
#montage orig/*.jpg -tile 4x1 -mode Concatenate 004.0%02d.jpg 2> /dev/null
montage orig/*.jpg -tile 6x1 -mode Concatenate 006.0%02d.jpg 2> /dev/null
#montage orig/*.jpg -tile 8x1 -mode Concatenate 008.0%02d.jpg 2> /dev/null
montage orig/*.jpg -tile 9x1 -mode Concatenate 009.0%02d.jpg 2> /dev/null

