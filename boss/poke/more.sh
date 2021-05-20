source <(grep width meta.ini)
source <(grep height meta.ini)
PROJECTNAME=${PWD##*/} 
vkc.sh $width $height 

