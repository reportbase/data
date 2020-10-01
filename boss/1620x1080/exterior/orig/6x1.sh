cd ..
rm 4* 5*
cd orig

montage {0000..0005}.jpg -tile 6x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0006..0011}.jpg -tile 6x1 -mode Concatenate '../53%03d.jpg' 2> error
montage {0012..0017}.jpg -tile 6x1 -mode Concatenate '../54%03d.jpg' 2> error
montage {0018..0023}.jpg -tile 6x1 -mode Concatenate '../55%03d.jpg' 2> error
montage {0024..0029}.jpg -tile 6x1 -mode Concatenate '../56%03d.jpg' 2> error
montage {0030..0035}.jpg -tile 6x1 -mode Concatenate '../57%03d.jpg' 2> error
montage {0036..0041}.jpg -tile 6x1 -mode Concatenate '../58%03d.jpg' 2> error
montage {0042..0047}.jpg -tile 6x1 -mode Concatenate '../59%03d.jpg' 2> error
montage {0048..0053}.jpg -tile 6x1 -mode Concatenate '../60%03d.jpg' 2> error
montage {0054..0059}.jpg -tile 6x1 -mode Concatenate '../76%03d.jpg' 2> error
montage {0060..0065}.jpg -tile 6x1 -mode Concatenate '../80%03d.jpg' 2> error
montage {0066..0071}.jpg -tile 6x1 -mode Concatenate '../90%03d.jpg' 2> error

cd ..
rename4.sh 4000

