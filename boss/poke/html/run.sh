rm -r -f *.out error TMP
NAME=${PWD##*/}
#cp orig/0000.jpg ../splash/$NAME.jpg
#cp splash.jpg ../splash/$NAME.jpg

$PROJECTNAME 2> /dev/null
#../html/./home.sh 
#../html/./gif.sh $1 2> /dev/null

#sed -i '/footerheight_4=/d' meta.ini 
#printf 'footerheight_4=110\n' >> meta.ini

sed -i '/Linkname_4/d' meta.ini
sed -i '/SafariMontageCols_4/d' meta.ini
sed -i '/SafariDrawSize_4/d' meta.ini
sed -i '/SafariZoomBegin_4/d' meta.ini
sed -i '/SafariZoomEnd_4/d' meta.ini

sed -i '/momentumhigh_4=/d' meta.ini 
sed -i '/momentumlow_4=/d' meta.ini 
sed -i '/tap_4=/d' meta.ini 
sed -i '/footer_4=/d' meta.ini 
sed -i '/footerheight_4=/d' meta.ini 

vkr.sh momentumhigh_4 1000
vkr.sh momentumlow_4 1000
vkr.sh footerheight_4 180
vkr.sh footer_4 THUMB
vkr.sh tap_4 THUMB

