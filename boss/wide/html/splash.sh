cd html/splash
resize.sh x420
clip.sh $1
convert *.jpg +append ../splash.jpg
cd ../..
