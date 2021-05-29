source <(grep title meta.ini)
source <(grep count meta.ini)
PROJECTITLE="${title}"
PROJECTCOUNT="${count}"
PROJECTNAME=$1

printf 'var meta = {' > html/meta.js
printf 'title:\"%s\",\n' "$PROJECTITLE" >> html/meta.js
printf 'name:\"%s\",\n' "$PROJECTNAME" >> html/meta.js
printf 'data:[\n' >> html/meta.js
name=""

COUNT=`expr $PROJECTCOUNT - 1`
for i in $(seq 0 $COUNT); do 
    FOLDER=$(printf "%04d" "$i") 
    source <(grep title $FOLDER/meta.ini)
    source <(grep count $FOLDER/meta.ini)
    source <(grep name $FOLDER/meta.ini)
    if [ -z "$NAME" ]
    then
        NAME=$FOLDER
    fi

    printf '{\n' >> html/meta.js
    printf 'title:\"%s\",\n' "$title" >> html/meta.js
    printf 'name:\"%s\",\n' "$name" >> html/meta.js
    printf 'count:%s,\n' "$count" >> html/meta.js
    printf '},\n' >> html/meta.js
done

printf ']\n' >> html/meta.js
printf '}\n' >> html/meta.js






