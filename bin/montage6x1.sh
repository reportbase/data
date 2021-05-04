rm 006*.jpg
montage orig/{0000..0071}.jpg -tile 6x1 -mode Concatenate 006.0%02d.jpg 2> /dev/null

