rm -r -f *.out error TMP
NAME=${PWD##*/}
cp meta.ini .meta.ini

#$PROJECTNAME 2> /dev/null
#../html/./home.sh x240
#../html/./gif.sh $1 2> /dev/null
#thumb.sh x240
cp orig/0000.jpg ../html/splash/$NAME.jpg 2>/dev/null
cp thumb.jpg ../html/splash/$NAME.jpg 2>/dev/null

#vkr.sh footer_4 BAR
#vkr.sh footerhide_4 0
#vkr.sh footerheight_4 110
#vkr.sh tap_4 GRID
#vkr.sh footer_4 BAR
#vkd.sh fillwidth_9

#vkr.sh draw_8 PAGESPLASH
#vkr.sh fillwidth_8 640
#vkr.sh hitrows_8 7
#vkd.sh zoomsize
#vkd.sh footermode
#vkd.sh qualitylow
#vkd.sh qualityhigh
#vkd.sh slideshow_4
#vkd.sh fillwidth_9
