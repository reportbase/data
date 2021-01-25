. ../meta.ini
PROJECTITLE=${title}
PROJECTNAME=${name}
PROJECTCOUNT=${count}
PROJECTPARENT=${parent}

. meta.ini
NAME=${PWD##*/} 
TITLE=${title}
COUNT=${count}
COUNT=`expr $count - 1`

rm describe.txt 2>/dev/null
for i in $(seq 0 $COUNT); do 
    ID=$(printf "%04d" "$i") 
    printf '<a target=ifr href=/?p=boss/%s/%s&k=%s&a=1&s=300&f=1&image=%s>%s</a><br>\n' "$PROJECTPARENT" "$PROJECTNAME" "$NAME" $i "$TITLE" >> describe.txt
done


