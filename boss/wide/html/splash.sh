cd splash
resize.sh x420
clip.sh $1
convert *.jpg +append ../html/splash.jpg
cd ..
#rm -r splash
