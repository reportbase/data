rm *.html
THIS=$(cat ../name)
THISGALLERY=s/{GALLERY}/$THIS/
THISFOLDER=s/{FOLDER}/$THIS/

cp b000.txt 0160.html
sed -i $THISGALLERY 0160.html
sed -i 's/{NAME}/0160/' 0160.html

cp b000.txt 0240.html
sed -i $THISGALLERY 0240.html
sed -i 's/{NAME}/0240/' 0240.html

cp iframe.txt iframe.html
sed -i $THISGALLERY iframe.html

for i in $(seq 0 30); do 
    new=$(printf "%04d" "$i") 
    cp index.txt ../$new/index.html 2> error
    sed -i $THISFOLDER ../$new/index.html 2> error
    j="s/{PROJECT}/$new/"
    sed -i $j ../$new/index.html 2> error
    sed -i 's/{SIZE}/144/' ../$new/index.html 2> error 
done


