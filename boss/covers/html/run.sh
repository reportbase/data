rm *.html

cp b000.txt 440x280.html
sed -i 's/$1/covers/' 440x280.html
sed -i 's/$2/0440.0280/' 440x280.html

cp b000.txt 180x220.html
sed -i 's/$1/covers/' 180x220.html
sed -i 's/$2/0180.0220/' 180x220.html

cp b000.txt 300x360.html
sed -i 's/$1/covers/' 300x360.html
sed -i 's/$2/0300.0360/' 300x360.html

cp b000.txt 220x280.html
sed -i 's/$1/covers/' 220x280.html
sed -i 's/$2/0220.0280/' 220x280.html

cp b001.txt 520.html
sed -i 's/$1/covers/' 520.html
sed -i 's/$2/0520/' 520.html

cp b001.txt 0220.0280.html
sed -i 's/$1/covers/' 0220.0280.html
sed -i 's/$2/0220.0280/' 0220.0280.html

cp b001.txt 0300.0360.html
sed -i 's/$1/covers/' 0300.0360.html
sed -i 's/$2/0300.0360/' 0300.0360.html

cp b001.txt 0440.0280.html
sed -i 's/$1/covers/' 0440.0280.html
sed -i 's/$2/0440.0280/' 0440.0280.html

cp b001.txt 0180.0220.html
sed -i 's/$1/covers/' 0180.0220.html
sed -i 's/$2/0180.0220/' 0180.0220.html

cp iframe.txt iframe.html
sed -i 's/$1/covers/' iframe.html

for i in $(seq 0 30); do 
    new=$(printf "%04d" "$i") 
    cp index.txt ../$new/index.html 2> error
    sed -i 's/{FOLDER}/covers/' ../$new/index.html 2> error
    j="s/{PROJECT}/$new/"
    sed -i $j ../$new/index.html 2> error
done


