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
printf '<div class=section-image><a target=ifr href=/?p=boss/%s&k=%s&a=%s&s=%s&f=%s&z=%s&c=%s&image=0><img src=/data/boss/%s/%s/thumb/004.000.jpg></img></a></div>\n' $PROJECTNAME $NAME $a $s $f $z $c $PROJECTNAME $NAME >> div.out
printf '<div class=section-links>\n' >> div.out

for i in $(seq 0 $COUNT); do 
    ID=$(printf "%03d" "$i") 
    printf '<a target=ifr href=/?p=boss/%s&k=%s&a=%s&s=%s&f=%s&z=%s&c=%s&image=%s>%s</a>&nbsp;/\n' $PROJECTNAME $NAME $a $s $f $z $c $i $ID >> div.out
done

printf '</div><p>\n' >> div.out

