mkdir 12x3 
for image in *.jpg ; do convert $image -resize x512 -quality 75 12x3/$image; done

cd 12x3
for image in *.jpg ; do convert $image -gravity center -crop 512x512+0+0 $image; done

montage *.jpg -tile 12x3 -mode Concatenate 12x3.jpg

convert 12x3-0.jpg -resize x768 12x3-0.jpg
convert 12x3-1.jpg -resize x768 12x3-1.jpg
convert 12x3-2.jpg -resize x768 12x3-2.jpg
rm 4*.jpg



