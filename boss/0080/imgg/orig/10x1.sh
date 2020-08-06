cd ..
rm 4*
cd orig

montage {0000..0019}.jpg -tile 10x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0020..0039}.jpg -tile 10x1 -mode Concatenate '../52%03d.jpg' 2> error
montage {0040..0059}.jpg -tile 10x1 -mode Concatenate '../53%03d.jpg' 2> error
montage {0060..0079}.jpg -tile 10x1 -mode Concatenate '../54%03d.jpg' 2> error
montage {0080..0099}.jpg -tile 10x1 -mode Concatenate '../55%03d.jpg' 2> error
montage {0100..0119}.jpg -tile 10x1 -mode Concatenate '../56%03d.jpg' 2> error
montage {0120..0139}.jpg -tile 10x1 -mode Concatenate '../57%03d.jpg' 2> error
montage {0140..0159}.jpg -tile 10x1 -mode Concatenate '../58%03d.jpg' 2> error
montage {0160..0179}.jpg -tile 10x1 -mode Concatenate '../59%03d.jpg' 2> error
montage {0180..0199}.jpg -tile 10x1 -mode Concatenate '../60%03d.jpg' 2> error
montage {0200..0219}.jpg -tile 10x1 -mode Concatenate '../61%03d.jpg' 2> error
montage {0220..0239}.jpg -tile 10x1 -mode Concatenate '../62%03d.jpg' 2> error
montage {0240..0259}.jpg -tile 10x1 -mode Concatenate '../63%03d.jpg' 2> error
montage {0260..0279}.jpg -tile 10x1 -mode Concatenate '../64%03d.jpg' 2> error
montage {0280..0299}.jpg -tile 10x1 -mode Concatenate '../65%03d.jpg' 2> error
montage {0300..0319}.jpg -tile 10x1 -mode Concatenate '../66%03d.jpg' 2> error
montage {0320..0339}.jpg -tile 10x1 -mode Concatenate '../67%03d.jpg' 2> error
montage {0340..0359}.jpg -tile 10x1 -mode Concatenate '../68%03d.jpg' 2> error
montage {0360..0379}.jpg -tile 10x1 -mode Concatenate '../69%03d.jpg' 2> error
montage {0380..0399}.jpg -tile 10x1 -mode Concatenate '../70%03d.jpg' 2> error
montage {0400..0419}.jpg -tile 10x1 -mode Concatenate '../71%03d.jpg' 2> error

cd ..
rename4.sh 4000
webp.sh

