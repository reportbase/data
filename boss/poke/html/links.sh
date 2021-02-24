. meta.ini
PROJECT=${PWD##*/} 

printf '[8000]\n' > html/links.ini  
printf 'Title = %s\n' "Home" >> html/links.ini
printf 'Fill.Color = rgba(0,0,100,0.7)\n' >> html/links.ini
printf 'Path = /data/boss/%s/html/000.html\n' ${PROJECT} >> html/links.ini

COUNT=`expr $count + 1`
printf 'Size = '$COUNT'\n\n' >> html/links.ini

COUNT=`expr $count - 1`
for i in $(seq 0 $COUNT); do 
    FOLDER=$(printf "%04d" "$i") 
    . $FOLDER/meta.ini
    TITLE="${title}"
    NAME=$name
    if [ -z "$NAME" ]
    then
        NAME=$FOLDER
    fi

    printf '[%s]\n' $NAME >> html/links.ini
    printf 'Title = %s\n' "$TITLE" >> html/links.ini
    printf 'Path = /?p=boss/%s&k=%s&a=1\n' $PROJECT $FOLDER >> html/links.ini
done



