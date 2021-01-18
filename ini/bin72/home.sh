. meta.ini
PROJECTITLE=${title}
PROJECTNAME=${name}
PROJECTCOUNT=${count}

rm html/describe.txt 2> /dev/null 
#COUNT=`expr $count - 1`
COUNT=1
for i in $(seq 0 $COUNT); do 
    NAME=$(printf "%04d" "$i") 
    cat $NAME/describe.txt  >> html/describe.txt 2> /dev/null 
done

sed 's/{DESCRIBE}/$x/g' bin/home.res | x="$(<html/describe.txt)" envsubst '$x' > html/home.html
sed -i s/{PROJECTNAME}/${PROJECTNAME}/ html/home.html 2> /dev/null
sed -i "s/{PROJECTITLE}/${PROJECTITLE}/" html/home.html 2> /dev/null


