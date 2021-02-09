. meta.ini
COUNT=${count}
COUNT=`expr $count - 1`
cd 0000

for ((i=0;i<=$COUNT;i++)); do
    FOLDER=$(printf "../%04d" "$i")
    cd $FOLDER
    ../ini/./run.sh
done
