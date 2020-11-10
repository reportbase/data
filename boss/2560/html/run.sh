rm *.html

cp b000.txt 440x280.html
sed -i 's/$1/2560/' 440x280.html
sed -i 's/$2/0440.0280/' 440x280.html

cp b000.txt 480x360.html
sed -i 's/$1/2560/' 480x360.html
sed -i 's/$2/0480.0360/' 480x360.html

cp b000.txt 220x220.html
sed -i 's/$1/2560/' 220x220.html
sed -i 's/$2/0220.0220/' 220x220.html

