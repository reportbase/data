mkdir -p 18x1 
for image in 4*.jpg; do convert $image -resize x1024 -quality 75 18x1/$image; done

cd 18x1
for image in 4*.jpg; do convert $image -gravity center -crop 384x1024+0+0 $image; done

montage {4000..4017}.jpg -tile 18x1 -mode Concatenate 0000.jpg 2> error
montage {4018..4035}.jpg -tile 18x1 -mode Concatenate 0001.jpg 2> error
montage {4036..4053}.jpg -tile 18x1 -mode Concatenate 0002.jpg 2> error
montage {4054..4071}.jpg -tile 18x1 -mode Concatenate 0003.jpg 2> error
montage {4072..4089}.jpg -tile 18x1 -mode Concatenate 0004.jpg 2> error
montage {4090..4107}.jpg -tile 18x1 -mode Concatenate 0005.jpg 2> error
montage {4108..4125}.jpg -tile 18x1 -mode Concatenate 0006.jpg 2> error
montage {4126..4143}.jpg -tile 18x1 -mode Concatenate 0007.jpg 2> error
montage {4144..4161}.jpg -tile 18x1 -mode Concatenate 0008.jpg 2> error
montage {4162..4179}.jpg -tile 18x1 -mode Concatenate 0009.jpg 2> error
montage {4180..4197}.jpg -tile 18x1 -mode Concatenate 0010.jpg 2> error
montage {4198..4215}.jpg -tile 18x1 -mode Concatenate 0011.jpg 2> error
montage {4216..4233}.jpg -tile 18x1 -mode Concatenate 0012.jpg 2> error
montage {4234..4251}.jpg -tile 18x1 -mode Concatenate 0013.jpg 2> error
montage {4252..4269}.jpg -tile 18x1 -mode Concatenate 0014.jpg 2> error
montage {4270..4287}.jpg -tile 18x1 -mode Concatenate 0015.jpg 2> error
montage {4288..4305}.jpg -tile 18x1 -mode Concatenate 0016.jpg 2> error
montage {4306..4323}.jpg -tile 18x1 -mode Concatenate 0017.jpg 2> error
montage {4324..4341}.jpg -tile 18x1 -mode Concatenate 0018.jpg 2> error
montage {4342..4359}.jpg -tile 18x1 -mode Concatenate 0019.jpg 2> error
montage {4360..4377}.jpg -tile 18x1 -mode Concatenate 0020.jpg 2> error
montage {4378..4395}.jpg -tile 18x1 -mode Concatenate 0021.jpg 2> error
montage {4396..4413}.jpg -tile 18x1 -mode Concatenate 0022.jpg 2> error
montage {4414..4431}.jpg -tile 18x1 -mode Concatenate 0023.jpg 2> error

rm 4*.jpg



