. meta.ini
mkdir -p splash
EXTENT=$extent

ROJECTNAME=${PWD##*/}
html/./meta.sh $PROJECTNAME 
html/./links.sh $PROJECTNAME 
all.sh $PROJECTNAME 
html/./splash.sh $EXTENT

