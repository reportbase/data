. meta.ini

PROJECTITLE="${title}"
PROJECTCOUNT="${count}"
PROJECTNAME=$1

printf 'var meta = {' > html/meta.js
printf 'title:\"%s\",\n' "$PROJECTITLE" >> html/meta.js
printf 'name:\"%s\",\n' "$PROJECTNAME" >> html/meta.js
printf 'count:%s,\n' "$PROJECTCOUNT" >> html/meta.js
printf 'data:[\n' >> html/meta.js
name=""

COUNT=`expr $PROJECTCOUNT - 1`
for i in $(seq 0 $COUNT); do 
    FOLDER=$(printf "%04d" "$i") 
    . $FOLDER/meta.ini
    TITLE="${title}"
    COUNT="${count}"
    NAME="${name}"
    if [ -z "$NAME" ]
    then
        NAME=$FOLDER
    fi

    printf '{\n' >> html/meta.js
    printf 'title:\"%s\",\n' "$TITLE" >> html/meta.js
    printf 'name:\"%s\",\n' "$NAME" >> html/meta.js
    printf 'count:%s,\n' "$COUNT" >> html/meta.js
    printf '},\n' >> html/meta.js
done

printf ']\n' >> html/meta.js
printf '}\n' >> html/meta.js






