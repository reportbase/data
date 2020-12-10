rm ../*.jpg
rm ../*.webp
montage {0000..0008}.jpg -rotate 90 -tile 9x1 -mode Concatenate '../009.000.jpg' 
montage {0009..0017}.jpg -rotate 90 -tile 9x1 -mode Concatenate '../009.001.jpg' 
#montage {0012..0017}.jpg -tile 9x1 -mode Concatenate '../006.002.jpg' 
convert '../009.000.jpg' '../009.000.webp'
convert '../009.001.jpg' '../009.001.webp'
#convert '../006.002.jpg' '../018.002.webp'

 
 
