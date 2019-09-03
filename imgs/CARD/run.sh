#a=0001
#for i in *.svg ; do
#  new=$(printf "%04d.svg" "$a") #04 pad to length of 4
#  mv -- "$i" "$new" 2> tmp/out 
#  let a=a+1
#done

mogrify -size 320 -channel rgba -background "rgba(0,0,0,0)" -format png *.svg
mkdir 320 2> tmp
mv *.png 320

mogrify -size 640 -channel rgba -background "rgba(0,0,0,0)" -format png *.svg
mkdir 640 2> tmp
mv *.png 640

mogrify -size 960 -channel rgba -background "rgba(0,0,0,0)" -format png *.svg
mkdir 960 2> tmp
mv *.png 960

mogrify -size 1280 -channel rgba -background "rgba(0,0,0,0)" -format png *.svg
mkdir 1280 2> tmp
mv *.png 1280

mogrify -size 1280 -channel rgba -background "rgba(0,0,0,0)" -format png *.svg
mkdir 1280 2> tmp
mv *.png 1280

mogrify -size 1600 -channel rgba -background "rgba(0,0,0,0)" -format png *.svg
mkdir 1600 2> tmp
mv *.png 1600

mogrify -size 1920 -channel rgba -background "rgba(0,0,0,0)" -format png *.svg
mkdir 1920 2> tmp
mv *.png 1920

