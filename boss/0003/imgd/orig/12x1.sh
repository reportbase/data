cd ..
rm 4*
cd orig

montage {0000..0023}.jpg -tile 12x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0024..0035}.jpg -tile 12x1 -mode Concatenate '../52%03d.jpg' 2> error
montage {0036..0047}.jpg -tile 12x1 -mode Concatenate '../53%03d.jpg' 2> error
montage {0048..0059}.jpg -tile 12x1 -mode Concatenate '../54%03d.jpg' 2> error
montage {0060..0071}.jpg -tile 12x1 -mode Concatenate '../55%03d.jpg' 2> error
montage {0072..0083}.jpg -tile 12x1 -mode Concatenate '../56%03d.jpg' 2> error
montage {0084..0095}.jpg -tile 12x1 -mode Concatenate '../57%03d.jpg' 2> error
montage {0096..0107}.jpg -tile 12x1 -mode Concatenate '../58%03d.jpg' 2> error
montage {0108..0119}.jpg -tile 12x1 -mode Concatenate '../59%03d.jpg' 2> error
montage {0120..0131}.jpg -tile 12x1 -mode Concatenate '../61%03d.jpg' 2> error
montage {0132..0143}.jpg -tile 12x1 -mode Concatenate '../62%03d.jpg' 2> error
montage {0144..0155}.jpg -tile 12x1 -mode Concatenate '../63%03d.jpg' 2> error
montage {0156..0167}.jpg -tile 12x1 -mode Concatenate '../64%03d.jpg' 2> error
montage {0168..0179}.jpg -tile 12x1 -mode Concatenate '../65%03d.jpg' 2> error
montage {0180..0191}.jpg -tile 12x1 -mode Concatenate '../66%03d.jpg' 2> error
montage {0192..0203}.jpg -tile 12x1 -mode Concatenate '../67%03d.jpg' 2> error
montage {0204..0215}.jpg -tile 12x1 -mode Concatenate '../68%03d.jpg' 2> error
montage {0216..0227}.jpg -tile 12x1 -mode Concatenate '../69%03d.jpg' 2> error

cd ..
rename4.sh 4000

#for image in *.jpg; do convert $image -resize x1440 $image; done
#for image in 4*.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 65 -interlace JPEG -resize x1080 -colorspace RGB $image ; done
