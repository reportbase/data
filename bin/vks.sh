echo $1
cd html/splash
clip.sh $1
resize.sh x480
convert *.jpg +append ../splash.jpg
cd ../..
