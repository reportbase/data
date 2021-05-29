source <(grep count meta.ini)
PROJECT=${PWD##*/} 
COUNTER=0
LINK=6001

for i in `ls -d ./*/`
do
  cd "$i"
    if test -f "run.sh"; then
        let COUNTER++
    fi
  cd ..
done

cp html/links.txt html/boss.ini
for i in `ls -d ./*/`
do
    FULLPATH=$(printf '%s%s' "$i" "run.sh")
    if [ ! -f $FULLPATH ]; then
        continue;
    fi

    if [ $LINK -eq 6001 ]; then
        printf '[BOSS]\n' >> html/boss.ini
        printf 'Size = %s\n' "$COUNTER" >> html/boss.ini
    else
        printf '[]\n' >> html/boss.ini
    fi
    
    FILENAME="$(basename $i)"
    let LINK++
    printf 'Title = boss/%s\n' "$FILENAME" >> html/boss.ini
    printf 'Path = https://reportbase.com/?p=boss/%s\n' "$FILENAME" >> html/boss.ini
done



