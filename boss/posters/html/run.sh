rm *.html

cp b000.txt 160.html
sed -i 's/$1/posters/' 160.html
sed -i 's/$2/0160/' 160.html

cp b000.txt 240.html
sed -i 's/$1/posters/' 240.html
sed -i 's/$2/0240/' 240.html

cp b000.txt 360.html
sed -i 's/$1/posters/' 360.html
sed -i 's/$2/0360/' 360.html


