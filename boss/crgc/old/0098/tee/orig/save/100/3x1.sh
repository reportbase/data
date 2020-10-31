cd ..
rm 4*
cd orig

montage {0000..0008}.jpg -tile 3x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0009..0017}.jpg -tile 3x1 -mode Concatenate '../52%03d.jpg' 2> error
montage {0018..0026}.jpg -tile 3x1 -mode Concatenate '../53%03d.jpg' 2> error
montage {0027..0035}.jpg -tile 3x1 -mode Concatenate '../54%03d.jpg' 2> error
montage {0036..0044}.jpg -tile 3x1 -mode Concatenate '../55%03d.jpg' 2> error
montage {0045..0053}.jpg -tile 3x1 -mode Concatenate '../56%03d.jpg' 2> error
montage {0054..0062}.jpg -tile 3x1 -mode Concatenate '../57%03d.jpg' 2> error
montage {0063..0071}.jpg -tile 3x1 -mode Concatenate '../58%03d.jpg' 2> error
montage {0072..0080}.jpg -tile 3x1 -mode Concatenate '../59%03d.jpg' 2> error
montage {0081..0089}.jpg -tile 3x1 -mode Concatenate '../61%03d.jpg' 2> error
montage {0090..0098}.jpg -tile 3x1 -mode Concatenate '../62%03d.jpg' 2> error
montage {0099..0107}.jpg -tile 3x1 -mode Concatenate '../63%03d.jpg' 2> error
montage {0108..0116}.jpg -tile 3x1 -mode Concatenate '../64%03d.jpg' 2> error
montage {0117..0125}.jpg -tile 3x1 -mode Concatenate '../65%03d.jpg' 2> error

cd ..
rename.sh 4000
webp.sh
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 85 -resize x1440 -interlace JPEG -colorspace RGB $image ; done
