cd ..
rm 4*
cd orig

montage {0000..0023}.jpg -tile 12x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0024..0047}.jpg -tile 12x1 -mode Concatenate '../52%03d.jpg' 2> error
montage {0048..0071}.jpg -tile 12x1 -mode Concatenate '../53%03d.jpg' 2> error
montage {0072..0095}.jpg -tile 12x1 -mode Concatenate '../54%03d.jpg' 2> error
montage {0096..0119}.jpg -tile 12x1 -mode Concatenate '../55%03d.jpg' 2> error
montage {0120..0143}.jpg -tile 12x1 -mode Concatenate '../56%03d.jpg' 2> error
montage {0144..0167}.jpg -tile 12x1 -mode Concatenate '../57%03d.jpg' 2> error
montage {0168..0191}.jpg -tile 12x1 -mode Concatenate '../58%03d.jpg' 2> error
montage {0192..0215}.jpg -tile 12x1 -mode Concatenate '../59%03d.jpg' 2> error
montage {0216..0239}.jpg -tile 12x1 -mode Concatenate '../61%03d.jpg' 2> error
montage {0240..0263}.jpg -tile 12x1 -mode Concatenate '../62%03d.jpg' 2> error
montage {0264..0279}.jpg -tile 12x1 -mode Concatenate '../63%03d.jpg' 2> error
montage {0280..0311}.jpg -tile 12x1 -mode Concatenate '../64%03d.jpg' 2> error
montage {0312..0335}.jpg -tile 12x1 -mode Concatenate '../65%03d.jpg' 2> error
montage {0336..0359}.jpg -tile 12x1 -mode Concatenate '../66%03d.jpg' 2> error
montage {0360..0383}.jpg -tile 12x1 -mode Concatenate '../67%03d.jpg' 2> error
montage {0384..0407}.jpg -tile 12x1 -mode Concatenate '../68%03d.jpg' 2> error
montage {0408..0431}.jpg -tile 12x1 -mode Concatenate '../69%03d.jpg' 2> error
montage {0432..0455}.jpg -tile 12x1 -mode Concatenate '../69%03d.jpg' 2> error
montage {0456..0479}.jpg -tile 12x1 -mode Concatenate '../69%03d.jpg' 2> error
montage {0480..0503}.jpg -tile 12x1 -mode Concatenate '../69%03d.jpg' 2> error
montage {0504..0527}.jpg -tile 12x1 -mode Concatenate '../69%03d.jpg' 2> error
montage {0528..0551}.jpg -tile 12x1 -mode Concatenate '../69%03d.jpg' 2> error

cd ..
rename4.sh 4000

#for image in *.jpg; do convert $image -resize x1440 $image; done
#for image in 4*.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 65 -interlace JPEG -resize x1080 -colorspace RGB $image ; done
