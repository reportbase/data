. meta.ini
PROJECT=${PWD##*/} 

printf '' > html/links.ini
LINK=8000
SIZA=$count
SIZE=`expr $count - 1`
for i in $(seq 0 $SIZE); do 
    FOLDER=$(printf "%04d" "$i") 
    . $FOLDER/meta.ini
   
    NAME=$name
    if [ -z "$NAME" ]
    then
        NAME=$FOLDER
    fi

    A=$a
    G=$(printf "%04d" $((LINK + i)))
    printf '[%s]\n' $G >> html/links.ini

    if [ $i = 0 ]; then
        printf 'Size = %s\n' "$SIZA" >> html/links.ini
    fi

    printf 'Short = %s\n' "$name" >> html/links.ini
    printf 'Title = %s\n' "$title" >> html/links.ini
    printf 'Title1 = %s\n' "$title1" >> html/links.ini
    printf 'Title2 = %s\n' "$title2" >> html/links.ini
    printf 'Extent = %s\n' "$extent" >> html/links.ini
    printf 'Count = %s\n' "$count" >> html/links.ini
    printf 'Path = /?p=boss/%s&k=%s&a=%s\n' $PROJECT $FOLDER $A >> html/links.ini
done

cat html/links.txt >> html/links.ini












