. meta.ini
PROJECT=${PWD##*/} 

printf '' > html/links.ini
LINK=8000
COUNT=`expr $count - 1`
for i in $(seq 0 $COUNT); do 
    FOLDER=$(printf "%04d" "$i") 
    . $FOLDER/meta.ini
    TITLE="${title}"
    TITLE1="${title1}"
    TITLE2="${title2}"
   
    NAME=$name
    if [ -z "$NAME" ]
    then
        NAME=$FOLDER
    fi

    A=$a
    G=$(printf "%04d" $((LINK + i)))
    printf '[%s]\n' $G >> html/links.ini
    printf 'Size = %s\n' "$count" >> html/links.ini
    printf 'Title = %s\n' "$TITLE" >> html/links.ini
    printf 'Title1 = %s\n' "$TITLE1" >> html/links.ini
    printf 'Title2 = %s\n' "$TITLE2" >> html/links.ini
    printf 'Path = /?p=boss/%s&k=%s&a=%s\n' $PROJECT $FOLDER $A >> html/links.ini
done

cat html/links.txt >> html/links.ini












