PROJECTNAME=${PWD##*/}
html/./meta.sh $PROJECTNAME 2> /dev/null
html/./links.sh $PROJECTNAME 2> /dev/null
all.sh $PROJECTNAME 2> /dev/null
