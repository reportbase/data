montage {0000..0009}.jpg -tile 2x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0010..0019}.jpg -tile 2x1 -mode Concatenate '../52%03d.jpg' 2> error
montage {0020..0029}.jpg -tile 2x1 -mode Concatenate '../53%03d.jpg' 2> error
montage {0030..0039}.jpg -tile 2x1 -mode Concatenate '../54%03d.jpg' 2> error
montage {0040..0049}.jpg -tile 2x1 -mode Concatenate '../55%03d.jpg' 2> error
montage {0050..0059}.jpg -tile 2x1 -mode Concatenate '../56%03d.jpg' 2> error
montage {0060..0069}.jpg -tile 2x1 -mode Concatenate '../57%03d.jpg' 2> error
montage {0070..0079}.jpg -tile 2x1 -mode Concatenate '../58%03d.jpg' 2> error
montage {0080..0089}.jpg -tile 2x1 -mode Concatenate '../61%03d.jpg' 2> error
montage {0090..0099}.jpg -tile 2x1 -mode Concatenate '../62%03d.jpg' 2> error
montage {0100..0109}.jpg -tile 2x1 -mode Concatenate '../63%03d.jpg' 2> error
montage {0110..0119}.jpg -tile 2x1 -mode Concatenate '../64%03d.jpg' 2> error

cd ..
rename.sh 4000
