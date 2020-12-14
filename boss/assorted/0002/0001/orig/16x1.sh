cd ..
rm 4* 5*

cd orig
montage {0000..0015}.jpg -tile 16x1 -mode Concatenate '../_0000.jpg' 2> error
montage {0016..0031}.jpg -tile 16x1 -mode Concatenate '../_0001.jpg' 2> error
montage {0032..0047}.jpg -tile 16x1 -mode Concatenate '../_0002.jpg' 2> error
montage {0048..0063}.jpg -tile 16x1 -mode Concatenate '../_0003.jpg' 2> error
montage {0064..0079}.jpg -tile 16x1 -mode Concatenate '../_0004.jpg' 2> error
montage {0080..0095}.jpg -tile 16x1 -mode Concatenate '../_0005.jpg' 2> error
montage {0096..0111}.jpg -tile 16x1 -mode Concatenate '../_0006.jpg' 2> error
montage {0112..0127}.jpg -tile 16x1 -mode Concatenate '../_0007.jpg' 2> error
montage {0128..0143}.jpg -tile 16x1 -mode Concatenate '../_0008.jpg' 2> error

montage {0000..0011}.jpg -tile 12x1 -mode Concatenate '../4000.jpg' 2> error
montage {0012..0023}.jpg -tile 12x1 -mode Concatenate '../4001.jpg' 2> error
montage {0024..0035}.jpg -tile 12x1 -mode Concatenate '../4002.jpg' 2> error
montage {0036..0047}.jpg -tile 12x1 -mode Concatenate '../4003.jpg' 2> error
montage {0048..0059}.jpg -tile 12x1 -mode Concatenate '../4004.jpg' 2> error
montage {0060..0071}.jpg -tile 12x1 -mode Concatenate '../4005.jpg' 2> error
montage {0072..0083}.jpg -tile 12x1 -mode Concatenate '../4006.jpg' 2> error
montage {0084..0095}.jpg -tile 12x1 -mode Concatenate '../4007.jpg' 2> error
montage {0096..0107}.jpg -tile 12x1 -mode Concatenate '../4008.jpg' 2> error
montage {0108..0119}.jpg -tile 12x1 -mode Concatenate '../4009.jpg' 2> error
montage {0120..0131}.jpg -tile 12x1 -mode Concatenate '../4010.jpg' 2> error
montage {0132..0143}.jpg -tile 12x1 -mode Concatenate '../4011.jpg' 2> error

cd ..
convert _0000.jpg -quality 80 4000.webp
convert _0001.jpg -quality 80 4001.webp
convert _0002.jpg -quality 80 4002.webp
convert _0003.jpg -quality 80 4003.webp
convert _0004.jpg -quality 80 4004.webp
convert _0005.jpg -quality 80 4005.webp
convert _0006.jpg -quality 80 4006.webp
convert _0007.jpg -quality 80 4007.webp
convert _0008.jpg -quality 80 4008.webp

rm _*

