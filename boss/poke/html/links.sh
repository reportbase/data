. meta.ini
PROJECT=${PWD##*/} 

printf '[8000]\n' > html/links.ini  
printf 'Title = %s\n' ${PROJECT} >> html/links.ini
printf 'Fill.Color = rgba(0,0,100,0.7)\n' >> html/links.ini
printf 'Path = /data/boss/%s/html/000.html\n' ${PROJECT} >> html/links.ini

COUNT=`expr $count + 6`
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
    A=1
    printf '[%s]\n' $NAME >> html/links.ini
    printf 'Title = %s\n' "$TITLE" >> html/links.ini
    printf 'Path = /?p=boss/%s&k=%s&a=%s\n' $PROJECT $FOLDER $A >> html/links.ini
done

printf '[]\n' >> html/links.ini  
printf 'Title = Reports\n' >> html/links.ini
printf 'Fill.Color = rgba(0,0,100,0.7)\n' >> html/links.ini
printf '[%s0]\n' $PROJECT >> html/links.ini
printf 'Title = 000\n' >> html/links.ini
printf 'Path = /data/boss/%s/html/000.html\n' ${PROJECT} >> html/links.ini
printf '[%s1]\n' $PROJECT >> html/links.ini
printf 'Title = 001\n' >> html/links.ini
printf 'Path = /data/boss/%s/html/001.html\n' ${PROJECT} >> html/links.ini
printf '[%s2]\n' $PROJECT >> html/links.ini
printf 'Title = 002\n' >> html/links.ini
printf 'Path = /data/boss/%s/html/002.html\n' ${PROJECT} >> html/links.ini
printf '[%s3]\n' $PROJECT >> html/links.ini
printf 'Title = 003\n' >> html/links.ini
printf 'Path = /data/boss/%s/html/003.html\n' ${PROJECT} >> html/links.ini

cat html/links.txt >> html/links.ini












