. ../meta.ini
THISIZE=${count}
PARENT=${parent}
THISNAME=${name}

printf '[8000]\n' > links.ini  
printf 'Title = %s\n' "$title" >> links.ini
printf 'Fill.Color = rgba(0,0,100,0.7)\n' >> links.ini
printf 'Path = /?p=boss/%s\n' $PARENT >> links.ini

COUNT=`expr $count + 1`
printf 'Size = '$COUNT'\n\n' >> links.ini

COUNT=`expr $count - 1`
for i in $(seq 0 $COUNT); do 
    PROJECT=$(printf "%04d" "$i") 
    . ../$PROJECT/0000/meta.ini
    TITLE="${title}"
    printf '[%s]\n' $PROJECT >> links.ini
    printf 'Title = %s\n' "$TITLE" >> links.ini
    printf 'Path = /?p=boss/%s/%s&k=0000&a=1\n' $PARENT $THISNAME $PROJECT >> links.ini
done



