rm *.html
THIS=$(cat ../title)
THISGALLERY=s/{GALLERY}/$THIS/
THISFOLDER=s/{FOLDER}/$THIS/

cp b000.txt 440x280.html
sed -i $THISGALLERY 440x280.html
sed -i 's/{NAME}/0440.0280/' 440x280.html

cp b000.txt 180x220.html
sed -i $THISGALLERY 180x220.html
sed -i 's/{NAME}/0180.0220/' 180x220.html

cp b000.txt 300x360.html
sed -i $THISGALLERY 300x360.html
sed -i 's/{NAME}/0300.0360/' 300x360.html

cp b000.txt 220x280.html
sed -i $THISGALLERY 220x280.html
sed -i 's/{NAME}/0220.0280/' 220x280.html

cp b001.txt 520.html
sed -i $THISGALLERY 520.html
sed -i 's/{NAME}/0520/' 520.html

cp b001.txt 0220.0280.html
sed -i $THISGALLERY 0220.0280.html
sed -i 's/{NAME}/0220.0280/' 0220.0280.html

cp b001.txt 0300.0360.html
sed -i $THISGALLERY 0300.0360.html
sed -i 's/{NAME}/0300.0360/' 0300.0360.html

cp b001.txt 0440.0280.html
sed -i $THISGALLERY 0440.0280.html
sed -i 's/{NAME}/0440.0280/' 0440.0280.html

cp b001.txt 0180.0220.html
sed -i $THISGALLERY 0180.0220.html
sed -i 's/{NAME}/0180.0220/' 0180.0220.html

cp iframe.txt iframe.html
sed -i $THISGALLERY iframe.html

for i in $(seq 0 30); do 
    new=$(printf "%04d" "$i") 
    cp index.txt ../$new/index.html 2> error
    sed -i $THISFOLDER ../$new/index.html 2> error
    j="s/{PROJECT}/$new/"
    sed -i $j ../$new/index.html 2> error
done


