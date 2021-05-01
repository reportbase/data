source <(grep count meta.ini)
PROJECT=${PWD##*/} 

printf '' > html/links.ini
LINK=8000
SIZA=$count
SIZE=`expr $count - 1`
for i in $(seq 0 $SIZE); do 
    FOLDER=$(printf "%04d" "$i")
    source <(grep name $FOLDER/meta.ini)
    source <(grep a $FOLDER/meta.ini)
    source <(grep z $FOLDER/meta.ini)
    source <(grep c $FOLDER/meta.ini)
    source <(grep r $FOLDER/meta.ini)
    source <(grep title $FOLDER/meta.ini)
    source <(grep title1 $FOLDER/meta.ini)
    source <(grep title2 $FOLDER/meta.ini)
    source <(grep aspect $FOLDER/meta.ini)
    source <(grep extent $FOLDER/meta.ini)
    source <(grep count $FOLDER/meta.ini)
   
    NAME=$name
    if [ -z "$NAME" ]
    then
        NAME=$FOLDER
    fi

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
    printf 'Aspect = %s\n' "$aspect" >> html/links.ini
    printf 'Count = %s\n' "$count" >> html/links.ini
    printf 'Path = /?p=boss/%s&k=%s&a=%s&z=%s&c=%s&r=%s\n' $PROJECT $FOLDER $a $z $c $r >> html/links.ini
done

cat html/links.txt >> html/links.ini












