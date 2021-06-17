montage orig/*.jpg -tile 1x1 -mode Concatenate 002.0%02d.jpg 2> /dev/null
montage orig/*.jpg -tile 2x1 -mode Concatenate 004.0%02d.jpg 
montage orig/*.jpg -tile 3x1 -mode Concatenate 006.0%02d.jpg 2> /dev/null

