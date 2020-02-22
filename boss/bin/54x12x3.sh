mkdir 18x3 
for image in *.jpg ; do convert $image -resize x512 -quality 75 18x3/$image; done

cd 18x3
for image in *.jpg ; do convert $image -gravity center -crop 512x512+0+0 $image; done

montage *.jpg -tile 18x3 -mode Concatenate 18x3.jpg

convert 18x3.jpg -resize x768 18x3.jpg
rm 4*.jpg



