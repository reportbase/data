montage {0000..0017}.jpg -tile 6x1 -mode Concatenate '../51%03d.jpg' 2> error
montage {0018..0035}.jpg -tile 6x1 -mode Concatenate '../52%03d.jpg' 2> error
montage {0036..0053}.jpg -tile 6x1 -mode Concatenate '../53%03d.jpg' 2> error
montage {0054..0071}.jpg -tile 6x1 -mode Concatenate '../54%03d.jpg' 2> error
montage {0072..0089}.jpg -tile 6x1 -mode Concatenate '../55%03d.jpg' 2> error
montage {0090..0107}.jpg -tile 6x1 -mode Concatenate '../56%03d.jpg' 2> error
montage {0108..0125}.jpg -tile 6x1 -mode Concatenate '../57%03d.jpg' 2> error
montage {0126..0143}.jpg -tile 6x1 -mode Concatenate '../58%03d.jpg' 2> error
montage {0144..0161}.jpg -tile 6x1 -mode Concatenate '../59%03d.jpg' 2> error
montage {0162..0179}.jpg -tile 6x1 -mode Concatenate '../60%03d.jpg' 2> error
montage {0180..0197}.jpg -tile 6x1 -mode Concatenate '../61%03d.jpg' 2> error
montage {0198..0215}.jpg -tile 6x1 -mode Concatenate '../62%03d.jpg' 2> error
montage {0216..0233}.jpg -tile 6x1 -mode Concatenate '../63%03d.jpg' 2> error
montage {0234..0251}.jpg -tile 6x1 -mode Concatenate '../64%03d.jpg' 2> error
montage {0252..0269}.jpg -tile 6x1 -mode Concatenate '../65%03d.jpg' 2> error
montage {0270..0287}.jpg -tile 6x1 -mode Concatenate '../66%03d.jpg' 2> error
montage {0288..0305}.jpg -tile 6x1 -mode Concatenate '../67%03d.jpg' 2> error
montage {0306..0323}.jpg -tile 6x1 -mode Concatenate '../68%03d.jpg' 2> error
montage {0324..0341}.jpg -tile 6x1 -mode Concatenate '../69%03d.jpg' 2> error
montage {0342..0365}.jpg -tile 6x1 -mode Concatenate '../70%03d.jpg' 2> error
montage {0366..0377}.jpg -tile 6x1 -mode Concatenate '../71%03d.jpg' 2> error
montage {0378..0395}.jpg -tile 6x1 -mode Concatenate '../72%03d.jpg' 2> error
montage {0396..0413}.jpg -tile 6x1 -mode Concatenate '../73%03d.jpg' 2> error
montage {0414..0431}.jpg -tile 6x1 -mode Concatenate '../74%03d.jpg' 2> error

cd ..
rename.sh 4000
for image in 4*.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 65 -interlace JPEG -resize x1080 -colorspace RGB $image ; done
webp.sh


