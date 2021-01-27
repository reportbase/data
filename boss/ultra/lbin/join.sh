montage orig/{0000..0005}.jpg -tile 6x1 -mode Concatenate 006.000.jpg 2> error
montage orig/{0006..0011}.jpg -tile 6x1 -mode Concatenate 006.001.jpg 2> error
montage orig/{0012..0017}.jpg -tile 6x1 -mode Concatenate 006.002.jpg 2> error
montage orig/{0018..0023}.jpg -tile 6x1 -mode Concatenate 006.003.jpg 2> error

convert 006.000.jpg -sampling-factor 4:2:0 -strip -resize x540 -interlace JPEG -colorspace RGB 006.000.jpg
convert 006.001.jpg -sampling-factor 4:2:0 -strip -resize x540 -interlace JPEG -colorspace RGB 006.001.jpg
convert 006.002.jpg -sampling-factor 4:2:0 -strip -resize x540 -interlace JPEG -colorspace RGB 006.002.jpg
convert 006.003.jpg -sampling-factor 4:2:0 -strip -resize x540 -interlace JPEG -colorspace RGB 006.003.jpg
convert 006.000.jpg 006.001.jpg 006.002.jpg 006.003.jpg +append 024.000.jpg

convert 006.000.jpg -sampling-factor 4:2:0 -strip -resize x220 -interlace JPEG -colorspace RGB 006.000.jpg
convert 006.001.jpg -sampling-factor 4:2:0 -strip -resize x220 -interlace JPEG -colorspace RGB 006.001.jpg
convert 006.002.jpg -sampling-factor 4:2:0 -strip -resize x220 -interlace JPEG -colorspace RGB 006.002.jpg
convert 006.003.jpg -sampling-factor 4:2:0 -strip -resize x220 -interlace JPEG -colorspace RGB 006.003.jpg
convert 006.000.jpg 006.001.jpg +append 012.000.jpg
convert 006.001.jpg 006.002.jpg +append 012.001.jpg
convert 012.000.jpg 012.001.jpg -append 012.002.000.jpg

