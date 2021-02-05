. ../meta.ini
PROJECTITLE=${title}
PROJECTNAME=${name}
PROJECTCOUNT=${count}
a=${a}
f=${f}
s=${s}

. meta.ini
NAME=${PWD##*/} 
TITLE=${title}
COUNT=${count}

printf '<div class=section-title>%s</div>\n' "$TITLE" > div.out
printf '<div class=section-image><a target=ifr href=/?p=boss/%s&k=%s&a=%s&s=%s&f=%s&image=0><img src=/data/boss/%s/%s/thumb.jpg></img></a></div>\n' $PROJECTNAME $NAME $a $s $f $PROJECTNAME $NAME >> div.out
printf '<p>\n' >> div.out

