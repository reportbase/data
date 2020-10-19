cd ..
rm 4* 5*

cd orig
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
montage {0036..0037}.jpg -tile 2x1 -mode Concatenate '../4018.jpg' 2> error
montage {0038..0039}.jpg -tile 2x1 -mode Concatenate '../4019.jpg' 2> error
montage {0040..0041}.jpg -tile 2x1 -mode Concatenate '../4020.jpg' 2> error
montage {0042..0043}.jpg -tile 2x1 -mode Concatenate '../4021.jpg' 2> error
montage {0044..0045}.jpg -tile 2x1 -mode Concatenate '../4022.jpg' 2> error
montage {0046..0047}.jpg -tile 2x1 -mode Concatenate '../4023.jpg' 2> error
montage {0048..0049}.jpg -tile 2x1 -mode Concatenate '../4024.jpg' 2> error
montage {0050..0051}.jpg -tile 2x1 -mode Concatenate '../4025.jpg' 2> error
montage {0052..0053}.jpg -tile 2x1 -mode Concatenate '../4026.jpg' 2> error
montage {0054..0055}.jpg -tile 2x1 -mode Concatenate '../4027.jpg' 2> error
montage {0056..0057}.jpg -tile 2x1 -mode Concatenate '../4028.jpg' 2> error
montage {0058..0059}.jpg -tile 2x1 -mode Concatenate '../4029.jpg' 2> error
montage {0060..0061}.jpg -tile 2x1 -mode Concatenate '../4030.jpg' 2> error
montage {0062..0063}.jpg -tile 2x1 -mode Concatenate '../4031.jpg' 2> error
montage {0064..0065}.jpg -tile 2x1 -mode Concatenate '../4032.jpg' 2> error
montage {0066..0067}.jpg -tile 2x1 -mode Concatenate '../4033.jpg' 2> error
montage {0068..0069}.jpg -tile 2x1 -mode Concatenate '../4034.jpg' 2> error
montage {0070..0071}.jpg -tile 2x1 -mode Concatenate '../4035.jpg' 2> error

montage {0000..0003}.jpg -tile 4x1 -mode Concatenate '../_0000.jpg' 2> error
montage {0004..0007}.jpg -tile 4x1 -mode Concatenate '../_0001.jpg' 2> error
montage {0008..0011}.jpg -tile 4x1 -mode Concatenate '../_0002.jpg' 2> error
montage {0012..0015}.jpg -tile 4x1 -mode Concatenate '../_0003.jpg' 2> error
montage {0016..0019}.jpg -tile 4x1 -mode Concatenate '../_0004.jpg' 2> error
montage {0020..0023}.jpg -tile 4x1 -mode Concatenate '../_0005.jpg' 2> error
montage {0024..0027}.jpg -tile 4x1 -mode Concatenate '../_0006.jpg' 2> error
montage {0028..0031}.jpg -tile 4x1 -mode Concatenate '../_0007.jpg' 2> error
montage {0032..0035}.jpg -tile 4x1 -mode Concatenate '../_0008.jpg' 2> error
montage {0036..0039}.jpg -tile 4x1 -mode Concatenate '../_0009.jpg' 2> error
montage {0040..0043}.jpg -tile 4x1 -mode Concatenate '../_0010.jpg' 2> error
montage {0044..0047}.jpg -tile 4x1 -mode Concatenate '../_0011.jpg' 2> error
montage {0048..0051}.jpg -tile 4x1 -mode Concatenate '../_0012.jpg' 2> error
montage {0052..0055}.jpg -tile 4x1 -mode Concatenate '../_0013.jpg' 2> error
montage {0056..0059}.jpg -tile 4x1 -mode Concatenate '../_0014.jpg' 2> error
montage {0060..0063}.jpg -tile 4x1 -mode Concatenate '../_0015.jpg' 2> error
montage {0064..0067}.jpg -tile 4x1 -mode Concatenate '../_0016.jpg' 2> error
montage {0068..0071}.jpg -tile 4x1 -mode Concatenate '../_0017.jpg' 2> error

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
convert _0009.jpg -quality 80 4009.webp
convert _0010.jpg -quality 80 4010.webp
convert _0011.jpg -quality 80 4011.webp
convert _0012.jpg -quality 80 4012.webp
convert _0013.jpg -quality 80 4013.webp
convert _0014.jpg -quality 80 4014.webp
convert _0015.jpg -quality 80 4015.webp
convert _0016.jpg -quality 80 4016.webp
convert _0017.jpg -quality 80 4017.webp

rm _*

