. meta.ini

printf '' > html/meta.ini
PROJECTITLE="${title}"
PROJECTCOUNT="${count}"
NAME=${PWD##*/} 
printf 'title = %s\n' "$PROJECTITLE" >> html/meta.ini
printf 'name = %s\n' "$NAME" >> html/meta.ini
printf 'count = %s\n' "$PROJECTCOUNT" >> html/meta.ini

COUNT=`expr $PROJECTCOUNT - 1`
for i in $(seq 0 $COUNT); do 
    PROJECT=$(printf "%04d" "$i") 
    . $PROJECT/meta.ini
    TITLE="${title}"
    COUNT="${count}"
    printf '[%s]\n' $PROJECT >> html/meta.ini
    printf 'title = %s\n' "$TITLE" >> html/meta.ini
    printf 'count = %s\n' "$COUNT" >> html/meta.ini
done

##############
printf 'var meta = {' > html/meta.js
printf 'title:\"%s\",\n' "$PROJECTITLE" >> html/meta.js
printf 'name:\"%s\",\n' "$NAME" >> html/meta.js
printf 'count:%s,\n' "$PROJECTCOUNT" >> html/meta.js
printf 'data:[\n' >> html/meta.js

COUNT=`expr $PROJECTCOUNT - 1`
for i in $(seq 0 $COUNT); do 
    PROJECT=$(printf "%04d" "$i") 
    . $PROJECT/meta.ini
    TITLE="${title}"
    COUNT="${count}"
    printf '{\n' >> html/meta.js
    printf 'title:\"%s\",\n' "$TITLE" >> html/meta.js
    printf 'name:\"%s\",\n' "$PROJECT" >> html/meta.js
    printf 'count:%s,\n' "$COUNT" >> html/meta.js
    printf '},\n' >> html/meta.js
done

printf ']\n' >> html/meta.js
printf '}\n' >> html/meta.js






