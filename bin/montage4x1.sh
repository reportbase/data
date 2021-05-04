rm 004*.jpg
montage orig/{0000..0071}.jpg -tile 4x1 -mode Concatenate 004.0%02d.jpg 2> /dev/null

