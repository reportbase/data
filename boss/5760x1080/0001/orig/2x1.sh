cd ..
rm 4* 5*
cd orig

montage {0000..0007}.jpg -tile 2x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0008..0015}.jpg -tile 2x1 -mode Concatenate '../52%03d.jpg' 2> error
montage {0016..0023}.jpg -tile 2x1 -mode Concatenate '../53%03d.jpg' 2> error
montage {0024..0031}.jpg -tile 2x1 -mode Concatenate '../54%03d.jpg' 2> error
montage {0032..0039}.jpg -tile 2x1 -mode Concatenate '../55%03d.jpg' 2> error
montage {0040..0047}.jpg -tile 2x1 -mode Concatenate '../56%03d.jpg' 2> error
montage {0048..0055}.jpg -tile 2x1 -mode Concatenate '../57%03d.jpg' 2> error
montage {0056..0063}.jpg -tile 2x1 -mode Concatenate '../58%03d.jpg' 2> error
montage {0064..0071}.jpg -tile 2x1 -mode Concatenate '../59%03d.jpg' 2> error
montage {0072..0079}.jpg -tile 2x1 -mode Concatenate '../60%03d.jpg' 2> error
montage {0080..0087}.jpg -tile 2x1 -mode Concatenate '../61%03d.jpg' 2> error
montage {0088..0095}.jpg -tile 2x1 -mode Concatenate '../62%03d.jpg' 2> error
montage {0096..0103}.jpg -tile 2x1 -mode Concatenate '../63%03d.jpg' 2> error
montage {0104..0111}.jpg -tile 2x1 -mode Concatenate '../64%03d.jpg' 2> error
montage {0112..0119}.jpg -tile 2x1 -mode Concatenate '../65%03d.jpg' 2> error
montage {0120..0127}.jpg -tile 2x1 -mode Concatenate '../66%03d.jpg' 2> error
montage {0128..0135}.jpg -tile 2x1 -mode Concatenate '../67%03d.jpg' 2> error
montage {0136..0141}.jpg -tile 2x1 -mode Concatenate '../68%03d.jpg' 2> error

cd ..
rename4.sh 4000

