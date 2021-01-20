. ../meta.ini
THISIZE=${count}
PARENT=${parent}
THISNAME=${name}

printf '[8000]\n' > links.ini  
printf 'Title = %s\n' "$title" >> links.ini
printf 'Fill.Color = rgba(0,0,100,0.7)\n' >> links.ini
printf 'Path = /?p=boss/%s\n' $PARENT >> links.ini

COUNT=`expr $count + 1`
printf 'Size = '$COUNT'\n\n' >> links.ini

rm describe.txt 2> /dev/null

COUNT=`expr $count - 1`
for i in $(seq 0 $COUNT); do 
    PROJECT=$(printf "%04d" "$i") 
    . ../$PROJECT/meta.ini
    A="a=${a}&"
    B="b=${b}&"
    F="f=${f}&"
    S="s=${s}"
    TITLE="${title}"
    printf '[%s]\n' $PROJECT >> links.ini
    printf 'Title = %s\n' "$TITLE" >> links.ini
    printf 'Path = /?p=boss/%s/%s&k=%s&'$A$B$F$S'\n' $PARENT $THISNAME $PROJECT >> links.ini
    printf '<a target=ifr href=/?p=boss/%s/%s&k=%s&'$A$B$F$S'>%s</a><br>\n' $PARENT $THISNAME $PROJECT "$TITLE" >> describe.txt
done



