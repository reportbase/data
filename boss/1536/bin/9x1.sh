cd ..
rm 4* 5*

cd orig
montage {0000..0008}.jpg -tile 9x1 -mode Concatenate '../_0000.jpg' 2> error
montage {0009..0017}.jpg -tile 9x1 -mode Concatenate '../_0001.jpg' 2> error
montage {0018..0026}.jpg -tile 9x1 -mode Concatenate '../_0002.jpg' 2> error
montage {0027..0035}.jpg -tile 9x1 -mode Concatenate '../_0003.jpg' 2> error
montage {0036..0044}.jpg -tile 9x1 -mode Concatenate '../_0004.jpg' 2> error
montage {0045..0053}.jpg -tile 9x1 -mode Concatenate '../_0005.jpg' 2> error
montage {0054..0062}.jpg -tile 9x1 -mode Concatenate '../_0006.jpg' 2> error
montage {0063..0071}.jpg -tile 9x1 -mode Concatenate '../_0007.jpg' 2> error

montage {0000..0005}.jpg -tile 6x1 -mode Concatenate '../4000.jpg' 2> error
montage {0006..0011}.jpg -tile 6x1 -mode Concatenate '../4001.jpg' 2> error
montage {0012..0017}.jpg -tile 6x1 -mode Concatenate '../4002.jpg' 2> error
montage {0018..0023}.jpg -tile 6x1 -mode Concatenate '../4003.jpg' 2> error
montage {0024..0029}.jpg -tile 6x1 -mode Concatenate '../4004.jpg' 2> error
montage {0030..0035}.jpg -tile 6x1 -mode Concatenate '../4005.jpg' 2> error
montage {0036..0041}.jpg -tile 6x1 -mode Concatenate '../4006.jpg' 2> error
montage {0042..0047}.jpg -tile 6x1 -mode Concatenate '../4007.jpg' 2> error
montage {0048..0053}.jpg -tile 6x1 -mode Concatenate '../4008.jpg' 2> error
montage {0054..0059}.jpg -tile 6x1 -mode Concatenate '../4009.jpg' 2> error
montage {0060..0065}.jpg -tile 6x1 -mode Concatenate '../4010.jpg' 2> error
montage {0066..0071}.jpg -tile 6x1 -mode Concatenate '../4011.jpg' 2> error

cd ..
convert _0000.jpg -quality 80 4000.webp
convert _0001.jpg -quality 80 4001.webp
convert _0002.jpg -quality 80 4002.webp
convert _0003.jpg -quality 80 4003.webp
convert _0004.jpg -quality 80 4004.webp
convert _0005.jpg -quality 80 4005.webp
convert _0006.jpg -quality 80 4006.webp
convert _0007.jpg -quality 80 4007.webp

rm _*

