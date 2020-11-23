rm *.html

. ../meta.ini
THISGALLERY=s/{GALLERY}/${name}/
THISIZE=${count}
THISCOUNT=s/{SIZE}/${count}/

cp ../../../res/001.res 0180.0220.html
sed -i $THISGALLERY 0180.0220.html
sed -i 's/{NAME}/0180.0220/' 0180.0220.html
sed -i $THISCOUNT 0180.0220.html

cp ../../../res/001.res 0490.0280.html
sed -i $THISGALLERY 0490.0280.html
sed -i 's/{NAME}/0490.0280/' 0490.0280.html
sed -i $THISCOUNT 0490.0280.html

cp ../../../res/001.res 0420.0240.html
sed -i $THISGALLERY 0420.0240.html
sed -i 's/{NAME}/0420.0240/' 0420.0240.html
sed -i $THISCOUNT 0420.0240.html

cp ../../../res/001.res 0240.0240.html
sed -i $THISGALLERY 0240.0240.html
sed -i 's/{NAME}/0240.0240/' 0240.0240.html
sed -i $THISCOUNT 0240.0240.html

cp ../../../res/002.res 002.html
sed -i $THISGALLERY 002.html
sed -i $THISCOUNT 002.html 

COUNT=`expr $THISIZE - 1`
for i in $(seq 0 $COUNT); do 
    ID=$(printf "%04d" "$i") 
    . ../$ID/meta.ini
    IMAGECOUNT=${count}
    rm ../$ID/*.html 2> /dev/null  
    cp ../../../res/000.res ../$ID/000.html 2> /dev/null
    sed -i $THISGALLERY ../$ID/000.html 2> /dev/null
    j="s/{PROJECT}/$ID/"
    sed -i $j ../$ID/000.html 2> /dev/null
    j="s/{SIZE}/$IMAGECOUNT/"
    sed -i $j ../$ID/000.html 2> /dev/null 
    j="s/{COUNT}/$THISIZE/"
    sed -i $j ../$ID/000.html 2> /dev/null
done


