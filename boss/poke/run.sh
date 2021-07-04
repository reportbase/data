rm html/splash/*.jpg 2> /dev/null
source <(grep width meta.ini)
source <(grep height meta.ini)
PROJECTNAME=${PWD##*/} 
html/./meta.sh $PROJECTNAME 
html/./option.sh $PROJECTNAME 
all.sh $PROJECTNAME 
html/./links.sh $PROJECTNAME 
vks.sh $width $height
