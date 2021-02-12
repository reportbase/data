. ../meta.ini
PROJECTITLE=${title}
PROJECTNAME=${name}
PROJECTPARENT=${parent}
PROJECTCOUNT=${count}
a=${a}
f=${f}
s=${s}
z=${z}
c=${c}

. meta.ini
NAME=${PWD##*/} 
TITLE=${title}
COUNT=${count}

printf '<div class=section-title>%s</div>\n' "$TITLE" > div.out
printf '<div class=section-image><a target=ifr href=/?p=boss/%s/%s&k=%s&a=%s&s=%s&f=%s&image=0><img src=/data/boss/%s/%s/%s/thumb.jpg></img></a></div>\n' $PROJECTPARENT $PROJECTNAME $NAME $a $s $f $PROJECTPARENT $PROJECTNAME $NAME >> div.out


