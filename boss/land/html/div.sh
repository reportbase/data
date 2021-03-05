. ../meta.ini
PROJECTITLE=${title}
PROJECTNAME=${name}
PROJECTPARENT=${parent}
PROJECTCOUNT=${count}

. meta.ini
NAME=${PWD##*/} 
TITLE=${title}
COUNT=${count}

printf '<div class=section-title>%s</div>\n' "$TITLE" > div.out
printf '<div class=section-image><a target=ifr href=/?p=boss/%s/%s&k=%s&a=1&image=0>\n' $PROJECTPARENT $PROJECTNAME $NAME >> div.out
printf '<img src=/data/boss/%s/%s/%s/thumb.jpg></img></a></div>\n' $PROJECTPARENT $PROJECTNAME $NAME >> div.out


