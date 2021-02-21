rm -f html/meta.ini

PROJECTNAME=${PWD##*/}
html/./meta.sh $PROJECTNAME
html/./links.sh $PROJECTNAME
all.sh $PROJECTNAME
