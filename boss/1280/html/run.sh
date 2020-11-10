rm *.html

cp b000.txt 240.html
sed -i 's/$1/1280/' 240.html
sed -i 's/$2/240/' 240.html

cp b000.txt 360.html
sed -i 's/$1/1280/' 360.html
sed -i 's/$2/360/' 360.html

cp b000.txt 480.html
sed -i 's/$1/1280/' 480.html
sed -i 's/$2/480/' 480.html

cp b000.txt 600.html
sed -i 's/$1/1280/' 600.html
sed -i 's/$2/600/' 600.html


