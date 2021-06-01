for i in `ls -d ./*/`
do
    cd "$i"
        ./run.sh 2> /dev/null
    cd ..
done

html/./links.sh 
html/./boss.sh 
