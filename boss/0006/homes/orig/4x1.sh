cd ..
rm 4*
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
montage {0072..0079}.jpg -tile 4x1 -mode Concatenate '../60%03d.jpg' 2> error
montage {0080..0087}.jpg -tile 4x1 -mode Concatenate '../61%03d.jpg' 2> error
montage {0088..0095}.jpg -tile 4x1 -mode Concatenate '../62%03d.jpg' 2> error
montage {0096..0103}.jpg -tile 4x1 -mode Concatenate '../63%03d.jpg' 2> error
montage {0104..0111}.jpg -tile 4x1 -mode Concatenate '../64%03d.jpg' 2> error
montage {0112..0119}.jpg -tile 4x1 -mode Concatenate '../65%03d.jpg' 2> error
montage {0120..0127}.jpg -tile 4x1 -mode Concatenate '../66%03d.jpg' 2> error
montage {0128..0135}.jpg -tile 4x1 -mode Concatenate '../67%03d.jpg' 2> error
montage {0136..0143}.jpg -tile 4x1 -mode Concatenate '../68%03d.jpg' 2> error
montage {0144..0151}.jpg -tile 4x1 -mode Concatenate '../69%03d.jpg' 2> error
montage {0152..0159}.jpg -tile 4x1 -mode Concatenate '../70%03d.jpg' 2> error
montage {0160..0167}.jpg -tile 4x1 -mode Concatenate '../71%03d.jpg' 2> error
montage {0168..0175}.jpg -tile 4x1 -mode Concatenate '../72%03d.jpg' 2> error
montage {0176..0183}.jpg -tile 4x1 -mode Concatenate '../73%03d.jpg' 2> error
montage {0184..0191}.jpg -tile 4x1 -mode Concatenate '../74%03d.jpg' 2> error
montage {0192..0199}.jpg -tile 4x1 -mode Concatenate '../75%03d.jpg' 2> error
montage {0200..0207}.jpg -tile 4x1 -mode Concatenate '../76%03d.jpg' 2> error
montage {0208..0215}.jpg -tile 4x1 -mode Concatenate '../77%03d.jpg' 2> error
montage {0216..0223}.jpg -tile 4x1 -mode Concatenate '../78%03d.jpg' 2> error
montage {0224..0231}.jpg -tile 4x1 -mode Concatenate '../79%03d.jpg' 2> error
montage {0232..0239}.jpg -tile 4x1 -mode Concatenate '../80%03d.jpg' 2> error
montage {0240..0247}.jpg -tile 4x1 -mode Concatenate '../81%03d.jpg' 2> error
montage {0248..0255}.jpg -tile 4x1 -mode Concatenate '../82%03d.jpg' 2> error
montage {0256..0263}.jpg -tile 4x1 -mode Concatenate '../83%03d.jpg' 2> error
montage {0264..0271}.jpg -tile 4x1 -mode Concatenate '../84%03d.jpg' 2> error
montage {0272..0279}.jpg -tile 4x1 -mode Concatenate '../85%03d.jpg' 2> error

cd ..
rename4.sh 4000



