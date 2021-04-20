. meta.ini
rm -f html/splash/*.jpg

PROJECTNAME=${PWD##*/}
html/./meta.sh $PROJECTNAME 
all.sh $PROJECTNAME 
html/./links.sh $PROJECTNAME 
#html/./splash.sh $splash

