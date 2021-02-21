. ../meta.ini
PROJECTNAME=${name}
PROJECTCOUNT=${count}

. meta.ini
NAME=${PWD##*/} 
TITLE=${title}
COUNT=${count}

COUNT=`expr $count - 1`
printf '<div class=section-title>%s</div>\n' "$TITLE" > div.out
printf '<div class=section-image><a target=ifr href=/?p=boss/%s&k=%s&a=1&image=0><img src=/data/boss/%s/%s/420.240.gif></img></a></div>\n' $PROJECTNAME $NAME $PROJECTNAME $NAME >> div.out
printf '<div class=section-links>\n' >> div.out

for i in $(seq 0 $COUNT); do 
    ID=$(printf "%03d" "$i") 
    printf '<a target=ifr href=/?p=boss/%s&k=%s&a=1&image=%s>%s</a>&nbsp;/\n' $PROJECTNAME $NAME $i $ID >> div.out
done

printf '</div><p>\n' >> div.out


