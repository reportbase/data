PROJECTITLE=${PWD##*/}

printf 'var meta = {' > html/meta.js
printf 'title:\"%s\",\n' "$PROJECTITLE" >> html/meta.js
printf 'data:[\n' >> html/meta.js

for FOLDER in `ls -d ./*/`
do
    FILE=$FOLDER/meta.ini 
    if [ -f "$FILE" ]; then
        . $FILE
        TITLE="${title}"
        COUNT="${count}"
        DESCRIBE="${describe}"
        NAME=$(basename -- "$FOLDER")
        printf '{\n' >> html/meta.js
        printf 'title:\"%s\",\n' "$TITLE" >> html/meta.js
        printf 'name:\"%s\",\n' "$NAME" >> html/meta.js
        printf 'describe:\"%s\",\n' "$DESCRIBE" >> html/meta.js
        printf 'count:%s,\n' "$COUNT" >> html/meta.js
        printf '},\n' >> html/meta.js
    fi
done

printf ']\n' >> html/meta.js
printf '}\n' >> html/meta.js






