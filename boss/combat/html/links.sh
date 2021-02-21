. meta.ini
NAME=${PWD##*/} 

printf '[8000]\n' > html/links.ini  
printf 'Title = %s\n' "Home" >> html/links.ini
printf 'Fill.Color = rgba(0,0,100,0.7)\n' >> html/links.ini
printf 'Path = /data/boss/%s/html/000.html\n' ${NAME} >> html/links.ini

COUNT=`expr $count - 2`
for i in $(seq 0 $COUNT); do 
    PROJECT=$(printf "%04d" "$i") 
    . $PROJECT/meta.ini
    TITLE="${title}"
    printf '[]\n' >> html/links.ini
    printf 'Title = %s\n' "$TITLE" >> html/links.ini
    printf 'Path = /?p=boss/%s&k=%s&a=1\n' $NAME $PROJECT >> html/links.ini
done



