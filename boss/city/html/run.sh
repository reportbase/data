rm *.html

#two cols
cp b000.txt 440x280.html
sed -i 's/$1/city/' 440x280.html
sed -i 's/$2/0440.0280/' 440x280.html
#five cols
cp b000.txt 180x220.html
sed -i 's/$1/city/' 180x220.html
sed -i 's/$2/0180.0220/' 180x220.html
#three col
cp b000.txt 300x360.html
sed -i 's/$1/city/' 300x360.html
sed -i 's/$2/0300.0360/' 300x360.html
#four col
cp b000.txt 220x280.html
sed -i 's/$1/city/' 220x280.html
sed -i 's/$2/0220.0280/' 220x280.html
#one col
cp b001.txt 520.html
sed -i 's/$1/city/' 520.html
sed -i 's/$2/0520/' 520.html
