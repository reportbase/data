#tree
. ../meta.ini
PROJECTITLE=${title}
PROJECTNAME=${name}
PROJECTCOUNT=${count}
a=${a}

. meta.ini
NAME=${PWD##*/} 
TITLE=${title}
COUNT=${count}

COUNT=`expr $count - 1`
printf '<div class=section-title>%s</div>\n' "$TITLE" > div.out
printf '<div class=section-image><a target=ifr href=/?p=boss/%s&k=%s&a=%s&image=0><img src=/data/boss/%s/%s/thumb.jpg></img></a></div>\n' $PROJECTNAME $NAME $a $PROJECTNAME $NAME >> div.out
printf '<div class=section-links>\n' >> div.out

for i in $(seq 0 $COUNT); do 
    ID=$(printf "%03d" "$i") 
    printf '<a target=ifr href=/?p=boss/%s&k=%s&a=1&image=%s>%s</a>&nbsp;/\n' $PROJECTNAME $NAME $ID $ID >> div.out
done

printf '</div><p>\n' >> div.out

