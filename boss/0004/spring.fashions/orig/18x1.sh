montage {0000..0017}.jpg -tile 18x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0018..0035}.jpg -tile 18x1 -mode Concatenate '../52%03d.jpg' 2> error
montage {0036..0053}.jpg -tile 18x1 -mode Concatenate '../53%03d.jpg' 2> error
montage {0054..0071}.jpg -tile 18x1 -mode Concatenate '../54%03d.jpg' 2> error
montage {0072..0089}.jpg -tile 18x1 -mode Concatenate '../55%03d.jpg' 2> error
montage {0090..0107}.jpg -tile 18x1 -mode Concatenate '../56%03d.jpg' 2> error
montage {0108..0125}.jpg -tile 18x1 -mode Concatenate '../57%03d.jpg' 2> error
montage {0126..0143}.jpg -tile 18x1 -mode Concatenate '../58%03d.jpg' 2> error

cd ..
rename.sh 4000
webp.sh
resize.sh

