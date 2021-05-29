for i in `ls -d ./*/`
do
    cd "$i"
        ./run.sh 2> /dev/null
        echo "-----"
        echo $i
        vkd.sh pan_4=NOVEL
        vkd.sh pan_4=BOSS
        vkd.sh swipe_4=BOSS
    cd ..
done

html/./links.sh 
html/./boss.sh 
