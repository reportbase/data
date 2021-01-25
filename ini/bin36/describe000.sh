. ../meta.ini
PROJECTITLE=${title}
PROJECTNAME=${name}
PROJECTCOUNT=${count}

. meta.ini
NAME=${PWD##*/} 
TITLE=${title}
COUNT=${count}

COUNT=`expr $count - 1`
printf '<div>%s<br>\n' "$TITLE" > describe.txt 

for i in $(seq 0 $COUNT); do 
    ID=$(printf "%03d" "$i") 
    printf '<a target=ifr href=/?p=boss/%s&k=%s&a=1&s=300&f=1&image=%s>%s</a> /\n' $PROJECTNAME $NAME $i $ID >> describe.txt
done

printf '</div><p>\n' >> describe.txt 

