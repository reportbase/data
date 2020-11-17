. ../meta.ini

printf '[8000]\n' > ../links.ini  
printf 'Title = %s\n' "$title" >> ../links.ini
printf 'Fill.Color = rgba(0,0,100,0.7)\n' >> ../links.ini
printf 'Path = INDEXHTML\n\n' >> ../links.ini

COUNT=`expr $count - 1`
for i in $(seq 0 $COUNT); do 
    ID=$(printf "%04d" "$i") 
    printf '[%s]\n' $ID >> ../links.ini
    printf 'Title = %s\n' $ID >> ../links.ini
    printf 'Path = /?p=boss/%s&k=%s&a=1\n' $name $ID >> ../links.ini
done



