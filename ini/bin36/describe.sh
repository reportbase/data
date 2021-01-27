. ../meta.ini
PROJECTITLE=${title}
PROJECTNAME=${name}
PROJECTCOUNT=${count}

. meta.ini
NAME=${PWD##*/} 
TITLE=${title}
COUNT=${count}

COUNT=`expr $count - 1`
printf '<div>%s<br>\n' "$TITLE" > div.out

printf '<a target=ifr href=/?p=boss/%s&k=%s&a=1&s=300&f=1&image=0><img src=/data/boss/%s/%s/420.240.gif></img></a><br>\n' $PROJECTNAME $NAME $PROJECTNAME $NAME >> div.out

for i in $(seq 0 $COUNT); do 
    ID=$(printf "%03d" "$i") 
    printf '<a target=ifr href=/?p=boss/%s&k=%s&a=1&s=300&f=1&image=%s>%s</a> /\n' $PROJECTNAME $NAME $i $ID >> div.out
done

printf '</div><p>\n' >> div.out

