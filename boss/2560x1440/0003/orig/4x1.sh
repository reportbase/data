cd ..
rm 4* 5*
cd orig

montage {0000..0007}.jpg -tile 4x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0008..0015}.jpg -tile 4x1 -mode Concatenate '../52%03d.jpg' 2> error
montage {0016..0023}.jpg -tile 4x1 -mode Concatenate '../53%03d.jpg' 2> error
montage {0024..0031}.jpg -tile 4x1 -mode Concatenate '../54%03d.jpg' 2> error
montage {0032..0039}.jpg -tile 4x1 -mode Concatenate '../55%03d.jpg' 2> error
montage {0040..0047}.jpg -tile 4x1 -mode Concatenate '../56%03d.jpg' 2> error
montage {0048..0055}.jpg -tile 4x1 -mode Concatenate '../57%03d.jpg' 2> error
montage {0056..0063}.jpg -tile 4x1 -mode Concatenate '../58%03d.jpg' 2> error
montage {0064..0071}.jpg -tile 4x1 -mode Concatenate '../59%03d.jpg' 2> error

cd ..
rename4.sh 4000

