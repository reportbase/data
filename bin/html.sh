rm *.html

. ../meta.ini
THISGALLERY=s/{GALLERY}/${name}/
THISCOUNT=s/{SIZE}/${count}/

cp ../../res/b000.res 440x280.html
sed -i $THISGALLERY 440x280.html
sed -i 's/{NAME}/0440.0280/' 440x280.html
sed -i $THISCOUNT 440x280.html

cp ../../res/b000.res 180x220.html
sed -i $THISGALLERY 180x220.html
sed -i 's/{NAME}/0180.0220/' 180x220.html
sed -i $THISCOUNT 180x220.html

cp ../../res/b000.res 300x360.html
sed -i $THISGALLERY 300x360.html
sed -i 's/{NAME}/0300.0360/' 300x360.html
sed -i $THISCOUNT 300x360.html

cp ../../res/b000.res 220x280.html
sed -i $THISGALLERY 220x280.html
sed -i 's/{NAME}/0220.0280/' 220x280.html
sed -i $THISCOUNT 220x280.html

cp ../../res/b001.res 520.html
sed -i $THISGALLERY 520.html
sed -i 's/{NAME}/0520/' 520.html
sed -i $THISCOUNT 520.html

cp ../../res/b001.res 0220.0280.html
sed -i $THISGALLERY 0220.0280.html
sed -i 's/{NAME}/0220.0280/' 0220.0280.html
sed -i $THISCOUNT 0220.0280.html

cp ../../res/b001.res 0300.0360.html
sed -i $THISGALLERY 0300.0360.html
sed -i 's/{NAME}/0300.0360/' 0300.0360.html
sed -i $THISCOUNT 0300.0360.html

cp ../../res/b001.res 0440.0280.html
sed -i $THISGALLERY 0440.0280.html
sed -i 's/{NAME}/0440.0280/' 0440.0280.html
sed -i $THISCOUNT 0440.0280.html

cp ../../res/b001.res 0180.0220.html
sed -i $THISGALLERY 0180.0220.html
sed -i 's/{NAME}/0180.0220/' 0180.0220.html
sed -i $THISCOUNT 0180.0220.html

cp ../../res/iframe.res iframe.html
sed -i $THISGALLERY iframe.html
sed -i $THISCOUNT iframe.html 

COUNT=`expr $count - 1`
for i in $(seq 0 $COUNT); do 
    ID=$(printf "%04d" "$i") 
    cp ../../res/index.res ../$ID/index.html 2> error
    sed -i $THISGALLERY ../$ID/index.html 2> error
    j="s/{PROJECT}/$ID/"
    sed -i $j ../$ID/index.html 2> error
    sed -i 's/{SIZE}/72/' ../$ID/index.html 2> error 
done


