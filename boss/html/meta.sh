PROJECTITLE=${PWD##*/}

printf 'var meta = {' > html/meta.js
printf 'title:\"%s\",\n' "$PROJECTITLE" >> html/meta.js
printf 'data:[\n' >> html/meta.js

for FOLDER in `ls -d ./*/`
do
    FILE=$FOLDER/meta.ini 
    if [ -f "$FILE" ]; then
        . $FILE
        NAME=$(basename -- "$FOLDER")
        printf '{\n' >> html/meta.js
        printf 'title:\"%s\",\n' "$title" >> html/meta.js
        printf 'title1:\"%s\",\n' "$title1" >> html/meta.js
        printf 'title2:\"%s\",\n' "$title2" >> html/meta.js
        printf 'extent:\"%s\",\n' "$extent" >> html/meta.js
        printf 'name:\"%s\",\n' "$NAME" >> html/meta.js
        printf 'count:%s,\n' "$COUNT" >> html/meta.js
        printf '},\n' >> html/meta.js
    fi
done

printf ']\n' >> html/meta.js
printf '}\n' >> html/meta.js






