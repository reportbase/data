cd ..
rm 4* 5*

cd orig
montage {0000..0002}.jpg -tile 3x1 -mode Concatenate '../_0.jpg' 2> error
montage {0003..0005}.jpg -tile 3x1 -mode Concatenate '../_1.jpg' 2> error
montage {0006..0008}.jpg -tile 3x1 -mode Concatenate '../_2.jpg' 2> error
montage {0009..0011}.jpg -tile 3x1 -mode Concatenate '../_3.jpg' 2> error
montage {0012..0014}.jpg -tile 3x1 -mode Concatenate '../_4.jpg' 2> error
montage {0015..0017}.jpg -tile 3x1 -mode Concatenate '../_5.jpg' 2> error
montage {0018..0020}.jpg -tile 3x1 -mode Concatenate '../_6.jpg' 2> error
montage {0021..0023}.jpg -tile 3x1 -mode Concatenate '../_7.jpg' 2> error
montage {0024..0026}.jpg -tile 3x1 -mode Concatenate '../_8.jpg' 2> error
montage {0027..0029}.jpg -tile 3x1 -mode Concatenate '../_9.jpg' 2> error
montage {0030..0032}.jpg -tile 3x1 -mode Concatenate '../_10.jpg' 2> error
montage {0033..0035}.jpg -tile 3x1 -mode Concatenate '../_11.jpg' 2> error

montage {0000..0001}.jpg -tile 2x1 -mode Concatenate '../4000.jpg' 2> error
montage {0002..0003}.jpg -tile 2x1 -mode Concatenate '../4001.jpg' 2> error
montage {0004..0005}.jpg -tile 2x1 -mode Concatenate '../4002.jpg' 2> error
montage {0006..0007}.jpg -tile 2x1 -mode Concatenate '../4003.jpg' 2> error
montage {0008..0009}.jpg -tile 2x1 -mode Concatenate '../4004.jpg' 2> error
montage {0010..0011}.jpg -tile 2x1 -mode Concatenate '../4005.jpg' 2> error
montage {0012..0013}.jpg -tile 2x1 -mode Concatenate '../4006.jpg' 2> error
montage {0014..0015}.jpg -tile 2x1 -mode Concatenate '../4007.jpg' 2> error
montage {0016..0017}.jpg -tile 2x1 -mode Concatenate '../4008.jpg' 2> error
montage {0018..0019}.jpg -tile 2x1 -mode Concatenate '../4009.jpg' 2> error
montage {0020..0021}.jpg -tile 2x1 -mode Concatenate '../4010.jpg' 2> error
montage {0022..0023}.jpg -tile 2x1 -mode Concatenate '../4011.jpg' 2> error
montage {0024..0025}.jpg -tile 2x1 -mode Concatenate '../4012.jpg' 2> error
montage {0026..0027}.jpg -tile 2x1 -mode Concatenate '../4013.jpg' 2> error
montage {0028..0029}.jpg -tile 2x1 -mode Concatenate '../4014.jpg' 2> error
montage {0030..0031}.jpg -tile 2x1 -mode Concatenate '../4015.jpg' 2> error
montage {0032..0033}.jpg -tile 2x1 -mode Concatenate '../4016.jpg' 2> error
montage {0034..0035}.jpg -tile 2x1 -mode Concatenate '../4017.jpg' 2> error

cd ..
convert _0.jpg -quality 80 4000.webp
convert _1.jpg -quality 80 4001.webp
convert _2.jpg -quality 80 4002.webp
convert _3.jpg -quality 80 4003.webp
convert _4.jpg -quality 80 4004.webp
convert _5.jpg -quality 80 4005.webp
convert _6.jpg -quality 80 4006.webp
convert _7.jpg -quality 80 4007.webp
convert _8.jpg -quality 80 4008.webp
convert _9.jpg -quality 80 4009.webp
convert _10.jpg -quality 80 4010.webp
convert _11.jpg -quality 80 4011.webp

rm _*

